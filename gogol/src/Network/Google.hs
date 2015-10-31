{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE FunctionalDependencies     #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE PolyKinds                  #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE UndecidableInstances       #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google
-- Copyright   : (c) 2015-2016 Brendan Hay
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
      Google      (..)
    , MonadGoogle (..)
    , runGoogle
    , runResourceT

    -- * Authentication and Environment
    , Env
    , HasEnv      (..)
    , newEnv

    -- ** Customized Environment
    , newEnvWith
    , getApplicationDefault

    -- * Sending Requests
    , send

    -- ** Media Downloads
    , download

    -- ** Media Uploads
    , upload

    , ToBody      (..)
    , RequestBody
    , sourceBody

    -- ** Service Configuration
    -- ** Overriding Defaults
    , configure
    , override

    -- *** Scoped Actions
    , reconfigure
    , timeout

    -- * Running Asynchronous Actions
    -- $async

    -- * Handling Errors
    , AsError     (..)
    , AsAuthError (..)

    , trying
    , catching

    -- * Logging
    -- $logging

    , Logger
    , LogLevel    (..)

    -- ** Constructing a Logger
    , newLogger

    -- * Constructing a HTTP Manager
    , newManager
    , tlsManagerSettings

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
import qualified Control.Monad.RWS.Lazy         as LRW
import qualified Control.Monad.RWS.Strict       as RW
import qualified Control.Monad.State.Lazy       as LS
import qualified Control.Monad.State.Strict     as S
import           Control.Monad.Trans.Control
import           Control.Monad.Trans.Except     (ExceptT)
import           Control.Monad.Trans.Identity   (IdentityT)
import           Control.Monad.Trans.List       (ListT)
import           Control.Monad.Trans.Maybe      (MaybeT)
import           Control.Monad.Trans.Resource
import qualified Control.Monad.Writer.Lazy      as LW
import qualified Control.Monad.Writer.Strict    as W
import           Network.Google.Auth
import           Network.Google.Env
import           Network.Google.Internal.Body
import           Network.Google.Internal.HTTP
import           Network.Google.Internal.Logger
import           Network.Google.Prelude
import           Network.Google.Types
import           Network.HTTP.Conduit           (newManager, tlsManagerSettings)

newtype Google s a = Google { unGoogle :: ReaderT (Env s) (ResourceT IO) a }
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
        , MonadReader (Env s)
        , MonadResource
        )

-- | Run a 'Google' actoin using the specified environment containing
-- credentials with sufficient authorization scopes.
runGoogle :: (MonadResource m, HasEnv s r) => r -> Google s a -> m a
runGoogle e m = liftResourceT $ runReaderT (unGoogle m) (e ^. environment)

-- | Monads in which 'Google' actions may be embedded.
class ( Allow       s
      , Functor     m
      , Applicative m
      , Monad       m
      , MonadIO     m
      , MonadCatch  m
      ) => MonadGoogle s m | m -> s where
    -- | Lift a computation to the 'Google' monad.
    liftGoogle :: Google s a -> m a

instance Allow s => MonadGoogle s (Google s) where
    liftGoogle = id

instance MonadBaseControl IO (Google s) where
    type StM (Google s) a = StM (ReaderT (Env s) (ResourceT IO)) a

    liftBaseWith f = Google . liftBaseWith $ \g -> f (g . unGoogle)
    restoreM       = Google . restoreM

instance MonadGoogle s m => MonadGoogle s (IdentityT m) where
    liftGoogle = lift . liftGoogle

instance MonadGoogle s m => MonadGoogle s (ListT m) where
    liftGoogle = lift . liftGoogle

instance MonadGoogle s m => MonadGoogle s (MaybeT m) where
    liftGoogle = lift . liftGoogle

instance MonadGoogle s m => MonadGoogle s (ExceptT e m) where
    liftGoogle = lift . liftGoogle

instance MonadGoogle s m => MonadGoogle s (ReaderT r m) where
    liftGoogle = lift . liftGoogle

instance MonadGoogle s m => MonadGoogle s (S.StateT s' m) where
    liftGoogle = lift . liftGoogle

instance MonadGoogle s m => MonadGoogle s (LS.StateT s' m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle s m) => MonadGoogle s (W.WriterT w m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle s m) => MonadGoogle s (LW.WriterT w m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle s m) => MonadGoogle s (RW.RWST r w s' m) where
    liftGoogle = lift . liftGoogle

instance (Monoid w, MonadGoogle s m) => MonadGoogle s (LRW.RWST r w s' m) where
    liftGoogle = lift . liftGoogle

-- | Send a request, returning the associated response if successful.
--
-- Throws 'Error'.
send :: (MonadGoogle s m, Authorize s a, GoogleRequest a) => a -> m (Rs a)
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
download :: ( MonadGoogle s m
            , Authorize   s (MediaDownload a)
            , GoogleRequest (MediaDownload a)
            )
         => a
         -> m (Rs (MediaDownload a))
download = send . MediaDownload

-- | Send a request with an attached multipart/related media upload.
--
-- Throws 'Error'.
upload :: ( MonadGoogle s m
          , Authorize   s (MediaUpload a)
          , GoogleRequest (MediaUpload a)
          )
       => a
       -> RequestBody
       -> m (Rs (MediaUpload a))
upload x = send . MediaUpload x

hoistError :: MonadThrow m => Either Error a -> m a
hoistError = either (throwingM _Error) return

{- $async
Requests can be sent asynchronously, but due to guarantees about resource closure
require the use of <http://hackage.haskell.org/package/lifted-async lifted-async>.
-}

{- $logging
The exposed logging interface is a primitive 'Logger' function which gets
threaded through service calls and serialisation routines. This allows the
library to output useful information and diagnostics.

The 'newLogger' function can be used to construct a simple logger which writes
output to a 'Handle', but in most production code you should probably consider
using a more robust logging library such as
<http://hackage.haskell.org/package/tiny-log tiny-log> or
<http://hackage.haskell.org/package/fast-logger fast-logger>.
-}
