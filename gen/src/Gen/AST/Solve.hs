{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ViewPatterns #-}

-- Module      : Gen.AST.Solve
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST.Solve
  ( solve,
    getSolved,
  )
where

import Control.Applicative
import Control.Lens hiding (enum)
import Control.Monad.Except
import qualified Data.HashMap.Strict as Map
import Data.List (intersect)
import Data.Maybe
import Gen.Formatting hiding (list)
import Gen.Text
import Gen.Types
import Prelude hiding (sum)

solve :: Service Global -> AST (Service Solved)
solve s = do
  ss <- Map.traverseWithKey (const . getSolved) (s ^. dSchemas)
  ps <- traverse param (s ^. dParameters)
  rs <- traverse resource (s ^. dResources)
  ms <- traverse method (s ^. dMethods)

  let d =
        (s ^. sDescription)
          { _dSchemas = ss,
            _dParameters = ps,
            _dResources = rs,
            _dMethods = ms
          }

  pure $! s {_sDescription = d}

param :: Param Global -> AST (Param Solved)
param = traverse getSolved

resource :: Resource Global -> AST (Resource Solved)
resource = traverse getSolved

method :: Method Global -> AST (Method Solved)
method = traverse getSolved

getSolved :: Global -> AST Solved
getSolved g =
  loc "getSolved" g $
    Solved False g
      <$> getPrefix g
      <*> getSchema g
      <*> getType g
      <*> getDerive g

getSchema :: Global -> AST (Schema Global)
getSchema g = do
  ss <- use schemas
  case Map.lookup g ss of
    Just x -> pure x
    Nothing ->
      throwError $
        format
          ("Missing Schema: " % gid % "\n" % shown)
          g
          (map global (Map.keys ss))

getType :: Global -> AST TType
getType g = loc "getType" g $ memo Gen.Types.typed g go
  where
    go s = case s of
      SAny {} -> res (TType "JSONValue")
      --- FIXME: add natural/numeric manipulations
      SLit _ l -> res (TLit l)
      SEnm {} -> res (TType g)
      SArr _ (Arr e) -> may <$> (TList <$> getType e)
      SObj {} -> res (TType g)
      SRef _ r
        | ref r /= g -> req <$> getType (ref r)
        --            | otherwise  -> res (TType (ref r))
        | otherwise ->
          throwError $
            format
              ("Ref cycle detected between: " % gid % " == " % shown)
              g
              s
      where
        res = pure . may . rep

        may
          | required s = id
          | defaulted s = id
          | otherwise = TMaybe

        req (TMaybe x)
          | required s = x
        req x = x

        rep
          | s ^. iRepeated = TList
          | otherwise = id

getDerive :: Global -> AST [Derive]
getDerive g = loc "getDerive" g $ memo Gen.Types.derived g go
  where
    go = \case
      SAny {} -> pure base
      SRef {} -> pure base
      SLit _ l -> pure (literal l)
      SEnm {} -> pure enum
      SArr _ (Arr e) -> mappend list . intersect base <$> getDerive e
      SObj _ (Obj _ ps) -> foldM props base (Map.elems ps)

    literal = \case
      Text -> base <> [DRead, DOrd, DIsString]
      Bool -> enum
      Time -> DRead : base
      Date -> DRead : base
      RqBody -> [DIsString, DMonoid]
      RsBody -> []
      Alt _ -> DRead : base
      JSONValue -> DRead : base
      -- FIXME: Add numeric cases
      _ -> [DRead, DNum, DIntegral, DReal] <> enum

    props ds x = intersect ds <$> getDerive x

    list = [DMonoid]
    enum = [DOrd, DEnum] <> base
    base = [DEq, DShow, DGeneric]

getPrefix :: Global -> AST Prefix
getPrefix g = loc "getPrefix" g $ memo Gen.Types.prefixed g go
  where
    go =
      pure . \case
        SObj {} -> Prefix (renameSpecial (global g))
        SEnm {} -> Prefix (renameSpecial (global g))
        _ -> mempty

memo ::
  Lens' Memo (Map Global a) ->
  Global ->
  (Schema Global -> AST a) ->
  AST a
memo l g f = do
  m <- uses l (Map.lookup g)
  case m of
    Just x -> pure x
    Nothing -> do
      x <- f =<< getSchema g
      l %= Map.insert g x
      pure x

loc :: String -> Global -> a -> a
loc _ _ = id -- trace (n ++ ": " ++ Text.unpack (global g))
