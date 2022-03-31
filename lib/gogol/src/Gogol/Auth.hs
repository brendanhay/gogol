{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Gogol.Auth
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Explicitly specify your Google credentials, or retrieve them
-- from the underlying OS.
module Gogol.Auth
  ( -- * Credentials
    Credentials (..),

    -- ** Application Default Credentials
    getApplicationDefault,
    fromWellKnownPath,
    fromFilePath,
    saveAuthorizedUserToWellKnownPath,
    saveAuthorizedUser,

    -- ** Service account user impersonation
    serviceAccountUser,

    -- *** Kubernetes
    serviceAccountTokenFile,

    -- ** Installed Application Credentials
    installedApplication,
    formURL,

    -- ** Authorizing Requests
    authorize,

    -- ** Thread-safe Storage
    Store,
    initStore,
    retrieveAuthFromStore,
    retrieveTokenFromStore,
    Auth (..),
    authToAuthorizedUser,
    exchange,
    refresh,

    -- ** Default Constants
    checkGCEVar,
    cloudSDKConfigDir,
    defaultCredentialsFile,

    -- ** Handling Errors
    AsAuthError (..),
    AuthError (..),

    -- * OAuth Types
    OAuthClient (..),
    OAuthToken (..),
    OAuthCode (..),
    OAuthScope (..),

    -- * Re-exported Types
    AccessToken (..),
    RefreshToken (..),
    GSecret (..),
    ServiceId (..),
    ClientId (..),

    -- * Re-exported Modules
    module Gogol.Auth.Scope,
  )
where

import Control.Concurrent
import Control.Monad.Catch (MonadCatch)
import Control.Monad.IO.Class (MonadIO (..))
import Data.Time (getCurrentTime)
import GHC.TypeLits (Symbol)
import Gogol.Auth.ApplicationDefault
import Gogol.Auth.InstalledApplication
import Gogol.Auth.Scope
import Gogol.Auth.ServiceAccount
import Gogol.Auth.TokenFile
import Gogol.Compute.Metadata (checkGCEVar)
import Gogol.Internal.Auth
import Gogol.Internal.Logger (Logger)
import Gogol.Prelude
import Network.HTTP.Conduit (Manager)
import qualified Network.HTTP.Conduit as Client
import Network.HTTP.Types (hAuthorization)

-- | 'authToAuthorizedUser' converts 'Auth' into an 'AuthorizedUser'
--  by returning 'Right' if there is a 'FromClient'-constructed
--  Credentials and a refreshed token; otherwise, returning
--  'Left' with error message.
authToAuthorizedUser :: KnownScopes s => Auth s -> Either Text AuthorizedUser
authToAuthorizedUser a =
  AuthorizedUser
    <$> (_clientId <$> getClient)
    <*> maybe (Left "no refresh token") Right (_tokenRefresh (_token a))
    <*> (_clientSecret <$> getClient)
  where
    getClient = case _credentials a of
      FromClient c _ -> Right c
      _ -> Left "not FromClient"

-- | An 'OAuthToken' that can potentially be expired, with the original
-- credentials that can be used to perform a refresh.
data Auth (s :: [Symbol]) = Auth
  { _credentials :: !(Credentials s),
    _token :: !(OAuthToken s)
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

-- | Data store which ensures thread-safe access of credentials.
newtype Store (s :: [Symbol]) = Store (MVar (Auth s))

-- | Construct storage containing the credentials which have not yet been
-- exchanged or refreshed.
initStore ::
  (MonadIO m, MonadCatch m, KnownScopes s) =>
  Credentials s ->
  Logger ->
  Manager ->
  m (Store s)
initStore c l m = exchange c l m >>= fmap Store . liftIO . newMVar

-- | Retrieve auth from storage
retrieveAuthFromStore ::
  (MonadIO m, KnownScopes s) =>
  Store s ->
  m (Auth s)
retrieveAuthFromStore (Store s) =
  liftIO (readMVar s)

-- | Concurrently read the current token, and if expired, then
-- safely perform a single serial refresh.
retrieveTokenFromStore ::
  (MonadIO m, MonadCatch m, KnownScopes s) =>
  Store s ->
  Logger ->
  Manager ->
  m (OAuthToken s)
retrieveTokenFromStore (Store s) l m = do
  x <- liftIO (readMVar s)
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
exchange ::
  forall m s.
  (MonadIO m, MonadCatch m, KnownScopes s) =>
  Credentials s ->
  Logger ->
  Manager ->
  m (Auth s)
exchange c l = fmap (Auth c) . action l
  where
    action = case c of
      FromMetadata s -> metadataToken s
      FromAccount a -> serviceAccountToken a (Proxy :: Proxy s)
      FromClient x n -> exchangeCode x n
      FromUser u -> authorizedUserToken u Nothing
      FromTokenFile f -> \_l _m -> readTokenFile f

-- | Refresh an existing 'OAuthToken'.
refresh ::
  forall m s.
  (MonadIO m, MonadCatch m, KnownScopes s) =>
  Auth s ->
  Logger ->
  Manager ->
  m (Auth s)
refresh (Auth c t) l = fmap (Auth c) . action l
  where
    action = case c of
      FromMetadata s -> metadataToken s
      FromAccount a -> serviceAccountToken a (Proxy :: Proxy s)
      FromClient x _ -> refreshToken x t
      FromUser u -> authorizedUserToken u (_tokenRefresh t)
      FromTokenFile f -> \_l _m -> readTokenFile f

-- | Apply the (by way of possible token refresh) a bearer token to the
-- authentication header of a request.
authorize ::
  (MonadIO m, MonadCatch m, KnownScopes s) =>
  Client.Request ->
  Store s ->
  Logger ->
  Manager ->
  m Client.Request
authorize rq s l m = bearer <$> retrieveTokenFromStore s l m
  where
    bearer t =
      rq
        { Client.requestHeaders =
            ( hAuthorization,
              "Bearer " <> toHeader (_tokenAccess t)
            ) :
            Client.requestHeaders rq
        }

-- | Set the user to be impersonated for a service account with domain
-- wide delegation. See
-- https://developers.google.com/identity/protocols/OAuth2ServiceAccount
serviceAccountUser ::
  forall s.
  (KnownScopes s) =>
  Maybe Text ->
  Credentials s ->
  Credentials s
serviceAccountUser u (FromAccount s) = FromAccount $ s {_serviceAccountUser = u}
serviceAccountUser _ c = c
