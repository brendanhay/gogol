{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.RemoteBuildExecution
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Supplies a Remote Execution API service for tools such as bazel.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference>
module Network.Google.RemoteBuildExecution
    (
    -- * Service Configuration
      remoteBuildExecutionService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , RemoteBuildExecutionAPI

    -- * Resources

    -- ** remotebuildexecution.actionResults.get
    , module Network.Google.Resource.RemoteBuildExecution.ActionResults.Get

    -- ** remotebuildexecution.actionResults.update
    , module Network.Google.Resource.RemoteBuildExecution.ActionResults.Update

    -- ** remotebuildexecution.actions.execute
    , module Network.Google.Resource.RemoteBuildExecution.Actions.Execute

    -- ** remotebuildexecution.blobs.batchRead
    , module Network.Google.Resource.RemoteBuildExecution.Blobs.BatchRead

    -- ** remotebuildexecution.blobs.batchUpdate
    , module Network.Google.Resource.RemoteBuildExecution.Blobs.BatchUpdate

    -- ** remotebuildexecution.blobs.findMissing
    , module Network.Google.Resource.RemoteBuildExecution.Blobs.FindMissing

    -- ** remotebuildexecution.blobs.getTree
    , module Network.Google.Resource.RemoteBuildExecution.Blobs.GetTree

    -- ** remotebuildexecution.getCapabilities
    , module Network.Google.Resource.RemoteBuildExecution.GetCapabilities

    -- ** remotebuildexecution.operations.waitExecution
    , module Network.Google.Resource.RemoteBuildExecution.Operations.WaitExecution

    -- * Types

    -- ** BuildBazelRemoteExecutionV2Digest
    , BuildBazelRemoteExecutionV2Digest
    , buildBazelRemoteExecutionV2Digest
    , bbrevdSizeBytes
    , bbrevdHash

    -- ** GoogleRpcStatus
    , GoogleRpcStatus
    , googleRpcStatus
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    , gdravgwprName

    -- ** BuildBazelRemoteExecutionV2OutputSymlink
    , BuildBazelRemoteExecutionV2OutputSymlink
    , buildBazelRemoteExecutionV2OutputSymlink
    , bbrevosPath
    , bbrevosNodeProperties
    , bbrevosTarget

    -- ** GoogleDevtoolsRemoteworkersV1test2FileMetadata
    , GoogleDevtoolsRemoteworkersV1test2FileMetadata
    , googleDevtoolsRemoteworkersV1test2FileMetadata
    , gdrvfmContents
    , gdrvfmPath
    , gdrvfmIsExecutable
    , gdrvfmDigest

    -- ** GoogleLongrunningOperationMetadata
    , GoogleLongrunningOperationMetadata
    , googleLongrunningOperationMetadata
    , glomAddtional

    -- ** BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage
    , BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage (..)

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState (..)

    -- ** GoogleDevtoolsRemoteworkersV1test2Digest
    , GoogleDevtoolsRemoteworkersV1test2Digest
    , googleDevtoolsRemoteworkersV1test2Digest
    , gdrvdSizeBytes
    , gdrvdHash

    -- ** BuildBazelRemoteExecutionV2ServerCapabilities
    , BuildBazelRemoteExecutionV2ServerCapabilities
    , buildBazelRemoteExecutionV2ServerCapabilities
    , bbrevscHighAPIVersion
    , bbrevscExecutionCapabilities
    , bbrevscCacheCapabilities
    , bbrevscDeprecatedAPIVersion
    , bbrevscLowAPIVersion

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation (..)

    -- ** BuildBazelRemoteExecutionV2Action
    , BuildBazelRemoteExecutionV2Action
    , buildBazelRemoteExecutionV2Action
    , bbrevaPlatform
    , bbrevaDoNotCache
    , bbrevaCommandDigest
    , bbrevaSalt
    , bbrevaInputRootDigest
    , bbrevaTimeout

    -- ** BuildBazelRemoteExecutionV2OutputDirectory
    , BuildBazelRemoteExecutionV2OutputDirectory
    , buildBazelRemoteExecutionV2OutputDirectory
    , bbrevodPath
    , bbrevodTreeDigest

    -- ** BuildBazelRemoteExecutionV2Tree
    , BuildBazelRemoteExecutionV2Tree
    , buildBazelRemoteExecutionV2Tree
    , bbrevtChildren
    , bbrevtRoot

    -- ** BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    , BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    , buildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    , bbrevpcprMinPriority
    , bbrevpcprMaxPriority

    -- ** BuildBazelRemoteExecutionV2OutputFile
    , BuildBazelRemoteExecutionV2OutputFile
    , buildBazelRemoteExecutionV2OutputFile
    , bbrevofContents
    , bbrevofPath
    , bbrevofIsExecutable
    , bbrevofDigest
    , bbrevofNodeProperties

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    , gdravcirParent
    , gdravcirInstanceId
    , gdravcirInstance

    -- ** BuildBazelRemoteExecutionV2Directory
    , BuildBazelRemoteExecutionV2Directory
    , buildBazelRemoteExecutionV2Directory
    , bbrevdDirectories
    , bbrevdSymlinks
    , bbrevdFiles
    , bbrevdNodeProperties

    -- ** BuildBazelRemoteExecutionV2DirectoryNode
    , BuildBazelRemoteExecutionV2DirectoryNode
    , buildBazelRemoteExecutionV2DirectoryNode
    , bbrevdnName
    , bbrevdnDigest

    -- ** BuildBazelRemoteExecutionV2NodeProperties
    , BuildBazelRemoteExecutionV2NodeProperties
    , buildBazelRemoteExecutionV2NodeProperties
    , bbrevnpMtime
    , bbrevnpUnixMode
    , bbrevnpProperties

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    , googleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    , gdrvcttIdle
    , gdrvcttShutdown
    , gdrvcttExecution

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    , googleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    , gdraviState
    , gdraviLocation
    , gdraviFeaturePolicy
    , gdraviName
    , gdraviLoggingEnabled

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels
    , googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigLabels
    , gdravwclAddtional

    -- ** GoogleDevtoolsRemotebuildbotCommandStatusCode
    , GoogleDevtoolsRemotebuildbotCommandStatusCode (..)

    -- ** BuildBazelRemoteExecutionV2ExecutionCapabilities
    , BuildBazelRemoteExecutionV2ExecutionCapabilities
    , buildBazelRemoteExecutionV2ExecutionCapabilities
    , bbrevecSupportedNodeProperties
    , bbrevecExecutionPriorityCapabilities
    , bbrevecExecEnabled
    , bbrevecDigestFunction

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    , gdravuwprUpdateMask
    , gdravuwprWorkerPool

    -- ** BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    , BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    , buildBazelRemoteExecutionV2BatchReadBlobsRequest
    , bbrevbrbrDigests

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    , googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    , gdravwpWorkerConfig
    , gdravwpState
    , gdravwpWorkerCount
    , gdravwpChannel
    , gdravwpName
    , gdravwpAutoscale

    -- ** BuildBazelRemoteExecutionV2SymlinkNode
    , BuildBazelRemoteExecutionV2SymlinkNode
    , buildBazelRemoteExecutionV2SymlinkNode
    , bbrevsnName
    , bbrevsnNodeProperties
    , bbrevsnTarget

    -- ** GoogleRpcStatusDetailsItem
    , GoogleRpcStatusDetailsItem
    , googleRpcStatusDetailsItem
    , grsdiAddtional

    -- ** GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    , GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    , googleDevtoolsRemoteworkersV1test2DirectoryMetadata
    , gdrvdmPath
    , gdrvdmDigest

    -- ** BuildBazelRemoteExecutionV2ActionResult
    , BuildBazelRemoteExecutionV2ActionResult
    , buildBazelRemoteExecutionV2ActionResult
    , bbrevarExecutionMetadata
    , bbrevarOutputDirectorySymlinks
    , bbrevarOutputFileSymlinks
    , bbrevarOutputDirectories
    , bbrevarOutputSymlinks
    , bbrevarOutputFiles
    , bbrevarStderrRaw
    , bbrevarExitCode
    , bbrevarStdoutDigest
    , bbrevarStderrDigest
    , bbrevarStdoutRaw

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    , gdravdwprName

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    , googleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    , gdrvctievValue
    , gdrvctievName

    -- ** GoogleDevtoolsRemotebuildbotResourceUsageStat
    , GoogleDevtoolsRemotebuildbotResourceUsageStat
    , googleDevtoolsRemotebuildbotResourceUsageStat
    , gdrrusUsed
    , gdrrusTotal

    -- ** BuildBazelSemverSemVer
    , BuildBazelSemverSemVer
    , buildBazelSemverSemVer
    , bbssvMinor
    , bbssvMajor
    , bbssvPatch
    , bbssvPrerelease

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    , GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    , googleDevtoolsRemoteworkersV1test2CommandOverhead
    , gdrvcoOverhead
    , gdrvcoDuration

    -- ** BuildBazelRemoteExecutionV2LogFile
    , BuildBazelRemoteExecutionV2LogFile
    , buildBazelRemoteExecutionV2LogFile
    , bbrevlfHumanReadable
    , bbrevlfDigest

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    , googleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    , gdravaMaxSize
    , gdravaMinSize

    -- ** GoogleDevtoolsRemotebuildbotResourceUsageIOStats
    , GoogleDevtoolsRemotebuildbotResourceUsageIOStats
    , googleDevtoolsRemotebuildbotResourceUsageIOStats
    , gdrruioWriteBytesCount
    , gdrruioReadBytesCount
    , gdrruioWriteCount
    , gdrruioReadTimeMs
    , gdrruioReadCount
    , gdrruioWriteTimeMs

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    , gdravcwprParent
    , gdravcwprPoolId
    , gdravcwprWorkerPool

    -- ** BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    , BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    , buildBazelRemoteExecutionV2FindMissingBlobsResponse
    , bbrevfmbrMissingBlobDigests

    -- ** GoogleDevtoolsRemoteworkersV1test2Directory
    , GoogleDevtoolsRemoteworkersV1test2Directory
    , googleDevtoolsRemoteworkersV1test2Directory
    , gdrvdDirectories
    , gdrvdFiles

    -- ** BuildBazelRemoteExecutionV2ExecutionPolicy
    , BuildBazelRemoteExecutionV2ExecutionPolicy
    , buildBazelRemoteExecutionV2ExecutionPolicy
    , bbrevepPriority

    -- ** BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    , BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    , buildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    , bbrevacucUpdateEnabled

    -- ** BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem
    , BuildBazelRemoteExecutionV2CacheCapabilitiesDigestFunctionItem (..)

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
    , GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
    , googleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
    , gdrvcrmiAddtional

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    , buildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    , bbrevbubrrData
    , bbrevbubrrDigest

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    , gdravlwprWorkerPools

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandResult
    , GoogleDevtoolsRemoteworkersV1test2CommandResult
    , googleDevtoolsRemoteworkersV1test2CommandResult
    , gdrvcrStatus
    , gdrvcrOverhead
    , gdrvcrOutputs
    , gdrvcrExitCode
    , gdrvcrMetadata
    , gdrvcrDuration

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    , googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    , gdravfpfPolicy
    , gdravfpfAllowedValues

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    , googleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    , gdravacAcceleratorCount
    , gdravacAcceleratorType

    -- ** GoogleDevtoolsRemoteworkersV1test2AdminTemp
    , GoogleDevtoolsRemoteworkersV1test2AdminTemp
    , googleDevtoolsRemoteworkersV1test2AdminTemp
    , gdrvatCommand
    , gdrvatArg

    -- ** GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation
    , GoogleDevtoolsRemotebuildbotCommandEventsOutputLocation (..)

    -- ** GoogleDevtoolsRemotebuildbotCommandDurations
    , GoogleDevtoolsRemotebuildbotCommandDurations
    , googleDevtoolsRemotebuildbotCommandDurations
    , gdrcdStdout
    , gdrcdCasRelease
    , gdrcdDockerPrep
    , gdrcdDockerPrepStartTime
    , gdrcdExecStartTime
    , gdrcdDownload
    , gdrcdOverall
    , gdrcdExecution
    , gdrcdIsoPrepDone
    , gdrcdCmWaitForAssignment
    , gdrcdUpload
    , gdrcdUploadStartTime
    , gdrcdDownloadStartTime

    -- ** BuildBazelRemoteExecutionV2PlatformProperty
    , BuildBazelRemoteExecutionV2PlatformProperty
    , buildBazelRemoteExecutionV2PlatformProperty
    , bbrevppValue
    , bbrevppName

    -- ** BuildBazelRemoteExecutionV2WaitExecutionRequest
    , BuildBazelRemoteExecutionV2WaitExecutionRequest
    , buildBazelRemoteExecutionV2WaitExecutionRequest

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    , GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    , googleDevtoolsRemoteworkersV1test2CommandOutputs
    , gdrvcoOutputs
    , gdrvcoExitCode

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState (..)

    -- ** BuildBazelRemoteExecutionV2ExecutedActionMetadata
    , BuildBazelRemoteExecutionV2ExecutedActionMetadata
    , buildBazelRemoteExecutionV2ExecutedActionMetadata
    , bbreveamOutputUploadCompletedTimestamp
    , bbreveamAuxiliaryMetadata
    , bbreveamOutputUploadStartTimestamp
    , bbreveamWorkerCompletedTimestamp
    , bbreveamWorkerStartTimestamp
    , bbreveamExecutionStartTimestamp
    , bbreveamInputFetchStartTimestamp
    , bbreveamQueuedTimestamp
    , bbreveamWorker
    , bbreveamExecutionCompletedTimestamp
    , bbreveamInputFetchCompletedTimestamp

    -- ** GoogleDevtoolsRemoteworkersV1test2Blob
    , GoogleDevtoolsRemoteworkersV1test2Blob
    , googleDevtoolsRemoteworkersV1test2Blob
    , gdrvbContents
    , gdrvbDigest

    -- ** BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    , BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    , buildBazelRemoteExecutionV2FindMissingBlobsRequest
    , bbrevfmbrBlobDigests

    -- ** BuildBazelRemoteExecutionV2GetTreeResponse
    , BuildBazelRemoteExecutionV2GetTreeResponse
    , buildBazelRemoteExecutionV2GetTreeResponse
    , bbrevgtrDirectories
    , bbrevgtrNextPageToken

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    , gdravgirName

    -- ** BuildBazelRemoteExecutionV2ResultsCachePolicy
    , BuildBazelRemoteExecutionV2ResultsCachePolicy
    , buildBazelRemoteExecutionV2ResultsCachePolicy
    , bbrevrcpPriority

    -- ** BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    , BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    , buildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    , bbrevbrbrrStatus
    , bbrevbrbrrData
    , bbrevbrbrrDigest

    -- ** Xgafv
    , Xgafv (..)

    -- ** BuildBazelRemoteExecutionV2ExecuteRequest
    , BuildBazelRemoteExecutionV2ExecuteRequest
    , buildBazelRemoteExecutionV2ExecuteRequest
    , bbreverExecutionPolicy
    , bbreverSkipCacheLookup
    , bbreverResultsCachePolicy
    , bbreverActionDigest

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    , buildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    , bbrevbubrResponses

    -- ** BuildBazelRemoteExecutionV2ExecuteResponseServerLogs
    , BuildBazelRemoteExecutionV2ExecuteResponseServerLogs
    , buildBazelRemoteExecutionV2ExecuteResponseServerLogs
    , bbreverslAddtional

    -- ** BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction
    , BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction (..)

    -- ** GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- ** BuildBazelRemoteExecutionV2FileNode
    , BuildBazelRemoteExecutionV2FileNode
    , buildBazelRemoteExecutionV2FileNode
    , bbrevfnName
    , bbrevfnIsExecutable
    , bbrevfnDigest
    , bbrevfnNodeProperties

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    , gdravlirInstances

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTask
    , GoogleDevtoolsRemoteworkersV1test2CommandTask
    , googleDevtoolsRemoteworkersV1test2CommandTask
    , gdrvctInputs
    , gdrvctExpectedOutputs
    , gdrvctTimeouts

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    , googleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    , gdravfpDockerSiblingContainers
    , gdravfpDockerNetwork
    , gdravfpContainerImageSources
    , gdravfpDockerRunAsRoot
    , gdravfpDockerChrootPath
    , gdravfpDockerPrivileged
    , gdravfpLinuxIsolation
    , gdravfpDockerRuntime
    , gdravfpDockerAddCapabilities

    -- ** GoogleDevtoolsRemotebuildbotCommandEventsCmUsage
    , GoogleDevtoolsRemotebuildbotCommandEventsCmUsage (..)

    -- ** GoogleDevtoolsRemotebuildbotCommandStatus
    , GoogleDevtoolsRemotebuildbotCommandStatus
    , googleDevtoolsRemotebuildbotCommandStatus
    , gdrcsCode
    , gdrcsMessage

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    , googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    , gdravwcDiskSizeGb
    , gdravwcSoleTenantNodeType
    , gdravwcReserved
    , gdravwcVMImage
    , gdravwcAccelerator
    , gdravwcMaxConcurrentActions
    , gdravwcNetworkAccess
    , gdravwcMachineType
    , gdravwcDiskType
    , gdravwcLabels
    , gdravwcMinCPUPlatform

    -- ** BuildBazelRemoteExecutionV2ExecuteResponse
    , BuildBazelRemoteExecutionV2ExecuteResponse
    , buildBazelRemoteExecutionV2ExecuteResponse
    , bbreverStatus
    , bbreverServerLogs
    , bbreverResult
    , bbreverCachedResult
    , bbreverMessage

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    , gdravuirUpdateMask
    , gdravuirName
    , gdravuirLoggingEnabled
    , gdravuirInstance

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    , gdravdirName

    -- ** BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy
    , BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy (..)

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    , googleDevtoolsRemoteworkersV1test2CommandTaskInputs
    , gdrvctiWorkingDirectory
    , gdrvctiArguments
    , gdrvctiFiles
    , gdrvctiEnvironmentVariables
    , gdrvctiInlineBlobs

    -- ** BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    , BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    , buildBazelRemoteExecutionV2CommandEnvironmentVariable
    , bbrevcevValue
    , bbrevcevName

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    , gdravlirParent

    -- ** BuildBazelRemoteExecutionV2PriorityCapabilities
    , BuildBazelRemoteExecutionV2PriorityCapabilities
    , buildBazelRemoteExecutionV2PriorityCapabilities
    , bbrevpcPriorities

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    , buildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    , bbrevbubrRequests

    -- ** BuildBazelRemoteExecutionV2RequestMetadata
    , BuildBazelRemoteExecutionV2RequestMetadata
    , buildBazelRemoteExecutionV2RequestMetadata
    , bbrevrmTargetId
    , bbrevrmCorrelatedInvocationsId
    , bbrevrmConfigurationId
    , bbrevrmToolInvocationId
    , bbrevrmActionId
    , bbrevrmActionMnemonic
    , bbrevrmToolDetails

    -- ** BuildBazelRemoteExecutionV2Platform
    , BuildBazelRemoteExecutionV2Platform
    , buildBazelRemoteExecutionV2Platform
    , bbrevpProperties

    -- ** GoogleDevtoolsRemoteworkersV1test2AdminTempCommand
    , GoogleDevtoolsRemoteworkersV1test2AdminTempCommand (..)

    -- ** BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    , BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    , buildBazelRemoteExecutionV2ExecuteOperationMetadata
    , bbreveomStage
    , bbreveomStderrStreamName
    , bbreveomStdoutStreamName
    , bbreveomActionDigest

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    , gdravlwprParent
    , gdravlwprFilter

    -- ** BuildBazelRemoteExecutionV2Command
    , BuildBazelRemoteExecutionV2Command
    , buildBazelRemoteExecutionV2Command
    , bbrevcPlatform
    , bbrevcOutputDirectories
    , bbrevcWorkingDirectory
    , bbrevcArguments
    , bbrevcOutputPaths
    , bbrevcOutputFiles
    , bbrevcEnvironmentVariables
    , bbrevcOutputNodeProperties

    -- ** BuildBazelRemoteExecutionV2NodeProperty
    , BuildBazelRemoteExecutionV2NodeProperty
    , buildBazelRemoteExecutionV2NodeProperty
    , bbrevnpValue
    , bbrevnpName

    -- ** BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem
    , BuildBazelRemoteExecutionV2CacheCapabilitiesSupportedCompressorItem (..)

    -- ** BuildBazelRemoteExecutionV2ToolDetails
    , BuildBazelRemoteExecutionV2ToolDetails
    , buildBazelRemoteExecutionV2ToolDetails
    , bbrevtdToolName
    , bbrevtdToolVersion

    -- ** BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem
    , BuildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem
    , buildBazelRemoteExecutionV2ExecutedActionMetadataAuxiliaryMetadataItem
    , bbreveamamiAddtional

    -- ** BuildBazelRemoteExecutionV2CacheCapabilities
    , BuildBazelRemoteExecutionV2CacheCapabilities
    , buildBazelRemoteExecutionV2CacheCapabilities
    , bbrevccSymlinkAbsolutePathStrategy
    , bbrevccMaxBatchTotalSizeBytes
    , bbrevccDigestFunction
    , bbrevccSupportedCompressor
    , bbrevccActionCacheUpdateCapabilities
    , bbrevccCachePriorityCapabilities

    -- ** GoogleDevtoolsRemotebuildbotCommandEvents
    , GoogleDevtoolsRemotebuildbotCommandEvents
    , googleDevtoolsRemotebuildbotCommandEvents
    , gdrceDockerImageName
    , gdrceDockerCacheHit
    , gdrceNumErrors
    , gdrceInputCacheMiss
    , gdrceNumWarnings
    , gdrceOutputLocation
    , gdrceCmUsage
    , gdrceUsedAsyncContainer

    -- ** GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    , googleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    , gdrvctoDirectories
    , gdrvctoStderrDestination
    , gdrvctoFiles
    , gdrvctoStdoutDestination

    -- ** GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy (..)

    -- ** BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    , buildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    , bStatus
    , bDigest

    -- ** BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    , BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    , buildBazelRemoteExecutionV2BatchReadBlobsResponse
    , bbrevbrbrResponses

    -- ** GoogleDevtoolsRemotebuildbotResourceUsage
    , GoogleDevtoolsRemotebuildbotResourceUsage
    , googleDevtoolsRemotebuildbotResourceUsage
    , gdrruMemoryUsage
    , gdrruDiskUsage
    , gdrruCPUUsedPercent
    , gdrruTotalDiskIoStats
    ) where

import Network.Google.Prelude
import Network.Google.RemoteBuildExecution.Types
import Network.Google.Resource.RemoteBuildExecution.ActionResults.Get
import Network.Google.Resource.RemoteBuildExecution.ActionResults.Update
import Network.Google.Resource.RemoteBuildExecution.Actions.Execute
import Network.Google.Resource.RemoteBuildExecution.Blobs.BatchRead
import Network.Google.Resource.RemoteBuildExecution.Blobs.BatchUpdate
import Network.Google.Resource.RemoteBuildExecution.Blobs.FindMissing
import Network.Google.Resource.RemoteBuildExecution.Blobs.GetTree
import Network.Google.Resource.RemoteBuildExecution.GetCapabilities
import Network.Google.Resource.RemoteBuildExecution.Operations.WaitExecution

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Remote Build Execution API service.
type RemoteBuildExecutionAPI =
     ActionsExecuteResource :<|> BlobsGetTreeResource :<|>
       BlobsBatchUpdateResource
       :<|> BlobsBatchReadResource
       :<|> BlobsFindMissingResource
       :<|> GetCapabilitiesResource
       :<|> ActionResultsGetResource
       :<|> ActionResultsUpdateResource
       :<|> OperationsWaitExecutionResource
