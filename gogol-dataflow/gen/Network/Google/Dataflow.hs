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

    -- ** dataflow.projects.deleteSnapshots
    , module Network.Google.Resource.Dataflow.Projects.DeleteSnapshots

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

    -- ** dataflow.projects.locations.flexTemplates.launch
    , module Network.Google.Resource.Dataflow.Projects.Locations.FlexTemplates.Launch

    -- ** dataflow.projects.locations.jobs.create
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create

    -- ** dataflow.projects.locations.jobs.debug.getConfig
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.GetConfig

    -- ** dataflow.projects.locations.jobs.debug.sendCapture
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.SendCapture

    -- ** dataflow.projects.locations.jobs.get
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get

    -- ** dataflow.projects.locations.jobs.getExecutionDetails
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetExecutionDetails

    -- ** dataflow.projects.locations.jobs.getMetrics
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics

    -- ** dataflow.projects.locations.jobs.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List

    -- ** dataflow.projects.locations.jobs.messages.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List

    -- ** dataflow.projects.locations.jobs.snapshot
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshot

    -- ** dataflow.projects.locations.jobs.snapshots.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshots.List

    -- ** dataflow.projects.locations.jobs.stages.getExecutionDetails
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Stages.GetExecutionDetails

    -- ** dataflow.projects.locations.jobs.update
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update

    -- ** dataflow.projects.locations.jobs.workItems.lease
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease

    -- ** dataflow.projects.locations.jobs.workItems.reportStatus
    , module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus

    -- ** dataflow.projects.locations.snapshots.delete
    , module Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Delete

    -- ** dataflow.projects.locations.snapshots.get
    , module Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Get

    -- ** dataflow.projects.locations.snapshots.list
    , module Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.List

    -- ** dataflow.projects.locations.sql.validate
    , module Network.Google.Resource.Dataflow.Projects.Locations.SQL.Validate

    -- ** dataflow.projects.locations.templates.create
    , module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Create

    -- ** dataflow.projects.locations.templates.get
    , module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Get

    -- ** dataflow.projects.locations.templates.launch
    , module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Launch

    -- ** dataflow.projects.locations.workerMessages
    , module Network.Google.Resource.Dataflow.Projects.Locations.WorkerMessages

    -- ** dataflow.projects.snapshots.get
    , module Network.Google.Resource.Dataflow.Projects.Snapshots.Get

    -- ** dataflow.projects.snapshots.list
    , module Network.Google.Resource.Dataflow.Projects.Snapshots.List

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
    , pmParamType
    , pmCustomMetadata
    , pmIsOptional
    , pmName
    , pmRegexes
    , pmLabel

    -- ** ReportWorkItemStatusRequestUnifiedWorkerRequest
    , ReportWorkItemStatusRequestUnifiedWorkerRequest
    , reportWorkItemStatusRequestUnifiedWorkerRequest
    , rwisruwrAddtional

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
    , whrVMBrokenCode
    , whrReportInterval
    , whrMsg
    , whrPods
    , whrVMStartupTime
    , whrVMIsBroken

    -- ** StageExecutionDetails
    , StageExecutionDetails
    , stageExecutionDetails
    , sedNextPageToken
    , sedWorkers

    -- ** SdkHarnessContainerImage
    , SdkHarnessContainerImage
    , sdkHarnessContainerImage
    , shciContainerImage
    , shciUseSingleCorePerContainer
    , shciEnvironmentId

    -- ** Snapshot
    , Snapshot
    , snapshot
    , sCreationTime
    , sTtl
    , sSourceJobId
    , sState
    , sPubsubMetadata
    , sId
    , sRegion
    , sProjectId
    , sDescription
    , sDiskSizeBytes

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

    -- ** ProjectsJobsAggregatedFilter
    , ProjectsJobsAggregatedFilter (..)

    -- ** IntegerGauge
    , IntegerGauge
    , integerGauge
    , igValue
    , igTimestamp

    -- ** StageSummaryState
    , StageSummaryState (..)

    -- ** LaunchTemplateParameters
    , LaunchTemplateParameters
    , launchTemplateParameters
    , ltpEnvironment
    , ltpJobName
    , ltpTransformNameMApping
    , ltpParameters
    , ltpUpdate

    -- ** ReportWorkItemStatusRequest
    , ReportWorkItemStatusRequest
    , reportWorkItemStatusRequest
    , rwisrCurrentWorkerTime
    , rwisrLocation
    , rwisrUnifiedWorkerRequest
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

    -- ** FlexTemplateRuntimeEnvironmentIPConfiguration
    , FlexTemplateRuntimeEnvironmentIPConfiguration (..)

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

    -- ** ContainerSpec
    , ContainerSpec
    , containerSpec
    , csImage
    , csSdkInfo
    , csDefaultEnvironment
    , csMetadata

    -- ** ResourceUtilizationReportContainers
    , ResourceUtilizationReportContainers
    , resourceUtilizationReportContainers
    , rurcAddtional

    -- ** StructuredMessage
    , StructuredMessage
    , structuredMessage
    , smMessageText
    , smMessageKey
    , smParameters

    -- ** SDKInfo
    , SDKInfo
    , sDKInfo
    , sdkiVersion
    , sdkiLanguage

    -- ** ProjectsJobsAggregatedView
    , ProjectsJobsAggregatedView (..)

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

    -- ** ValidateResponse
    , ValidateResponse
    , validateResponse
    , vrQueryInfo
    , vrErrorMessage

    -- ** GetTemplateResponse
    , GetTemplateResponse
    , getTemplateResponse
    , gtrStatus
    , gtrTemplateType
    , gtrMetadata
    , gtrRuntimeMetadata

    -- ** WriteInstruction
    , WriteInstruction
    , writeInstruction
    , wiSink
    , wiInput

    -- ** EnvironmentUserAgent
    , EnvironmentUserAgent
    , environmentUserAgent
    , euaAddtional

    -- ** FlexTemplateRuntimeEnvironmentFlexrsGoal
    , FlexTemplateRuntimeEnvironmentFlexrsGoal (..)

    -- ** ProjectsJobsListView
    , ProjectsJobsListView (..)

    -- ** GetTemplateResponseTemplateType
    , GetTemplateResponseTemplateType (..)

    -- ** Disk
    , Disk
    , disk
    , dSizeGb
    , dDiskType
    , dMountPoint

    -- ** EnvironmentFlexResourceSchedulingGoal
    , EnvironmentFlexResourceSchedulingGoal (..)

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
    , eShuffleMode
    , eDataSet
    , eExperiments
    , eServiceOptions
    , eFlexResourceSchedulingGoal
    , eWorkerRegion
    , eWorkerPools
    , eDebugOptions
    , eClusterManagerAPIService
    , eVersion
    , eInternalExperiments
    , eTempStoragePrefix
    , eServiceAccountEmail
    , eUserAgent
    , eWorkerZone
    , eServiceKmsKeyName
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

    -- ** LeaseWorkItemRequestUnifiedWorkerRequest
    , LeaseWorkItemRequestUnifiedWorkerRequest
    , leaseWorkItemRequestUnifiedWorkerRequest
    , lwiruwrAddtional

    -- ** DerivedSource
    , DerivedSource
    , derivedSource
    , dsDerivationMode
    , dsSource

    -- ** StageSummary
    , StageSummary
    , stageSummary
    , ssMetrics
    , ssState
    , ssProgress
    , ssStartTime
    , ssEndTime
    , ssStageId

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

    -- ** ProjectsJobsListFilter
    , ProjectsJobsListFilter (..)

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

    -- ** HotKeyDetection
    , HotKeyDetection
    , hotKeyDetection
    , hkdUserStepName
    , hkdHotKeyAge
    , hkdSystemName

    -- ** StreamingComputationConfig
    , StreamingComputationConfig
    , streamingComputationConfig
    , sccInstructions
    , sccSystemName
    , sccComputationId
    , sccTransformUserNameToStateFamily
    , sccStageName

    -- ** MemInfo
    , MemInfo
    , memInfo
    , miCurrentRssBytes
    , miCurrentLimitBytes
    , miTimestamp
    , miTotalGbMs

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

    -- ** ParameterMetadataParamType
    , ParameterMetadataParamType (..)

    -- ** LeaseWorkItemRequest
    , LeaseWorkItemRequest
    , leaseWorkItemRequest
    , lwirWorkItemTypes
    , lwirCurrentWorkerTime
    , lwirLocation
    , lwirWorkerCapabilities
    , lwirUnifiedWorkerRequest
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

    -- ** ProgressTimeseries
    , ProgressTimeseries
    , progressTimeseries
    , ptCurrentProgress
    , ptDataPoints

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

    -- ** ProjectsLocationsJobsListView
    , ProjectsLocationsJobsListView (..)

    -- ** SnapshotState
    , SnapshotState (..)

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

    -- ** WorkItemDetails
    , WorkItemDetails
    , workItemDetails
    , widMetrics
    , widState
    , widProgress
    , widStartTime
    , widAttemptId
    , widTaskId
    , widEndTime

    -- ** WorkItemServiceStateHarnessData
    , WorkItemServiceStateHarnessData
    , workItemServiceStateHarnessData
    , wisshdAddtional

    -- ** DeleteSnapshotResponse
    , DeleteSnapshotResponse
    , deleteSnapshotResponse

    -- ** DataDiskAssignment
    , DataDiskAssignment
    , dataDiskAssignment
    , ddaVMInstance
    , ddaDataDisks

    -- ** ProjectsTemplatesGetView
    , ProjectsTemplatesGetView (..)

    -- ** ResourceUtilizationReport
    , ResourceUtilizationReport
    , resourceUtilizationReport
    , rurMemoryInfo
    , rurCPUTime
    , rurContainers

    -- ** FailedLocation
    , FailedLocation
    , failedLocation
    , flName

    -- ** SourceSplitResponseOutcome
    , SourceSplitResponseOutcome (..)

    -- ** ListSnapshotsResponse
    , ListSnapshotsResponse
    , listSnapshotsResponse
    , lsrSnapshots

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
    , wissCompleteWorkStatus
    , wissNextReportIndex
    , wissReportStatusInterval
    , wissHarnessData
    , wissHotKeyDetection
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

    -- ** DebugOptions
    , DebugOptions
    , debugOptions
    , doEnableHotKeyLogging

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

    -- ** LaunchFlexTemplateParameterParameters
    , LaunchFlexTemplateParameterParameters
    , launchFlexTemplateParameterParameters
    , lftppAddtional

    -- ** WorkerPoolPoolArgs
    , WorkerPoolPoolArgs
    , workerPoolPoolArgs
    , wppaAddtional

    -- ** LaunchFlexTemplateResponse
    , LaunchFlexTemplateResponse
    , launchFlexTemplateResponse
    , lftrJob

    -- ** RuntimeEnvironment
    , RuntimeEnvironment
    , runtimeEnvironment
    , reNumWorkers
    , reEnableStreamingEngine
    , reNetwork
    , reWorkerRegion
    , reZone
    , reIPConfiguration
    , reBypassTempDirValidation
    , reSubnetwork
    , reMachineType
    , reAdditionalUserLabels
    , reKmsKeyName
    , reServiceAccountEmail
    , reWorkerZone
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

    -- ** QueryInfo
    , QueryInfo
    , queryInfo
    , qiQueryProperty

    -- ** GetDebugConfigRequest
    , GetDebugConfigRequest
    , getDebugConfigRequest
    , gdcrLocation
    , gdcrComponentId
    , gdcrWorkerId

    -- ** WorkerDetails
    , WorkerDetails
    , workerDetails
    , wdWorkItems
    , wdWorkerName

    -- ** CounterStructuredNameAndMetadata
    , CounterStructuredNameAndMetadata
    , counterStructuredNameAndMetadata
    , csnamName
    , csnamMetadata

    -- ** Point
    , Point
    , point
    , pTime
    , pValue

    -- ** ProjectsLocationsJobsMessagesListMinimumImportance
    , ProjectsLocationsJobsMessagesListMinimumImportance (..)

    -- ** QueryInfoQueryPropertyItem
    , QueryInfoQueryPropertyItem (..)

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

    -- ** ReportWorkItemStatusResponseUnifiedWorkerResponse
    , ReportWorkItemStatusResponseUnifiedWorkerResponse
    , reportWorkItemStatusResponseUnifiedWorkerResponse
    , rAddtional

    -- ** RuntimeEnvironmentAdditionalUserLabels
    , RuntimeEnvironmentAdditionalUserLabels
    , runtimeEnvironmentAdditionalUserLabels
    , reaulAddtional

    -- ** CounterMetadataStandardUnits
    , CounterMetadataStandardUnits (..)

    -- ** ProjectsLocationsJobsGetView
    , ProjectsLocationsJobsGetView (..)

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

    -- ** LaunchFlexTemplateParameterTransformNameMAppings
    , LaunchFlexTemplateParameterTransformNameMAppings
    , launchFlexTemplateParameterTransformNameMAppings
    , lftptnmaAddtional

    -- ** PartialGroupByKeyInstructionValueCombiningFn
    , PartialGroupByKeyInstructionValueCombiningFn
    , partialGroupByKeyInstructionValueCombiningFn
    , pgbkivcfAddtional

    -- ** Job
    , Job
    , job
    , jStepsLocation
    , jSatisfiesPzs
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

    -- ** JobExecutionDetails
    , JobExecutionDetails
    , jobExecutionDetails
    , jedNextPageToken
    , jedStages

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

    -- ** PubsubSnapshotMetadata
    , PubsubSnapshotMetadata
    , pubsubSnapshotMetadata
    , psmTopicName
    , psmSnapshotName
    , psmExpireTime

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
    , wpSdkHarnessContainerImages
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

    -- ** ParameterMetadataCustomMetadata
    , ParameterMetadataCustomMetadata
    , parameterMetadataCustomMetadata
    , pmcmAddtional

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
    , essPrerequisiteStage
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
    , sjrSnapshotSources
    , sjrDescription

    -- ** ProjectsJobsMessagesListMinimumImportance
    , ProjectsJobsMessagesListMinimumImportance (..)

    -- ** ReportWorkItemStatusResponse
    , ReportWorkItemStatusResponse
    , reportWorkItemStatusResponse
    , rwisrWorkItemServiceStates
    , rwisrUnifiedWorkerResponse

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

    -- ** ProjectsLocationsJobsCreateView
    , ProjectsLocationsJobsCreateView (..)

    -- ** Histogram
    , Histogram
    , histogram
    , hBucketCounts
    , hFirstBucketOffSet

    -- ** SDKInfoLanguage
    , SDKInfoLanguage (..)

    -- ** JobRequestedState
    , JobRequestedState (..)

    -- ** RuntimeEnvironmentIPConfiguration
    , RuntimeEnvironmentIPConfiguration (..)

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

    -- ** LaunchTemplateParametersTransformNameMApping
    , LaunchTemplateParametersTransformNameMApping
    , launchTemplateParametersTransformNameMApping
    , ltptnmaAddtional

    -- ** LeaseWorkItemResponseUnifiedWorkerResponse
    , LeaseWorkItemResponseUnifiedWorkerResponse
    , leaseWorkItemResponseUnifiedWorkerResponse
    , lAddtional

    -- ** ProjectsLocationsTemplatesGetView
    , ProjectsLocationsTemplatesGetView (..)

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

    -- ** LaunchFlexTemplateRequest
    , LaunchFlexTemplateRequest
    , launchFlexTemplateRequest
    , lftrLaunchParameter
    , lftrValidateOnly

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

    -- ** LaunchFlexTemplateParameter
    , LaunchFlexTemplateParameter
    , launchFlexTemplateParameter
    , lftpContainerSpec
    , lftpLaunchOptions
    , lftpEnvironment
    , lftpJobName
    , lftpTransformNameMAppings
    , lftpParameters
    , lftpContainerSpecGcsPath
    , lftpUpdate

    -- ** ProjectsJobsCreateView
    , ProjectsJobsCreateView (..)

    -- ** StreamingConfigTask
    , StreamingConfigTask
    , streamingConfigTask
    , sctUserStepToStateFamilyNameMap
    , sctCommitStreamChunkSizeBytes
    , sctGetDataStreamChunkSizeBytes
    , sctStreamingComputationConfigs
    , sctWindmillServiceEndpoint
    , sctWindmillServicePort
    , sctMaxWorkItemCommitBytes

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

    -- ** FlexTemplateRuntimeEnvironmentAdditionalUserLabels
    , FlexTemplateRuntimeEnvironmentAdditionalUserLabels
    , flexTemplateRuntimeEnvironmentAdditionalUserLabels
    , ftreaulAddtional

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

    -- ** StreamingComputationConfigTransformUserNameToStateFamily
    , StreamingComputationConfigTransformUserNameToStateFamily
    , streamingComputationConfigTransformUserNameToStateFamily
    , scctuntsfAddtional

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

    -- ** LaunchFlexTemplateParameterLaunchOptions
    , LaunchFlexTemplateParameterLaunchOptions
    , launchFlexTemplateParameterLaunchOptions
    , lftploAddtional

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

    -- ** FlexTemplateRuntimeEnvironment
    , FlexTemplateRuntimeEnvironment
    , flexTemplateRuntimeEnvironment
    , ftreSdkContainerImage
    , ftreMaxNumWorkers
    , ftreDiskSizeGb
    , ftreNumWorkers
    , ftreEnableStreamingEngine
    , ftreFlexrsGoal
    , ftreNetwork
    , ftreWorkerRegion
    , ftreZone
    , ftreIPConfiguration
    , ftreStagingLocation
    , ftreSubnetwork
    , ftreMachineType
    , ftreAdditionalUserLabels
    , ftreKmsKeyName
    , ftreServiceAccountEmail
    , ftreWorkerZone
    , ftreAdditionalExperiments
    , ftreMaxWorkers
    , ftreTempLocation

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

    -- ** ProjectsLocationsJobsListFilter
    , ProjectsLocationsJobsListFilter (..)

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

    -- ** WorkItemDetailsState
    , WorkItemDetailsState (..)

    -- ** EnvironmentShuffleMode
    , EnvironmentShuffleMode (..)

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

    -- ** ProjectsJobsGetView
    , ProjectsJobsGetView (..)

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
    , lwirUnifiedWorkerResponse

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

    -- ** RuntimeMetadata
    , RuntimeMetadata
    , runtimeMetadata
    , rmSdkInfo
    , rmParameters
    ) where

import Network.Google.Prelude
import Network.Google.Dataflow.Types
import Network.Google.Resource.Dataflow.Projects.DeleteSnapshots
import Network.Google.Resource.Dataflow.Projects.Jobs.Aggregated
import Network.Google.Resource.Dataflow.Projects.Jobs.Create
import Network.Google.Resource.Dataflow.Projects.Jobs.Debug.GetConfig
import Network.Google.Resource.Dataflow.Projects.Jobs.Debug.SendCapture
import Network.Google.Resource.Dataflow.Projects.Jobs.Get
import Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics
import Network.Google.Resource.Dataflow.Projects.Jobs.List
import Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List
import Network.Google.Resource.Dataflow.Projects.Jobs.Snapshot
import Network.Google.Resource.Dataflow.Projects.Jobs.Update
import Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
import Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
import Network.Google.Resource.Dataflow.Projects.Locations.FlexTemplates.Launch
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Create
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.GetConfig
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.SendCapture
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Get
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetExecutionDetails
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshot
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshots.List
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Stages.GetExecutionDetails
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
import Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus
import Network.Google.Resource.Dataflow.Projects.Locations.SQL.Validate
import Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Delete
import Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Get
import Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.List
import Network.Google.Resource.Dataflow.Projects.Locations.Templates.Create
import Network.Google.Resource.Dataflow.Projects.Locations.Templates.Get
import Network.Google.Resource.Dataflow.Projects.Locations.Templates.Launch
import Network.Google.Resource.Dataflow.Projects.Locations.WorkerMessages
import Network.Google.Resource.Dataflow.Projects.Snapshots.Get
import Network.Google.Resource.Dataflow.Projects.Snapshots.List
import Network.Google.Resource.Dataflow.Projects.Templates.Create
import Network.Google.Resource.Dataflow.Projects.Templates.Get
import Network.Google.Resource.Dataflow.Projects.Templates.Launch
import Network.Google.Resource.Dataflow.Projects.WorkerMessages

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
       :<|> ProjectsSnapshotsListResource
       :<|> ProjectsSnapshotsGetResource
       :<|> ProjectsLocationsFlexTemplatesLaunchResource
       :<|> ProjectsLocationsTemplatesLaunchResource
       :<|> ProjectsLocationsTemplatesGetResource
       :<|> ProjectsLocationsTemplatesCreateResource
       :<|> ProjectsLocationsJobsDebugGetConfigResource
       :<|> ProjectsLocationsJobsDebugSendCaptureResource
       :<|> ProjectsLocationsJobsSnapshotsListResource
       :<|> ProjectsLocationsJobsWorkItemsLeaseResource
       :<|>
       ProjectsLocationsJobsWorkItemsReportStatusResource
       :<|>
       ProjectsLocationsJobsStagesGetExecutionDetailsResource
       :<|> ProjectsLocationsJobsMessagesListResource
       :<|> ProjectsLocationsJobsSnapshotResource
       :<|> ProjectsLocationsJobsListResource
       :<|> ProjectsLocationsJobsGetResource
       :<|> ProjectsLocationsJobsGetExecutionDetailsResource
       :<|> ProjectsLocationsJobsCreateResource
       :<|> ProjectsLocationsJobsUpdateResource
       :<|> ProjectsLocationsJobsGetMetricsResource
       :<|> ProjectsLocationsSnapshotsListResource
       :<|> ProjectsLocationsSnapshotsGetResource
       :<|> ProjectsLocationsSnapshotsDeleteResource
       :<|> ProjectsLocationsSQLValidateResource
       :<|> ProjectsLocationsWorkerMessagesResource
       :<|> ProjectsDeleteSnapshotsResource
       :<|> ProjectsWorkerMessagesResource
