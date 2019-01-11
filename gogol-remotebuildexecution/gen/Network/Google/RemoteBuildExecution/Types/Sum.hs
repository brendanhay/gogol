{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.RemoteBuildExecution.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.RemoteBuildExecution.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

data BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage
    = Unknown
      -- ^ @UNKNOWN@
    | CacheCheck
      -- ^ @CACHE_CHECK@
      -- Checking the result against the cache.
    | Queued
      -- ^ @QUEUED@
      -- Currently idle, awaiting a free machine to execute.
    | Executing
      -- ^ @EXECUTING@
      -- Currently being executed by a worker.
    | Completed
      -- ^ @COMPLETED@
      -- Finished execution.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage

instance FromHttpApiData BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "CACHE_CHECK" -> Right CacheCheck
        "QUEUED" -> Right Queued
        "EXECUTING" -> Right Executing
        "COMPLETED" -> Right Completed
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        CacheCheck -> "CACHE_CHECK"
        Queued -> "QUEUED"
        Executing -> "EXECUTING"
        Completed -> "COMPLETED"

instance FromJSON BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage"

instance ToJSON BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage where
    toJSON = toJSONText

-- | Output only. State of the instance.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not a valid state, but the default value of the enum.
    | Creating
      -- ^ @CREATING@
      -- The instance is in state \`CREATING\` once \`CreateInstance\` is called
      -- and before the instance is ready for use.
    | Running
      -- ^ @RUNNING@
      -- The instance is in state \`RUNNING\` when it is ready for use.
    | Inactive
      -- ^ @INACTIVE@
      -- An \`INACTIVE\` instance indicates that there is a problem that needs to
      -- be fixed. Such instances cannot be used for execution and instances that
      -- remain in this state for a significant period of time will be removed
      -- permanently.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState

instance FromHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "RUNNING" -> Right Running
        "INACTIVE" -> Right Inactive
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Running -> "RUNNING"
        Inactive -> "INACTIVE"

instance FromJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState"

instance ToJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState where
    toJSON = toJSONText

data GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage
    = GDRVEOMSUnknown
      -- ^ @UNKNOWN@
    | GDRVEOMSCacheCheck
      -- ^ @CACHE_CHECK@
      -- Checking the result against the cache.
    | GDRVEOMSQueued
      -- ^ @QUEUED@
      -- Currently idle, awaiting a free machine to execute.
    | GDRVEOMSExecuting
      -- ^ @EXECUTING@
      -- Currently being executed by a worker.
    | GDRVEOMSCompleted
      -- ^ @COMPLETED@
      -- Finished execution.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage

instance FromHttpApiData GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage where
    parseQueryParam = \case
        "UNKNOWN" -> Right GDRVEOMSUnknown
        "CACHE_CHECK" -> Right GDRVEOMSCacheCheck
        "QUEUED" -> Right GDRVEOMSQueued
        "EXECUTING" -> Right GDRVEOMSExecuting
        "COMPLETED" -> Right GDRVEOMSCompleted
        x -> Left ("Unable to parse GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage where
    toQueryParam = \case
        GDRVEOMSUnknown -> "UNKNOWN"
        GDRVEOMSCacheCheck -> "CACHE_CHECK"
        GDRVEOMSQueued -> "QUEUED"
        GDRVEOMSExecuting -> "EXECUTING"
        GDRVEOMSCompleted -> "COMPLETED"

instance FromJSON GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage where
    parseJSON = parseJSONText "GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage"

instance ToJSON GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage where
    toJSON = toJSONText

-- | Output only. State of the worker pool.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState
    = GDRAVWPSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Not a valid state, but the default value of the enum.
    | GDRAVWPSCreating
      -- ^ @CREATING@
      -- The worker pool is in state \`CREATING\` once \`CreateWorkerPool\` is
      -- called and before all requested workers are ready.
    | GDRAVWPSRunning
      -- ^ @RUNNING@
      -- The worker pool is in state \`RUNNING\` when all its workers are ready
      -- for use.
    | GDRAVWPSUpdating
      -- ^ @UPDATING@
      -- The worker pool is in state \`UPDATING\` once \`UpdateWorkerPool\` is
      -- called and before the new configuration has all the requested workers
      -- ready for use, and no older configuration has any workers. At that point
      -- the state transitions to \`RUNNING\`.
    | GDRAVWPSDeleting
      -- ^ @DELETING@
      -- The worker pool is in state \`DELETING\` once the \`Delete\` method is
      -- called and before the deletion completes.
    | GDRAVWPSInactive
      -- ^ @INACTIVE@
      -- The worker pool is in state \`INACTIVE\` when the instance hosting the
      -- worker pool in not running.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState

instance FromHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GDRAVWPSStateUnspecified
        "CREATING" -> Right GDRAVWPSCreating
        "RUNNING" -> Right GDRAVWPSRunning
        "UPDATING" -> Right GDRAVWPSUpdating
        "DELETING" -> Right GDRAVWPSDeleting
        "INACTIVE" -> Right GDRAVWPSInactive
        x -> Left ("Unable to parse GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
    toQueryParam = \case
        GDRAVWPSStateUnspecified -> "STATE_UNSPECIFIED"
        GDRAVWPSCreating -> "CREATING"
        GDRAVWPSRunning -> "RUNNING"
        GDRAVWPSUpdating -> "UPDATING"
        GDRAVWPSDeleting -> "DELETING"
        GDRAVWPSInactive -> "INACTIVE"

instance FromJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
    parseJSON = parseJSONText "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState"

instance ToJSON GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Remote execution may only support a single digest function.
data BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction
    = BBREVECDFUnknown
      -- ^ @UNKNOWN@
    | BBREVECDFSHA256
      -- ^ @SHA256@
    | BBREVECDFSHA1
      -- ^ @SHA1@
    | BBREVECDFMD5
      -- ^ @MD5@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction

instance FromHttpApiData BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    parseQueryParam = \case
        "UNKNOWN" -> Right BBREVECDFUnknown
        "SHA256" -> Right BBREVECDFSHA256
        "SHA1" -> Right BBREVECDFSHA1
        "MD5" -> Right BBREVECDFMD5
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    toQueryParam = \case
        BBREVECDFUnknown -> "UNKNOWN"
        BBREVECDFSHA256 -> "SHA256"
        BBREVECDFSHA1 -> "SHA1"
        BBREVECDFMD5 -> "MD5"

instance FromJSON BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction"

instance ToJSON BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction where
    toJSON = toJSONText

-- | Whether absolute symlink targets are supported.
data BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy
    = BBREVCCSAPSUnknown
      -- ^ @UNKNOWN@
    | BBREVCCSAPSDisallowed
      -- ^ @DISALLOWED@
      -- Server will return an INVALID_ARGUMENT on input symlinks with absolute
      -- targets. If an action tries to create an output symlink with an absolute
      -- target, a FAILED_PRECONDITION will be returned.
    | BBREVCCSAPSAllowed
      -- ^ @ALLOWED@
      -- Server will allow symlink targets to escape the input root tree,
      -- possibly resulting in non-hermetic builds.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy

instance FromHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    parseQueryParam = \case
        "UNKNOWN" -> Right BBREVCCSAPSUnknown
        "DISALLOWED" -> Right BBREVCCSAPSDisallowed
        "ALLOWED" -> Right BBREVCCSAPSAllowed
        x -> Left ("Unable to parse BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy from: " <> x)

instance ToHttpApiData BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    toQueryParam = \case
        BBREVCCSAPSUnknown -> "UNKNOWN"
        BBREVCCSAPSDisallowed -> "DISALLOWED"
        BBREVCCSAPSAllowed -> "ALLOWED"

instance FromJSON BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    parseJSON = parseJSONText "BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy"

instance ToJSON BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy where
    toJSON = toJSONText

-- | The admin action; see \`Command\` for legal values.
data GoogleDevtoolsRemoteworkersV1test2AdminTempCommand
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Illegal value.
    | BotUpdate
      -- ^ @BOT_UPDATE@
      -- Download and run a new version of the bot. \`arg\` will be a resource
      -- accessible via \`ByteStream.Read\` to obtain the new bot code.
    | BotRestart
      -- ^ @BOT_RESTART@
      -- Restart the bot without downloading a new version. \`arg\` will be a
      -- message to log.
    | BotTerminate
      -- ^ @BOT_TERMINATE@
      -- Shut down the bot. \`arg\` will be a task resource name (similar to
      -- those in tasks.proto) that the bot can use to tell the server that it is
      -- terminating.
    | HostRestart
      -- ^ @HOST_RESTART@
      -- Restart the host computer. \`arg\` will be a message to log.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleDevtoolsRemoteworkersV1test2AdminTempCommand

instance FromHttpApiData GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "BOT_UPDATE" -> Right BotUpdate
        "BOT_RESTART" -> Right BotRestart
        "BOT_TERMINATE" -> Right BotTerminate
        "HOST_RESTART" -> Right HostRestart
        x -> Left ("Unable to parse GoogleDevtoolsRemoteworkersV1test2AdminTempCommand from: " <> x)

instance ToHttpApiData GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        BotUpdate -> "BOT_UPDATE"
        BotRestart -> "BOT_RESTART"
        BotTerminate -> "BOT_TERMINATE"
        HostRestart -> "HOST_RESTART"

instance FromJSON GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    parseJSON = parseJSONText "GoogleDevtoolsRemoteworkersV1test2AdminTempCommand"

instance ToJSON GoogleDevtoolsRemoteworkersV1test2AdminTempCommand where
    toJSON = toJSONText
