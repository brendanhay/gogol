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

-- Module      : Gen.AST.Solve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST.Solve
    ( solve
    , getSolved
    ) where

import           Control.Applicative
import           Control.Error
import           Control.Lens         hiding (enum)
import           Control.Monad.Except
import           Data.CaseInsensitive (CI)
import qualified Data.CaseInsensitive as CI
import           Data.Hashable
import qualified Data.HashMap.Strict  as Map
import qualified Data.HashSet         as Set
import           Data.List            (intersect)
import           Data.Maybe
import           Data.Semigroup       ((<>))
import           Data.Text            (Text)
import qualified Data.Text            as Text
import           Data.Text.Manipulate
import           Debug.Trace
import           Gen.Formatting
import           Gen.Text
import           Gen.Types
import           Prelude              hiding (sum)

solve :: Service Global -> AST (Service Solved)
solve s = do
    ss <- Map.traverseWithKey (const . getSolved) (s ^. dSchemas)
    ps <- traverse param    (s ^. dParameters)
    rs <- traverse resource (s ^. dResources)
    ms <- traverse method   (s ^. dMethods)

    let d = (s ^. sDescription)
          { _dSchemas    = ss
          , _dParameters = ps
          , _dResources  = rs
          , _dMethods    = ms
          }

    pure $! s { _sDescription = d }

param :: Param Global -> AST (Param Solved)
param = traverse getSolved

resource :: Resource Global -> AST (Resource Solved)
resource = traverse getSolved

method :: Method Global -> AST (Method Solved)
method = traverse getSolved

getSolved :: Global -> AST Solved
getSolved g = loc "getSolved" g $
    Solved g <$> getPrefix g
             <*> getSchema g
             <*> getType   g
             <*> getDerive g

getSchema :: Global -> AST (Schema Global)
getSchema g = do
    m <- uses schemas (Map.lookup g)
    case m of
        Nothing -> failure ("Missing Schema: " % gid) g
        Just x  -> pure x

getType :: Global -> AST TType
getType g = loc "getType" g $ memo typed g go
  where
    go s = fmap (may s) $
        case s of
            SAny {}        -> pure (TType "JSON")
            SRef _ r       -> getType (ref r)
            --- FIXME: add natural/numeric manipulations
            SLit _ l       -> pure (TLit l)
            SEnm {}        -> pure (TType g)
            SArr _ (Arr e) -> TList <$> getType e
            SObj {}        -> pure (TType g)

    may s | required  s = id
          | defaulted s = id
          | otherwise   = TMaybe

getDerive :: Global -> AST [Derive]
getDerive g = loc "getDerive" g $ memo derived g go
  where
    go = \case
        SAny {}           -> pure base
        SRef {}           -> pure base
        SLit _ l          -> pure (literal l)
        SEnm {}           -> pure enum
        SArr _ (Arr e)    -> mappend list . intersect base <$> getDerive e
        SObj _ (Obj _ ps) -> foldM props base (Map.elems ps)

    literal = \case
        Text -> base <> [DOrd, DIsString]
        Bool -> enum
        Time -> base
        Date -> base
        -- FIXME: Add numeric cases
        _    -> [DNum, DIntegral, DReal] <> enum

    props ds x = intersect ds <$> getDerive x

    list = [DMonoid]
    enum = [DOrd, DEnum] <> base
    base = [DEq, DRead, DShow, DData, DTypeable, DGeneric]

getPrefix :: Global -> AST Prefix
getPrefix g = loc "getPrefix" g $ memo prefixed g go
  where
    go = \case
        SObj _ (Obj _ ps) -> field ps
        SEnm _ (Enm vs)   -> branch (map fst vs)
        _                 -> pure mempty

    field rs = do
        let ls = Map.keys rs
            ks = Set.fromList (map (CI.mk . local) ls)
        p <- uniq fields (acronymPrefixes g) ks
        pure (Prefix p)

    branch vs = do
        p <- uniq branches ("" : acronymPrefixes g) $
            Set.fromList (map CI.mk vs)
        pure (Prefix p)

    uniq :: Lens' Memo Seen
         -> [CI Text]
         -> Set (CI Text)
         -> AST Text
    uniq seen [] ks = do
        s <- use seen
        let hs  = acronymPrefixes g
            f x = sformat ("\n" % stext % " => " % shown)
                          (CI.foldedCase x) (Map.lookup x s)
        throwError $
            format ("Error prefixing: " % gid   %
                    "\n  Fields: "      % shown %
                    "\n  Matches: "     % stext)
                   g (Set.toList ks) (foldMap f hs)

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

acronymPrefixes :: Global -> [CI Text]
acronymPrefixes (global -> g) = map CI.mk (xs ++ map suffix ys ++ zs)
  where
    -- Take the next char
    suffix x = Text.snoc x c
      where
        c | Text.length x >= 2 = Text.head (Text.drop 1 x)
          | otherwise          = Text.head x

    zs = zipWith (\n x -> Text.snoc x (head (show n))) ([1..] :: [Int]) xs

    xs = catMaybes [r1, r2, r3, r4, r5, r6]
    ys = catMaybes [r1, r2, r3, r4, r6]

    a  = camelAcronym g
    a' = upperAcronym g

    limit = 3

    -- Full name if leq limit
    r1 | Text.length g <= limit = Just g
       | otherwise              = Nothing

    -- VpcPeeringInfo -> VPI
    r2 = toAcronym a

    -- VpcPeeringInfo -> VPCPI
    r3 | x /= r2   = x
       | otherwise = Nothing
      where
        x = toAcronym a'

    -- SomeTestTType -> S
    r4 = Text.toUpper <$> safeHead g

    -- SomeTypes -> STS (retain pural)
    r5 | Text.isSuffixOf "s" g = flip Text.snoc 's' <$> (r2 <|> r3)
       | otherwise             = Nothing

    -- SomeTestTType -> Som
    r6 = Text.take limit <$> listToMaybe (splitWords a)

loc :: String -> Global -> a -> a
loc _ _ = id --trace (n ++ ": " ++ Text.unpack (idToText g))

memo :: Lens' Memo (Map Global a)
     -> Global
     -> (Schema Global -> AST a)
     -> AST a
memo l g f = do
    m <- uses l (Map.lookup g)
    case m of
        Just x  -> pure x
        Nothing -> do
            x <- f =<< getSchema g
            l %= Map.insert g x
            pure x
