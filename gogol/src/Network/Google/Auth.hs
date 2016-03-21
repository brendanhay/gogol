{-# LANGUAGE ConstraintKinds            #-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE FunctionalDependencies     #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE PolyKinds                  #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE UndecidableInstances       #-}

-- |
-- Module      : Network.Google.Auth
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Explicitly specify your Google credentials, or retrieve them
-- from the underlying OS.
module Network.Google.Auth
    (
    -- * Credentials
      Credentials    (..)

    -- ** Application Default Credentials
    , getApplicationDefault
    , fromWellKnownPath
    , fromFilePath

    -- ** Installed Application Credentials
    , formURL

    -- ** Authorizing Requests
    , authorize

    -- ** Thread-safe Storage
    , Store
    , initStore

    , Auth           (..)
    , exchange
    , refresh

    -- ** Default Constants
    , checkGCEVar
    , cloudSDKConfigDir
    , defaultCredentialsFile

    -- ** Handling Errors
    , AsAuthError    (..)
    , AuthError      (..)

    -- * OAuth Types
    , OAuthClient    (..)
    , OAuthToken     (..)
    , OAuthCode      (..)
    , OAuthScope     (..)

    -- * Re-exported Types
    , AccessToken    (..)
    , RefreshToken   (..)
    , Secret         (..)
    , ServiceId      (..)
    , ClientId       (..)

    -- * Re-exported Modules
    , module Network.Google.Auth.Scope
    ) where

import           Control.Concurrent
import           Control.Monad.Catch                      (MonadCatch)
import           Control.Monad.IO.Class                   (MonadIO (..))
import qualified Data.Text.Encoding                       as Text
import           Data.Time                                (getCurrentTime)
import           GHC.TypeLits                             (Symbol)
import           Network.Google.Auth.ApplicationDefault
import           Network.Google.Auth.InstalledApplication
import           Network.Google.Auth.Scope
import           Network.Google.Auth.ServiceAccount
import           Network.Google.Compute.Metadata          (checkGCEVar)
import           Network.Google.Internal.Auth
import           Network.Google.Internal.Logger           (Logger)
import           Network.Google.Prelude
import           Network.HTTP.Conduit                     (Manager)
import qualified Network.HTTP.Conduit                     as Client
import           Network.HTTP.Types                       (hAuthorization)

-- | An 'OAuthToken' that can potentially be expired, with the original
-- credentials that can be used to perform a refresh.
data Auth (s :: [Symbol]) = Auth
    { _credentials :: !(Credentials s)
    , _token       :: !OAuthToken
    }

-- | Check if the given token is still valid, ie. younger than the projected
-- expiry time.
--
-- This deliberately makes no external calls due to the absolute construction of
-- the '_tokenExpiry' field, unlike the
-- <https://developers.google.com/accounts/docs/OAuth2Login#validatingtoken documented>
-- validation method.
validate :: MonadIO m => Auth s -> m Bool
validate a = (< _tokenExpiry (_token a)) <$> liftIO getCurrentTime

newtype Store (s :: [Symbol]) = Store (MVar (Auth s))

-- | Construct storage containing the credentials which have not yet been
-- exchanged or refreshed.
initStore :: (MonadIO m, MonadCatch m, AllowScopes s)
          => Credentials s
          -> Logger
          -> Manager
          -> m (Store s)
initStore c l m = exchange c l m >>= fmap Store . liftIO . newMVar

-- | Concurrently read the current token, and if expired, then
-- safely perform a single serial refresh.
getToken :: (MonadIO m, MonadCatch m, AllowScopes s)
         => Store s
         -> Logger
         -> Manager
         -> m OAuthToken
getToken (Store s) l m = do
    x  <- liftIO (readMVar s)
    mx <- validate x
    if mx
        then pure (_token x)
        else liftIO . modifyMVar s $ \y -> do
            my <- validate y
            if my
                then pure (y, _token y)
                else do
                    z <- refresh y l m
                    pure (z, _token z)

-- | Perform the initial credentials exchange to obtain a valid 'OAuthToken'
-- suitable for authorizing requests.
exchange :: (MonadIO m, MonadCatch m, AllowScopes s)
         => Credentials s
         -> Logger
         -> Manager
         -> m (Auth s)
exchange c l = fmap (Auth c) . action l
  where
    action = case c of
        FromMetadata s    -> metadataToken       s
        FromAccount  a    -> serviceAccountToken a (allowScopes c)
        FromClient   x n  -> exchangeCode        x n
        FromUser     u    -> authorizedUserToken u Nothing

-- | Refresh an existing 'OAuthToken' using
refresh :: (MonadIO m, MonadCatch m, AllowScopes s)
        => Auth s
        -> Logger
        -> Manager
        -> m (Auth s)
refresh (Auth c t) l = fmap (Auth c) . action l
  where
    action = case c of
        FromMetadata s   -> metadataToken       s
        FromAccount  a   -> serviceAccountToken a (allowScopes c)
        FromClient   x _ -> refreshToken        x t
        FromUser     u   -> authorizedUserToken u (_tokenRefresh t)

-- | Apply the (by way of possible token refresh) a bearer token to the
-- authentication header of a request.
authorize :: (MonadIO m, MonadCatch m, AllowScopes s)
          => Client.Request
          -> Store s
          -> Logger
          -> Manager
          -> m Client.Request
authorize rq s l m = bearer <$> getToken s l m
  where
    bearer t = rq
        { Client.requestHeaders =
            ( hAuthorization
            , "Bearer " <> Text.encodeUtf8 (toText (_tokenAccess t))
            ) : Client.requestHeaders rq
        }
