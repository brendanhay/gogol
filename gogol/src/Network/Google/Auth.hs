{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE KindSignatures      #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}

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
    , saveAuthorizedUserToWellKnownPath
    , saveAuthorizedUser

    -- ** Service account user impersonation
    , serviceAccountUser

    -- ** Installed Application Credentials
    , installedApplication
    , formURL

    -- ** Authorizing Requests
    , authorize

    -- ** Thread-safe Storage
    , Store
    , initStore
    , retrieveAuthFromStore
    , retrieveTokenFromStore

    , Auth           (..)
    , authToAuthorizedUser
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
    , GSecret        (..)
    , ServiceId      (..)
    , ClientId       (..)

    -- * Re-exported Modules
    , module Network.Google.Auth.Scope
    ) where

import           Control.Concurrent
import           Control.Monad.Catch                      (MonadCatch)
import           Control.Monad.IO.Class                   (MonadIO (..))
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

-- | 'authToAuthorizedUser' converts 'Auth' into an 'AuthorizedUser'
--  by returning 'Right' if there is a 'FromClient'-constructed
--  Credentials and a refreshed token; otherwise, returning
--  'Left' with error message.
authToAuthorizedUser :: AllowScopes s => Auth s -> Either Text AuthorizedUser
authToAuthorizedUser a = AuthorizedUser
                   <$>  (_clientId <$> getClient)
                   <*>  maybe (Left "no refresh token") Right (_tokenRefresh (_token a))
                   <*>  (_clientSecret <$> getClient)
                        where getClient = case _credentials a of
                                            FromClient c _ -> Right c
                                            _ -> Left "not FromClient"

-- | An 'OAuthToken' that can potentially be expired, with the original
-- credentials that can be used to perform a refresh.
data Auth (s :: [Symbol]) = Auth
    { _credentials :: !(Credentials s)
    , _token       :: !(OAuthToken  s)
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
initStore :: (MonadIO m, MonadCatch m, AllowScopes s)
          => Credentials s
          -> Logger
          -> Manager
          -> m (Store s)
initStore c l m = exchange c l m >>= fmap Store . liftIO . newMVar

-- | Retrieve auth from storage
retrieveAuthFromStore
    :: (MonadIO m, AllowScopes s)
    => Store s
    -> m (Auth s)
retrieveAuthFromStore (Store s) =
    liftIO (readMVar s)

-- | Concurrently read the current token, and if expired, then
-- safely perform a single serial refresh.
retrieveTokenFromStore
    :: (MonadIO m, MonadCatch m, AllowScopes s)
    => Store s
    -> Logger
    -> Manager
    -> m (OAuthToken s)
retrieveTokenFromStore (Store s) l m = do
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
exchange :: forall m s. (MonadIO m, MonadCatch m, AllowScopes s)
         => Credentials s
         -> Logger
         -> Manager
         -> m (Auth s)
exchange c l = fmap (Auth c) . action l
  where
    action = case c of
        FromMetadata s   -> metadataToken       s
        FromAccount  a   -> serviceAccountToken a (Proxy :: Proxy s)
        FromClient   x n -> exchangeCode        x n
        FromUser     u   -> authorizedUserToken u Nothing

-- | Refresh an existing 'OAuthToken'.
refresh :: forall m s. (MonadIO m, MonadCatch m, AllowScopes s)
        => Auth s
        -> Logger
        -> Manager
        -> m (Auth s)
refresh (Auth c t) l = fmap (Auth c) . action l
  where
    action = case c of
        FromMetadata s   -> metadataToken       s
        FromAccount  a   -> serviceAccountToken a (Proxy :: Proxy s)
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
authorize rq s l m = bearer <$> retrieveTokenFromStore s l m
  where
    bearer t = rq
        { Client.requestHeaders =
            ( hAuthorization
            , "Bearer " <> toHeader (_tokenAccess t)
            ) : Client.requestHeaders rq
        }

-- | Set the user to be impersonated for a service account with domain
-- wide delegation. See
-- https://developers.google.com/identity/protocols/OAuth2ServiceAccount
serviceAccountUser :: forall s. (AllowScopes s)
                   => Maybe Text
                   -> Credentials s
                   -> Credentials s
serviceAccountUser u (FromAccount s) = FromAccount $ s { _serviceAccountUser = u }
serviceAccountUser _ c               = c
