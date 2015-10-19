{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE UndecidableInstances       #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- This module provides a simple 'AWS' monad and a set of operations which
-- can be performed against remote Google Service APIs, for use with the types
-- supplied by the various @gogol-*@ libraries.
--
-- A 'MonadGoogle' typeclass is used as a function constraint to provide automatic
-- lifting of functions when embedding 'Google' as a layer inside your own
-- application stack.
module Network.Google
    (
    -- * Running Google Actions
      Google
    , MonadGoogle (..)
    , runGoogle
    , runResourceT

    -- * Authentication and Environment
    , newEnv
    , Env
    , HasEnv      (..)

    -- ** Credential Discovery
    , Credentials (..)

    -- * Sending Requests
    , send

    -- ** Media Downloads
    , download

    -- ** Service Configuration
    -- ** Overriding Defaults
    , configure
    , override

    -- *** Scoped Actions
    , reconfigure
    , timeout

    -- ** Media Uploads
    , Body
    , ToBody      (..)

    -- * Running Asynchronous Actions
    -- $async

    -- * Handling Errors
    , AsError     (..)
    , AsAuthError (..)

    , trying
    , catching

    -- * Re-exported Types
    , Proxy       (..)
    , OctetStream
    , PlainText
    , JSON
    , module Network.Google.Types
    ) where

import           Control.Applicative
import           Control.Exception.Lens
import           Control.Monad
import           Control.Monad.Base
import           Control.Monad.Catch
import           Control.Monad.Reader
import qualified Control.Monad.RWS.Lazy       as LRW
import qualified Control.Monad.RWS.Strict     as RW
import qualified Control.Monad.State.Lazy     as LS
import qualified Control.Monad.State.Strict   as S
import           Control.Monad.Trans.Control
import           Control.Monad.Trans.Except   (ExceptT)
import           Control.Monad.Trans.Identity (IdentityT)
import           Control.Monad.Trans.List     (ListT)
import           Control.Monad.Trans.Maybe    (MaybeT)
import           Control.Monad.Trans.Resource
import qualified Control.Monad.Writer.Lazy    as LW
import qualified Control.Monad.Writer.Strict  as W
import           Network.Google.Auth
import           Network.Google.Env
import           Network.Google.Internal.HTTP
import           Network.Google.Prelude
import           Network.Google.Types

newtype Google a = Google { unGoogle :: ReaderT Env (ResourceT IO) a }
    deriving
        ( Functor
        , Applicative
        , Alternative
        , Monad
        , MonadPlus
        , MonadIO
        , MonadThrow
        , MonadCatch
        , MonadMask
        , MonadBase IO
        , MonadReader Env
        , MonadResource
        )

instance MonadBaseControl IO Google where
    type StM Google a = StM (ReaderT Env (ResourceT IO)) a

    liftBaseWith f = Google . liftBaseWith $ \g -> f (g . unGoogle)
    restoreM       = Google . restoreM

-- | Monads in which 'Google' actions may be embedded.
class ( Functor     m
      , Applicative m
      , Monad       m
      , MonadIO     m
      , MonadCatch  m
      ) => MonadGoogle m where
    -- | Lift a computation to the 'Google' monad.
    liftGoogle :: Google a -> m a

instance MonadGoogle Google where
    liftGoogle = id

instance MonadGoogle m => MonadGoogle (IdentityT   m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (ListT       m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (MaybeT      m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (ExceptT   e m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (ReaderT   r m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (S.StateT  s m) where liftGoogle = lift . liftGoogle
instance MonadGoogle m => MonadGoogle (LS.StateT s m) where liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (W.WriterT w m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (LW.WriterT w m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (RW.RWST r w s m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle m) => MonadGoogle (LRW.RWST r w s m) where
    liftGoogle = lift . liftGoogle

-- | Run a 'Google' aciton using the specified environment.
runGoogle :: (MonadResource m, HasEnv r) => r -> Google a -> m a
runGoogle e m = liftResourceT $ runReaderT (unGoogle m) (e ^. environment)

-- | Send a request, returning the associated response if successful.
--
-- Throws 'Error'.
send :: (MonadGoogle m, GoogleRequest a) => a -> m (Rs a)
send x = liftGoogle $ do
    e <- ask
    r <- perform e x
    hoistError r

-- | Send a request returning the associated streaming media response if successful.
--
-- Some request data types have two possible responses, the JSON metadata and
-- a streaming media response. Use 'send' to retrieve the metadata and 'download'
-- to retrieve the streaming media.
--
-- Throws 'Error'.
download :: (MonadGoogle m, GoogleRequest (MediaDownload a))
         => a
         -> m (Rs (MediaDownload a))
download = send . MediaDownload

hoistError :: MonadThrow m => Either Error a -> m a
hoistError = either (throwingM _Error) return

{- $async
Requests can be sent asynchronously, but due to guarantees about resource closure
require the use of <http://hackage.haskell.org/package/lifted-async lifted-async>.
-}
