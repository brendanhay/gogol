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

import           Control.Lens
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Control.Monad.Reader
import           Network.Google.Auth
import           Network.Google.Types
import           Network.HTTP.Conduit

-- | The environment containing the parameters required to make Google requests.
data Env = Env
    { _envTimeout :: !(Maybe Seconds)
    , _envManager :: !Manager
    , _envAuth    :: !Auth
    }

-- Note: The strictness annotations aobe are applied to ensure
-- total field initialisation.

class HasEnv a where
    environment :: Lens' a Env
    {-# MINIMAL environment #-}

    -- | TODO
    envTimeout  :: Lens' a (Maybe Seconds)

    -- | The 'Manager' used to create and manage open HTTP connections.
    envManager  :: Lens' a Manager

    -- | The credentials used to sign requests for authentication with Google.
    envAuth     :: Lens' a Auth

    envTimeout = environment . lens _envTimeout     (\s a -> s { _envTimeout     = a })
    envManager = environment . lens _envManager     (\s a -> s { _envManager     = a })
    envAuth    = environment . lens _envAuth        (\s a -> s { _envAuth        = a })

instance HasEnv Env where
    environment = id

-- | Scope an action such that any HTTP response will use this timeout value.
--
-- Default timeouts are chosen by considering:
--
-- * This 'timeout', if set.
--
-- * The related 'Service' timeout for the sent request if set. (Usually 70s)
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
newEnv c = liftIO (newManager tlsManagerSettings) >>= newEnvWith c

-- | /See:/ 'newEnv'
newEnvWith :: (MonadIO m, MonadCatch m) => Credentials -> Manager -> m Env
newEnvWith c m = Env Nothing m <$> getAuth c
