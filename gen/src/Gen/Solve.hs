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
import           Data.Hashable
import qualified Data.HashMap.Strict        as Map
import qualified Data.HashSet               as Set
import           Data.List                  (intersect)
import           Data.Maybe
import           Data.Semigroup             ((<>))
import           Data.Text                  (Text)
import qualified Data.Text                  as Text
import           Data.Text.Manipulate
import           Gen.Formatting
import           Gen.Text
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
    m <- uses schemas (Map.lookup k)
    case m of
        Nothing -> failure ("Missing Schema: " % fid) k
        Just v  -> pure v

memo :: Lens' Memo (Map Id v) -> Id -> (Schema Id -> AST v) -> AST v
memo l k f = do
    m <- uses l (Map.lookup k)
    case m of
        Just x  -> return x
        Nothing -> do
            x <- f =<< schema k
            l %= Map.insert k x
            return x

solve :: Id -> AST Solved
solve k = Solved <$> prefix k <*> schema k <*> typeOf k <*> derive k

typeOf :: Id -> AST TType
typeOf k = memo typed k go
  where
    go s = fmap may $ case s of
        Obj  {} -> pure (TType k)
        Arr _ r -> TList <$> typeOf r
        Enum {} -> pure (TType k)
        Ref _ r -> typeOf (Free r)
        Any  {} -> pure (TEither (TLit Text) (TLit Int64))
        Lit _ l -> pure (TLit l)
      where
        may | s ^. required           = id
            | isJust (s ^. defaulted) = id
            | otherwise               = TMaybe

derive :: Id -> AST [Derive]
derive k = memo derived k go
  where
    go = \case
        Obj  _ rs -> foldM props base (Map.elems rs)
        Arr  _ r  -> mappend monoid . intersect base <$> derive r
        Enum {}   -> pure enum
        Ref  _ r  -> derive (Free r)
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
prefix n = memo prefixed n typ
  where
    typ = \case
        Obj  _ rs   -> field  rs
        Enum _ vs _ -> branch vs
        _           -> pure mempty

    branch vs = do
        p <- uniq branches (acronymPrefixes n) $
            Set.fromList (map CI.mk vs)
        pure (Pre p)

    field rs = do
        let ls = Map.keys rs
            ks = Set.fromList (map (CI.mk . local) ls)
        p <- uniq fields (acronymPrefixes n) ks
        pure (Pre p)

    uniq :: Lens' Memo Seen
         -> [CI Text]
         -> Set (CI Text)
         -> AST Text
    uniq _    []     ks = failure ("Unable to generate unique prefix: " % fid) n
    uniq seen (x:xs) ks = do
        m <- uses seen (Map.lookup x)
        case m of
            Just ys | overlap ys ks
                -> uniq seen xs ks
            _   -> do
                seen %= Map.insertWith (<>) x ks
                return (CI.foldedCase x)

overlap :: (Eq a, Hashable a) => Set a -> Set a -> Bool
overlap xs ys = not . Set.null $ Set.intersection xs ys

acronymPrefixes :: Id -> [CI Text]
acronymPrefixes (idToText -> n) = map CI.mk (xs ++ map suffix ys)
  where
    -- Take the next char
    suffix x = Text.snoc x c
      where
        c | Text.length x >= 2 = Text.head (Text.drop 1 x)
          | otherwise          = Text.head x

    xs = catMaybes [r1, r2, r3, r4, r5, r6]
    ys = catMaybes [r1, r2, r3, r4, r6]

    a  = camelAcronym n
    a' = upperAcronym n

    limit = 3

    -- Full name if leq limit
    r1 | Text.length n <= limit = Just n
       | otherwise              = Nothing

    -- VpcPeeringInfo -> VPI
    r2 = toAcronym a

    -- VpcPeeringInfo -> VPCPI
    r3 | x /= r2   = x
       | otherwise = Nothing
      where
        x = toAcronym a'

    -- SomeTestTType -> S
    r4 = Text.toUpper <$> safeHead n

    -- SomeTypes -> STS (retain pural)
    r5 | Text.isSuffixOf "s" n = flip Text.snoc 's' <$> (r2 <|> r3)
       | otherwise             = Nothing

    -- SomeTestTType -> Som
    r6 = Text.take limit <$> listToMaybe (splitWords a)
