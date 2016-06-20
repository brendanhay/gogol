{-# LANGUAGE DataKinds              #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE KindSignatures         #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE ScopedTypeVariables    #-}

-- |
-- Module      : Network.Google.Env
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Environment and Google specific configuration for the "Network.Google" monad.
module Network.Google.Env where

import Control.Lens                   (Lens', lens, (<>~), (?~))
import Control.Monad.Catch            (MonadCatch)
import Control.Monad.IO.Class         (MonadIO (..))
import Control.Monad.Reader           (MonadReader (local))
import Data.Function                  (on)
import Data.Monoid                    (Dual (..), Endo (..))
import Data.Proxy                     (Proxy (..))
import GHC.TypeLits                   (Symbol)
import Network.Google.Auth
import Network.Google.Internal.Logger (Logger)
import Network.Google.Types
import Network.HTTP.Conduit           (Manager, newManager, tlsManagerSettings)

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

    -- | The authorised OAuth2 scopes.
    --
    -- /See:/ 'allow', '!', and the related scopes available for each service.
    envScopes   :: Lens' a (Proxy s)

    envOverride = environment . lens _envOverride (\s a -> s { _envOverride = a })
    envLogger   = environment . lens _envLogger   (\s a -> s { _envLogger   = a })
    envManager  = environment . lens _envManager  (\s a -> s { _envManager  = a })
    envStore    = environment . lens _envStore    (\s a -> s { _envStore    = a })
    envScopes   = environment . lens (\_ -> Proxy :: Proxy s) (flip allow)

instance HasEnv s (Env s) where
    environment = id

-- | Provide a function which will be added to the stack
-- of overrides, which are applied to all service configurations.
-- This provides a way to configure any request that is sent using the
-- modified 'Env'.
--
-- /See:/ 'override'.
configure :: HasEnv s a => (ServiceConfig -> ServiceConfig) -> a -> a
configure f = envOverride <>~ Dual (Endo f)

-- | Override a specific 'ServiceConfig'. All requests belonging to the
-- supplied service will use this configuration instead of the default.
--
-- Typically you would override a modified version of the default 'ServiceConfig'
-- for the desired service:
--
-- > override (gmailService & serviceHost .~ "localhost") env
--
-- Or when using "Network.Google" with "Control.Monad.Reader" or "Control.Lens.Zoom"
-- and the 'ServiceConfig' lenses:
--
-- > local (override (computeService & serviceHost .~ "localhost")) $ do
-- >    ...
--
-- /See:/ 'configure'.
override :: HasEnv s a => ServiceConfig -> a -> a
override s = configure f
  where
    f x | on (==) _svcId s x = s
        | otherwise          = x

-- | Scope an action such that any HTTP response will use this timeout value.
--
-- Default timeouts are chosen by considering:
--
-- * This 'timeout', if set.
--
-- * The related 'Service' timeout for the sent request if set. (Default 70s)
--
-- * The 'envManager' timeout, if set.
--
-- * The 'ClientRequest' timeout. (Default 30s)
timeout :: (MonadReader r m, HasEnv s r) => Seconds -> m a -> m a
timeout s = local (configure (serviceTimeout ?~ s))

-- | Creates a new environment with a newly initialized 'Manager', without logging.
-- and Credentials that are determined by calling 'getApplicationDefault'.
-- Use 'newEnvWith' to supply custom credentials such as an 'OAuthClient'
-- and 'OAuthCode'.
--
-- The 'Allow'ed 'OAuthScope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes. See the top-level module of each individual
-- @gogol-*@ library for a list of available scopes, such as
-- @Network.Google.Compute.authComputeScope@.
-- Lenses from 'HasEnv' can be used to further configure the resulting 'Env'.
--
-- /See:/ 'newEnvWith', 'getApplicationDefault'.
newEnv :: (MonadIO m, MonadCatch m, AllowScopes s) => m (Env s)
newEnv = do
    m <- liftIO (newManager tlsManagerSettings)
    c <- getApplicationDefault m
    newEnvWith c (\_ _ -> pure ()) m

-- | Create a new environment.
--
-- /See:/ 'newEnv'.
newEnvWith :: (MonadIO m, MonadCatch m, AllowScopes s)
           => Credentials s
           -> Logger
           -> Manager
           -> m (Env s)
newEnvWith c l m = Env mempty l m <$> initStore c l m
