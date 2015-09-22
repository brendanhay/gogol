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
import           Control.Monad.State
import           Data.Aeson                hiding (String)
import           Data.Aeson.TH
import qualified Data.Attoparsec.Text      as A
import           Data.Char
import           Data.Function             (on)
import qualified Data.HashMap.Strict       as Map
import           Data.List                 (groupBy, intersect, nub, sort)
import           Data.List.NonEmpty        (NonEmpty (..), nonEmpty)
import qualified Data.List.NonEmpty        as NE
import           Data.Ord
import           Data.Semigroup
import           Data.Text                 (Text)
import qualified Data.Text                 as Text
import qualified Data.Text.Lazy            as LText
import qualified Data.Text.Lazy.Builder    as Build
import           Data.Text.Manipulate
import qualified Filesystem.Path.CurrentOS as Path
import           Formatting
import           Gen.Formatting
import           Gen.Text
import           Gen.Types
import           Text.EDE                  (Template)

-- Just use hashmaps to lookup refs etc, and hide all the mutation
-- behind a StateT interface.

data TType
    = TType   Ref
    | TLit    Lit
    | TMaybe  TType
    | TEither TType TType
    | TList   TType

data Derive
    = DEq
    | DOrd
    | DRead
    | DShow
    | DEnum
    | DNum
    | DIntegral
    | DReal
    | DMonoid
    | DIsString
    | DData
    | DTypeable
    | DGeneric
      deriving (Eq)

data Memo = Memo
    { _typed   :: Map Ref TType
    , _derived :: Map Ref [Derive]
    , _schemas :: Map Ref (Schema Ref)
    }

makeLenses ''Memo

type AST = ExceptT Error (State Memo)

schema :: Ref -> AST (Schema Ref)
schema k = do
    m <- gets (Map.lookup k . view schemas)
    case m of
        Nothing -> failure ("Missing Schema: " % ref) k
        Just v  -> pure v

memo :: Lens' Memo (Map Ref v) -> Ref -> (Schema Ref -> AST v) -> AST v
memo l k f = do
    m <- gets (Map.lookup k . view l)
    case m of
        Just x  -> return x
        Nothing -> do
            x <- f =<< schema k
            l %= Map.insert k x
            return x

typeOf :: Ref -> AST TType
typeOf k = memo typed k go
  where
    go = \case
        Obj  {} -> pure (TType k)
        Arr _ r -> typeOf r
        Enum {} -> pure (TType k)
        Ref   r -> typeOf r
        Any'    -> pure (TEither (TLit String) (TLit Integer))
        Lit _ l -> pure (TLit l)

derive :: Ref -> AST [Derive]
derive k = memo derived k go
  where
    go = \case
        Obj _ rs -> foldM props base (Map.keys rs)
        Arr _ r  -> mappend monoid . intersect base <$> derive r
        Enum {}  -> pure enum
        Ref   r  -> derive r
        Any'     -> pure base
        Lit _ l  -> pure $
            case l of
                String  -> base <> [DOrd, DIsString]
                Boolean -> base <> enum
                Integer -> base <> [DNum, DIntegral, DReal] <> enum

    props ds x = intersect ds <$> derive x

    monoid = [DMonoid]
    enum   = [DOrd, DEnum]
    base   = [DEq, DRead, DShow, DData, DTypeable, DGeneric]

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
            e' <- prop Nothing ref e
            res (Arr i e')

        Enum i vs ds -> res (Enum i vs ds)
        Lit  i l     -> res (Lit  i l)
        Ref  r       -> res (Ref  r) -- blow up if r == ref ?
        Any'         -> res Any'

      where
        res x = modify (Map.insert ref x) >> pure ref

        ref = maybe k (<> k) p

render :: Service (Schema Ref) -> Either Error (Service Data)
render s = undefined -- do
   --   rs <- traverse schema (_svcSchemas s)
   --   return $! s { _svcSchemas = rs }
   -- where
   --   schema :: Schema -> Either Error Data
   --   schema = \case
   --       Obj ->
   --           constructor [doc, sig, decl]
   --           decl

   --       Arr -> Nothing



