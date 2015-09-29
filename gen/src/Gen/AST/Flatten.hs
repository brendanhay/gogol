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

-- Module      : Gen.AST.Flatten
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.AST.Flatten
    ( flatten
    ) where

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
-- import           Gen.Solve
-- import           Gen.Syntax
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Build  (name)
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

flatten :: Service (Fix Schema) -> AST (Service Global)
flatten s = do
    _  <- Map.traverseWithKey globalSchema   (s ^. dSchemas)
    ps <- Map.traverseWithKey globalParam    (s ^. dParameters)
    rs <- Map.traverseWithKey globalResource (s ^. dResources)
    ms <- traverse            method         (s ^. dMethods)

    ss <- use schemas

    let d = (s ^. sDescription)
          { _dSchemas    = ss
          , _dParameters = ps
          , _dMethods    = ms
          , _dResources  = rs
          }

    pure $! s { _sDescription = d }

globalSchema :: Global -> Schema (Fix Schema) -> AST Global
globalSchema g = schema g Nothing

localSchema :: Global -> Local -> Fix Schema -> AST Global
localSchema g l (Fix s) = schema g (Just l) s

schema :: Global -> Maybe Local -> Schema (Fix Schema) -> AST Global
schema g ml = go >=> insert this
  where
    this :: Global
    this = maybe g (reference g) ml

    go :: Schema (Fix Schema) -> AST (Schema Global)
    go = \case
        SRef i r -> pure (SRef i r)
        SLit i l -> pure (SLit i l)
        SEnm i e -> pure (SEnm i e)
        SArr i a -> SArr i <$> array  a
        SObj i o -> SObj i <$> object o

    array (Arr e) =
        Arr <$> localSchema this "item" (setRequired e)

    object (Obj ap ps) =
        Obj Nothing <$> Map.traverseWithKey (localSchema this) ps

setRequired :: Fix Schema -> Fix Schema
setRequired (Fix e) = Fix (e & iRequired .~ True)

insert :: Global -> Schema Global -> AST Global
insert g s = do
    ms <- uses schemas (Map.lookup g)
    n  <- use  sCanonicalName
    case ms of
        Just s' | s /= s' -> throwError (exists n s')
        _                 -> pure ()
    schemas %= Map.insert g s
    pure g
  where
    exists n x =
        format ("Schema exists: " % stext % " - " % gid %
                "\nCurrent: " % shown % "\nTried: " % shown)
                n g x s

globalParam :: Local -> Param (Fix Schema) -> AST (Param Global)
globalParam = localParam "param"

localParam :: Global -> Local -> Param (Fix Schema) -> AST (Param Global)
localParam g l p = do
    x <- localSchema g l (_pParam p)
    pure $! p { _pParam = x }

globalResource :: Global
               -> Resource Global (Fix Schema)
               -> AST (Resource Global Global)
globalResource = undefined

localResource :: Global
              -> Resource Local (Fix Schema)
              -> AST (Resource Local Global)
localResource = undefined

method :: Method (Fix Schema) -> AST (Method Global)
method = undefined

--     api :: Map Local (Param Id) -> Resource (Fix Schema) -> AST (Resource Id)
--     api qs = \case
--         Top rs -> Top <$> Map.traverseWithKey sub rs
--         Sub ms -> Sub <$> Map.traverseWithKey (verb "") ms
--       where
--         sub l = \case
--             Top rs -> Top <$> Map.traverseWithKey sub rs
--             Sub ms -> Sub <$> Map.traverseWithKey (verb l) ms

--         verb p l m = do
--             let (_, i, _) = vname (svcAbbrev svc) (_mId m)
--             rs <- Map.traverseWithKey (prm i) (_mParameters m)
--             _  <- ins i $
--                 Obj (Info (_mDescription m) Nothing False Nothing) (Map.map _prmSchema (rs <> qs))
--             pure $! m { _mParameters = rs <> qs }

--     ins :: Id -> Schema Id -> AST Id
--     ins n x = do
--         ms <- uses schemas (Map.lookup n)
--         case ms of
--             Just y | x /= y -> throwError $
--                 format ("Schema exists: " % stext % " - " % fid %
--                        "\nCurrent: " % shown % "\nTried: " % shown)
--                         (_svcCanonicalName svc) n y x
--             _ -> schemas %= Map.insert n x

--         return n
