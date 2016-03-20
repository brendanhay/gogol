{-# LANGUAGE DataKinds              #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE KindSignatures         #-}
{-# LANGUAGE MultiParamTypeClasses  #-}

-- |
-- Module      : Network.Google.Env
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Environment and Google specific configuration for the 'Network.Google' monad.
module Network.Google.Env where

import           Control.Lens                   (Lens', lens, (<>~), (?~))
import           Control.Monad.Catch            (MonadCatch)
import           Control.Monad.IO.Class         (MonadIO (..))
import           Control.Monad.Reader           (MonadReader (local))
import           Data.Function                  (on)
import           Data.Monoid                    (Dual (..), Endo (..))
import           GHC.TypeLits                   (Symbol)
import           Network.Google.Auth
import           Network.Google.Internal.Logger (Logger)
import           Network.Google.Types
import           Network.HTTP.Conduit

-- | The environment containing the parameters required to make Google requests.
data Env (s :: [Symbol]) = Env
    { _envOverride :: !(Dual (Endo ServiceConfig))
    , _envLogger   :: !Logger
    , _envManager  :: !Manager
    , _envStore    :: !(Store s)
    }

-- Note: The strictness annotations aobe are applied to ensure
-- total field initialisation.

class HasEnv s a | a -> s where
    environment :: Lens' a (Env s)
    {-# MINIMAL environment #-}

    -- | The currently applied overrides to all 'Service' configuration.
    envOverride :: Lens' a (Dual (Endo ServiceConfig))

    -- | The function used to output log messages.
    envLogger   :: Lens' a Logger

    -- | The 'Manager' used to create and manage open HTTP connections.
    envManager  :: Lens' a Manager

    -- | The credential store used to sign requests for authentication with Google.
    envStore    :: Lens' a (Store s)

    envOverride = environment . lens _envOverride (\s a -> s { _envOverride = a })
    envLogger   = environment . lens _envLogger   (\s a -> s { _envLogger   = a })
    envManager  = environment . lens _envManager  (\s a -> s { _envManager  = a })
    envStore    = environment . lens _envStore    (\s a -> s { _envStore    = a })

instance HasEnv s (Env s) where
    environment = id

-- | Provide a function which will be added to the existing stack
-- of overrides applied to all service configuration.
--
-- To override a specific service, it's suggested you use
-- either 'configure' or 'reconfigure' with a modified version of the default
-- service, such as @Network.Google.Gmail.gmailService@.
override :: HasEnv s a => (ServiceConfig -> ServiceConfig) -> a -> a
override f = envOverride <>~ Dual (Endo f)

-- | Configure a specific service. All requests belonging to the
-- supplied service will use this configuration instead of the default.
--
-- It's suggested you use a modified version of the default service, such
-- as @Network.Google.Gmail.gmailService@.
--
-- /See:/ 'reconfigure'.
configure :: HasEnv s a => ServiceConfig -> a -> a
configure s = override f
  where
    f x | on (==) _svcId s x = s
        | otherwise          = x

-- | Scope an action such that all requests belonging to the supplied service
-- will use this configuration instead of the default.
--
-- It's suggested you use a modified version of the default service, such
-- as @Network.Google.Gmail.gmailService@.
--
-- /See:/ 'configure'.
reconfigure :: (MonadReader r m, HasEnv s r) => ServiceConfig -> m a -> m a
reconfigure = local . configure

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
timeout :: (MonadReader r m, HasEnv s r) => Seconds -> m a -> m a
timeout s = local (override (serviceTimeout ?~ s))

-- | Creates a new environment with a new 'Manager', without logging.
-- Credentials are determined by calling 'getApplicationDefault'.
-- Use 'newEnvWith' to supply custom credentials such as an 'OAuthClient'
-- and 'OAuthCode'.
--
-- The 'Allow'ed 'OAuthScope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes. See the top-level module of each individual
-- @gogol-*@ library for a list of available scopes, such as
-- @Network.Google.Compute.authComputeScope@.
--
-- Lenses from 'HasEnv' can be used to further configure the resulting 'Env'.
--
-- /See:/ 'newEnvWith', 'getApplicationDefault'.
newEnv :: (MonadIO m, MonadCatch m, AllowScopes s) => m (Env s)
newEnv = do
    m <- liftIO (newManager tlsManagerSettings)
    c <- getApplicationDefault m
    newEnvWith c (\_ _ -> pure ()) m

-- /See:/ 'newEnv'.
newEnvWith :: (MonadIO m, MonadCatch m, AllowScopes s)
           => Credentials s
           -> Logger
           -> Manager
           -> m (Env s)
newEnvWith c l m = Env mempty l m <$> initStore c l m
