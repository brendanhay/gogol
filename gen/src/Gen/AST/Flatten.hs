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
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Build  (name)
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

flatten :: Service (Fix Schema) -> AST (Service Global)
flatten s = do
    ss <- Map.traverseWithKey globalSchema (s ^. dSchemas)
    ps <- Map.traverseWithKey globalParam  (s ^. dParameters)
    rs <- Map.traverseWithKey resource     (s ^. dResources)
    ms <- traverse            method       (s ^. dMethods)

    let d = (s ^. sDescription)
          { _dSchemas    = ss
          , _dParameters = ps
          , _dResources  = rs
          , _dMethods    = ms
          }

    pure $! s { _sDescription = d }

globalSchema :: Global -> Fix Schema -> AST Global
globalSchema g = schema g Nothing

localSchema :: Global -> Local -> Fix Schema -> AST Global
localSchema g l = schema g (Just l)

schema :: Global -> Maybe Local -> Fix Schema -> AST Global
schema g ml (Fix f) = go f >>= insert this
  where
    this :: Global
    this = maybe g (reference g) ml

    go :: Schema (Fix Schema) -> AST (Schema Global)
    go = \case
        SAny i a -> pure (SAny i a)
        SRef i r -> pure (SRef i r)
        SLit i l -> pure (SLit i l)
        SEnm i e -> pure (SEnm i e)
        SArr i a -> SArr i <$> array  a
        SObj i o -> SObj i <$> object o

    array (Arr e) =
        Arr <$> localSchema this "item" (setRequired e)

    object (Obj aps ps) =
        Obj Nothing <$> Map.traverseWithKey (localSchema this) ps

globalParam :: Local -> Param (Fix Schema) -> AST (Param Global)
globalParam = localParam "param"

localParam :: Global -> Local -> Param (Fix Schema) -> AST (Param Global)
localParam g l p = do
    x <- localSchema g l (_pParam p)
    pure $! p { _pParam = x }

resource :: Global
         -> Resource (Fix Schema)
         -> AST (Resource Global)
resource g r = do
    rs <- Map.traverseWithKey (\l -> resource (reference g l)) (_rResources r)
    ms <- traverse method (_rMethods r)
    pure $! r
        { _rResources = rs
        , _rMethods   = ms
        }

method :: Method (Fix Schema) -> AST (Method Global)
method m = do
    ps <- Map.traverseWithKey (localParam (_mId m)) (_mParameters m)
    pure $! m { _mParameters = ps }

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
