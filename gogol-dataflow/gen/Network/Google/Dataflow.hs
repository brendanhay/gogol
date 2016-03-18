{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- Google Dataflow API.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference>
module Network.Google.Dataflow
    (
    -- * Service Configuration
      dataflowService

    -- * OAuth Scopes
    , userinfoEmailScope
    , cloudPlatformScope

    -- * API Declaration
    , DataflowAPI

    -- * Resources

    -- ** dataflow.projects.jobs.create
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Create

    -- ** dataflow.projects.jobs.get
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Get

    -- ** dataflow.projects.jobs.getMetrics
    , module Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics

    -- ** dataflow.projects.jobs.list
    , module Network.Google.Resource.Dataflow.Projects.Jobs.List

    -- ** dataflow.projects.jobs.messages.list
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List

    -- ** dataflow.projects.jobs.update
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Update

    -- ** dataflow.projects.jobs.workItems.lease
    , module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease

    -- ** dataflow.projects.jobs.workItems.reportStatus
    , module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus

    -- ** dataflow.projects.workerMessages
    , module Network.Google.Resource.Dataflow.Projects.WorkerMessages

    -- * Types

    -- ** JobExecutionInfoStages
    , JobExecutionInfoStages
    , jobExecutionInfoStages
    , jeisAddtional

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

    -- ** SourceSplitResponse
    , SourceSplitResponse
    , sourceSplitResponse
    , ssrBundles
    , ssrShards
    , ssrOutcome

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

    -- ** WorkerHealthReport
    , WorkerHealthReport
    , workerHealthReport
    , whrVMIsHealthy
    , whrReportInterval
    , whrPods
    , whrVMStartupTime

    -- ** SourceSplitOptions
    , SourceSplitOptions
    , sourceSplitOptions
    , ssoDesiredShardSizeBytes
    , ssoDesiredBundleSizeBytes

    -- ** WorkerPoolMetadata
    , WorkerPoolMetadata
    , workerPoolMetadata
    , wpmAddtional

    -- ** AutoscalingSettings
    , AutoscalingSettings
    , autoscalingSettings
    , asMaxNumWorkers
    , asAlgorithm

    -- ** JobExecutionStageInfo
    , JobExecutionStageInfo
    , jobExecutionStageInfo
    , jesiStepName

    -- ** InstructionOutput
    , InstructionOutput
    , instructionOutput
    , ioCodec
    , ioName
    , ioSystemName

    -- ** ReportWorkItemStatusRequest
    , ReportWorkItemStatusRequest
    , reportWorkItemStatusRequest
    , rwisrCurrentWorkerTime
    , rwisrWorkItemStatuses
    , rwisrWorkerId

    -- ** EnvironmentVersion
    , EnvironmentVersion
    , environmentVersion
    , evAddtional

    -- ** Sink
    , Sink
    , sink
    , sCodec
    , sSpec

    -- ** WorkerHealthReportResponse
    , WorkerHealthReportResponse
    , workerHealthReportResponse
    , whrrReportInterval

    -- ** MetricStructuredName
    , MetricStructuredName
    , metricStructuredName
    , msnOrigin
    , msnContext
    , msnName

    -- ** WriteInstruction
    , WriteInstruction
    , writeInstruction
    , wiSink
    , wiInput

    -- ** EnvironmentUserAgent
    , EnvironmentUserAgent
    , environmentUserAgent
    , euaAddtional

    -- ** Disk
    , Disk
    , disk
    , dSizeGb
    , dDiskType
    , dMountPoint

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

    -- ** SourceGetMetadataResponse
    , SourceGetMetadataResponse
    , sourceGetMetadataResponse
    , sgmrMetadata

    -- ** Environment
    , Environment
    , environment
    , eDataSet
    , eExperiments
    , eWorkerPools
    , eClusterManagerAPIService
    , eVersion
    , eInternalExperiments
    , eTempStoragePrefix
    , eUserAgent
    , eSdkPipelineOptions

    -- ** ConcatPosition
    , ConcatPosition
    , concatPosition
    , cpIndex
    , cpPosition

    -- ** MetricStructuredNameContext
    , MetricStructuredNameContext
    , metricStructuredNameContext
    , msncAddtional

    -- ** StreamingStageLocation
    , StreamingStageLocation
    , streamingStageLocation
    , sslStreamId

    -- ** DerivedSource
    , DerivedSource
    , derivedSource
    , dsDerivationMode
    , dsSource

    -- ** JobMetrics
    , JobMetrics
    , jobMetrics
    , jmMetrics
    , jmMetricTime

    -- ** WorkItemStatus
    , WorkItemStatus
    , workItemStatus
    , wisReportedProgress
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

    -- ** WorkerMessageLabels
    , WorkerMessageLabels
    , workerMessageLabels
    , wmlAddtional

    -- ** FlattenInstruction
    , FlattenInstruction
    , flattenInstruction
    , fiInputs

    -- ** WorkerMessageCode
    , WorkerMessageCode
    , workerMessageCode
    , wmcParameters
    , wmcCode

    -- ** JobTransformNameMApping
    , JobTransformNameMApping
    , jobTransformNameMApping
    , jtnmaAddtional

    -- ** SourceSpec
    , SourceSpec
    , sourceSpec
    , ssAddtional

    -- ** SourceMetadata
    , SourceMetadata
    , sourceMetadata
    , smEstimatedSizeBytes
    , smProducesSortedKeys
    , smInfinite

    -- ** EnvironmentInternalExperiments
    , EnvironmentInternalExperiments
    , environmentInternalExperiments
    , eieAddtional

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

    -- ** EnvironmentSdkPipelineOptions
    , EnvironmentSdkPipelineOptions
    , environmentSdkPipelineOptions
    , espoAddtional

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

    -- ** TopologyConfigUserStageToComputationNameMap
    , TopologyConfigUserStageToComputationNameMap
    , topologyConfigUserStageToComputationNameMap
    , tcustcnmAddtional

    -- ** ShellTask
    , ShellTask
    , shellTask
    , stCommand
    , stExitCode

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ReportedParallelism
    , ReportedParallelism
    , reportedParallelism
    , rpValue
    , rpIsInfinite

    -- ** StepProperties
    , StepProperties
    , stepProperties
    , spAddtional

    -- ** TopologyConfig
    , TopologyConfig
    , topologyConfig
    , tcDataDiskAssignments
    , tcForwardingKeyBits
    , tcUserStageToComputationNameMap
    , tcComputations

    -- ** ApproximateSplitRequest
    , ApproximateSplitRequest
    , approximateSplitRequest
    , asrFractionConsumed
    , asrPosition

    -- ** WorkerSettings
    , WorkerSettings
    , workerSettings
    , wsServicePath
    , wsBaseURL
    , wsShuffleServicePath
    , wsTempStoragePrefix
    , wsReportingEnabled
    , wsWorkerId

    -- ** WorkItemServiceStateHarnessData
    , WorkItemServiceStateHarnessData
    , workItemServiceStateHarnessData
    , wisshdAddtional

    -- ** DataDiskAssignment
    , DataDiskAssignment
    , dataDiskAssignment
    , ddaVMInstance
    , ddaDataDisks

    -- ** WorkerMessageResponse
    , WorkerMessageResponse
    , workerMessageResponse
    , wmrWorkerHealthReportResponse

    -- ** WorkItemServiceState
    , WorkItemServiceState
    , workItemServiceState
    , wissNextReportIndex
    , wissReportStatusInterval
    , wissHarnessData
    , wissSuggestedStopPoint
    , wissSuggestedStopPosition
    , wissLeaseExpireTime
    , wissSplitRequest

    -- ** StreamingSetupTask
    , StreamingSetupTask
    , streamingSetupTask
    , sstStreamingComputationTopology
    , sstReceiveWorkPort
    , sstWorkerHarnessPort
    , sstDrain

    -- ** PartialGroupByKeyInstructionInputElementCodec
    , PartialGroupByKeyInstructionInputElementCodec
    , partialGroupByKeyInstructionInputElementCodec
    , pgbkiiecAddtional

    -- ** MapTask
    , MapTask
    , mapTask
    , mtInstructions
    , mtSystemName
    , mtStageName

    -- ** MountedDataDisk
    , MountedDataDisk
    , mountedDataDisk
    , mddDataDisk

    -- ** SinkCodec
    , SinkCodec
    , sinkCodec
    , scAddtional

    -- ** WorkerHealthReportPodsItem
    , WorkerHealthReportPodsItem
    , workerHealthReportPodsItem
    , whrpiAddtional

    -- ** ParDoInstructionUserFn
    , ParDoInstructionUserFn
    , parDoInstructionUserFn
    , pdiufAddtional

    -- ** InstructionOutputCodec
    , InstructionOutputCodec
    , instructionOutputCodec
    , iocAddtional

    -- ** StreamLocation
    , StreamLocation
    , streamLocation
    , slStreamingStageLocation
    , slSideInputLocation
    , slCustomSourceLocation
    , slPubsubLocation

    -- ** WorkerPoolPoolArgs
    , WorkerPoolPoolArgs
    , workerPoolPoolArgs
    , wppaAddtional

    -- ** SendWorkerMessagesResponse
    , SendWorkerMessagesResponse
    , sendWorkerMessagesResponse
    , swmrWorkerMessageResponses

    -- ** StreamingSideInputLocation
    , StreamingSideInputLocation
    , streamingSideInputLocation
    , ssilTag
    , ssilStateFamily

    -- ** StreamingComputationTask
    , StreamingComputationTask
    , streamingComputationTask
    , sctTaskType
    , sctDataDisks
    , sctComputationRanges

    -- ** JobMessage
    , JobMessage
    , jobMessage
    , jmTime
    , jmMessageText
    , jmMessageImportance
    , jmId

    -- ** SeqMapTaskOutputInfo
    , SeqMapTaskOutputInfo
    , seqMapTaskOutputInfo
    , smtoiSink
    , smtoiTag

    -- ** SourceGetMetadataRequest
    , SourceGetMetadataRequest
    , sourceGetMetadataRequest
    , sgmrSource

    -- ** SeqMapTaskUserFn
    , SeqMapTaskUserFn
    , seqMapTaskUserFn
    , smtufAddtional

    -- ** PartialGroupByKeyInstructionValueCombiningFn
    , PartialGroupByKeyInstructionValueCombiningFn
    , partialGroupByKeyInstructionValueCombiningFn
    , pgbkivcfAddtional

    -- ** Job
    , Job
    , job
    , jRequestedState
    , jEnvironment
    , jClientRequestId
    , jCurrentState
    , jReplacedByJobId
    , jTempFiles
    , jSteps
    , jExecutionInfo
    , jName
    , jTransformNameMApping
    , jId
    , jProjectId
    , jType
    , jCurrentStateTime
    , jReplaceJobId
    , jCreateTime

    -- ** ReadInstruction
    , ReadInstruction
    , readInstruction
    , riSource

    -- ** ApproximateReportedProgress
    , ApproximateReportedProgress
    , approximateReportedProgress
    , arpFractionConsumed
    , arpConsumedParallelism
    , arpRemainingParallelism
    , arpPosition

    -- ** SinkSpec
    , SinkSpec
    , sinkSpec
    , sAddtional

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
    , wpSubnetwork
    , wpMachineType
    , wpMetadata
    , wpDiskType
    , wpTeardownPolicy
    , wpDefaultPackageSet
    , wpPoolArgs
    , wpWorkerHarnessContainerImage
    , wpDataDisks

    -- ** Step
    , Step
    , step
    , sKind
    , sName
    , sProperties

    -- ** Package
    , Package
    , package
    , pLocation
    , pName

    -- ** WorkerMessageCodeParameters
    , WorkerMessageCodeParameters
    , workerMessageCodeParameters
    , wmcpAddtional

    -- ** DynamicSourceSplit
    , DynamicSourceSplit
    , dynamicSourceSplit
    , dssResidual
    , dssPrimary

    -- ** ReportWorkItemStatusResponse
    , ReportWorkItemStatusResponse
    , reportWorkItemStatusResponse
    , rwisrWorkItemServiceStates

    -- ** SourceFork
    , SourceFork
    , sourceFork
    , sfResidual
    , sfPrimarySource
    , sfPrimary
    , sfResidualSource

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

    -- ** Source
    , Source
    , source
    , souDoesNotNeedSplitting
    , souBaseSpecs
    , souCodec
    , souSpec
    , souMetadata

    -- ** ApproximateProgress
    , ApproximateProgress
    , approximateProgress
    , apRemainingTime
    , apPercentComplete
    , apPosition

    -- ** WorkerMessage
    , WorkerMessage
    , workerMessage
    , wmWorkerHealthReport
    , wmTime
    , wmWorkerMessageCode
    , wmLabels

    -- ** KeyRangeLocation
    , KeyRangeLocation
    , keyRangeLocation
    , krlPersistentDirectory
    , krlDataDisk
    , krlStart
    , krlDeliveryEndpoint
    , krlEnd

    -- ** MultiOutputInfo
    , MultiOutputInfo
    , multiOutputInfo
    , moiTag

    -- ** PartialGroupByKeyInstruction
    , PartialGroupByKeyInstruction
    , partialGroupByKeyInstruction
    , pgbkiValueCombiningFn
    , pgbkiSideInputs
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

    -- ** CustomSourceLocation
    , CustomSourceLocation
    , customSourceLocation
    , cslStateful

    -- ** SourceBaseSpecsItem
    , SourceBaseSpecsItem
    , sourceBaseSpecsItem
    , sbsiAddtional

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

    -- ** SideInputInfoKind
    , SideInputInfoKind
    , sideInputInfoKind
    , siikAddtional

    -- ** SendWorkerMessagesRequest
    , SendWorkerMessagesRequest
    , sendWorkerMessagesRequest
    , swmrWorkerMessages

    -- ** SourceSplitShard
    , SourceSplitShard
    , sourceSplitShard
    , sssDerivationMode
    , sssSource

    -- ** SideInputInfo
    , SideInputInfo
    , sideInputInfo
    , siiTag
    , siiKind
    , siiSources

    -- ** JobExecutionInfo
    , JobExecutionInfo
    , jobExecutionInfo
    , jeiStages

    -- ** SourceCodec
    , SourceCodec
    , sourceCodec
    , souAddtional

    -- ** StateFamilyConfig
    , StateFamilyConfig
    , stateFamilyConfig
    , sfcIsRead
    , sfcStateFamily

    -- ** KeyRangeDataDiskAssignment
    , KeyRangeDataDiskAssignment
    , keyRangeDataDiskAssignment
    , krddaDataDisk
    , krddaStart
    , krddaEnd

    -- ** SourceSplitRequest
    , SourceSplitRequest
    , sourceSplitRequest
    , ssrSource
    , ssrOptions

    -- ** ListJobMessagesResponse
    , ListJobMessagesResponse
    , listJobMessagesResponse
    , ljmrJobMessages
    , ljmrNextPageToken

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

    -- ** SeqMapTask
    , SeqMapTask
    , seqMapTask
    , smtInputs
    , smtName
    , smtOutputInfos
    , smtSystemName
    , smtStageName
    , smtUserFn

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
    , pByteOffSet
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
import           Network.Google.Resource.Dataflow.Projects.WorkerMessages

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Dataflow API service.
type DataflowAPI =
     ProjectsJobsWorkItemsLeaseResource :<|>
       ProjectsJobsWorkItemsReportStatusResource
       :<|> ProjectsJobsMessagesListResource
       :<|> ProjectsJobsListResource
       :<|> ProjectsJobsGetResource
       :<|> ProjectsJobsCreateResource
       :<|> ProjectsJobsUpdateResource
       :<|> ProjectsJobsGetMetricsResource
       :<|> ProjectsWorkerMessagesResource
