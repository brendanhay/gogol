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

-- Module      : Gen.Solve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Solve where

import           Control.Applicative
import           Control.Error
import           Control.Lens
import           Control.Monad.Except
import           Control.Monad.Morph
import           Control.Monad.State
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
import           Gen.Text
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)
import           Text.EDE                     (Template)

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
      deriving (Eq, Show)

data Memo = Memo
    { _typed   :: Map Ref TType
    , _derived :: Map Ref [Derive]
    , _schemas :: Map Ref (Schema Ref)
    }

makeLenses ''Memo

type AST = ExceptT Error (State Memo)

type Solved = (Schema Ref, TType, [Derive])

runAST :: Memo -> AST a -> Either Error a
runAST s m = evalState (runExceptT m) s

schema :: Ref -> AST (Schema Ref)
schema k = do
    m <- gets (Map.lookup k . view schemas)
    case m of
        Nothing -> failure ("Missing Schema: " % fref) k
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

solve :: Ref -> AST Solved
solve k = (,,) <$> schema k <*> typeOf k <*> derive k

typeOf :: Ref -> AST TType
typeOf k = loc "typeOf" k $ memo typed k go
  where
    go = \case
        Obj  {} -> pure (TType k)
        Arr _ r -> pure (TList (TType r))
        Enum {} -> pure (TType k)
        Ref   r -> typeOf r
        Any'    -> pure (TEither (TLit Text) (TLit Long))
        Lit _ l -> pure (TLit l)

derive :: Ref -> AST [Derive]
derive k = loc "derive" k $ memo derived k go
  where
    go = \case
        Obj _ rs -> foldM props base (Map.elems rs)
        Arr _ r  -> pure [] -- mappend monoid . intersect base <$> derive r
        Enum {}  -> pure enum
        Ref   r  -> derive r
        Any'     -> pure base
        Lit _ l  -> pure $
            case l of
                Text -> base <> [DOrd, DIsString]
                Bool -> base <> enum
                Int  -> base
                Long -> base <> [DNum, DIntegral, DReal] <> enum
                Nat  -> base
                Time -> base

    props ds x = intersect ds <$> derive x

    monoid = [DMonoid]
    enum   = [DOrd, DEnum]
    base   = [DEq, DRead, DShow, DData, DTypeable, DGeneric]

loc :: String -> Ref -> a -> a
loc n r = id -- trace (n ++ ": " ++ Text.unpack (refToText r))
