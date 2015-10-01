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
import           Control.Lens         hiding (lens)
import           Control.Monad.Except
import qualified Data.HashMap.Strict  as Map
import           Data.Maybe
import           Data.Semigroup       ((<>))
import qualified Data.Text            as Text
import           Gen.Formatting
import           Gen.Types
import           Prelude              hiding (sum)

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
globalParam l p = ($ p) $ case l of
    "alt"         -> overrideParam l (Alt alt)
    "key"         -> overrideParam l Key
    "oauth_token" -> overrideParam l OAuthToken
    _             -> localParam "" l
  where
    alt = Text.toUpper (fromMaybe "JSON" (p ^. iDefault))

overrideParam :: Local -> Lit -> Param (Fix Schema) -> AST (Param Global)
overrideParam l v p =
    localParam "" l $ p { _pParam = Fix (SLit (p ^. info) v) }

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

    b  <- body typ

    let params   = ps <> qs
        fields   = Map.delete "alt" $ b (upload (Map.map _pParam params))

    void $ insert typ (SObj schemaInfo (Obj Nothing fields))
    pure $! m { _mParameters = params }
  where
    schemaInfo = emptyInfo { _iDescription = _mDescription }
    bodyInfo   = requiredInfo { _iDescription = Just "Multipart request metadata." }

    body p = case _mRequest of
        Nothing -> pure id
        Just x  -> do
            let f = localise (ref x)
            g <- localSchema p f (Fix (SRef bodyInfo x))
            pure (Map.insert f g)

    -- FIXME: Add maxSize to media field description.
    upload
        | _mSupportsMediaUpload = Map.insert "media" "Body"
        | otherwise             = id

    -- download = id

    -- media
    --   insert 'media' property of type 'Body'
    --   insert 'mediaType' property of type 'MediaType'

    --   ensure the rendering of api aliases gets request bodies
    --   set to 'Multipart'

    --   error if multipart + simple is not supported.

    --   otherwise ensure servants 'ReqBody' is set.

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
