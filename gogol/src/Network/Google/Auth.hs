{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}

-- |
-- Module      : Network.Google.Auth
-- Copyright   : (c) 2015 Brendan Hay
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
   ) where

import           Control.Applicative
import           Control.Concurrent
import           Control.Exception.Lens
import           Control.Lens                                      hiding
                                                                    (coerce,
                                                                    (.=))
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Crypto.Hash.Algorithms                            (SHA256 (..))
import           Crypto.PubKey.RSA.PKCS15                          (signSafer)
import           Crypto.PubKey.RSA.Types                           (PrivateKey)
import           Data.Aeson
import           Data.Aeson.Types
import           Data.ByteArray
import           Data.ByteArray.Encoding
import           Data.ByteString                                   (ByteString)
import           Data.ByteString.Builder                           (Builder)
import qualified Data.ByteString.Builder                           as Build
import qualified Data.ByteString.Char8                             as BS8
import qualified Data.ByteString.Lazy                              as LBS
import           Data.Coerce
import           Data.Default.Class                                (def)
import           Data.List                                         (intersperse)
import           Data.String
import qualified Data.Text                                         as Text
import qualified Data.Text.Encoding                                as Text
import           Data.Time
import           Data.Time.Clock.POSIX
import           Data.Typeable
import           Data.X509
import           Data.X509.Memory
import           Network.Google.Auth.ApplicationDefaultCredentials
import           Network.Google.Auth.Device
import           Network.Google.Auth.InstalledApplication
import           Network.Google.Auth.ServiceAccount
import           Network.Google.Compute.Metadata
import           Network.Google.Internal.Auth
import           Network.Google.Internal.Logger
import           Network.Google.Prelude
import           Network.HTTP.Conduit                              hiding
                                                                    (Request)
import qualified Network.HTTP.Conduit                              as Client
import           Network.HTTP.Types
import           System.Directory                                  (doesFileExist, getHomeDirectory)
import           System.Environment                                (lookupEnv)
import           System.FilePath                                   ((</>))
import           System.Info                                       (os)

-- | An 'OAuthToken' that can potentially be expired, with the original
-- credentials that can be used to perform a refresh.
data Auth = Auth
    { _credentials :: !Credentials
    , _token       :: !OAuthToken
    }

-- | Check if the given token is still valid, ie. younger than the projected
-- expiry time.
--
-- This deliberately makes no external calls due to the absolute construction of
-- the '_tokenExpiry' field, unlike the
-- <https://developers.google.com/accounts/docs/OAuth2Login#validatingtoken documented>
-- validation method.
validate :: MonadIO m => Auth -> m Bool
validate a = (< _tokenExpiry (_token a)) <$> liftIO getCurrentTime

type Store = MVar Auth

-- | Construct storage containing the credentials which have not yet been
-- exchanged or refreshed.
initStore :: (MonadIO m, MonadCatch m)
          => Credentials
          -> Logger
          -> Manager
          -> m Store
initStore c l m = exchange c l m >>= liftIO . newMVar

-- | Concurrently read the current token, and if expired, then
-- safely perform a single serial refresh.
getToken :: (MonadIO m, MonadCatch m)
         => Store
         -> Logger
         -> Manager
         -> m OAuthToken
getToken s l m = do
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
exchange :: (MonadIO m, MonadCatch m)
         => Credentials
         -> Logger
         -> Manager
         -> m Auth
exchange c l = fmap (Auth c) . action l
  where
    action = case c of
        FromMetadata s    -> metadataToken       s
        FromAccount  a ss -> serviceAccountToken a ss
        FromClient   c n  -> exchangeCode        c n
        FromUser     u    -> authorizedUserToken u Nothing

-- | Refresh an existing 'OAuthToken' using
refresh :: (MonadIO m, MonadCatch m)
        => Auth
        -> Logger
        -> Manager
        -> m Auth
refresh (Auth c t) l = fmap (Auth c) . action l
  where
    action = case c of
        FromMetadata s    -> metadataToken       s
        FromAccount  a ss -> serviceAccountToken a ss
        FromClient   x _  -> refreshToken        x t
        FromUser     u    -> authorizedUserToken u (_tokenRefresh t)

-- | Apply the (by way of possible token refresh) a bearer token to the
-- authentication header of a request.
authorize :: (MonadIO m, MonadCatch m)
          => Client.Request
          -> Store
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
