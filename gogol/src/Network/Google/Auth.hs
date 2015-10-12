{-# LANGUAGE LambdaCase #-}

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

import           Control.Concurrent     (ThreadId)
import           Control.Monad.IO.Class
import           Data.IORef
import           Network.Google.Prelude

data Credentials
    = FromKey   AuthKey
    | FromToken OAuthToken
      deriving (Eq)

-- | The authorisation environment.
data AuthEnv = AuthEnv
    { _authCreds  :: Either AuthKey OAuthToken
    , _authExpiry :: Maybe UTCTime
    }

-- | An authorisation environment containing Google credentials, and potentially
-- a reference which can be refreshed out-of-band as credentials expire.
data Auth
    = Ref  ThreadId (IORef AuthEnv)
    | Auth AuthEnv

withAuth :: MonadIO m => Auth -> (AuthEnv -> m a) -> m a
withAuth (Ref _ r) f = liftIO (readIORef r) >>= f
withAuth (Auth  e) f = f e

-- | Retrieve authentication information via the specified 'Credentials' mechanism.
getAuth :: Monad m => Credentials -> m Auth
getAuth = \case
    FromKey   k -> pure $! Auth (AuthEnv (Left  k) Nothing)
    FromToken t -> pure $! Auth (AuthEnv (Right t) Nothing)
