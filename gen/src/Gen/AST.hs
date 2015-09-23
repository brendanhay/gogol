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

-- Module      : Gen.AST
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST where

import           Control.Applicative
import           Control.Error
import           Control.Lens
import           Control.Monad.Except
import           Control.Monad.Morph
import           Control.Monad.State
import           Data.Aeson                   hiding (String)
import           Data.Aeson.TH
import qualified Data.Attoparsec.Text         as A
import           Data.Char
import           Data.Function                (on)
import qualified Data.HashMap.Strict          as Map
import           Data.List                    (groupBy, intersect, nub, sort)
import           Data.List.NonEmpty           (NonEmpty (..), nonEmpty)
import qualified Data.List.NonEmpty           as NE
import           Data.Ord
import           Data.Semigroup               hiding (Sum)
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Data.Text.Manipulate
import           Debug.Trace
import qualified Filesystem.Path.CurrentOS    as Path
import           Formatting
import           Gen.Formatting
import           Gen.Solve
import           Gen.Syntax
import           Gen.Text
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)
import           Text.EDE                     (Template)

-- mapM isn't lazy here and I don't care!
flatten :: Map Ref (Fix Schema) -> Map Ref (Schema Ref)
flatten m = execState (mapM_ (uncurry (prop Nothing)) (Map.toList m)) mempty
  where
    -- unfold the properties.
    prop p k (Fix f) = case f of
        Obj i ps -> do
            o <- Obj i <$> Map.traverseWithKey (prop (Just ref)) ps
            res o

        Arr i e -> do
            e' <- prop (Just ref) "item" e
            res (Arr i e')

        Enum i vs ds -> res (Enum i vs ds)
        Lit  i l     -> res (Lit  i l)
        Ref  r       -> pure r
        Any'         -> res Any'

      where
        res x = do
            m <- gets (Map.lookup ref)
            case m of
                Nothing -> modify (Map.insert ref x) >> pure ref
                -- FIXME:
                Just e  -> error $ "Already exists: " ++ show (ref, e, x)

        ref = maybe k (<> k) p

merge :: Versions -> [Service Data] -> [Library]
merge v = map go . groupBy (on (==) _svcLibrary)
  where
    go [x]    = mk x
    go (x:xs) = (mk x) { _libServices = x :| xs }

    mk x = Library
        { _libName     = _svcLibrary x
        , _libTitle    = renameTitle (_svcTitle x)
        , _libVersions = v
        , _libServices = x :| []
        }

render :: Service (Fix Schema) -> Either Error (Service Data)
render s = runAST (Memo mempty mempty ss) $ do
    r <- kvTraverseMaybe go ss
    return $! s { _svcSchemas = r }
  where
    ss = flatten (_svcSchemas s)

    go :: Ref -> Schema Ref -> AST (Maybe Data)
    go k = \case
        Arr  {}  -> pure Nothing
        Ref  {}  -> pure Nothing
        Any' {}  -> pure Nothing
        Lit  {}  -> pure Nothing
        Enum {}  -> Just <$> sum
          where
            sum = Sum "sum help"
                <$> pp Indent enumDecl

        Obj _ rs -> Just <$> prod
          where
            prod = Prod
                <$> (objDecl k rs >>= pp Indent)
                <*> ctor
                <*> traverse (uncurry lens) (Map.toList rs)

            ctor = Fun' "ctor help"
                <$> pp None ctorSig
                <*> pp Indent ctorDecl

            lens n v = Fun' "lens help"
                <$> pp None  lensSig
                <*> pp Print lensDecl

             -- record declaration
             -- smart constructor
             --   signature
             --   declaration
             --   documentation
             -- lenses per property
             --   signature
             --   declaration
             --   documentation

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

    e = flip mappend (", when formatting datatype: " <> p) . LText.pack

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
