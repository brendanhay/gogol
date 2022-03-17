{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TupleSections              #-}

-- Module      : Gen.AST.Flatten
-- Copyright   : (c) 2015-2022 Brendan Hay
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
import qualified Data.HashSet         as Set
import           Data.Maybe
import           Gen.Formatting
import           Gen.Types
import           Prelude              hiding (sum)

flatten :: Service (Fix Schema) -> AST (Service Global)
flatten s = do
    ps <- kvTraverseMaybe     globalParam              (s ^. dParameters)
    rs <- Map.traverseWithKey (resource ps "Resource") (s ^. dResources)
    ms <- traverse            (method   ps "Method")   (s ^. dMethods)
    _  <- Map.traverseWithKey globalSchema             (s ^. dSchemas)

    -- The horror.
    ss <- use schemas

    reserveBranches
    reserveFields

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

    -- -- unsafe due to depth first adding of a single schema's properties.
    -- let r = globalise l
    -- p <- uses schemas (Map.member r)
    -- if p
    --     then schema g (Just l) s
    --     else schema r Nothing  s

schema :: Global -> Maybe Local -> Fix Schema -> AST Global
schema g ml (Fix f) = go (maybe g (reference g) ml) f >>= uncurry insert
  where
    go p = \case
        SAny i a -> pure (reference p "Any", SAny i a)
        SRef i r -> pure (reference p "Ref", SRef i r)
        SLit i l -> pure (reference p "Lit", SLit i l)
        SEnm i e -> (,SEnm i e) <$> name i p ["Type", "Option"]
        SArr i a -> do
            u <- name i p ["List", "Array"]
            (u,) . SArr i <$> array u a
        SObj i o -> do
            u <- name i p ["Schema", "Object"]
            (u,) . SObj i <$> object u o

    array p (Arr e) =
        Arr <$> schema p (Just "item") (setRequired e)

    object p (Obj aps ps) = Obj
       <$> traverse (localSchema p "additional") aps
       <*> Map.traverseWithKey (localSchema p) ps

    name i p xs
        | Just x <- i ^. iId = pure x
        | otherwise          = do
            r <- uses reserve (Set.member p)
            e <- uses schemas (Map.lookup p)
            case (r, e, xs) of
                (False, Nothing, _)    -> pure p
                (_,     _,       z:zs) -> name i (reference g z) zs

                (_,     Just x,  [])   -> throwError $
                    format ("Unable to generate name for: " % gid % ", " % shown % ", " % gid % "\n" % shown)
                           g ml p x

                (True,  _,       [])   -> throwError $
                    format ("Unable to generate name for reserved schema: " % gid % ", " % shown % ", " % gid)
                           g ml p

globalParam :: Local -> Param (Fix Schema) -> AST (Maybe (Param Global))
globalParam l p = case l of
    "key"         -> pure Nothing
    "oauth_token" -> pure Nothing
    "prettyPrint" -> pure Nothing
    "quotaUser"   -> pure Nothing
    "fields"      -> pure Nothing
    "userIp"      -> pure Nothing
    "alt"         -> Just <$> overrideParam l (Alt alt) p
    _             -> Just <$> localParam "" l p
  where
    alt = alternate $ fromMaybe "JSON" (p ^. iDefault)

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
    rs <- Map.traverseWithKey (resource qs suf . reference g) _rResources
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
    ps <- Map.traverseWithKey (localParam (abbreviate _mId)) _mParameters
    cn <- use sCanonicalName

    let (_, typ', _) = mname cn suf _mId

    typ <- reserveType typ'
    b   <- body typ

    let params  = ps <> qs
        fields' = Map.delete "alt" $ b (Map.map _pParam params)

    void $ insert typ (SObj schemaInfo (Obj Nothing fields'))
    pure $! m { _mParameters = params }
  where
    schemaInfo = emptyInfo { _iDescription = _mDescription }
    bodyInfo   = requiredInfo { _iDescription = Just "Multipart request metadata." }

    body p = case _mRequest of
        Nothing -> pure id
        Just x  -> do
            let f = "payload" -- localise (ref x)
            g <- localSchema p f (Fix (SRef bodyInfo x))
            pure (Map.insert f g)

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
    exists n s' =
        format ("Schema exists: " % stext % " - " % gid %
                "\n\n[Current]\n" % shown % "\n\n[Tried]\n" % shown % "\n\n")
                n g s' s
