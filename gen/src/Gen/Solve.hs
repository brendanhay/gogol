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
import           Control.Lens               hiding (enum)
import           Control.Monad.Except
import           Control.Monad.State.Strict
import           Data.CaseInsensitive       (CI)
import qualified Data.CaseInsensitive       as CI
import           Data.Char                  (toLower)
import qualified Data.HashMap.Strict        as Map
import qualified Data.HashSet               as Set
import           Data.List                  (intersect)
import           Data.Maybe
import           Data.Semigroup             ((<>))
import           Data.Text                  (Text)
import qualified Data.Text                  as Text
import           Data.Text.Manipulate
import           Gen.Formatting
import           Gen.Types
import           Prelude                    hiding (sum)

-- Just use hashmaps to lookup refs etc, and hide all the mutation
-- behind a StateT interface.

data TType
    = TType   Id
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

data Solved = Solved
    { _prefix   :: Pre
    , _schema   :: Schema Id
    , _type     :: TType
    , _deriving :: [Derive]
    }

instance HasInfo Solved where
    info = f . info
      where
        f = lens _schema (\s a -> s { _schema = a })

type Seen = Map (CI Text) (Set (CI Text))

data Memo = Memo
    { _typed    :: Map Id TType
    , _derived  :: Map Id [Derive]
    , _prefixed :: Map Id Pre
    , _branches :: Seen
    , _fields   :: Seen
    , _schemas  :: Map Id (Schema Id)
    }

initial :: Map Id (Schema Id) -> Memo
initial = Memo mempty mempty mempty mempty mempty

makeLenses ''Memo

type AST = ExceptT Error (State Memo)

schema :: Id -> AST (Schema Id)
schema k = do
    m <- gets (Map.lookup k . view schemas)
    case m of
        Nothing -> failure ("Missing Schema: " % fid) k
        Just v  -> pure v

memo :: Lens' Memo (Map Id v) -> Id -> (Schema Id -> AST v) -> AST v
memo l k f = do
    m <- gets (Map.lookup k . view l)
    case m of
        Just x  -> return x
        Nothing -> do
            x <- f =<< schema k
            l %= Map.insert k x
            return x

solve :: Id -> AST Solved
solve k = Solved <$> prefix k <*> schema k <*> typeOf k <*> derive k

typeOf :: Id -> AST TType
typeOf k = loc "typeOf" k $ memo typed k go
  where
    go s = fmap may $ case s of
        Obj  {} -> pure (TType k)
        Arr _ r -> TList <$> typeOf r
        Enum {} -> pure (TType k)
        Ref _ r -> typeOf r
        Any  {} -> pure (TEither (TLit Text) (TLit Int64))
        Lit _ l -> pure (TLit l)
      where
        may | s ^. required           = id
            | isJust (s ^. defaulted) = id
            | otherwise               = TMaybe

derive :: Id -> AST [Derive]
derive k = loc "derive" k $ memo derived k go
  where
    go = \case
        Obj  _ rs -> foldM props base (Map.elems rs)
        Arr  _ r  -> mappend monoid . intersect base <$> derive r
        Enum {}   -> pure enum
        Ref  _ r  -> derive r
        Any  _    -> pure base
        Lit  _ l  -> pure $
            case l of
                Text -> base <> [DOrd, DIsString]
                Bool -> base <> enum
                Time -> base
                Nat  -> base
                _    -> base <> [DNum, DIntegral, DReal] <> enum

    props ds x = intersect ds <$> derive x

    monoid = [DMonoid]
    enum   = [DOrd, DEnum]
    base   = [DEq, DRead, DShow, DData, DTypeable, DGeneric]

prefix :: Id -> AST Pre
prefix k = loc "prefix" k $ memo prefixed k go
  where
    go (Obj i rs) = Map.traverseWithKey prop rs >> pure (Pre k)
    go s          = pure (Pre k)

    prop n _ = do
        let p = Pre (idFromText (acronym $ idToText k) <> n)
        prefixed %= Map.insert (k <> n) p
        pure p

    acronym = foldMap (Text.singleton . toLower . Text.head) . splitWords

loc :: String -> Id -> a -> a
loc _ _ = id -- trace (n ++ ": " ++ Text.unpack (refToText r))
