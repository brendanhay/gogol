{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Dataflow
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Google Dataflow API.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference>
module Network.Google.Dataflow
    (
    -- * API
      DataflowAPI
    , dataflowAPI
    , dataflowURL

    -- * Service Methods

    -- * REST Resources

    -- ** DataflowProjectsJobsCreate
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Create

    -- ** DataflowProjectsJobsGet
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Get

    -- ** DataflowProjectsJobsGetMetrics
    , module Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics

    -- ** DataflowProjectsJobsList
    , module Network.Google.Resource.Dataflow.Projects.Jobs.List

    -- ** DataflowProjectsJobsMessagesList
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List

    -- ** DataflowProjectsJobsUpdate
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Update

    -- ** DataflowProjectsJobsWorkItemsLease
    , module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease

    -- ** DataflowProjectsJobsWorkItemsReportStatus
    , module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus

    -- * Types

    -- ** ComputationTopology
    , ComputationTopology
    , computationTopology
    , ctStateFamilies
    , ctUserStageName
    , ctInputs
    , ctKeyRanges
    , ctOutputs
    , ctComputationId
    , ctSystemStageName

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** WorkItem
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

    -- ** JobExecutionInfoStages
    , JobExecutionInfoStages
    , jobExecutionInfoStages

    -- ** SourceSplitResponse
    , SourceSplitResponse
    , sourceSplitResponse
    , ssrBundles
    , ssrShards
    , ssrOutcome

    -- ** WorkerPoolMetadata
    , WorkerPoolMetadata
    , workerPoolMetadata

    -- ** AutoscalingSettings
    , AutoscalingSettings
    , autoscalingSettings
    , asMaxNumWorkers
    , asAlgorithm

    -- ** EnvironmentVersion
    , EnvironmentVersion
    , environmentVersion

    -- ** Sink
    , Sink
    , sink
    , sCodec
    , sSpec

    -- ** InstructionOutput
    , InstructionOutput
    , instructionOutput
    , ioCodec
    , ioName
    , ioSystemName

    -- ** JobExecutionStageInfo
    , JobExecutionStageInfo
    , jobExecutionStageInfo
    , jesiStepName

    -- ** SourceSplitOptions
    , SourceSplitOptions
    , sourceSplitOptions
    , ssoDesiredShardSizeBytes
    , ssoDesiredBundleSizeBytes

    -- ** ReportWorkItemStatusRequest
    , ReportWorkItemStatusRequest
    , reportWorkItemStatusRequest
    , rwisrCurrentWorkerTime
    , rwisrWorkItemStatuses
    , rwisrWorkerId

    -- ** MetricStructuredName
    , MetricStructuredName
    , metricStructuredName
    , msnOrigin
    , msnContext
    , msnName

    -- ** Disk
    , Disk
    , disk
    , dSizeGb
    , dDiskType
    , dMountPoint

    -- ** ConcatPosition
    , ConcatPosition
    , concatPosition
    , cpIndex
    , cpPosition

    -- ** Environment
    , Environment
    , environment
    , eDataset
    , eExperiments
    , eWorkerPools
    , eClusterManagerAPIService
    , eVersion
    , eInternalExperiments
    , eTempStoragePrefix
    , eUserAgent
    , eSdkPipelineOptions

    -- ** WriteInstruction
    , WriteInstruction
    , writeInstruction
    , wiSink
    , wiInput

    -- ** SourceGetMetadataResponse
    , SourceGetMetadataResponse
    , sourceGetMetadataResponse
    , sgmrMetadata

    -- ** EnvironmentUserAgent
    , EnvironmentUserAgent
    , environmentUserAgent

    -- ** MetricStructuredNameContext
    , MetricStructuredNameContext
    , metricStructuredNameContext

    -- ** MetricUpdate
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

    -- ** StreamingStageLocation
    , StreamingStageLocation
    , streamingStageLocation
    , sslStreamId

    -- ** DerivedSource
    , DerivedSource
    , derivedSource
    , dsDerivationMode
    , dsSource

    -- ** SourceSpec
    , SourceSpec
    , sourceSpec

    -- ** TaskRunnerSettings
    , TaskRunnerSettings
    , taskRunnerSettings
    , trsContinueOnException
    , trsHarnessCommand
    , trsWorkflowFileName
    , trsTaskGroup
    , trsAlsologtostderr
    , trsDataflowAPIVersion
    , trsLogDir
    , trsCommandlinesFileName
    , trsVMId
    , trsBaseURL
    , trsOAuthScopes
    , trsTaskUser
    , trsStreamingWorkerMainClass
    , trsBaseTaskDir
    , trsLogUploadLocation
    , trsTempStoragePrefix
    , trsLogToSerialconsole
    , trsParallelWorkerSettings
    , trsLanguageHint

    -- ** JobTransformNameMapping
    , JobTransformNameMapping
    , jobTransformNameMapping

    -- ** JobMetrics
    , JobMetrics
    , jobMetrics
    , jmMetrics
    , jmMetricTime

    -- ** FlattenInstruction
    , FlattenInstruction
    , flattenInstruction
    , fiInputs

    -- ** EnvironmentInternalExperiments
    , EnvironmentInternalExperiments
    , environmentInternalExperiments

    -- ** SourceMetadata
    , SourceMetadata
    , sourceMetadata
    , smEstimatedSizeBytes
    , smProducesSortedKeys
    , smInfinite

    -- ** WorkItemStatus
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

    -- ** ShellTask
    , ShellTask
    , shellTask
    , stCommand
    , stExitCode

    -- ** StepProperties
    , StepProperties
    , stepProperties

    -- ** EnvironmentSdkPipelineOptions
    , EnvironmentSdkPipelineOptions
    , environmentSdkPipelineOptions

    -- ** LeaseWorkItemRequest
    , LeaseWorkItemRequest
    , leaseWorkItemRequest
    , lwirWorkItemTypes
    , lwirCurrentWorkerTime
    , lwirWorkerCapabilities
    , lwirRequestedLeaseDuration
    , lwirWorkerId

    -- ** SourceOperationResponse
    , SourceOperationResponse
    , sourceOperationResponse
    , sorSplit
    , sorGetMetadata

    -- ** TopologyConfig
    , TopologyConfig
    , topologyConfig
    , tcDataDiskAssignments
    , tcUserStageToComputationNameMap
    , tcComputations

    -- ** WorkerSettings
    , WorkerSettings
    , workerSettings
    , wsServicePath
    , wsBaseURL
    , wsShuffleServicePath
    , wsTempStoragePrefix
    , wsReportingEnabled
    , wsWorkerId

    -- ** TopologyConfigUserStageToComputationNameMap
    , TopologyConfigUserStageToComputationNameMap
    , topologyConfigUserStageToComputationNameMap

    -- ** WorkItemServiceStateHarnessData
    , WorkItemServiceStateHarnessData
    , workItemServiceStateHarnessData

    -- ** StatusDetails
    , StatusDetails
    , statusDetails

    -- ** WorkItemServiceState
    , WorkItemServiceState
    , workItemServiceState
    , wissNextReportIndex
    , wissReportStatusInterval
    , wissHarnessData
    , wissSuggestedStopPoint
    , wissSuggestedStopPosition
    , wissLeaseExpireTime

    -- ** DataDiskAssignment
    , DataDiskAssignment
    , dataDiskAssignment
    , ddaVMInstance
    , ddaDataDisks

    -- ** StreamingSetupTask
    , StreamingSetupTask
    , streamingSetupTask
    , sstStreamingComputationTopology
    , sstReceiveWorkPort
    , sstWorkerHarnessPort

    -- ** PartialGroupByKeyInstructionInputElementCodec
    , PartialGroupByKeyInstructionInputElementCodec
    , partialGroupByKeyInstructionInputElementCodec

    -- ** WorkerPoolPoolArgs
    , WorkerPoolPoolArgs
    , workerPoolPoolArgs

    -- ** SinkCodec
    , SinkCodec
    , sinkCodec

    -- ** StreamLocation
    , StreamLocation
    , streamLocation
    , slStreamingStageLocation
    , slSideInputLocation
    , slCustomSourceLocation
    , slPubsubLocation

    -- ** MountedDataDisk
    , MountedDataDisk
    , mountedDataDisk
    , mddDataDisk

    -- ** InstructionOutputCodec
    , InstructionOutputCodec
    , instructionOutputCodec

    -- ** MapTask
    , MapTask
    , mapTask
    , mtInstructions
    , mtSystemName
    , mtStageName

    -- ** ParDoInstructionUserFn
    , ParDoInstructionUserFn
    , parDoInstructionUserFn

    -- ** StreamingComputationTask
    , StreamingComputationTask
    , streamingComputationTask
    , sctTaskType
    , sctDataDisks
    , sctComputationRanges

    -- ** StreamingSideInputLocation
    , StreamingSideInputLocation
    , streamingSideInputLocation
    , ssilTag
    , ssilStateFamily

    -- ** JobMessage
    , JobMessage
    , jobMessage
    , jmTime
    , jmMessageText
    , jmMessageImportance
    , jmId

    -- ** Job
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

    -- ** SeqMapTaskUserFn
    , SeqMapTaskUserFn
    , seqMapTaskUserFn

    -- ** SeqMapTaskOutputInfo
    , SeqMapTaskOutputInfo
    , seqMapTaskOutputInfo
    , smtoiSink
    , smtoiTag

    -- ** PartialGroupByKeyInstructionValueCombiningFn
    , PartialGroupByKeyInstructionValueCombiningFn
    , partialGroupByKeyInstructionValueCombiningFn

    -- ** SourceGetMetadataRequest
    , SourceGetMetadataRequest
    , sourceGetMetadataRequest
    , sgmrSource

    -- ** DynamicSourceSplit
    , DynamicSourceSplit
    , dynamicSourceSplit
    , dssResidual
    , dssPrimary

    -- ** ReadInstruction
    , ReadInstruction
    , readInstruction
    , riSource

    -- ** WorkerPool
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

    -- ** Package
    , Package
    , package
    , pLocation
    , pName

    -- ** SinkSpec
    , SinkSpec
    , sinkSpec

    -- ** Step
    , Step
    , step
    , sKind
    , sName
    , sProperties

    -- ** Source
    , Source
    , source
    , souDoesNotNeedSplitting
    , souBaseSpecs
    , souCodec
    , souSpec
    , souMetadata

    -- ** SourceFork
    , SourceFork
    , sourceFork
    , sfResidual
    , sfPrimarySource
    , sfPrimary
    , sfResidualSource

    -- ** KeyRangeLocation
    , KeyRangeLocation
    , keyRangeLocation
    , krlPersistentDirectory
    , krlDataDisk
    , krlStart
    , krlDeliveryEndpoint
    , krlEnd

    -- ** ReportWorkItemStatusResponse
    , ReportWorkItemStatusResponse
    , reportWorkItemStatusResponse
    , rwisrWorkItemServiceStates

    -- ** ApproximateProgress
    , ApproximateProgress
    , approximateProgress
    , apRemainingTime
    , apPercentComplete
    , apPosition

    -- ** StreamingComputationRanges
    , StreamingComputationRanges
    , streamingComputationRanges
    , scrRangeAssignments
    , scrComputationId

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- ** MultiOutputInfo
    , MultiOutputInfo
    , multiOutputInfo
    , moiTag

    -- ** PartialGroupByKeyInstruction
    , PartialGroupByKeyInstruction
    , partialGroupByKeyInstruction
    , pgbkiValueCombiningFn
    , pgbkiInput
    , pgbkiInputElementCodec

    -- ** ParDoInstruction
    , ParDoInstruction
    , parDoInstruction
    , pdiNumOutputs
    , pdiMultiOutputInfos
    , pdiSideInputs
    , pdiInput
    , pdiUserFn

    -- ** SideInputInfo
    , SideInputInfo
    , sideInputInfo
    , siiTag
    , siiKind
    , siiSources

    -- ** StateFamilyConfig
    , StateFamilyConfig
    , stateFamilyConfig
    , sfcIsRead
    , sfcStateFamily

    -- ** ParallelInstruction
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

    -- ** SourceSplitShard
    , SourceSplitShard
    , sourceSplitShard
    , sssDerivationMode
    , sssSource

    -- ** SourceCodec
    , SourceCodec
    , sourceCodec

    -- ** CustomSourceLocation
    , CustomSourceLocation
    , customSourceLocation
    , cslStateful

    -- ** JobExecutionInfo
    , JobExecutionInfo
    , jobExecutionInfo
    , jeiStages

    -- ** SideInputInfoKind
    , SideInputInfoKind
    , sideInputInfoKind

    -- ** SeqMapTask
    , SeqMapTask
    , seqMapTask
    , smtInputs
    , smtName
    , smtOutputInfos
    , smtSystemName
    , smtStageName
    , smtUserFn

    -- ** ListJobMessagesResponse
    , ListJobMessagesResponse
    , listJobMessagesResponse
    , ljmrJobMessages
    , ljmrNextPageToken

    -- ** KeyRangeDataDiskAssignment
    , KeyRangeDataDiskAssignment
    , keyRangeDataDiskAssignment
    , krddaDataDisk
    , krddaStart
    , krddaEnd

    -- ** SourceBaseSpecs
    , SourceBaseSpecs
    , sourceBaseSpecs

    -- ** PubsubLocation
    , PubsubLocation
    , pubsubLocation
    , plTrackingSubscription
    , plDropLateData
    , plTimestampLabel
    , plIdLabel
    , plTopic
    , plSubscription

    -- ** InstructionInput
    , InstructionInput
    , instructionInput
    , iiProducerInstructionIndex
    , iiOutputNum

    -- ** SourceSplitRequest
    , SourceSplitRequest
    , sourceSplitRequest
    , ssrSource
    , ssrOptions

    -- ** SourceOperationRequest
    , SourceOperationRequest
    , sourceOperationRequest
    , sSplit
    , sGetMetadata

    -- ** LeaseWorkItemResponse
    , LeaseWorkItemResponse
    , leaseWorkItemResponse
    , lwirWorkItems

    -- ** Position
    , Position
    , position
    , pByteOffset
    , pConcatPosition
    , pRecordIndex
    , pShufflePosition
    , pKey
    , pEnd
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Dataflow.Projects.Jobs.Create
import           Network.Google.Resource.Dataflow.Projects.Jobs.Get
import           Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics
import           Network.Google.Resource.Dataflow.Projects.Jobs.List
import           Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List
import           Network.Google.Resource.Dataflow.Projects.Jobs.Update
import           Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
import           Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus

{- $resources
TODO
-}

type DataflowAPI =
     ProjectsJobsWorkItemsLeaseResource :<|>
       ProjectsJobsWorkItemsReportStatusResource
       :<|> ProjectsJobsMessagesListResource
       :<|> ProjectsJobsListResource
       :<|> ProjectsJobsGetResource
       :<|> ProjectsJobsCreateResource
       :<|> ProjectsJobsUpdateResource
       :<|> ProjectsJobsGetMetricsResource

dataflowAPI :: Proxy DataflowAPI
dataflowAPI = Proxy
