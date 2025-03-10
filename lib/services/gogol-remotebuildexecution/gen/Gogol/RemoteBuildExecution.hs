{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.RemoteBuildExecution
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Supplies a Remote Execution API service for tools such as bazel.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference>
module Gogol.RemoteBuildExecution
  ( -- * Configuration
    remoteBuildExecutionService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** remotebuildexecution.actionResults.get
    RemoteBuildExecutionActionResultsGetResource,
    RemoteBuildExecutionActionResultsGet (..),
    newRemoteBuildExecutionActionResultsGet,

    -- ** remotebuildexecution.actionResults.update
    RemoteBuildExecutionActionResultsUpdateResource,
    RemoteBuildExecutionActionResultsUpdate (..),
    newRemoteBuildExecutionActionResultsUpdate,

    -- ** remotebuildexecution.actions.execute
    RemoteBuildExecutionActionsExecuteResource,
    RemoteBuildExecutionActionsExecute (..),
    newRemoteBuildExecutionActionsExecute,

    -- ** remotebuildexecution.blobs.batchRead
    RemoteBuildExecutionBlobsBatchReadResource,
    RemoteBuildExecutionBlobsBatchRead (..),
    newRemoteBuildExecutionBlobsBatchRead,

    -- ** remotebuildexecution.blobs.batchUpdate
    RemoteBuildExecutionBlobsBatchUpdateResource,
    RemoteBuildExecutionBlobsBatchUpdate (..),
    newRemoteBuildExecutionBlobsBatchUpdate,

    -- ** remotebuildexecution.blobs.findMissing
    RemoteBuildExecutionBlobsFindMissingResource,
    RemoteBuildExecutionBlobsFindMissing (..),
    newRemoteBuildExecutionBlobsFindMissing,

    -- ** remotebuildexecution.blobs.getTree
    RemoteBuildExecutionBlobsGetTreeResource,
    RemoteBuildExecutionBlobsGetTree (..),
    newRemoteBuildExecutionBlobsGetTree,

    -- ** remotebuildexecution.getCapabilities
    RemoteBuildExecutionGetCapabilitiesResource,
    RemoteBuildExecutionGetCapabilities (..),
    newRemoteBuildExecutionGetCapabilities,

    -- ** remotebuildexecution.operations.waitExecution
    RemoteBuildExecutionOperationsWaitExecutionResource,
    RemoteBuildExecutionOperationsWaitExecution (..),
    newRemoteBuildExecutionOperationsWaitExecution,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** BuildBazelRemoteExecutionV2Action
    BuildBazelRemoteExecutionV2Action (..),
    newBuildBazelRemoteExecutionV2Action,

    -- ** BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities (..),
    newBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities,

    -- ** BuildBazelRemoteExecutionV2ActionResult
    BuildBazelRemoteExecutionV2ActionResult (..),
    newBuildBazelRemoteExecutionV2ActionResult,

    -- ** BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    BuildBazelRemoteExecutionV2BatchReadBlobsRequest (..),
    newBuildBazelRemoteExecutionV2BatchReadBlobsRequest,

    -- ** BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    BuildBazelRemoteExecutionV2BatchReadBlobsResponse (..),
    newBuildBazelRemoteExecutionV2BatchReadBlobsResponse,

    -- ** BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse (..),
    newBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse,

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest,

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest,

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse,

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse (..),
    newBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse,

    -- ** BuildBazelRemoteExecutionV2CacheCapabilities
    BuildBazelRemoteExecutionV2CacheCapabilities (..),
    newBuildBazelRemoteExecutionV2CacheCapabilities,

    -- ** BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem
    BuildBazelRemoteExecutionV2CacheCapabilities_DigestFunctionItem (..),

    -- ** BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem
    BuildBazelRemoteExecutionV2CacheCapabilities_SupportedCompressorItem (..),

    -- ** BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy
    BuildBazelRemoteExecutionV2CacheCapabilities_SymlinkAbsolutePathStrategy (..),

    -- ** BuildBazelRemoteExecutionV2Command
    BuildBazelRemoteExecutionV2Command (..),
    newBuildBazelRemoteExecutionV2Command,

    -- ** BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    BuildBazelRemoteExecutionV2CommandEnvironmentVariable (..),
    newBuildBazelRemoteExecutionV2CommandEnvironmentVariable,

    -- ** BuildBazelRemoteExecutionV2Digest
    BuildBazelRemoteExecutionV2Digest (..),
    newBuildBazelRemoteExecutionV2Digest,

    -- ** BuildBazelRemoteExecutionV2Directory
    BuildBazelRemoteExecutionV2Directory (..),
    newBuildBazelRemoteExecutionV2Directory,

    -- ** BuildBazelRemoteExecutionV2DirectoryNode
    BuildBazelRemoteExecutionV2DirectoryNode (..),
    newBuildBazelRemoteExecutionV2DirectoryNode,

    -- ** BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    BuildBazelRemoteExecutionV2ExecuteOperationMetadata (..),
    newBuildBazelRemoteExecutionV2ExecuteOperationMetadata,

    -- ** BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage
    BuildBazelRemoteExecutionV2ExecuteOperationMetadata_Stage (..),

    -- ** BuildBazelRemoteExecutionV2ExecuteRequest
    BuildBazelRemoteExecutionV2ExecuteRequest (..),
    newBuildBazelRemoteExecutionV2ExecuteRequest,

    -- ** BuildBazelRemoteExecutionV2ExecuteResponse
    BuildBazelRemoteExecutionV2ExecuteResponse (..),
    newBuildBazelRemoteExecutionV2ExecuteResponse,

    -- ** BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs
    BuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs (..),
    newBuildBazelRemoteExecutionV2ExecuteResponse_ServerLogs,

    -- ** BuildBazelRemoteExecutionV2ExecutedActionMetadata
    BuildBazelRemoteExecutionV2ExecutedActionMetadata (..),
    newBuildBazelRemoteExecutionV2ExecutedActionMetadata,

    -- ** BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem
    BuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem (..),
    newBuildBazelRemoteExecutionV2ExecutedActionMetadata_AuxiliaryMetadataItem,

    -- ** BuildBazelRemoteExecutionV2ExecutionCapabilities
    BuildBazelRemoteExecutionV2ExecutionCapabilities (..),
    newBuildBazelRemoteExecutionV2ExecutionCapabilities,

    -- ** BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction
    BuildBazelRemoteExecutionV2ExecutionCapabilities_DigestFunction (..),

    -- ** BuildBazelRemoteExecutionV2ExecutionPolicy
    BuildBazelRemoteExecutionV2ExecutionPolicy (..),
    newBuildBazelRemoteExecutionV2ExecutionPolicy,

    -- ** BuildBazelRemoteExecutionV2FileNode
    BuildBazelRemoteExecutionV2FileNode (..),
    newBuildBazelRemoteExecutionV2FileNode,

    -- ** BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    BuildBazelRemoteExecutionV2FindMissingBlobsRequest (..),
    newBuildBazelRemoteExecutionV2FindMissingBlobsRequest,

    -- ** BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    BuildBazelRemoteExecutionV2FindMissingBlobsResponse (..),
    newBuildBazelRemoteExecutionV2FindMissingBlobsResponse,

    -- ** BuildBazelRemoteExecutionV2GetTreeResponse
    BuildBazelRemoteExecutionV2GetTreeResponse (..),
    newBuildBazelRemoteExecutionV2GetTreeResponse,

    -- ** BuildBazelRemoteExecutionV2LogFile
    BuildBazelRemoteExecutionV2LogFile (..),
    newBuildBazelRemoteExecutionV2LogFile,

    -- ** BuildBazelRemoteExecutionV2NodeProperties
    BuildBazelRemoteExecutionV2NodeProperties (..),
    newBuildBazelRemoteExecutionV2NodeProperties,

    -- ** BuildBazelRemoteExecutionV2NodeProperty
    BuildBazelRemoteExecutionV2NodeProperty (..),
    newBuildBazelRemoteExecutionV2NodeProperty,

    -- ** BuildBazelRemoteExecutionV2OutputDirectory
    BuildBazelRemoteExecutionV2OutputDirectory (..),
    newBuildBazelRemoteExecutionV2OutputDirectory,

    -- ** BuildBazelRemoteExecutionV2OutputFile
    BuildBazelRemoteExecutionV2OutputFile (..),
    newBuildBazelRemoteExecutionV2OutputFile,

    -- ** BuildBazelRemoteExecutionV2OutputSymlink
    BuildBazelRemoteExecutionV2OutputSymlink (..),
    newBuildBazelRemoteExecutionV2OutputSymlink,

    -- ** BuildBazelRemoteExecutionV2Platform
    BuildBazelRemoteExecutionV2Platform (..),
    newBuildBazelRemoteExecutionV2Platform,

    -- ** BuildBazelRemoteExecutionV2PlatformProperty
    BuildBazelRemoteExecutionV2PlatformProperty (..),
    newBuildBazelRemoteExecutionV2PlatformProperty,

    -- ** BuildBazelRemoteExecutionV2PriorityCapabilities
    BuildBazelRemoteExecutionV2PriorityCapabilities (..),
    newBuildBazelRemoteExecutionV2PriorityCapabilities,

    -- ** BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange (..),
    newBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange,

    -- ** BuildBazelRemoteExecutionV2RequestMetadata
    BuildBazelRemoteExecutionV2RequestMetadata (..),
    newBuildBazelRemoteExecutionV2RequestMetadata,

    -- ** BuildBazelRemoteExecutionV2ResultsCachePolicy
    BuildBazelRemoteExecutionV2ResultsCachePolicy (..),
    newBuildBazelRemoteExecutionV2ResultsCachePolicy,

    -- ** BuildBazelRemoteExecutionV2ServerCapabilities
    BuildBazelRemoteExecutionV2ServerCapabilities (..),
    newBuildBazelRemoteExecutionV2ServerCapabilities,

    -- ** BuildBazelRemoteExecutionV2SymlinkNode
    BuildBazelRemoteExecutionV2SymlinkNode (..),
    newBuildBazelRemoteExecutionV2SymlinkNode,

    -- ** BuildBazelRemoteExecutionV2ToolDetails
    BuildBazelRemoteExecutionV2ToolDetails (..),
    newBuildBazelRemoteExecutionV2ToolDetails,

    -- ** BuildBazelRemoteExecutionV2Tree
    BuildBazelRemoteExecutionV2Tree (..),
    newBuildBazelRemoteExecutionV2Tree,

    -- ** BuildBazelRemoteExecutionV2WaitExecutionRequest
    BuildBazelRemoteExecutionV2WaitExecutionRequest (..),
    newBuildBazelRemoteExecutionV2WaitExecutionRequest,

    -- ** BuildBazelSemverSemVer
    BuildBazelSemverSemVer (..),
    newBuildBazelSemverSemVer,

    -- ** GoogleDevtoolsRemotebuildbotCommandDurations
    GoogleDevtoolsRemotebuildbotCommandDurations (..),
    newGoogleDevtoolsRemotebuildbotCommandDurations,

    -- ** GoogleDevtoolsRemotebuildbotCommandEvents
    GoogleDevtoolsRemotebuildbotCommandEvents (..),
    newGoogleDevtoolsRemotebuildbotCommandEvents,

    -- ** GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage
    GoogleDevtoolsRemotebuildbotCommandEvents_CmUsage (..),

    -- ** GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation
    GoogleDevtoolsRemotebuildbotCommandEvents_OutputLocation (..),

    -- ** GoogleDevtoolsRemotebuildbotCommandStatus
    GoogleDevtoolsRemotebuildbotCommandStatus (..),
    newGoogleDevtoolsRemotebuildbotCommandStatus,

    -- ** GoogleDevtoolsRemotebuildbotCommandStatus_Code
    GoogleDevtoolsRemotebuildbotCommandStatus_Code (..),

    -- ** GoogleDevtoolsRemotebuildbotResourceUsage
    GoogleDevtoolsRemotebuildbotResourceUsage (..),
    newGoogleDevtoolsRemotebuildbotResourceUsage,

    -- ** GoogleDevtoolsRemotebuildbotResourceUsageIOStats
    GoogleDevtoolsRemotebuildbotResourceUsageIOStats (..),
    newGoogleDevtoolsRemotebuildbotResourceUsageIOStats,

    -- ** GoogleDevtoolsRemotebuildbotResourceUsageStat
    GoogleDevtoolsRemotebuildbotResourceUsageStat (..),
    newGoogleDevtoolsRemotebuildbotResourceUsageStat,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy_LinuxIsolation (..),

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature_Policy (..),

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance_State (..),

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig_Labels,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool (..),
    newGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool,

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool_State (..),

    -- ** GoogleDevtoolsRemoteworkersV1test2AdminTemp
    GoogleDevtoolsRemoteworkersV1test2AdminTemp (..),
    newGoogleDevtoolsRemoteworkersV1test2AdminTemp,

    -- ** GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command
    GoogleDevtoolsRemoteworkersV1test2AdminTemp_Command (..),

    -- ** GoogleDevtoolsRemoteworkersV1test2Blob
    GoogleDevtoolsRemoteworkersV1test2Blob (..),
    newGoogleDevtoolsRemoteworkersV1test2Blob,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    GoogleDevtoolsRemoteworkersV1test2CommandOutputs (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandOutputs,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    GoogleDevtoolsRemoteworkersV1test2CommandOverhead (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandOverhead,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandResult
    GoogleDevtoolsRemoteworkersV1test2CommandResult (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandResult,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem
    GoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandResult_MetadataItem,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTask
    GoogleDevtoolsRemoteworkersV1test2CommandTask (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTask,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs,

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts (..),
    newGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts,

    -- ** GoogleDevtoolsRemoteworkersV1test2Digest
    GoogleDevtoolsRemoteworkersV1test2Digest (..),
    newGoogleDevtoolsRemoteworkersV1test2Digest,

    -- ** GoogleDevtoolsRemoteworkersV1test2Directory
    GoogleDevtoolsRemoteworkersV1test2Directory (..),
    newGoogleDevtoolsRemoteworkersV1test2Directory,

    -- ** GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata (..),
    newGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata,

    -- ** GoogleDevtoolsRemoteworkersV1test2FileMetadata
    GoogleDevtoolsRemoteworkersV1test2FileMetadata (..),
    newGoogleDevtoolsRemoteworkersV1test2FileMetadata,

    -- ** GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- ** GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- ** GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- ** GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- ** GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,
  )
where

import Gogol.RemoteBuildExecution.ActionResults.Get
import Gogol.RemoteBuildExecution.ActionResults.Update
import Gogol.RemoteBuildExecution.Actions.Execute
import Gogol.RemoteBuildExecution.Blobs.BatchRead
import Gogol.RemoteBuildExecution.Blobs.BatchUpdate
import Gogol.RemoteBuildExecution.Blobs.FindMissing
import Gogol.RemoteBuildExecution.Blobs.GetTree
import Gogol.RemoteBuildExecution.GetCapabilities
import Gogol.RemoteBuildExecution.Operations.WaitExecution
import Gogol.RemoteBuildExecution.Types
