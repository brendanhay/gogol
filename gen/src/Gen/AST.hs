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
import           Control.Monad.State
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
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

runAST :: Versions
       -> [Service (Fix Schema) (Fix Schema) (Resource (Fix Schema))]
       -> Either Error [Library]
runAST v ss = merge v <$> evalState (runExceptT go) initial
  where
    go = traverse (flatten >=> render) ss

flatten ::      Service (Fix Schema) (Fix Schema) (Resource (Fix Schema))
        -> AST (Service (Schema  Id) (Schema  Id) (Resource (Schema  Id)))
flatten svc = do
     mapM_ (uncurry (prop Nothing)) (Map.toList (_svcSchemas svc))
     ss <- gets (view schemas)
     ps <- Map.traverseWithKey global   (_svcParameters svc)
     rs <- Map.traverseWithKey resource (_svcResources svc)
     return $! svc { _svcSchemas = ss, _svcParameters = ps, _svcResources = rs }
  where
    resource :: Id -> Resource (Fix Schema) -> AST (Resource (Schema Id))
    resource k (Resource ms) = Resource <$> traverse go ms
      where
        go m = do
            ps <- Map.traverseWithKey (local k) (_mParameters m)
            return $! m { _mParameters = ps }

    global  = param (Just "param")
    local k = param (Just k)

    param :: Maybe Id -> Id -> Param (Fix Schema) -> AST (Param (Schema Id))
    param p k (Param l m f) = do
        n <- prop p k f
        s <- schema n
        return $! Param l m s

    -- unfold a schema property.
    prop :: Maybe Id
         -> Id
         -> Fix Schema
         -> AST Id
    prop p k (Fix f) = case f of
        Obj i ps -> do
            o <- Obj i <$> Map.traverseWithKey (prop (Just this)) ps
            res o

        Arr i (Fix e) -> do
            e' <- prop (Just this) "item" (Fix (e & required .~ True))
            res (Arr i e')

        Enum i vs ds -> res (Enum i vs ds)
        Lit  i l     -> res (Lit  i l)
        Ref  _ r     -> pure r
        Any  i       -> res (Any  i)
      where
        res x = do
            s <- gets (Map.lookup this . view schemas)
            case s of
                Nothing -> (schemas %= Map.insert this x) >> pure this
                -- FIXME:
                Just e  -> error $ "Already exists: " ++ show (this, e, x)

        this = maybe k (<> k) p

render ::      Service (Schema Id) (Schema Id) (Resource (Schema Id))
       -> AST (Service  Data        Solved      API)
render svc = do
    x <-     kvTraverseMaybe typ (_svcSchemas svc)
    y <- Map.traverseWithKey prm (_svcParameters svc)
    z <- Map.traverseWithKey (api y) (_svcResources svc)
    return $! svc { _svcSchemas = x, _svcParameters = y, _svcResources = z }
  where
    typ :: Id -> Schema Id -> AST (Maybe Data)
    typ k = \case
        Arr  {}    -> pure Nothing
        Ref  {}    -> pure Nothing
        Any  {}    -> pure Nothing
        Lit  {}    -> pure Nothing
        Enum i _ _ -> Just <$> sum
          where
            sum = Sum (dname k) (i ^. description)
                <$> pp Indent enumDecl

        Obj i rs -> Just <$> (traverse solve rs >>= prod)
          where
            prod ts = Prod (dname k) (i ^. description)
                <$> (objDecl k ts >>= pp Indent)
                <*> ctor ts
                <*> traverse (uncurry lens) (Map.toList ts)

            ctor ts = Fun' (cname k) (Just help)
                <$> (pp None   (ctorSig  k ts) >>= comments ts)
                <*>  pp Indent (ctorDecl k ts)

            lens n v = Fun' (lname n) (v ^. description)
                <$> pp None  (lensSig k n v)
                <*> pp Print (lensDecl  n v)

            help = rawHelpText $
                sformat ("Creates a value of '" % fid %
                         "' with the minimum fields required to make a request.\n")
                         k

Make param types lit only, and fail at json parse time?
Then avoid any solving/id memo steps.

    prm :: Id -> Param (Schema Id) -> AST (Param Solved)
    prm r p = do
        let k = "param" <> r
        traverse (const (solve k)) p

    api :: Map Id (Param Solved) -> Id -> Resource (Schema Id) -> AST API
    api cmn k (methods -> Map.toList -> ms) = do
        z <- Map.traverseWithKey (\n p -> traverse (const $ solve (k <> n)) p) (_mParameters y)
        API (aname k) <$>
            traverse (pp None) (apiTypes svc cmn x (y { _mParameters = z }))
      where
        (x, y) = head ms

merge :: Versions -> [Service Data Solved API] -> [Library]
merge v = map go . groupBy (on (==) _svcLibrary)
  where
    go [x]    = mk x
    go (x:xs) = (mk x) { _libServices = x :| xs }
    -- FIXME:
    go []     = error "Empty merge set!"

    mk x = Library
        { _libName     = _svcLibrary x
        , _libTitle    = renameTitle (_svcTitle x)
        , _libVersions = v
        , _libServices = x :| []
        }

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
comments :: Map Id Solved -> Rendered -> AST Rendered
comments (Map.toList -> rs) x = do
    let ks = filter (parameter . _schema . snd) rs
        ps = map (Just . fst) ks ++ repeat Nothing
    return
        . LText.replace     " :: " "\n    :: "
        . LText.intercalate "\n    -> "
        . zipWith rel ps
        . map LText.strip
        $ LText.splitOn "->" x
  where
    rel Nothing  t = t
    rel (Just k) t =
        t <> " -- ^ '" <> LText.fromStrict (idToText k) <> "'"
