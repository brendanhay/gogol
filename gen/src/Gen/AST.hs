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
import           Data.Bifunctor
import           Data.Char
import           Data.Function                (on)
import qualified Data.HashMap.Strict          as Map
import           Data.List                    (groupBy)
import           Data.List.NonEmpty           (NonEmpty (..))
import           Data.Semigroup               ((<>))
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Gen.Formatting
import           Gen.Solve
import           Gen.Syntax
import           Gen.Text
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts        (Name)
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

runAST :: Service (Fix Schema) Resource -> Either Error (Service Data API)
runAST svc =  evalState (runExceptT (render ss)) (initial (_svcSchemas ss))
  where
    ss = flatten svc

render :: Service (Schema Id) Resource -> AST (Service Data API)
render svc = do
    x <- kvTraverseMaybe     typ (_svcSchemas   svc)
    y <- Map.traverseWithKey api (_svcResources svc)
    return $! svc { _svcSchemas = x, _svcResources = mempty }
  where
    typ :: Id -> Schema Id -> AST (Maybe Data)
    typ k = \case
        Arr  {}      -> pure Nothing
        Ref  {}      -> pure Nothing
        Any  {}      -> pure Nothing
        Lit  {}      -> pure Nothing
        Enum i vs ds -> Just . sum' <$> prefix k
          where
            sum' p = Sum (dname k) (i ^. description) $
                zipWith (branch p) vs (ds ++ repeat "")

            branch p v = Branch (bname p v) v

        Obj i rs -> do
            p <- prefix k
            Just <$> (Map.traverseWithKey (const . solve . mkProp k) rs >>= prod p)
          where
            prod p ts = Prod (dname k) (i ^. description)
                <$> (objDecl k p ts >>= pp Indent)
                <*> ctor p ts
                <*> traverse (lens p) (Map.toList ts)

            ctor p ts = Fun' (cname k) (Just help)
                <$> (pp None   (ctorSig  k   ts) <&> comments ts)
                <*>  pp Indent (ctorDecl k p ts)

            lens p (l, v) = Fun' (lname p l) (v ^. description)
                <$> pp None  (lensSig k p l v)
                <*> pp Print (lensDecl  p l v)

            help = rawHelpText $
                sformat ("Creates a value of '" % fid %
                         "' with the minimum fields required to make a request.\n")
                         k

    api :: Id -> Resource -> AST API
    api k = fmap (API (aname k) . Map.fromList) . res k
      where
        res :: Id -> Resource -> AST [(Name, [Rendered])]
        res p = \case
            Parent rs -> traverse (parent p) (Map.toList rs) <&> concat
            Sub    ms -> traverse (sub    p) (Map.toList ms)

        parent :: Id -> (Local, Resource) -> AST [(Name, [Rendered])]
        parent p (n, r) = res (mkProp p n) r

        sub :: Id -> (Local, Method) -> AST (Name, [Rendered])
        sub p (n, m) = (mname p n,) <$> traverse (pp None) (apiTypes svc p m)

flatten :: Service (Fix Schema) Resource -> Service (Schema Id) Resource
flatten svc = svc { _svcSchemas = execState run mempty }
  where
    run = mapM_ (uncurry top) (Map.toList (_svcSchemas svc))

    top :: Id -> Fix Schema -> State (Map Id (Schema Id)) Id
    top n (Fix f) = go f >>= ins n
      where
        go = \case
            Obj i ps      -> Obj i <$> Map.traverseWithKey (prop n) ps
            Arr i (Fix e) -> Arr i <$> prop n "item" (Fix (e & required .~ True))

            Enum i vs ds  -> pure (Enum i vs ds)
            Lit  i x      -> pure (Lit  i x)
            Ref  i r      -> pure (Ref  i r)
            Any  i        -> pure (Any  i)

    prop :: Id -> Local -> Fix Schema -> State (Map Id (Schema Id)) Id
    prop n l (Fix f) = go f >>= ins this
      where
        go = \case
            Obj i ps      -> Obj i <$> Map.traverseWithKey (prop this) ps
            Arr i (Fix e) -> Arr i <$> prop this "item" (Fix (e & required .~ True))

            Enum i vs ds -> pure (Enum i vs ds)
            Lit  i x     -> pure (Lit  i x)
            Ref  i r     -> pure (Ref  i r)
            Any  i       -> pure (Any  i)

        this = mkProp n l

    ins :: Id -> Schema Id -> State (Map Id (Schema Id)) Id
    ins n x = do
        s <- gets (Map.lookup n)
        case s of
            Nothing -> modify (Map.insert n x) >> pure n
            -- FIXME:
            Just e  -> error $ "Already exists: " ++ show (n, e, x)

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
