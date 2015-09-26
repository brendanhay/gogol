{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Dataflow.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataflow.Types
    (
    -- * API Definition
      dataflow


    -- * ApproximateProgress
    , ApproximateProgress
    , approximateProgress
    , apRemainingTime
    , apPercentComplete
    , apPosition

    -- * AutoscalingSettings
    , AutoscalingSettings
    , autoscalingSettings
    , asMaxNumWorkers
    , asAlgorithm

    -- * ComputationTopology
    , ComputationTopology
    , computationTopology
    , ctStateFamilies
    , ctUserStageName
    , ctInputs
    , ctKeyRanges
    , ctOutputs
    , ctComputationId
    , ctSystemStageName

    -- * ConcatPosition
    , ConcatPosition
    , concatPosition
    , cpIndex
    , cpPosition

    -- * CustomSourceLocation
    , CustomSourceLocation
    , customSourceLocation
    , cslStateful

    -- * DataDiskAssignment
    , DataDiskAssignment
    , dataDiskAssignment
    , ddaVmInstance
    , ddaDataDisks

    -- * DerivedSource
    , DerivedSource
    , derivedSource
    , dsDerivationMode
    , dsSource

    -- * Disk
    , Disk
    , disk
    , dSizeGb
    , dDiskType
    , dMountPoint

    -- * DynamicSourceSplit
    , DynamicSourceSplit
    , dynamicSourceSplit
    , dssResidual
    , dssPrimary

    -- * Environment
    , Environment
    , environment
    , eDataset
    , eExperiments
    , eWorkerPools
    , eClusterManagerApiService
    , eVersion
    , eInternalExperiments
    , eTempStoragePrefix
    , eUserAgent
    , eSdkPipelineOptions

    -- * EnvironmentInternalExperiments
    , EnvironmentInternalExperiments
    , environmentInternalExperiments

    -- * EnvironmentSdkPipelineOptions
    , EnvironmentSdkPipelineOptions
    , environmentSdkPipelineOptions

    -- * EnvironmentUserAgent
    , EnvironmentUserAgent
    , environmentUserAgent

    -- * EnvironmentVersion
    , EnvironmentVersion
    , environmentVersion

    -- * FlattenInstruction
    , FlattenInstruction
    , flattenInstruction
    , fiInputs

    -- * InstructionInput
    , InstructionInput
    , instructionInput
    , iiProducerInstructionIndex
    , iiOutputNum

    -- * InstructionOutput
    , InstructionOutput
    , instructionOutput
    , ioCodec
    , ioName
    , ioSystemName

    -- * InstructionOutputCodec
    , InstructionOutputCodec
    , instructionOutputCodec

    -- * Job
    , Job
    , job
    , jobRequestedState
    , jobEnvironment
    , jobClientRequestId
    , jobCurrentState
    , jobReplacedByJobId
    , jobSteps
    , jobExecutionInfo
    , jobName
    , jobTransformNameMapping
    , jobId
    , jobProjectId
    , jobType
    , jobCurrentStateTime
    , jobReplaceJobId
    , jobCreateTime

    -- * JobExecutionInfo
    , JobExecutionInfo
    , jobExecutionInfo
    , jeiStages

    -- * JobExecutionInfoStages
    , JobExecutionInfoStages
    , jobExecutionInfoStages

    -- * JobExecutionStageInfo
    , JobExecutionStageInfo
    , jobExecutionStageInfo
    , jesiStepName

    -- * JobMessage
    , JobMessage
    , jobMessage
    , jmTime
    , jmMessageText
    , jmMessageImportance
    , jmId

    -- * JobMetrics
    , JobMetrics
    , jobMetrics
    , jmMetrics
    , jmMetricTime

    -- * JobTransformNameMapping
    , JobTransformNameMapping
    , jobTransformNameMapping

    -- * KeyRangeDataDiskAssignment
    , KeyRangeDataDiskAssignment
    , keyRangeDataDiskAssignment
    , krddaDataDisk
    , krddaStart
    , krddaEnd

    -- * KeyRangeLocation
    , KeyRangeLocation
    , keyRangeLocation
    , krlPersistentDirectory
    , krlDataDisk
    , krlStart
    , krlDeliveryEndpoint
    , krlEnd

    -- * LeaseWorkItemRequest
    , LeaseWorkItemRequest
    , leaseWorkItemRequest
    , lwirWorkItemTypes
    , lwirCurrentWorkerTime
    , lwirWorkerCapabilities
    , lwirRequestedLeaseDuration
    , lwirWorkerId

    -- * LeaseWorkItemResponse
    , LeaseWorkItemResponse
    , leaseWorkItemResponse
    , lwirWorkItems

    -- * ListJobMessagesResponse
    , ListJobMessagesResponse
    , listJobMessagesResponse
    , ljmrJobMessages
    , ljmrNextPageToken

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * MapTask
    , MapTask
    , mapTask
    , mtInstructions
    , mtSystemName
    , mtStageName

    -- * MetricStructuredName
    , MetricStructuredName
    , metricStructuredName
    , msnOrigin
    , msnContext
    , msnName

    -- * MetricStructuredNameContext
    , MetricStructuredNameContext
    , metricStructuredNameContext

    -- * MetricUpdate
    , MetricUpdate
    , metricUpdate
    , muMeanSum
    , muInternal
    , muSet
    , muCumulative
    , muKind
    , muUpdateTime
    , muMeanCount
    , muName
    , muScalar

    -- * MountedDataDisk
    , MountedDataDisk
    , mountedDataDisk
    , mddDataDisk

    -- * MultiOutputInfo
    , MultiOutputInfo
    , multiOutputInfo
    , moiTag

    -- * Package
    , Package
    , package
    , pLocation
    , pName

    -- * ParDoInstruction
    , ParDoInstruction
    , parDoInstruction
    , pdiNumOutputs
    , pdiMultiOutputInfos
    , pdiSideInputs
    , pdiInput
    , pdiUserFn

    -- * ParDoInstructionUserFn
    , ParDoInstructionUserFn
    , parDoInstructionUserFn

    -- * ParallelInstruction
    , ParallelInstruction
    , parallelInstruction
    , piRead
    , piWrite
    , piParDo
    , piPartialGroupByKey
    , piOutputs
    , piName
    , piSystemName
    , piFlatten

    -- * PartialGroupByKeyInstruction
    , PartialGroupByKeyInstruction
    , partialGroupByKeyInstruction
    , pgbkiValueCombiningFn
    , pgbkiInput
    , pgbkiInputElementCodec

    -- * PartialGroupByKeyInstructionInputElementCodec
    , PartialGroupByKeyInstructionInputElementCodec
    , partialGroupByKeyInstructionInputElementCodec

    -- * PartialGroupByKeyInstructionValueCombiningFn
    , PartialGroupByKeyInstructionValueCombiningFn
    , partialGroupByKeyInstructionValueCombiningFn

    -- * Position
    , Position
    , position
    , pByteOffset
    , pConcatPosition
    , pRecordIndex
    , pShufflePosition
    , pKey
    , pEnd

    -- * PubsubLocation
    , PubsubLocation
    , pubsubLocation
    , plTrackingSubscription
    , plDropLateData
    , plTimestampLabel
    , plIdLabel
    , plTopic
    , plSubscription

    -- * ReadInstruction
    , ReadInstruction
    , readInstruction
    , riSource

    -- * ReportWorkItemStatusRequest
    , ReportWorkItemStatusRequest
    , reportWorkItemStatusRequest
    , rwisrCurrentWorkerTime
    , rwisrWorkItemStatuses
    , rwisrWorkerId

    -- * ReportWorkItemStatusResponse
    , ReportWorkItemStatusResponse
    , reportWorkItemStatusResponse
    , rwisrWorkItemServiceStates

    -- * SeqMapTask
    , SeqMapTask
    , seqMapTask
    , smtInputs
    , smtName
    , smtOutputInfos
    , smtSystemName
    , smtStageName
    , smtUserFn

    -- * SeqMapTaskOutputInfo
    , SeqMapTaskOutputInfo
    , seqMapTaskOutputInfo
    , smtoiSink
    , smtoiTag

    -- * SeqMapTaskUserFn
    , SeqMapTaskUserFn
    , seqMapTaskUserFn

    -- * ShellTask
    , ShellTask
    , shellTask
    , stCommand
    , stExitCode

    -- * SideInputInfo
    , SideInputInfo
    , sideInputInfo
    , siiTag
    , siiKind
    , siiSources

    -- * SideInputInfoKind
    , SideInputInfoKind
    , sideInputInfoKind

    -- * Sink
    , Sink
    , sink
    , sinCodec
    , sinSpec

    -- * SinkCodec
    , SinkCodec
    , sinkCodec

    -- * SinkSpec
    , SinkSpec
    , sinkSpec

    -- * Source
    , Source
    , source
    , sDoesNotNeedSplitting
    , sBaseSpecs
    , sCodec
    , sSpec
    , sMetadata

    -- * SourceCodec
    , SourceCodec
    , sourceCodec

    -- * SourceFork
    , SourceFork
    , sourceFork
    , sfResidual
    , sfPrimarySource
    , sfPrimary
    , sfResidualSource

    -- * SourceGetMetadataRequest
    , SourceGetMetadataRequest
    , sourceGetMetadataRequest
    , sgmrSource

    -- * SourceGetMetadataResponse
    , SourceGetMetadataResponse
    , sourceGetMetadataResponse
    , sgmrMetadata

    -- * SourceItemBaseSpecs
    , SourceItemBaseSpecs
    , sourceItemBaseSpecs

    -- * SourceMetadata
    , SourceMetadata
    , sourceMetadata
    , smEstimatedSizeBytes
    , smProducesSortedKeys
    , smInfinite

    -- * SourceOperationRequest
    , SourceOperationRequest
    , sourceOperationRequest
    , sorSplit
    , sorGetMetadata

    -- * SourceOperationResponse
    , SourceOperationResponse
    , sourceOperationResponse
    , sSplit
    , sGetMetadata

    -- * SourceSpec
    , SourceSpec
    , sourceSpec

    -- * SourceSplitOptions
    , SourceSplitOptions
    , sourceSplitOptions
    , ssoDesiredShardSizeBytes
    , ssoDesiredBundleSizeBytes

    -- * SourceSplitRequest
    , SourceSplitRequest
    , sourceSplitRequest
    , ssrSource
    , ssrOptions

    -- * SourceSplitResponse
    , SourceSplitResponse
    , sourceSplitResponse
    , ssrBundles
    , ssrShards
    , ssrOutcome

    -- * SourceSplitShard
    , SourceSplitShard
    , sourceSplitShard
    , sssDerivationMode
    , sssSource

    -- * StateFamilyConfig
    , StateFamilyConfig
    , stateFamilyConfig
    , sfcIsRead
    , sfcStateFamily

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- * Step
    , Step
    , step
    , sKind
    , sName
    , sProperties

    -- * StepProperties
    , StepProperties
    , stepProperties

    -- * StreamLocation
    , StreamLocation
    , streamLocation
    , slStreamingStageLocation
    , slSideInputLocation
    , slCustomSourceLocation
    , slPubsubLocation

    -- * StreamingComputationRanges
    , StreamingComputationRanges
    , streamingComputationRanges
    , scrRangeAssignments
    , scrComputationId

    -- * StreamingComputationTask
    , StreamingComputationTask
    , streamingComputationTask
    , sctTaskType
    , sctDataDisks
    , sctComputationRanges

    -- * StreamingSetupTask
    , StreamingSetupTask
    , streamingSetupTask
    , sstStreamingComputationTopology
    , sstReceiveWorkPort
    , sstWorkerHarnessPort

    -- * StreamingSideInputLocation
    , StreamingSideInputLocation
    , streamingSideInputLocation
    , ssilTag
    , ssilStateFamily

    -- * StreamingStageLocation
    , StreamingStageLocation
    , streamingStageLocation
    , sslStreamId

    -- * TaskRunnerSettings
    , TaskRunnerSettings
    , taskRunnerSettings
    , trsContinueOnException
    , trsHarnessCommand
    , trsWorkflowFileName
    , trsTaskGroup
    , trsAlsologtostderr
    , trsDataflowApiVersion
    , trsLogDir
    , trsCommandlinesFileName
    , trsVmId
    , trsBaseUrl
    , trsOauthScopes
    , trsTaskUser
    , trsStreamingWorkerMainClass
    , trsBaseTaskDir
    , trsLogUploadLocation
    , trsTempStoragePrefix
    , trsLogToSerialconsole
    , trsParallelWorkerSettings
    , trsLanguageHint

    -- * TopologyConfig
    , TopologyConfig
    , topologyConfig
    , tcDataDiskAssignments
    , tcUserStageToComputationNameMap
    , tcComputations

    -- * TopologyConfigUserStageToComputationNameMap
    , TopologyConfigUserStageToComputationNameMap
    , topologyConfigUserStageToComputationNameMap

    -- * WorkItem
    , WorkItem
    , workItem
    , wiJobId
    , wiReportStatusInterval
    , wiShellTask
    , wiStreamingSetupTask
    , wiInitialReportIndex
    , wiMapTask
    , wiPackages
    , wiStreamingComputationTask
    , wiSourceOperationTask
    , wiId
    , wiProjectId
    , wiLeaseExpireTime
    , wiConfiguration
    , wiSeqMapTask

    -- * WorkItemServiceState
    , WorkItemServiceState
    , workItemServiceState
    , wissNextReportIndex
    , wissReportStatusInterval
    , wissHarnessData
    , wissSuggestedStopPoint
    , wissSuggestedStopPosition
    , wissLeaseExpireTime

    -- * WorkItemServiceStateHarnessData
    , WorkItemServiceStateHarnessData
    , workItemServiceStateHarnessData

    -- * WorkItemStatus
    , WorkItemStatus
    , workItemStatus
    , wisProgress
    , wisSourceOperationResponse
    , wisStopPosition
    , wisDynamicSourceSplit
    , wisCompleted
    , wisSourceFork
    , wisReportIndex
    , wisRequestedLeaseDuration
    , wisErrors
    , wisMetricUpdates
    , wisWorkItemId

    -- * WorkerPool
    , WorkerPool
    , workerPool
    , wpAutoscalingSettings
    , wpDiskSizeGb
    , wpKind
    , wpTaskrunnerSettings
    , wpNumWorkers
    , wpNetwork
    , wpZone
    , wpPackages
    , wpOnHostMaintenance
    , wpDiskSourceImage
    , wpMachineType
    , wpMetadata
    , wpDiskType
    , wpTeardownPolicy
    , wpDefaultPackageSet
    , wpPoolArgs
    , wpDataDisks

    -- * WorkerPoolMetadata
    , WorkerPoolMetadata
    , workerPoolMetadata

    -- * WorkerPoolPoolArgs
    , WorkerPoolPoolArgs
    , workerPoolPoolArgs

    -- * WorkerSettings
    , WorkerSettings
    , workerSettings
    , wsServicePath
    , wsBaseUrl
    , wsShuffleServicePath
    , wsTempStoragePrefix
    , wsReportingEnabled
    , wsWorkerId

    -- * WriteInstruction
    , WriteInstruction
    , writeInstruction
    , wiSink
    , wiInput
    ) where

import           Network.Google.Dataflow.Types.Product
import           Network.Google.Dataflow.Types.Sum
import           Network.Google.Prelude

dataflow :: a
dataflow = error "dataflow"
