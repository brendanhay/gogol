{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.RemoteBuildExecution.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.RemoteBuildExecution.Internal.Product
  (

    -- * BuildBazelRemoteExecutionV2Action
    BuildBazelRemoteExecutionV2Action (..),
    newBuildBazelRemoteExecutionV2Action,

    -- * BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities (..),
    newBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities,

    -- * BuildBazelRemoteExecutionV2ActionResult
    BuildBazelRemoteExecutionV2ActionResult (..),
    newBuildBazelRemoteExecutionV2ActionResult,

    -- * BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    BuildBazelRemoteExecutionV2BatchReadBlobsRequest (..),
    newBuildBazelRemoteExecutionV2BatchReadBlobsRequest,

    -- * BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    BuildBazelRemoteExecutionV2BatchReadBlobsResponse (..),
    newBuildBazelRemoteExecutionV2BatchReadBlobsResponse,

    -- * BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse (..),
    newBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse,

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest,

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest,

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse,

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse,

    -- * BuildBazelRemoteExecutionV2CacheCapabilities
    BuildBazelRemoteExecutionV2CacheCapabilities (..),
    newBuildBazelRemoteExecutionV2CacheCapabilities,

    -- * BuildBazelRemoteExecutionV2Command
    BuildBazelRemoteExecutionV2Command (..),
    newBuildBazelRemoteExecutionV2Command,

    -- * BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    BuildBazelRemoteExecutionV2CommandEnvironmentVariable (..),
    newBuildBazelRemoteExecutionV2CommandEnvironmentVariable,

    -- * BuildBazelRemoteExecutionV2Digest
    BuildBazelRemoteExecutionV2Digest (..),
    newBuildBazelRemoteExecutionV2Digest,

    -- * BuildBazelRemoteExecutionV2Directory
    BuildBazelRemoteExecutionV2Directory (..),
    newBuildBazelRemoteExecutionV2Directory,

    -- * BuildBazelRemoteExecutionV2DirectoryNode
    BuildBazelRemoteExecutionV2DirectoryNode (..),
    newBuildBazelRemoteExecutionV2DirectoryNode,

    -- * BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    BuildBazelRemoteExecutionV2ExecuteOperationMetadata (..),
    newBuildBazelRemoteExecutionV2ExecuteOperationMetadata,

    -- * BuildBazelRemoteExecutionV2ExecuteRequest
    BuildBazelRemoteExecutionV2ExecuteRequest (..),
    newBuildBazelRemoteExecutionV2ExecuteRequest,

    -- * BuildBazelRemoteExecutionV2ExecuteResponse
    BuildBazelRemoteExecutionV2ExecuteResponse (..),
    newBuildBazelRemoteExecutionV2ExecuteResponse,

    -- * BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
    BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs (..),
    newBuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs,

    -- * BuildBazelRemoteExecutionV2ExecutedActionMetadata
    BuildBazelRemoteExecutionV2ExecutedActionMetadata (..),
    newBuildBazelRemoteExecutionV2ExecutedActionMetadata,

    -- * BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
    BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem (..),
    newBuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem,

    -- * BuildBazelRemoteExecutionV2ExecutionCapabilities
    BuildBazelRemoteExecutionV2ExecutionCapabilities (..),
    newBuildBazelRemoteExecutionV2ExecutionCapabilities,

    -- * BuildBazelRemoteExecutionV2ExecutionPolicy
    BuildBazelRemoteExecutionV2ExecutionPolicy (..),
    newBuildBazelRemoteExecutionV2ExecutionPolicy,

    -- * BuildBazelRemoteExecutionV2FileNode
    BuildBazelRemoteExecutionV2FileNode (..),
    newBuildBazelRemoteExecutionV2FileNode,

    -- * BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    BuildBazelRemoteExecutionV2FindMissingBlobsRequest (..),
    newBuildBazelRemoteExecutionV2FindMissingBlobsRequest,

    -- * BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    BuildBazelRemoteExecutionV2FindMissingBlobsResponse (..),
    newBuildBazelRemoteExecutionV2FindMissingBlobsResponse,

    -- * BuildBazelRemoteExecutionV2GetTreeResponse
    BuildBazelRemoteExecutionV2GetTreeResponse (..),
    newBuildBazelRemoteExecutionV2GetTreeResponse,

    -- * BuildBazelRemoteExecutionV2LogFile
    BuildBazelRemoteExecutionV2LogFile (..),
    newBuildBazelRemoteExecutionV2LogFile,

    -- * BuildBazelRemoteExecutionV2NodeProperties
    BuildBazelRemoteExecutionV2NodeProperties (..),
    newBuildBazelRemoteExecutionV2NodeProperties,

    -- * BuildBazelRemoteExecutionV2NodeProperty
    BuildBazelRemoteExecutionV2NodeProperty (..),
    newBuildBazelRemoteExecutionV2NodeProperty,

    -- * BuildBazelRemoteExecutionV2OutputDirectory
    BuildBazelRemoteExecutionV2OutputDirectory (..),
    newBuildBazelRemoteExecutionV2OutputDirectory,

    -- * BuildBazelRemoteExecutionV2OutputFile
    BuildBazelRemoteExecutionV2OutputFile (..),
    newBuildBazelRemoteExecutionV2OutputFile,

    -- * BuildBazelRemoteExecutionV2OutputSymlink
    BuildBazelRemoteExecutionV2OutputSymlink (..),
    newBuildBazelRemoteExecutionV2OutputSymlink,

    -- * BuildBazelRemoteExecutionV2Platform
    BuildBazelRemoteExecutionV2Platform (..),
    newBuildBazelRemoteExecutionV2Platform,

    -- * BuildBazelRemoteExecutionV2PlatformProperty
    BuildBazelRemoteExecutionV2PlatformProperty (..),
    newBuildBazelRemoteExecutionV2PlatformProperty,

    -- * BuildBazelRemoteExecutionV2PriorityCapabilities
    BuildBazelRemoteExecutionV2PriorityCapabilities (..),
    newBuildBazelRemoteExecutionV2PriorityCapabilities,

    -- * BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange (..),
    newBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange,

    -- * BuildBazelRemoteExecutionV2RequestMetadata
    BuildBazelRemoteExecutionV2RequestMetadata (..),
    newBuildBazelRemoteExecutionV2RequestMetadata,

    -- * BuildBazelRemoteExecutionV2ResultsCachePolicy
    BuildBazelRemoteExecutionV2ResultsCachePolicy (..),
    newBuildBazelRemoteExecutionV2ResultsCachePolicy,

    -- * BuildBazelRemoteExecutionV2ServerCapabilities
    BuildBazelRemoteExecutionV2ServerCapabilities (..),
    newBuildBazelRemoteExecutionV2ServerCapabilities,

    -- * BuildBazelRemoteExecutionV2SymlinkNode
    BuildBazelRemoteExecutionV2SymlinkNode (..),
    newBuildBazelRemoteExecutionV2SymlinkNode,

    -- * BuildBazelRemoteExecutionV2ToolDetails
    BuildBazelRemoteExecutionV2ToolDetails (..),
    newBuildBazelRemoteExecutionV2ToolDetails,

    -- * BuildBazelRemoteExecutionV2Tree
    BuildBazelRemoteExecutionV2Tree (..),
    newBuildBazelRemoteExecutionV2Tree,

    -- * BuildBazelRemoteExecutionV2WaitExecutionRequest
    BuildBazelRemoteExecutionV2WaitExecutionRequest (..),
    newBuildBazelRemoteExecutionV2WaitExecutionRequest,

    -- * BuildBazelSemverSemVer
    BuildBazelSemverSemVer (..),
    newBuildBazelSemverSemVer,

    -- * GoogleDevtoolsRemotebuildbotCommandDurations
    GoogleDevtoolsRemotebuildbotCommandDurations (..),
    newGoogleDevtoolsRemotebuildbotCommandDurations,

    -- * GoogleDevtoolsRemotebuildbotCommandEvents
    GoogleDevtoolsRemotebuildbotCommandEvents (..),
    newGoogleDevtoolsRemotebuildbotCommandEvents,

    -- * GoogleDevtoolsRemotebuildbotCommandStatus
    GoogleDevtoolsRemotebuildbotCommandStatus (..),
    newGoogleDevtoolsRemotebuildbotCommandStatus,

    -- * GoogleDevtoolsRemotebuildbotResourceUsage
    GoogleDevtoolsRemotebuildbotResourceUsage (..),
    newGoogleDevtoolsRemotebuildbotResourceUsage,

    -- * GoogleDevtoolsRemotebuildbotResourceUsageIOStats
    GoogleDevtoolsRemotebuildbotResourceUsageIOStats (..),
    newGoogleDevtoolsRemotebuildbotResourceUsageIOStats,

    -- * GoogleDevtoolsRemotebuildbotResourceUsageStat
    GoogleDevtoolsRemotebuildbotResourceUsageStat (..),
    newGoogleDevtoolsRemotebuildbotResourceUsageStat,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels,

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool,

    -- * GoogleDevtoolsRemoteworkersV1test2AdminTemp
    GoogleDevtoolsRemoteworkersV1test2AdminTemp (..),
    newGoogleDevtoolsRemoteworkersV1test2AdminTemp,

    -- * GoogleDevtoolsRemoteworkersV1test2Blob
    GoogleDevtoolsRemoteworkersV1test2Blob (..),
    newGoogleDevtoolsRemoteworkersV1test2Blob,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    GoogleDevtoolsRemoteworkersV1test2CommandOutputs (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandOutputs,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    GoogleDevtoolsRemoteworkersV1test2CommandOverhead (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandOverhead,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandResult
    GoogleDevtoolsRemoteworkersV1test2CommandResult (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandResult,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
    GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTask
    GoogleDevtoolsRemoteworkersV1test2CommandTask (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTask,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs,

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts,

    -- * GoogleDevtoolsRemoteworkersV1test2Digest
    GoogleDevtoolsRemoteworkersV1test2Digest (..),
    newGoogleDevtoolsRemoteworkersV1test2Digest,

    -- * GoogleDevtoolsRemoteworkersV1test2Directory
    GoogleDevtoolsRemoteworkersV1test2Directory (..),
    newGoogleDevtoolsRemoteworkersV1test2Directory,

    -- * GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata (..),
    newGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata,

    -- * GoogleDevtoolsRemoteworkersV1test2FileMetadata
    GoogleDevtoolsRemoteworkersV1test2FileMetadata (..),
    newGoogleDevtoolsRemoteworkersV1test2FileMetadata,

    -- * GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- * GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- * GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- * GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- * GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.RemoteBuildExecution.Internal.Sum

-- | An @Action@ captures all the information about an execution which is required to reproduce it. @Action@s are the core component of the [Execution] service. A single @Action@ represents a repeatable action that can be performed by the execution service. @Action@s can be succinctly identified by the digest of their wire format encoding and, once an @Action@ has been executed, will be cached in the action cache. Future requests can then use the cached result rather than needing to run afresh. When a server completes execution of an Action, it MAY choose to cache the result in the ActionCache unless @do_not_cache@ is @true@. Clients SHOULD expect the server to do so. By default, future calls to Execute the same @Action@ will also serve their results from the cache. Clients must take care to understand the caching behaviour. Ideally, all @Action@s will be reproducible so that serving a result from cache is always desirable and correct.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2Action' smart constructor.
data BuildBazelRemoteExecutionV2Action = BuildBazelRemoteExecutionV2Action
    {
      -- | The digest of the Command to run, which MUST be present in the ContentAddressableStorage.
      commandDigest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | If true, then the @Action@\'s result cannot be cached, and in-flight requests for the same @Action@ may not be merged.
    , doNotCache :: (Core.Maybe Core.Bool)
      -- | The digest of the root Directory for the input files. The files in the directory tree are available in the correct location on the build machine before the command is executed. The root directory, as well as every subdirectory and content blob referred to, MUST be in the ContentAddressableStorage.
    , inputRootDigest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | The optional platform requirements for the execution environment. The server MAY choose to execute the action on any worker satisfying the requirements, so the client SHOULD ensure that running the action on any such worker will have the same result. A detailed lexicon for this can be found in the accompanying platform.md. New in version 2.2: clients SHOULD set these platform properties as well as those in the Command. Servers SHOULD prefer those set here.
    , platform :: (Core.Maybe BuildBazelRemoteExecutionV2Platform)
      -- | An optional additional salt value used to place this @Action@ into a separate cache namespace from other instances having the same field contents. This salt typically comes from operational configuration specific to sources such as repo and service configuration, and allows disowning an entire set of ActionResults that might have been poisoned by buggy software or tool failures.
    , salt :: (Core.Maybe Core.Base64)
      -- | A timeout after which the execution should be killed. If the timeout is absent, then the client is specifying that the execution should continue as long as the server will let it. The server SHOULD impose a timeout if the client does not specify one, however, if the client does specify a timeout that is longer than the server\'s maximum timeout, the server MUST reject the request. The timeout is a part of the Action message, and therefore two @Actions@ with different timeouts are different, even if they are otherwise identical. This is because, if they were not, running an @Action@ with a lower timeout than is required might result in a cache hit from an execution run with a longer timeout, hiding the fact that the timeout is too short. By encoding it directly in the @Action@, a lower timeout will result in a cache miss and the execution timeout will fail immediately, rather than whenever the cache entry gets evicted.
    , timeout :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2Action' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2Action 
    ::  BuildBazelRemoteExecutionV2Action
newBuildBazelRemoteExecutionV2Action =
  BuildBazelRemoteExecutionV2Action
    { commandDigest = Core.Nothing
    , doNotCache = Core.Nothing
    , inputRootDigest = Core.Nothing
    , platform = Core.Nothing
    , salt = Core.Nothing
    , timeout = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2Action
         where
        parseJSON
          = Core.withObject "BuildBazelRemoteExecutionV2Action"
              (\ o ->
                 BuildBazelRemoteExecutionV2Action Core.<$>
                   (o Core..:? "commandDigest") Core.<*>
                     (o Core..:? "doNotCache")
                     Core.<*> (o Core..:? "inputRootDigest")
                     Core.<*> (o Core..:? "platform")
                     Core.<*> (o Core..:? "salt")
                     Core.<*> (o Core..:? "timeout"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2Action
         where
        toJSON BuildBazelRemoteExecutionV2Action{..}
          = Core.object
              (Core.catMaybes
                 [("commandDigest" Core..=) Core.<$> commandDigest,
                  ("doNotCache" Core..=) Core.<$> doNotCache,
                  ("inputRootDigest" Core..=) Core.<$> inputRootDigest,
                  ("platform" Core..=) Core.<$> platform,
                  ("salt" Core..=) Core.<$> salt,
                  ("timeout" Core..=) Core.<$> timeout])


-- | Describes the server\/instance capabilities for updating the action cache.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities' smart constructor.
newtype BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities = BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    {
      -- | 
      updateEnabled :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities 
    ::  BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
newBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities =
  BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    {updateEnabled = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
                   Core.<$> (o Core..:? "updateEnabled"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities{..}
          = Core.object
              (Core.catMaybes
                 [("updateEnabled" Core..=) Core.<$> updateEnabled])


-- | An ActionResult represents the result of an Action being run. It is advised that at least one field (for example @ActionResult.execution_metadata.Worker@) have a non-default value, to ensure that the serialized value is non-empty, which can then be used as a basic data sanity check.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ActionResult' smart constructor.
data BuildBazelRemoteExecutionV2ActionResult = BuildBazelRemoteExecutionV2ActionResult
    {
      -- | The details of the execution that originally produced this result.
      executionMetadata :: (Core.Maybe BuildBazelRemoteExecutionV2ExecutedActionMetadata)
      -- | The exit code of the command.
    , exitCode :: (Core.Maybe Core.Int32)
      -- | The output directories of the action. For each output directory requested in the @output_directories@ or @output_paths@ field of the Action, if the corresponding directory existed after the action completed, a single entry will be present in the output list, which will contain the digest of a Tree message containing the directory tree, and the path equal exactly to the corresponding Action output/directories member. As an example, suppose the Action had an output directory @a\/b\/dir@ and the execution produced the following contents in @a\/b\/dir@: a file named @bar@ and a directory named @foo@ with an executable file named @baz@. Then, output/directory will contain (hashes shortened for readability):
      -- @json \/\/ OutputDirectory proto: { path: \"a\/b\/dir\" tree_digest: { hash: \"4a73bc9d03...\", size: 55 } } \/\/ Tree proto with hash \"4a73bc9d03...\" and size 55: { root: { files: [ { name: \"bar\", digest: { hash: \"4a73bc9d03...\", size: 65534 } } ], directories: [ { name: \"foo\", digest: { hash: \"4cf2eda940...\", size: 43 } } ] } children : { \/\/ (Directory proto with hash \"4cf2eda940...\" and size 43) files: [ { name: \"baz\", digest: { hash: \"b2c941073e...\", size: 1294, }, is_executable: true } ] } }@ If an output of the same name as listed in @output_files@ of the Command was found in @output_directories@, but was not a directory, the server will return a FAILED_PRECONDITION.
    , outputDirectories :: (Core.Maybe [BuildBazelRemoteExecutionV2OutputDirectory])
      -- | The output directories of the action that are symbolic links to other directories. Those may be links to other output directories, or input directories, or even absolute paths outside of the working directory, if the server supports SymlinkAbsolutePathStrategy.ALLOWED. For each output directory requested in the @output_directories@ field of the Action, if the directory existed after the action completed, a single entry will be present either in this field, or in the @output_directories@ field, if the directory was not a symbolic link. If an output of the same name was found, but was a symbolic link to a file instead of a directory, the server will return a FAILED_PRECONDITION. If the action does not produce the requested output, then that output will be omitted from the list. The server is free to arrange the output list as desired; clients MUST NOT assume that the output list is sorted. DEPRECATED as of v2.1. Servers that wish to be compatible with v2.0 API should still populate this field in addition to
      -- @output_symlinks@.
    , outputDirectorySymlinks :: (Core.Maybe [BuildBazelRemoteExecutionV2OutputSymlink])
      -- | The output files of the action that are symbolic links to other files. Those may be links to other output files, or input files, or even absolute paths outside of the working directory, if the server supports SymlinkAbsolutePathStrategy.ALLOWED. For each output file requested in the @output_files@ or @output_paths@ field of the Action, if the corresponding file existed after the action completed, a single entry will be present either in this field, or in the @output_files@ field, if the file was not a symbolic link. If an output symbolic link of the same name as listed in @output_files@ of the Command was found, but its target type was not a regular file, the server will return a FAILED_PRECONDITION. If the action does not produce the requested output, then that output will be omitted from the list. The server is free to arrange the output list as desired; clients MUST NOT assume that the output list is sorted. DEPRECATED as of v2.1. Servers that wish to be compatible with v2.0 API should still populate this
      -- field in addition to @output_symlinks@.
    , outputFileSymlinks :: (Core.Maybe [BuildBazelRemoteExecutionV2OutputSymlink])
      -- | The output files of the action. For each output file requested in the @output_files@ or @output_paths@ field of the Action, if the corresponding file existed after the action completed, a single entry will be present either in this field, or the @output_file_symlinks@ field if the file was a symbolic link to another file (@output_symlinks@ field after v2.1). If an output listed in @output_files@ was found, but was a directory rather than a regular file, the server will return a FAILED_PRECONDITION. If the action does not produce the requested output, then that output will be omitted from the list. The server is free to arrange the output list as desired; clients MUST NOT assume that the output list is sorted.
    , outputFiles :: (Core.Maybe [BuildBazelRemoteExecutionV2OutputFile])
      -- | New in v2.1: this field will only be populated if the command @output_paths@ field was used, and not the pre v2.1 @output_files@ or @output_directories@ fields. The output paths of the action that are symbolic links to other paths. Those may be links to other outputs, or inputs, or even absolute paths outside of the working directory, if the server supports SymlinkAbsolutePathStrategy.ALLOWED. A single entry for each output requested in @output_paths@ field of the Action, if the corresponding path existed after the action completed and was a symbolic link. If the action does not produce a requested output, then that output will be omitted from the list. The server is free to arrange the output list as desired; clients MUST NOT assume that the output list is sorted.
    , outputSymlinks :: (Core.Maybe [BuildBazelRemoteExecutionV2OutputSymlink])
      -- | The digest for a blob containing the standard error of the action, which can be retrieved from the ContentAddressableStorage.
    , stderrDigest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | The standard error buffer of the action. The server SHOULD NOT inline stderr unless requested by the client in the GetActionResultRequest message. The server MAY omit inlining, even if requested, and MUST do so if inlining would cause the response to exceed message size limits.
    , stderrRaw :: (Core.Maybe Core.Base64)
      -- | The digest for a blob containing the standard output of the action, which can be retrieved from the ContentAddressableStorage.
    , stdoutDigest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | The standard output buffer of the action. The server SHOULD NOT inline stdout unless requested by the client in the GetActionResultRequest message. The server MAY omit inlining, even if requested, and MUST do so if inlining would cause the response to exceed message size limits.
    , stdoutRaw :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ActionResult' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ActionResult 
    ::  BuildBazelRemoteExecutionV2ActionResult
newBuildBazelRemoteExecutionV2ActionResult =
  BuildBazelRemoteExecutionV2ActionResult
    { executionMetadata = Core.Nothing
    , exitCode = Core.Nothing
    , outputDirectories = Core.Nothing
    , outputDirectorySymlinks = Core.Nothing
    , outputFileSymlinks = Core.Nothing
    , outputFiles = Core.Nothing
    , outputSymlinks = Core.Nothing
    , stderrDigest = Core.Nothing
    , stderrRaw = Core.Nothing
    , stdoutDigest = Core.Nothing
    , stdoutRaw = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ActionResult
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ActionResult"
              (\ o ->
                 BuildBazelRemoteExecutionV2ActionResult Core.<$>
                   (o Core..:? "executionMetadata") Core.<*>
                     (o Core..:? "exitCode")
                     Core.<*> (o Core..:? "outputDirectories")
                     Core.<*> (o Core..:? "outputDirectorySymlinks")
                     Core.<*> (o Core..:? "outputFileSymlinks")
                     Core.<*> (o Core..:? "outputFiles")
                     Core.<*> (o Core..:? "outputSymlinks")
                     Core.<*> (o Core..:? "stderrDigest")
                     Core.<*> (o Core..:? "stderrRaw")
                     Core.<*> (o Core..:? "stdoutDigest")
                     Core.<*> (o Core..:? "stdoutRaw"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ActionResult
         where
        toJSON BuildBazelRemoteExecutionV2ActionResult{..}
          = Core.object
              (Core.catMaybes
                 [("executionMetadata" Core..=) Core.<$>
                    executionMetadata,
                  ("exitCode" Core..=) Core.<$> exitCode,
                  ("outputDirectories" Core..=) Core.<$>
                    outputDirectories,
                  ("outputDirectorySymlinks" Core..=) Core.<$>
                    outputDirectorySymlinks,
                  ("outputFileSymlinks" Core..=) Core.<$>
                    outputFileSymlinks,
                  ("outputFiles" Core..=) Core.<$> outputFiles,
                  ("outputSymlinks" Core..=) Core.<$> outputSymlinks,
                  ("stderrDigest" Core..=) Core.<$> stderrDigest,
                  ("stderrRaw" Core..=) Core.<$> stderrRaw,
                  ("stdoutDigest" Core..=) Core.<$> stdoutDigest,
                  ("stdoutRaw" Core..=) Core.<$> stdoutRaw])


-- | A request message for ContentAddressableStorage.BatchReadBlobs.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2BatchReadBlobsRequest' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchReadBlobsRequest = BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    {
      -- | The individual blob digests.
      digests :: (Core.Maybe [BuildBazelRemoteExecutionV2Digest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchReadBlobsRequest' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2BatchReadBlobsRequest 
    ::  BuildBazelRemoteExecutionV2BatchReadBlobsRequest
newBuildBazelRemoteExecutionV2BatchReadBlobsRequest =
  BuildBazelRemoteExecutionV2BatchReadBlobsRequest {digests = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsRequest
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2BatchReadBlobsRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchReadBlobsRequest
                   Core.<$> (o Core..:? "digests"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchReadBlobsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("digests" Core..=) Core.<$> digests])


-- | A response message for ContentAddressableStorage.BatchReadBlobs.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2BatchReadBlobsResponse' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchReadBlobsResponse = BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    {
      -- | The responses to the requests.
      responses :: (Core.Maybe
   [BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchReadBlobsResponse' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2BatchReadBlobsResponse 
    ::  BuildBazelRemoteExecutionV2BatchReadBlobsResponse
newBuildBazelRemoteExecutionV2BatchReadBlobsResponse =
  BuildBazelRemoteExecutionV2BatchReadBlobsResponse {responses = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponse
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2BatchReadBlobsResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchReadBlobsResponse
                   Core.<$> (o Core..:? "responses"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchReadBlobsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("responses" Core..=) Core.<$> responses])


-- | A response corresponding to a single blob that the client tried to download.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse' smart constructor.
data BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse = BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    {
      -- | The raw binary data.
      data' :: (Core.Maybe Core.Base64)
      -- | The digest to which this response corresponds.
    , digest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | The result of attempting to download that blob.
    , status :: (Core.Maybe GoogleRpcStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse 
    ::  BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
newBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse =
  BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    {data' = Core.Nothing, digest = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
                   Core.<$>
                   (o Core..:? "data") Core.<*> (o Core..:? "digest")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse{..}
          = Core.object
              (Core.catMaybes
                 [("data" Core..=) Core.<$> data',
                  ("digest" Core..=) Core.<$> digest,
                  ("status" Core..=) Core.<$> status])


-- | A request message for ContentAddressableStorage.BatchUpdateBlobs.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest = BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    {
      -- | The individual upload requests.
      requests :: (Core.Maybe
   [BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest 
    ::  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest {requests = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
                   Core.<$> (o Core..:? "requests"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("requests" Core..=) Core.<$> requests])


-- | A request corresponding to a single blob that the client wants to upload.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest' smart constructor.
data BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest = BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    {
      -- | The raw binary data.
      data' :: (Core.Maybe Core.Base64)
      -- | The digest of the blob. This MUST be the digest of @data@.
    , digest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest 
    ::  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    {data' = Core.Nothing, digest = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
                   Core.<$>
                   (o Core..:? "data") Core.<*> (o Core..:? "digest"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest{..}
          = Core.object
              (Core.catMaybes
                 [("data" Core..=) Core.<$> data',
                  ("digest" Core..=) Core.<$> digest])


-- | A response message for ContentAddressableStorage.BatchUpdateBlobs.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse' smart constructor.
newtype BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse = BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    {
      -- | The responses to the requests.
      responses :: (Core.Maybe
   [BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse 
    ::  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse {responses = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
                   Core.<$> (o Core..:? "responses"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("responses" Core..=) Core.<$> responses])


-- | A response corresponding to a single blob that the client tried to upload.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse' smart constructor.
data BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse = BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    {
      -- | The blob digest to which this response corresponds.
      digest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | The result of attempting to upload that blob.
    , status :: (Core.Maybe GoogleRpcStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse 
    ::  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse =
  BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    {digest = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
                   Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "status"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("status" Core..=) Core.<$> status])


-- | Capabilities of the remote cache system.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2CacheCapabilities' smart constructor.
data BuildBazelRemoteExecutionV2CacheCapabilities = BuildBazelRemoteExecutionV2CacheCapabilities
    {
      -- | Capabilities for updating the action cache.
      actionCacheUpdateCapabilities :: (Core.Maybe
   BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities)
      -- | Supported cache priority range for both CAS and ActionCache.
    , cachePriorityCapabilities :: (Core.Maybe BuildBazelRemoteExecutionV2PriorityCapabilities)
      -- | All the digest functions supported by the remote cache. Remote cache may support multiple digest functions simultaneously.
    , digestFunction :: (Core.Maybe
   [BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem])
      -- | Maximum total size of blobs to be uploaded\/downloaded using batch methods. A value of 0 means no limit is set, although in practice there will always be a message size limitation of the protocol in use, e.g. GRPC.
    , maxBatchTotalSizeBytes :: (Core.Maybe Core.Int64)
      -- | Compressors supported by the \"compressed-blobs\" bytestream resources. Servers MUST support identity\/no-compression, even if it is not listed here. Note that this does not imply which if any compressors are supported by the server at the gRPC level.
    , supportedCompressor :: (Core.Maybe
   [BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem])
      -- | Whether absolute symlink targets are supported.
    , symlinkAbsolutePathStrategy :: (Core.Maybe
   BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2CacheCapabilities' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2CacheCapabilities 
    ::  BuildBazelRemoteExecutionV2CacheCapabilities
newBuildBazelRemoteExecutionV2CacheCapabilities =
  BuildBazelRemoteExecutionV2CacheCapabilities
    { actionCacheUpdateCapabilities = Core.Nothing
    , cachePriorityCapabilities = Core.Nothing
    , digestFunction = Core.Nothing
    , maxBatchTotalSizeBytes = Core.Nothing
    , supportedCompressor = Core.Nothing
    , symlinkAbsolutePathStrategy = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2CacheCapabilities
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2CacheCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2CacheCapabilities Core.<$>
                   (o Core..:? "actionCacheUpdateCapabilities") Core.<*>
                     (o Core..:? "cachePriorityCapabilities")
                     Core.<*> (o Core..:? "digestFunction")
                     Core.<*>
                     (o Core..:? "maxBatchTotalSizeBytes" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "supportedCompressor")
                     Core.<*> (o Core..:? "symlinkAbsolutePathStrategy"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2CacheCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2CacheCapabilities{..}
          = Core.object
              (Core.catMaybes
                 [("actionCacheUpdateCapabilities" Core..=) Core.<$>
                    actionCacheUpdateCapabilities,
                  ("cachePriorityCapabilities" Core..=) Core.<$>
                    cachePriorityCapabilities,
                  ("digestFunction" Core..=) Core.<$> digestFunction,
                  ("maxBatchTotalSizeBytes" Core..=) Core.. Core.AsText
                    Core.<$> maxBatchTotalSizeBytes,
                  ("supportedCompressor" Core..=) Core.<$>
                    supportedCompressor,
                  ("symlinkAbsolutePathStrategy" Core..=) Core.<$>
                    symlinkAbsolutePathStrategy])


-- | A @Command@ is the actual command executed by a worker running an Action and specifications of its environment. Except as otherwise required, the environment (such as which system libraries or binaries are available, and what filesystems are mounted where) is defined by and specific to the implementation of the remote execution API.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2Command' smart constructor.
data BuildBazelRemoteExecutionV2Command = BuildBazelRemoteExecutionV2Command
    {
      -- | The arguments to the command. The first argument must be the path to the executable, which must be either a relative path, in which case it is evaluated with respect to the input root, or an absolute path.
      arguments :: (Core.Maybe [Core.Text])
      -- | The environment variables to set when running the program. The worker may provide its own default environment variables; these defaults can be overridden using this field. Additional variables can also be specified. In order to ensure that equivalent Commands always hash to the same value, the environment variables MUST be lexicographically sorted by name. Sorting of strings is done by code point, equivalently, by the UTF-8 bytes.
    , environmentVariables :: (Core.Maybe
   [BuildBazelRemoteExecutionV2CommandEnvironmentVariable])
      -- | A list of the output directories that the client expects to retrieve from the action. Only the listed directories will be returned (an entire directory structure will be returned as a Tree message digest, see OutputDirectory), as well as files listed in @output_files@. Other files or directories that may be created during command execution are discarded. The paths are relative to the working directory of the action execution. The paths are specified using a single forward slash (@\/@) as a path separator, even if the execution platform natively uses a different separator. The path MUST NOT include a trailing slash, nor a leading slash, being a relative path. The special value of empty string is allowed, although not recommended, and can be used to capture the entire working directory tree, including inputs. In order to ensure consistent hashing of the same Action, the output paths MUST be sorted lexicographically by code point (or, equivalently, by UTF-8 bytes). An output directory cannot be duplicated or
      -- have the same path as any of the listed output files. An output directory is allowed to be a parent of another output directory. Directories leading up to the output directories (but not the output directories themselves) are created by the worker prior to execution, even if they are not explicitly part of the input root. DEPRECATED since 2.1: Use @output_paths@ instead.
    , outputDirectories :: (Core.Maybe [Core.Text])
      -- | A list of the output files that the client expects to retrieve from the action. Only the listed files, as well as directories listed in @output_directories@, will be returned to the client as output. Other files or directories that may be created during command execution are discarded. The paths are relative to the working directory of the action execution. The paths are specified using a single forward slash (@\/@) as a path separator, even if the execution platform natively uses a different separator. The path MUST NOT include a trailing slash, nor a leading slash, being a relative path. In order to ensure consistent hashing of the same Action, the output paths MUST be sorted lexicographically by code point (or, equivalently, by UTF-8 bytes). An output file cannot be duplicated, be a parent of another output file, or have the same path as any of the listed output directories. Directories leading up to the output files are created by the worker prior to execution, even if they are not explicitly part of the
      -- input root. DEPRECATED since v2.1: Use @output_paths@ instead.
    , outputFiles :: (Core.Maybe [Core.Text])
      -- | A list of keys for node properties the client expects to retrieve for output files and directories. Keys are either names of string-based NodeProperty or names of fields in NodeProperties. In order to ensure that equivalent @Action@s always hash to the same value, the node properties MUST be lexicographically sorted by name. Sorting of strings is done by code point, equivalently, by the UTF-8 bytes. The interpretation of string-based properties is server-dependent. If a property is not recognized by the server, the server will return an @INVALID_ARGUMENT@.
    , outputNodeProperties :: (Core.Maybe [Core.Text])
      -- | A list of the output paths that the client expects to retrieve from the action. Only the listed paths will be returned to the client as output. The type of the output (file or directory) is not specified, and will be determined by the server after action execution. If the resulting path is a file, it will be returned in an OutputFile) typed field. If the path is a directory, the entire directory structure will be returned as a Tree message digest, see OutputDirectory) Other files or directories that may be created during command execution are discarded. The paths are relative to the working directory of the action execution. The paths are specified using a single forward slash (@\/@) as a path separator, even if the execution platform natively uses a different separator. The path MUST NOT include a trailing slash, nor a leading slash, being a relative path. In order to ensure consistent hashing of the same Action, the output paths MUST be deduplicated and sorted lexicographically by code point (or,
      -- equivalently, by UTF-8 bytes). Directories leading up to the output paths are created by the worker prior to execution, even if they are not explicitly part of the input root. New in v2.1: this field supersedes the DEPRECATED @output_files@ and @output_directories@ fields. If @output_paths@ is used, @output_files@ and @output_directories@ will be ignored!
    , outputPaths :: (Core.Maybe [Core.Text])
      -- | The platform requirements for the execution environment. The server MAY choose to execute the action on any worker satisfying the requirements, so the client SHOULD ensure that running the action on any such worker will have the same result. A detailed lexicon for this can be found in the accompanying platform.md. DEPRECATED as of v2.2: platform properties are now specified directly in the action. See documentation note in the Action for migration.
    , platform :: (Core.Maybe BuildBazelRemoteExecutionV2Platform)
      -- | The working directory, relative to the input root, for the command to run in. It must be a directory which exists in the input tree. If it is left empty, then the action is run in the input root.
    , workingDirectory :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2Command' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2Command 
    ::  BuildBazelRemoteExecutionV2Command
newBuildBazelRemoteExecutionV2Command =
  BuildBazelRemoteExecutionV2Command
    { arguments = Core.Nothing
    , environmentVariables = Core.Nothing
    , outputDirectories = Core.Nothing
    , outputFiles = Core.Nothing
    , outputNodeProperties = Core.Nothing
    , outputPaths = Core.Nothing
    , platform = Core.Nothing
    , workingDirectory = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2Command
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2Command"
              (\ o ->
                 BuildBazelRemoteExecutionV2Command Core.<$>
                   (o Core..:? "arguments") Core.<*>
                     (o Core..:? "environmentVariables")
                     Core.<*> (o Core..:? "outputDirectories")
                     Core.<*> (o Core..:? "outputFiles")
                     Core.<*> (o Core..:? "outputNodeProperties")
                     Core.<*> (o Core..:? "outputPaths")
                     Core.<*> (o Core..:? "platform")
                     Core.<*> (o Core..:? "workingDirectory"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2Command
         where
        toJSON BuildBazelRemoteExecutionV2Command{..}
          = Core.object
              (Core.catMaybes
                 [("arguments" Core..=) Core.<$> arguments,
                  ("environmentVariables" Core..=) Core.<$>
                    environmentVariables,
                  ("outputDirectories" Core..=) Core.<$>
                    outputDirectories,
                  ("outputFiles" Core..=) Core.<$> outputFiles,
                  ("outputNodeProperties" Core..=) Core.<$>
                    outputNodeProperties,
                  ("outputPaths" Core..=) Core.<$> outputPaths,
                  ("platform" Core..=) Core.<$> platform,
                  ("workingDirectory" Core..=) Core.<$>
                    workingDirectory])


-- | An @EnvironmentVariable@ is one variable to set in the running program\'s environment.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2CommandEnvironmentVariable' smart constructor.
data BuildBazelRemoteExecutionV2CommandEnvironmentVariable = BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    {
      -- | The variable name.
      name :: (Core.Maybe Core.Text)
      -- | The variable value.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2CommandEnvironmentVariable' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2CommandEnvironmentVariable 
    ::  BuildBazelRemoteExecutionV2CommandEnvironmentVariable
newBuildBazelRemoteExecutionV2CommandEnvironmentVariable =
  BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2CommandEnvironmentVariable
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2CommandEnvironmentVariable"
              (\ o ->
                 BuildBazelRemoteExecutionV2CommandEnvironmentVariable
                   Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2CommandEnvironmentVariable
         where
        toJSON
          BuildBazelRemoteExecutionV2CommandEnvironmentVariable{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | A content digest. A digest for a given blob consists of the size of the blob and its hash. The hash algorithm to use is defined by the server. The size is considered to be an integral part of the digest and cannot be separated. That is, even if the @hash@ field is correctly specified but @size_bytes@ is not, the server MUST reject the request. The reason for including the size in the digest is as follows: in a great many cases, the server needs to know the size of the blob it is about to work with prior to starting an operation with it, such as flattening Merkle tree structures or streaming it to a worker. Technically, the server could implement a separate metadata store, but this results in a significantly more complicated implementation as opposed to having the client specify the size up-front (or storing the size along with the digest in every message where digests are embedded). This does mean that the API leaks some implementation details of (what we consider to be) a reasonable server implementation,
-- but we consider this to be a worthwhile tradeoff. When a @Digest@ is used to refer to a proto message, it always refers to the message in binary encoded form. To ensure consistent hashing, clients and servers MUST ensure that they serialize messages according to the following rules, even if there are alternate valid encodings for the same message: * Fields are serialized in tag order. * There are no unknown fields. * There are no duplicate fields. * Fields are serialized according to the default semantics for their type. Most protocol buffer implementations will always follow these rules when serializing, but care should be taken to avoid shortcuts. For instance, concatenating two messages to merge them may produce duplicate fields.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2Digest' smart constructor.
data BuildBazelRemoteExecutionV2Digest = BuildBazelRemoteExecutionV2Digest
    {
      -- | The hash. In the case of SHA-256, it will always be a lowercase hex string exactly 64 characters long.
      hash :: (Core.Maybe Core.Text)
      -- | The size of the blob, in bytes.
    , sizeBytes :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2Digest' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2Digest 
    ::  BuildBazelRemoteExecutionV2Digest
newBuildBazelRemoteExecutionV2Digest =
  BuildBazelRemoteExecutionV2Digest
    {hash = Core.Nothing, sizeBytes = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2Digest
         where
        parseJSON
          = Core.withObject "BuildBazelRemoteExecutionV2Digest"
              (\ o ->
                 BuildBazelRemoteExecutionV2Digest Core.<$>
                   (o Core..:? "hash") Core.<*>
                     (o Core..:? "sizeBytes" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2Digest
         where
        toJSON BuildBazelRemoteExecutionV2Digest{..}
          = Core.object
              (Core.catMaybes
                 [("hash" Core..=) Core.<$> hash,
                  ("sizeBytes" Core..=) Core.. Core.AsText Core.<$>
                    sizeBytes])


-- | A @Directory@ represents a directory node in a file tree, containing zero or more children FileNodes, DirectoryNodes and SymlinkNodes. Each @Node@ contains its name in the directory, either the digest of its content (either a file blob or a @Directory@ proto) or a symlink target, as well as possibly some metadata about the file or directory. In order to ensure that two equivalent directory trees hash to the same value, the following restrictions MUST be obeyed when constructing a a @Directory@: * Every child in the directory must have a path of exactly one segment. Multiple levels of directory hierarchy may not be collapsed. * Each child in the directory must have a unique path segment (file name). Note that while the API itself is case-sensitive, the environment where the Action is executed may or may not be case-sensitive. That is, it is legal to call the API with a Directory that has both \"Foo\" and \"foo\" as children, but the Action may be rejected by the remote system upon execution. * The files,
-- directories and symlinks in the directory must each be sorted in lexicographical order by path. The path strings must be sorted by code point, equivalently, by UTF-8 bytes. * The NodeProperties of files, directories, and symlinks must be sorted in lexicographical order by property name. A @Directory@ that obeys the restrictions is said to be in canonical form. As an example, the following could be used for a file named @bar@ and a directory named @foo@ with an executable file named @baz@ (hashes shortened for readability): @json \/\/ (Directory proto) { files: [ { name: \"bar\", digest: { hash: \"4a73bc9d03...\", size: 65534 }, node_properties: [ { \"name\": \"MTime\", \"value\": \"2017-01-15T01:30:15.01Z\" } ] } ], directories: [ { name: \"foo\", digest: { hash: \"4cf2eda940...\", size: 43 } } ] } \/\/ (Directory proto with hash \"4cf2eda940...\" and size 43) { files: [ { name: \"baz\", digest: { hash: \"b2c941073e...\", size: 1294, }, is_executable: true } ] }@
--
-- /See:/ 'newBuildBazelRemoteExecutionV2Directory' smart constructor.
data BuildBazelRemoteExecutionV2Directory = BuildBazelRemoteExecutionV2Directory
    {
      -- | The subdirectories in the directory.
      directories :: (Core.Maybe [BuildBazelRemoteExecutionV2DirectoryNode])
      -- | The files in the directory.
    , files :: (Core.Maybe [BuildBazelRemoteExecutionV2FileNode])
      -- | 
    , nodeProperties :: (Core.Maybe BuildBazelRemoteExecutionV2NodeProperties)
      -- | The symlinks in the directory.
    , symlinks :: (Core.Maybe [BuildBazelRemoteExecutionV2SymlinkNode])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2Directory' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2Directory 
    ::  BuildBazelRemoteExecutionV2Directory
newBuildBazelRemoteExecutionV2Directory =
  BuildBazelRemoteExecutionV2Directory
    { directories = Core.Nothing
    , files = Core.Nothing
    , nodeProperties = Core.Nothing
    , symlinks = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2Directory
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2Directory"
              (\ o ->
                 BuildBazelRemoteExecutionV2Directory Core.<$>
                   (o Core..:? "directories") Core.<*>
                     (o Core..:? "files")
                     Core.<*> (o Core..:? "nodeProperties")
                     Core.<*> (o Core..:? "symlinks"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2Directory
         where
        toJSON BuildBazelRemoteExecutionV2Directory{..}
          = Core.object
              (Core.catMaybes
                 [("directories" Core..=) Core.<$> directories,
                  ("files" Core..=) Core.<$> files,
                  ("nodeProperties" Core..=) Core.<$> nodeProperties,
                  ("symlinks" Core..=) Core.<$> symlinks])


-- | A @DirectoryNode@ represents a child of a Directory which is itself a @Directory@ and its associated metadata.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2DirectoryNode' smart constructor.
data BuildBazelRemoteExecutionV2DirectoryNode = BuildBazelRemoteExecutionV2DirectoryNode
    {
      -- | The digest of the Directory object represented. See Digest for information about how to take the digest of a proto message.
      digest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | The name of the directory.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2DirectoryNode' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2DirectoryNode 
    ::  BuildBazelRemoteExecutionV2DirectoryNode
newBuildBazelRemoteExecutionV2DirectoryNode =
  BuildBazelRemoteExecutionV2DirectoryNode
    {digest = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2DirectoryNode
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2DirectoryNode"
              (\ o ->
                 BuildBazelRemoteExecutionV2DirectoryNode Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "name"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2DirectoryNode
         where
        toJSON BuildBazelRemoteExecutionV2DirectoryNode{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("name" Core..=) Core.<$> name])


-- | Metadata about an ongoing execution, which will be contained in the metadata field of the Operation.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecuteOperationMetadata' smart constructor.
data BuildBazelRemoteExecutionV2ExecuteOperationMetadata = BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    {
      -- | The digest of the Action being executed.
      actionDigest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | The current stage of execution.
    , stage :: (Core.Maybe
   BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage)
      -- | If set, the client can use this resource name with ByteStream.Read to stream the standard error from the endpoint hosting streamed responses.
    , stderrStreamName :: (Core.Maybe Core.Text)
      -- | If set, the client can use this resource name with ByteStream.Read to stream the standard output from the endpoint hosting streamed responses.
    , stdoutStreamName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteOperationMetadata' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecuteOperationMetadata 
    ::  BuildBazelRemoteExecutionV2ExecuteOperationMetadata
newBuildBazelRemoteExecutionV2ExecuteOperationMetadata =
  BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    { actionDigest = Core.Nothing
    , stage = Core.Nothing
    , stderrStreamName = Core.Nothing
    , stdoutStreamName = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecuteOperationMetadata
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecuteOperationMetadata"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteOperationMetadata
                   Core.<$>
                   (o Core..:? "actionDigest") Core.<*>
                     (o Core..:? "stage")
                     Core.<*> (o Core..:? "stderrStreamName")
                     Core.<*> (o Core..:? "stdoutStreamName"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecuteOperationMetadata
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecuteOperationMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("actionDigest" Core..=) Core.<$> actionDigest,
                  ("stage" Core..=) Core.<$> stage,
                  ("stderrStreamName" Core..=) Core.<$>
                    stderrStreamName,
                  ("stdoutStreamName" Core..=) Core.<$>
                    stdoutStreamName])


-- | A request message for Execution.Execute.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecuteRequest' smart constructor.
data BuildBazelRemoteExecutionV2ExecuteRequest = BuildBazelRemoteExecutionV2ExecuteRequest
    {
      -- | The digest of the Action to execute.
      actionDigest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | An optional policy for execution of the action. The server will have a default policy if this is not provided.
    , executionPolicy :: (Core.Maybe BuildBazelRemoteExecutionV2ExecutionPolicy)
      -- | An optional policy for the results of this execution in the remote cache. The server will have a default policy if this is not provided. This may be applied to both the ActionResult and the associated blobs.
    , resultsCachePolicy :: (Core.Maybe BuildBazelRemoteExecutionV2ResultsCachePolicy)
      -- | If true, the action will be executed even if its result is already present in the ActionCache. The execution is still allowed to be merged with other in-flight executions of the same action, however - semantically, the service MUST only guarantee that the results of an execution with this field set were not visible before the corresponding execution request was sent. Note that actions from execution requests setting this field set are still eligible to be entered into the action cache upon completion, and services SHOULD overwrite any existing entries that may exist. This allows skip/cache/lookup requests to be used as a mechanism for replacing action cache entries that reference outputs no longer available or that are poisoned in any way. If false, the result may be served from the action cache.
    , skipCacheLookup :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteRequest' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecuteRequest 
    ::  BuildBazelRemoteExecutionV2ExecuteRequest
newBuildBazelRemoteExecutionV2ExecuteRequest =
  BuildBazelRemoteExecutionV2ExecuteRequest
    { actionDigest = Core.Nothing
    , executionPolicy = Core.Nothing
    , resultsCachePolicy = Core.Nothing
    , skipCacheLookup = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecuteRequest
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecuteRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteRequest Core.<$>
                   (o Core..:? "actionDigest") Core.<*>
                     (o Core..:? "executionPolicy")
                     Core.<*> (o Core..:? "resultsCachePolicy")
                     Core.<*> (o Core..:? "skipCacheLookup"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecuteRequest
         where
        toJSON BuildBazelRemoteExecutionV2ExecuteRequest{..}
          = Core.object
              (Core.catMaybes
                 [("actionDigest" Core..=) Core.<$> actionDigest,
                  ("executionPolicy" Core..=) Core.<$> executionPolicy,
                  ("resultsCachePolicy" Core..=) Core.<$>
                    resultsCachePolicy,
                  ("skipCacheLookup" Core..=) Core.<$>
                    skipCacheLookup])


-- | The response message for Execution.Execute, which will be contained in the response field of the Operation.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecuteResponse' smart constructor.
data BuildBazelRemoteExecutionV2ExecuteResponse = BuildBazelRemoteExecutionV2ExecuteResponse
    {
      -- | True if the result was served from cache, false if it was executed.
      cachedResult :: (Core.Maybe Core.Bool)
      -- | Freeform informational message with details on the execution of the action that may be displayed to the user upon failure or when requested explicitly.
    , message :: (Core.Maybe Core.Text)
      -- | The result of the action.
    , result :: (Core.Maybe BuildBazelRemoteExecutionV2ActionResult)
      -- | An optional list of additional log outputs the server wishes to provide. A server can use this to return execution-specific logs however it wishes. This is intended primarily to make it easier for users to debug issues that may be outside of the actual job execution, such as by identifying the worker executing the action or by providing logs from the worker\'s setup phase. The keys SHOULD be human readable so that a client can display them to a user.
    , serverLogs :: (Core.Maybe BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs)
      -- | If the status has a code other than @OK@, it indicates that the action did not finish execution. For example, if the operation times out during execution, the status will have a @DEADLINE_EXCEEDED@ code. Servers MUST use this field for errors in execution, rather than the error field on the @Operation@ object. If the status code is other than @OK@, then the result MUST NOT be cached. For an error status, the @result@ field is optional; the server may populate the output-, stdout-, and stderr-related fields if it has any information available, such as the stdout and stderr of a timed-out action.
    , status :: (Core.Maybe GoogleRpcStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteResponse' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecuteResponse 
    ::  BuildBazelRemoteExecutionV2ExecuteResponse
newBuildBazelRemoteExecutionV2ExecuteResponse =
  BuildBazelRemoteExecutionV2ExecuteResponse
    { cachedResult = Core.Nothing
    , message = Core.Nothing
    , result = Core.Nothing
    , serverLogs = Core.Nothing
    , status = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecuteResponse
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecuteResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteResponse Core.<$>
                   (o Core..:? "cachedResult") Core.<*>
                     (o Core..:? "message")
                     Core.<*> (o Core..:? "result")
                     Core.<*> (o Core..:? "serverLogs")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecuteResponse
         where
        toJSON BuildBazelRemoteExecutionV2ExecuteResponse{..}
          = Core.object
              (Core.catMaybes
                 [("cachedResult" Core..=) Core.<$> cachedResult,
                  ("message" Core..=) Core.<$> message,
                  ("result" Core..=) Core.<$> result,
                  ("serverLogs" Core..=) Core.<$> serverLogs,
                  ("status" Core..=) Core.<$> status])


-- | An optional list of additional log outputs the server wishes to provide. A server can use this to return execution-specific logs however it wishes. This is intended primarily to make it easier for users to debug issues that may be outside of the actual job execution, such as by identifying the worker executing the action or by providing logs from the worker\'s setup phase. The keys SHOULD be human readable so that a client can display them to a user.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs' smart constructor.
newtype BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs = BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
    {
      -- | 
      additional :: (Core.HashMap Core.Text BuildBazelRemoteExecutionV2LogFile)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs 
    ::  Core.HashMap Core.Text BuildBazelRemoteExecutionV2LogFile
       -- ^  See 'additional'.
    -> BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
newBuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs additional =
  BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
    {additional = additional}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs{..}
          = Core.toJSON additional


-- | ExecutedActionMetadata contains details about a completed execution.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecutedActionMetadata' smart constructor.
data BuildBazelRemoteExecutionV2ExecutedActionMetadata = BuildBazelRemoteExecutionV2ExecutedActionMetadata
    {
      -- | Details that are specific to the kind of worker used. For example, on POSIX-like systems this could contain a message with getrusage(2) statistics.
      auxiliaryMetadata :: (Core.Maybe
   [BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem])
      -- | When the worker completed executing the action command.
    , executionCompletedTimestamp :: (Core.Maybe Core.DateTime)
      -- | When the worker started executing the action command.
    , executionStartTimestamp :: (Core.Maybe Core.DateTime)
      -- | When the worker finished fetching action inputs.
    , inputFetchCompletedTimestamp :: (Core.Maybe Core.DateTime)
      -- | When the worker started fetching action inputs.
    , inputFetchStartTimestamp :: (Core.Maybe Core.DateTime)
      -- | When the worker finished uploading action outputs.
    , outputUploadCompletedTimestamp :: (Core.Maybe Core.DateTime)
      -- | When the worker started uploading action outputs.
    , outputUploadStartTimestamp :: (Core.Maybe Core.DateTime)
      -- | When was the action added to the queue.
    , queuedTimestamp :: (Core.Maybe Core.DateTime)
      -- | The name of the worker which ran the execution.
    , worker :: (Core.Maybe Core.Text)
      -- | When the worker completed the action, including all stages.
    , workerCompletedTimestamp :: (Core.Maybe Core.DateTime)
      -- | When the worker received the action.
    , workerStartTimestamp :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutedActionMetadata' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecutedActionMetadata 
    ::  BuildBazelRemoteExecutionV2ExecutedActionMetadata
newBuildBazelRemoteExecutionV2ExecutedActionMetadata =
  BuildBazelRemoteExecutionV2ExecutedActionMetadata
    { auxiliaryMetadata = Core.Nothing
    , executionCompletedTimestamp = Core.Nothing
    , executionStartTimestamp = Core.Nothing
    , inputFetchCompletedTimestamp = Core.Nothing
    , inputFetchStartTimestamp = Core.Nothing
    , outputUploadCompletedTimestamp = Core.Nothing
    , outputUploadStartTimestamp = Core.Nothing
    , queuedTimestamp = Core.Nothing
    , worker = Core.Nothing
    , workerCompletedTimestamp = Core.Nothing
    , workerStartTimestamp = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadata
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecutedActionMetadata"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutedActionMetadata
                   Core.<$>
                   (o Core..:? "auxiliaryMetadata") Core.<*>
                     (o Core..:? "executionCompletedTimestamp")
                     Core.<*> (o Core..:? "executionStartTimestamp")
                     Core.<*> (o Core..:? "inputFetchCompletedTimestamp")
                     Core.<*> (o Core..:? "inputFetchStartTimestamp")
                     Core.<*>
                     (o Core..:? "outputUploadCompletedTimestamp")
                     Core.<*> (o Core..:? "outputUploadStartTimestamp")
                     Core.<*> (o Core..:? "queuedTimestamp")
                     Core.<*> (o Core..:? "worker")
                     Core.<*> (o Core..:? "workerCompletedTimestamp")
                     Core.<*> (o Core..:? "workerStartTimestamp"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadata
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecutedActionMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("auxiliaryMetadata" Core..=) Core.<$>
                    auxiliaryMetadata,
                  ("executionCompletedTimestamp" Core..=) Core.<$>
                    executionCompletedTimestamp,
                  ("executionStartTimestamp" Core..=) Core.<$>
                    executionStartTimestamp,
                  ("inputFetchCompletedTimestamp" Core..=) Core.<$>
                    inputFetchCompletedTimestamp,
                  ("inputFetchStartTimestamp" Core..=) Core.<$>
                    inputFetchStartTimestamp,
                  ("outputUploadCompletedTimestamp" Core..=) Core.<$>
                    outputUploadCompletedTimestamp,
                  ("outputUploadStartTimestamp" Core..=) Core.<$>
                    outputUploadStartTimestamp,
                  ("queuedTimestamp" Core..=) Core.<$> queuedTimestamp,
                  ("worker" Core..=) Core.<$> worker,
                  ("workerCompletedTimestamp" Core..=) Core.<$>
                    workerCompletedTimestamp,
                  ("workerStartTimestamp" Core..=) Core.<$>
                    workerStartTimestamp])


--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem' smart constructor.
newtype BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem = BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
newBuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem additional =
  BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
    {additional = additional}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem{..}
          = Core.toJSON additional


-- | Capabilities of the remote execution system.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecutionCapabilities' smart constructor.
data BuildBazelRemoteExecutionV2ExecutionCapabilities = BuildBazelRemoteExecutionV2ExecutionCapabilities
    {
      -- | Remote execution may only support a single digest function.
      digestFunction :: (Core.Maybe
   BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction)
      -- | Whether remote execution is enabled for the particular server\/instance.
    , execEnabled :: (Core.Maybe Core.Bool)
      -- | Supported execution priority range.
    , executionPriorityCapabilities :: (Core.Maybe BuildBazelRemoteExecutionV2PriorityCapabilities)
      -- | Supported node properties.
    , supportedNodeProperties :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutionCapabilities' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecutionCapabilities 
    ::  BuildBazelRemoteExecutionV2ExecutionCapabilities
newBuildBazelRemoteExecutionV2ExecutionCapabilities =
  BuildBazelRemoteExecutionV2ExecutionCapabilities
    { digestFunction = Core.Nothing
    , execEnabled = Core.Nothing
    , executionPriorityCapabilities = Core.Nothing
    , supportedNodeProperties = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecutionCapabilities
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecutionCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutionCapabilities
                   Core.<$>
                   (o Core..:? "digestFunction") Core.<*>
                     (o Core..:? "execEnabled")
                     Core.<*> (o Core..:? "executionPriorityCapabilities")
                     Core.<*> (o Core..:? "supportedNodeProperties"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecutionCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2ExecutionCapabilities{..}
          = Core.object
              (Core.catMaybes
                 [("digestFunction" Core..=) Core.<$> digestFunction,
                  ("execEnabled" Core..=) Core.<$> execEnabled,
                  ("executionPriorityCapabilities" Core..=) Core.<$>
                    executionPriorityCapabilities,
                  ("supportedNodeProperties" Core..=) Core.<$>
                    supportedNodeProperties])


-- | An @ExecutionPolicy@ can be used to control the scheduling of the action.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ExecutionPolicy' smart constructor.
newtype BuildBazelRemoteExecutionV2ExecutionPolicy = BuildBazelRemoteExecutionV2ExecutionPolicy
    {
      -- | The priority (relative importance) of this action. Generally, a lower value means that the action should be run sooner than actions having a greater priority value, but the interpretation of a given value is server- dependent. A priority of 0 means the /default/ priority. Priorities may be positive or negative, and such actions should run later or sooner than actions having the default priority, respectively. The particular semantics of this field is up to the server. In particular, every server will have their own supported range of priorities, and will decide how these map into scheduling policy.
      priority :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ExecutionPolicy' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ExecutionPolicy 
    ::  BuildBazelRemoteExecutionV2ExecutionPolicy
newBuildBazelRemoteExecutionV2ExecutionPolicy =
  BuildBazelRemoteExecutionV2ExecutionPolicy {priority = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ExecutionPolicy
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ExecutionPolicy"
              (\ o ->
                 BuildBazelRemoteExecutionV2ExecutionPolicy Core.<$>
                   (o Core..:? "priority"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ExecutionPolicy
         where
        toJSON BuildBazelRemoteExecutionV2ExecutionPolicy{..}
          = Core.object
              (Core.catMaybes
                 [("priority" Core..=) Core.<$> priority])


-- | A @FileNode@ represents a single file and associated metadata.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2FileNode' smart constructor.
data BuildBazelRemoteExecutionV2FileNode = BuildBazelRemoteExecutionV2FileNode
    {
      -- | The digest of the file\'s content.
      digest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | True if file is executable, false otherwise.
    , isExecutable :: (Core.Maybe Core.Bool)
      -- | The name of the file.
    , name :: (Core.Maybe Core.Text)
      -- | 
    , nodeProperties :: (Core.Maybe BuildBazelRemoteExecutionV2NodeProperties)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2FileNode' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2FileNode 
    ::  BuildBazelRemoteExecutionV2FileNode
newBuildBazelRemoteExecutionV2FileNode =
  BuildBazelRemoteExecutionV2FileNode
    { digest = Core.Nothing
    , isExecutable = Core.Nothing
    , name = Core.Nothing
    , nodeProperties = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2FileNode
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2FileNode"
              (\ o ->
                 BuildBazelRemoteExecutionV2FileNode Core.<$>
                   (o Core..:? "digest") Core.<*>
                     (o Core..:? "isExecutable")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "nodeProperties"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2FileNode
         where
        toJSON BuildBazelRemoteExecutionV2FileNode{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("isExecutable" Core..=) Core.<$> isExecutable,
                  ("name" Core..=) Core.<$> name,
                  ("nodeProperties" Core..=) Core.<$> nodeProperties])


-- | A request message for ContentAddressableStorage.FindMissingBlobs.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2FindMissingBlobsRequest' smart constructor.
newtype BuildBazelRemoteExecutionV2FindMissingBlobsRequest = BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    {
      -- | A list of the blobs to check.
      blobDigests :: (Core.Maybe [BuildBazelRemoteExecutionV2Digest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2FindMissingBlobsRequest' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2FindMissingBlobsRequest 
    ::  BuildBazelRemoteExecutionV2FindMissingBlobsRequest
newBuildBazelRemoteExecutionV2FindMissingBlobsRequest =
  BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    {blobDigests = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsRequest
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2FindMissingBlobsRequest"
              (\ o ->
                 BuildBazelRemoteExecutionV2FindMissingBlobsRequest
                   Core.<$> (o Core..:? "blobDigests"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsRequest
         where
        toJSON
          BuildBazelRemoteExecutionV2FindMissingBlobsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("blobDigests" Core..=) Core.<$> blobDigests])


-- | A response message for ContentAddressableStorage.FindMissingBlobs.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2FindMissingBlobsResponse' smart constructor.
newtype BuildBazelRemoteExecutionV2FindMissingBlobsResponse = BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    {
      -- | A list of the blobs requested /not/ present in the storage.
      missingBlobDigests :: (Core.Maybe [BuildBazelRemoteExecutionV2Digest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2FindMissingBlobsResponse' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2FindMissingBlobsResponse 
    ::  BuildBazelRemoteExecutionV2FindMissingBlobsResponse
newBuildBazelRemoteExecutionV2FindMissingBlobsResponse =
  BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    {missingBlobDigests = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsResponse
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2FindMissingBlobsResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2FindMissingBlobsResponse
                   Core.<$> (o Core..:? "missingBlobDigests"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2FindMissingBlobsResponse
         where
        toJSON
          BuildBazelRemoteExecutionV2FindMissingBlobsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("missingBlobDigests" Core..=) Core.<$>
                    missingBlobDigests])


-- | A response message for ContentAddressableStorage.GetTree.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2GetTreeResponse' smart constructor.
data BuildBazelRemoteExecutionV2GetTreeResponse = BuildBazelRemoteExecutionV2GetTreeResponse
    {
      -- | The directories descended from the requested root.
      directories :: (Core.Maybe [BuildBazelRemoteExecutionV2Directory])
      -- | If present, signifies that there are more results which the client can retrieve by passing this as the page_token in a subsequent request. If empty, signifies that this is the last page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2GetTreeResponse' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2GetTreeResponse 
    ::  BuildBazelRemoteExecutionV2GetTreeResponse
newBuildBazelRemoteExecutionV2GetTreeResponse =
  BuildBazelRemoteExecutionV2GetTreeResponse
    {directories = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2GetTreeResponse
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2GetTreeResponse"
              (\ o ->
                 BuildBazelRemoteExecutionV2GetTreeResponse Core.<$>
                   (o Core..:? "directories") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2GetTreeResponse
         where
        toJSON BuildBazelRemoteExecutionV2GetTreeResponse{..}
          = Core.object
              (Core.catMaybes
                 [("directories" Core..=) Core.<$> directories,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A @LogFile@ is a log stored in the CAS.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2LogFile' smart constructor.
data BuildBazelRemoteExecutionV2LogFile = BuildBazelRemoteExecutionV2LogFile
    {
      -- | The digest of the log contents.
      digest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | This is a hint as to the purpose of the log, and is set to true if the log is human-readable text that can be usefully displayed to a user, and false otherwise. For instance, if a command-line client wishes to print the server logs to the terminal for a failed action, this allows it to avoid displaying a binary file.
    , humanReadable :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2LogFile' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2LogFile 
    ::  BuildBazelRemoteExecutionV2LogFile
newBuildBazelRemoteExecutionV2LogFile =
  BuildBazelRemoteExecutionV2LogFile
    {digest = Core.Nothing, humanReadable = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2LogFile
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2LogFile"
              (\ o ->
                 BuildBazelRemoteExecutionV2LogFile Core.<$>
                   (o Core..:? "digest") Core.<*>
                     (o Core..:? "humanReadable"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2LogFile
         where
        toJSON BuildBazelRemoteExecutionV2LogFile{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("humanReadable" Core..=) Core.<$> humanReadable])


-- | Node properties for FileNodes, DirectoryNodes, and SymlinkNodes. The server is responsible for specifying the properties that it accepts.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2NodeProperties' smart constructor.
data BuildBazelRemoteExecutionV2NodeProperties = BuildBazelRemoteExecutionV2NodeProperties
    {
      -- | The file\'s last modification timestamp.
      mtime :: (Core.Maybe Core.DateTime)
      -- | A list of string-based NodeProperties.
    , properties :: (Core.Maybe [BuildBazelRemoteExecutionV2NodeProperty])
      -- | The UNIX file mode, e.g., 0755.
    , unixMode :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2NodeProperties' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2NodeProperties 
    ::  BuildBazelRemoteExecutionV2NodeProperties
newBuildBazelRemoteExecutionV2NodeProperties =
  BuildBazelRemoteExecutionV2NodeProperties
    {mtime = Core.Nothing, properties = Core.Nothing, unixMode = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2NodeProperties
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2NodeProperties"
              (\ o ->
                 BuildBazelRemoteExecutionV2NodeProperties Core.<$>
                   (o Core..:? "mtime") Core.<*>
                     (o Core..:? "properties")
                     Core.<*> (o Core..:? "unixMode"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2NodeProperties
         where
        toJSON BuildBazelRemoteExecutionV2NodeProperties{..}
          = Core.object
              (Core.catMaybes
                 [("mtime" Core..=) Core.<$> mtime,
                  ("properties" Core..=) Core.<$> properties,
                  ("unixMode" Core..=) Core.<$> unixMode])


-- | A single property for FileNodes, DirectoryNodes, and SymlinkNodes. The server is responsible for specifying the property @name@s that it accepts. If permitted by the server, the same @name@ may occur multiple times.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2NodeProperty' smart constructor.
data BuildBazelRemoteExecutionV2NodeProperty = BuildBazelRemoteExecutionV2NodeProperty
    {
      -- | The property name.
      name :: (Core.Maybe Core.Text)
      -- | The property value.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2NodeProperty' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2NodeProperty 
    ::  BuildBazelRemoteExecutionV2NodeProperty
newBuildBazelRemoteExecutionV2NodeProperty =
  BuildBazelRemoteExecutionV2NodeProperty
    {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2NodeProperty
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2NodeProperty"
              (\ o ->
                 BuildBazelRemoteExecutionV2NodeProperty Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2NodeProperty
         where
        toJSON BuildBazelRemoteExecutionV2NodeProperty{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | An @OutputDirectory@ is the output in an @ActionResult@ corresponding to a directory\'s full contents rather than a single file.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2OutputDirectory' smart constructor.
data BuildBazelRemoteExecutionV2OutputDirectory = BuildBazelRemoteExecutionV2OutputDirectory
    {
      -- | The full path of the directory relative to the working directory. The path separator is a forward slash @\/@. Since this is a relative path, it MUST NOT begin with a leading forward slash. The empty string value is allowed, and it denotes the entire working directory.
      path :: (Core.Maybe Core.Text)
      -- | The digest of the encoded Tree proto containing the directory\'s contents.
    , treeDigest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2OutputDirectory' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2OutputDirectory 
    ::  BuildBazelRemoteExecutionV2OutputDirectory
newBuildBazelRemoteExecutionV2OutputDirectory =
  BuildBazelRemoteExecutionV2OutputDirectory
    {path = Core.Nothing, treeDigest = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2OutputDirectory
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2OutputDirectory"
              (\ o ->
                 BuildBazelRemoteExecutionV2OutputDirectory Core.<$>
                   (o Core..:? "path") Core.<*>
                     (o Core..:? "treeDigest"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2OutputDirectory
         where
        toJSON BuildBazelRemoteExecutionV2OutputDirectory{..}
          = Core.object
              (Core.catMaybes
                 [("path" Core..=) Core.<$> path,
                  ("treeDigest" Core..=) Core.<$> treeDigest])


-- | An @OutputFile@ is similar to a FileNode, but it is used as an output in an @ActionResult@. It allows a full file path rather than only a name.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2OutputFile' smart constructor.
data BuildBazelRemoteExecutionV2OutputFile = BuildBazelRemoteExecutionV2OutputFile
    {
      -- | The contents of the file if inlining was requested. The server SHOULD NOT inline file contents unless requested by the client in the GetActionResultRequest message. The server MAY omit inlining, even if requested, and MUST do so if inlining would cause the response to exceed message size limits.
      contents :: (Core.Maybe Core.Base64)
      -- | The digest of the file\'s content.
    , digest :: (Core.Maybe BuildBazelRemoteExecutionV2Digest)
      -- | True if file is executable, false otherwise.
    , isExecutable :: (Core.Maybe Core.Bool)
      -- | 
    , nodeProperties :: (Core.Maybe BuildBazelRemoteExecutionV2NodeProperties)
      -- | The full path of the file relative to the working directory, including the filename. The path separator is a forward slash @\/@. Since this is a relative path, it MUST NOT begin with a leading forward slash.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2OutputFile' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2OutputFile 
    ::  BuildBazelRemoteExecutionV2OutputFile
newBuildBazelRemoteExecutionV2OutputFile =
  BuildBazelRemoteExecutionV2OutputFile
    { contents = Core.Nothing
    , digest = Core.Nothing
    , isExecutable = Core.Nothing
    , nodeProperties = Core.Nothing
    , path = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2OutputFile
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2OutputFile"
              (\ o ->
                 BuildBazelRemoteExecutionV2OutputFile Core.<$>
                   (o Core..:? "contents") Core.<*>
                     (o Core..:? "digest")
                     Core.<*> (o Core..:? "isExecutable")
                     Core.<*> (o Core..:? "nodeProperties")
                     Core.<*> (o Core..:? "path"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2OutputFile
         where
        toJSON BuildBazelRemoteExecutionV2OutputFile{..}
          = Core.object
              (Core.catMaybes
                 [("contents" Core..=) Core.<$> contents,
                  ("digest" Core..=) Core.<$> digest,
                  ("isExecutable" Core..=) Core.<$> isExecutable,
                  ("nodeProperties" Core..=) Core.<$> nodeProperties,
                  ("path" Core..=) Core.<$> path])


-- | An @OutputSymlink@ is similar to a Symlink, but it is used as an output in an @ActionResult@. @OutputSymlink@ is binary-compatible with @SymlinkNode@.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2OutputSymlink' smart constructor.
data BuildBazelRemoteExecutionV2OutputSymlink = BuildBazelRemoteExecutionV2OutputSymlink
    {
      -- | 
      nodeProperties :: (Core.Maybe BuildBazelRemoteExecutionV2NodeProperties)
      -- | The full path of the symlink relative to the working directory, including the filename. The path separator is a forward slash @\/@. Since this is a relative path, it MUST NOT begin with a leading forward slash.
    , path :: (Core.Maybe Core.Text)
      -- | The target path of the symlink. The path separator is a forward slash @\/@. The target path can be relative to the parent directory of the symlink or it can be an absolute path starting with @\/@. Support for absolute paths can be checked using the Capabilities API. @..@ components are allowed anywhere in the target path.
    , target :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2OutputSymlink' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2OutputSymlink 
    ::  BuildBazelRemoteExecutionV2OutputSymlink
newBuildBazelRemoteExecutionV2OutputSymlink =
  BuildBazelRemoteExecutionV2OutputSymlink
    {nodeProperties = Core.Nothing, path = Core.Nothing, target = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2OutputSymlink
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2OutputSymlink"
              (\ o ->
                 BuildBazelRemoteExecutionV2OutputSymlink Core.<$>
                   (o Core..:? "nodeProperties") Core.<*>
                     (o Core..:? "path")
                     Core.<*> (o Core..:? "target"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2OutputSymlink
         where
        toJSON BuildBazelRemoteExecutionV2OutputSymlink{..}
          = Core.object
              (Core.catMaybes
                 [("nodeProperties" Core..=) Core.<$> nodeProperties,
                  ("path" Core..=) Core.<$> path,
                  ("target" Core..=) Core.<$> target])


-- | A @Platform@ is a set of requirements, such as hardware, operating system, or compiler toolchain, for an Action\'s execution environment. A @Platform@ is represented as a series of key-value pairs representing the properties that are required of the platform.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2Platform' smart constructor.
newtype BuildBazelRemoteExecutionV2Platform = BuildBazelRemoteExecutionV2Platform
    {
      -- | The properties that make up this platform. In order to ensure that equivalent @Platform@s always hash to the same value, the properties MUST be lexicographically sorted by name, and then by value. Sorting of strings is done by code point, equivalently, by the UTF-8 bytes.
      properties :: (Core.Maybe [BuildBazelRemoteExecutionV2PlatformProperty])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2Platform' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2Platform 
    ::  BuildBazelRemoteExecutionV2Platform
newBuildBazelRemoteExecutionV2Platform =
  BuildBazelRemoteExecutionV2Platform {properties = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2Platform
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2Platform"
              (\ o ->
                 BuildBazelRemoteExecutionV2Platform Core.<$>
                   (o Core..:? "properties"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2Platform
         where
        toJSON BuildBazelRemoteExecutionV2Platform{..}
          = Core.object
              (Core.catMaybes
                 [("properties" Core..=) Core.<$> properties])


-- | A single property for the environment. The server is responsible for specifying the property @name@s that it accepts. If an unknown @name@ is provided in the requirements for an Action, the server SHOULD reject the execution request. If permitted by the server, the same @name@ may occur multiple times. The server is also responsible for specifying the interpretation of property @value@s. For instance, a property describing how much RAM must be available may be interpreted as allowing a worker with 16GB to fulfill a request for 8GB, while a property describing the OS environment on which the action must be performed may require an exact match with the worker\'s OS. The server MAY use the @value@ of one or more properties to determine how it sets up the execution environment, such as by making specific system files available to the worker. Both names and values are typically case-sensitive. Note that the platform is implicitly part of the action digest, so even tiny changes in the names or values (like changing
-- case) may result in different action cache entries.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2PlatformProperty' smart constructor.
data BuildBazelRemoteExecutionV2PlatformProperty = BuildBazelRemoteExecutionV2PlatformProperty
    {
      -- | The property name.
      name :: (Core.Maybe Core.Text)
      -- | The property value.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2PlatformProperty' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2PlatformProperty 
    ::  BuildBazelRemoteExecutionV2PlatformProperty
newBuildBazelRemoteExecutionV2PlatformProperty =
  BuildBazelRemoteExecutionV2PlatformProperty
    {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2PlatformProperty
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2PlatformProperty"
              (\ o ->
                 BuildBazelRemoteExecutionV2PlatformProperty Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2PlatformProperty
         where
        toJSON
          BuildBazelRemoteExecutionV2PlatformProperty{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | Allowed values for priority in ResultsCachePolicy and ExecutionPolicy Used for querying both cache and execution valid priority ranges.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2PriorityCapabilities' smart constructor.
newtype BuildBazelRemoteExecutionV2PriorityCapabilities = BuildBazelRemoteExecutionV2PriorityCapabilities
    {
      -- | 
      priorities :: (Core.Maybe
   [BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2PriorityCapabilities' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2PriorityCapabilities 
    ::  BuildBazelRemoteExecutionV2PriorityCapabilities
newBuildBazelRemoteExecutionV2PriorityCapabilities =
  BuildBazelRemoteExecutionV2PriorityCapabilities {priorities = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2PriorityCapabilities
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2PriorityCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2PriorityCapabilities
                   Core.<$> (o Core..:? "priorities"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2PriorityCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2PriorityCapabilities{..}
          = Core.object
              (Core.catMaybes
                 [("priorities" Core..=) Core.<$> priorities])


-- | Supported range of priorities, including boundaries.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange' smart constructor.
data BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange = BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    {
      -- | The maximum numeric value for this priority range, which represents the least urgent task or shortest retained item.
      maxPriority :: (Core.Maybe Core.Int32)
      -- | The minimum numeric value for this priority range, which represents the most urgent task or longest retained item.
    , minPriority :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange 
    ::  BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
newBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange =
  BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    {maxPriority = Core.Nothing, minPriority = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange"
              (\ o ->
                 BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
                   Core.<$>
                   (o Core..:? "maxPriority") Core.<*>
                     (o Core..:? "minPriority"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
         where
        toJSON
          BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange{..}
          = Core.object
              (Core.catMaybes
                 [("maxPriority" Core..=) Core.<$> maxPriority,
                  ("minPriority" Core..=) Core.<$> minPriority])


-- | An optional Metadata to attach to any RPC request to tell the server about an external context of the request. The server may use this for logging or other purposes. To use it, the client attaches the header to the call using the canonical proto serialization: * name: @build.bazel.remote.execution.v2.requestmetadata-bin@ * contents: the base64 encoded binary @RequestMetadata@ message. Note: the gRPC library serializes binary headers encoded in base 64 by default (https:\/\/github.com\/grpc\/grpc\/blob\/master\/doc\/PROTOCOL-HTTP2.md#requests). Therefore, if the gRPC library is used to pass\/retrieve this metadata, the user may ignore the base64 encoding and assume it is simply serialized as a binary message.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2RequestMetadata' smart constructor.
data BuildBazelRemoteExecutionV2RequestMetadata = BuildBazelRemoteExecutionV2RequestMetadata
    {
      -- | An identifier that ties multiple requests to the same action. For example, multiple requests to the CAS, Action Cache, and Execution API are used in order to compile foo.cc.
      actionId :: (Core.Maybe Core.Text)
      -- | A brief description of the kind of action, for example, CppCompile or GoLink. There is no standard agreed set of values for this, and they are expected to vary between different client tools.
    , actionMnemonic :: (Core.Maybe Core.Text)
      -- | An identifier for the configuration in which the target was built, e.g. for differentiating building host tools or different target platforms. There is no expectation that this value will have any particular structure, or equality across invocations, though some client tools may offer these guarantees.
    , configurationId :: (Core.Maybe Core.Text)
      -- | An identifier to tie multiple tool invocations together. For example, runs of foo/test, bar/test and baz_test on a post-submit of a given patch.
    , correlatedInvocationsId :: (Core.Maybe Core.Text)
      -- | An identifier for the target which produced this action. No guarantees are made around how many actions may relate to a single target.
    , targetId :: (Core.Maybe Core.Text)
      -- | The details for the tool invoking the requests.
    , toolDetails :: (Core.Maybe BuildBazelRemoteExecutionV2ToolDetails)
      -- | An identifier that ties multiple actions together to a final result. For example, multiple actions are required to build and run foo_test.
    , toolInvocationId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2RequestMetadata' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2RequestMetadata 
    ::  BuildBazelRemoteExecutionV2RequestMetadata
newBuildBazelRemoteExecutionV2RequestMetadata =
  BuildBazelRemoteExecutionV2RequestMetadata
    { actionId = Core.Nothing
    , actionMnemonic = Core.Nothing
    , configurationId = Core.Nothing
    , correlatedInvocationsId = Core.Nothing
    , targetId = Core.Nothing
    , toolDetails = Core.Nothing
    , toolInvocationId = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2RequestMetadata
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2RequestMetadata"
              (\ o ->
                 BuildBazelRemoteExecutionV2RequestMetadata Core.<$>
                   (o Core..:? "actionId") Core.<*>
                     (o Core..:? "actionMnemonic")
                     Core.<*> (o Core..:? "configurationId")
                     Core.<*> (o Core..:? "correlatedInvocationsId")
                     Core.<*> (o Core..:? "targetId")
                     Core.<*> (o Core..:? "toolDetails")
                     Core.<*> (o Core..:? "toolInvocationId"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2RequestMetadata
         where
        toJSON BuildBazelRemoteExecutionV2RequestMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("actionId" Core..=) Core.<$> actionId,
                  ("actionMnemonic" Core..=) Core.<$> actionMnemonic,
                  ("configurationId" Core..=) Core.<$> configurationId,
                  ("correlatedInvocationsId" Core..=) Core.<$>
                    correlatedInvocationsId,
                  ("targetId" Core..=) Core.<$> targetId,
                  ("toolDetails" Core..=) Core.<$> toolDetails,
                  ("toolInvocationId" Core..=) Core.<$>
                    toolInvocationId])


-- | A @ResultsCachePolicy@ is used for fine-grained control over how action outputs are stored in the CAS and Action Cache.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ResultsCachePolicy' smart constructor.
newtype BuildBazelRemoteExecutionV2ResultsCachePolicy = BuildBazelRemoteExecutionV2ResultsCachePolicy
    {
      -- | The priority (relative importance) of this content in the overall cache. Generally, a lower value means a longer retention time or other advantage, but the interpretation of a given value is server-dependent. A priority of 0 means a /default/ value, decided by the server. The particular semantics of this field is up to the server. In particular, every server will have their own supported range of priorities, and will decide how these map into retention\/eviction policy.
      priority :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ResultsCachePolicy' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ResultsCachePolicy 
    ::  BuildBazelRemoteExecutionV2ResultsCachePolicy
newBuildBazelRemoteExecutionV2ResultsCachePolicy =
  BuildBazelRemoteExecutionV2ResultsCachePolicy {priority = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ResultsCachePolicy
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ResultsCachePolicy"
              (\ o ->
                 BuildBazelRemoteExecutionV2ResultsCachePolicy
                   Core.<$> (o Core..:? "priority"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ResultsCachePolicy
         where
        toJSON
          BuildBazelRemoteExecutionV2ResultsCachePolicy{..}
          = Core.object
              (Core.catMaybes
                 [("priority" Core..=) Core.<$> priority])


-- | A response message for Capabilities.GetCapabilities.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ServerCapabilities' smart constructor.
data BuildBazelRemoteExecutionV2ServerCapabilities = BuildBazelRemoteExecutionV2ServerCapabilities
    {
      -- | Capabilities of the remote cache system.
      cacheCapabilities :: (Core.Maybe BuildBazelRemoteExecutionV2CacheCapabilities)
      -- | Earliest RE API version supported, including deprecated versions.
    , deprecatedApiVersion :: (Core.Maybe BuildBazelSemverSemVer)
      -- | Capabilities of the remote execution system.
    , executionCapabilities :: (Core.Maybe BuildBazelRemoteExecutionV2ExecutionCapabilities)
      -- | Latest RE API version supported.
    , highApiVersion :: (Core.Maybe BuildBazelSemverSemVer)
      -- | Earliest non-deprecated RE API version supported.
    , lowApiVersion :: (Core.Maybe BuildBazelSemverSemVer)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ServerCapabilities' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ServerCapabilities 
    ::  BuildBazelRemoteExecutionV2ServerCapabilities
newBuildBazelRemoteExecutionV2ServerCapabilities =
  BuildBazelRemoteExecutionV2ServerCapabilities
    { cacheCapabilities = Core.Nothing
    , deprecatedApiVersion = Core.Nothing
    , executionCapabilities = Core.Nothing
    , highApiVersion = Core.Nothing
    , lowApiVersion = Core.Nothing
    }

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ServerCapabilities
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ServerCapabilities"
              (\ o ->
                 BuildBazelRemoteExecutionV2ServerCapabilities
                   Core.<$>
                   (o Core..:? "cacheCapabilities") Core.<*>
                     (o Core..:? "deprecatedApiVersion")
                     Core.<*> (o Core..:? "executionCapabilities")
                     Core.<*> (o Core..:? "highApiVersion")
                     Core.<*> (o Core..:? "lowApiVersion"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ServerCapabilities
         where
        toJSON
          BuildBazelRemoteExecutionV2ServerCapabilities{..}
          = Core.object
              (Core.catMaybes
                 [("cacheCapabilities" Core..=) Core.<$>
                    cacheCapabilities,
                  ("deprecatedApiVersion" Core..=) Core.<$>
                    deprecatedApiVersion,
                  ("executionCapabilities" Core..=) Core.<$>
                    executionCapabilities,
                  ("highApiVersion" Core..=) Core.<$> highApiVersion,
                  ("lowApiVersion" Core..=) Core.<$> lowApiVersion])


-- | A @SymlinkNode@ represents a symbolic link.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2SymlinkNode' smart constructor.
data BuildBazelRemoteExecutionV2SymlinkNode = BuildBazelRemoteExecutionV2SymlinkNode
    {
      -- | The name of the symlink.
      name :: (Core.Maybe Core.Text)
      -- | 
    , nodeProperties :: (Core.Maybe BuildBazelRemoteExecutionV2NodeProperties)
      -- | The target path of the symlink. The path separator is a forward slash @\/@. The target path can be relative to the parent directory of the symlink or it can be an absolute path starting with @\/@. Support for absolute paths can be checked using the Capabilities API. @..@ components are allowed anywhere in the target path as logical canonicalization may lead to different behavior in the presence of directory symlinks (e.g. @foo\/..\/bar@ may not be the same as @bar@). To reduce potential cache misses, canonicalization is still recommended where this is possible without impacting correctness.
    , target :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2SymlinkNode' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2SymlinkNode 
    ::  BuildBazelRemoteExecutionV2SymlinkNode
newBuildBazelRemoteExecutionV2SymlinkNode =
  BuildBazelRemoteExecutionV2SymlinkNode
    {name = Core.Nothing, nodeProperties = Core.Nothing, target = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2SymlinkNode
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2SymlinkNode"
              (\ o ->
                 BuildBazelRemoteExecutionV2SymlinkNode Core.<$>
                   (o Core..:? "name") Core.<*>
                     (o Core..:? "nodeProperties")
                     Core.<*> (o Core..:? "target"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2SymlinkNode
         where
        toJSON BuildBazelRemoteExecutionV2SymlinkNode{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("nodeProperties" Core..=) Core.<$> nodeProperties,
                  ("target" Core..=) Core.<$> target])


-- | Details for the tool used to call the API.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2ToolDetails' smart constructor.
data BuildBazelRemoteExecutionV2ToolDetails = BuildBazelRemoteExecutionV2ToolDetails
    {
      -- | Name of the tool, e.g. bazel.
      toolName :: (Core.Maybe Core.Text)
      -- | Version of the tool used for the request, e.g. 5.0.3.
    , toolVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2ToolDetails' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2ToolDetails 
    ::  BuildBazelRemoteExecutionV2ToolDetails
newBuildBazelRemoteExecutionV2ToolDetails =
  BuildBazelRemoteExecutionV2ToolDetails
    {toolName = Core.Nothing, toolVersion = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2ToolDetails
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2ToolDetails"
              (\ o ->
                 BuildBazelRemoteExecutionV2ToolDetails Core.<$>
                   (o Core..:? "toolName") Core.<*>
                     (o Core..:? "toolVersion"))

instance Core.ToJSON
           BuildBazelRemoteExecutionV2ToolDetails
         where
        toJSON BuildBazelRemoteExecutionV2ToolDetails{..}
          = Core.object
              (Core.catMaybes
                 [("toolName" Core..=) Core.<$> toolName,
                  ("toolVersion" Core..=) Core.<$> toolVersion])


-- | A @Tree@ contains all the Directory protos in a single directory Merkle tree, compressed into one message.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2Tree' smart constructor.
data BuildBazelRemoteExecutionV2Tree = BuildBazelRemoteExecutionV2Tree
    {
      -- | All the child directories: the directories referred to by the root and, recursively, all its children. In order to reconstruct the directory tree, the client must take the digests of each of the child directories and then build up a tree starting from the @root@.
      children :: (Core.Maybe [BuildBazelRemoteExecutionV2Directory])
      -- | The root directory in the tree.
    , root :: (Core.Maybe BuildBazelRemoteExecutionV2Directory)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2Tree' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2Tree 
    ::  BuildBazelRemoteExecutionV2Tree
newBuildBazelRemoteExecutionV2Tree =
  BuildBazelRemoteExecutionV2Tree {children = Core.Nothing, root = Core.Nothing}

instance Core.FromJSON
           BuildBazelRemoteExecutionV2Tree
         where
        parseJSON
          = Core.withObject "BuildBazelRemoteExecutionV2Tree"
              (\ o ->
                 BuildBazelRemoteExecutionV2Tree Core.<$>
                   (o Core..:? "children") Core.<*> (o Core..:? "root"))

instance Core.ToJSON BuildBazelRemoteExecutionV2Tree
         where
        toJSON BuildBazelRemoteExecutionV2Tree{..}
          = Core.object
              (Core.catMaybes
                 [("children" Core..=) Core.<$> children,
                  ("root" Core..=) Core.<$> root])


-- | A request message for WaitExecution.
--
-- /See:/ 'newBuildBazelRemoteExecutionV2WaitExecutionRequest' smart constructor.
data BuildBazelRemoteExecutionV2WaitExecutionRequest = BuildBazelRemoteExecutionV2WaitExecutionRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelRemoteExecutionV2WaitExecutionRequest' with the minimum fields required to make a request.
newBuildBazelRemoteExecutionV2WaitExecutionRequest 
    ::  BuildBazelRemoteExecutionV2WaitExecutionRequest
newBuildBazelRemoteExecutionV2WaitExecutionRequest =
  BuildBazelRemoteExecutionV2WaitExecutionRequest

instance Core.FromJSON
           BuildBazelRemoteExecutionV2WaitExecutionRequest
         where
        parseJSON
          = Core.withObject
              "BuildBazelRemoteExecutionV2WaitExecutionRequest"
              (\ o ->
                 Core.pure
                   BuildBazelRemoteExecutionV2WaitExecutionRequest)

instance Core.ToJSON
           BuildBazelRemoteExecutionV2WaitExecutionRequest
         where
        toJSON = Core.const Core.emptyObject


-- | The full version of a given tool.
--
-- /See:/ 'newBuildBazelSemverSemVer' smart constructor.
data BuildBazelSemverSemVer = BuildBazelSemverSemVer
    {
      -- | The major version, e.g 10 for 10.2.3.
      major :: (Core.Maybe Core.Int32)
      -- | The minor version, e.g. 2 for 10.2.3.
    , minor :: (Core.Maybe Core.Int32)
      -- | The patch version, e.g 3 for 10.2.3.
    , patch :: (Core.Maybe Core.Int32)
      -- | The pre-release version. Either this field or major\/minor\/patch fields must be filled. They are mutually exclusive. Pre-release versions are assumed to be earlier than any released versions.
    , prerelease :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildBazelSemverSemVer' with the minimum fields required to make a request.
newBuildBazelSemverSemVer 
    ::  BuildBazelSemverSemVer
newBuildBazelSemverSemVer =
  BuildBazelSemverSemVer
    { major = Core.Nothing
    , minor = Core.Nothing
    , patch = Core.Nothing
    , prerelease = Core.Nothing
    }

instance Core.FromJSON BuildBazelSemverSemVer where
        parseJSON
          = Core.withObject "BuildBazelSemverSemVer"
              (\ o ->
                 BuildBazelSemverSemVer Core.<$>
                   (o Core..:? "major") Core.<*> (o Core..:? "minor")
                     Core.<*> (o Core..:? "patch")
                     Core.<*> (o Core..:? "prerelease"))

instance Core.ToJSON BuildBazelSemverSemVer where
        toJSON BuildBazelSemverSemVer{..}
          = Core.object
              (Core.catMaybes
                 [("major" Core..=) Core.<$> major,
                  ("minor" Core..=) Core.<$> minor,
                  ("patch" Core..=) Core.<$> patch,
                  ("prerelease" Core..=) Core.<$> prerelease])


-- | CommandDuration contains the various duration metrics tracked when a bot performs a command.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildbotCommandDurations' smart constructor.
data GoogleDevtoolsRemotebuildbotCommandDurations = GoogleDevtoolsRemotebuildbotCommandDurations
    {
      -- | The time spent to release the CAS blobs used by the task.
      casRelease :: (Core.Maybe Core.Duration)
      -- | The time spent waiting for Container Manager to assign an asynchronous container for execution.
    , cmWaitForAssignment :: (Core.Maybe Core.Duration)
      -- | The time spent preparing the command to be run in a Docker container (includes pulling the Docker image, if necessary).
    , dockerPrep :: (Core.Maybe Core.Duration)
      -- | The timestamp when docker preparation begins.
    , dockerPrepStartTime :: (Core.Maybe Core.DateTime)
      -- | The time spent downloading the input files and constructing the working directory.
    , download :: (Core.Maybe Core.Duration)
      -- | The timestamp when downloading the input files begins.
    , downloadStartTime :: (Core.Maybe Core.DateTime)
      -- | The timestamp when execution begins.
    , execStartTime :: (Core.Maybe Core.DateTime)
      -- | The time spent executing the command (i.e., doing useful work).
    , execution :: (Core.Maybe Core.Duration)
      -- | The timestamp when preparation is done and bot starts downloading files.
    , isoPrepDone :: (Core.Maybe Core.DateTime)
      -- | The time spent completing the command, in total.
    , overall :: (Core.Maybe Core.Duration)
      -- | The time spent uploading the stdout logs.
    , stdout :: (Core.Maybe Core.Duration)
      -- | The time spent uploading the output files.
    , upload :: (Core.Maybe Core.Duration)
      -- | The timestamp when uploading the output files begins.
    , uploadStartTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildbotCommandDurations' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildbotCommandDurations 
    ::  GoogleDevtoolsRemotebuildbotCommandDurations
newGoogleDevtoolsRemotebuildbotCommandDurations =
  GoogleDevtoolsRemotebuildbotCommandDurations
    { casRelease = Core.Nothing
    , cmWaitForAssignment = Core.Nothing
    , dockerPrep = Core.Nothing
    , dockerPrepStartTime = Core.Nothing
    , download = Core.Nothing
    , downloadStartTime = Core.Nothing
    , execStartTime = Core.Nothing
    , execution = Core.Nothing
    , isoPrepDone = Core.Nothing
    , overall = Core.Nothing
    , stdout = Core.Nothing
    , upload = Core.Nothing
    , uploadStartTime = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildbotCommandDurations
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildbotCommandDurations"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotCommandDurations Core.<$>
                   (o Core..:? "casRelease") Core.<*>
                     (o Core..:? "cmWaitForAssignment")
                     Core.<*> (o Core..:? "dockerPrep")
                     Core.<*> (o Core..:? "dockerPrepStartTime")
                     Core.<*> (o Core..:? "download")
                     Core.<*> (o Core..:? "downloadStartTime")
                     Core.<*> (o Core..:? "execStartTime")
                     Core.<*> (o Core..:? "execution")
                     Core.<*> (o Core..:? "isoPrepDone")
                     Core.<*> (o Core..:? "overall")
                     Core.<*> (o Core..:? "stdout")
                     Core.<*> (o Core..:? "upload")
                     Core.<*> (o Core..:? "uploadStartTime"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildbotCommandDurations
         where
        toJSON
          GoogleDevtoolsRemotebuildbotCommandDurations{..}
          = Core.object
              (Core.catMaybes
                 [("casRelease" Core..=) Core.<$> casRelease,
                  ("cmWaitForAssignment" Core..=) Core.<$>
                    cmWaitForAssignment,
                  ("dockerPrep" Core..=) Core.<$> dockerPrep,
                  ("dockerPrepStartTime" Core..=) Core.<$>
                    dockerPrepStartTime,
                  ("download" Core..=) Core.<$> download,
                  ("downloadStartTime" Core..=) Core.<$>
                    downloadStartTime,
                  ("execStartTime" Core..=) Core.<$> execStartTime,
                  ("execution" Core..=) Core.<$> execution,
                  ("isoPrepDone" Core..=) Core.<$> isoPrepDone,
                  ("overall" Core..=) Core.<$> overall,
                  ("stdout" Core..=) Core.<$> stdout,
                  ("upload" Core..=) Core.<$> upload,
                  ("uploadStartTime" Core..=) Core.<$>
                    uploadStartTime])


-- | CommandEvents contains counters for the number of warnings and errors that occurred during the execution of a command.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildbotCommandEvents' smart constructor.
data GoogleDevtoolsRemotebuildbotCommandEvents = GoogleDevtoolsRemotebuildbotCommandEvents
    {
      -- | Indicates if and how Container Manager is being used for task execution.
      cmUsage :: (Core.Maybe GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage)
      -- | Indicates whether we are using a cached Docker image (true) or had to pull the Docker image (false) for this command.
    , dockerCacheHit :: (Core.Maybe Core.Bool)
      -- | Docker Image name.
    , dockerImageName :: (Core.Maybe Core.Text)
      -- | The input cache miss ratio.
    , inputCacheMiss :: (Core.Maybe Core.Double)
      -- | The number of errors reported.
    , numErrors :: (Core.Maybe Core.Word64)
      -- | The number of warnings reported.
    , numWarnings :: (Core.Maybe Core.Word64)
      -- | Indicates whether output files and\/or output directories were found relative to the execution root or to the user provided work directory or both or none.
    , outputLocation :: (Core.Maybe
   GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation)
      -- | Indicates whether an asynchronous container was used for execution.
    , usedAsyncContainer :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildbotCommandEvents' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildbotCommandEvents 
    ::  GoogleDevtoolsRemotebuildbotCommandEvents
newGoogleDevtoolsRemotebuildbotCommandEvents =
  GoogleDevtoolsRemotebuildbotCommandEvents
    { cmUsage = Core.Nothing
    , dockerCacheHit = Core.Nothing
    , dockerImageName = Core.Nothing
    , inputCacheMiss = Core.Nothing
    , numErrors = Core.Nothing
    , numWarnings = Core.Nothing
    , outputLocation = Core.Nothing
    , usedAsyncContainer = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildbotCommandEvents
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildbotCommandEvents"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotCommandEvents Core.<$>
                   (o Core..:? "cmUsage") Core.<*>
                     (o Core..:? "dockerCacheHit")
                     Core.<*> (o Core..:? "dockerImageName")
                     Core.<*> (o Core..:? "inputCacheMiss")
                     Core.<*>
                     (o Core..:? "numErrors" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "numWarnings" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "outputLocation")
                     Core.<*> (o Core..:? "usedAsyncContainer"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildbotCommandEvents
         where
        toJSON GoogleDevtoolsRemotebuildbotCommandEvents{..}
          = Core.object
              (Core.catMaybes
                 [("cmUsage" Core..=) Core.<$> cmUsage,
                  ("dockerCacheHit" Core..=) Core.<$> dockerCacheHit,
                  ("dockerImageName" Core..=) Core.<$> dockerImageName,
                  ("inputCacheMiss" Core..=) Core.<$> inputCacheMiss,
                  ("numErrors" Core..=) Core.. Core.AsText Core.<$>
                    numErrors,
                  ("numWarnings" Core..=) Core.. Core.AsText Core.<$>
                    numWarnings,
                  ("outputLocation" Core..=) Core.<$> outputLocation,
                  ("usedAsyncContainer" Core..=) Core.<$>
                    usedAsyncContainer])


-- | The internal status of the command result.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildbotCommandStatus' smart constructor.
data GoogleDevtoolsRemotebuildbotCommandStatus = GoogleDevtoolsRemotebuildbotCommandStatus
    {
      -- | The status code.
      code :: (Core.Maybe GoogleDevtoolsRemotebuildbotCommandStatus_Code)
      -- | The error message.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildbotCommandStatus' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildbotCommandStatus 
    ::  GoogleDevtoolsRemotebuildbotCommandStatus
newGoogleDevtoolsRemotebuildbotCommandStatus =
  GoogleDevtoolsRemotebuildbotCommandStatus
    {code = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildbotCommandStatus
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildbotCommandStatus"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotCommandStatus Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "message"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildbotCommandStatus
         where
        toJSON GoogleDevtoolsRemotebuildbotCommandStatus{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("message" Core..=) Core.<$> message])


-- | ResourceUsage is the system resource usage of the host machine.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildbotResourceUsage' smart constructor.
data GoogleDevtoolsRemotebuildbotResourceUsage = GoogleDevtoolsRemotebuildbotResourceUsage
    {
      -- | 
      cpuUsedPercent :: (Core.Maybe Core.Double)
      -- | 
    , diskUsage :: (Core.Maybe GoogleDevtoolsRemotebuildbotResourceUsageStat)
      -- | 
    , memoryUsage :: (Core.Maybe GoogleDevtoolsRemotebuildbotResourceUsageStat)
      -- | 
    , totalDiskIoStats :: (Core.Maybe GoogleDevtoolsRemotebuildbotResourceUsageIOStats)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildbotResourceUsage' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildbotResourceUsage 
    ::  GoogleDevtoolsRemotebuildbotResourceUsage
newGoogleDevtoolsRemotebuildbotResourceUsage =
  GoogleDevtoolsRemotebuildbotResourceUsage
    { cpuUsedPercent = Core.Nothing
    , diskUsage = Core.Nothing
    , memoryUsage = Core.Nothing
    , totalDiskIoStats = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildbotResourceUsage
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildbotResourceUsage"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotResourceUsage Core.<$>
                   (o Core..:? "cpuUsedPercent") Core.<*>
                     (o Core..:? "diskUsage")
                     Core.<*> (o Core..:? "memoryUsage")
                     Core.<*> (o Core..:? "totalDiskIoStats"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildbotResourceUsage
         where
        toJSON GoogleDevtoolsRemotebuildbotResourceUsage{..}
          = Core.object
              (Core.catMaybes
                 [("cpuUsedPercent" Core..=) Core.<$> cpuUsedPercent,
                  ("diskUsage" Core..=) Core.<$> diskUsage,
                  ("memoryUsage" Core..=) Core.<$> memoryUsage,
                  ("totalDiskIoStats" Core..=) Core.<$>
                    totalDiskIoStats])


--
-- /See:/ 'newGoogleDevtoolsRemotebuildbotResourceUsageIOStats' smart constructor.
data GoogleDevtoolsRemotebuildbotResourceUsageIOStats = GoogleDevtoolsRemotebuildbotResourceUsageIOStats
    {
      -- | 
      readBytesCount :: (Core.Maybe Core.Word64)
      -- | 
    , readCount :: (Core.Maybe Core.Word64)
      -- | 
    , readTimeMs :: (Core.Maybe Core.Word64)
      -- | 
    , writeBytesCount :: (Core.Maybe Core.Word64)
      -- | 
    , writeCount :: (Core.Maybe Core.Word64)
      -- | 
    , writeTimeMs :: (Core.Maybe Core.Word64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildbotResourceUsageIOStats' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildbotResourceUsageIOStats 
    ::  GoogleDevtoolsRemotebuildbotResourceUsageIOStats
newGoogleDevtoolsRemotebuildbotResourceUsageIOStats =
  GoogleDevtoolsRemotebuildbotResourceUsageIOStats
    { readBytesCount = Core.Nothing
    , readCount = Core.Nothing
    , readTimeMs = Core.Nothing
    , writeBytesCount = Core.Nothing
    , writeCount = Core.Nothing
    , writeTimeMs = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildbotResourceUsageIOStats
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildbotResourceUsageIOStats"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotResourceUsageIOStats
                   Core.<$>
                   (o Core..:? "readBytesCount" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "readCount" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "readTimeMs" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "writeBytesCount" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "writeCount" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "writeTimeMs" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildbotResourceUsageIOStats
         where
        toJSON
          GoogleDevtoolsRemotebuildbotResourceUsageIOStats{..}
          = Core.object
              (Core.catMaybes
                 [("readBytesCount" Core..=) Core.. Core.AsText
                    Core.<$> readBytesCount,
                  ("readCount" Core..=) Core.. Core.AsText Core.<$>
                    readCount,
                  ("readTimeMs" Core..=) Core.. Core.AsText Core.<$>
                    readTimeMs,
                  ("writeBytesCount" Core..=) Core.. Core.AsText
                    Core.<$> writeBytesCount,
                  ("writeCount" Core..=) Core.. Core.AsText Core.<$>
                    writeCount,
                  ("writeTimeMs" Core..=) Core.. Core.AsText Core.<$>
                    writeTimeMs])


--
-- /See:/ 'newGoogleDevtoolsRemotebuildbotResourceUsageStat' smart constructor.
data GoogleDevtoolsRemotebuildbotResourceUsageStat = GoogleDevtoolsRemotebuildbotResourceUsageStat
    {
      -- | 
      total :: (Core.Maybe Core.Word64)
      -- | 
    , used :: (Core.Maybe Core.Word64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildbotResourceUsageStat' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildbotResourceUsageStat 
    ::  GoogleDevtoolsRemotebuildbotResourceUsageStat
newGoogleDevtoolsRemotebuildbotResourceUsageStat =
  GoogleDevtoolsRemotebuildbotResourceUsageStat
    {total = Core.Nothing, used = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildbotResourceUsageStat
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildbotResourceUsageStat"
              (\ o ->
                 GoogleDevtoolsRemotebuildbotResourceUsageStat
                   Core.<$>
                   (o Core..:? "total" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "used" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildbotResourceUsageStat
         where
        toJSON
          GoogleDevtoolsRemotebuildbotResourceUsageStat{..}
          = Core.object
              (Core.catMaybes
                 [("total" Core..=) Core.. Core.AsText Core.<$> total,
                  ("used" Core..=) Core.. Core.AsText Core.<$> used])


-- | AcceleratorConfig defines the accelerator cards to attach to the VM.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig = GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    {
      -- | The number of guest accelerator cards exposed to each VM.
      acceleratorCount :: (Core.Maybe Core.Int64)
      -- | The type of accelerator to attach to each VM, e.g. \"nvidia-tesla-k80\" for nVidia Tesla K80.
    , acceleratorType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    {acceleratorCount = Core.Nothing, acceleratorType = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
                   Core.<$>
                   (o Core..:? "acceleratorCount" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "acceleratorType"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig{..}
          = Core.object
              (Core.catMaybes
                 [("acceleratorCount" Core..=) Core.. Core.AsText
                    Core.<$> acceleratorCount,
                  ("acceleratorType" Core..=) Core.<$>
                    acceleratorType])


-- | Autoscale defines the autoscaling policy of a worker pool.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale = GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    {
      -- | The maximal number of workers. Must be equal to or greater than min_size.
      maxSize :: (Core.Maybe Core.Int64)
      -- | The minimal number of workers. Must be greater than 0.
    , minSize :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    {maxSize = Core.Nothing, minSize = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
                   Core.<$>
                   (o Core..:? "maxSize" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "minSize" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale{..}
          = Core.object
              (Core.catMaybes
                 [("maxSize" Core..=) Core.. Core.AsText Core.<$>
                    maxSize,
                  ("minSize" Core..=) Core.. Core.AsText Core.<$>
                    minSize])


-- | The request used for @CreateInstance@.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    {
      -- | Specifies the instance to create. The name in the instance, if specified in the instance, is ignored.
      instance' :: (Core.Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance)
      -- | ID of the created instance. A valid @instance_id@ must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
    , instanceId :: (Core.Maybe Core.Text)
      -- | Resource name of the project containing the instance. Format: @projects\/[PROJECT_ID]@.
    , parent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    {instance' = Core.Nothing, instanceId = Core.Nothing, parent = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
                   Core.<$>
                   (o Core..:? "instance") Core.<*>
                     (o Core..:? "instanceId")
                     Core.<*> (o Core..:? "parent"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("instance" Core..=) Core.<$> instance',
                  ("instanceId" Core..=) Core.<$> instanceId,
                  ("parent" Core..=) Core.<$> parent])


-- | The request used for @CreateWorkerPool@.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    {
      -- | Resource name of the instance in which to create the new worker pool. Format: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]@.
      parent :: (Core.Maybe Core.Text)
      -- | ID of the created worker pool. A valid pool ID must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
    , poolId :: (Core.Maybe Core.Text)
      -- | Specifies the worker pool to create. The name in the worker pool, if specified, is ignored.
    , workerPool :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    {parent = Core.Nothing, poolId = Core.Nothing, workerPool = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
                   Core.<$>
                   (o Core..:? "parent") Core.<*> (o Core..:? "poolId")
                     Core.<*> (o Core..:? "workerPool"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest{..}
          = Core.object
              (Core.catMaybes
                 [("parent" Core..=) Core.<$> parent,
                  ("poolId" Core..=) Core.<$> poolId,
                  ("workerPool" Core..=) Core.<$> workerPool])


-- | The request used for @DeleteInstance@.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    {
      -- | Name of the instance to delete. Format: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]@.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    {name = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
                   Core.<$> (o Core..:? "name"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | The request used for DeleteWorkerPool.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    {
      -- | Name of the worker pool to delete. Format: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\/workerpools\/[POOL_ID]@.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    {name = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
                   Core.<$> (o Core..:? "name"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | FeaturePolicy defines features allowed to be used on RBE instances, as well as instance-wide behavior changes that take effect without opt-in or opt-out at usage time.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    {
      -- | Which container image sources are allowed. Currently only RBE-supported registry (gcr.io) is allowed. One can allow all repositories under a project or one specific repository only. E.g. container/image/sources { policy: RESTRICTED allowed_values: [ \"gcr.io\/project-foo\", \"gcr.io\/project-bar\/repo-baz\", ] } will allow any repositories under \"gcr.io\/project-foo\" plus the repository \"gcr.io\/project-bar\/repo-baz\". Default (UNSPECIFIED) is equivalent to any source is allowed.
      containerImageSources :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | Whether dockerAddCapabilities can be used or what capabilities are allowed.
    , dockerAddCapabilities :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | Whether dockerChrootPath can be used.
    , dockerChrootPath :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | Whether dockerNetwork can be used or what network modes are allowed. E.g. one may allow @off@ value only via @allowed_values@.
    , dockerNetwork :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | Whether dockerPrivileged can be used.
    , dockerPrivileged :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | Whether dockerRunAsRoot can be used.
    , dockerRunAsRoot :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | Whether dockerRuntime is allowed to be set or what runtimes are allowed. Note linux/isolation takes precedence, and if set, docker/runtime values may be rejected if they are incompatible with the selected isolation.
    , dockerRuntime :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | Whether dockerSiblingContainers can be used.
    , dockerSiblingContainers :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature)
      -- | linux_isolation allows overriding the docker runtime used for containers started on Linux.
    , linuxIsolation :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    { containerImageSources = Core.Nothing
    , dockerAddCapabilities = Core.Nothing
    , dockerChrootPath = Core.Nothing
    , dockerNetwork = Core.Nothing
    , dockerPrivileged = Core.Nothing
    , dockerRunAsRoot = Core.Nothing
    , dockerRuntime = Core.Nothing
    , dockerSiblingContainers = Core.Nothing
    , linuxIsolation = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
                   Core.<$>
                   (o Core..:? "containerImageSources") Core.<*>
                     (o Core..:? "dockerAddCapabilities")
                     Core.<*> (o Core..:? "dockerChrootPath")
                     Core.<*> (o Core..:? "dockerNetwork")
                     Core.<*> (o Core..:? "dockerPrivileged")
                     Core.<*> (o Core..:? "dockerRunAsRoot")
                     Core.<*> (o Core..:? "dockerRuntime")
                     Core.<*> (o Core..:? "dockerSiblingContainers")
                     Core.<*> (o Core..:? "linuxIsolation"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy{..}
          = Core.object
              (Core.catMaybes
                 [("containerImageSources" Core..=) Core.<$>
                    containerImageSources,
                  ("dockerAddCapabilities" Core..=) Core.<$>
                    dockerAddCapabilities,
                  ("dockerChrootPath" Core..=) Core.<$>
                    dockerChrootPath,
                  ("dockerNetwork" Core..=) Core.<$> dockerNetwork,
                  ("dockerPrivileged" Core..=) Core.<$>
                    dockerPrivileged,
                  ("dockerRunAsRoot" Core..=) Core.<$> dockerRunAsRoot,
                  ("dockerRuntime" Core..=) Core.<$> dockerRuntime,
                  ("dockerSiblingContainers" Core..=) Core.<$>
                    dockerSiblingContainers,
                  ("linuxIsolation" Core..=) Core.<$> linuxIsolation])


-- | Defines whether a feature can be used or what values are accepted.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature = GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    {
      -- | A list of acceptable values. Only effective when the policy is @RESTRICTED@.
      allowedValues :: (Core.Maybe [Core.Text])
      -- | The policy of the feature.
    , policy :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    {allowedValues = Core.Nothing, policy = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
                   Core.<$>
                   (o Core..:? "allowedValues") Core.<*>
                     (o Core..:? "policy"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature{..}
          = Core.object
              (Core.catMaybes
                 [("allowedValues" Core..=) Core.<$> allowedValues,
                  ("policy" Core..=) Core.<$> policy])


-- | The request used for @GetInstance@.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    {
      -- | Name of the instance to retrieve. Format: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]@.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    {name = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
                   Core.<$> (o Core..:? "name"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | The request used for GetWorkerPool.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    {
      -- | Name of the worker pool to retrieve. Format: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\/workerpools\/[POOL_ID]@.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    {name = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
                   Core.<$> (o Core..:? "name"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | Instance conceptually encapsulates all Remote Build Execution resources for remote builds. An instance consists of storage and compute resources (for example, @ContentAddressableStorage@, @ActionCache@, @WorkerPools@) used for running remote builds. All Remote Build Execution API calls are scoped to an instance.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance = GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    {
      -- | The policy to define whether or not RBE features can be used or how they can be used.
      featurePolicy :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy)
      -- | The location is a GCP region. Currently only @us-central1@ is supported.
    , location :: (Core.Maybe Core.Text)
      -- | Output only. Whether stack driver logging is enabled for the instance.
    , loggingEnabled :: (Core.Maybe Core.Bool)
      -- | Output only. Instance resource name formatted as: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]@. Name should not be populated when creating an instance since it is provided in the @instance_id@ field.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. State of the instance.
    , state :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    { featurePolicy = Core.Nothing
    , location = Core.Nothing
    , loggingEnabled = Core.Nothing
    , name = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
                   Core.<$>
                   (o Core..:? "featurePolicy") Core.<*>
                     (o Core..:? "location")
                     Core.<*> (o Core..:? "loggingEnabled")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance{..}
          = Core.object
              (Core.catMaybes
                 [("featurePolicy" Core..=) Core.<$> featurePolicy,
                  ("location" Core..=) Core.<$> location,
                  ("loggingEnabled" Core..=) Core.<$> loggingEnabled,
                  ("name" Core..=) Core.<$> name,
                  ("state" Core..=) Core.<$> state])


--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    {
      -- | Resource name of the project. Format: @projects\/[PROJECT_ID]@.
      parent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    {parent = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
                   Core.<$> (o Core..:? "parent"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest{..}
          = Core.object
              (Core.catMaybes [("parent" Core..=) Core.<$> parent])


--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse = GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    {
      -- | The list of instances in a given project.
      instances :: (Core.Maybe
   [GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    {instances = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
                   Core.<$> (o Core..:? "instances"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("instances" Core..=) Core.<$> instances])


--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    {
      -- | Optional. A filter expression that filters resources listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. String values are case-insensitive. The comparison operator must be either @:@, @=@, @!=@, @>@, @>=@, @\<=@ or @\<@. The @:@ operator can be used with string fields to match substrings. For non-string fields it is equivalent to the @=@ operator. The @:*@ comparison can be used to test whether a key has been defined. You can also filter on nested fields. To filter on multiple expressions, you can separate expression using @AND@ and @OR@ operators, using parentheses to specify precedence. If neither operator is specified, @AND@ is assumed. Examples: Include only pools with more than 100 reserved workers: @(worker_count > 100) (worker_config.reserved = true)@ Include only pools with a certain label or machines of the e2-standard family:
      -- @worker_config.labels.key1 : * OR worker_config.machine_type: e2-standard@
      filter :: (Core.Maybe Core.Text)
      -- | Resource name of the instance. Format: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]@.
    , parent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    {filter = Core.Nothing, parent = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
                   Core.<$>
                   (o Core..:? "filter") Core.<*> (o Core..:? "parent"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("filter" Core..=) Core.<$> filter,
                  ("parent" Core..=) Core.<$> parent])


--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse = GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    {
      -- | The list of worker pools in a given instance.
      workerPools :: (Core.Maybe
   [GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    {workerPools = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
                   Core.<$> (o Core..:? "workerPools"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("workerPools" Core..=) Core.<$> workerPools])


-- | The request used for @UpdateInstance@.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    {
      -- | Specifies the instance to update.
      instance' :: (Core.Maybe GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance)
      -- | Deprecated, use instance.logging_enabled instead. Whether to enable Stackdriver logging for this instance.
    , loggingEnabled :: (Core.Maybe Core.Bool)
      -- | Deprecated, use instance.Name instead. Name of the instance to update. Format: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]@.
    , name :: (Core.Maybe Core.Text)
      -- | The update mask applies to instance. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask If an empty update/mask is provided, only the non-default valued field in the worker pool field will be updated. Note that in order to update a field to the default value (zero, false, empty string) an explicit update/mask must be provided.
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    { instance' = Core.Nothing
    , loggingEnabled = Core.Nothing
    , name = Core.Nothing
    , updateMask = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
                   Core.<$>
                   (o Core..:? "instance") Core.<*>
                     (o Core..:? "loggingEnabled")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "updateMask"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("instance" Core..=) Core.<$> instance',
                  ("loggingEnabled" Core..=) Core.<$> loggingEnabled,
                  ("name" Core..=) Core.<$> name,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | The request used for UpdateWorkerPool.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest = GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    {
      -- | The update mask applies to worker/pool. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask If an empty update/mask is provided, only the non-default valued field in the worker pool field will be updated. Note that in order to update a field to the default value (zero, false, empty string) an explicit update_mask must be provided.
      updateMask :: (Core.Maybe Core.FieldMask)
      -- | Specifies the worker pool to update.
    , workerPool :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    {updateMask = Core.Nothing, workerPool = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
                   Core.<$>
                   (o Core..:? "updateMask") Core.<*>
                     (o Core..:? "workerPool"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest{..}
          = Core.object
              (Core.catMaybes
                 [("updateMask" Core..=) Core.<$> updateMask,
                  ("workerPool" Core..=) Core.<$> workerPool])


-- | Defines the configuration to be used for creating workers in the worker pool.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    {
      -- | The accelerator card attached to each VM.
      accelerator :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig)
      -- | Required. Size of the disk attached to the worker, in GB. See https:\/\/cloud.google.com\/compute\/docs\/disks\/
    , diskSizeGb :: (Core.Maybe Core.Int64)
      -- | Required. Disk Type to use for the worker. See <https://cloud.google.com/compute/docs/disks/#introduction Storage options>. Currently only @pd-standard@ and @pd-ssd@ are supported.
    , diskType :: (Core.Maybe Core.Text)
      -- | Labels associated with the workers. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International letters are permitted. Label keys must start with a letter. Label values are optional. There can not be more than 64 labels per resource.
    , labels :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels)
      -- | Required. Machine type of the worker, such as @e2-standard-2@. See https:\/\/cloud.google.com\/compute\/docs\/machine-types for a list of supported machine types. Note that @f1-micro@ and @g1-small@ are not yet supported.
    , machineType :: (Core.Maybe Core.Text)
      -- | The maximum number of actions a worker can execute concurrently.
    , maxConcurrentActions :: (Core.Maybe Core.Int64)
      -- | Minimum CPU platform to use when creating the worker. See <https://cloud.google.com/compute/docs/cpu-platforms CPU Platforms>.
    , minCpuPlatform :: (Core.Maybe Core.Text)
      -- | Determines the type of network access granted to workers. Possible values: - \"public\": Workers can connect to the public internet. - \"private\": Workers can only connect to Google APIs and services. - \"restricted-private\": Workers can only connect to Google APIs that are reachable through @restricted.googleapis.com@ (@199.36.153.4\/30@).
    , networkAccess :: (Core.Maybe Core.Text)
      -- | Determines whether the worker is reserved (equivalent to a Compute Engine on-demand VM and therefore won\'t be preempted). See <https://cloud.google.com/preemptible-vms/ Preemptible VMs> for more details.
    , reserved :: (Core.Maybe Core.Bool)
      -- | The node type name to be used for sole-tenant nodes.
    , soleTenantNodeType :: (Core.Maybe Core.Text)
      -- | The name of the image used by each VM.
    , vmImage :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    { accelerator = Core.Nothing
    , diskSizeGb = Core.Nothing
    , diskType = Core.Nothing
    , labels = Core.Nothing
    , machineType = Core.Nothing
    , maxConcurrentActions = Core.Nothing
    , minCpuPlatform = Core.Nothing
    , networkAccess = Core.Nothing
    , reserved = Core.Nothing
    , soleTenantNodeType = Core.Nothing
    , vmImage = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
                   Core.<$>
                   (o Core..:? "accelerator") Core.<*>
                     (o Core..:? "diskSizeGb" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "diskType")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "machineType")
                     Core.<*>
                     (o Core..:? "maxConcurrentActions" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "minCpuPlatform")
                     Core.<*> (o Core..:? "networkAccess")
                     Core.<*> (o Core..:? "reserved")
                     Core.<*> (o Core..:? "soleTenantNodeType")
                     Core.<*> (o Core..:? "vmImage"))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig{..}
          = Core.object
              (Core.catMaybes
                 [("accelerator" Core..=) Core.<$> accelerator,
                  ("diskSizeGb" Core..=) Core.. Core.AsText Core.<$>
                    diskSizeGb,
                  ("diskType" Core..=) Core.<$> diskType,
                  ("labels" Core..=) Core.<$> labels,
                  ("machineType" Core..=) Core.<$> machineType,
                  ("maxConcurrentActions" Core..=) Core.. Core.AsText
                    Core.<$> maxConcurrentActions,
                  ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
                  ("networkAccess" Core..=) Core.<$> networkAccess,
                  ("reserved" Core..=) Core.<$> reserved,
                  ("soleTenantNodeType" Core..=) Core.<$>
                    soleTenantNodeType,
                  ("vmImage" Core..=) Core.<$> vmImage])


-- | Labels associated with the workers. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International letters are permitted. Label keys must start with a letter. Label values are optional. There can not be more than 64 labels per resource.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels' smart constructor.
newtype GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels additional =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
    {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels{..}
          = Core.toJSON additional


-- | A worker pool resource in the Remote Build Execution API.
--
-- /See:/ 'newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool' smart constructor.
data GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool = GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    {
      -- | The autoscale policy to apply on a pool.
      autoscale :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale)
      -- | Channel specifies the release channel of the pool.
    , channel :: (Core.Maybe Core.Text)
      -- | WorkerPool resource name formatted as: @projects\/[PROJECT_ID]\/instances\/[INSTANCE_ID]\/workerpools\/[POOL_ID]@. name should not be populated when creating a worker pool since it is provided in the @poolId@ field.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. State of the worker pool.
    , state :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State)
      -- | Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
    , workerConfig :: (Core.Maybe
   GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig)
      -- | The desired number of workers in the worker pool. Must be a value between 0 and 15000.
    , workerCount :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool' with the minimum fields required to make a request.
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool 
    ::  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool =
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    { autoscale = Core.Nothing
    , channel = Core.Nothing
    , name = Core.Nothing
    , state = Core.Nothing
    , workerConfig = Core.Nothing
    , workerCount = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool"
              (\ o ->
                 GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
                   Core.<$>
                   (o Core..:? "autoscale") Core.<*>
                     (o Core..:? "channel")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "workerConfig")
                     Core.<*>
                     (o Core..:? "workerCount" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON
           GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
         where
        toJSON
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool{..}
          = Core.object
              (Core.catMaybes
                 [("autoscale" Core..=) Core.<$> autoscale,
                  ("channel" Core..=) Core.<$> channel,
                  ("name" Core..=) Core.<$> name,
                  ("state" Core..=) Core.<$> state,
                  ("workerConfig" Core..=) Core.<$> workerConfig,
                  ("workerCount" Core..=) Core.. Core.AsText Core.<$>
                    workerCount])


-- | AdminTemp is a prelimiary set of administration tasks. It\'s called \"Temp\" because we do not yet know the best way to represent admin tasks; it\'s possible that this will be entirely replaced in later versions of this API. If this message proves to be sufficient, it will be renamed in the alpha or beta release of this API. This message (suitably marshalled into a protobuf.Any) can be used as the inline_assignment field in a lease; the lease assignment field should simply be @\"admin\"@ in these cases. This message is heavily based on Swarming administration tasks from the LUCI project (http:\/\/github.com\/luci\/luci-py\/appengine\/swarming).
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2AdminTemp' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2AdminTemp = GoogleDevtoolsRemoteworkersV1test2AdminTemp
    {
      -- | The argument to the admin action; see @Command@ for semantics.
      arg :: (Core.Maybe Core.Text)
      -- | The admin action; see @Command@ for legal values.
    , command :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2AdminTemp' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2AdminTemp 
    ::  GoogleDevtoolsRemoteworkersV1test2AdminTemp
newGoogleDevtoolsRemoteworkersV1test2AdminTemp =
  GoogleDevtoolsRemoteworkersV1test2AdminTemp
    {arg = Core.Nothing, command = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2AdminTemp
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2AdminTemp"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2AdminTemp Core.<$>
                   (o Core..:? "arg") Core.<*> (o Core..:? "command"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2AdminTemp
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2AdminTemp{..}
          = Core.object
              (Core.catMaybes
                 [("arg" Core..=) Core.<$> arg,
                  ("command" Core..=) Core.<$> command])


-- | Describes a blob of binary content with its digest.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2Blob' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2Blob = GoogleDevtoolsRemoteworkersV1test2Blob
    {
      -- | The contents of the blob.
      contents :: (Core.Maybe Core.Base64)
      -- | The digest of the blob. This should be verified by the receiver.
    , digest :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2Blob' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2Blob 
    ::  GoogleDevtoolsRemoteworkersV1test2Blob
newGoogleDevtoolsRemoteworkersV1test2Blob =
  GoogleDevtoolsRemoteworkersV1test2Blob
    {contents = Core.Nothing, digest = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2Blob
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2Blob"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2Blob Core.<$>
                   (o Core..:? "contents") Core.<*>
                     (o Core..:? "digest"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2Blob
         where
        toJSON GoogleDevtoolsRemoteworkersV1test2Blob{..}
          = Core.object
              (Core.catMaybes
                 [("contents" Core..=) Core.<$> contents,
                  ("digest" Core..=) Core.<$> digest])


-- | DEPRECATED - use CommandResult instead. Describes the actual outputs from the task.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandOutputs' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandOutputs = GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    {
      -- | exit_code is only fully reliable if the status\' code is OK. If the task exceeded its deadline or was cancelled, the process may still produce an exit code as it is cancelled, and this will be populated, but a successful (zero) is unlikely to be correct unless the status code is OK.
      exitCode :: (Core.Maybe Core.Int32)
      -- | The output files. The blob referenced by the digest should contain one of the following (implementation-dependent): * A marshalled DirectoryMetadata of the returned filesystem * A LUCI-style .isolated file
    , outputs :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandOutputs' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandOutputs 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandOutputs
newGoogleDevtoolsRemoteworkersV1test2CommandOutputs =
  GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    {exitCode = Core.Nothing, outputs = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOutputs
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandOutputs"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandOutputs
                   Core.<$>
                   (o Core..:? "exitCode") Core.<*>
                     (o Core..:? "outputs"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOutputs
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandOutputs{..}
          = Core.object
              (Core.catMaybes
                 [("exitCode" Core..=) Core.<$> exitCode,
                  ("outputs" Core..=) Core.<$> outputs])


-- | DEPRECATED - use CommandResult instead. Can be used as part of CompleteRequest.metadata, or are part of a more sophisticated message.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandOverhead' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandOverhead = GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    {
      -- | The elapsed time between calling Accept and Complete. The server will also have its own idea of what this should be, but this excludes the overhead of the RPCs and the bot response time.
      duration :: (Core.Maybe Core.Duration)
      -- | The amount of time /not/ spent executing the command (ie uploading\/downloading files).
    , overhead :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandOverhead' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandOverhead 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandOverhead
newGoogleDevtoolsRemoteworkersV1test2CommandOverhead =
  GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    {duration = Core.Nothing, overhead = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOverhead
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandOverhead"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandOverhead
                   Core.<$>
                   (o Core..:? "duration") Core.<*>
                     (o Core..:? "overhead"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandOverhead
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandOverhead{..}
          = Core.object
              (Core.catMaybes
                 [("duration" Core..=) Core.<$> duration,
                  ("overhead" Core..=) Core.<$> overhead])


-- | All information about the execution of a command, suitable for providing as the Bots interface\'s @Lease.result@ field.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandResult' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandResult = GoogleDevtoolsRemoteworkersV1test2CommandResult
    {
      -- | The elapsed time between calling Accept and Complete. The server will also have its own idea of what this should be, but this excludes the overhead of the RPCs and the bot response time.
      duration :: (Core.Maybe Core.Duration)
      -- | The exit code of the process. An exit code of \"0\" should only be trusted if @status@ has a code of OK (otherwise it may simply be unset).
    , exitCode :: (Core.Maybe Core.Int32)
      -- | Implementation-dependent metadata about the task. Both servers and bots may define messages which can be encoded here; bots are free to provide metadata in multiple formats, and servers are free to choose one or more of the values to process and ignore others. In particular, it is /not/ considered an error for the bot to provide the server with a field that it doesn\'t know about.
    , metadata :: (Core.Maybe
   [GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem])
      -- | The output files. The blob referenced by the digest should contain one of the following (implementation-dependent): * A marshalled DirectoryMetadata of the returned filesystem * A LUCI-style .isolated file
    , outputs :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
      -- | The amount of time /not/ spent executing the command (ie uploading\/downloading files).
    , overhead :: (Core.Maybe Core.Duration)
      -- | An overall status for the command. For example, if the command timed out, this might have a code of DEADLINE/EXCEEDED; if it was killed by the OS for memory exhaustion, it might have a code of RESOURCE/EXHAUSTED.
    , status :: (Core.Maybe GoogleRpcStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandResult' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandResult 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandResult
newGoogleDevtoolsRemoteworkersV1test2CommandResult =
  GoogleDevtoolsRemoteworkersV1test2CommandResult
    { duration = Core.Nothing
    , exitCode = Core.Nothing
    , metadata = Core.Nothing
    , outputs = Core.Nothing
    , overhead = Core.Nothing
    , status = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResult
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandResult"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandResult
                   Core.<$>
                   (o Core..:? "duration") Core.<*>
                     (o Core..:? "exitCode")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "outputs")
                     Core.<*> (o Core..:? "overhead")
                     Core.<*> (o Core..:? "status"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResult
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandResult{..}
          = Core.object
              (Core.catMaybes
                 [("duration" Core..=) Core.<$> duration,
                  ("exitCode" Core..=) Core.<$> exitCode,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("outputs" Core..=) Core.<$> outputs,
                  ("overhead" Core..=) Core.<$> overhead,
                  ("status" Core..=) Core.<$> status])


--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem' smart constructor.
newtype GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem = GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
newGoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem additional =
  GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
    {additional = additional}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem{..}
          = Core.toJSON additional


-- | Describes a shell-style task to execute, suitable for providing as the Bots interface\'s @Lease.payload@ field.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandTask' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTask = GoogleDevtoolsRemoteworkersV1test2CommandTask
    {
      -- | The expected outputs from the task.
      expectedOutputs :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs)
      -- | The inputs to the task.
    , inputs :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs)
      -- | The timeouts of this task.
    , timeouts :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTask' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandTask 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandTask
newGoogleDevtoolsRemoteworkersV1test2CommandTask =
  GoogleDevtoolsRemoteworkersV1test2CommandTask
    { expectedOutputs = Core.Nothing
    , inputs = Core.Nothing
    , timeouts = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTask
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTask"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTask
                   Core.<$>
                   (o Core..:? "expectedOutputs") Core.<*>
                     (o Core..:? "inputs")
                     Core.<*> (o Core..:? "timeouts"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTask
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTask{..}
          = Core.object
              (Core.catMaybes
                 [("expectedOutputs" Core..=) Core.<$>
                    expectedOutputs,
                  ("inputs" Core..=) Core.<$> inputs,
                  ("timeouts" Core..=) Core.<$> timeouts])


-- | Describes the inputs to a shell-style task.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs = GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    {
      -- | The command itself to run (e.g., argv). This field should be passed directly to the underlying operating system, and so it must be sensible to that operating system. For example, on Windows, the first argument might be \"C:\\Windows\\System32\\ping.exe\" - that is, using drive letters and backslashes. A command for a *nix system, on the other hand, would use forward slashes. All other fields in the RWAPI must consistently use forward slashes, since those fields may be interpretted by both the service and the bot.
      arguments :: (Core.Maybe [Core.Text])
      -- | All environment variables required by the task.
    , environmentVariables :: (Core.Maybe
   [GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable])
      -- | The input filesystem to be set up prior to the task beginning. The contents should be a repeated set of FileMetadata messages though other formats are allowed if better for the implementation (eg, a LUCI-style .isolated file). This field is repeated since implementations might want to cache the metadata, in which case it may be useful to break up portions of the filesystem that change frequently (eg, specific input files) from those that don\'t (eg, standard header files).
    , files :: (Core.Maybe [GoogleDevtoolsRemoteworkersV1test2Digest])
      -- | Inline contents for blobs expected to be needed by the bot to execute the task. For example, contents of entries in @files@ or blobs that are indirectly referenced by an entry there. The bot should check against this list before downloading required task inputs to reduce the number of communications between itself and the remote CAS server.
    , inlineBlobs :: (Core.Maybe [GoogleDevtoolsRemoteworkersV1test2Blob])
      -- | Directory from which a command is executed. It is a relative directory with respect to the bot\'s working directory (i.e., \".\/\"). If it is non-empty, then it must exist under \".\/\". Otherwise, \".\/\" will be used.
    , workingDirectory :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    { arguments = Core.Nothing
    , environmentVariables = Core.Nothing
    , files = Core.Nothing
    , inlineBlobs = Core.Nothing
    , workingDirectory = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
                   Core.<$>
                   (o Core..:? "arguments") Core.<*>
                     (o Core..:? "environmentVariables")
                     Core.<*> (o Core..:? "files")
                     Core.<*> (o Core..:? "inlineBlobs")
                     Core.<*> (o Core..:? "workingDirectory"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs{..}
          = Core.object
              (Core.catMaybes
                 [("arguments" Core..=) Core.<$> arguments,
                  ("environmentVariables" Core..=) Core.<$>
                    environmentVariables,
                  ("files" Core..=) Core.<$> files,
                  ("inlineBlobs" Core..=) Core.<$> inlineBlobs,
                  ("workingDirectory" Core..=) Core.<$>
                    workingDirectory])


-- | An environment variable required by this task.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable = GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    {
      -- | The envvar name.
      name :: (Core.Maybe Core.Text)
      -- | The envvar value.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
                   Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "value"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("value" Core..=) Core.<$> value])


-- | Describes the expected outputs of the command.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs = GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    {
      -- | A list of expected directories, relative to the execution root. All paths MUST be delimited by forward slashes.
      directories :: (Core.Maybe [Core.Text])
      -- | A list of expected files, relative to the execution root. All paths MUST be delimited by forward slashes.
    , files :: (Core.Maybe [Core.Text])
      -- | The destination to which any stderr should be sent. The method by which the bot should send the stream contents to that destination is not defined in this API. As examples, the destination could be a file referenced in the @files@ field in this message, or it could be a URI that must be written via the ByteStream API.
    , stderrDestination :: (Core.Maybe Core.Text)
      -- | The destination to which any stdout should be sent. The method by which the bot should send the stream contents to that destination is not defined in this API. As examples, the destination could be a file referenced in the @files@ field in this message, or it could be a URI that must be written via the ByteStream API.
    , stdoutDestination :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
newGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    { directories = Core.Nothing
    , files = Core.Nothing
    , stderrDestination = Core.Nothing
    , stdoutDestination = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
                   Core.<$>
                   (o Core..:? "directories") Core.<*>
                     (o Core..:? "files")
                     Core.<*> (o Core..:? "stderrDestination")
                     Core.<*> (o Core..:? "stdoutDestination"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs{..}
          = Core.object
              (Core.catMaybes
                 [("directories" Core..=) Core.<$> directories,
                  ("files" Core..=) Core.<$> files,
                  ("stderrDestination" Core..=) Core.<$>
                    stderrDestination,
                  ("stdoutDestination" Core..=) Core.<$>
                    stdoutDestination])


-- | Describes the timeouts associated with this task.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts = GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    {
      -- | This specifies the maximum time that the task can run, excluding the time required to download inputs or upload outputs. That is, the worker will terminate the task if it runs longer than this.
      execution :: (Core.Maybe Core.Duration)
      -- | This specifies the maximum amount of time the task can be idle - that is, go without generating some output in either stdout or stderr. If the process is silent for more than the specified time, the worker will terminate the task.
    , idle :: (Core.Maybe Core.Duration)
      -- | If the execution or IO timeouts are exceeded, the worker will try to gracefully terminate the task and return any existing logs. However, tasks may be hard-frozen in which case this process will fail. This timeout specifies how long to wait for a terminated task to shut down gracefully (e.g. via SIGTERM) before we bring down the hammer (e.g. SIGKILL on *nix, CTRL/BREAK/EVENT on Windows).
    , shutdown :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts 
    ::  GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
newGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts =
  GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    {execution = Core.Nothing, idle = Core.Nothing, shutdown = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
                   Core.<$>
                   (o Core..:? "execution") Core.<*> (o Core..:? "idle")
                     Core.<*> (o Core..:? "shutdown"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts{..}
          = Core.object
              (Core.catMaybes
                 [("execution" Core..=) Core.<$> execution,
                  ("idle" Core..=) Core.<$> idle,
                  ("shutdown" Core..=) Core.<$> shutdown])


-- | The CommandTask and CommandResult messages assume the existence of a service that can serve blobs of content, identified by a hash and size known as a \"digest.\" The method by which these blobs may be retrieved is not specified here, but a model implementation is in the Remote Execution API\'s \"ContentAddressibleStorage\" interface. In the context of the RWAPI, a Digest will virtually always refer to the contents of a file or a directory. The latter is represented by the byte-encoded Directory message.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2Digest' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2Digest = GoogleDevtoolsRemoteworkersV1test2Digest
    {
      -- | A string-encoded hash (eg \"1a2b3c\", not the byte array [0x1a, 0x2b, 0x3c]) using an implementation-defined hash algorithm (eg SHA-256).
      hash :: (Core.Maybe Core.Text)
      -- | The size of the contents. While this is not strictly required as part of an identifier (after all, any given hash will have exactly one canonical size), it\'s useful in almost all cases when one might want to send or retrieve blobs of content and is included here for this reason.
    , sizeBytes :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2Digest' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2Digest 
    ::  GoogleDevtoolsRemoteworkersV1test2Digest
newGoogleDevtoolsRemoteworkersV1test2Digest =
  GoogleDevtoolsRemoteworkersV1test2Digest
    {hash = Core.Nothing, sizeBytes = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2Digest
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2Digest"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2Digest Core.<$>
                   (o Core..:? "hash") Core.<*>
                     (o Core..:? "sizeBytes" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2Digest
         where
        toJSON GoogleDevtoolsRemoteworkersV1test2Digest{..}
          = Core.object
              (Core.catMaybes
                 [("hash" Core..=) Core.<$> hash,
                  ("sizeBytes" Core..=) Core.. Core.AsText Core.<$>
                    sizeBytes])


-- | The contents of a directory. Similar to the equivalent message in the Remote Execution API.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2Directory' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2Directory = GoogleDevtoolsRemoteworkersV1test2Directory
    {
      -- | Any subdirectories
      directories :: (Core.Maybe [GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata])
      -- | The files in this directory
    , files :: (Core.Maybe [GoogleDevtoolsRemoteworkersV1test2FileMetadata])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2Directory' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2Directory 
    ::  GoogleDevtoolsRemoteworkersV1test2Directory
newGoogleDevtoolsRemoteworkersV1test2Directory =
  GoogleDevtoolsRemoteworkersV1test2Directory
    {directories = Core.Nothing, files = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2Directory
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2Directory"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2Directory Core.<$>
                   (o Core..:? "directories") Core.<*>
                     (o Core..:? "files"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2Directory
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2Directory{..}
          = Core.object
              (Core.catMaybes
                 [("directories" Core..=) Core.<$> directories,
                  ("files" Core..=) Core.<$> files])


-- | The metadata for a directory. Similar to the equivalent message in the Remote Execution API.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata = GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    {
      -- | A pointer to the contents of the directory, in the form of a marshalled Directory message.
      digest :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
      -- | The path of the directory, as in FileMetadata.path.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata 
    ::  GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
newGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata =
  GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    {digest = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
                   Core.<$>
                   (o Core..:? "digest") Core.<*> (o Core..:? "path"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("digest" Core..=) Core.<$> digest,
                  ("path" Core..=) Core.<$> path])


-- | The metadata for a file. Similar to the equivalent message in the Remote Execution API.
--
-- /See:/ 'newGoogleDevtoolsRemoteworkersV1test2FileMetadata' smart constructor.
data GoogleDevtoolsRemoteworkersV1test2FileMetadata = GoogleDevtoolsRemoteworkersV1test2FileMetadata
    {
      -- | If the file is small enough, its contents may also or alternatively be listed here.
      contents :: (Core.Maybe Core.Base64)
      -- | A pointer to the contents of the file. The method by which a client retrieves the contents from a CAS system is not defined here.
    , digest :: (Core.Maybe GoogleDevtoolsRemoteworkersV1test2Digest)
      -- | Properties of the file
    , isExecutable :: (Core.Maybe Core.Bool)
      -- | The path of this file. If this message is part of the CommandOutputs.outputs fields, the path is relative to the execution root and must correspond to an entry in CommandTask.outputs.files. If this message is part of a Directory message, then the path is relative to the root of that directory. All paths MUST be delimited by forward slashes.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsRemoteworkersV1test2FileMetadata' with the minimum fields required to make a request.
newGoogleDevtoolsRemoteworkersV1test2FileMetadata 
    ::  GoogleDevtoolsRemoteworkersV1test2FileMetadata
newGoogleDevtoolsRemoteworkersV1test2FileMetadata =
  GoogleDevtoolsRemoteworkersV1test2FileMetadata
    { contents = Core.Nothing
    , digest = Core.Nothing
    , isExecutable = Core.Nothing
    , path = Core.Nothing
    }

instance Core.FromJSON
           GoogleDevtoolsRemoteworkersV1test2FileMetadata
         where
        parseJSON
          = Core.withObject
              "GoogleDevtoolsRemoteworkersV1test2FileMetadata"
              (\ o ->
                 GoogleDevtoolsRemoteworkersV1test2FileMetadata
                   Core.<$>
                   (o Core..:? "contents") Core.<*>
                     (o Core..:? "digest")
                     Core.<*> (o Core..:? "isExecutable")
                     Core.<*> (o Core..:? "path"))

instance Core.ToJSON
           GoogleDevtoolsRemoteworkersV1test2FileMetadata
         where
        toJSON
          GoogleDevtoolsRemoteworkersV1test2FileMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("contents" Core..=) Core.<$> contents,
                  ("digest" Core..=) Core.<$> digest,
                  ("isExecutable" Core..=) Core.<$> isExecutable,
                  ("path" Core..=) Core.<$> path])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation = GoogleLongrunningOperation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe GoogleRpcStatus)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe GoogleLongrunningOperation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe GoogleLongrunningOperation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
newGoogleLongrunningOperation 
    ::  GoogleLongrunningOperation
newGoogleLongrunningOperation =
  GoogleLongrunningOperation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunningOperation
         where
        parseJSON
          = Core.withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunningOperation_Metadata' smart constructor.
newtype GoogleLongrunningOperation_Metadata = GoogleLongrunningOperation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleLongrunningOperation_Metadata
newGoogleLongrunningOperation_Metadata additional =
  GoogleLongrunningOperation_Metadata {additional = additional}

instance Core.FromJSON
           GoogleLongrunningOperation_Metadata
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Metadata"
              (\ o ->
                 GoogleLongrunningOperation_Metadata Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Metadata
         where
        toJSON GoogleLongrunningOperation_Metadata{..}
          = Core.toJSON additional


-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunningOperation_Response' smart constructor.
newtype GoogleLongrunningOperation_Response = GoogleLongrunningOperation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Response' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleLongrunningOperation_Response
newGoogleLongrunningOperation_Response additional =
  GoogleLongrunningOperation_Response {additional = additional}

instance Core.FromJSON
           GoogleLongrunningOperation_Response
         where
        parseJSON
          = Core.withObject
              "GoogleLongrunningOperation_Response"
              (\ o ->
                 GoogleLongrunningOperation_Response Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           GoogleLongrunningOperation_Response
         where
        toJSON GoogleLongrunningOperation_Response{..}
          = Core.toJSON additional


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpcStatus' smart constructor.
data GoogleRpcStatus = GoogleRpcStatus
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [GoogleRpcStatus_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
newGoogleRpcStatus 
    ::  GoogleRpcStatus
newGoogleRpcStatus =
  GoogleRpcStatus
    {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON GoogleRpcStatus where
        parseJSON
          = Core.withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newGoogleRpcStatus_DetailsItem' smart constructor.
newtype GoogleRpcStatus_DetailsItem = GoogleRpcStatus_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem additional =
  GoogleRpcStatus_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem
         where
        parseJSON
          = Core.withObject "GoogleRpcStatus_DetailsItem"
              (\ o ->
                 GoogleRpcStatus_DetailsItem Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON GoogleRpcStatus_DetailsItem
         where
        toJSON GoogleRpcStatus_DetailsItem{..}
          = Core.toJSON additional

