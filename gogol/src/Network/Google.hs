{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE RankNTypes                  #-}
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
-- This module provides a 'Google' monad and common set of operations which
-- can be performed against the remote Google Service APIs. Typically you will
-- import this module along with modules from various @gogol-*@ libraries
-- for the services you wish to communicate with.
module Network.Google
    (
    -- * Usage
    -- $usage

    -- * The Google Monad
      Google      (..)
    , MonadGoogle (..)
    , runGoogle
    , runResourceT

    -- * Environment
    , Env
    , HasEnv      (..)

    , newEnv
    , newEnvWith

    -- ** Credentials
    -- $credentials

    , getApplicationDefault

    -- ** Authorization
    -- $authorization

    , (!)
    , allow

    , AllowScopes
    , type HasScope

    -- * Sending Requests
    , send

    -- ** Streaming Media
    , download
    , upload

    , Body        (..)
    , bodyContentType

    , sourceBody
    , getMIMEType

    -- * Service Configuration
    -- $configuration

    -- ** Overriding Defaults
    , configure
    , override
    , timeout

    -- ** Lenses
    , serviceHost
    , servicePort
    , servicePath
    , serviceSecure
    , serviceTimeout

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

    -- * Running Asynchronous Actions
    -- $async

    -- * Compute Metadata
    -- $metadata

    -- * Re-exported Types
    , module Network.Google.Types
    ) where

import Control.Applicative
import Control.Exception.Lens
import Control.Monad
import Control.Monad.Catch
import Control.Monad.IO.Unlift      (MonadUnliftIO (withRunInIO))
import Control.Monad.Reader
import Control.Monad.Trans.Except   (ExceptT)
import Control.Monad.Trans.Identity (IdentityT)
import Control.Monad.Trans.List     (ListT)
import Control.Monad.Trans.Maybe    (MaybeT)
import Control.Monad.Trans.Resource

import Network.Google.Auth
import Network.Google.Env
import Network.Google.Internal.Body
import Network.Google.Internal.HTTP
import Network.Google.Internal.Logger
import Network.Google.Prelude
import Network.Google.Types
import Network.HTTP.Conduit           (newManager, tlsManagerSettings)

import qualified Control.Monad.Writer.Lazy   as LW
import qualified Control.Monad.Writer.Strict as W
import qualified Control.Monad.RWS.Lazy      as LRW
import qualified Control.Monad.RWS.Strict    as RW
import qualified Control.Monad.State.Lazy    as LS
import qualified Control.Monad.State.Strict  as S

-- | The 'Google' monad containing configuration environment and tracks
-- resource allocation via 'ResourceT'.
-- The functions in "Network.Google" are generalised
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
        , MonadReader (Env s)
        , MonadResource
        )

-- | Run a 'Google' action using the specified environment and
-- credentials annotated with sufficient authorization scopes.
runGoogle :: (MonadResource m, HasEnv s r) => r -> Google s a -> m a
runGoogle e m = liftResourceT $ runReaderT (unGoogle m) (e ^. environment)

-- | Monads in which 'Google' actions may be embedded.
--
-- The functions in "Network.Google" have 'MonadGoogle' constraints to provide
-- automatic lifting when embedding 'Google' as a layer inside your own
-- application stack.
class ( Functor     m
      , Applicative m
      , Monad       m
      , MonadIO     m
      , MonadCatch  m
      , AllowScopes s
      ) => MonadGoogle s m | m -> s where
    -- | Lift a computation to the 'Google' monad.
    liftGoogle :: Google s a -> m a

instance AllowScopes s => MonadGoogle s (Google s) where
    liftGoogle = id

instance MonadUnliftIO (Google s) where
    withRunInIO inner =
        Google $ withRunInIO $ \run ->
            inner (run . unGoogle)
    {-# INLINE withRunInIO #-}

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
send :: (MonadGoogle s m, HasScope s a, GoogleRequest a) => a -> m (Rs a)
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
-- Equivalent to:
--
-- @
-- 'send' . 'MediaDownload'
-- @
--
-- Throws 'Error'.
download :: ( MonadGoogle s m
            , HasScope    s (MediaDownload a)
            , GoogleRequest (MediaDownload a)
            )
         => a
         -> m (Rs (MediaDownload a))
download = send . MediaDownload

-- | Send a request with an attached <https://tools.ietf.org/html/rfc2387 multipart/related media> upload.
--
-- Equivalent to:
--
-- @
-- 'send' . 'MediaUpload'
-- @
--
-- Throws 'Error'.
upload :: ( MonadGoogle s m
          , HasScope    s (MediaUpload a)
          , GoogleRequest (MediaUpload a)
          )
       => a
       -> Body
       -> m (Rs (MediaUpload a))
upload x = send . MediaUpload x

hoistError :: MonadThrow m => Either Error a -> m a
hoistError = either (throwingM _Error) return

{- $usage

The request and response types provided by the various @gogol-*@ libraries can
be used with either 'send', 'upload', or 'download', depending upon the
request's purpose. Namely, 'send' is the function you will most commonly use to
send requests, with 'upload' and 'download' as convenience when dealing with
streaming requests and responses respectively.

To get started we will need to specify our Google Service credentials and
create an 'Env' environment containing configuration which will be used by
'runGoogle' to perform any actions. Your Google 'Credentials' can be supplied
in a number of ways, by having Gogol retrieve
<https://developers.google.com/identity/protocols/application-default-credentials Application Default Credentials>
for use on Google App Engine and Google Compute Engine, or by explicitly
supplying your credentials. See the <#credentials Credentials> section for
information about supported credential mechanisms.

The following example demonstrates uploading a file to Google
<https://cloud.google.com/storage/ Cloud Storage> using 'ObjectsInsert' from
<http://hackage.haskell.org/package/gogol-storage gogol-storage>:

> import Control.Lens           ((&), (.~), (<&>), (?~))
> import Data.Text              (Text)
> import Network.Google
> import Network.Google.Storage
> import System.IO              (stdout)
>
> import qualified Data.Text as Text
>
> example :: IO Object
> example = do
>     lgr  <- newLogger Debug stdout                                               -- (1)
>     env  <- newEnv <&> (envLogger .~ lgr) . (envScopes .~ storageReadWriteScope) -- (2) (3)
>     body <- sourceBody "/path/to/image.jpg"                                      -- (4)
>
>     let key = "image.jpg"
>         bkt = "my-storage-bucket"
>
>     runResourceT . runGoogle env $                                               -- (5)
>         upload (objectsInsert bkt object' & oiName ?~ key) body

Breaking down the above example, we have the following points of interest:

1. A new 'Logger' to replace the default noop logger is created, set to print
   debug information and errors to 'stdout'.

2. The 'Env' is created using 'newEnv'. This creates a new HTTP 'Manager' and
   retrieves the application default 'Credentials'.

3. The lenses 'envLogger' and 'envScopes' are used to set the newly created
   'Logger' and authorised OAuth2 scopes, respectively. Explicitly annotating the
   'Env' with the scopes ensures that any mismatch between the remote
   operations performed in 'runGoogle' and the credential scopes are raised as
   errors at compile time.
   See the <#authorization Authorization> section for more information.

4. The streaming 'body' for the object is retrieved from a 'FilePath', and the
   MIME type is calculated from the file extension.
   The MIME type is used as the object's @Content-Type@ in Cloud Storage, and
   can be overriden using the 'bodyContentType' lens as follows:

    > import Network.HTTP.Media ((//))
    >
    > body <- sourceBody f <&> bodyContentType .~ "application" // "json"

5. Finally, we run the 'Google' computation using @'runResourceT' . 'runGoogle'@
   which serialises the 'ObjectsInsert' type to a HTTP request and sets the streaming 'Body'.
   The resulting 'Object' metadata is then parsed from a successful HTTP response.
1
Additional examples can be found can be found in the
<https://github.com/brendanhay/gogol/tree/develop/examples Gogol> project's
source control.

-}

{- $authorization #authorization#
Each request within a particular 'runGoogle' context requires specific
OAuth2 scopes to be have been authorized for the given credentials.

For example, the Google Storage 'ObjectsInsert' has the associated scopes of:

> type Scopes ObjectsInsert =
>      '["https://www.googleapis.com/auth/cloud-platform",
>        "https://www.googleapis.com/auth/devstorage.full_control",
>        "https://www.googleapis.com/auth/devstorage.read_write"]

Multiple differing requests within a given 'runGoogle' context will then require
the credentials to have a minimal set of these associated request scopes.
This authorization information is represented as a type-level set,
the 's' type parameter of 'Google' and 'MonadGoogle'. A mismatch
of the sent request scopes and the 'Env' credential scopes results in a informative
compile error.

You can use 'allow' or the 'envScopes' lens to specify the 'Env's set of scopes.
The various @gogol-*@ libraries export their individual scopes from @Network.Google.*"
and you can use the '(!)' combinator to combine these into a larger set.

For example:

> import Control.Lens ((<&>), (.~))
> import Network.Google
> import Network.Google.Monitoring
>
> main :: IO ()
> main = do
>     env <- newEnv <&> envScopes .~ (monitoringReadScope ! monitoringWriteScope ! computeReadOnlyScope)
>     ...

>>> :type env
Env '["https://www.googleapis.com/auth/monitoring.read", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/compute.readonly"]

-}

{- $configuration
Each service has its own configuration such as host, port, path prefix, and timeout
which can be customized independent of other services.
It can be desirable to customize this when mocking service endpoints or adjusting
HTTP response timeouts for a specific request.

For example, to point all calls to Google Compute to @https://localhost@ instead
of the actual remote endpoint, we can use @Control.Monad.Reader.local@ in conjunction
with 'override':

> import Control.Lens ((&), (.~))
> import Control.Monad.Reader (local)
> import Network.Google
> import Network.Google.Compute
>
> local (override (computeService & serviceHost .~ "localhost")) $ do
>    _ <- send $ instancesGet "project" "zone" "instance-id"
>    ...

-}

{- $credentials #credentials#
By default 'newEnv' uses 'getApplicationDefault' to discover credentials
from the underlying, following Google's official library behaviour.
If you wish to manually specify 'Credentials' via 'newEnvWith', you can use one
of the following supported credential mechanisms:

* "Network.Google.Auth.InstalledApplication" - Applications installed on devices.
* "Network.Google.Auth.ServiceAccount" - Applications deployed to custom environments.
* "Network.Google.Auth.ApplicationDefault" - Applications deployed to App Engine (GAE) or Compute Engine (GCE).

See "Network.Google.Auth" for more information.
-}

{- $async
Requests can be sent asynchronously, but due to guarantees about resource closure
require the use of <http://hackage.haskell.org/package/lifted-async lifted-async>.
-}

{- $metadata

Google Compute metadata can be retrieve when running on GCE instances.
See the documentation in "Network.Google.Compute.Metadata" for the available
functions.
-}

{- $logging
The exposed logging interface is a primitive 'Logger' function which gets
threaded through service calls and serialisation routines. This allows the
consuming library to output useful information and diagnostics.

The 'newLogger' function can be used to construct a simple logger which writes
output to a 'Handle', but in most production code you should probably consider
using a more robust logging library such as
<http://hackage.haskell.org/package/tinylog tinylog> or
<http://hackage.haskell.org/package/fast-logger fast-logger>.
-}
