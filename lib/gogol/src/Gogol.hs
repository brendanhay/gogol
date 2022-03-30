{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Gogol
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- This module provides a common set of operations which can be performed against
-- the remote Google Service APIs. Typically you will import this module qualified
-- along with modules from the various @gogol-*@ libraries for services you wish
-- to communicate with.
module Gogol
  ( -- * Usage
    -- $usage

    -- * Environment
    Env,
    HasEnv (..),
    newEnv,
    newEnvWith,

    -- ** Credentials
    -- $credentials
    getApplicationDefault,

    -- ** Authorization
    -- $authorization
    (!),
    allow,
    type HasScope,
    type HasAnyScope,
    AllowScopes (..),

    -- * Sending Requests
    send,
    sendEither,

    -- ** Streaming Media
    download,
    downloadEither,
    upload,
    uploadEither,
    GBody (..),
    bodyContentType,
    sourceBody,
    getMIMEType,

    -- * Service Configuration
    -- $configuration

    -- ** Overriding Defaults
    configure,
    override,
    timeout,

    -- ** Lenses
    serviceHost,
    servicePort,
    servicePath,
    serviceSecure,
    serviceTimeout,

    -- * Handling Errors
    AsError (..),
    AsAuthError (..),
    trying,
    catching,

    -- * Logging
    -- $logging
    Logger,
    LogLevel (..),

    -- ** Constructing a Logger
    newLogger,

    -- * Constructing a HTTP Manager
    newManager,
    tlsManagerSettings,

    -- * Running Asynchronous Actions
    -- $async

    -- * Compute Metadata
    -- $metadata

    -- * Re-exported Types
    module Gogol.Types,
  )
where

import Control.Exception.Lens
import Control.Monad
import Control.Monad.IO.Class (MonadIO (..))
import Control.Monad.Trans.Resource
import Gogol.Auth
import Gogol.Env
import Gogol.Internal.Body
import Gogol.Internal.HTTP
import Gogol.Internal.Logger
import Gogol.Prelude
import Gogol.Types
import Network.HTTP.Conduit (newManager, tlsManagerSettings)

sendEither ::
  ( MonadResource m,
    HasScope scopes a,
    GoogleRequest a
  ) =>
  Env scopes ->
  a ->
  m (Either Error (Rs a))
sendEither =
  perform

-- | Send a request, returning the associated response if successful.
--
-- Throws 'Gogol.Types.Error'.
send ::
  ( MonadResource m,
    HasScope scopes a,
    GoogleRequest a
  ) =>
  Env scopes ->
  a ->
  m (Rs a)
send env =
  sendEither env
    >=> hoistEither

downloadEither ::
  ( MonadResource m,
    HasScope scopes (MediaDownload a),
    GoogleRequest (MediaDownload a)
  ) =>
  Env scopes ->
  a ->
  m (Either Error (Rs (MediaDownload a)))
downloadEither env =
  sendEither env
    . MediaDownload

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
-- Throws 'Gogol.Types.Error'.
download ::
  ( MonadResource m,
    HasScope scopes (MediaDownload a),
    GoogleRequest (MediaDownload a)
  ) =>
  Env scopes ->
  a ->
  m (Rs (MediaDownload a))
download env =
  downloadEither env
    >=> hoistEither

uploadEither ::
  ( MonadResource m,
    HasScope scopes (MediaUpload a),
    GoogleRequest (MediaUpload a)
  ) =>
  Env scopes ->
  a ->
  GBody ->
  m (Either Error (Rs (MediaUpload a)))
uploadEither env x =
  sendEither env
    . MediaUpload x

-- | Send a request with an attached <https://tools.ietf.org/html/rfc2387 multipart/related media> upload.
--
-- Equivalent to:
--
-- @
-- 'send' . 'MediaUpload'
-- @
--
-- Throws 'Gogol.Types.Error'.
upload ::
  ( MonadResource m,
    HasScope scopes (MediaUpload a),
    GoogleRequest (MediaUpload a)
  ) =>
  Env scopes ->
  a ->
  GBody ->
  m (Rs (MediaUpload a))
upload env x =
  uploadEither env x
    >=> hoistEither

hoistEither :: MonadIO m => Either Error a -> m a
hoistEither = either (liftIO . throwingM _Error) pure

-- $usage
--
-- The request and response types provided by the various @gogol-*@ libraries can
-- be used with either 'send', 'upload', or 'download', depending upon the
-- request's purpose. Namely, 'send' is the function you will most commonly use to
-- send requests, with 'upload' and 'download' as convenience when dealing with
-- streaming requests and responses respectively.
--
-- To get started we will need to specify our Google Service credentials and
-- create an 'Env' environment containing configuration which will be used by
-- 'runGoogle' to perform any actions. Your Google 'Credentials' can be supplied
-- in a number of ways, by having Gogol retrieve
-- <https://developers.google.com/identity/protocols/application-default-credentials Application Default Credentials>
-- for use on Google App Engine and Google Compute Engine, or by explicitly
-- supplying your credentials. See the <#credentials Credentials> section for
-- information about supported credential mechanisms.
--
-- The following example demonstrates uploading a file to Google
-- <https://cloud.google.com/storage/ Cloud Storage> using 'ObjectsInsert' from
-- <http://hackage.haskell.org/package/gogol-storage gogol-storage>:
--
-- > import Control.Lens           ((&), (.~), (<&>), (?~))
-- > import Data.Text              (Text)
-- > import Gogol
-- > import Gogol.Storage
-- > import System.IO              (stdout)
-- >
-- > import qualified Data.Text as Text
-- >
-- > example :: IO Object
-- > example = do
-- >     lgr  <- newLogger Debug stdout                                               -- (1)
-- >     env  <- newEnv <&> (envLogger .~ lgr) . (envScopes .~ storageReadWriteScope) -- (2) (3)
-- >     body <- sourceBody "/path/to/image.jpg"                                      -- (4)
-- >
-- >     let key = "image.jpg"
-- >         bkt = "my-storage-bucket"
-- >
-- >     runResourceT . runGoogle env $                                               -- (5)
-- >         upload (objectsInsert bkt object' & oiName ?~ key) body
--
-- Breaking down the above example, we have the following points of interest:
--
-- 1. A new 'Logger' to replace the default noop logger is created, set to print
--    debug information and errors to 'stdout'.
--
-- 2. The 'Env' is created using 'newEnv'. This creates a new HTTP 'Manager' and
--    retrieves the application default 'Credentials'.
--
-- 3. The lenses 'envLogger' and 'envScopes' are used to set the newly created
--    'Logger' and authorised OAuth2 scopes, respectively. Explicitly annotating the
--    'Env' with the scopes ensures that any mismatch between the remote
--    operations performed in 'runGoogle' and the credential scopes are raised as
--    errors at compile time.
--    See the <#authorization Authorization> section for more information.
--
-- 4. The streaming 'body' for the object is retrieved from a 'FilePath', and the
--    MIME type is calculated from the file extension.
--    The MIME type is used as the object's @Content-Type@ in Cloud Storage, and
--    can be overriden using the 'bodyContentType' lens as follows:
--
--     > import Network.HTTP.Media ((//))
--     >
--     > body <- sourceBody f <&> bodyContentType .~ "application" // "json"
--
-- 5. Finally, we run the 'Google' computation using @'runResourceT' . 'runGoogle'@
--    which serialises the 'ObjectsInsert' type to a HTTP request and sets the streaming 'Body'.
--    The resulting 'Object' metadata is then parsed from a successful HTTP response.
-- 1
-- Additional examples can be found can be found in the
-- <https://github.com/brendanhay/gogol/tree/develop/examples Gogol> project's
-- source control.

-- $authorization #authorization#
-- Each request within a particular 'runGoogle' context requires specific
-- OAuth2 scopes to be have been authorized for the given credentials.
--
-- For example, the Google Storage 'ObjectsInsert' has the associated scopes of:
--
-- > type Scopes ObjectsInsert =
-- >      '["https://www.googleapis.com/auth/cloud-platform",
-- >        "https://www.googleapis.com/auth/devstorage.full_control",
-- >        "https://www.googleapis.com/auth/devstorage.read_write"]
--
-- Multiple differing requests within a given 'runGoogle' context will then require
-- the credentials to have a minimal set of these associated request scopes.
-- This authorization information is represented as a type-level set,
-- the 's' type parameter of 'Env'. A mismatch of the sent request scopes and the 'Env' credential scopes results in a informative
-- compile error.
--
-- You can use 'allow' or the 'envScopes' lens to specify the 'Env's set of scopes.
-- The various @gogol-*@ libraries export their individual scopes from @Gogol.*"
-- and you can use the '(!)' combinator to combine these into a larger set.
--
-- For example:
--
-- > import Control.Lens ((<&>), (.~))
-- > import Gogol
-- > import Gogol.Monitoring
-- >
-- > main :: IO ()
-- > main = do
-- >     env <- newEnv <&> envScopes .~ (monitoringReadScope ! monitoringWriteScope ! computeReadOnlyScope)
-- >     ...
--
-- >>> :type env
-- Env '["https://www.googleapis.com/auth/monitoring.read", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/compute.readonly"]

-- $configuration
-- Each service has its own configuration such as host, port, path prefix, and timeout
-- which can be customized independent of other services.
-- It can be desirable to customize this when mocking service endpoints or adjusting
-- HTTP response timeouts for a specific request.
--
-- For example, to point all calls to Google Compute to @https://localhost@ instead
-- of the actual remote endpoint, we can use @Control.Monad.Reader.local@ in conjunction
-- with 'override':
--
-- > import Control.Lens ((&), (.~))
-- > import Control.Monad.Reader (local)
-- > import Gogol
-- > import Gogol.Compute
-- >
-- > local (override (computeService & serviceHost .~ "localhost")) $ do
-- >    _ <- send $ instancesGet "project" "zone" "instance-id"
-- >    ...

-- $credentials #credentials#
-- By default 'newEnv' uses 'getApplicationDefault' to discover credentials
-- from the underlying, following Google's official library behaviour.
-- If you wish to manually specify 'Credentials' via 'newEnvWith', you can use one
-- of the following supported credential mechanisms:
--
-- * "Gogol.Auth.InstalledApplication" - Applications installed on devices.
-- * "Gogol.Auth.ServiceAccount" - Applications deployed to custom environments.
-- * "Gogol.Auth.ApplicationDefault" - Applications deployed to App Engine (GAE) or Compute Engine (GCE).
--
-- See "Gogol.Auth" for more information.

-- $async
-- Requests can be sent asynchronously, but due to guarantees about resource closure
-- require the use of <http://hackage.haskell.org/package/lifted-async lifted-async>.

-- $metadata
--
-- Google Compute metadata can be retrieve when running on GCE instances.
-- See the documentation in "Gogol.Compute.Metadata" for the available
-- functions.

-- $logging
-- The exposed logging interface is a primitive 'Logger' function which gets
-- threaded through service calls and serialisation routines. This allows the
-- consuming library to output useful information and diagnostics.
--
-- The 'newLogger' function can be used to construct a simple logger which writes
-- output to a 'Handle', but in most production code you should probably consider
-- using a more robust logging library such as
-- <http://hackage.haskell.org/package/tinylog tinylog> or
-- <http://hackage.haskell.org/package/fast-logger fast-logger>.
