{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TupleSections              #-}
{-# LANGUAGE ViewPatterns               #-}

-- Module      : Gen.AST
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST where

import           Control.Applicative
import           Control.Error
import           Control.Lens                 hiding (lens)
import           Control.Monad.Except
import           Control.Monad.State.Strict
import           Data.Char
import qualified Data.HashMap.Strict          as Map
import           Data.Maybe
import           Data.Semigroup               ((<>))
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Debug.Trace
import           Gen.Formatting
import           Gen.Solve
import           Gen.Syntax
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Build  (name)
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

runAST :: Parsed -> Either Error Printed
runAST svc = evalState (runExceptT go) initial
  where
    go = do
       x <- flatten svc
       reserve x
       solveAll x >>= render

render :: Typed -> AST Printed
render svc = do
    x <- traverse typ (_svcSchemas svc)
    y <- api (_svcApi svc)

    let as  = map actionTypeName (Map.elems (_apiActions y))
        f d = elem (dataName d) as
        z   = trace (show as) $ filter (not . f) (catMaybes x)

    return $! svc { _svcSchemas = z, _svcParameters = (), _svcApi = y }
  where
    typ :: Solved -> AST (Maybe Data)
    typ Solved{..} = case _schema of
        Arr  {}      -> pure Nothing
        Ref  {}      -> pure Nothing
        Any  {}      -> pure Nothing
        Lit  {}      -> pure Nothing
        Enum i vs ds -> pure . Just $
            Sum (dname _ident) (i ^. description) $
                zipWith branch vs (ds ++ repeat mempty)
          where
            branch v = Branch (bname _prefix v) v

        Obj i rs -> fmap Just $
            prod _ident _prefix i _deriving
                =<< traverse solve rs

    prod :: Id -> Pre -> Info -> [Derive] -> Map Local Solved -> AST Data
    prod k p i ds ts = Prod (dname k) (i ^. description)
        <$> pp Indent (objDecl k p ds ts)
        <*> ctor
        <*> traverse lens (Map.toList ts)
        <*> traverse (pp Print) (jsonDecls k p ts)
      where
        ctor = Fun' (cname k) (Just help)
            <$> (pp None   (ctorSig  k   ts) <&> comments ts)
            <*>  pp Indent (ctorDecl k p ts)

        lens (l, v) = Fun' (lname p l) (v ^. description)
            <$> pp None  (lensSig k p l v)
            <*> pp Print (lensDecl  p l v)

        help = rawHelpText $
            sformat ("Creates a value of '" % fid %
                     "' with the minimum fields required to make a request.\n")
                     k

    api :: Resource Solved -> AST API
    api x = do
        as <- Map.fromList <$> top x
        API n <$> pp Print (apiAlias n (Map.keys as))
              <*> pure as
              <*> url
      where
        n  = name (Text.unpack (svcAbbrev svc))
        un = name (Text.unpack (svcURL    svc))

        url = Fun' un (Just (rawHelpText h))
            <$> pp None (urlSig un)
            <*> pp Print url
          where
            url | "http://" `Text.isPrefixOf` u = urlDecl un "Http"  u 80
                | otherwise                     = urlDecl un "Https" u 443

            u = _svcBaseUrl svc

            h = sformat ("URL referring to version @" % stext %
                         "@ of the " % stext % ".")
                         (_svcVersion svc) (_svcTitle svc)

        top = \case
           Top rs -> traverse (uncurry sub)  (Map.toList rs) <&> concat
           Sub ms -> traverse (uncurry verb) (Map.toList ms)

        sub l = \case
            Top rs -> traverse (uncurry sub)  (Map.toList rs) <&> concat
            Sub ms -> traverse (uncurry verb) (Map.toList ms)

        verb l m = do
            let (k, i, ns) = vname (_mId m)
            s      <- solve i
            Just d <- typ s
            fmap (k,) $
                Action k (_mId m) (actionNS ns) (_mDescription m)
                    <$> pp Print (verbAlias k m)
                    <*> reset k m s d

        reset k m s = \case
            d@Sum {}           -> pure d
            Prod n' h r c ls _ ->
                Prod n' h r c ls . (:[]) <$> pp Print
                    (requestDecl (_ident s) (_prefix s) k un (fields (_schema s)) m)

        fields  = \case
            Obj _ rs -> Map.keys rs
            _        -> mempty

solveAll :: Flattened -> AST Typed
solveAll svc = do
    ss <- traverse solve (_svcSchemas svc)
    ps <- traverse (traverse solve) (_svcParameters svc)
    a  <- traverse solve (_svcApi svc)
    pure $! svc { _svcSchemas = ss, _svcParameters = ps, _svcApi = a }

flatten :: Parsed -> AST Flattened
flatten svc = do
    _  <- Map.traverseWithKey typ (_svcSchemas svc)
    ps <- Map.traverseWithKey (prm "") (_svcParameters svc)
    a  <- api ps (_svcApi svc)
    ss <- uses schemas Map.keys
    pure $! svc { _svcSchemas = ss, _svcParameters = Map.elems ps, _svcApi = a }
  where
    typ :: Id -> Fix Schema -> AST Id
    typ n (Fix f) = go f >>= ins n
      where
        go = \case
            Obj i ps      -> Obj i <$> Map.traverseWithKey (prop n) ps
            Arr i (Fix e) -> Arr i <$> prop n "item" (Fix (e & required .~ True))

            Enum i vs ds  -> pure (Enum i vs ds)
            Lit  i x      -> pure (Lit  i x)
            Ref  i r      -> pure (Ref  i r)
            Any  i        -> pure (Any  i)

    prop :: Id -> Local -> Fix Schema -> AST Id
    prop p l (Fix f) = go f >>= ins this
      where
        go = \case
            Obj i ps      -> Obj i <$> Map.traverseWithKey (prop this) ps
            Arr i (Fix e) -> Arr i <$> prop this "item" (Fix (e & required .~ True))

            Enum i vs ds  -> pure (Enum i vs ds)
            Lit  i x      -> pure (Lit  i x)
            Ref  i r      -> pure (Ref  i r)
            Any  i        -> pure (Any  i)

        this = mkProp p l

    prm :: Id -> Local -> Param (Fix Schema) -> AST (Param Id)
    prm p l x = do
        n <- prop p l (_prmSchema x)
        pure $! x { _prmSchema = n }

    api :: Map Local (Param Id) -> Resource (Fix Schema) -> AST (Resource Id)
    api qs = \case
        Top rs -> Top <$> Map.traverseWithKey sub rs
        Sub ms -> Sub <$> Map.traverseWithKey (verb "") ms
      where
        sub l = \case
            Top rs -> Top <$> Map.traverseWithKey sub rs
            Sub ms -> Sub <$> Map.traverseWithKey (verb l) ms

        verb p l m = do
            let (_, i, _) = vname (_mId m)
            rs <- Map.traverseWithKey (prm i) (_mParameters m)
            _  <- ins i $
                Obj (Info (_mDescription m) Nothing False Nothing) (Map.map _prmSchema (rs <> qs))
            pure $! m { _mParameters = rs <> qs }

    ins :: Id -> Schema Id -> AST Id
    ins n x = do
        ms <- uses schemas (Map.lookup n)
        case ms of
            Just y | x /= y -> throwError $
                format ("Schema exists: " % stext % " - " % fid %
                       "\nCurrent: " % shown % "\nTried: " % shown)
                        (_svcCanonicalName svc) n y x
            _ -> schemas %= Map.insert n x

        return n

data PP
    = Indent
    | Print
    | None
      deriving (Eq)

pp :: Pretty a => PP -> a -> AST Rendered
pp i x
    | i == Indent = result (reformat johanTibell Nothing p)
    | otherwise   = pure p
  where
    result = hoistEither . bimap e Build.toLazyText

    e = flip mappend (", when formatting: " <> p) . LText.pack

    p = LText.dropWhile isSpace
      . LText.pack
      $ prettyPrintStyleMode s m x

    s = style
        { mode           = PageMode
        , lineLength     = 80
        , ribbonsPerLine = 1.5
        }

    m | i == Print  = defaultMode
      | i == Indent = defaultMode
      | otherwise   = defaultMode
          { layout  = PPNoLayout
          , spacing = False
          }

-- FIXME: dirty hack to render smart ctor parameter comments.
comments :: Map Local Solved -> Rendered -> Rendered
comments (Map.toList -> rs) =
      LText.replace     " :: " "\n    :: "
    . LText.intercalate "\n    -> "
    . zipWith rel ps
    . map LText.strip
    . LText.splitOn     "->"
  where
    ks = filter (parameter . _schema . snd) rs
    ps = map (Just . fst) ks ++ repeat Nothing

    rel Nothing  t = t
    rel (Just l) t = t <> " -- ^ '" <> LText.fromStrict (local l) <> "'"
