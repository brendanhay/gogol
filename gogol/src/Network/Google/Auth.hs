{-# LANGUAGE BangPatterns               #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GADTs                      #-}
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
module Network.Google.Auth where
   -- (
   -- -- * Credentials
   --   Credentials    (..)

   -- -- ** Discovery
   -- , discover
   -- , fromFile
   -- , fromFilePath
   -- , fromJSONCredentials

   -- -- ** Thread-safe Storage
   -- , Auth           (..)
   -- , Store
   -- , emptyStore

   -- -- ** Authorizing Requests
   -- , authorize

   -- -- ** Constructing Callback URLs
   -- , formURL
   -- , redirectURI
   -- , accountsURL

   -- -- ** Default Constants
   -- -- *** Google Compute Engine
   -- , checkGCEVar

   -- -- *** Cloud SDK
   -- , cloudSDKConfigDir
   -- , cloudSDKConfigPath

   -- -- *** Application Default Credentials
   -- , defaultCredentialsFile
   -- , defaultCredentialsPath

   -- -- ** Handling Errors
   -- , AsAuthError    (..)
   -- , AuthError      (..)

   -- -- * Credential Types
   -- , ServiceAccount (..)
   -- , AuthorizedUser (..)

   -- -- * OAuth Types
   -- , OAuthClient    (..)
   -- , OAuthToken     (..)
   -- , OAuthCode      (..)
   -- , OAuthScope     (..)

   -- -- * Re-exported Types
   -- , AccessToken    (..)
   -- , RefreshToken   (..)
   -- , Secret         (..)
   -- , ServiceId      (..)
   -- , ClientId       (..)

   -- -- * Exchange and Refresh Internals
   -- , getToken
   -- , validateToken

   -- , exchange
   -- , exchangeCode

   -- , refresh
   -- , refreshMetadata
   -- , refreshToken
   -- , refreshAssertion
   -- ) where

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

-- | The supported credential mechanisms.
data Credentials
    = FromMetadata !ServiceId
      -- ^ Obtain and refresh access tokens from the underlying GCE host metadata
      -- at @http:\/\/169.254.169.254@.

    | FromClient !OAuthClient !OAuthCode
      -- ^ Obtain and refresh access tokens using the specified client secret
      -- and authorization code obtained from.
      --
      -- See the <https://developers.google.com/accounts/docs/OAuth2InstalledApp OAuth2 Installed Application>
      -- documentation for more information.

    | FromAccount  !ServiceAccount ![OAuthScope]
      -- ^ Use the specified @service_account@ and scopes to sign and request
      -- an access token. The 'ServiceAccount' will also be used for subsequent
      -- token refreshes.
      --
      -- A 'ServiceAccount' is typically generated through the
      -- Google Developer Console.

    | FromUser !AuthorizedUser
      -- ^ Use the specified @authorized_user@ to obtain and refresh access tokens.
      --
      -- An 'AuthorizedUser' is typically created by the @gcloud init@ command
      -- of the Google CloudSDK Tools.

-- | Attempt credentials discovery via the following steps:
--
-- * Read the default credentials from a file specified by
-- the environment variable @GOOGLE_APPLICATION_CREDENTIALS@ if it exists.
--
-- * Read the platform equivalent of @~\/.config\/gcloud\/application_default_credentials.json@ if it exists.
-- The @~/.config@ component of the path can be overriden by the environment
-- variable @CLOUDSDK_CONFIG@ if it exists.
--
-- * Retrieve the default service account application credentials if
-- running on GCE. The environment variable @NO_GCE_CHECK@ can be used to
-- skip this check if set to a truthy value such as @1@ or @true@.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
discover :: (MonadIO m, MonadCatch m)
         => [OAuthScope]
         -> Manager
         -> m Credentials
discover ss m =
    catching _MissingFileError (fromFile ss) $ \f -> do
        p <- isGCE m
        unless p $
            throwingM _MissingFileError f
        pure $! FromMetadata "default"

-- | Attempt to load either a @service_account@ or @authorized_user@ formatted
-- file to obtain the credentials neccessary to perform a token refresh.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
--
-- /See:/ 'cloudSDKConfigPath', 'defaultCredentialsPath'.
fromFile :: (MonadIO m, MonadCatch m) => [OAuthScope] -> m Credentials
fromFile ss = do
    f <- defaultCredentialsPath
    case f of
        Just x  -> fromFilePath ss x
        Nothing -> do
            x <- cloudSDKConfigPath
            fromFilePath ss x

-- | Attempt to load either a @service_account@ or @authorized_user@ formatted
-- file to obtain the credentials neccessary to perform a token refresh from
-- the specified file.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
fromFilePath :: (MonadIO m, MonadCatch m)
             => [OAuthScope]
             -> FilePath
             -> m Credentials
fromFilePath ss f = do
    p  <- liftIO (doesFileExist f)
    unless p $
        throwM (MissingFileError f)
    bs <- liftIO (LBS.readFile f)
    either (throwM . InvalidFileError f . Text.pack) pure
           (fromJSONCredentials ss bs)

fromJSONCredentials :: [OAuthScope]
                    -> LBS.ByteString
                    -> Either String Credentials
fromJSONCredentials ss bs = do
    v <- eitherDecode' bs
    let x = (`FromAccount` ss) <$> parseEither parseJSON v
        y = FromUser           <$> parseEither parseJSON v
    case (x, y) of
        (Left xe, Left ye) -> Left $
              "Failed parsing service_account: " ++ xe ++
            ", Failed parsing authorized_user: " ++ ye
        _                  -> x <|> y

exchange :: (MonadIO m, MonadCatch m)
         => Credentials
         -> Logger
         -> Manager
         -> m OAuthToken
exchange c l m =
    case c of
        FromMetadata s     -> metadataToken       s         l m
        FromAccount  a  ss -> serviceAccountToken a ss      l m
        FromClient   c' n  -> exchangeCode        c' n      l m
        FromUser     u     -> authorizedUserToken u Nothing l m

refresh :: (MonadIO m, MonadCatch m)
        => Credentials
        -> OAuthToken
        -> Logger
        -> Manager
        -> m OAuthToken
refresh c t l m =
    case c of
        FromMetadata s    -> metadataToken       s                   l m
        FromAccount  a ss -> serviceAccountToken a ss                l m
        FromClient   c _  -> refreshToken        c t                 l m
        FromUser     u    -> authorizedUserToken u (_tokenRefresh t) l m

-- | A credentials value in one of two possible states, pre-exchange and
-- containing a valid, but possibly expired access token.
data Auth
    = Exchange !Credentials
      -- ^ Signifies that the initial token refresh has not occured, and the
      -- 'Credentials' need to be signed and exchanged for a valid 'OAuthToken'.

    | Refresh  !Credentials !OAuthToken
      -- ^ An 'OAuthToken' that can potentially be expired, with the original
      -- credentials that can be used to perform a refresh.

validateToken :: MonadIO m => Auth -> m (Maybe OAuthToken)
validateToken Exchange {}   = pure Nothing
validateToken (Refresh _ t) = do
    ts <- liftIO getCurrentTime
    if ts < _tokenExpiry t
        then pure (Just t)
        else pure Nothing

type Store = MVar Auth

-- | Construct storage containing the credentials which have not yet been
-- exchanged or refreshed.
emptyStore :: MonadIO m => Credentials -> m Store
emptyStore !c = liftIO . newMVar $ Exchange c

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

getToken :: (MonadIO m, MonadCatch m)
         => Store
         -> Logger
         -> Manager
         -> m OAuthToken
getToken s l m = do
    x  <- liftIO (readMVar s)
    mx <- validateToken x
    case mx of
        Just t  -> pure t
        Nothing -> liftIO . modifyMVar s $ \y -> do
            my <- validateToken y
            case my of
                Just t  -> pure (y, t)
                Nothing ->
                    case y of
                        Exchange c -> do
                            t <- exchange c   l m
                            pure (Refresh c t, t)
                        Refresh c t -> do
                            t' <- refresh c t l m
                            pure (Refresh c t', t')
