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
import           Debug.Trace
import           Gen.Formatting
import           Gen.Types
import           HIndent
import           Language.Haskell.Exts.Build  (name)
import           Language.Haskell.Exts.Pretty
import           Prelude                      hiding (sum)

flatten :: Service (Fix Schema) -> AST (Service Global)
flatten s = do
    _  <- Map.traverseWithKey globalSchema (s ^. dSchemas)
    ps <- Map.traverseWithKey globalParam  (s ^. dParameters)

    rs <- Map.traverseWithKey (resource ps "Resource") (s ^. dResources)
    ms <- traverse            (method   ps "Method")   (s ^. dMethods)

    -- The horror.
    ss <- use schemas

    let d = (s ^. sDescription)
          { _dSchemas    = Map.fromList $ map (join (,)) (Map.keys ss)
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
        Arr <$> localSchema this "" (setRequired e)

    object (Obj aps ps) =
        Obj Nothing <$> Map.traverseWithKey (localSchema this) ps

globalParam :: Local -> Param (Fix Schema) -> AST (Param Global)
globalParam = localParam ""

localParam :: Global -> Local -> Param (Fix Schema) -> AST (Param Global)
localParam g l p = do
    x <- localSchema g l (_pParam p)
    pure $! p { _pParam = x }

resource :: Map Local (Param Global)
         -> Suffix
         -> Global
         -> Resource (Fix Schema)
         -> AST (Resource Global)
resource qs suf g r@Resource {..} = do
    rs <- Map.traverseWithKey (\l -> resource qs suf (reference g l)) _rResources
    ms <- traverse (method qs suf) _rMethods
    pure $! r
        { _rResources = rs
        , _rMethods   = ms
        }

method :: Map Local (Param Global)
       -> Suffix
       -> Method (Fix Schema)
       -> AST (Method Global)
method qs suf m@Method {..} = do
    ps <- Map.traverseWithKey (localParam _mId) _mParameters
    cn <- use sCanonicalName
    let (_, typ, _) = mname cn suf _mId
        params      = ps <> qs
    void $ insert typ (fresh params)
    pure $! m { _mParameters = params }
  where
    fresh ps = SObj info' $ Obj Nothing (Map.map _pParam ps)

    info' = Info
        { _iId          = Nothing
        , _iDescription = _mDescription
        , _iDefault     = Nothing
        , _iRequired    = False
        , _iPattern     = Nothing
        , _iMinimum     = Nothing
        , _iMaximum     = Nothing
        , _iRepeated    = False
        , _iAnnotations = mempty
        }

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
