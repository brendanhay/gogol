{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Dataflow
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Google Cloud Dataflow projects on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference>
module Network.Google.Dataflow
    (
    -- * Service Configuration
      dataflowService

    -- * OAuth Scopes
    , userInfoEmailScope
    , cloudPlatformScope

    -- * API Declaration
    , DataflowAPI

    -- * Resources

    -- ** dataflow.projects.jobs.create
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Create

    -- ** dataflow.projects.jobs.debug.getConfig
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Debug.GetConfig

    -- ** dataflow.projects.jobs.debug.sendCapture
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Debug.SendCapture

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

    -- ** dataflow.projects.locations.jobs.create
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create

    -- ** dataflow.projects.locations.jobs.get
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get

    -- ** dataflow.projects.locations.jobs.getMetrics
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics

    -- ** dataflow.projects.locations.jobs.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List

    -- ** dataflow.projects.locations.jobs.messages.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List

    -- ** dataflow.projects.locations.jobs.update
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update

    -- ** dataflow.projects.locations.jobs.workItems.lease
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease

    -- ** dataflow.projects.locations.jobs.workItems.reportStatus
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus

    -- ** dataflow.projects.templates.create
    , module Network.Google.Resource.Dataflow.Projects.Templates.Create

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

    -- ** ResourceUtilizationReportMetricsItem
    , ResourceUtilizationReportMetricsItem
    , resourceUtilizationReportMetricsItem
    , rurmiAddtional

    -- ** CreateJobFromTemplateRequest
    , CreateJobFromTemplateRequest
    , createJobFromTemplateRequest
    , cjftrEnvironment
    , cjftrJobName
    , cjftrGcsPath
    , cjftrParameters

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** NameAndKind
    , NameAndKind
    , nameAndKind
    , nakKind
    , nakName

    -- ** IntegerList
    , IntegerList
    , integerList
    , ilElements

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
    , wiStreamingConfigTask
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
    , ioOnlyCountValueBytes
    , ioCodec
    , ioName
    , ioSystemName
    , ioOriginalName
    , ioOnlyCountKeyBytes

    -- ** ReportWorkItemStatusRequest
    , ReportWorkItemStatusRequest
    , reportWorkItemStatusRequest
    , rwisrCurrentWorkerTime
    , rwisrLocation
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

    -- ** StringList
    , StringList
    , stringList
    , slElements

    -- ** WorkerHealthReportResponse
    , WorkerHealthReportResponse
    , workerHealthReportResponse
    , whrrReportInterval

    -- ** SendDebugCaptureResponse
    , SendDebugCaptureResponse
    , sendDebugCaptureResponse

    -- ** JobLabels
    , JobLabels
    , jobLabels
    , jlAddtional

    -- ** MetricStructuredName
    , MetricStructuredName
    , metricStructuredName
    , msnOrigin
    , msnContext
    , msnName

    -- ** CounterStructuredName
    , CounterStructuredName
    , counterStructuredName
    , csnStandardOrigin
    , csnComponentStepName
    , csnOtherOrigin
    , csnPortion
    , csnOriginalStepName
    , csnName
    , csnExecutionStepName
    , csnWorkerId

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
    , eServiceAccountEmail
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

    -- ** CounterUpdate
    , CounterUpdate
    , counterUpdate
    , cuNameAndKind
    , cuIntegerList
    , cuFloatingPoint
    , cuInternal
    , cuStringList
    , cuShortId
    , cuDistribution
    , cuCumulative
    , cuStructuredNameAndMetadata
    , cuFloatingPointMean
    , cuIntegerMean
    , cuBoolean
    , cuFloatingPointList
    , cuInteger

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

    -- ** SendDebugCaptureRequest
    , SendDebugCaptureRequest
    , sendDebugCaptureRequest
    , sdcrData
    , sdcrComponentId
    , sdcrWorkerId

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
    , wisCounterUpdates
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

    -- ** StreamingComputationConfig
    , StreamingComputationConfig
    , streamingComputationConfig
    , sccInstructions
    , sccSystemName
    , sccComputationId
    , sccStageName

    -- ** EnvironmentSdkPipelineOptions
    , EnvironmentSdkPipelineOptions
    , environmentSdkPipelineOptions
    , espoAddtional

    -- ** FloatingPointMean
    , FloatingPointMean
    , floatingPointMean
    , fpmCount
    , fpmSum

    -- ** LeaseWorkItemRequest
    , LeaseWorkItemRequest
    , leaseWorkItemRequest
    , lwirWorkItemTypes
    , lwirCurrentWorkerTime
    , lwirLocation
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
    , tcPersistentStateVersion
    , tcForwardingKeyBits
    , tcUserStageToComputationNameMap
    , tcComputations

    -- ** ApproximateSplitRequest
    , ApproximateSplitRequest
    , approximateSplitRequest
    , asrFractionConsumed
    , asrPosition

    -- ** SplitInt64
    , SplitInt64
    , splitInt64
    , siHighBits
    , siLowBits

    -- ** WorkerSettings
    , WorkerSettings
    , workerSettings
    , wsServicePath
    , wsBaseURL
    , wsShuffleServicePath
    , wsTempStoragePrefix
    , wsReportingEnabled
    , wsWorkerId

    -- ** GetDebugConfigResponse
    , GetDebugConfigResponse
    , getDebugConfigResponse
    , gdcrConfig

    -- ** WorkItemServiceStateHarnessData
    , WorkItemServiceStateHarnessData
    , workItemServiceStateHarnessData
    , wisshdAddtional

    -- ** DataDiskAssignment
    , DataDiskAssignment
    , dataDiskAssignment
    , ddaVMInstance
    , ddaDataDisks

    -- ** ResourceUtilizationReport
    , ResourceUtilizationReport
    , resourceUtilizationReport
    , rurMetrics

    -- ** FailedLocation
    , FailedLocation
    , failedLocation
    , flName

    -- ** WorkerMessageResponse
    , WorkerMessageResponse
    , workerMessageResponse
    , wmrWorkerHealthReportResponse
    , wmrWorkerMetricsResponse

    -- ** CreateJobFromTemplateRequestParameters
    , CreateJobFromTemplateRequestParameters
    , createJobFromTemplateRequestParameters
    , cjftrpAddtional

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
    , wissMetricShortId

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

    -- ** IntegerMean
    , IntegerMean
    , integerMean
    , imCount
    , imSum

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

    -- ** RuntimeEnvironment
    , RuntimeEnvironment
    , runtimeEnvironment
    , reZone
    , reBypassTempDirValidation
    , reServiceAccountEmail
    , reMaxWorkers
    , reTempLocation

    -- ** CounterMetadata
    , CounterMetadata
    , counterMetadata
    , cmKind
    , cmDescription
    , cmStandardUnits
    , cmOtherUnits

    -- ** SendWorkerMessagesResponse
    , SendWorkerMessagesResponse
    , sendWorkerMessagesResponse
    , swmrWorkerMessageResponses

    -- ** StreamingSideInputLocation
    , StreamingSideInputLocation
    , streamingSideInputLocation
    , ssilTag
    , ssilStateFamily

    -- ** GetDebugConfigRequest
    , GetDebugConfigRequest
    , getDebugConfigRequest
    , gdcrComponentId
    , gdcrWorkerId

    -- ** CounterStructuredNameAndMetadata
    , CounterStructuredNameAndMetadata
    , counterStructuredNameAndMetadata
    , csnamName
    , csnamMetadata

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
    , jLocation
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
    , jLabels
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
    , wpNumThreadsPerWorker
    , wpDiskSizeGb
    , wpKind
    , wpTaskrunnerSettings
    , wpNumWorkers
    , wpNetwork
    , wpZone
    , wpIPConfiguration
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

    -- ** ResourceUtilizationReportResponse
    , ResourceUtilizationReportResponse
    , resourceUtilizationReportResponse

    -- ** StreamingComputationRanges
    , StreamingComputationRanges
    , streamingComputationRanges
    , scrRangeAssignments
    , scrComputationId

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrFailedLocation
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
    , wmWorkerMetrics
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
    , pgbkiOriginalCombineValuesStepName
    , pgbkiInputElementCodec
    , pgbkiOriginalCombineValuesInputStoreName

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

    -- ** DistributionUpdate
    , DistributionUpdate
    , distributionUpdate
    , duMax
    , duCount
    , duMin
    , duSumOfSquares
    , duSum

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
    , piOriginalName

    -- ** SideInputInfoKind
    , SideInputInfoKind
    , sideInputInfoKind
    , siikAddtional

    -- ** StreamingConfigTask
    , StreamingConfigTask
    , streamingConfigTask
    , sctUserStepToStateFamilyNameMap
    , sctStreamingComputationConfigs

    -- ** MetricShortId
    , MetricShortId
    , metricShortId
    , msiShortId
    , msiMetricIndex

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
    , plWithAttributes
    , plSubscription

    -- ** FloatingPointList
    , FloatingPointList
    , floatingPointList
    , fplElements

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

    -- ** StreamingConfigTaskUserStepToStateFamilyNameMap
    , StreamingConfigTaskUserStepToStateFamilyNameMap
    , streamingConfigTaskUserStepToStateFamilyNameMap
    , sctustsfnmAddtional

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
import           Network.Google.Resource.Dataflow.Projects.Jobs.Debug.GetConfig
import           Network.Google.Resource.Dataflow.Projects.Jobs.Debug.SendCapture
import           Network.Google.Resource.Dataflow.Projects.Jobs.Get
import           Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics
import           Network.Google.Resource.Dataflow.Projects.Jobs.List
import           Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List
import           Network.Google.Resource.Dataflow.Projects.Jobs.Update
import           Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
import           Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus
import           Network.Google.Resource.Dataflow.Projects.Templates.Create
import           Network.Google.Resource.Dataflow.Projects.WorkerMessages

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Dataflow API service.
type DataflowAPI =
     ProjectsTemplatesCreateResource :<|>
       ProjectsJobsDebugGetConfigResource
       :<|> ProjectsJobsDebugSendCaptureResource
       :<|> ProjectsJobsWorkItemsLeaseResource
       :<|> ProjectsJobsWorkItemsReportStatusResource
       :<|> ProjectsJobsMessagesListResource
       :<|> ProjectsJobsListResource
       :<|> ProjectsJobsGetResource
       :<|> ProjectsJobsCreateResource
       :<|> ProjectsJobsUpdateResource
       :<|> ProjectsJobsGetMetricsResource
       :<|> ProjectsLocationsJobsWorkItemsLeaseResource
       :<|>
       ProjectsLocationsJobsWorkItemsReportStatusResource
       :<|> ProjectsLocationsJobsMessagesListResource
       :<|> ProjectsLocationsJobsListResource
       :<|> ProjectsLocationsJobsGetResource
       :<|> ProjectsLocationsJobsCreateResource
       :<|> ProjectsLocationsJobsUpdateResource
       :<|> ProjectsLocationsJobsGetMetricsResource
       :<|> ProjectsWorkerMessagesResource
