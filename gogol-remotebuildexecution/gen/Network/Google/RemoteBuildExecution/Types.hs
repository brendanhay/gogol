{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.RemoteBuildExecution.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.RemoteBuildExecution.Types
    (
    -- * Service Configuration
      remoteBuildExecutionService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * BuildBazelRemoteExecutionV2Digest
    , BuildBazelRemoteExecutionV2Digest
    , buildBazelRemoteExecutionV2Digest
    , bbrevdSizeBytes
    , bbrevdHash

    -- * GoogleRpcStatus
    , GoogleRpcStatus
    , googleRpcStatus
    , grsDetails
    , grsCode
    , grsMessage

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    , gdravgwprName

    -- * GoogleDevtoolsRemoteexecutionV1testOutputDirectory
    , GoogleDevtoolsRemoteexecutionV1testOutputDirectory
    , googleDevtoolsRemoteexecutionV1testOutputDirectory
    , gdrvodPath
    , gdrvodDigest
    , gdrvodTreeDigest

    -- * BuildBazelRemoteExecutionV2OutputSymlink
    , BuildBazelRemoteExecutionV2OutputSymlink
    , buildBazelRemoteExecutionV2OutputSymlink
    , bbrevosPath
    , bbrevosTarget

    -- * GoogleDevtoolsRemoteexecutionV1testTree
    , GoogleDevtoolsRemoteexecutionV1testTree
    , googleDevtoolsRemoteexecutionV1testTree
    , gdrvtChildren
    , gdrvtRoot

    -- * GoogleDevtoolsRemoteworkersV1test2FileMetadata
    , GoogleDevtoolsRemoteworkersV1test2FileMetadata
    , googleDevtoolsRemoteworkersV1test2FileMetadata
    , gdrvfmContents
    , gdrvfmPath
    , gdrvfmIsExecutable
    , gdrvfmDigest

    -- * GoogleLongrunningOperationMetadata
    , GoogleLongrunningOperationMetadata
    , googleLongrunningOperationMetadata
    , glomAddtional

    -- * BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage
    , BuildBazelRemoteExecutionV2ExecuteOperationMetadataStage (..)

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstanceState (..)

    -- * GoogleDevtoolsRemoteworkersV1test2Digest
    , GoogleDevtoolsRemoteworkersV1test2Digest
    , googleDevtoolsRemoteworkersV1test2Digest
    , gdrvdSizeBytes
    , gdrvdHash

    -- * BuildBazelRemoteExecutionV2ServerCapabilities
    , BuildBazelRemoteExecutionV2ServerCapabilities
    , buildBazelRemoteExecutionV2ServerCapabilities
    , bbrevscHighAPIVersion
    , bbrevscExecutionCapabilities
    , bbrevscCacheCapabilities
    , bbrevscDeprecatedAPIVersion
    , bbrevscLowAPIVersion

    -- * BuildBazelRemoteExecutionV2Action
    , BuildBazelRemoteExecutionV2Action
    , buildBazelRemoteExecutionV2Action
    , bbrevaDoNotCache
    , bbrevaCommandDigest
    , bbrevaInputRootDigest
    , bbrevaTimeout

    -- * BuildBazelRemoteExecutionV2OutputDirectory
    , BuildBazelRemoteExecutionV2OutputDirectory
    , buildBazelRemoteExecutionV2OutputDirectory
    , bbrevodPath
    , bbrevodTreeDigest

    -- * GoogleDevtoolsRemoteexecutionV1testDigest
    , GoogleDevtoolsRemoteexecutionV1testDigest
    , googleDevtoolsRemoteexecutionV1testDigest
    , gSizeBytes
    , gHash

    -- * BuildBazelRemoteExecutionV2Tree
    , BuildBazelRemoteExecutionV2Tree
    , buildBazelRemoteExecutionV2Tree
    , bbrevtChildren
    , bbrevtRoot

    -- * GoogleDevtoolsRemoteexecutionV1testActionResult
    , GoogleDevtoolsRemoteexecutionV1testActionResult
    , googleDevtoolsRemoteexecutionV1testActionResult
    , gdrvarOutputDirectories
    , gdrvarOutputFiles
    , gdrvarStderrRaw
    , gdrvarExitCode
    , gdrvarStdoutDigest
    , gdrvarStderrDigest
    , gdrvarStdoutRaw

    -- * BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    , BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    , buildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    , bbrevpcprMinPriority
    , bbrevpcprMaxPriority

    -- * BuildBazelRemoteExecutionV2OutputFile
    , BuildBazelRemoteExecutionV2OutputFile
    , buildBazelRemoteExecutionV2OutputFile
    , bbrevofPath
    , bbrevofIsExecutable
    , bbrevofDigest

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    , gdravcirParent
    , gdravcirInstanceId
    , gdravcirInstance

    -- * BuildBazelRemoteExecutionV2Directory
    , BuildBazelRemoteExecutionV2Directory
    , buildBazelRemoteExecutionV2Directory
    , bbrevdDirectories
    , bbrevdSymlinks
    , bbrevdFiles

    -- * BuildBazelRemoteExecutionV2DirectoryNode
    , BuildBazelRemoteExecutionV2DirectoryNode
    , buildBazelRemoteExecutionV2DirectoryNode
    , bbrevdnName
    , bbrevdnDigest

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    , googleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    , gdrvcttIdle
    , gdrvcttShutdown
    , gdrvcttExecution

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    , googleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    , gdraviState
    , gdraviLocation
    , gdraviName
    , gdraviLoggingEnabled

    -- * GoogleDevtoolsRemoteexecutionV1testToolDetails
    , GoogleDevtoolsRemoteexecutionV1testToolDetails
    , googleDevtoolsRemoteexecutionV1testToolDetails
    , gdrvtdToolName
    , gdrvtdToolVersion

    -- * BuildBazelRemoteExecutionV2ExecutionCapabilities
    , BuildBazelRemoteExecutionV2ExecutionCapabilities
    , buildBazelRemoteExecutionV2ExecutionCapabilities
    , bbrevecExecutionPriorityCapabilities
    , bbrevecExecEnabled
    , bbrevecDigestFunction

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    , gdravuwprUpdateMask
    , gdravuwprWorkerPool

    -- * BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    , BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    , buildBazelRemoteExecutionV2BatchReadBlobsRequest
    , bbrevbrbrDigests

    -- * GoogleDevtoolsRemoteexecutionV1testOutputFile
    , GoogleDevtoolsRemoteexecutionV1testOutputFile
    , googleDevtoolsRemoteexecutionV1testOutputFile
    , gdrvofPath
    , gdrvofContent
    , gdrvofIsExecutable
    , gdrvofDigest

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    , googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    , gdravwpWorkerConfig
    , gdravwpState
    , gdravwpWorkerCount
    , gdravwpName

    -- * BuildBazelRemoteExecutionV2SymlinkNode
    , BuildBazelRemoteExecutionV2SymlinkNode
    , buildBazelRemoteExecutionV2SymlinkNode
    , bbrevsnName
    , bbrevsnTarget

    -- * GoogleRpcStatusDetailsItem
    , GoogleRpcStatusDetailsItem
    , googleRpcStatusDetailsItem
    , grsdiAddtional

    -- * GoogleDevtoolsRemoteexecutionV1testDirectoryNode
    , GoogleDevtoolsRemoteexecutionV1testDirectoryNode
    , googleDevtoolsRemoteexecutionV1testDirectoryNode
    , gdrvdnName
    , gdrvdnDigest

    -- * GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    , GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    , googleDevtoolsRemoteworkersV1test2DirectoryMetadata
    , gdrvdmPath
    , gdrvdmDigest

    -- * GoogleDevtoolsRemoteexecutionV1testDirectory
    , GoogleDevtoolsRemoteexecutionV1testDirectory
    , googleDevtoolsRemoteexecutionV1testDirectory
    , gdrvdDirectories
    , gdrvdFiles

    -- * BuildBazelRemoteExecutionV2ActionResult
    , BuildBazelRemoteExecutionV2ActionResult
    , buildBazelRemoteExecutionV2ActionResult
    , bbrevarExecutionMetadata
    , bbrevarOutputDirectorySymlinks
    , bbrevarOutputFileSymlinks
    , bbrevarOutputDirectories
    , bbrevarOutputFiles
    , bbrevarStderrRaw
    , bbrevarExitCode
    , bbrevarStdoutDigest
    , bbrevarStderrDigest
    , bbrevarStdoutRaw

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    , gdravdwprName

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    , googleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    , gdrvctievValue
    , gdrvctievName

    -- * GoogleDevtoolsRemoteexecutionV1testExecuteResponse
    , GoogleDevtoolsRemoteexecutionV1testExecuteResponse
    , googleDevtoolsRemoteexecutionV1testExecuteResponse
    , gdrverStatus
    , gdrverServerLogs
    , gdrverResult
    , gdrverCachedResult

    -- * BuildBazelSemverSemVer
    , BuildBazelSemverSemVer
    , buildBazelSemverSemVer
    , bbssvMinor
    , bbssvMajor
    , bbssvPatch
    , bbssvPrerelease

    -- * GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    , GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    , googleDevtoolsRemoteworkersV1test2CommandOverhead
    , gdrvcoOverhead
    , gdrvcoDuration

    -- * BuildBazelRemoteExecutionV2LogFile
    , BuildBazelRemoteExecutionV2LogFile
    , buildBazelRemoteExecutionV2LogFile
    , bbrevlfHumanReadable
    , bbrevlfDigest

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    , gdravcwprParent
    , gdravcwprPoolId
    , gdravcwprWorkerPool

    -- * GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable
    , GoogleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable
    , googleDevtoolsRemoteexecutionV1testCommandEnvironmentVariable
    , gdrvcevValue
    , gdrvcevName

    -- * BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    , BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    , buildBazelRemoteExecutionV2FindMissingBlobsResponse
    , bbrevfmbrMissingBlobDigests

    -- * GoogleDevtoolsRemoteworkersV1test2Directory
    , GoogleDevtoolsRemoteworkersV1test2Directory
    , googleDevtoolsRemoteworkersV1test2Directory
    , gDirectories
    , gFiles

    -- * GoogleDevtoolsRemoteexecutionV1testRequestMetadata
    , GoogleDevtoolsRemoteexecutionV1testRequestMetadata
    , googleDevtoolsRemoteexecutionV1testRequestMetadata
    , gdrvrmCorrelatedInvocationsId
    , gdrvrmToolInvocationId
    , gdrvrmActionId
    , gdrvrmToolDetails

    -- * BuildBazelRemoteExecutionV2ExecutionPolicy
    , BuildBazelRemoteExecutionV2ExecutionPolicy
    , buildBazelRemoteExecutionV2ExecutionPolicy
    , bbrevepPriority

    -- * BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    , BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    , buildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    , bbrevacucUpdateEnabled

    -- * GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
    , GoogleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
    , googleDevtoolsRemoteworkersV1test2CommandResultMetadataItem
    , gdrvcrmiAddtional

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    , buildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    , bbrevbubrrData
    , bbrevbubrrDigest

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    , gdravlwprWorkerPools

    -- * GoogleDevtoolsRemoteworkersV1test2CommandResult
    , GoogleDevtoolsRemoteworkersV1test2CommandResult
    , googleDevtoolsRemoteworkersV1test2CommandResult
    , gdrvcrStatus
    , gdrvcrOverhead
    , gdrvcrOutputs
    , gdrvcrExitCode
    , gdrvcrMetadata
    , gdrvcrDuration

    -- * GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage
    , GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadataStage (..)

    -- * GoogleDevtoolsRemoteexecutionV1testFileNode
    , GoogleDevtoolsRemoteexecutionV1testFileNode
    , googleDevtoolsRemoteexecutionV1testFileNode
    , gdrvfnName
    , gdrvfnIsExecutable
    , gdrvfnDigest

    -- * GoogleDevtoolsRemoteworkersV1test2AdminTemp
    , GoogleDevtoolsRemoteworkersV1test2AdminTemp
    , googleDevtoolsRemoteworkersV1test2AdminTemp
    , gdrvatCommand
    , gdrvatArg

    -- * GoogleDevtoolsRemotebuildbotCommandDurations
    , GoogleDevtoolsRemotebuildbotCommandDurations
    , googleDevtoolsRemotebuildbotCommandDurations
    , gdrcdStdout
    , gdrcdDockerPrep
    , gdrcdDownload
    , gdrcdOverall
    , gdrcdExecution
    , gdrcdIsoPrepDone
    , gdrcdUpload

    -- * BuildBazelRemoteExecutionV2PlatformProperty
    , BuildBazelRemoteExecutionV2PlatformProperty
    , buildBazelRemoteExecutionV2PlatformProperty
    , bbrevppValue
    , bbrevppName

    -- * BuildBazelRemoteExecutionV2WaitExecutionRequest
    , BuildBazelRemoteExecutionV2WaitExecutionRequest
    , buildBazelRemoteExecutionV2WaitExecutionRequest

    -- * GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    , GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    , googleDevtoolsRemoteworkersV1test2CommandOutputs
    , gdrvcoOutputs
    , gdrvcoExitCode

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPoolState (..)

    -- * BuildBazelRemoteExecutionV2ExecutedActionMetadata
    , BuildBazelRemoteExecutionV2ExecutedActionMetadata
    , buildBazelRemoteExecutionV2ExecutedActionMetadata
    , bbreveamOutputUploadCompletedTimestamp
    , bbreveamOutputUploadStartTimestamp
    , bbreveamWorkerCompletedTimestamp
    , bbreveamWorkerStartTimestamp
    , bbreveamExecutionStartTimestamp
    , bbreveamInputFetchStartTimestamp
    , bbreveamQueuedTimestamp
    , bbreveamWorker
    , bbreveamExecutionCompletedTimestamp
    , bbreveamInputFetchCompletedTimestamp

    -- * GoogleDevtoolsRemoteworkersV1test2Blob
    , GoogleDevtoolsRemoteworkersV1test2Blob
    , googleDevtoolsRemoteworkersV1test2Blob
    , gdrvbContents
    , gdrvbDigest

    -- * BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    , BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    , buildBazelRemoteExecutionV2FindMissingBlobsRequest
    , bbrevfmbrBlobDigests

    -- * GoogleDevtoolsRemoteexecutionV1testExecuteResponseServerLogs
    , GoogleDevtoolsRemoteexecutionV1testExecuteResponseServerLogs
    , googleDevtoolsRemoteexecutionV1testExecuteResponseServerLogs
    , gdrverslAddtional

    -- * BuildBazelRemoteExecutionV2GetTreeResponse
    , BuildBazelRemoteExecutionV2GetTreeResponse
    , buildBazelRemoteExecutionV2GetTreeResponse
    , bbrevgtrDirectories
    , bbrevgtrNextPageToken

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    , gdravgirName

    -- * BuildBazelRemoteExecutionV2ResultsCachePolicy
    , BuildBazelRemoteExecutionV2ResultsCachePolicy
    , buildBazelRemoteExecutionV2ResultsCachePolicy
    , bbrevrcpPriority

    -- * BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    , BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    , buildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    , bbrevbrbrrStatus
    , bbrevbrbrrData
    , bbrevbrbrrDigest

    -- * Xgafv
    , Xgafv (..)

    -- * BuildBazelRemoteExecutionV2ExecuteRequest
    , BuildBazelRemoteExecutionV2ExecuteRequest
    , buildBazelRemoteExecutionV2ExecuteRequest
    , bbreverExecutionPolicy
    , bbreverSkipCacheLookup
    , bbreverResultsCachePolicy
    , bbreverActionDigest

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    , buildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    , bbrevbubrResponses

    -- * BuildBazelRemoteExecutionV2ExecuteResponseServerLogs
    , BuildBazelRemoteExecutionV2ExecuteResponseServerLogs
    , buildBazelRemoteExecutionV2ExecuteResponseServerLogs
    , bbreverslAddtional

    -- * BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction
    , BuildBazelRemoteExecutionV2ExecutionCapabilitiesDigestFunction (..)

    -- * GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- * BuildBazelRemoteExecutionV2FileNode
    , BuildBazelRemoteExecutionV2FileNode
    , buildBazelRemoteExecutionV2FileNode
    , bbrevfnName
    , bbrevfnIsExecutable
    , bbrevfnDigest

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    , gdravlirInstances

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTask
    , GoogleDevtoolsRemoteworkersV1test2CommandTask
    , googleDevtoolsRemoteworkersV1test2CommandTask
    , gdrvctInputs
    , gdrvctExpectedOutputs
    , gdrvctTimeouts

    -- * GoogleDevtoolsRemoteexecutionV1testCommand
    , GoogleDevtoolsRemoteexecutionV1testCommand
    , googleDevtoolsRemoteexecutionV1testCommand
    , gdrvcArguments
    , gdrvcEnvironmentVariables

    -- * GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata
    , GoogleDevtoolsRemoteexecutionV1testExecuteOperationMetadata
    , googleDevtoolsRemoteexecutionV1testExecuteOperationMetadata
    , gdrveomStage
    , gdrveomStderrStreamName
    , gdrveomStdoutStreamName
    , gdrveomActionDigest

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    , googleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    , gdravwcDiskSizeGb
    , gdravwcReserved
    , gdravwcMachineType
    , gdravwcDiskType
    , gdravwcMinCPUPlatform

    -- * BuildBazelRemoteExecutionV2ExecuteResponse
    , BuildBazelRemoteExecutionV2ExecuteResponse
    , buildBazelRemoteExecutionV2ExecuteResponse
    , bbreverStatus
    , bbreverServerLogs
    , bbreverResult
    , bbreverCachedResult
    , bbreverMessage

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    , gdravdirName

    -- * BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy
    , BuildBazelRemoteExecutionV2CacheCapabilitiesSymlinkAbsolutePathStrategy (..)

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    , googleDevtoolsRemoteworkersV1test2CommandTaskInputs
    , gdrvctiWorkingDirectory
    , gdrvctiArguments
    , gdrvctiFiles
    , gdrvctiEnvironmentVariables
    , gdrvctiInlineBlobs

    -- * BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    , BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    , buildBazelRemoteExecutionV2CommandEnvironmentVariable
    , bbrevcevValue
    , bbrevcevName

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    , gdravlirParent

    -- * BuildBazelRemoteExecutionV2PriorityCapabilities
    , BuildBazelRemoteExecutionV2PriorityCapabilities
    , buildBazelRemoteExecutionV2PriorityCapabilities
    , bbrevpcPriorities

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    , buildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    , bbrevbubrRequests

    -- * GoogleDevtoolsRemoteexecutionV1testLogFile
    , GoogleDevtoolsRemoteexecutionV1testLogFile
    , googleDevtoolsRemoteexecutionV1testLogFile
    , gdrvlfHumanReadable
    , gdrvlfDigest

    -- * BuildBazelRemoteExecutionV2RequestMetadata
    , BuildBazelRemoteExecutionV2RequestMetadata
    , buildBazelRemoteExecutionV2RequestMetadata
    , bbrevrmCorrelatedInvocationsId
    , bbrevrmToolInvocationId
    , bbrevrmActionId
    , bbrevrmToolDetails

    -- * BuildBazelRemoteExecutionV2Platform
    , BuildBazelRemoteExecutionV2Platform
    , buildBazelRemoteExecutionV2Platform
    , bbrevpProperties

    -- * GoogleDevtoolsRemoteworkersV1test2AdminTempCommand
    , GoogleDevtoolsRemoteworkersV1test2AdminTempCommand (..)

    -- * BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    , BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    , buildBazelRemoteExecutionV2ExecuteOperationMetadata
    , bbreveomStage
    , bbreveomStderrStreamName
    , bbreveomStdoutStreamName
    , bbreveomActionDigest

    -- * GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    , GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    , googleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    , gdravlwprParent

    -- * BuildBazelRemoteExecutionV2Command
    , BuildBazelRemoteExecutionV2Command
    , buildBazelRemoteExecutionV2Command
    , bbrevcPlatform
    , bbrevcOutputDirectories
    , bbrevcWorkingDirectory
    , bbrevcArguments
    , bbrevcOutputFiles
    , bbrevcEnvironmentVariables

    -- * BuildBazelRemoteExecutionV2ToolDetails
    , BuildBazelRemoteExecutionV2ToolDetails
    , buildBazelRemoteExecutionV2ToolDetails
    , bbrevtdToolName
    , bbrevtdToolVersion

    -- * BuildBazelRemoteExecutionV2CacheCapabilities
    , BuildBazelRemoteExecutionV2CacheCapabilities
    , buildBazelRemoteExecutionV2CacheCapabilities
    , bbrevccSymlinkAbsolutePathStrategy
    , bbrevccMaxBatchTotalSizeBytes
    , bbrevccDigestFunction
    , bbrevccActionCacheUpdateCapabilities
    , bbrevccCachePriorityCapabilities

    -- * GoogleDevtoolsRemotebuildbotCommandEvents
    , GoogleDevtoolsRemotebuildbotCommandEvents
    , googleDevtoolsRemotebuildbotCommandEvents
    , gdrceDockerCacheHit
    , gdrceNumErrors
    , gdrceInputCacheMiss
    , gdrceNumWarnings

    -- * GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    , GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    , googleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    , gdrvctoDirectories
    , gdrvctoStderrDestination
    , gdrvctoFiles
    , gdrvctoStdoutDestination

    -- * GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- * BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    , BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    , buildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    , bStatus
    , bDigest

    -- * BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    , BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    , buildBazelRemoteExecutionV2BatchReadBlobsResponse
    , bbrevbrbrResponses
    ) where

import           Network.Google.Prelude
import           Network.Google.RemoteBuildExecution.Types.Product
import           Network.Google.RemoteBuildExecution.Types.Sum

-- | Default request referring to version 'v2' of the Remote Build Execution API. This contains the host and root path used as a starting point for constructing service requests.
remoteBuildExecutionService :: ServiceConfig
remoteBuildExecutionService
  = defaultService
      (ServiceId "remotebuildexecution:v2")
      "remotebuildexecution.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
