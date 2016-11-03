{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Compute.Metadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Google Compute Engine defines a set of default metadata entries that provide
-- information about your instance or project.
--
-- This module contains functions for retrieving various Compute metadata from an
-- instance\'s local metadata endpoint using 'MonadIO', prior to initialisation
-- of the environment used by the "Network.Google" monad.
module Network.Google.Compute.Metadata
    (
    -- * Google Compute Instance Check
      checkGCEVar
    , isGCE

    -- * Retrieving Metadata
    , getProjectAttribute
    , getSSHKeys
    , getNumericProjectId
    , getProjectId
    , getInstanceAttribute
    , getDescription
    , getHostname
    , getInstanceId
    , getMachineType
    , getTags
    , getZone

    -- * Raw Metadata Requests
    , metadataFlavorHeader
    , metadataFlavorDesired
    , metadataRequest
    , getMetadata
    ) where

import           Control.Exception       (throwIO)
import           Control.Monad.Catch
import           Control.Monad.IO.Class  (MonadIO (..))
import           Data.Aeson              (eitherDecode')
import           Data.ByteString         (ByteString)
import qualified Data.ByteString.Lazy    as LBS
import           Data.Char               (toLower)
import qualified Data.Text.Encoding      as Text
import qualified Data.Text.Lazy          as LText
import qualified Data.Text.Lazy.Encoding as LText
import           Network.Google.Prelude  (Text, (<>))
import           Network.HTTP.Client     (HttpException (..),
                                          HttpExceptionContent (..), Manager)
import qualified Network.HTTP.Client     as Client
import           Network.HTTP.Types      (HeaderName)
import           System.Environment      (lookupEnv)

-- | The @NO_GCE_CHECK@ environment variable.
checkGCEVar :: String
checkGCEVar = "NO_GCE_CHECK"

-- | The @Metadata-Flavor@ header.
metadataFlavorHeader :: HeaderName
metadataFlavorHeader = "Metadata-Flavor"

-- | The desired metadata flavor.
metadataFlavorDesired :: ByteString
metadataFlavorDesired = "Google"

-- | Detect if the underlying host is running on GCE.
--
-- The environment variable @NO_GCE_CHECK@ can be set to @1@, @true@, @yes@, or @on@
-- to skip this check and always return @False@.
isGCE :: MonadIO m => Manager -> m Bool
isGCE m = liftIO $ do
    p <- check <$> lookupEnv checkGCEVar
    if p
        then (success <$> Client.httpLbs rq m) `catch` failure
        else pure False
  where
    check Nothing  = True
    check (Just x) = map toLower x `notElem` ["1", "true", "yes", "on"]

    success rs =
           fromEnum (Client.responseStatus rs) == 200
        && (lookup metadataFlavorHeader (Client.responseHeaders rs)
               == Just metadataFlavorDesired)

    failure :: HttpException -> IO Bool
    failure = const (pure False)

    rq = metadataRequest
       { Client.responseTimeout = Client.responseTimeoutMicro 1000000
       }

-- | A directory of custom metadata values that have been set for this project.
getProjectAttribute :: MonadIO m => Text -> Manager -> m (Maybe LBS.ByteString)
getProjectAttribute k =
    getMetadataMaybe ("project/attributes/" <> Text.encodeUtf8 k)

-- | SSH keys that can connect to instances in the project. SSH keys for Compute
-- Engine use a specialized format where the keys are prepended with a username,
-- like so: @user1:ssh-rsa my-public-ssh-key user1@host.com@
getSSHKeys :: MonadIO m => Manager -> m [Text]
getSSHKeys m = do
    mx <- getMetadataMaybe "project/attributes/sshKeys" m
    case mx of
        Nothing -> pure []
        Just x  -> pure
           . map LText.toStrict
           . LText.split (== '\n')
           $ LText.decodeUtf8 x

-- | The numeric project ID of the instance, which is not the same as the project
-- name visible in the Google Developers Console. This value is different from
-- the project-id metadata entry value. The project-id value is required for all
-- requests to the Compute Engine service.
getNumericProjectId :: MonadIO m => Manager -> m Text
getNumericProjectId = getMetadataText "project/numeric-project-id"

-- | The project ID.
getProjectId :: MonadIO m => Manager -> m Text
getProjectId = getMetadataText "project/project-id"

-- | A directory of custom metadata values passed to the instance during startup
-- or shutdown.
getInstanceAttribute :: MonadIO m => Text -> Manager -> m (Maybe LBS.ByteString)
getInstanceAttribute k =
    getMetadataMaybe ("instance/attributes/" <> Text.encodeUtf8 k)

-- | The free-text description of an instance, assigned using the
-- @--description@ flag, or set in the API.
getDescription :: MonadIO m => Manager -> m Text
getDescription = getMetadataText "instance/description"

-- | The host name of the instance.
getHostname :: MonadIO m => Manager -> m Text
getHostname = getMetadataText "instance/hostname"

-- | The ID of the instance. This is a unique, numerical ID that is generated by
-- Google Compute Engine. This is useful for identifying instances if you do not
-- want to use instance names.
getInstanceId :: MonadIO m => Manager -> m Text
getInstanceId = getMetadataText "instance/id"

-- | The fully-qualified machine type name of the instance's host machine.
getMachineType :: MonadIO m => Manager -> m Text
getMachineType = getMetadataText "instance/machine-type"

-- | Any tags associated with the instance.
getTags :: MonadIO m => Manager -> m [Text]
getTags m = do
    rs <- getMetadata "instance/tags" [] m
    case eitherDecode' (Client.responseBody rs) of
        Left  _  -> pure []
        Right xs -> pure xs

-- | The instance's zone.
getZone :: MonadIO m => Manager -> m Text
getZone = getMetadataText "instance/zone"

-- -- | A directory of disks attached to this instance.
-- getDisk ::
-- "instance/disks/"

-- -- | A directory of service accounts associated with the instance.
-- getServiceAccount
-- "instance/service-accounts/"

-- -- | A directory of network interfaces for the instance.
-- getNetworkInterfaces
-- "instance/network-interfaces/"

-- -- | A directory of any external IPs that are currently pointing to this virtual
-- -- machine instance, for the network interface at <index>. Specifically, provides
-- -- a list of external IPs served by forwarding rules that direct packets to this
-- -- instance.
-- getForwardedIPs
-- "instance/network-interfaces/<index>/forwarded-ips/"

-- -- | A directory with the scheduling options for the instance.
-- getScheduling
-- "instance/scheduling/"

-- -- | The instance's transparent maintenance event behavior setting. This value is
-- -- set with the @--on_host_maintenance@ flag or via the API.
-- getOnHostMaintenance
-- "instance/scheduling/on-host-maintenance"

-- -- | The instance's automatic restart setting. This value is set with the
-- -- @‑‑automatic_restart@ flag or via the API.
-- getAutomaticRestart
-- "instance/scheduling/automatic-restart"

-- -- | The path that indicates that a transparent maintenance event is affecting this instance.
-- -- See Transparent maintenance notice for details.
-- getMaintenanceEvent
-- "instance/maintenance-event"

-- Metadata wait for change
-- curl "http://metadata.google.internal/computeMetadata/v1/instance/tags?wait_for_change=true"

getMetadataMaybe :: MonadIO m
              => ByteString
              -> Manager
              -> m (Maybe LBS.ByteString)
getMetadataMaybe path m = do
    rs <- getMetadata path [404] m
    if fromEnum (Client.responseStatus rs) == 404
        then pure Nothing
        else pure $ Just (Client.responseBody rs)

getMetadataText :: MonadIO m
             => ByteString
             -> Manager
             -> m Text
getMetadataText path m = LText.toStrict . LText.decodeUtf8 . Client.responseBody
    <$> getMetadata path [] m

getMetadata :: MonadIO m
            => ByteString -- ^ The request path.
            -> [Int]      -- ^ Acceptable status code responses.
            -> Manager
            -> m (Client.Response LBS.ByteString)
getMetadata path statuses m =
    liftIO . flip Client.httpLbs m $
        metadataRequest
            { Client.path          = "/computeMetadata/v1/" <> path
            , Client.checkResponse = \rq rs ->
                let c = fromEnum (Client.responseStatus rs)
                 in if 200 <= c && c < 300 && notElem c statuses
                     then return ()
                     else do
                         bs <- Client.brReadSome (Client.responseBody rs) 4096
                         throwIO . HttpExceptionRequest rq $
                             StatusCodeException (() <$ rs) (LBS.toStrict bs)
            }

-- | A default @http-client@ 'Client.Request' with the host, port, and headers
-- set appropriately for @metadata.google.internal@ use.
metadataRequest :: Client.Request
metadataRequest = Client.defaultRequest
    { Client.host           = "metadata.google.internal"
    , Client.port           = 80
    , Client.secure         = False
    , Client.method         = "GET"
    , Client.requestHeaders = [(metadataFlavorHeader, metadataFlavorDesired)]
    }
