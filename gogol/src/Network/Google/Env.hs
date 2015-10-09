-- |
-- Module      : Network.Google.Env
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Environment and Google specific configuration for the 'Network.Google' monad.
module Network.Google.Env where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Control.Monad.Reader
import           Control.Retry
import           Data.Monoid
import           Network.Google.Auth
import           Network.Google.Internal.Types
import           Network.Google.Types
import           Network.HTTP.Conduit

-- | The environment containing the parameters required to make Google requests.
data Env = Env
    { _envRetryCheck  :: !(Int -> HttpException -> Bool)
    , _envRetryPolicy :: !RetryPolicy
    , _envTimeout     :: !(Maybe Seconds)
    , _envManager     :: !Manager
    , _envAuth        :: !Auth
    }

-- Note: The strictness annotations aobe are applied to ensure
-- total field initialisation.

class HasEnv a where
    environment    :: Lens' a Env
    {-# MINIMAL environment #-}

    -- | The function used to determine if an 'HttpException' should be retried.
    envRetryCheck  :: Lens' a (Int -> HttpException -> Bool)

    -- | TODO
    envRetryPolicy :: Lens' a RetryPolicy

    -- | TODO
    envTimeout     :: Lens' a (Maybe Seconds)

    -- | The 'Manager' used to create and manage open HTTP connections.
    envManager     :: Lens' a Manager

    -- | The credentials used to sign requests for authentication with Google.
    envAuth        :: Lens' a Auth

    envRetryCheck  = environment . lens _envRetryCheck  (\s a -> s { _envRetryCheck  = a })
    envRetryPolicy = environment . lens _envRetryPolicy (\s a -> s { _envRetryPolicy = a })
    envTimeout     = environment . lens _envTimeout     (\s a -> s { _envTimeout     = a })
    envManager     = environment . lens _envManager     (\s a -> s { _envManager     = a })
    envAuth        = environment . lens _envAuth        (\s a -> s { _envAuth        = a })

instance HasEnv Env where
    environment = id

-- | Scope an action such that any retry logic for the 'Env' is
-- ignored and any requests will at most be sent once.
once :: (MonadReader r m, HasEnv r) => m a -> m a
once = policy (limitRetries 0)

-- | TODO
policy :: (MonadReader r m, HasEnv r) => RetryPolicy -> m a -> m a
policy r = local (envRetryPolicy <>~ r)

-- | Scope an action such that any HTTP response will use this timeout value.
--
-- Default timeouts are chosen by considering:
--
-- * This 'timeout', if set.
--
-- * The 'envManager' timeout if set.
--
-- * The default 'ClientRequest' timeout. (Approximately 30s)
timeout :: (MonadReader r m, HasEnv r) => Seconds -> m a -> m a
timeout s = local (envTimeout ?~ s)

-- | Creates a new environment with a new 'Manager' without debug logging
-- and uses 'getAuth' to expand/discover the supplied 'Credentials'.
-- Lenses from 'HasEnv' can be used to further configure the resulting 'Env'.
--
-- /See:/ 'newEnvWith'.
newEnv :: (MonadIO m, MonadCatch m) => Credentials -> m Env
newEnv c = liftIO (newManager conduitManagerSettings) >>= newEnvWith c

-- | /See:/ 'newEnv'
newEnvWith :: (MonadIO m, MonadCatch m) => Credentials -> Manager -> m Env
newEnvWith c m = Env check mempty Nothing m <$> getAuth c
  where
    check _ _ = True
