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
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference>
module Network.Google.Dataflow
    (
    -- * Service Configuration
      dataflowService

    -- * OAuth Scopes
    , computeScope
    , userInfoEmailScope
    , cloudPlatformScope
    , computeReadOnlyScope

    -- * API Declaration
    , DataflowAPI

    -- * Resources

    -- ** dataflow.projects.jobs.aggregated
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Aggregated

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

    -- ** dataflow.projects.jobs.snapshot
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Snapshot

    -- ** dataflow.projects.jobs.update
    , module Network.Google.Resource.Dataflow.Projects.Jobs.Update

    -- ** dataflow.projects.jobs.workItems.lease
    , module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease

    -- ** dataflow.projects.jobs.workItems.reportStatus
    , module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus

    -- ** dataflow.projects.locations.jobs.create
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create

    -- ** dataflow.projects.locations.jobs.debug.getConfig
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.GetConfig

    -- ** dataflow.projects.locations.jobs.debug.sendCapture
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.SendCapture

    -- ** dataflow.projects.locations.jobs.get
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get

    -- ** dataflow.projects.locations.jobs.getMetrics
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics

    -- ** dataflow.projects.locations.jobs.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List

    -- ** dataflow.projects.locations.jobs.messages.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List

    -- ** dataflow.projects.locations.jobs.snapshot
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshot

    -- ** dataflow.projects.locations.jobs.update
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update

    -- ** dataflow.projects.locations.jobs.workItems.lease
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease

    -- ** dataflow.projects.locations.jobs.workItems.reportStatus
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus

    -- ** dataflow.projects.locations.templates.create
    , module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Create

    -- ** dataflow.projects.locations.templates.get
    , module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Get

    -- ** dataflow.projects.locations.templates.launch
    , module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Launch

    -- ** dataflow.projects.locations.workerMessages
    , module Network.Google.Resource.Dataflow.Projects.Locations.WorkerMessages

    -- ** dataflow.projects.templates.create
    , module Network.Google.Resource.Dataflow.Projects.Templates.Create

    -- ** dataflow.projects.templates.get
    , module Network.Google.Resource.Dataflow.Projects.Templates.Get

    -- ** dataflow.projects.templates.launch
    , module Network.Google.Resource.Dataflow.Projects.Templates.Launch

    -- ** dataflow.projects.workerMessages
    , module Network.Google.Resource.Dataflow.Projects.WorkerMessages

    -- * Types

    -- ** NameAndKindKind
    , NameAndKindKind (..)

    -- ** JobExecutionInfoStages
    , JobExecutionInfoStages
    , jobExecutionInfoStages
    , jeisAddtional

    -- ** ComputationTopology
    , ComputationTopology
    , computationTopology
    , ctStateFamilies
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

    -- ** ParameterMetadata
    , ParameterMetadata
    , parameterMetadata
    , pmHelpText
    , pmIsOptional
    , pmName
    , pmRegexes
    , pmLabel

    -- ** CreateJobFromTemplateRequest
    , CreateJobFromTemplateRequest
    , createJobFromTemplateRequest
    , cjftrLocation
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

    -- ** Snapshot
    , Snapshot
    , snapshot
    , sCreationTime
    , sTtl
    , sSourceJobId
    , sId
    , sProjectId

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

    -- ** IntegerGauge
    , IntegerGauge
    , integerGauge
    , igValue
    , igTimestamp

    -- ** LaunchTemplateParameters
    , LaunchTemplateParameters
    , launchTemplateParameters
    , ltpEnvironment
    , ltpJobName
    , ltpParameters

    -- ** ReportWorkItemStatusRequest
    , ReportWorkItemStatusRequest
    , reportWorkItemStatusRequest
    , rwisrCurrentWorkerTime
    , rwisrLocation
    , rwisrWorkItemStatuses
    , rwisrWorkerId

    -- ** JobType
    , JobType (..)

    -- ** EnvironmentVersion
    , EnvironmentVersion
    , environmentVersion
    , evAddtional

    -- ** StreamingApplianceSnapshotConfig
    , StreamingApplianceSnapshotConfig
    , streamingApplianceSnapshotConfig
    , sascImportStateEndpoint
    , sascSnapshotId

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

    -- ** DisplayData
    , DisplayData
    , displayData
    , ddDurationValue
    , ddBoolValue
    , ddTimestampValue
    , ddURL
    , ddNamespace
    , ddJavaClassValue
    , ddShortStrValue
    , ddKey
    , ddInt64Value
    , ddFloatValue
    , ddStrValue
    , ddLabel

    -- ** SendDebugCaptureResponse
    , SendDebugCaptureResponse
    , sendDebugCaptureResponse

    -- ** StructuredMessage
    , StructuredMessage
    , structuredMessage
    , smMessageText
    , smMessageKey
    , smParameters

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

    -- ** BigQueryIODetails
    , BigQueryIODetails
    , bigQueryIODetails
    , bqiodDataSet
    , bqiodQuery
    , bqiodProjectId
    , bqiodTable

    -- ** FileIODetails
    , FileIODetails
    , fileIODetails
    , fiodFilePattern

    -- ** WorkerPoolTeardownPolicy
    , WorkerPoolTeardownPolicy (..)

    -- ** CounterStructuredName
    , CounterStructuredName
    , counterStructuredName
    , csnOrigin
    , csnOriginNamespace
    , csnComponentStepName
    , csnPortion
    , csnOriginalStepName
    , csnName
    , csnExecutionStepName
    , csnOriginalRequestingStepName
    , csnInputIndex
    , csnWorkerId

    -- ** JobMetadata
    , JobMetadata
    , jobMetadata
    , jmSpannerDetails
    , jmBigTableDetails
    , jmSdkVersion
    , jmPubsubDetails
    , jmFileDetails
    , jmBigQueryDetails
    , jmDatastoreDetails

    -- ** GetTemplateResponse
    , GetTemplateResponse
    , getTemplateResponse
    , gtrStatus
    , gtrMetadata

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
    , muDistribution
    , muCumulative
    , muKind
    , muGauge
    , muUpdateTime
    , muMeanCount
    , muName
    , muScalar

    -- ** SourceGetMetadataResponse
    , SourceGetMetadataResponse
    , sourceGetMetadataResponse
    , sgmrMetadata

    -- ** TemplateMetadata
    , TemplateMetadata
    , templateMetadata
    , tmName
    , tmParameters
    , tmDescription

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
    , cuIntegerGauge
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

    -- ** AutoscalingSettingsAlgorithm
    , AutoscalingSettingsAlgorithm (..)

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

    -- ** TransformSummaryKind
    , TransformSummaryKind (..)

    -- ** SendDebugCaptureRequest
    , SendDebugCaptureRequest
    , sendDebugCaptureRequest
    , sdcrLocation
    , sdcrData
    , sdcrComponentId
    , sdcrWorkerId

    -- ** WorkItemStatus
    , WorkItemStatus
    , workItemStatus
    , wisReportedProgress
    , wisProgress
    , wisTotalThrottlerWaitTimeSeconds
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

    -- ** TransformSummary
    , TransformSummary
    , transformSummary
    , tsDisplayData
    , tsKind
    , tsOutputCollectionName
    , tsInputCollectionName
    , tsName
    , tsId

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

    -- ** CPUTime
    , CPUTime
    , cpuTime
    , ctTotalMs
    , ctRate
    , ctTimestamp

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

    -- ** CounterStructuredNamePortion
    , CounterStructuredNamePortion (..)

    -- ** TopologyConfigUserStageToComputationNameMap
    , TopologyConfigUserStageToComputationNameMap
    , topologyConfigUserStageToComputationNameMap
    , tcustcnmAddtional

    -- ** ShellTask
    , ShellTask
    , shellTask
    , stCommand
    , stExitCode

    -- ** JobMessageMessageImportance
    , JobMessageMessageImportance (..)

    -- ** DatastoreIODetails
    , DatastoreIODetails
    , datastoreIODetails
    , diodNamespace
    , diodProjectId

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
    , asrFractionOfRemainder
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

    -- ** SdkVersion
    , SdkVersion
    , sdkVersion
    , svSdkSupportStatus
    , svVersionDisplayName
    , svVersion

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
    , rurCPUTime

    -- ** FailedLocation
    , FailedLocation
    , failedLocation
    , flName

    -- ** SourceSplitResponseOutcome
    , SourceSplitResponseOutcome (..)

    -- ** WorkerMessageResponse
    , WorkerMessageResponse
    , workerMessageResponse
    , wmrWorkerHealthReportResponse
    , wmrWorkerMetricsResponse
    , wmrWorkerShutdownNoticeResponse

    -- ** CreateJobFromTemplateRequestParameters
    , CreateJobFromTemplateRequestParameters
    , createJobFromTemplateRequestParameters
    , cjftrpAddtional

    -- ** BigTableIODetails
    , BigTableIODetails
    , bigTableIODetails
    , btiodInstanceId
    , btiodProjectId
    , btiodTableId

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

    -- ** LaunchTemplateResponse
    , LaunchTemplateResponse
    , launchTemplateResponse
    , ltrJob

    -- ** StreamingSetupTask
    , StreamingSetupTask
    , streamingSetupTask
    , sstStreamingComputationTopology
    , sstReceiveWorkPort
    , sstWorkerHarnessPort
    , sstDrain
    , sstSnapshotConfig

    -- ** PartialGroupByKeyInstructionInputElementCodec
    , PartialGroupByKeyInstructionInputElementCodec
    , partialGroupByKeyInstructionInputElementCodec
    , pgbkiiecAddtional

    -- ** MapTask
    , MapTask
    , mapTask
    , mtInstructions
    , mtCounterPrefix
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

    -- ** SourceSplitShardDerivationMode
    , SourceSplitShardDerivationMode (..)

    -- ** WorkerPoolDefaultPackageSet
    , WorkerPoolDefaultPackageSet (..)

    -- ** IntegerMean
    , IntegerMean
    , integerMean
    , imCount
    , imSum

    -- ** CounterMetadataKind
    , CounterMetadataKind (..)

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

    -- ** WorkerLifecycleEventMetadata
    , WorkerLifecycleEventMetadata
    , workerLifecycleEventMetadata
    , wlemAddtional

    -- ** WorkerPoolPoolArgs
    , WorkerPoolPoolArgs
    , workerPoolPoolArgs
    , wppaAddtional

    -- ** RuntimeEnvironment
    , RuntimeEnvironment
    , runtimeEnvironment
    , reNumWorkers
    , reNetwork
    , reZone
    , reBypassTempDirValidation
    , reSubnetwork
    , reMachineType
    , reAdditionalUserLabels
    , reServiceAccountEmail
    , reAdditionalExperiments
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

    -- ** JobCurrentState
    , JobCurrentState (..)

    -- ** StreamingSideInputLocation
    , StreamingSideInputLocation
    , streamingSideInputLocation
    , ssilTag
    , ssilStateFamily

    -- ** GetDebugConfigRequest
    , GetDebugConfigRequest
    , getDebugConfigRequest
    , gdcrLocation
    , gdcrComponentId
    , gdcrWorkerId

    -- ** CounterStructuredNameAndMetadata
    , CounterStructuredNameAndMetadata
    , counterStructuredNameAndMetadata
    , csnamName
    , csnamMetadata

    -- ** WorkerShutdownNotice
    , WorkerShutdownNotice
    , workerShutdownNotice
    , wsnReason

    -- ** StreamingComputationTask
    , StreamingComputationTask
    , streamingComputationTask
    , sctTaskType
    , sctDataDisks
    , sctComputationRanges

    -- ** PipelineDescription
    , PipelineDescription
    , pipelineDescription
    , pdExecutionPipelineStage
    , pdDisplayData
    , pdOriginalPipelineTransform

    -- ** JobMessage
    , JobMessage
    , jobMessage
    , jmTime
    , jmMessageText
    , jmMessageImportance
    , jmId

    -- ** WorkerLifecycleEvent
    , WorkerLifecycleEvent
    , workerLifecycleEvent
    , wleEvent
    , wleContainerStartTime
    , wleMetadata

    -- ** RuntimeEnvironmentAdditionalUserLabels
    , RuntimeEnvironmentAdditionalUserLabels
    , runtimeEnvironmentAdditionalUserLabels
    , reaulAddtional

    -- ** CounterMetadataStandardUnits
    , CounterMetadataStandardUnits (..)

    -- ** SeqMapTaskOutputInfo
    , SeqMapTaskOutputInfo
    , seqMapTaskOutputInfo
    , smtoiSink
    , smtoiTag

    -- ** PubSubIODetails
    , PubSubIODetails
    , pubSubIODetails
    , psiodTopic
    , psiodSubscription

    -- ** SourceGetMetadataRequest
    , SourceGetMetadataRequest
    , sourceGetMetadataRequest
    , sgmrSource

    -- ** WorkerShutdownNoticeResponse
    , WorkerShutdownNoticeResponse
    , workerShutdownNoticeResponse

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
    , jStepsLocation
    , jCreatedFromSnapshotId
    , jRequestedState
    , jJobMetadata
    , jLocation
    , jStartTime
    , jEnvironment
    , jClientRequestId
    , jStageStates
    , jCurrentState
    , jReplacedByJobId
    , jTempFiles
    , jSteps
    , jPipelineDescription
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

    -- ** AutoscalingEventEventType
    , AutoscalingEventEventType (..)

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

    -- ** DerivedSourceDerivationMode
    , DerivedSourceDerivationMode (..)

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

    -- ** ComponentSource
    , ComponentSource
    , componentSource
    , csUserName
    , csName
    , csOriginalTransformOrCollection

    -- ** ExecutionStageSummaryKind
    , ExecutionStageSummaryKind (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** Package
    , Package
    , package
    , pLocation
    , pName

    -- ** ExecutionStageSummary
    , ExecutionStageSummary
    , executionStageSummary
    , essOutputSource
    , essKind
    , essInputSource
    , essName
    , essComponentSource
    , essId
    , essComponentTransform

    -- ** WorkerMessageCodeParameters
    , WorkerMessageCodeParameters
    , workerMessageCodeParameters
    , wmcpAddtional

    -- ** DynamicSourceSplit
    , DynamicSourceSplit
    , dynamicSourceSplit
    , dssResidual
    , dssPrimary

    -- ** SnapshotJobRequest
    , SnapshotJobRequest
    , snapshotJobRequest
    , sjrTtl
    , sjrLocation

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

    -- ** LaunchTemplateParametersParameters
    , LaunchTemplateParametersParameters
    , launchTemplateParametersParameters
    , ltppAddtional

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
    , wmWorkerLifecycleEvent
    , wmWorkerShutdownNotice
    , wmLabels

    -- ** KeyRangeLocation
    , KeyRangeLocation
    , keyRangeLocation
    , krlDataDisk
    , krlDeprecatedPersistentDirectory
    , krlStart
    , krlDeliveryEndpoint
    , krlEnd

    -- ** Histogram
    , Histogram
    , histogram
    , hBucketCounts
    , hFirstBucketOffSet

    -- ** JobRequestedState
    , JobRequestedState (..)

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

    -- ** WorkerLifecycleEventEvent
    , WorkerLifecycleEventEvent (..)

    -- ** ExecutionStageStateExecutionStageState
    , ExecutionStageStateExecutionStageState (..)

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
    , duHistogram
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
    , sctWindmillServiceEndpoint
    , sctWindmillServicePort

    -- ** MetricShortId
    , MetricShortId
    , metricShortId
    , msiShortId
    , msiMetricIndex

    -- ** SendWorkerMessagesRequest
    , SendWorkerMessagesRequest
    , sendWorkerMessagesRequest
    , swmrLocation
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

    -- ** ComponentTransform
    , ComponentTransform
    , componentTransform
    , ctOriginalTransform
    , ctUserName
    , ctName

    -- ** WorkerPoolIPConfiguration
    , WorkerPoolIPConfiguration (..)

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

    -- ** AutoscalingEvent
    , AutoscalingEvent
    , autoscalingEvent
    , aeCurrentNumWorkers
    , aeTime
    , aeEventType
    , aeTargetNumWorkers
    , aeWorkerPool
    , aeDescription

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
    , ljmrAutoscalingEvents

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

    -- ** CounterStructuredNameOrigin
    , CounterStructuredNameOrigin (..)

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

    -- ** StreamingComputationTaskTaskType
    , StreamingComputationTaskTaskType (..)

    -- ** StreamingConfigTaskUserStepToStateFamilyNameMap
    , StreamingConfigTaskUserStepToStateFamilyNameMap
    , streamingConfigTaskUserStepToStateFamilyNameMap
    , sctustsfnmAddtional

    -- ** ExecutionStageState
    , ExecutionStageState
    , executionStageState
    , essExecutionStageName
    , essCurrentStateTime
    , essExecutionStageState

    -- ** StageSource
    , StageSource
    , stageSource
    , ssSizeBytes
    , ssUserName
    , ssName
    , ssOriginalTransformOrCollection

    -- ** SourceOperationRequest
    , SourceOperationRequest
    , sourceOperationRequest
    , souSplit
    , souGetMetadata
    , souName
    , souSystemName
    , souStageName
    , souOriginalName

    -- ** SdkVersionSdkSupportStatus
    , SdkVersionSdkSupportStatus (..)

    -- ** SpannerIODetails
    , SpannerIODetails
    , spannerIODetails
    , siodInstanceId
    , siodDatabaseId
    , siodProjectId

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

    -- ** Parameter
    , Parameter
    , parameter
    , parValue
    , parKey
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Dataflow.Projects.Jobs.Aggregated
import           Network.Google.Resource.Dataflow.Projects.Jobs.Create
import           Network.Google.Resource.Dataflow.Projects.Jobs.Debug.GetConfig
import           Network.Google.Resource.Dataflow.Projects.Jobs.Debug.SendCapture
import           Network.Google.Resource.Dataflow.Projects.Jobs.Get
import           Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics
import           Network.Google.Resource.Dataflow.Projects.Jobs.List
import           Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List
import           Network.Google.Resource.Dataflow.Projects.Jobs.Snapshot
import           Network.Google.Resource.Dataflow.Projects.Jobs.Update
import           Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
import           Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.GetConfig
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.SendCapture
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshot
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
import           Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus
import           Network.Google.Resource.Dataflow.Projects.Locations.Templates.Create
import           Network.Google.Resource.Dataflow.Projects.Locations.Templates.Get
import           Network.Google.Resource.Dataflow.Projects.Locations.Templates.Launch
import           Network.Google.Resource.Dataflow.Projects.Locations.WorkerMessages
import           Network.Google.Resource.Dataflow.Projects.Templates.Create
import           Network.Google.Resource.Dataflow.Projects.Templates.Get
import           Network.Google.Resource.Dataflow.Projects.Templates.Launch
import           Network.Google.Resource.Dataflow.Projects.WorkerMessages

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Dataflow API service.
type DataflowAPI =
     ProjectsTemplatesLaunchResource :<|>
       ProjectsTemplatesGetResource
       :<|> ProjectsTemplatesCreateResource
       :<|> ProjectsJobsDebugGetConfigResource
       :<|> ProjectsJobsDebugSendCaptureResource
       :<|> ProjectsJobsWorkItemsLeaseResource
       :<|> ProjectsJobsWorkItemsReportStatusResource
       :<|> ProjectsJobsMessagesListResource
       :<|> ProjectsJobsSnapshotResource
       :<|> ProjectsJobsListResource
       :<|> ProjectsJobsAggregatedResource
       :<|> ProjectsJobsGetResource
       :<|> ProjectsJobsCreateResource
       :<|> ProjectsJobsUpdateResource
       :<|> ProjectsJobsGetMetricsResource
       :<|> ProjectsLocationsTemplatesLaunchResource
       :<|> ProjectsLocationsTemplatesGetResource
       :<|> ProjectsLocationsTemplatesCreateResource
       :<|> ProjectsLocationsJobsDebugGetConfigResource
       :<|> ProjectsLocationsJobsDebugSendCaptureResource
       :<|> ProjectsLocationsJobsWorkItemsLeaseResource
       :<|>
       ProjectsLocationsJobsWorkItemsReportStatusResource
       :<|> ProjectsLocationsJobsMessagesListResource
       :<|> ProjectsLocationsJobsSnapshotResource
       :<|> ProjectsLocationsJobsListResource
       :<|> ProjectsLocationsJobsGetResource
       :<|> ProjectsLocationsJobsCreateResource
       :<|> ProjectsLocationsJobsUpdateResource
       :<|> ProjectsLocationsJobsGetMetricsResource
       :<|> ProjectsLocationsWorkerMessagesResource
       :<|> ProjectsWorkerMessagesResource
