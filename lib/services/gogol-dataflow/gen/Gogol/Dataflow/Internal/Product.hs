{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Dataflow.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataflow.Internal.Product
  ( -- * ApproximateProgress
    ApproximateProgress (..),
    newApproximateProgress,

    -- * ApproximateReportedProgress
    ApproximateReportedProgress (..),
    newApproximateReportedProgress,

    -- * ApproximateSplitRequest
    ApproximateSplitRequest (..),
    newApproximateSplitRequest,

    -- * AutoscalingEvent
    AutoscalingEvent (..),
    newAutoscalingEvent,

    -- * AutoscalingSettings
    AutoscalingSettings (..),
    newAutoscalingSettings,

    -- * Base2Exponent
    Base2Exponent (..),
    newBase2Exponent,

    -- * BigQueryIODetails
    BigQueryIODetails (..),
    newBigQueryIODetails,

    -- * BigTableIODetails
    BigTableIODetails (..),
    newBigTableIODetails,

    -- * BucketOptions
    BucketOptions (..),
    newBucketOptions,

    -- * CPUTime
    CPUTime (..),
    newCPUTime,

    -- * ComponentSource
    ComponentSource (..),
    newComponentSource,

    -- * ComponentTransform
    ComponentTransform (..),
    newComponentTransform,

    -- * ComputationTopology
    ComputationTopology (..),
    newComputationTopology,

    -- * ConcatPosition
    ConcatPosition (..),
    newConcatPosition,

    -- * ContainerSpec
    ContainerSpec (..),
    newContainerSpec,

    -- * CounterMetadata
    CounterMetadata (..),
    newCounterMetadata,

    -- * CounterStructuredName
    CounterStructuredName (..),
    newCounterStructuredName,

    -- * CounterStructuredNameAndMetadata
    CounterStructuredNameAndMetadata (..),
    newCounterStructuredNameAndMetadata,

    -- * CounterUpdate
    CounterUpdate (..),
    newCounterUpdate,

    -- * CreateJobFromTemplateRequest
    CreateJobFromTemplateRequest (..),
    newCreateJobFromTemplateRequest,

    -- * CreateJobFromTemplateRequest_Parameters
    CreateJobFromTemplateRequest_Parameters (..),
    newCreateJobFromTemplateRequest_Parameters,

    -- * CustomSourceLocation
    CustomSourceLocation (..),
    newCustomSourceLocation,

    -- * DataDiskAssignment
    DataDiskAssignment (..),
    newDataDiskAssignment,

    -- * DataSamplingConfig
    DataSamplingConfig (..),
    newDataSamplingConfig,

    -- * DataSamplingReport
    DataSamplingReport (..),
    newDataSamplingReport,

    -- * DataflowGaugeValue
    DataflowGaugeValue (..),
    newDataflowGaugeValue,

    -- * DataflowHistogramValue
    DataflowHistogramValue (..),
    newDataflowHistogramValue,

    -- * DatastoreIODetails
    DatastoreIODetails (..),
    newDatastoreIODetails,

    -- * DebugOptions
    DebugOptions (..),
    newDebugOptions,

    -- * DeleteSnapshotResponse
    DeleteSnapshotResponse (..),
    newDeleteSnapshotResponse,

    -- * DerivedSource
    DerivedSource (..),
    newDerivedSource,

    -- * Disk
    Disk (..),
    newDisk,

    -- * DisplayData
    DisplayData (..),
    newDisplayData,

    -- * DistributionUpdate
    DistributionUpdate (..),
    newDistributionUpdate,

    -- * DynamicSourceSplit
    DynamicSourceSplit (..),
    newDynamicSourceSplit,

    -- * Environment
    Environment (..),
    newEnvironment,

    -- * Environment_InternalExperiments
    Environment_InternalExperiments (..),
    newEnvironment_InternalExperiments,

    -- * Environment_SdkPipelineOptions
    Environment_SdkPipelineOptions (..),
    newEnvironment_SdkPipelineOptions,

    -- * Environment_UserAgent
    Environment_UserAgent (..),
    newEnvironment_UserAgent,

    -- * Environment_Version
    Environment_Version (..),
    newEnvironment_Version,

    -- * ExecutionStageState
    ExecutionStageState (..),
    newExecutionStageState,

    -- * ExecutionStageSummary
    ExecutionStageSummary (..),
    newExecutionStageSummary,

    -- * FailedLocation
    FailedLocation (..),
    newFailedLocation,

    -- * FileIODetails
    FileIODetails (..),
    newFileIODetails,

    -- * FlattenInstruction
    FlattenInstruction (..),
    newFlattenInstruction,

    -- * FlexTemplateRuntimeEnvironment
    FlexTemplateRuntimeEnvironment (..),
    newFlexTemplateRuntimeEnvironment,

    -- * FlexTemplateRuntimeEnvironment_AdditionalUserLabels
    FlexTemplateRuntimeEnvironment_AdditionalUserLabels (..),
    newFlexTemplateRuntimeEnvironment_AdditionalUserLabels,

    -- * FloatingPointList
    FloatingPointList (..),
    newFloatingPointList,

    -- * FloatingPointMean
    FloatingPointMean (..),
    newFloatingPointMean,

    -- * GPUUsage
    GPUUsage (..),
    newGPUUsage,

    -- * GPUUtilization
    GPUUtilization (..),
    newGPUUtilization,

    -- * GetDebugConfigRequest
    GetDebugConfigRequest (..),
    newGetDebugConfigRequest,

    -- * GetDebugConfigResponse
    GetDebugConfigResponse (..),
    newGetDebugConfigResponse,

    -- * GetTemplateResponse
    GetTemplateResponse (..),
    newGetTemplateResponse,

    -- * Histogram
    Histogram (..),
    newHistogram,

    -- * HotKeyDebuggingInfo
    HotKeyDebuggingInfo (..),
    newHotKeyDebuggingInfo,

    -- * HotKeyDebuggingInfo_DetectedHotKeys
    HotKeyDebuggingInfo_DetectedHotKeys (..),
    newHotKeyDebuggingInfo_DetectedHotKeys,

    -- * HotKeyDetection
    HotKeyDetection (..),
    newHotKeyDetection,

    -- * HotKeyInfo
    HotKeyInfo (..),
    newHotKeyInfo,

    -- * InstructionInput
    InstructionInput (..),
    newInstructionInput,

    -- * InstructionOutput
    InstructionOutput (..),
    newInstructionOutput,

    -- * InstructionOutput_Codec
    InstructionOutput_Codec (..),
    newInstructionOutput_Codec,

    -- * IntegerGauge
    IntegerGauge (..),
    newIntegerGauge,

    -- * IntegerList
    IntegerList (..),
    newIntegerList,

    -- * IntegerMean
    IntegerMean (..),
    newIntegerMean,

    -- * Job
    Job (..),
    newJob,

    -- * Job_Labels
    Job_Labels (..),
    newJob_Labels,

    -- * Job_TransformNameMapping
    Job_TransformNameMapping (..),
    newJob_TransformNameMapping,

    -- * JobExecutionDetails
    JobExecutionDetails (..),
    newJobExecutionDetails,

    -- * JobExecutionInfo
    JobExecutionInfo (..),
    newJobExecutionInfo,

    -- * JobExecutionInfo_Stages
    JobExecutionInfo_Stages (..),
    newJobExecutionInfo_Stages,

    -- * JobExecutionStageInfo
    JobExecutionStageInfo (..),
    newJobExecutionStageInfo,

    -- * JobMessage
    JobMessage (..),
    newJobMessage,

    -- * JobMetadata
    JobMetadata (..),
    newJobMetadata,

    -- * JobMetadata_UserDisplayProperties
    JobMetadata_UserDisplayProperties (..),
    newJobMetadata_UserDisplayProperties,

    -- * JobMetrics
    JobMetrics (..),
    newJobMetrics,

    -- * KeyRangeDataDiskAssignment
    KeyRangeDataDiskAssignment (..),
    newKeyRangeDataDiskAssignment,

    -- * KeyRangeLocation
    KeyRangeLocation (..),
    newKeyRangeLocation,

    -- * LaunchFlexTemplateParameter
    LaunchFlexTemplateParameter (..),
    newLaunchFlexTemplateParameter,

    -- * LaunchFlexTemplateParameter_LaunchOptions
    LaunchFlexTemplateParameter_LaunchOptions (..),
    newLaunchFlexTemplateParameter_LaunchOptions,

    -- * LaunchFlexTemplateParameter_Parameters
    LaunchFlexTemplateParameter_Parameters (..),
    newLaunchFlexTemplateParameter_Parameters,

    -- * LaunchFlexTemplateParameter_TransformNameMappings
    LaunchFlexTemplateParameter_TransformNameMappings (..),
    newLaunchFlexTemplateParameter_TransformNameMappings,

    -- * LaunchFlexTemplateRequest
    LaunchFlexTemplateRequest (..),
    newLaunchFlexTemplateRequest,

    -- * LaunchFlexTemplateResponse
    LaunchFlexTemplateResponse (..),
    newLaunchFlexTemplateResponse,

    -- * LaunchTemplateParameters
    LaunchTemplateParameters (..),
    newLaunchTemplateParameters,

    -- * LaunchTemplateParameters_Parameters
    LaunchTemplateParameters_Parameters (..),
    newLaunchTemplateParameters_Parameters,

    -- * LaunchTemplateParameters_TransformNameMapping
    LaunchTemplateParameters_TransformNameMapping (..),
    newLaunchTemplateParameters_TransformNameMapping,

    -- * LaunchTemplateResponse
    LaunchTemplateResponse (..),
    newLaunchTemplateResponse,

    -- * LeaseWorkItemRequest
    LeaseWorkItemRequest (..),
    newLeaseWorkItemRequest,

    -- * LeaseWorkItemRequest_UnifiedWorkerRequest
    LeaseWorkItemRequest_UnifiedWorkerRequest (..),
    newLeaseWorkItemRequest_UnifiedWorkerRequest,

    -- * LeaseWorkItemResponse
    LeaseWorkItemResponse (..),
    newLeaseWorkItemResponse,

    -- * LeaseWorkItemResponse_UnifiedWorkerResponse
    LeaseWorkItemResponse_UnifiedWorkerResponse (..),
    newLeaseWorkItemResponse_UnifiedWorkerResponse,

    -- * Linear
    Linear (..),
    newLinear,

    -- * ListJobMessagesResponse
    ListJobMessagesResponse (..),
    newListJobMessagesResponse,

    -- * ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- * ListSnapshotsResponse
    ListSnapshotsResponse (..),
    newListSnapshotsResponse,

    -- * MapTask
    MapTask (..),
    newMapTask,

    -- * MemInfo
    MemInfo (..),
    newMemInfo,

    -- * MetricShortId
    MetricShortId (..),
    newMetricShortId,

    -- * MetricStructuredName
    MetricStructuredName (..),
    newMetricStructuredName,

    -- * MetricStructuredName_Context
    MetricStructuredName_Context (..),
    newMetricStructuredName_Context,

    -- * MetricUpdate
    MetricUpdate (..),
    newMetricUpdate,

    -- * MetricValue
    MetricValue (..),
    newMetricValue,

    -- * MetricValue_MetricLabels
    MetricValue_MetricLabels (..),
    newMetricValue_MetricLabels,

    -- * MountedDataDisk
    MountedDataDisk (..),
    newMountedDataDisk,

    -- * MultiOutputInfo
    MultiOutputInfo (..),
    newMultiOutputInfo,

    -- * NameAndKind
    NameAndKind (..),
    newNameAndKind,

    -- * OutlierStats
    OutlierStats (..),
    newOutlierStats,

    -- * Package
    Package (..),
    newPackage,

    -- * ParDoInstruction
    ParDoInstruction (..),
    newParDoInstruction,

    -- * ParDoInstruction_UserFn
    ParDoInstruction_UserFn (..),
    newParDoInstruction_UserFn,

    -- * ParallelInstruction
    ParallelInstruction (..),
    newParallelInstruction,

    -- * Parameter
    Parameter (..),
    newParameter,

    -- * ParameterMetadata
    ParameterMetadata (..),
    newParameterMetadata,

    -- * ParameterMetadata_CustomMetadata
    ParameterMetadata_CustomMetadata (..),
    newParameterMetadata_CustomMetadata,

    -- * ParameterMetadataEnumOption
    ParameterMetadataEnumOption (..),
    newParameterMetadataEnumOption,

    -- * PartialGroupByKeyInstruction
    PartialGroupByKeyInstruction (..),
    newPartialGroupByKeyInstruction,

    -- * PartialGroupByKeyInstruction_InputElementCodec
    PartialGroupByKeyInstruction_InputElementCodec (..),
    newPartialGroupByKeyInstruction_InputElementCodec,

    -- * PartialGroupByKeyInstruction_ValueCombiningFn
    PartialGroupByKeyInstruction_ValueCombiningFn (..),
    newPartialGroupByKeyInstruction_ValueCombiningFn,

    -- * PerStepNamespaceMetrics
    PerStepNamespaceMetrics (..),
    newPerStepNamespaceMetrics,

    -- * PerWorkerMetrics
    PerWorkerMetrics (..),
    newPerWorkerMetrics,

    -- * PipelineDescription
    PipelineDescription (..),
    newPipelineDescription,

    -- * Point
    Point (..),
    newPoint,

    -- * Position
    Position (..),
    newPosition,

    -- * ProgressTimeseries
    ProgressTimeseries (..),
    newProgressTimeseries,

    -- * PubSubIODetails
    PubSubIODetails (..),
    newPubSubIODetails,

    -- * PubsubLocation
    PubsubLocation (..),
    newPubsubLocation,

    -- * PubsubSnapshotMetadata
    PubsubSnapshotMetadata (..),
    newPubsubSnapshotMetadata,

    -- * ReadInstruction
    ReadInstruction (..),
    newReadInstruction,

    -- * ReportWorkItemStatusRequest
    ReportWorkItemStatusRequest (..),
    newReportWorkItemStatusRequest,

    -- * ReportWorkItemStatusRequest_UnifiedWorkerRequest
    ReportWorkItemStatusRequest_UnifiedWorkerRequest (..),
    newReportWorkItemStatusRequest_UnifiedWorkerRequest,

    -- * ReportWorkItemStatusResponse
    ReportWorkItemStatusResponse (..),
    newReportWorkItemStatusResponse,

    -- * ReportWorkItemStatusResponse_UnifiedWorkerResponse
    ReportWorkItemStatusResponse_UnifiedWorkerResponse (..),
    newReportWorkItemStatusResponse_UnifiedWorkerResponse,

    -- * ReportedParallelism
    ReportedParallelism (..),
    newReportedParallelism,

    -- * ResourceUtilizationReport
    ResourceUtilizationReport (..),
    newResourceUtilizationReport,

    -- * ResourceUtilizationReport_Containers
    ResourceUtilizationReport_Containers (..),
    newResourceUtilizationReport_Containers,

    -- * ResourceUtilizationReportResponse
    ResourceUtilizationReportResponse (..),
    newResourceUtilizationReportResponse,

    -- * RuntimeEnvironment
    RuntimeEnvironment (..),
    newRuntimeEnvironment,

    -- * RuntimeEnvironment_AdditionalUserLabels
    RuntimeEnvironment_AdditionalUserLabels (..),
    newRuntimeEnvironment_AdditionalUserLabels,

    -- * RuntimeMetadata
    RuntimeMetadata (..),
    newRuntimeMetadata,

    -- * RuntimeUpdatableParams
    RuntimeUpdatableParams (..),
    newRuntimeUpdatableParams,

    -- * SDKInfo
    SDKInfo (..),
    newSDKInfo,

    -- * SdkBug
    SdkBug (..),
    newSdkBug,

    -- * SdkHarnessContainerImage
    SdkHarnessContainerImage (..),
    newSdkHarnessContainerImage,

    -- * SdkVersion
    SdkVersion (..),
    newSdkVersion,

    -- * SendDebugCaptureRequest
    SendDebugCaptureRequest (..),
    newSendDebugCaptureRequest,

    -- * SendDebugCaptureResponse
    SendDebugCaptureResponse (..),
    newSendDebugCaptureResponse,

    -- * SendWorkerMessagesRequest
    SendWorkerMessagesRequest (..),
    newSendWorkerMessagesRequest,

    -- * SendWorkerMessagesResponse
    SendWorkerMessagesResponse (..),
    newSendWorkerMessagesResponse,

    -- * SeqMapTask
    SeqMapTask (..),
    newSeqMapTask,

    -- * SeqMapTask_UserFn
    SeqMapTask_UserFn (..),
    newSeqMapTask_UserFn,

    -- * SeqMapTaskOutputInfo
    SeqMapTaskOutputInfo (..),
    newSeqMapTaskOutputInfo,

    -- * ServiceResources
    ServiceResources (..),
    newServiceResources,

    -- * ShellTask
    ShellTask (..),
    newShellTask,

    -- * SideInputInfo
    SideInputInfo (..),
    newSideInputInfo,

    -- * SideInputInfo_Kind
    SideInputInfo_Kind (..),
    newSideInputInfo_Kind,

    -- * Sink
    Sink (..),
    newSink,

    -- * Sink_Codec
    Sink_Codec (..),
    newSink_Codec,

    -- * Sink_Spec
    Sink_Spec (..),
    newSink_Spec,

    -- * Snapshot
    Snapshot (..),
    newSnapshot,

    -- * SnapshotJobRequest
    SnapshotJobRequest (..),
    newSnapshotJobRequest,

    -- * Source
    Source (..),
    newSource,

    -- * Source_BaseSpecsItem
    Source_BaseSpecsItem (..),
    newSource_BaseSpecsItem,

    -- * Source_Codec
    Source_Codec (..),
    newSource_Codec,

    -- * Source_Spec
    Source_Spec (..),
    newSource_Spec,

    -- * SourceFork
    SourceFork (..),
    newSourceFork,

    -- * SourceGetMetadataRequest
    SourceGetMetadataRequest (..),
    newSourceGetMetadataRequest,

    -- * SourceGetMetadataResponse
    SourceGetMetadataResponse (..),
    newSourceGetMetadataResponse,

    -- * SourceMetadata
    SourceMetadata (..),
    newSourceMetadata,

    -- * SourceOperationRequest
    SourceOperationRequest (..),
    newSourceOperationRequest,

    -- * SourceOperationResponse
    SourceOperationResponse (..),
    newSourceOperationResponse,

    -- * SourceSplitOptions
    SourceSplitOptions (..),
    newSourceSplitOptions,

    -- * SourceSplitRequest
    SourceSplitRequest (..),
    newSourceSplitRequest,

    -- * SourceSplitResponse
    SourceSplitResponse (..),
    newSourceSplitResponse,

    -- * SourceSplitShard
    SourceSplitShard (..),
    newSourceSplitShard,

    -- * SpannerIODetails
    SpannerIODetails (..),
    newSpannerIODetails,

    -- * SplitInt64
    SplitInt64 (..),
    newSplitInt64,

    -- * StageExecutionDetails
    StageExecutionDetails (..),
    newStageExecutionDetails,

    -- * StageSource
    StageSource (..),
    newStageSource,

    -- * StageSummary
    StageSummary (..),
    newStageSummary,

    -- * StateFamilyConfig
    StateFamilyConfig (..),
    newStateFamilyConfig,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Step
    Step (..),
    newStep,

    -- * Step_Properties
    Step_Properties (..),
    newStep_Properties,

    -- * Straggler
    Straggler (..),
    newStraggler,

    -- * StragglerDebuggingInfo
    StragglerDebuggingInfo (..),
    newStragglerDebuggingInfo,

    -- * StragglerInfo
    StragglerInfo (..),
    newStragglerInfo,

    -- * StragglerInfo_Causes
    StragglerInfo_Causes (..),
    newStragglerInfo_Causes,

    -- * StragglerSummary
    StragglerSummary (..),
    newStragglerSummary,

    -- * StragglerSummary_StragglerCauseCount
    StragglerSummary_StragglerCauseCount (..),
    newStragglerSummary_StragglerCauseCount,

    -- * StreamLocation
    StreamLocation (..),
    newStreamLocation,

    -- * StreamingApplianceSnapshotConfig
    StreamingApplianceSnapshotConfig (..),
    newStreamingApplianceSnapshotConfig,

    -- * StreamingComputationConfig
    StreamingComputationConfig (..),
    newStreamingComputationConfig,

    -- * StreamingComputationConfig_TransformUserNameToStateFamily
    StreamingComputationConfig_TransformUserNameToStateFamily (..),
    newStreamingComputationConfig_TransformUserNameToStateFamily,

    -- * StreamingComputationRanges
    StreamingComputationRanges (..),
    newStreamingComputationRanges,

    -- * StreamingComputationTask
    StreamingComputationTask (..),
    newStreamingComputationTask,

    -- * StreamingConfigTask
    StreamingConfigTask (..),
    newStreamingConfigTask,

    -- * StreamingConfigTask_UserStepToStateFamilyNameMap
    StreamingConfigTask_UserStepToStateFamilyNameMap (..),
    newStreamingConfigTask_UserStepToStateFamilyNameMap,

    -- * StreamingOperationalLimits
    StreamingOperationalLimits (..),
    newStreamingOperationalLimits,

    -- * StreamingScalingReport
    StreamingScalingReport (..),
    newStreamingScalingReport,

    -- * StreamingScalingReportResponse
    StreamingScalingReportResponse (..),
    newStreamingScalingReportResponse,

    -- * StreamingSetupTask
    StreamingSetupTask (..),
    newStreamingSetupTask,

    -- * StreamingSideInputLocation
    StreamingSideInputLocation (..),
    newStreamingSideInputLocation,

    -- * StreamingStageLocation
    StreamingStageLocation (..),
    newStreamingStageLocation,

    -- * StreamingStragglerInfo
    StreamingStragglerInfo (..),
    newStreamingStragglerInfo,

    -- * StringList
    StringList (..),
    newStringList,

    -- * StructuredMessage
    StructuredMessage (..),
    newStructuredMessage,

    -- * TaskRunnerSettings
    TaskRunnerSettings (..),
    newTaskRunnerSettings,

    -- * TemplateMetadata
    TemplateMetadata (..),
    newTemplateMetadata,

    -- * TopologyConfig
    TopologyConfig (..),
    newTopologyConfig,

    -- * TopologyConfig_UserStageToComputationNameMap
    TopologyConfig_UserStageToComputationNameMap (..),
    newTopologyConfig_UserStageToComputationNameMap,

    -- * TransformSummary
    TransformSummary (..),
    newTransformSummary,

    -- * WorkItem
    WorkItem (..),
    newWorkItem,

    -- * WorkItemDetails
    WorkItemDetails (..),
    newWorkItemDetails,

    -- * WorkItemServiceState
    WorkItemServiceState (..),
    newWorkItemServiceState,

    -- * WorkItemServiceState_HarnessData
    WorkItemServiceState_HarnessData (..),
    newWorkItemServiceState_HarnessData,

    -- * WorkItemStatus
    WorkItemStatus (..),
    newWorkItemStatus,

    -- * WorkerDetails
    WorkerDetails (..),
    newWorkerDetails,

    -- * WorkerHealthReport
    WorkerHealthReport (..),
    newWorkerHealthReport,

    -- * WorkerHealthReport_PodsItem
    WorkerHealthReport_PodsItem (..),
    newWorkerHealthReport_PodsItem,

    -- * WorkerHealthReportResponse
    WorkerHealthReportResponse (..),
    newWorkerHealthReportResponse,

    -- * WorkerLifecycleEvent
    WorkerLifecycleEvent (..),
    newWorkerLifecycleEvent,

    -- * WorkerLifecycleEvent_Metadata
    WorkerLifecycleEvent_Metadata (..),
    newWorkerLifecycleEvent_Metadata,

    -- * WorkerMessage
    WorkerMessage (..),
    newWorkerMessage,

    -- * WorkerMessage_Labels
    WorkerMessage_Labels (..),
    newWorkerMessage_Labels,

    -- * WorkerMessageCode
    WorkerMessageCode (..),
    newWorkerMessageCode,

    -- * WorkerMessageCode_Parameters
    WorkerMessageCode_Parameters (..),
    newWorkerMessageCode_Parameters,

    -- * WorkerMessageResponse
    WorkerMessageResponse (..),
    newWorkerMessageResponse,

    -- * WorkerPool
    WorkerPool (..),
    newWorkerPool,

    -- * WorkerPool_Metadata
    WorkerPool_Metadata (..),
    newWorkerPool_Metadata,

    -- * WorkerPool_PoolArgs
    WorkerPool_PoolArgs (..),
    newWorkerPool_PoolArgs,

    -- * WorkerSettings
    WorkerSettings (..),
    newWorkerSettings,

    -- * WorkerShutdownNotice
    WorkerShutdownNotice (..),
    newWorkerShutdownNotice,

    -- * WorkerShutdownNoticeResponse
    WorkerShutdownNoticeResponse (..),
    newWorkerShutdownNoticeResponse,

    -- * WorkerThreadScalingReport
    WorkerThreadScalingReport (..),
    newWorkerThreadScalingReport,

    -- * WorkerThreadScalingReportResponse
    WorkerThreadScalingReportResponse (..),
    newWorkerThreadScalingReportResponse,

    -- * WriteInstruction
    WriteInstruction (..),
    newWriteInstruction,
  )
where

import Gogol.Dataflow.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Obsolete in favor of ApproximateReportedProgress and ApproximateSplitRequest.
--
-- /See:/ 'newApproximateProgress' smart constructor.
data ApproximateProgress = ApproximateProgress
  { -- | Obsolete.
    percentComplete :: (Core.Maybe Core.Double),
    -- | Obsolete.
    position :: (Core.Maybe Position),
    -- | Obsolete.
    remainingTime :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApproximateProgress' with the minimum fields required to make a request.
newApproximateProgress ::
  ApproximateProgress
newApproximateProgress =
  ApproximateProgress
    { percentComplete = Core.Nothing,
      position = Core.Nothing,
      remainingTime = Core.Nothing
    }

instance Core.FromJSON ApproximateProgress where
  parseJSON =
    Core.withObject
      "ApproximateProgress"
      ( \o ->
          ApproximateProgress
            Core.<$> (o Core..:? "percentComplete")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "remainingTime")
      )

instance Core.ToJSON ApproximateProgress where
  toJSON ApproximateProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("percentComplete" Core..=) Core.<$> percentComplete,
            ("position" Core..=) Core.<$> position,
            ("remainingTime" Core..=) Core.<$> remainingTime
          ]
      )

-- | A progress measurement of a WorkItem by a worker.
--
-- /See:/ 'newApproximateReportedProgress' smart constructor.
data ApproximateReportedProgress = ApproximateReportedProgress
  { -- | Total amount of parallelism in the portion of input of this task that has already been consumed and is no longer active. In the first two examples above (see remaining/parallelism), the value should be 29 or 2 respectively. The sum of remaining/parallelism and consumed_parallelism should equal the total amount of parallelism in this work item. If specified, must be finite.
    consumedParallelism :: (Core.Maybe ReportedParallelism),
    -- | Completion as fraction of the input consumed, from 0.0 (beginning, nothing consumed), to 1.0 (end of the input, entire input consumed).
    fractionConsumed :: (Core.Maybe Core.Double),
    -- | A Position within the work to represent a progress.
    position :: (Core.Maybe Position),
    -- | Total amount of parallelism in the input of this task that remains, (i.e. can be delegated to this task and any new tasks via dynamic splitting). Always at least 1 for non-finished work items and 0 for finished. \"Amount of parallelism\" refers to how many non-empty parts of the input can be read in parallel. This does not necessarily equal number of records. An input that can be read in parallel down to the individual records is called \"perfectly splittable\". An example of non-perfectly parallelizable input is a block-compressed file format where a block of records has to be read as a whole, but different blocks can be read in parallel. Examples: * If we are processing record #30 (starting at 1) out of 50 in a perfectly splittable 50-record input, this value should be 21 (20 remaining + 1 current). * If we are reading through block 3 in a block-compressed file consisting of 5 blocks, this value should be 3 (since blocks 4 and 5 can be processed in parallel by new tasks via dynamic splitting and the current
    -- task remains processing block 3). * If we are reading through the last block in a block-compressed file, or reading or processing the last record in a perfectly splittable input, this value should be 1, because apart from the current task, no additional remainder can be split off.
    remainingParallelism :: (Core.Maybe ReportedParallelism)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApproximateReportedProgress' with the minimum fields required to make a request.
newApproximateReportedProgress ::
  ApproximateReportedProgress
newApproximateReportedProgress =
  ApproximateReportedProgress
    { consumedParallelism = Core.Nothing,
      fractionConsumed = Core.Nothing,
      position = Core.Nothing,
      remainingParallelism = Core.Nothing
    }

instance Core.FromJSON ApproximateReportedProgress where
  parseJSON =
    Core.withObject
      "ApproximateReportedProgress"
      ( \o ->
          ApproximateReportedProgress
            Core.<$> (o Core..:? "consumedParallelism")
            Core.<*> (o Core..:? "fractionConsumed")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "remainingParallelism")
      )

instance Core.ToJSON ApproximateReportedProgress where
  toJSON ApproximateReportedProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("consumedParallelism" Core..=) Core.<$> consumedParallelism,
            ("fractionConsumed" Core..=) Core.<$> fractionConsumed,
            ("position" Core..=) Core.<$> position,
            ("remainingParallelism" Core..=) Core.<$> remainingParallelism
          ]
      )

-- | A suggestion by the service to the worker to dynamically split the WorkItem.
--
-- /See:/ 'newApproximateSplitRequest' smart constructor.
data ApproximateSplitRequest = ApproximateSplitRequest
  { -- | A fraction at which to split the work item, from 0.0 (beginning of the input) to 1.0 (end of the input).
    fractionConsumed :: (Core.Maybe Core.Double),
    -- | The fraction of the remainder of work to split the work item at, from 0.0 (split at the current position) to 1.0 (end of the input).
    fractionOfRemainder :: (Core.Maybe Core.Double),
    -- | A Position at which to split the work item.
    position :: (Core.Maybe Position)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApproximateSplitRequest' with the minimum fields required to make a request.
newApproximateSplitRequest ::
  ApproximateSplitRequest
newApproximateSplitRequest =
  ApproximateSplitRequest
    { fractionConsumed = Core.Nothing,
      fractionOfRemainder = Core.Nothing,
      position = Core.Nothing
    }

instance Core.FromJSON ApproximateSplitRequest where
  parseJSON =
    Core.withObject
      "ApproximateSplitRequest"
      ( \o ->
          ApproximateSplitRequest
            Core.<$> (o Core..:? "fractionConsumed")
            Core.<*> (o Core..:? "fractionOfRemainder")
            Core.<*> (o Core..:? "position")
      )

instance Core.ToJSON ApproximateSplitRequest where
  toJSON ApproximateSplitRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fractionConsumed" Core..=) Core.<$> fractionConsumed,
            ("fractionOfRemainder" Core..=) Core.<$> fractionOfRemainder,
            ("position" Core..=) Core.<$> position
          ]
      )

-- | A structured message reporting an autoscaling decision made by the Dataflow service.
--
-- /See:/ 'newAutoscalingEvent' smart constructor.
data AutoscalingEvent = AutoscalingEvent
  { -- | The current number of workers the job has.
    currentNumWorkers :: (Core.Maybe Core.Int64),
    -- | A message describing why the system decided to adjust the current number of workers, why it failed, or why the system decided to not make any changes to the number of workers.
    description :: (Core.Maybe StructuredMessage),
    -- | The type of autoscaling event to report.
    eventType :: (Core.Maybe AutoscalingEvent_EventType),
    -- | The target number of workers the worker pool wants to resize to use.
    targetNumWorkers :: (Core.Maybe Core.Int64),
    -- | The time this event was emitted to indicate a new target or current num_workers value.
    time :: (Core.Maybe Core.DateTime),
    -- | A short and friendly name for the worker pool this event refers to.
    workerPool :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingEvent' with the minimum fields required to make a request.
newAutoscalingEvent ::
  AutoscalingEvent
newAutoscalingEvent =
  AutoscalingEvent
    { currentNumWorkers = Core.Nothing,
      description = Core.Nothing,
      eventType = Core.Nothing,
      targetNumWorkers = Core.Nothing,
      time = Core.Nothing,
      workerPool = Core.Nothing
    }

instance Core.FromJSON AutoscalingEvent where
  parseJSON =
    Core.withObject
      "AutoscalingEvent"
      ( \o ->
          AutoscalingEvent
            Core.<$> (o Core..:? "currentNumWorkers" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "eventType")
            Core.<*> (o Core..:? "targetNumWorkers" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "time")
            Core.<*> (o Core..:? "workerPool")
      )

instance Core.ToJSON AutoscalingEvent where
  toJSON AutoscalingEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentNumWorkers" Core..=)
              Core.. Core.AsText
              Core.<$> currentNumWorkers,
            ("description" Core..=) Core.<$> description,
            ("eventType" Core..=) Core.<$> eventType,
            ("targetNumWorkers" Core..=)
              Core.. Core.AsText
              Core.<$> targetNumWorkers,
            ("time" Core..=) Core.<$> time,
            ("workerPool" Core..=) Core.<$> workerPool
          ]
      )

-- | Settings for WorkerPool autoscaling.
--
-- /See:/ 'newAutoscalingSettings' smart constructor.
data AutoscalingSettings = AutoscalingSettings
  { -- | The algorithm to use for autoscaling.
    algorithm :: (Core.Maybe AutoscalingSettings_Algorithm),
    -- | The maximum number of workers to cap scaling at.
    maxNumWorkers :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingSettings' with the minimum fields required to make a request.
newAutoscalingSettings ::
  AutoscalingSettings
newAutoscalingSettings =
  AutoscalingSettings
    { algorithm = Core.Nothing,
      maxNumWorkers = Core.Nothing
    }

instance Core.FromJSON AutoscalingSettings where
  parseJSON =
    Core.withObject
      "AutoscalingSettings"
      ( \o ->
          AutoscalingSettings
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "maxNumWorkers")
      )

instance Core.ToJSON AutoscalingSettings where
  toJSON AutoscalingSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("maxNumWorkers" Core..=) Core.<$> maxNumWorkers
          ]
      )

-- | Exponential buckets where the growth factor between buckets is @2**(2**-scale)@. e.g. for @scale=1@ growth factor is @2**(2**(-1))=sqrt(2)@. @n@ buckets will have the following boundaries. - 0th: [0, gf) - i in [1, n-1]: [gf^(i), gf^(i+1))
--
-- /See:/ 'newBase2Exponent' smart constructor.
data Base2Exponent = Base2Exponent
  { -- | Must be greater than 0.
    numberOfBuckets :: (Core.Maybe Core.Int32),
    -- | Must be between -3 and 3. This forces the growth factor of the bucket boundaries to be between @2^(1\/8)@ and @256@.
    scale :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Base2Exponent' with the minimum fields required to make a request.
newBase2Exponent ::
  Base2Exponent
newBase2Exponent =
  Base2Exponent
    { numberOfBuckets = Core.Nothing,
      scale = Core.Nothing
    }

instance Core.FromJSON Base2Exponent where
  parseJSON =
    Core.withObject
      "Base2Exponent"
      ( \o ->
          Base2Exponent
            Core.<$> (o Core..:? "numberOfBuckets")
            Core.<*> (o Core..:? "scale")
      )

instance Core.ToJSON Base2Exponent where
  toJSON Base2Exponent {..} =
    Core.object
      ( Core.catMaybes
          [ ("numberOfBuckets" Core..=) Core.<$> numberOfBuckets,
            ("scale" Core..=) Core.<$> scale
          ]
      )

-- | Metadata for a BigQuery connector used by the job.
--
-- /See:/ 'newBigQueryIODetails' smart constructor.
data BigQueryIODetails = BigQueryIODetails
  { -- | Dataset accessed in the connection.
    dataset :: (Core.Maybe Core.Text),
    -- | Project accessed in the connection.
    projectId :: (Core.Maybe Core.Text),
    -- | Query used to access data in the connection.
    query :: (Core.Maybe Core.Text),
    -- | Table accessed in the connection.
    table :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryIODetails' with the minimum fields required to make a request.
newBigQueryIODetails ::
  BigQueryIODetails
newBigQueryIODetails =
  BigQueryIODetails
    { dataset = Core.Nothing,
      projectId = Core.Nothing,
      query = Core.Nothing,
      table = Core.Nothing
    }

instance Core.FromJSON BigQueryIODetails where
  parseJSON =
    Core.withObject
      "BigQueryIODetails"
      ( \o ->
          BigQueryIODetails
            Core.<$> (o Core..:? "dataset")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "table")
      )

instance Core.ToJSON BigQueryIODetails where
  toJSON BigQueryIODetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataset" Core..=) Core.<$> dataset,
            ("projectId" Core..=) Core.<$> projectId,
            ("query" Core..=) Core.<$> query,
            ("table" Core..=) Core.<$> table
          ]
      )

-- | Metadata for a Cloud Bigtable connector used by the job.
--
-- /See:/ 'newBigTableIODetails' smart constructor.
data BigTableIODetails = BigTableIODetails
  { -- | InstanceId accessed in the connection.
    instanceId :: (Core.Maybe Core.Text),
    -- | ProjectId accessed in the connection.
    projectId :: (Core.Maybe Core.Text),
    -- | TableId accessed in the connection.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigTableIODetails' with the minimum fields required to make a request.
newBigTableIODetails ::
  BigTableIODetails
newBigTableIODetails =
  BigTableIODetails
    { instanceId = Core.Nothing,
      projectId = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON BigTableIODetails where
  parseJSON =
    Core.withObject
      "BigTableIODetails"
      ( \o ->
          BigTableIODetails
            Core.<$> (o Core..:? "instanceId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON BigTableIODetails where
  toJSON BigTableIODetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("instanceId" Core..=) Core.<$> instanceId,
            ("projectId" Core..=) Core.<$> projectId,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

-- | @BucketOptions@ describes the bucket boundaries used in the histogram.
--
-- /See:/ 'newBucketOptions' smart constructor.
data BucketOptions = BucketOptions
  { -- | Bucket boundaries grow exponentially.
    exponential :: (Core.Maybe Base2Exponent),
    -- | Bucket boundaries grow linearly.
    linear :: (Core.Maybe Linear)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketOptions' with the minimum fields required to make a request.
newBucketOptions ::
  BucketOptions
newBucketOptions =
  BucketOptions {exponential = Core.Nothing, linear = Core.Nothing}

instance Core.FromJSON BucketOptions where
  parseJSON =
    Core.withObject
      "BucketOptions"
      ( \o ->
          BucketOptions
            Core.<$> (o Core..:? "exponential")
            Core.<*> (o Core..:? "linear")
      )

instance Core.ToJSON BucketOptions where
  toJSON BucketOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("exponential" Core..=) Core.<$> exponential,
            ("linear" Core..=) Core.<$> linear
          ]
      )

-- | Modeled after information exposed by \/proc\/stat.
--
-- /See:/ 'newCPUTime' smart constructor.
data CPUTime = CPUTime
  { -- | Average CPU utilization rate (% non-idle cpu \/ second) since previous sample.
    rate :: (Core.Maybe Core.Double),
    -- | Timestamp of the measurement.
    timestamp :: (Core.Maybe Core.DateTime),
    -- | Total active CPU time across all cores (ie., non-idle) in milliseconds since start-up.
    totalMs :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CPUTime' with the minimum fields required to make a request.
newCPUTime ::
  CPUTime
newCPUTime =
  CPUTime
    { rate = Core.Nothing,
      timestamp = Core.Nothing,
      totalMs = Core.Nothing
    }

instance Core.FromJSON CPUTime where
  parseJSON =
    Core.withObject
      "CPUTime"
      ( \o ->
          CPUTime
            Core.<$> (o Core..:? "rate")
            Core.<*> (o Core..:? "timestamp")
            Core.<*> (o Core..:? "totalMs" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON CPUTime where
  toJSON CPUTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("rate" Core..=) Core.<$> rate,
            ("timestamp" Core..=) Core.<$> timestamp,
            ("totalMs" Core..=) Core.. Core.AsText Core.<$> totalMs
          ]
      )

-- | Description of an interstitial value between transforms in an execution stage.
--
-- /See:/ 'newComponentSource' smart constructor.
data ComponentSource = ComponentSource
  { -- | Dataflow service generated name for this source.
    name :: (Core.Maybe Core.Text),
    -- | User name for the original user transform or collection with which this source is most closely associated.
    originalTransformOrCollection :: (Core.Maybe Core.Text),
    -- | Human-readable name for this transform; may be user or system generated.
    userName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComponentSource' with the minimum fields required to make a request.
newComponentSource ::
  ComponentSource
newComponentSource =
  ComponentSource
    { name = Core.Nothing,
      originalTransformOrCollection = Core.Nothing,
      userName = Core.Nothing
    }

instance Core.FromJSON ComponentSource where
  parseJSON =
    Core.withObject
      "ComponentSource"
      ( \o ->
          ComponentSource
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "originalTransformOrCollection")
            Core.<*> (o Core..:? "userName")
      )

instance Core.ToJSON ComponentSource where
  toJSON ComponentSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("originalTransformOrCollection" Core..=)
              Core.<$> originalTransformOrCollection,
            ("userName" Core..=) Core.<$> userName
          ]
      )

-- | Description of a transform executed as part of an execution stage.
--
-- /See:/ 'newComponentTransform' smart constructor.
data ComponentTransform = ComponentTransform
  { -- | Dataflow service generated name for this source.
    name :: (Core.Maybe Core.Text),
    -- | User name for the original user transform with which this transform is most closely associated.
    originalTransform :: (Core.Maybe Core.Text),
    -- | Human-readable name for this transform; may be user or system generated.
    userName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComponentTransform' with the minimum fields required to make a request.
newComponentTransform ::
  ComponentTransform
newComponentTransform =
  ComponentTransform
    { name = Core.Nothing,
      originalTransform = Core.Nothing,
      userName = Core.Nothing
    }

instance Core.FromJSON ComponentTransform where
  parseJSON =
    Core.withObject
      "ComponentTransform"
      ( \o ->
          ComponentTransform
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "originalTransform")
            Core.<*> (o Core..:? "userName")
      )

instance Core.ToJSON ComponentTransform where
  toJSON ComponentTransform {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("originalTransform" Core..=) Core.<$> originalTransform,
            ("userName" Core..=) Core.<$> userName
          ]
      )

-- | All configuration data for a particular Computation.
--
-- /See:/ 'newComputationTopology' smart constructor.
data ComputationTopology = ComputationTopology
  { -- | The ID of the computation.
    computationId :: (Core.Maybe Core.Text),
    -- | The inputs to the computation.
    inputs :: (Core.Maybe [StreamLocation]),
    -- | The key ranges processed by the computation.
    keyRanges :: (Core.Maybe [KeyRangeLocation]),
    -- | The outputs from the computation.
    outputs :: (Core.Maybe [StreamLocation]),
    -- | The state family values.
    stateFamilies :: (Core.Maybe [StateFamilyConfig]),
    -- | The system stage name.
    systemStageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputationTopology' with the minimum fields required to make a request.
newComputationTopology ::
  ComputationTopology
newComputationTopology =
  ComputationTopology
    { computationId = Core.Nothing,
      inputs = Core.Nothing,
      keyRanges = Core.Nothing,
      outputs = Core.Nothing,
      stateFamilies = Core.Nothing,
      systemStageName = Core.Nothing
    }

instance Core.FromJSON ComputationTopology where
  parseJSON =
    Core.withObject
      "ComputationTopology"
      ( \o ->
          ComputationTopology
            Core.<$> (o Core..:? "computationId")
            Core.<*> (o Core..:? "inputs")
            Core.<*> (o Core..:? "keyRanges")
            Core.<*> (o Core..:? "outputs")
            Core.<*> (o Core..:? "stateFamilies")
            Core.<*> (o Core..:? "systemStageName")
      )

instance Core.ToJSON ComputationTopology where
  toJSON ComputationTopology {..} =
    Core.object
      ( Core.catMaybes
          [ ("computationId" Core..=) Core.<$> computationId,
            ("inputs" Core..=) Core.<$> inputs,
            ("keyRanges" Core..=) Core.<$> keyRanges,
            ("outputs" Core..=) Core.<$> outputs,
            ("stateFamilies" Core..=) Core.<$> stateFamilies,
            ("systemStageName" Core..=) Core.<$> systemStageName
          ]
      )

-- | A position that encapsulates an inner position and an index for the inner position. A ConcatPosition can be used by a reader of a source that encapsulates a set of other sources.
--
-- /See:/ 'newConcatPosition' smart constructor.
data ConcatPosition = ConcatPosition
  { -- | Index of the inner source.
    index :: (Core.Maybe Core.Int32),
    -- | Position within the inner source.
    position :: (Core.Maybe Position)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConcatPosition' with the minimum fields required to make a request.
newConcatPosition ::
  ConcatPosition
newConcatPosition =
  ConcatPosition {index = Core.Nothing, position = Core.Nothing}

instance Core.FromJSON ConcatPosition where
  parseJSON =
    Core.withObject
      "ConcatPosition"
      ( \o ->
          ConcatPosition
            Core.<$> (o Core..:? "index")
            Core.<*> (o Core..:? "position")
      )

instance Core.ToJSON ConcatPosition where
  toJSON ConcatPosition {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("position" Core..=) Core.<$> position
          ]
      )

-- | Container Spec.
--
-- /See:/ 'newContainerSpec' smart constructor.
data ContainerSpec = ContainerSpec
  { -- | Default runtime environment for the job.
    defaultEnvironment :: (Core.Maybe FlexTemplateRuntimeEnvironment),
    -- | Name of the docker container image. E.g., gcr.io\/project\/some-image
    image :: (Core.Maybe Core.Text),
    -- | Cloud Storage path to self-signed certificate of private registry.
    imageRepositoryCertPath :: (Core.Maybe Core.Text),
    -- | Secret Manager secret id for password to authenticate to private registry.
    imageRepositoryPasswordSecretId :: (Core.Maybe Core.Text),
    -- | Secret Manager secret id for username to authenticate to private registry.
    imageRepositoryUsernameSecretId :: (Core.Maybe Core.Text),
    -- | Metadata describing a template including description and validation rules.
    metadata :: (Core.Maybe TemplateMetadata),
    -- | Required. SDK info of the Flex Template.
    sdkInfo :: (Core.Maybe SDKInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerSpec' with the minimum fields required to make a request.
newContainerSpec ::
  ContainerSpec
newContainerSpec =
  ContainerSpec
    { defaultEnvironment = Core.Nothing,
      image = Core.Nothing,
      imageRepositoryCertPath = Core.Nothing,
      imageRepositoryPasswordSecretId = Core.Nothing,
      imageRepositoryUsernameSecretId = Core.Nothing,
      metadata = Core.Nothing,
      sdkInfo = Core.Nothing
    }

instance Core.FromJSON ContainerSpec where
  parseJSON =
    Core.withObject
      "ContainerSpec"
      ( \o ->
          ContainerSpec
            Core.<$> (o Core..:? "defaultEnvironment")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "imageRepositoryCertPath")
            Core.<*> (o Core..:? "imageRepositoryPasswordSecretId")
            Core.<*> (o Core..:? "imageRepositoryUsernameSecretId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "sdkInfo")
      )

instance Core.ToJSON ContainerSpec where
  toJSON ContainerSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultEnvironment" Core..=) Core.<$> defaultEnvironment,
            ("image" Core..=) Core.<$> image,
            ("imageRepositoryCertPath" Core..=)
              Core.<$> imageRepositoryCertPath,
            ("imageRepositoryPasswordSecretId" Core..=)
              Core.<$> imageRepositoryPasswordSecretId,
            ("imageRepositoryUsernameSecretId" Core..=)
              Core.<$> imageRepositoryUsernameSecretId,
            ("metadata" Core..=) Core.<$> metadata,
            ("sdkInfo" Core..=) Core.<$> sdkInfo
          ]
      )

-- | CounterMetadata includes all static non-name non-value counter attributes.
--
-- /See:/ 'newCounterMetadata' smart constructor.
data CounterMetadata = CounterMetadata
  { -- | Human-readable description of the counter semantics.
    description :: (Core.Maybe Core.Text),
    -- | Counter aggregation kind.
    kind :: (Core.Maybe CounterMetadata_Kind),
    -- | A string referring to the unit type.
    otherUnits :: (Core.Maybe Core.Text),
    -- | System defined Units, see above enum.
    standardUnits :: (Core.Maybe CounterMetadata_StandardUnits)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CounterMetadata' with the minimum fields required to make a request.
newCounterMetadata ::
  CounterMetadata
newCounterMetadata =
  CounterMetadata
    { description = Core.Nothing,
      kind = Core.Nothing,
      otherUnits = Core.Nothing,
      standardUnits = Core.Nothing
    }

instance Core.FromJSON CounterMetadata where
  parseJSON =
    Core.withObject
      "CounterMetadata"
      ( \o ->
          CounterMetadata
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "otherUnits")
            Core.<*> (o Core..:? "standardUnits")
      )

instance Core.ToJSON CounterMetadata where
  toJSON CounterMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("kind" Core..=) Core.<$> kind,
            ("otherUnits" Core..=) Core.<$> otherUnits,
            ("standardUnits" Core..=) Core.<$> standardUnits
          ]
      )

-- | Identifies a counter within a per-job namespace. Counters whose structured names are the same get merged into a single value for the job.
--
-- /See:/ 'newCounterStructuredName' smart constructor.
data CounterStructuredName = CounterStructuredName
  { -- | Name of the optimized step being executed by the workers.
    componentStepName :: (Core.Maybe Core.Text),
    -- | Name of the stage. An execution step contains multiple component steps.
    executionStepName :: (Core.Maybe Core.Text),
    -- | Index of an input collection that\'s being read from\/written to as a side input. The index identifies a step\'s side inputs starting by 1 (e.g. the first side input has input/index 1, the third has input/index 3). Side inputs are identified by a pair of (original/step/name, input_index). This field helps uniquely identify them.
    inputIndex :: (Core.Maybe Core.Int32),
    -- | Counter name. Not necessarily globally-unique, but unique within the context of the other fields. Required.
    name :: (Core.Maybe Core.Text),
    -- | One of the standard Origins defined above.
    origin :: (Core.Maybe CounterStructuredName_Origin),
    -- | A string containing a more specific namespace of the counter\'s origin.
    originNamespace :: (Core.Maybe Core.Text),
    -- | The step name requesting an operation, such as GBK. I.e. the ParDo causing a read\/write from shuffle to occur, or a read from side inputs.
    originalRequestingStepName :: (Core.Maybe Core.Text),
    -- | System generated name of the original step in the user\'s graph, before optimization.
    originalStepName :: (Core.Maybe Core.Text),
    -- | Portion of this counter, either key or value.
    portion :: (Core.Maybe CounterStructuredName_Portion),
    -- | ID of a particular worker.
    workerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CounterStructuredName' with the minimum fields required to make a request.
newCounterStructuredName ::
  CounterStructuredName
newCounterStructuredName =
  CounterStructuredName
    { componentStepName = Core.Nothing,
      executionStepName = Core.Nothing,
      inputIndex = Core.Nothing,
      name = Core.Nothing,
      origin = Core.Nothing,
      originNamespace = Core.Nothing,
      originalRequestingStepName = Core.Nothing,
      originalStepName = Core.Nothing,
      portion = Core.Nothing,
      workerId = Core.Nothing
    }

instance Core.FromJSON CounterStructuredName where
  parseJSON =
    Core.withObject
      "CounterStructuredName"
      ( \o ->
          CounterStructuredName
            Core.<$> (o Core..:? "componentStepName")
            Core.<*> (o Core..:? "executionStepName")
            Core.<*> (o Core..:? "inputIndex")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "origin")
            Core.<*> (o Core..:? "originNamespace")
            Core.<*> (o Core..:? "originalRequestingStepName")
            Core.<*> (o Core..:? "originalStepName")
            Core.<*> (o Core..:? "portion")
            Core.<*> (o Core..:? "workerId")
      )

instance Core.ToJSON CounterStructuredName where
  toJSON CounterStructuredName {..} =
    Core.object
      ( Core.catMaybes
          [ ("componentStepName" Core..=) Core.<$> componentStepName,
            ("executionStepName" Core..=) Core.<$> executionStepName,
            ("inputIndex" Core..=) Core.<$> inputIndex,
            ("name" Core..=) Core.<$> name,
            ("origin" Core..=) Core.<$> origin,
            ("originNamespace" Core..=) Core.<$> originNamespace,
            ("originalRequestingStepName" Core..=)
              Core.<$> originalRequestingStepName,
            ("originalStepName" Core..=) Core.<$> originalStepName,
            ("portion" Core..=) Core.<$> portion,
            ("workerId" Core..=) Core.<$> workerId
          ]
      )

-- | A single message which encapsulates structured name and metadata for a given counter.
--
-- /See:/ 'newCounterStructuredNameAndMetadata' smart constructor.
data CounterStructuredNameAndMetadata = CounterStructuredNameAndMetadata
  { -- | Metadata associated with a counter
    metadata :: (Core.Maybe CounterMetadata),
    -- | Structured name of the counter.
    name :: (Core.Maybe CounterStructuredName)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CounterStructuredNameAndMetadata' with the minimum fields required to make a request.
newCounterStructuredNameAndMetadata ::
  CounterStructuredNameAndMetadata
newCounterStructuredNameAndMetadata =
  CounterStructuredNameAndMetadata
    { metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON CounterStructuredNameAndMetadata where
  parseJSON =
    Core.withObject
      "CounterStructuredNameAndMetadata"
      ( \o ->
          CounterStructuredNameAndMetadata
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON CounterStructuredNameAndMetadata where
  toJSON CounterStructuredNameAndMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | An update to a Counter sent from a worker.
--
-- /See:/ 'newCounterUpdate' smart constructor.
data CounterUpdate = CounterUpdate
  { -- | Boolean value for And, Or.
    boolean :: (Core.Maybe Core.Bool),
    -- | True if this counter is reported as the total cumulative aggregate value accumulated since the worker started working on this WorkItem. By default this is false, indicating that this counter is reported as a delta.
    cumulative :: (Core.Maybe Core.Bool),
    -- | Distribution data
    distribution :: (Core.Maybe DistributionUpdate),
    -- | Floating point value for Sum, Max, Min.
    floatingPoint :: (Core.Maybe Core.Double),
    -- | List of floating point numbers, for Set.
    floatingPointList :: (Core.Maybe FloatingPointList),
    -- | Floating point mean aggregation value for Mean.
    floatingPointMean :: (Core.Maybe FloatingPointMean),
    -- | Integer value for Sum, Max, Min.
    integer :: (Core.Maybe SplitInt64),
    -- | Gauge data
    integerGauge :: (Core.Maybe IntegerGauge),
    -- | List of integers, for Set.
    integerList :: (Core.Maybe IntegerList),
    -- | Integer mean aggregation value for Mean.
    integerMean :: (Core.Maybe IntegerMean),
    -- | Value for internally-defined counters used by the Dataflow service.
    internal :: (Core.Maybe Core.Value),
    -- | Counter name and aggregation type.
    nameAndKind :: (Core.Maybe NameAndKind),
    -- | The service-generated short identifier for this counter. The short_id -> (name, metadata) mapping is constant for the lifetime of a job.
    shortId :: (Core.Maybe Core.Int64),
    -- | List of strings, for Set.
    stringList :: (Core.Maybe StringList),
    -- | Counter structured name and metadata.
    structuredNameAndMetadata :: (Core.Maybe CounterStructuredNameAndMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CounterUpdate' with the minimum fields required to make a request.
newCounterUpdate ::
  CounterUpdate
newCounterUpdate =
  CounterUpdate
    { boolean = Core.Nothing,
      cumulative = Core.Nothing,
      distribution = Core.Nothing,
      floatingPoint = Core.Nothing,
      floatingPointList = Core.Nothing,
      floatingPointMean = Core.Nothing,
      integer = Core.Nothing,
      integerGauge = Core.Nothing,
      integerList = Core.Nothing,
      integerMean = Core.Nothing,
      internal = Core.Nothing,
      nameAndKind = Core.Nothing,
      shortId = Core.Nothing,
      stringList = Core.Nothing,
      structuredNameAndMetadata = Core.Nothing
    }

instance Core.FromJSON CounterUpdate where
  parseJSON =
    Core.withObject
      "CounterUpdate"
      ( \o ->
          CounterUpdate
            Core.<$> (o Core..:? "boolean")
            Core.<*> (o Core..:? "cumulative")
            Core.<*> (o Core..:? "distribution")
            Core.<*> (o Core..:? "floatingPoint")
            Core.<*> (o Core..:? "floatingPointList")
            Core.<*> (o Core..:? "floatingPointMean")
            Core.<*> (o Core..:? "integer")
            Core.<*> (o Core..:? "integerGauge")
            Core.<*> (o Core..:? "integerList")
            Core.<*> (o Core..:? "integerMean")
            Core.<*> (o Core..:? "internal")
            Core.<*> (o Core..:? "nameAndKind")
            Core.<*> (o Core..:? "shortId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "stringList")
            Core.<*> (o Core..:? "structuredNameAndMetadata")
      )

instance Core.ToJSON CounterUpdate where
  toJSON CounterUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolean" Core..=) Core.<$> boolean,
            ("cumulative" Core..=) Core.<$> cumulative,
            ("distribution" Core..=) Core.<$> distribution,
            ("floatingPoint" Core..=) Core.<$> floatingPoint,
            ("floatingPointList" Core..=) Core.<$> floatingPointList,
            ("floatingPointMean" Core..=) Core.<$> floatingPointMean,
            ("integer" Core..=) Core.<$> integer,
            ("integerGauge" Core..=) Core.<$> integerGauge,
            ("integerList" Core..=) Core.<$> integerList,
            ("integerMean" Core..=) Core.<$> integerMean,
            ("internal" Core..=) Core.<$> internal,
            ("nameAndKind" Core..=) Core.<$> nameAndKind,
            ("shortId" Core..=) Core.. Core.AsText Core.<$> shortId,
            ("stringList" Core..=) Core.<$> stringList,
            ("structuredNameAndMetadata" Core..=)
              Core.<$> structuredNameAndMetadata
          ]
      )

-- | A request to create a Cloud Dataflow job from a template.
--
-- /See:/ 'newCreateJobFromTemplateRequest' smart constructor.
data CreateJobFromTemplateRequest = CreateJobFromTemplateRequest
  { -- | The runtime environment for the job.
    environment :: (Core.Maybe RuntimeEnvironment),
    -- | Required. A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with @gs:\/\/@.
    gcsPath :: (Core.Maybe Core.Text),
    -- | Required. The job name to use for the created job.
    jobName :: (Core.Maybe Core.Text),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request.
    location :: (Core.Maybe Core.Text),
    -- | The runtime parameters to pass to the job.
    parameters :: (Core.Maybe CreateJobFromTemplateRequest_Parameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateJobFromTemplateRequest' with the minimum fields required to make a request.
newCreateJobFromTemplateRequest ::
  CreateJobFromTemplateRequest
newCreateJobFromTemplateRequest =
  CreateJobFromTemplateRequest
    { environment = Core.Nothing,
      gcsPath = Core.Nothing,
      jobName = Core.Nothing,
      location = Core.Nothing,
      parameters = Core.Nothing
    }

instance Core.FromJSON CreateJobFromTemplateRequest where
  parseJSON =
    Core.withObject
      "CreateJobFromTemplateRequest"
      ( \o ->
          CreateJobFromTemplateRequest
            Core.<$> (o Core..:? "environment")
            Core.<*> (o Core..:? "gcsPath")
            Core.<*> (o Core..:? "jobName")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON CreateJobFromTemplateRequest where
  toJSON CreateJobFromTemplateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("environment" Core..=) Core.<$> environment,
            ("gcsPath" Core..=) Core.<$> gcsPath,
            ("jobName" Core..=) Core.<$> jobName,
            ("location" Core..=) Core.<$> location,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | The runtime parameters to pass to the job.
--
-- /See:/ 'newCreateJobFromTemplateRequest_Parameters' smart constructor.
newtype CreateJobFromTemplateRequest_Parameters = CreateJobFromTemplateRequest_Parameters
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateJobFromTemplateRequest_Parameters' with the minimum fields required to make a request.
newCreateJobFromTemplateRequest_Parameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  CreateJobFromTemplateRequest_Parameters
newCreateJobFromTemplateRequest_Parameters additional =
  CreateJobFromTemplateRequest_Parameters {additional = additional}

instance Core.FromJSON CreateJobFromTemplateRequest_Parameters where
  parseJSON =
    Core.withObject
      "CreateJobFromTemplateRequest_Parameters"
      ( \o ->
          CreateJobFromTemplateRequest_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CreateJobFromTemplateRequest_Parameters where
  toJSON CreateJobFromTemplateRequest_Parameters {..} =
    Core.toJSON additional

-- | Identifies the location of a custom souce.
--
-- /See:/ 'newCustomSourceLocation' smart constructor.
newtype CustomSourceLocation = CustomSourceLocation
  { -- | Whether this source is stateful.
    stateful :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomSourceLocation' with the minimum fields required to make a request.
newCustomSourceLocation ::
  CustomSourceLocation
newCustomSourceLocation =
  CustomSourceLocation {stateful = Core.Nothing}

instance Core.FromJSON CustomSourceLocation where
  parseJSON =
    Core.withObject
      "CustomSourceLocation"
      (\o -> CustomSourceLocation Core.<$> (o Core..:? "stateful"))

instance Core.ToJSON CustomSourceLocation where
  toJSON CustomSourceLocation {..} =
    Core.object
      (Core.catMaybes [("stateful" Core..=) Core.<$> stateful])

-- | Data disk assignment for a given VM instance.
--
-- /See:/ 'newDataDiskAssignment' smart constructor.
data DataDiskAssignment = DataDiskAssignment
  { -- | Mounted data disks. The order is important a data disk\'s 0-based index in this list defines which persistent directory the disk is mounted to, for example the list of { \"myproject-1014-104817-4c2-harness-0-disk-0\" }, { \"myproject-1014-104817-4c2-harness-0-disk-1\" }.
    dataDisks :: (Core.Maybe [Core.Text]),
    -- | VM instance name the data disks mounted to, for example \"myproject-1014-104817-4c2-harness-0\".
    vmInstance :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataDiskAssignment' with the minimum fields required to make a request.
newDataDiskAssignment ::
  DataDiskAssignment
newDataDiskAssignment =
  DataDiskAssignment
    { dataDisks = Core.Nothing,
      vmInstance = Core.Nothing
    }

instance Core.FromJSON DataDiskAssignment where
  parseJSON =
    Core.withObject
      "DataDiskAssignment"
      ( \o ->
          DataDiskAssignment
            Core.<$> (o Core..:? "dataDisks")
            Core.<*> (o Core..:? "vmInstance")
      )

instance Core.ToJSON DataDiskAssignment where
  toJSON DataDiskAssignment {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataDisks" Core..=) Core.<$> dataDisks,
            ("vmInstance" Core..=) Core.<$> vmInstance
          ]
      )

-- | Configuration options for sampling elements.
--
-- /See:/ 'newDataSamplingConfig' smart constructor.
newtype DataSamplingConfig = DataSamplingConfig
  { -- | List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS/ON] samples in-flight elements but does not sample exceptions. Can be used to specify multiple behaviors like, behaviors = [ALWAYS/ON, EXCEPTIONS] for specifying periodic sampling and exception sampling. If DISABLED is in the list, then sampling will be disabled and ignore the other given behaviors. Ordering does not matter.
    behaviors :: (Core.Maybe [DataSamplingConfig_BehaviorsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSamplingConfig' with the minimum fields required to make a request.
newDataSamplingConfig ::
  DataSamplingConfig
newDataSamplingConfig =
  DataSamplingConfig {behaviors = Core.Nothing}

instance Core.FromJSON DataSamplingConfig where
  parseJSON =
    Core.withObject
      "DataSamplingConfig"
      (\o -> DataSamplingConfig Core.<$> (o Core..:? "behaviors"))

instance Core.ToJSON DataSamplingConfig where
  toJSON DataSamplingConfig {..} =
    Core.object
      (Core.catMaybes [("behaviors" Core..=) Core.<$> behaviors])

-- | Contains per-worker telemetry about the data sampling feature.
--
-- /See:/ 'newDataSamplingReport' smart constructor.
data DataSamplingReport = DataSamplingReport
  { -- | Optional. Delta of bytes written to file from previous report.
    bytesWrittenDelta :: (Core.Maybe Core.Int64),
    -- | Optional. Delta of bytes sampled from previous report.
    elementsSampledBytes :: (Core.Maybe Core.Int64),
    -- | Optional. Delta of number of elements sampled from previous report.
    elementsSampledCount :: (Core.Maybe Core.Int64),
    -- | Optional. Delta of number of samples taken from user code exceptions from previous report.
    exceptionsSampledCount :: (Core.Maybe Core.Int64),
    -- | Optional. Delta of number of PCollections sampled from previous report.
    pcollectionsSampledCount :: (Core.Maybe Core.Int64),
    -- | Optional. Delta of errors counts from persisting the samples from previous report.
    persistenceErrorsCount :: (Core.Maybe Core.Int64),
    -- | Optional. Delta of errors counts from retrieving, or translating the samples from previous report.
    translationErrorsCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSamplingReport' with the minimum fields required to make a request.
newDataSamplingReport ::
  DataSamplingReport
newDataSamplingReport =
  DataSamplingReport
    { bytesWrittenDelta = Core.Nothing,
      elementsSampledBytes = Core.Nothing,
      elementsSampledCount = Core.Nothing,
      exceptionsSampledCount = Core.Nothing,
      pcollectionsSampledCount = Core.Nothing,
      persistenceErrorsCount = Core.Nothing,
      translationErrorsCount = Core.Nothing
    }

instance Core.FromJSON DataSamplingReport where
  parseJSON =
    Core.withObject
      "DataSamplingReport"
      ( \o ->
          DataSamplingReport
            Core.<$> (o Core..:? "bytesWrittenDelta" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "elementsSampledBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "elementsSampledCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "exceptionsSampledCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "pcollectionsSampledCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "persistenceErrorsCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "translationErrorsCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON DataSamplingReport where
  toJSON DataSamplingReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesWrittenDelta" Core..=)
              Core.. Core.AsText
              Core.<$> bytesWrittenDelta,
            ("elementsSampledBytes" Core..=)
              Core.. Core.AsText
              Core.<$> elementsSampledBytes,
            ("elementsSampledCount" Core..=)
              Core.. Core.AsText
              Core.<$> elementsSampledCount,
            ("exceptionsSampledCount" Core..=)
              Core.. Core.AsText
              Core.<$> exceptionsSampledCount,
            ("pcollectionsSampledCount" Core..=)
              Core.. Core.AsText
              Core.<$> pcollectionsSampledCount,
            ("persistenceErrorsCount" Core..=)
              Core.. Core.AsText
              Core.<$> persistenceErrorsCount,
            ("translationErrorsCount" Core..=)
              Core.. Core.AsText
              Core.<$> translationErrorsCount
          ]
      )

-- | The gauge value of a metric.
--
-- /See:/ 'newDataflowGaugeValue' smart constructor.
data DataflowGaugeValue = DataflowGaugeValue
  { -- | The timestamp when the gauge was recorded.
    measuredTime :: (Core.Maybe Core.DateTime),
    -- | The value of the gauge.
    value :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowGaugeValue' with the minimum fields required to make a request.
newDataflowGaugeValue ::
  DataflowGaugeValue
newDataflowGaugeValue =
  DataflowGaugeValue
    { measuredTime = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON DataflowGaugeValue where
  parseJSON =
    Core.withObject
      "DataflowGaugeValue"
      ( \o ->
          DataflowGaugeValue
            Core.<$> (o Core..:? "measuredTime")
            Core.<*> (o Core..:? "value" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON DataflowGaugeValue where
  toJSON DataflowGaugeValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("measuredTime" Core..=) Core.<$> measuredTime,
            ("value" Core..=) Core.. Core.AsText Core.<$> value
          ]
      )

-- | Summary statistics for a population of values. HistogramValue contains a sequence of buckets and gives a count of values that fall into each bucket. Bucket boundares are defined by a formula and bucket widths are either fixed or exponentially increasing.
--
-- /See:/ 'newDataflowHistogramValue' smart constructor.
data DataflowHistogramValue = DataflowHistogramValue
  { -- | Optional. The number of values in each bucket of the histogram, as described in @bucket_options@. @bucket_counts@ should contain N values, where N is the number of buckets specified in @bucket_options@. If @bucket_counts@ has fewer than N values, the remaining values are assumed to be 0.
    bucketCounts :: (Core.Maybe [Core.Int64]),
    -- | Describes the bucket boundaries used in the histogram.
    bucketOptions :: (Core.Maybe BucketOptions),
    -- | Number of values recorded in this histogram.
    count :: (Core.Maybe Core.Int64),
    -- | Statistics on the values recorded in the histogram that fall out of the bucket boundaries.
    outlierStats :: (Core.Maybe OutlierStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowHistogramValue' with the minimum fields required to make a request.
newDataflowHistogramValue ::
  DataflowHistogramValue
newDataflowHistogramValue =
  DataflowHistogramValue
    { bucketCounts = Core.Nothing,
      bucketOptions = Core.Nothing,
      count = Core.Nothing,
      outlierStats = Core.Nothing
    }

instance Core.FromJSON DataflowHistogramValue where
  parseJSON =
    Core.withObject
      "DataflowHistogramValue"
      ( \o ->
          DataflowHistogramValue
            Core.<$> ( o
                         Core..:? "bucketCounts"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "bucketOptions")
            Core.<*> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "outlierStats")
      )

instance Core.ToJSON DataflowHistogramValue where
  toJSON DataflowHistogramValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketCounts" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> bucketCounts,
            ("bucketOptions" Core..=) Core.<$> bucketOptions,
            ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("outlierStats" Core..=) Core.<$> outlierStats
          ]
      )

-- | Metadata for a Datastore connector used by the job.
--
-- /See:/ 'newDatastoreIODetails' smart constructor.
data DatastoreIODetails = DatastoreIODetails
  { -- | Namespace used in the connection.
    namespace :: (Core.Maybe Core.Text),
    -- | ProjectId accessed in the connection.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreIODetails' with the minimum fields required to make a request.
newDatastoreIODetails ::
  DatastoreIODetails
newDatastoreIODetails =
  DatastoreIODetails
    { namespace = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON DatastoreIODetails where
  parseJSON =
    Core.withObject
      "DatastoreIODetails"
      ( \o ->
          DatastoreIODetails
            Core.<$> (o Core..:? "namespace")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON DatastoreIODetails where
  toJSON DatastoreIODetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("namespace" Core..=) Core.<$> namespace,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Describes any options that have an effect on the debugging of pipelines.
--
-- /See:/ 'newDebugOptions' smart constructor.
data DebugOptions = DebugOptions
  { -- | Configuration options for sampling elements from a running pipeline.
    dataSampling :: (Core.Maybe DataSamplingConfig),
    -- | Optional. When true, enables the logging of the literal hot key to the user\'s Cloud Logging.
    enableHotKeyLogging :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DebugOptions' with the minimum fields required to make a request.
newDebugOptions ::
  DebugOptions
newDebugOptions =
  DebugOptions
    { dataSampling = Core.Nothing,
      enableHotKeyLogging = Core.Nothing
    }

instance Core.FromJSON DebugOptions where
  parseJSON =
    Core.withObject
      "DebugOptions"
      ( \o ->
          DebugOptions
            Core.<$> (o Core..:? "dataSampling")
            Core.<*> (o Core..:? "enableHotKeyLogging")
      )

instance Core.ToJSON DebugOptions where
  toJSON DebugOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSampling" Core..=) Core.<$> dataSampling,
            ("enableHotKeyLogging" Core..=) Core.<$> enableHotKeyLogging
          ]
      )

-- | Response from deleting a snapshot.
--
-- /See:/ 'newDeleteSnapshotResponse' smart constructor.
data DeleteSnapshotResponse = DeleteSnapshotResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteSnapshotResponse' with the minimum fields required to make a request.
newDeleteSnapshotResponse ::
  DeleteSnapshotResponse
newDeleteSnapshotResponse = DeleteSnapshotResponse

instance Core.FromJSON DeleteSnapshotResponse where
  parseJSON =
    Core.withObject
      "DeleteSnapshotResponse"
      (\o -> Core.pure DeleteSnapshotResponse)

instance Core.ToJSON DeleteSnapshotResponse where
  toJSON = Core.const Core.emptyObject

-- | Specification of one of the bundles produced as a result of splitting a Source (e.g. when executing a SourceSplitRequest, or when splitting an active task using WorkItemStatus.dynamic/source/split), relative to the source being split.
--
-- /See:/ 'newDerivedSource' smart constructor.
data DerivedSource = DerivedSource
  { -- | What source to base the produced source on (if any).
    derivationMode :: (Core.Maybe DerivedSource_DerivationMode),
    -- | Specification of the source.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DerivedSource' with the minimum fields required to make a request.
newDerivedSource ::
  DerivedSource
newDerivedSource =
  DerivedSource
    { derivationMode = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON DerivedSource where
  parseJSON =
    Core.withObject
      "DerivedSource"
      ( \o ->
          DerivedSource
            Core.<$> (o Core..:? "derivationMode")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON DerivedSource where
  toJSON DerivedSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("derivationMode" Core..=) Core.<$> derivationMode,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | Describes the data disk used by a workflow job.
--
-- /See:/ 'newDisk' smart constructor.
data Disk = Disk
  { -- | Disk storage type, as defined by Google Compute Engine. This must be a disk type appropriate to the project and zone in which the workers will run. If unknown or unspecified, the service will attempt to choose a reasonable default. For example, the standard persistent disk type is a resource name typically ending in \"pd-standard\". If SSD persistent disks are available, the resource name typically ends with \"pd-ssd\". The actual valid values are defined the Google Compute Engine API, not by the Cloud Dataflow API; consult the Google Compute Engine documentation for more information about determining the set of available disk types for a particular project and zone. Google Compute Engine Disk types are local to a particular project in a particular zone, and so the resource name will typically look something like this: compute.googleapis.com\/projects\/project-id\/zones\/zone\/diskTypes\/pd-standard
    diskType :: (Core.Maybe Core.Text),
    -- | Directory in a VM where disk is mounted.
    mountPoint :: (Core.Maybe Core.Text),
    -- | Size of disk in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
    sizeGb :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Disk' with the minimum fields required to make a request.
newDisk ::
  Disk
newDisk =
  Disk
    { diskType = Core.Nothing,
      mountPoint = Core.Nothing,
      sizeGb = Core.Nothing
    }

instance Core.FromJSON Disk where
  parseJSON =
    Core.withObject
      "Disk"
      ( \o ->
          Disk
            Core.<$> (o Core..:? "diskType")
            Core.<*> (o Core..:? "mountPoint")
            Core.<*> (o Core..:? "sizeGb")
      )

instance Core.ToJSON Disk where
  toJSON Disk {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskType" Core..=) Core.<$> diskType,
            ("mountPoint" Core..=) Core.<$> mountPoint,
            ("sizeGb" Core..=) Core.<$> sizeGb
          ]
      )

-- | Data provided with a pipeline or transform to provide descriptive info.
--
-- /See:/ 'newDisplayData' smart constructor.
data DisplayData = DisplayData
  { -- | Contains value if the data is of a boolean type.
    boolValue :: (Core.Maybe Core.Bool),
    -- | Contains value if the data is of duration type.
    durationValue :: (Core.Maybe Core.Duration),
    -- | Contains value if the data is of float type.
    floatValue :: (Core.Maybe Core.Double),
    -- | Contains value if the data is of int64 type.
    int64Value :: (Core.Maybe Core.Int64),
    -- | Contains value if the data is of java class type.
    javaClassValue :: (Core.Maybe Core.Text),
    -- | The key identifying the display data. This is intended to be used as a label for the display data when viewed in a dax monitoring system.
    key :: (Core.Maybe Core.Text),
    -- | An optional label to display in a dax UI for the element.
    label :: (Core.Maybe Core.Text),
    -- | The namespace for the key. This is usually a class name or programming language namespace (i.e. python module) which defines the display data. This allows a dax monitoring system to specially handle the data and perform custom rendering.
    namespace :: (Core.Maybe Core.Text),
    -- | A possible additional shorter value to display. For example a java/class/name/value of com.mypackage.MyDoFn will be stored with MyDoFn as the short/str/value and com.mypackage.MyDoFn as the java/class/name value. short/str/value can be displayed and java/class/name/value will be displayed as a tooltip.
    shortStrValue :: (Core.Maybe Core.Text),
    -- | Contains value if the data is of string type.
    strValue :: (Core.Maybe Core.Text),
    -- | Contains value if the data is of timestamp type.
    timestampValue :: (Core.Maybe Core.DateTime),
    -- | An optional full URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DisplayData' with the minimum fields required to make a request.
newDisplayData ::
  DisplayData
newDisplayData =
  DisplayData
    { boolValue = Core.Nothing,
      durationValue = Core.Nothing,
      floatValue = Core.Nothing,
      int64Value = Core.Nothing,
      javaClassValue = Core.Nothing,
      key = Core.Nothing,
      label = Core.Nothing,
      namespace = Core.Nothing,
      shortStrValue = Core.Nothing,
      strValue = Core.Nothing,
      timestampValue = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON DisplayData where
  parseJSON =
    Core.withObject
      "DisplayData"
      ( \o ->
          DisplayData
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "durationValue")
            Core.<*> (o Core..:? "floatValue")
            Core.<*> (o Core..:? "int64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "javaClassValue")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "namespace")
            Core.<*> (o Core..:? "shortStrValue")
            Core.<*> (o Core..:? "strValue")
            Core.<*> (o Core..:? "timestampValue")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON DisplayData where
  toJSON DisplayData {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("durationValue" Core..=) Core.<$> durationValue,
            ("floatValue" Core..=) Core.<$> floatValue,
            ("int64Value" Core..=) Core.. Core.AsText Core.<$> int64Value,
            ("javaClassValue" Core..=) Core.<$> javaClassValue,
            ("key" Core..=) Core.<$> key,
            ("label" Core..=) Core.<$> label,
            ("namespace" Core..=) Core.<$> namespace,
            ("shortStrValue" Core..=) Core.<$> shortStrValue,
            ("strValue" Core..=) Core.<$> strValue,
            ("timestampValue" Core..=) Core.<$> timestampValue,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A metric value representing a distribution.
--
-- /See:/ 'newDistributionUpdate' smart constructor.
data DistributionUpdate = DistributionUpdate
  { -- | The count of the number of elements present in the distribution.
    count :: (Core.Maybe SplitInt64),
    -- | (Optional) Histogram of value counts for the distribution.
    histogram :: (Core.Maybe Histogram),
    -- | The maximum value present in the distribution.
    max :: (Core.Maybe SplitInt64),
    -- | The minimum value present in the distribution.
    min :: (Core.Maybe SplitInt64),
    -- | Use an int64 since we\'d prefer the added precision. If overflow is a common problem we can detect it and use an additional int64 or a double.
    sum :: (Core.Maybe SplitInt64),
    -- | Use a double since the sum of squares is likely to overflow int64.
    sumOfSquares :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DistributionUpdate' with the minimum fields required to make a request.
newDistributionUpdate ::
  DistributionUpdate
newDistributionUpdate =
  DistributionUpdate
    { count = Core.Nothing,
      histogram = Core.Nothing,
      max = Core.Nothing,
      min = Core.Nothing,
      sum = Core.Nothing,
      sumOfSquares = Core.Nothing
    }

instance Core.FromJSON DistributionUpdate where
  parseJSON =
    Core.withObject
      "DistributionUpdate"
      ( \o ->
          DistributionUpdate
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "histogram")
            Core.<*> (o Core..:? "max")
            Core.<*> (o Core..:? "min")
            Core.<*> (o Core..:? "sum")
            Core.<*> (o Core..:? "sumOfSquares")
      )

instance Core.ToJSON DistributionUpdate where
  toJSON DistributionUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("histogram" Core..=) Core.<$> histogram,
            ("max" Core..=) Core.<$> max,
            ("min" Core..=) Core.<$> min,
            ("sum" Core..=) Core.<$> sum,
            ("sumOfSquares" Core..=) Core.<$> sumOfSquares
          ]
      )

-- | When a task splits using WorkItemStatus.dynamic/source/split, this message describes the two parts of the split relative to the description of the current task\'s input.
--
-- /See:/ 'newDynamicSourceSplit' smart constructor.
data DynamicSourceSplit = DynamicSourceSplit
  { -- | Primary part (continued to be processed by worker). Specified relative to the previously-current source. Becomes current.
    primary :: (Core.Maybe DerivedSource),
    -- | Residual part (returned to the pool of work). Specified relative to the previously-current source.
    residual :: (Core.Maybe DerivedSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicSourceSplit' with the minimum fields required to make a request.
newDynamicSourceSplit ::
  DynamicSourceSplit
newDynamicSourceSplit =
  DynamicSourceSplit
    { primary = Core.Nothing,
      residual = Core.Nothing
    }

instance Core.FromJSON DynamicSourceSplit where
  parseJSON =
    Core.withObject
      "DynamicSourceSplit"
      ( \o ->
          DynamicSourceSplit
            Core.<$> (o Core..:? "primary")
            Core.<*> (o Core..:? "residual")
      )

instance Core.ToJSON DynamicSourceSplit where
  toJSON DynamicSourceSplit {..} =
    Core.object
      ( Core.catMaybes
          [ ("primary" Core..=) Core.<$> primary,
            ("residual" Core..=) Core.<$> residual
          ]
      )

-- | Describes the environment in which a Dataflow Job runs.
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment
  { -- | The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. \"compute.googleapis.com\".
    clusterManagerApiService :: (Core.Maybe Core.Text),
    -- | Optional. The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com\/{dataset}
    dataset :: (Core.Maybe Core.Text),
    -- | Optional. Any debugging options to be supplied to the job.
    debugOptions :: (Core.Maybe DebugOptions),
    -- | The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.
    experiments :: (Core.Maybe [Core.Text]),
    -- | Optional. Which Flexible Resource Scheduling mode to run in.
    flexResourceSchedulingGoal :: (Core.Maybe Environment_FlexResourceSchedulingGoal),
    -- | Experimental settings.
    internalExperiments :: (Core.Maybe Environment_InternalExperiments),
    -- | The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
    sdkPipelineOptions :: (Core.Maybe Environment_SdkPipelineOptions),
    -- | Optional. Identity to run virtual machines as. Defaults to the default account.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | Optional. If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects\/PROJECT/ID\/locations\/LOCATION\/keyRings\/KEY/RING\/cryptoKeys\/KEY
    serviceKmsKeyName :: (Core.Maybe Core.Text),
    -- | Optional. The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).
    serviceOptions :: (Core.Maybe [Core.Text]),
    -- | Output only. The shuffle mode used for the job.
    shuffleMode :: (Core.Maybe Environment_ShuffleMode),
    -- | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency but might result in duplicate messages committed to storage. Designed to run simple mapping streaming ETL jobs at the lowest cost. For example, Change Data Capture (CDC) to BigQuery is a canonical use case. For more information, see <https://cloud.google.com/dataflow/docs/guides/streaming-modes Set the pipeline streaming mode>.
    streamingMode :: (Core.Maybe Environment_StreamingMode),
    -- | The prefix of the resources the system should use for temporary storage. The system will append the suffix \"\/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job/name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner/settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com\/{bucket}\/{object} bucket.storage.googleapis.com\/{object}
    tempStoragePrefix :: (Core.Maybe Core.Text),
    -- | Output only. Whether the job uses the Streaming Engine resource-based billing model.
    useStreamingEngineResourceBasedBilling :: (Core.Maybe Core.Bool),
    -- | A description of the process that generated the request.
    userAgent :: (Core.Maybe Environment_UserAgent),
    -- | A structure describing which components and their versions of the service are required in order to run the job.
    version :: (Core.Maybe Environment_Version),
    -- | The worker pools. At least one \"harness\" worker pool must be specified in order for the job to have workers.
    workerPools :: (Core.Maybe [WorkerPool]),
    -- | Optional. The Compute Engine region (https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker/zone. If neither worker/region nor worker_zone is specified, default to the control plane\'s region.
    workerRegion :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine zone (https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker/region. If neither worker/region nor worker_zone is specified, a zone in the control plane\'s region is chosen based on available capacity.
    workerZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
newEnvironment ::
  Environment
newEnvironment =
  Environment
    { clusterManagerApiService = Core.Nothing,
      dataset = Core.Nothing,
      debugOptions = Core.Nothing,
      experiments = Core.Nothing,
      flexResourceSchedulingGoal = Core.Nothing,
      internalExperiments = Core.Nothing,
      sdkPipelineOptions = Core.Nothing,
      serviceAccountEmail = Core.Nothing,
      serviceKmsKeyName = Core.Nothing,
      serviceOptions = Core.Nothing,
      shuffleMode = Core.Nothing,
      streamingMode = Core.Nothing,
      tempStoragePrefix = Core.Nothing,
      useStreamingEngineResourceBasedBilling = Core.Nothing,
      userAgent = Core.Nothing,
      version = Core.Nothing,
      workerPools = Core.Nothing,
      workerRegion = Core.Nothing,
      workerZone = Core.Nothing
    }

instance Core.FromJSON Environment where
  parseJSON =
    Core.withObject
      "Environment"
      ( \o ->
          Environment
            Core.<$> (o Core..:? "clusterManagerApiService")
            Core.<*> (o Core..:? "dataset")
            Core.<*> (o Core..:? "debugOptions")
            Core.<*> (o Core..:? "experiments")
            Core.<*> (o Core..:? "flexResourceSchedulingGoal")
            Core.<*> (o Core..:? "internalExperiments")
            Core.<*> (o Core..:? "sdkPipelineOptions")
            Core.<*> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "serviceKmsKeyName")
            Core.<*> (o Core..:? "serviceOptions")
            Core.<*> (o Core..:? "shuffleMode")
            Core.<*> (o Core..:? "streamingMode")
            Core.<*> (o Core..:? "tempStoragePrefix")
            Core.<*> (o Core..:? "useStreamingEngineResourceBasedBilling")
            Core.<*> (o Core..:? "userAgent")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "workerPools")
            Core.<*> (o Core..:? "workerRegion")
            Core.<*> (o Core..:? "workerZone")
      )

instance Core.ToJSON Environment where
  toJSON Environment {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterManagerApiService" Core..=)
              Core.<$> clusterManagerApiService,
            ("dataset" Core..=) Core.<$> dataset,
            ("debugOptions" Core..=) Core.<$> debugOptions,
            ("experiments" Core..=) Core.<$> experiments,
            ("flexResourceSchedulingGoal" Core..=)
              Core.<$> flexResourceSchedulingGoal,
            ("internalExperiments" Core..=) Core.<$> internalExperiments,
            ("sdkPipelineOptions" Core..=) Core.<$> sdkPipelineOptions,
            ("serviceAccountEmail" Core..=) Core.<$> serviceAccountEmail,
            ("serviceKmsKeyName" Core..=) Core.<$> serviceKmsKeyName,
            ("serviceOptions" Core..=) Core.<$> serviceOptions,
            ("shuffleMode" Core..=) Core.<$> shuffleMode,
            ("streamingMode" Core..=) Core.<$> streamingMode,
            ("tempStoragePrefix" Core..=) Core.<$> tempStoragePrefix,
            ("useStreamingEngineResourceBasedBilling" Core..=)
              Core.<$> useStreamingEngineResourceBasedBilling,
            ("userAgent" Core..=) Core.<$> userAgent,
            ("version" Core..=) Core.<$> version,
            ("workerPools" Core..=) Core.<$> workerPools,
            ("workerRegion" Core..=) Core.<$> workerRegion,
            ("workerZone" Core..=) Core.<$> workerZone
          ]
      )

-- | Experimental settings.
--
-- /See:/ 'newEnvironment_InternalExperiments' smart constructor.
newtype Environment_InternalExperiments = Environment_InternalExperiments
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment_InternalExperiments' with the minimum fields required to make a request.
newEnvironment_InternalExperiments ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Environment_InternalExperiments
newEnvironment_InternalExperiments additional =
  Environment_InternalExperiments {additional = additional}

instance Core.FromJSON Environment_InternalExperiments where
  parseJSON =
    Core.withObject
      "Environment_InternalExperiments"
      ( \o ->
          Environment_InternalExperiments Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Environment_InternalExperiments where
  toJSON Environment_InternalExperiments {..} = Core.toJSON additional

-- | The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
--
-- /See:/ 'newEnvironment_SdkPipelineOptions' smart constructor.
newtype Environment_SdkPipelineOptions = Environment_SdkPipelineOptions
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment_SdkPipelineOptions' with the minimum fields required to make a request.
newEnvironment_SdkPipelineOptions ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Environment_SdkPipelineOptions
newEnvironment_SdkPipelineOptions additional =
  Environment_SdkPipelineOptions {additional = additional}

instance Core.FromJSON Environment_SdkPipelineOptions where
  parseJSON =
    Core.withObject
      "Environment_SdkPipelineOptions"
      ( \o ->
          Environment_SdkPipelineOptions Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Environment_SdkPipelineOptions where
  toJSON Environment_SdkPipelineOptions {..} = Core.toJSON additional

-- | A description of the process that generated the request.
--
-- /See:/ 'newEnvironment_UserAgent' smart constructor.
newtype Environment_UserAgent = Environment_UserAgent
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment_UserAgent' with the minimum fields required to make a request.
newEnvironment_UserAgent ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Environment_UserAgent
newEnvironment_UserAgent additional =
  Environment_UserAgent {additional = additional}

instance Core.FromJSON Environment_UserAgent where
  parseJSON =
    Core.withObject
      "Environment_UserAgent"
      (\o -> Environment_UserAgent Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Environment_UserAgent where
  toJSON Environment_UserAgent {..} = Core.toJSON additional

-- | A structure describing which components and their versions of the service are required in order to run the job.
--
-- /See:/ 'newEnvironment_Version' smart constructor.
newtype Environment_Version = Environment_Version
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment_Version' with the minimum fields required to make a request.
newEnvironment_Version ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Environment_Version
newEnvironment_Version additional =
  Environment_Version {additional = additional}

instance Core.FromJSON Environment_Version where
  parseJSON =
    Core.withObject
      "Environment_Version"
      (\o -> Environment_Version Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Environment_Version where
  toJSON Environment_Version {..} = Core.toJSON additional

-- | A message describing the state of a particular execution stage.
--
-- /See:/ 'newExecutionStageState' smart constructor.
data ExecutionStageState = ExecutionStageState
  { -- | The time at which the stage transitioned to this state.
    currentStateTime :: (Core.Maybe Core.DateTime),
    -- | The name of the execution stage.
    executionStageName :: (Core.Maybe Core.Text),
    -- | Executions stage states allow the same set of values as JobState.
    executionStageState :: (Core.Maybe ExecutionStageState_ExecutionStageState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutionStageState' with the minimum fields required to make a request.
newExecutionStageState ::
  ExecutionStageState
newExecutionStageState =
  ExecutionStageState
    { currentStateTime = Core.Nothing,
      executionStageName = Core.Nothing,
      executionStageState = Core.Nothing
    }

instance Core.FromJSON ExecutionStageState where
  parseJSON =
    Core.withObject
      "ExecutionStageState"
      ( \o ->
          ExecutionStageState
            Core.<$> (o Core..:? "currentStateTime")
            Core.<*> (o Core..:? "executionStageName")
            Core.<*> (o Core..:? "executionStageState")
      )

instance Core.ToJSON ExecutionStageState where
  toJSON ExecutionStageState {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentStateTime" Core..=) Core.<$> currentStateTime,
            ("executionStageName" Core..=) Core.<$> executionStageName,
            ("executionStageState" Core..=) Core.<$> executionStageState
          ]
      )

-- | Description of the composing transforms, names\/ids, and input\/outputs of a stage of execution. Some composing transforms and sources may have been generated by the Dataflow service during execution planning.
--
-- /See:/ 'newExecutionStageSummary' smart constructor.
data ExecutionStageSummary = ExecutionStageSummary
  { -- | Collections produced and consumed by component transforms of this stage.
    componentSource :: (Core.Maybe [ComponentSource]),
    -- | Transforms that comprise this execution stage.
    componentTransform :: (Core.Maybe [ComponentTransform]),
    -- | Dataflow service generated id for this stage.
    id :: (Core.Maybe Core.Text),
    -- | Input sources for this stage.
    inputSource :: (Core.Maybe [StageSource]),
    -- | Type of transform this stage is executing.
    kind :: (Core.Maybe ExecutionStageSummary_Kind),
    -- | Dataflow service generated name for this stage.
    name :: (Core.Maybe Core.Text),
    -- | Output sources for this stage.
    outputSource :: (Core.Maybe [StageSource]),
    -- | Other stages that must complete before this stage can run.
    prerequisiteStage :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutionStageSummary' with the minimum fields required to make a request.
newExecutionStageSummary ::
  ExecutionStageSummary
newExecutionStageSummary =
  ExecutionStageSummary
    { componentSource = Core.Nothing,
      componentTransform = Core.Nothing,
      id = Core.Nothing,
      inputSource = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      outputSource = Core.Nothing,
      prerequisiteStage = Core.Nothing
    }

instance Core.FromJSON ExecutionStageSummary where
  parseJSON =
    Core.withObject
      "ExecutionStageSummary"
      ( \o ->
          ExecutionStageSummary
            Core.<$> (o Core..:? "componentSource")
            Core.<*> (o Core..:? "componentTransform")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "inputSource")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "outputSource")
            Core.<*> (o Core..:? "prerequisiteStage")
      )

instance Core.ToJSON ExecutionStageSummary where
  toJSON ExecutionStageSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("componentSource" Core..=) Core.<$> componentSource,
            ("componentTransform" Core..=) Core.<$> componentTransform,
            ("id" Core..=) Core.<$> id,
            ("inputSource" Core..=) Core.<$> inputSource,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("outputSource" Core..=) Core.<$> outputSource,
            ("prerequisiteStage" Core..=) Core.<$> prerequisiteStage
          ]
      )

-- | Indicates which [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) failed to respond to a request for data.
--
-- /See:/ 'newFailedLocation' smart constructor.
newtype FailedLocation = FailedLocation
  { -- | The name of the [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that failed to respond.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailedLocation' with the minimum fields required to make a request.
newFailedLocation ::
  FailedLocation
newFailedLocation = FailedLocation {name = Core.Nothing}

instance Core.FromJSON FailedLocation where
  parseJSON =
    Core.withObject
      "FailedLocation"
      (\o -> FailedLocation Core.<$> (o Core..:? "name"))

instance Core.ToJSON FailedLocation where
  toJSON FailedLocation {..} =
    Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Metadata for a File connector used by the job.
--
-- /See:/ 'newFileIODetails' smart constructor.
newtype FileIODetails = FileIODetails
  { -- | File Pattern used to access files by the connector.
    filePattern :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileIODetails' with the minimum fields required to make a request.
newFileIODetails ::
  FileIODetails
newFileIODetails = FileIODetails {filePattern = Core.Nothing}

instance Core.FromJSON FileIODetails where
  parseJSON =
    Core.withObject
      "FileIODetails"
      (\o -> FileIODetails Core.<$> (o Core..:? "filePattern"))

instance Core.ToJSON FileIODetails where
  toJSON FileIODetails {..} =
    Core.object
      (Core.catMaybes [("filePattern" Core..=) Core.<$> filePattern])

-- | An instruction that copies its inputs (zero or more) to its (single) output.
--
-- /See:/ 'newFlattenInstruction' smart constructor.
newtype FlattenInstruction = FlattenInstruction
  { -- | Describes the inputs to the flatten instruction.
    inputs :: (Core.Maybe [InstructionInput])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlattenInstruction' with the minimum fields required to make a request.
newFlattenInstruction ::
  FlattenInstruction
newFlattenInstruction = FlattenInstruction {inputs = Core.Nothing}

instance Core.FromJSON FlattenInstruction where
  parseJSON =
    Core.withObject
      "FlattenInstruction"
      (\o -> FlattenInstruction Core.<$> (o Core..:? "inputs"))

instance Core.ToJSON FlattenInstruction where
  toJSON FlattenInstruction {..} =
    Core.object (Core.catMaybes [("inputs" Core..=) Core.<$> inputs])

-- | The environment values to be set at runtime for flex template.
--
-- /See:/ 'newFlexTemplateRuntimeEnvironment' smart constructor.
data FlexTemplateRuntimeEnvironment = FlexTemplateRuntimeEnvironment
  { -- | Additional experiment flags for the job.
    additionalExperiments :: (Core.Maybe [Core.Text]),
    -- | Additional user labels to be specified for the job. Keys and values must follow the restrictions specified in the <https://cloud.google.com/compute/docs/labeling-resources#restrictions labeling restrictions> page. An object containing a list of \"key\": value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }.
    additionalUserLabels :: (Core.Maybe FlexTemplateRuntimeEnvironment_AdditionalUserLabels),
    -- | The algorithm to use for autoscaling
    autoscalingAlgorithm :: (Core.Maybe FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm),
    -- | Worker disk size, in gigabytes.
    diskSizeGb :: (Core.Maybe Core.Int32),
    -- | If true, when processing time is spent almost entirely on garbage collection (GC), saves a heap dump before ending the thread or process. If false, ends the thread or process without saving a heap dump. Does not save a heap dump when the Java Virtual Machine (JVM) has an out of memory error during processing. The location of the heap file is either echoed back to the user, or the user is given the opportunity to download the heap file.
    dumpHeapOnOom :: (Core.Maybe Core.Bool),
    -- | If true serial port logging will be enabled for the launcher VM.
    enableLauncherVmSerialPortLogging :: (Core.Maybe Core.Bool),
    -- | Whether to enable Streaming Engine for the job.
    enableStreamingEngine :: (Core.Maybe Core.Bool),
    -- | Set FlexRS goal for the job. https:\/\/cloud.google.com\/dataflow\/docs\/guides\/flexrs
    flexrsGoal :: (Core.Maybe FlexTemplateRuntimeEnvironment_FlexrsGoal),
    -- | Configuration for VM IPs.
    ipConfiguration :: (Core.Maybe FlexTemplateRuntimeEnvironment_IpConfiguration),
    -- | Name for the Cloud KMS key for the job. Key format is: projects\/\/locations\/\/keyRings\/\/cryptoKeys\/
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | The machine type to use for launching the job. The default is n1-standard-1.
    launcherMachineType :: (Core.Maybe Core.Text),
    -- | The machine type to use for the job. Defaults to the value from the template if not specified.
    machineType :: (Core.Maybe Core.Text),
    -- | The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
    maxWorkers :: (Core.Maybe Core.Int32),
    -- | Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".
    network :: (Core.Maybe Core.Text),
    -- | The initial number of Google Compute Engine instances for the job.
    numWorkers :: (Core.Maybe Core.Int32),
    -- | Cloud Storage bucket (directory) to upload heap dumps to. Enabling this field implies that @dump_heap_on_oom@ is set to true.
    saveHeapDumpsToGcsPath :: (Core.Maybe Core.Text),
    -- | Docker registry location of container image to use for the \'worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines.
    sdkContainerImage :: (Core.Maybe Core.Text),
    -- | The email address of the service account to run the job as.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | The Cloud Storage path for staging local files. Must be a valid Cloud Storage URL, beginning with @gs:\/\/@.
    stagingLocation :: (Core.Maybe Core.Text),
    -- | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency but might result in duplicate messages committed to storage. Designed to run simple mapping streaming ETL jobs at the lowest cost. For example, Change Data Capture (CDC) to BigQuery is a canonical use case. For more information, see <https://cloud.google.com/dataflow/docs/guides/streaming-modes Set the pipeline streaming mode>.
    streamingMode :: (Core.Maybe FlexTemplateRuntimeEnvironment_StreamingMode),
    -- | Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form \"https:\/\/www.googleapis.com\/compute\/v1\/projects\/HOST/PROJECT/ID\/regions\/REGION\/subnetworks\/SUBNETWORK\" or \"regions\/REGION\/subnetworks\/SUBNETWORK\". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
    subnetwork :: (Core.Maybe Core.Text),
    -- | The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with @gs:\/\/@.
    tempLocation :: (Core.Maybe Core.Text),
    -- | The Compute Engine region (https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker/zone. If neither worker/region nor worker_zone is specified, default to the control plane\'s region.
    workerRegion :: (Core.Maybe Core.Text),
    -- | The Compute Engine zone (https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker/region. If neither worker/region nor worker_zone is specified, a zone in the control plane\'s region is chosen based on available capacity. If both @worker_zone@ and @zone@ are set, @worker_zone@ takes precedence.
    workerZone :: (Core.Maybe Core.Text),
    -- | The Compute Engine <https://cloud.google.com/compute/docs/regions-zones/regions-zones availability zone> for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlexTemplateRuntimeEnvironment' with the minimum fields required to make a request.
newFlexTemplateRuntimeEnvironment ::
  FlexTemplateRuntimeEnvironment
newFlexTemplateRuntimeEnvironment =
  FlexTemplateRuntimeEnvironment
    { additionalExperiments =
        Core.Nothing,
      additionalUserLabels = Core.Nothing,
      autoscalingAlgorithm = Core.Nothing,
      diskSizeGb = Core.Nothing,
      dumpHeapOnOom = Core.Nothing,
      enableLauncherVmSerialPortLogging = Core.Nothing,
      enableStreamingEngine = Core.Nothing,
      flexrsGoal = Core.Nothing,
      ipConfiguration = Core.Nothing,
      kmsKeyName = Core.Nothing,
      launcherMachineType = Core.Nothing,
      machineType = Core.Nothing,
      maxWorkers = Core.Nothing,
      network = Core.Nothing,
      numWorkers = Core.Nothing,
      saveHeapDumpsToGcsPath = Core.Nothing,
      sdkContainerImage = Core.Nothing,
      serviceAccountEmail = Core.Nothing,
      stagingLocation = Core.Nothing,
      streamingMode = Core.Nothing,
      subnetwork = Core.Nothing,
      tempLocation = Core.Nothing,
      workerRegion = Core.Nothing,
      workerZone = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON FlexTemplateRuntimeEnvironment where
  parseJSON =
    Core.withObject
      "FlexTemplateRuntimeEnvironment"
      ( \o ->
          FlexTemplateRuntimeEnvironment
            Core.<$> (o Core..:? "additionalExperiments")
            Core.<*> (o Core..:? "additionalUserLabels")
            Core.<*> (o Core..:? "autoscalingAlgorithm")
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "dumpHeapOnOom")
            Core.<*> (o Core..:? "enableLauncherVmSerialPortLogging")
            Core.<*> (o Core..:? "enableStreamingEngine")
            Core.<*> (o Core..:? "flexrsGoal")
            Core.<*> (o Core..:? "ipConfiguration")
            Core.<*> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "launcherMachineType")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "maxWorkers")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "numWorkers")
            Core.<*> (o Core..:? "saveHeapDumpsToGcsPath")
            Core.<*> (o Core..:? "sdkContainerImage")
            Core.<*> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "stagingLocation")
            Core.<*> (o Core..:? "streamingMode")
            Core.<*> (o Core..:? "subnetwork")
            Core.<*> (o Core..:? "tempLocation")
            Core.<*> (o Core..:? "workerRegion")
            Core.<*> (o Core..:? "workerZone")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON FlexTemplateRuntimeEnvironment where
  toJSON FlexTemplateRuntimeEnvironment {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalExperiments" Core..=) Core.<$> additionalExperiments,
            ("additionalUserLabels" Core..=) Core.<$> additionalUserLabels,
            ("autoscalingAlgorithm" Core..=) Core.<$> autoscalingAlgorithm,
            ("diskSizeGb" Core..=) Core.<$> diskSizeGb,
            ("dumpHeapOnOom" Core..=) Core.<$> dumpHeapOnOom,
            ("enableLauncherVmSerialPortLogging" Core..=)
              Core.<$> enableLauncherVmSerialPortLogging,
            ("enableStreamingEngine" Core..=) Core.<$> enableStreamingEngine,
            ("flexrsGoal" Core..=) Core.<$> flexrsGoal,
            ("ipConfiguration" Core..=) Core.<$> ipConfiguration,
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("launcherMachineType" Core..=) Core.<$> launcherMachineType,
            ("machineType" Core..=) Core.<$> machineType,
            ("maxWorkers" Core..=) Core.<$> maxWorkers,
            ("network" Core..=) Core.<$> network,
            ("numWorkers" Core..=) Core.<$> numWorkers,
            ("saveHeapDumpsToGcsPath" Core..=) Core.<$> saveHeapDumpsToGcsPath,
            ("sdkContainerImage" Core..=) Core.<$> sdkContainerImage,
            ("serviceAccountEmail" Core..=) Core.<$> serviceAccountEmail,
            ("stagingLocation" Core..=) Core.<$> stagingLocation,
            ("streamingMode" Core..=) Core.<$> streamingMode,
            ("subnetwork" Core..=) Core.<$> subnetwork,
            ("tempLocation" Core..=) Core.<$> tempLocation,
            ("workerRegion" Core..=) Core.<$> workerRegion,
            ("workerZone" Core..=) Core.<$> workerZone,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Additional user labels to be specified for the job. Keys and values must follow the restrictions specified in the <https://cloud.google.com/compute/docs/labeling-resources#restrictions labeling restrictions> page. An object containing a list of \"key\": value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }.
--
-- /See:/ 'newFlexTemplateRuntimeEnvironment_AdditionalUserLabels' smart constructor.
newtype FlexTemplateRuntimeEnvironment_AdditionalUserLabels = FlexTemplateRuntimeEnvironment_AdditionalUserLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlexTemplateRuntimeEnvironment_AdditionalUserLabels' with the minimum fields required to make a request.
newFlexTemplateRuntimeEnvironment_AdditionalUserLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  FlexTemplateRuntimeEnvironment_AdditionalUserLabels
newFlexTemplateRuntimeEnvironment_AdditionalUserLabels additional =
  FlexTemplateRuntimeEnvironment_AdditionalUserLabels
    { additional =
        additional
    }

instance
  Core.FromJSON
    FlexTemplateRuntimeEnvironment_AdditionalUserLabels
  where
  parseJSON =
    Core.withObject
      "FlexTemplateRuntimeEnvironment_AdditionalUserLabels"
      ( \o ->
          FlexTemplateRuntimeEnvironment_AdditionalUserLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    FlexTemplateRuntimeEnvironment_AdditionalUserLabels
  where
  toJSON FlexTemplateRuntimeEnvironment_AdditionalUserLabels {..} =
    Core.toJSON additional

-- | A metric value representing a list of floating point numbers.
--
-- /See:/ 'newFloatingPointList' smart constructor.
newtype FloatingPointList = FloatingPointList
  { -- | Elements of the list.
    elements :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloatingPointList' with the minimum fields required to make a request.
newFloatingPointList ::
  FloatingPointList
newFloatingPointList = FloatingPointList {elements = Core.Nothing}

instance Core.FromJSON FloatingPointList where
  parseJSON =
    Core.withObject
      "FloatingPointList"
      (\o -> FloatingPointList Core.<$> (o Core..:? "elements"))

instance Core.ToJSON FloatingPointList where
  toJSON FloatingPointList {..} =
    Core.object
      (Core.catMaybes [("elements" Core..=) Core.<$> elements])

-- | A representation of a floating point mean metric contribution.
--
-- /See:/ 'newFloatingPointMean' smart constructor.
data FloatingPointMean = FloatingPointMean
  { -- | The number of values being aggregated.
    count :: (Core.Maybe SplitInt64),
    -- | The sum of all values being aggregated.
    sum :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloatingPointMean' with the minimum fields required to make a request.
newFloatingPointMean ::
  FloatingPointMean
newFloatingPointMean =
  FloatingPointMean {count = Core.Nothing, sum = Core.Nothing}

instance Core.FromJSON FloatingPointMean where
  parseJSON =
    Core.withObject
      "FloatingPointMean"
      ( \o ->
          FloatingPointMean
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "sum")
      )

instance Core.ToJSON FloatingPointMean where
  toJSON FloatingPointMean {..} =
    Core.object
      ( Core.catMaybes
          [("count" Core..=) Core.<$> count, ("sum" Core..=) Core.<$> sum]
      )

-- | Information about the GPU usage on the worker.
--
-- /See:/ 'newGPUUsage' smart constructor.
data GPUUsage = GPUUsage
  { -- | Required. Timestamp of the measurement.
    timestamp :: (Core.Maybe Core.DateTime),
    -- | Required. Utilization info about the GPU.
    utilization :: (Core.Maybe GPUUtilization)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GPUUsage' with the minimum fields required to make a request.
newGPUUsage ::
  GPUUsage
newGPUUsage =
  GPUUsage {timestamp = Core.Nothing, utilization = Core.Nothing}

instance Core.FromJSON GPUUsage where
  parseJSON =
    Core.withObject
      "GPUUsage"
      ( \o ->
          GPUUsage
            Core.<$> (o Core..:? "timestamp")
            Core.<*> (o Core..:? "utilization")
      )

instance Core.ToJSON GPUUsage where
  toJSON GPUUsage {..} =
    Core.object
      ( Core.catMaybes
          [ ("timestamp" Core..=) Core.<$> timestamp,
            ("utilization" Core..=) Core.<$> utilization
          ]
      )

-- | Utilization details about the GPU.
--
-- /See:/ 'newGPUUtilization' smart constructor.
newtype GPUUtilization = GPUUtilization
  { -- | Required. GPU utilization rate of any kernel over the last sample period in the range of [0, 1].
    rate :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GPUUtilization' with the minimum fields required to make a request.
newGPUUtilization ::
  GPUUtilization
newGPUUtilization = GPUUtilization {rate = Core.Nothing}

instance Core.FromJSON GPUUtilization where
  parseJSON =
    Core.withObject
      "GPUUtilization"
      (\o -> GPUUtilization Core.<$> (o Core..:? "rate"))

instance Core.ToJSON GPUUtilization where
  toJSON GPUUtilization {..} =
    Core.object (Core.catMaybes [("rate" Core..=) Core.<$> rate])

-- | Request to get updated debug configuration for component.
--
-- /See:/ 'newGetDebugConfigRequest' smart constructor.
data GetDebugConfigRequest = GetDebugConfigRequest
  { -- | The internal component id for which debug configuration is requested.
    componentId :: (Core.Maybe Core.Text),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: (Core.Maybe Core.Text),
    -- | The worker id, i.e., VM hostname.
    workerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetDebugConfigRequest' with the minimum fields required to make a request.
newGetDebugConfigRequest ::
  GetDebugConfigRequest
newGetDebugConfigRequest =
  GetDebugConfigRequest
    { componentId = Core.Nothing,
      location = Core.Nothing,
      workerId = Core.Nothing
    }

instance Core.FromJSON GetDebugConfigRequest where
  parseJSON =
    Core.withObject
      "GetDebugConfigRequest"
      ( \o ->
          GetDebugConfigRequest
            Core.<$> (o Core..:? "componentId")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "workerId")
      )

instance Core.ToJSON GetDebugConfigRequest where
  toJSON GetDebugConfigRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("componentId" Core..=) Core.<$> componentId,
            ("location" Core..=) Core.<$> location,
            ("workerId" Core..=) Core.<$> workerId
          ]
      )

-- | Response to a get debug configuration request.
--
-- /See:/ 'newGetDebugConfigResponse' smart constructor.
newtype GetDebugConfigResponse = GetDebugConfigResponse
  { -- | The encoded debug configuration for the requested component.
    config :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetDebugConfigResponse' with the minimum fields required to make a request.
newGetDebugConfigResponse ::
  GetDebugConfigResponse
newGetDebugConfigResponse =
  GetDebugConfigResponse {config = Core.Nothing}

instance Core.FromJSON GetDebugConfigResponse where
  parseJSON =
    Core.withObject
      "GetDebugConfigResponse"
      (\o -> GetDebugConfigResponse Core.<$> (o Core..:? "config"))

instance Core.ToJSON GetDebugConfigResponse where
  toJSON GetDebugConfigResponse {..} =
    Core.object (Core.catMaybes [("config" Core..=) Core.<$> config])

-- | The response to a GetTemplate request.
--
-- /See:/ 'newGetTemplateResponse' smart constructor.
data GetTemplateResponse = GetTemplateResponse
  { -- | The template metadata describing the template name, available parameters, etc.
    metadata :: (Core.Maybe TemplateMetadata),
    -- | Describes the runtime metadata with SDKInfo and available parameters.
    runtimeMetadata :: (Core.Maybe RuntimeMetadata),
    -- | The status of the get template request. Any problems with the request will be indicated in the error_details.
    status :: (Core.Maybe Status),
    -- | Template Type.
    templateType :: (Core.Maybe GetTemplateResponse_TemplateType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetTemplateResponse' with the minimum fields required to make a request.
newGetTemplateResponse ::
  GetTemplateResponse
newGetTemplateResponse =
  GetTemplateResponse
    { metadata = Core.Nothing,
      runtimeMetadata = Core.Nothing,
      status = Core.Nothing,
      templateType = Core.Nothing
    }

instance Core.FromJSON GetTemplateResponse where
  parseJSON =
    Core.withObject
      "GetTemplateResponse"
      ( \o ->
          GetTemplateResponse
            Core.<$> (o Core..:? "metadata")
            Core.<*> (o Core..:? "runtimeMetadata")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "templateType")
      )

instance Core.ToJSON GetTemplateResponse where
  toJSON GetTemplateResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("metadata" Core..=) Core.<$> metadata,
            ("runtimeMetadata" Core..=) Core.<$> runtimeMetadata,
            ("status" Core..=) Core.<$> status,
            ("templateType" Core..=) Core.<$> templateType
          ]
      )

-- | Histogram of value counts for a distribution. Buckets have an inclusive lower bound and exclusive upper bound and use \"1,2,5 bucketing\": The first bucket range is from [0,1) and all subsequent bucket boundaries are powers of ten multiplied by 1, 2, or 5. Thus, bucket boundaries are 0, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, ... Negative values are not supported.
--
-- /See:/ 'newHistogram' smart constructor.
data Histogram = Histogram
  { -- | Counts of values in each bucket. For efficiency, prefix and trailing buckets with count = 0 are elided. Buckets can store the full range of values of an unsigned long, with ULLONG_MAX falling into the 59th bucket with range [1e19, 2e19).
    bucketCounts :: (Core.Maybe [Core.Int64]),
    -- | Starting index of first stored bucket. The non-inclusive upper-bound of the ith bucket is given by: pow(10,(i-first/bucket/offset)\/3) * (1,2,5)[(i-first/bucket/offset)%3]
    firstBucketOffset :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Histogram' with the minimum fields required to make a request.
newHistogram ::
  Histogram
newHistogram =
  Histogram
    { bucketCounts = Core.Nothing,
      firstBucketOffset = Core.Nothing
    }

instance Core.FromJSON Histogram where
  parseJSON =
    Core.withObject
      "Histogram"
      ( \o ->
          Histogram
            Core.<$> ( o
                         Core..:? "bucketCounts"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "firstBucketOffset")
      )

instance Core.ToJSON Histogram where
  toJSON Histogram {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketCounts" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> bucketCounts,
            ("firstBucketOffset" Core..=) Core.<$> firstBucketOffset
          ]
      )

-- | Information useful for debugging a hot key detection.
--
-- /See:/ 'newHotKeyDebuggingInfo' smart constructor.
newtype HotKeyDebuggingInfo = HotKeyDebuggingInfo
  { -- | Debugging information for each detected hot key. Keyed by a hash of the key.
    detectedHotKeys :: (Core.Maybe HotKeyDebuggingInfo_DetectedHotKeys)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HotKeyDebuggingInfo' with the minimum fields required to make a request.
newHotKeyDebuggingInfo ::
  HotKeyDebuggingInfo
newHotKeyDebuggingInfo =
  HotKeyDebuggingInfo {detectedHotKeys = Core.Nothing}

instance Core.FromJSON HotKeyDebuggingInfo where
  parseJSON =
    Core.withObject
      "HotKeyDebuggingInfo"
      ( \o ->
          HotKeyDebuggingInfo Core.<$> (o Core..:? "detectedHotKeys")
      )

instance Core.ToJSON HotKeyDebuggingInfo where
  toJSON HotKeyDebuggingInfo {..} =
    Core.object
      ( Core.catMaybes
          [("detectedHotKeys" Core..=) Core.<$> detectedHotKeys]
      )

-- | Debugging information for each detected hot key. Keyed by a hash of the key.
--
-- /See:/ 'newHotKeyDebuggingInfo_DetectedHotKeys' smart constructor.
newtype HotKeyDebuggingInfo_DetectedHotKeys = HotKeyDebuggingInfo_DetectedHotKeys
  { additional :: (Core.HashMap Core.Text HotKeyInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HotKeyDebuggingInfo_DetectedHotKeys' with the minimum fields required to make a request.
newHotKeyDebuggingInfo_DetectedHotKeys ::
  -- |  See 'additional'.
  Core.HashMap Core.Text HotKeyInfo ->
  HotKeyDebuggingInfo_DetectedHotKeys
newHotKeyDebuggingInfo_DetectedHotKeys additional =
  HotKeyDebuggingInfo_DetectedHotKeys {additional = additional}

instance Core.FromJSON HotKeyDebuggingInfo_DetectedHotKeys where
  parseJSON =
    Core.withObject
      "HotKeyDebuggingInfo_DetectedHotKeys"
      ( \o ->
          HotKeyDebuggingInfo_DetectedHotKeys
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HotKeyDebuggingInfo_DetectedHotKeys where
  toJSON HotKeyDebuggingInfo_DetectedHotKeys {..} =
    Core.toJSON additional

-- | Proto describing a hot key detected on a given WorkItem.
--
-- /See:/ 'newHotKeyDetection' smart constructor.
data HotKeyDetection = HotKeyDetection
  { -- | The age of the hot key measured from when it was first detected.
    hotKeyAge :: (Core.Maybe Core.Duration),
    -- | System-defined name of the step containing this hot key. Unique across the workflow.
    systemName :: (Core.Maybe Core.Text),
    -- | User-provided name of the step that contains this hot key.
    userStepName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HotKeyDetection' with the minimum fields required to make a request.
newHotKeyDetection ::
  HotKeyDetection
newHotKeyDetection =
  HotKeyDetection
    { hotKeyAge = Core.Nothing,
      systemName = Core.Nothing,
      userStepName = Core.Nothing
    }

instance Core.FromJSON HotKeyDetection where
  parseJSON =
    Core.withObject
      "HotKeyDetection"
      ( \o ->
          HotKeyDetection
            Core.<$> (o Core..:? "hotKeyAge")
            Core.<*> (o Core..:? "systemName")
            Core.<*> (o Core..:? "userStepName")
      )

instance Core.ToJSON HotKeyDetection where
  toJSON HotKeyDetection {..} =
    Core.object
      ( Core.catMaybes
          [ ("hotKeyAge" Core..=) Core.<$> hotKeyAge,
            ("systemName" Core..=) Core.<$> systemName,
            ("userStepName" Core..=) Core.<$> userStepName
          ]
      )

-- | Information about a hot key.
--
-- /See:/ 'newHotKeyInfo' smart constructor.
data HotKeyInfo = HotKeyInfo
  { -- | The age of the hot key measured from when it was first detected.
    hotKeyAge :: (Core.Maybe Core.Duration),
    -- | A detected hot key that is causing limited parallelism. This field will be populated only if the following flag is set to true: \"--enable/hot/key_logging\".
    key :: (Core.Maybe Core.Text),
    -- | If true, then the above key is truncated and cannot be deserialized. This occurs if the key above is populated and the key size is >5MB.
    keyTruncated :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HotKeyInfo' with the minimum fields required to make a request.
newHotKeyInfo ::
  HotKeyInfo
newHotKeyInfo =
  HotKeyInfo
    { hotKeyAge = Core.Nothing,
      key = Core.Nothing,
      keyTruncated = Core.Nothing
    }

instance Core.FromJSON HotKeyInfo where
  parseJSON =
    Core.withObject
      "HotKeyInfo"
      ( \o ->
          HotKeyInfo
            Core.<$> (o Core..:? "hotKeyAge")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "keyTruncated")
      )

instance Core.ToJSON HotKeyInfo where
  toJSON HotKeyInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("hotKeyAge" Core..=) Core.<$> hotKeyAge,
            ("key" Core..=) Core.<$> key,
            ("keyTruncated" Core..=) Core.<$> keyTruncated
          ]
      )

-- | An input of an instruction, as a reference to an output of a producer instruction.
--
-- /See:/ 'newInstructionInput' smart constructor.
data InstructionInput = InstructionInput
  { -- | The output index (origin zero) within the producer.
    outputNum :: (Core.Maybe Core.Int32),
    -- | The index (origin zero) of the parallel instruction that produces the output to be consumed by this input. This index is relative to the list of instructions in this input\'s instruction\'s containing MapTask.
    producerInstructionIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstructionInput' with the minimum fields required to make a request.
newInstructionInput ::
  InstructionInput
newInstructionInput =
  InstructionInput
    { outputNum = Core.Nothing,
      producerInstructionIndex = Core.Nothing
    }

instance Core.FromJSON InstructionInput where
  parseJSON =
    Core.withObject
      "InstructionInput"
      ( \o ->
          InstructionInput
            Core.<$> (o Core..:? "outputNum")
            Core.<*> (o Core..:? "producerInstructionIndex")
      )

instance Core.ToJSON InstructionInput where
  toJSON InstructionInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("outputNum" Core..=) Core.<$> outputNum,
            ("producerInstructionIndex" Core..=)
              Core.<$> producerInstructionIndex
          ]
      )

-- | An output of an instruction.
--
-- /See:/ 'newInstructionOutput' smart constructor.
data InstructionOutput = InstructionOutput
  { -- | The codec to use to encode data being written via this output.
    codec :: (Core.Maybe InstructionOutput_Codec),
    -- | The user-provided name of this output.
    name :: (Core.Maybe Core.Text),
    -- | For system-generated byte and mean byte metrics, certain instructions should only report the key size.
    onlyCountKeyBytes :: (Core.Maybe Core.Bool),
    -- | For system-generated byte and mean byte metrics, certain instructions should only report the value size.
    onlyCountValueBytes :: (Core.Maybe Core.Bool),
    -- | System-defined name for this output in the original workflow graph. Outputs that do not contribute to an original instruction do not set this.
    originalName :: (Core.Maybe Core.Text),
    -- | System-defined name of this output. Unique across the workflow.
    systemName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstructionOutput' with the minimum fields required to make a request.
newInstructionOutput ::
  InstructionOutput
newInstructionOutput =
  InstructionOutput
    { codec = Core.Nothing,
      name = Core.Nothing,
      onlyCountKeyBytes = Core.Nothing,
      onlyCountValueBytes = Core.Nothing,
      originalName = Core.Nothing,
      systemName = Core.Nothing
    }

instance Core.FromJSON InstructionOutput where
  parseJSON =
    Core.withObject
      "InstructionOutput"
      ( \o ->
          InstructionOutput
            Core.<$> (o Core..:? "codec")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onlyCountKeyBytes")
            Core.<*> (o Core..:? "onlyCountValueBytes")
            Core.<*> (o Core..:? "originalName")
            Core.<*> (o Core..:? "systemName")
      )

instance Core.ToJSON InstructionOutput where
  toJSON InstructionOutput {..} =
    Core.object
      ( Core.catMaybes
          [ ("codec" Core..=) Core.<$> codec,
            ("name" Core..=) Core.<$> name,
            ("onlyCountKeyBytes" Core..=) Core.<$> onlyCountKeyBytes,
            ("onlyCountValueBytes" Core..=) Core.<$> onlyCountValueBytes,
            ("originalName" Core..=) Core.<$> originalName,
            ("systemName" Core..=) Core.<$> systemName
          ]
      )

-- | The codec to use to encode data being written via this output.
--
-- /See:/ 'newInstructionOutput_Codec' smart constructor.
newtype InstructionOutput_Codec = InstructionOutput_Codec
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstructionOutput_Codec' with the minimum fields required to make a request.
newInstructionOutput_Codec ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  InstructionOutput_Codec
newInstructionOutput_Codec additional =
  InstructionOutput_Codec {additional = additional}

instance Core.FromJSON InstructionOutput_Codec where
  parseJSON =
    Core.withObject
      "InstructionOutput_Codec"
      (\o -> InstructionOutput_Codec Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON InstructionOutput_Codec where
  toJSON InstructionOutput_Codec {..} = Core.toJSON additional

-- | A metric value representing temporal values of a variable.
--
-- /See:/ 'newIntegerGauge' smart constructor.
data IntegerGauge = IntegerGauge
  { -- | The time at which this value was measured. Measured as msecs from epoch.
    timestamp :: (Core.Maybe Core.DateTime),
    -- | The value of the variable represented by this gauge.
    value :: (Core.Maybe SplitInt64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntegerGauge' with the minimum fields required to make a request.
newIntegerGauge ::
  IntegerGauge
newIntegerGauge =
  IntegerGauge {timestamp = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON IntegerGauge where
  parseJSON =
    Core.withObject
      "IntegerGauge"
      ( \o ->
          IntegerGauge
            Core.<$> (o Core..:? "timestamp")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON IntegerGauge where
  toJSON IntegerGauge {..} =
    Core.object
      ( Core.catMaybes
          [ ("timestamp" Core..=) Core.<$> timestamp,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A metric value representing a list of integers.
--
-- /See:/ 'newIntegerList' smart constructor.
newtype IntegerList = IntegerList
  { -- | Elements of the list.
    elements :: (Core.Maybe [SplitInt64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntegerList' with the minimum fields required to make a request.
newIntegerList ::
  IntegerList
newIntegerList = IntegerList {elements = Core.Nothing}

instance Core.FromJSON IntegerList where
  parseJSON =
    Core.withObject
      "IntegerList"
      (\o -> IntegerList Core.<$> (o Core..:? "elements"))

instance Core.ToJSON IntegerList where
  toJSON IntegerList {..} =
    Core.object
      (Core.catMaybes [("elements" Core..=) Core.<$> elements])

-- | A representation of an integer mean metric contribution.
--
-- /See:/ 'newIntegerMean' smart constructor.
data IntegerMean = IntegerMean
  { -- | The number of values being aggregated.
    count :: (Core.Maybe SplitInt64),
    -- | The sum of all values being aggregated.
    sum :: (Core.Maybe SplitInt64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntegerMean' with the minimum fields required to make a request.
newIntegerMean ::
  IntegerMean
newIntegerMean =
  IntegerMean {count = Core.Nothing, sum = Core.Nothing}

instance Core.FromJSON IntegerMean where
  parseJSON =
    Core.withObject
      "IntegerMean"
      ( \o ->
          IntegerMean
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "sum")
      )

instance Core.ToJSON IntegerMean where
  toJSON IntegerMean {..} =
    Core.object
      ( Core.catMaybes
          [("count" Core..=) Core.<$> count, ("sum" Core..=) Core.<$> sum]
      )

-- | Defines a job to be run by the Cloud Dataflow service. Do not enter confidential information when you supply string values using the API.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job
  { -- | The client\'s unique identifier of the job, re-used across retried attempts. If this field is set, the service will ensure its uniqueness. The request to create a job will fail if the service has knowledge of a previously submitted job with the same client\'s ID and job name. The caller may use this field to ensure idempotence of job creation across retried attempts to create a job. By default, the field is empty and, in that case, the service ignores it.
    clientRequestId :: (Core.Maybe Core.Text),
    -- | The timestamp when the job was initially created. Immutable and set by the Cloud Dataflow service.
    createTime :: (Core.Maybe Core.DateTime),
    -- | If this is specified, the job\'s initial state is populated from the given snapshot.
    createdFromSnapshotId :: (Core.Maybe Core.Text),
    -- | The current state of the job. Jobs are created in the @JOB_STATE_STOPPED@ state unless otherwise specified. A job in the @JOB_STATE_RUNNING@ state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field might be mutated by the Dataflow service; callers cannot mutate it.
    currentState :: (Core.Maybe Job_CurrentState),
    -- | The timestamp associated with the current state.
    currentStateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The environment for the job.
    environment :: (Core.Maybe Environment),
    -- | Deprecated.
    executionInfo :: (Core.Maybe JobExecutionInfo),
    -- | The unique ID of this job. This field is set by the Dataflow service when the job is created, and is immutable for the life of the job.
    id :: (Core.Maybe Core.Text),
    -- | This field is populated by the Dataflow service to support filtering jobs by the metadata values provided here. Populated for ListJobs and all GetJob views SUMMARY and higher.
    jobMetadata :: (Core.Maybe JobMetadata),
    -- | User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally constrained to be \<= 128 bytes in size.
    labels :: (Core.Maybe Job_Labels),
    -- | Optional. The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    location :: (Core.Maybe Core.Text),
    -- | Optional. The user-specified Dataflow job name. Only one active job with a given name can exist in a project within one region at any given time. Jobs in different regions can have the same name. If a caller attempts to create a job with the same name as an active job that already exists, the attempt returns the existing job. The name must match the regular expression @[a-z]([-a-z0-9]{0,1022}[a-z0-9])?@
    name :: (Core.Maybe Core.Text),
    -- | Preliminary field: The format of this data may change at any time. A description of the user pipeline and stages through which it is executed. Created by Cloud Dataflow service. Only retrieved with JOB/VIEW/DESCRIPTION or JOB/VIEW/ALL.
    pipelineDescription :: (Core.Maybe PipelineDescription),
    -- | The ID of the Google Cloud project that the job belongs to.
    projectId :: (Core.Maybe Core.Text),
    -- | If this job is an update of an existing job, this field is the job ID of the job it replaced. When sending a @CreateJobRequest@, you can update a job by specifying it here. The job named here is stopped, and its intermediate state is transferred to this job.
    replaceJobId :: (Core.Maybe Core.Text),
    -- | If another job is an update of this job (and thus, this job is in @JOB_STATE_UPDATED@), this field contains the ID of that job.
    replacedByJobId :: (Core.Maybe Core.Text),
    -- | The job\'s requested state. Applies to @UpdateJob@ requests. Set @requested_state@ with @UpdateJob@ requests to switch between the states @JOB_STATE_STOPPED@ and @JOB_STATE_RUNNING@. You can also use @UpdateJob@ requests to change a job\'s state from @JOB_STATE_RUNNING@ to @JOB_STATE_CANCELLED@, @JOB_STATE_DONE@, or @JOB_STATE_DRAINED@. These states irrevocably terminate the job if it hasn\'t already reached a terminal state. This field has no effect on @CreateJob@ requests.
    requestedState :: (Core.Maybe Job_RequestedState),
    -- | This field may ONLY be modified at runtime using the projects.jobs.update method to adjust job behavior. This field has no effect when specified at job creation.
    runtimeUpdatableParams :: (Core.Maybe RuntimeUpdatableParams),
    -- | Output only. Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
    satisfiesPzi :: (Core.Maybe Core.Bool),
    -- | Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Output only. Resources used by the Dataflow Service to run the job.
    serviceResources :: (Core.Maybe ServiceResources),
    -- | This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
    stageStates :: (Core.Maybe [ExecutionStageState]),
    -- | The timestamp when the job was started (transitioned to JOB/STATE/PENDING). Flexible resource scheduling jobs are started with some delay after job creation, so start/time is unset before start and is updated when the job is started by the Cloud Dataflow service. For other jobs, start/time always equals to create_time and is immutable and set by the Cloud Dataflow service.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Exactly one of step or steps/location should be specified. The top-level steps that constitute the entire job. Only retrieved with JOB/VIEW_ALL.
    steps :: (Core.Maybe [Step]),
    -- | The Cloud Storage location where the steps are stored.
    stepsLocation :: (Core.Maybe Core.Text),
    -- | A set of files the system should be aware of that are used for temporary storage. These temporary files will be removed on job completion. No duplicates are allowed. No file patterns are supported. The supported files are: Google Cloud Storage: storage.googleapis.com\/{bucket}\/{object} bucket.storage.googleapis.com\/{object}
    tempFiles :: (Core.Maybe [Core.Text]),
    -- | Optional. The map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
    transformNameMapping :: (Core.Maybe Job_TransformNameMapping),
    -- | Optional. The type of Dataflow job.
    type' :: (Core.Maybe Job_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
newJob ::
  Job
newJob =
  Job
    { clientRequestId = Core.Nothing,
      createTime = Core.Nothing,
      createdFromSnapshotId = Core.Nothing,
      currentState = Core.Nothing,
      currentStateTime = Core.Nothing,
      environment = Core.Nothing,
      executionInfo = Core.Nothing,
      id = Core.Nothing,
      jobMetadata = Core.Nothing,
      labels = Core.Nothing,
      location = Core.Nothing,
      name = Core.Nothing,
      pipelineDescription = Core.Nothing,
      projectId = Core.Nothing,
      replaceJobId = Core.Nothing,
      replacedByJobId = Core.Nothing,
      requestedState = Core.Nothing,
      runtimeUpdatableParams = Core.Nothing,
      satisfiesPzi = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      serviceResources = Core.Nothing,
      stageStates = Core.Nothing,
      startTime = Core.Nothing,
      steps = Core.Nothing,
      stepsLocation = Core.Nothing,
      tempFiles = Core.Nothing,
      transformNameMapping = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Job where
  parseJSON =
    Core.withObject
      "Job"
      ( \o ->
          Job
            Core.<$> (o Core..:? "clientRequestId")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "createdFromSnapshotId")
            Core.<*> (o Core..:? "currentState")
            Core.<*> (o Core..:? "currentStateTime")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "executionInfo")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "jobMetadata")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pipelineDescription")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "replaceJobId")
            Core.<*> (o Core..:? "replacedByJobId")
            Core.<*> (o Core..:? "requestedState")
            Core.<*> (o Core..:? "runtimeUpdatableParams")
            Core.<*> (o Core..:? "satisfiesPzi")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "serviceResources")
            Core.<*> (o Core..:? "stageStates")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "steps")
            Core.<*> (o Core..:? "stepsLocation")
            Core.<*> (o Core..:? "tempFiles")
            Core.<*> (o Core..:? "transformNameMapping")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Job where
  toJSON Job {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientRequestId" Core..=) Core.<$> clientRequestId,
            ("createTime" Core..=) Core.<$> createTime,
            ("createdFromSnapshotId" Core..=) Core.<$> createdFromSnapshotId,
            ("currentState" Core..=) Core.<$> currentState,
            ("currentStateTime" Core..=) Core.<$> currentStateTime,
            ("environment" Core..=) Core.<$> environment,
            ("executionInfo" Core..=) Core.<$> executionInfo,
            ("id" Core..=) Core.<$> id,
            ("jobMetadata" Core..=) Core.<$> jobMetadata,
            ("labels" Core..=) Core.<$> labels,
            ("location" Core..=) Core.<$> location,
            ("name" Core..=) Core.<$> name,
            ("pipelineDescription" Core..=) Core.<$> pipelineDescription,
            ("projectId" Core..=) Core.<$> projectId,
            ("replaceJobId" Core..=) Core.<$> replaceJobId,
            ("replacedByJobId" Core..=) Core.<$> replacedByJobId,
            ("requestedState" Core..=) Core.<$> requestedState,
            ("runtimeUpdatableParams" Core..=) Core.<$> runtimeUpdatableParams,
            ("satisfiesPzi" Core..=) Core.<$> satisfiesPzi,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("serviceResources" Core..=) Core.<$> serviceResources,
            ("stageStates" Core..=) Core.<$> stageStates,
            ("startTime" Core..=) Core.<$> startTime,
            ("steps" Core..=) Core.<$> steps,
            ("stepsLocation" Core..=) Core.<$> stepsLocation,
            ("tempFiles" Core..=) Core.<$> tempFiles,
            ("transformNameMapping" Core..=) Core.<$> transformNameMapping,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally constrained to be \<= 128 bytes in size.
--
-- /See:/ 'newJob_Labels' smart constructor.
newtype Job_Labels = Job_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job_Labels' with the minimum fields required to make a request.
newJob_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Job_Labels
newJob_Labels additional = Job_Labels {additional = additional}

instance Core.FromJSON Job_Labels where
  parseJSON =
    Core.withObject
      "Job_Labels"
      (\o -> Job_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Job_Labels where
  toJSON Job_Labels {..} = Core.toJSON additional

-- | Optional. The map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
--
-- /See:/ 'newJob_TransformNameMapping' smart constructor.
newtype Job_TransformNameMapping = Job_TransformNameMapping
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job_TransformNameMapping' with the minimum fields required to make a request.
newJob_TransformNameMapping ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Job_TransformNameMapping
newJob_TransformNameMapping additional =
  Job_TransformNameMapping {additional = additional}

instance Core.FromJSON Job_TransformNameMapping where
  parseJSON =
    Core.withObject
      "Job_TransformNameMapping"
      (\o -> Job_TransformNameMapping Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Job_TransformNameMapping where
  toJSON Job_TransformNameMapping {..} = Core.toJSON additional

-- | Information about the execution of a job.
--
-- /See:/ 'newJobExecutionDetails' smart constructor.
data JobExecutionDetails = JobExecutionDetails
  { -- | If present, this response does not contain all requested tasks. To obtain the next page of results, repeat the request with page_token set to this value.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The stages of the job execution.
    stages :: (Core.Maybe [StageSummary])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobExecutionDetails' with the minimum fields required to make a request.
newJobExecutionDetails ::
  JobExecutionDetails
newJobExecutionDetails =
  JobExecutionDetails
    { nextPageToken = Core.Nothing,
      stages = Core.Nothing
    }

instance Core.FromJSON JobExecutionDetails where
  parseJSON =
    Core.withObject
      "JobExecutionDetails"
      ( \o ->
          JobExecutionDetails
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "stages")
      )

instance Core.ToJSON JobExecutionDetails where
  toJSON JobExecutionDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("stages" Core..=) Core.<$> stages
          ]
      )

-- | Additional information about how a Cloud Dataflow job will be executed that isn\'t contained in the submitted job.
--
-- /See:/ 'newJobExecutionInfo' smart constructor.
newtype JobExecutionInfo = JobExecutionInfo
  { -- | A mapping from each stage to the information about that stage.
    stages :: (Core.Maybe JobExecutionInfo_Stages)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobExecutionInfo' with the minimum fields required to make a request.
newJobExecutionInfo ::
  JobExecutionInfo
newJobExecutionInfo = JobExecutionInfo {stages = Core.Nothing}

instance Core.FromJSON JobExecutionInfo where
  parseJSON =
    Core.withObject
      "JobExecutionInfo"
      (\o -> JobExecutionInfo Core.<$> (o Core..:? "stages"))

instance Core.ToJSON JobExecutionInfo where
  toJSON JobExecutionInfo {..} =
    Core.object (Core.catMaybes [("stages" Core..=) Core.<$> stages])

-- | A mapping from each stage to the information about that stage.
--
-- /See:/ 'newJobExecutionInfo_Stages' smart constructor.
newtype JobExecutionInfo_Stages = JobExecutionInfo_Stages
  { additional :: (Core.HashMap Core.Text JobExecutionStageInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobExecutionInfo_Stages' with the minimum fields required to make a request.
newJobExecutionInfo_Stages ::
  -- |  See 'additional'.
  Core.HashMap Core.Text JobExecutionStageInfo ->
  JobExecutionInfo_Stages
newJobExecutionInfo_Stages additional =
  JobExecutionInfo_Stages {additional = additional}

instance Core.FromJSON JobExecutionInfo_Stages where
  parseJSON =
    Core.withObject
      "JobExecutionInfo_Stages"
      (\o -> JobExecutionInfo_Stages Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON JobExecutionInfo_Stages where
  toJSON JobExecutionInfo_Stages {..} = Core.toJSON additional

-- | Contains information about how a particular google.dataflow.v1beta3.Step will be executed.
--
-- /See:/ 'newJobExecutionStageInfo' smart constructor.
newtype JobExecutionStageInfo = JobExecutionStageInfo
  { -- | The steps associated with the execution stage. Note that stages may have several steps, and that a given step might be run by more than one stage.
    stepName :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobExecutionStageInfo' with the minimum fields required to make a request.
newJobExecutionStageInfo ::
  JobExecutionStageInfo
newJobExecutionStageInfo =
  JobExecutionStageInfo {stepName = Core.Nothing}

instance Core.FromJSON JobExecutionStageInfo where
  parseJSON =
    Core.withObject
      "JobExecutionStageInfo"
      (\o -> JobExecutionStageInfo Core.<$> (o Core..:? "stepName"))

instance Core.ToJSON JobExecutionStageInfo where
  toJSON JobExecutionStageInfo {..} =
    Core.object
      (Core.catMaybes [("stepName" Core..=) Core.<$> stepName])

-- | A particular message pertaining to a Dataflow job.
--
-- /See:/ 'newJobMessage' smart constructor.
data JobMessage = JobMessage
  { -- | Deprecated.
    id :: (Core.Maybe Core.Text),
    -- | Importance level of the message.
    messageImportance :: (Core.Maybe JobMessage_MessageImportance),
    -- | The text of the message.
    messageText :: (Core.Maybe Core.Text),
    -- | The timestamp of the message.
    time :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobMessage' with the minimum fields required to make a request.
newJobMessage ::
  JobMessage
newJobMessage =
  JobMessage
    { id = Core.Nothing,
      messageImportance = Core.Nothing,
      messageText = Core.Nothing,
      time = Core.Nothing
    }

instance Core.FromJSON JobMessage where
  parseJSON =
    Core.withObject
      "JobMessage"
      ( \o ->
          JobMessage
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "messageImportance")
            Core.<*> (o Core..:? "messageText")
            Core.<*> (o Core..:? "time")
      )

instance Core.ToJSON JobMessage where
  toJSON JobMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("messageImportance" Core..=) Core.<$> messageImportance,
            ("messageText" Core..=) Core.<$> messageText,
            ("time" Core..=) Core.<$> time
          ]
      )

-- | Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.
--
-- /See:/ 'newJobMetadata' smart constructor.
data JobMetadata = JobMetadata
  { -- | Identification of a Cloud Bigtable source used in the Dataflow job.
    bigTableDetails :: (Core.Maybe [BigTableIODetails]),
    -- | Identification of a BigQuery source used in the Dataflow job.
    bigqueryDetails :: (Core.Maybe [BigQueryIODetails]),
    -- | Identification of a Datastore source used in the Dataflow job.
    datastoreDetails :: (Core.Maybe [DatastoreIODetails]),
    -- | Identification of a File source used in the Dataflow job.
    fileDetails :: (Core.Maybe [FileIODetails]),
    -- | Identification of a Pub\/Sub source used in the Dataflow job.
    pubsubDetails :: (Core.Maybe [PubSubIODetails]),
    -- | The SDK version used to run the job.
    sdkVersion :: (Core.Maybe SdkVersion),
    -- | Identification of a Spanner source used in the Dataflow job.
    spannerDetails :: (Core.Maybe [SpannerIODetails]),
    -- | List of display properties to help UI filter jobs.
    userDisplayProperties :: (Core.Maybe JobMetadata_UserDisplayProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobMetadata' with the minimum fields required to make a request.
newJobMetadata ::
  JobMetadata
newJobMetadata =
  JobMetadata
    { bigTableDetails = Core.Nothing,
      bigqueryDetails = Core.Nothing,
      datastoreDetails = Core.Nothing,
      fileDetails = Core.Nothing,
      pubsubDetails = Core.Nothing,
      sdkVersion = Core.Nothing,
      spannerDetails = Core.Nothing,
      userDisplayProperties = Core.Nothing
    }

instance Core.FromJSON JobMetadata where
  parseJSON =
    Core.withObject
      "JobMetadata"
      ( \o ->
          JobMetadata
            Core.<$> (o Core..:? "bigTableDetails")
            Core.<*> (o Core..:? "bigqueryDetails")
            Core.<*> (o Core..:? "datastoreDetails")
            Core.<*> (o Core..:? "fileDetails")
            Core.<*> (o Core..:? "pubsubDetails")
            Core.<*> (o Core..:? "sdkVersion")
            Core.<*> (o Core..:? "spannerDetails")
            Core.<*> (o Core..:? "userDisplayProperties")
      )

instance Core.ToJSON JobMetadata where
  toJSON JobMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigTableDetails" Core..=) Core.<$> bigTableDetails,
            ("bigqueryDetails" Core..=) Core.<$> bigqueryDetails,
            ("datastoreDetails" Core..=) Core.<$> datastoreDetails,
            ("fileDetails" Core..=) Core.<$> fileDetails,
            ("pubsubDetails" Core..=) Core.<$> pubsubDetails,
            ("sdkVersion" Core..=) Core.<$> sdkVersion,
            ("spannerDetails" Core..=) Core.<$> spannerDetails,
            ("userDisplayProperties" Core..=) Core.<$> userDisplayProperties
          ]
      )

-- | List of display properties to help UI filter jobs.
--
-- /See:/ 'newJobMetadata_UserDisplayProperties' smart constructor.
newtype JobMetadata_UserDisplayProperties = JobMetadata_UserDisplayProperties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobMetadata_UserDisplayProperties' with the minimum fields required to make a request.
newJobMetadata_UserDisplayProperties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  JobMetadata_UserDisplayProperties
newJobMetadata_UserDisplayProperties additional =
  JobMetadata_UserDisplayProperties {additional = additional}

instance Core.FromJSON JobMetadata_UserDisplayProperties where
  parseJSON =
    Core.withObject
      "JobMetadata_UserDisplayProperties"
      ( \o ->
          JobMetadata_UserDisplayProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON JobMetadata_UserDisplayProperties where
  toJSON JobMetadata_UserDisplayProperties {..} =
    Core.toJSON additional

-- | JobMetrics contains a collection of metrics describing the detailed progress of a Dataflow job. Metrics correspond to user-defined and system-defined metrics in the job. For more information, see [Dataflow job metrics] (https:\/\/cloud.google.com\/dataflow\/docs\/guides\/using-monitoring-intf). This resource captures only the most recent values of each metric; time-series data can be queried for them (under the same metric names) from Cloud Monitoring.
--
-- /See:/ 'newJobMetrics' smart constructor.
data JobMetrics = JobMetrics
  { -- | Timestamp as of which metric values are current.
    metricTime :: (Core.Maybe Core.DateTime),
    -- | All metrics for this job.
    metrics :: (Core.Maybe [MetricUpdate])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobMetrics' with the minimum fields required to make a request.
newJobMetrics ::
  JobMetrics
newJobMetrics =
  JobMetrics {metricTime = Core.Nothing, metrics = Core.Nothing}

instance Core.FromJSON JobMetrics where
  parseJSON =
    Core.withObject
      "JobMetrics"
      ( \o ->
          JobMetrics
            Core.<$> (o Core..:? "metricTime")
            Core.<*> (o Core..:? "metrics")
      )

instance Core.ToJSON JobMetrics where
  toJSON JobMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("metricTime" Core..=) Core.<$> metricTime,
            ("metrics" Core..=) Core.<$> metrics
          ]
      )

-- | Data disk assignment information for a specific key-range of a sharded computation. Currently we only support UTF-8 character splits to simplify encoding into JSON.
--
-- /See:/ 'newKeyRangeDataDiskAssignment' smart constructor.
data KeyRangeDataDiskAssignment = KeyRangeDataDiskAssignment
  { -- | The name of the data disk where data for this range is stored. This name is local to the Google Cloud Platform project and uniquely identifies the disk within that project, for example \"myproject-1014-104817-4c2-harness-0-disk-1\".
    dataDisk :: (Core.Maybe Core.Text),
    -- | The end (exclusive) of the key range.
    end :: (Core.Maybe Core.Text),
    -- | The start (inclusive) of the key range.
    start :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyRangeDataDiskAssignment' with the minimum fields required to make a request.
newKeyRangeDataDiskAssignment ::
  KeyRangeDataDiskAssignment
newKeyRangeDataDiskAssignment =
  KeyRangeDataDiskAssignment
    { dataDisk = Core.Nothing,
      end = Core.Nothing,
      start = Core.Nothing
    }

instance Core.FromJSON KeyRangeDataDiskAssignment where
  parseJSON =
    Core.withObject
      "KeyRangeDataDiskAssignment"
      ( \o ->
          KeyRangeDataDiskAssignment
            Core.<$> (o Core..:? "dataDisk")
            Core.<*> (o Core..:? "end")
            Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON KeyRangeDataDiskAssignment where
  toJSON KeyRangeDataDiskAssignment {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataDisk" Core..=) Core.<$> dataDisk,
            ("end" Core..=) Core.<$> end,
            ("start" Core..=) Core.<$> start
          ]
      )

-- | Location information for a specific key-range of a sharded computation. Currently we only support UTF-8 character splits to simplify encoding into JSON.
--
-- /See:/ 'newKeyRangeLocation' smart constructor.
data KeyRangeLocation = KeyRangeLocation
  { -- | The name of the data disk where data for this range is stored. This name is local to the Google Cloud Platform project and uniquely identifies the disk within that project, for example \"myproject-1014-104817-4c2-harness-0-disk-1\".
    dataDisk :: (Core.Maybe Core.Text),
    -- | The physical location of this range assignment to be used for streaming computation cross-worker message delivery.
    deliveryEndpoint :: (Core.Maybe Core.Text),
    -- | DEPRECATED. The location of the persistent state for this range, as a persistent directory in the worker local filesystem.
    deprecatedPersistentDirectory :: (Core.Maybe Core.Text),
    -- | The end (exclusive) of the key range.
    end :: (Core.Maybe Core.Text),
    -- | The start (inclusive) of the key range.
    start :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyRangeLocation' with the minimum fields required to make a request.
newKeyRangeLocation ::
  KeyRangeLocation
newKeyRangeLocation =
  KeyRangeLocation
    { dataDisk = Core.Nothing,
      deliveryEndpoint = Core.Nothing,
      deprecatedPersistentDirectory = Core.Nothing,
      end = Core.Nothing,
      start = Core.Nothing
    }

instance Core.FromJSON KeyRangeLocation where
  parseJSON =
    Core.withObject
      "KeyRangeLocation"
      ( \o ->
          KeyRangeLocation
            Core.<$> (o Core..:? "dataDisk")
            Core.<*> (o Core..:? "deliveryEndpoint")
            Core.<*> (o Core..:? "deprecatedPersistentDirectory")
            Core.<*> (o Core..:? "end")
            Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON KeyRangeLocation where
  toJSON KeyRangeLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataDisk" Core..=) Core.<$> dataDisk,
            ("deliveryEndpoint" Core..=) Core.<$> deliveryEndpoint,
            ("deprecatedPersistentDirectory" Core..=)
              Core.<$> deprecatedPersistentDirectory,
            ("end" Core..=) Core.<$> end,
            ("start" Core..=) Core.<$> start
          ]
      )

-- | Launch FlexTemplate Parameter.
--
-- /See:/ 'newLaunchFlexTemplateParameter' smart constructor.
data LaunchFlexTemplateParameter = LaunchFlexTemplateParameter
  { -- | Spec about the container image to launch.
    containerSpec :: (Core.Maybe ContainerSpec),
    -- | Cloud Storage path to a file with json serialized ContainerSpec as content.
    containerSpecGcsPath :: (Core.Maybe Core.Text),
    -- | The runtime environment for the FlexTemplate job
    environment :: (Core.Maybe FlexTemplateRuntimeEnvironment),
    -- | Required. The job name to use for the created job. For update job request, job name should be same as the existing running job.
    jobName :: (Core.Maybe Core.Text),
    -- | Launch options for this flex template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
    launchOptions :: (Core.Maybe LaunchFlexTemplateParameter_LaunchOptions),
    -- | The parameters for FlexTemplate. Ex. {\"num_workers\":\"5\"}
    parameters :: (Core.Maybe LaunchFlexTemplateParameter_Parameters),
    -- | Use this to pass transform/name/mappings for streaming update jobs. Ex:{\"oldTransformName\":\"newTransformName\",...}\'
    transformNameMappings :: (Core.Maybe LaunchFlexTemplateParameter_TransformNameMappings),
    -- | Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.
    update :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchFlexTemplateParameter' with the minimum fields required to make a request.
newLaunchFlexTemplateParameter ::
  LaunchFlexTemplateParameter
newLaunchFlexTemplateParameter =
  LaunchFlexTemplateParameter
    { containerSpec = Core.Nothing,
      containerSpecGcsPath = Core.Nothing,
      environment = Core.Nothing,
      jobName = Core.Nothing,
      launchOptions = Core.Nothing,
      parameters = Core.Nothing,
      transformNameMappings = Core.Nothing,
      update = Core.Nothing
    }

instance Core.FromJSON LaunchFlexTemplateParameter where
  parseJSON =
    Core.withObject
      "LaunchFlexTemplateParameter"
      ( \o ->
          LaunchFlexTemplateParameter
            Core.<$> (o Core..:? "containerSpec")
            Core.<*> (o Core..:? "containerSpecGcsPath")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "jobName")
            Core.<*> (o Core..:? "launchOptions")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "transformNameMappings")
            Core.<*> (o Core..:? "update")
      )

instance Core.ToJSON LaunchFlexTemplateParameter where
  toJSON LaunchFlexTemplateParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerSpec" Core..=) Core.<$> containerSpec,
            ("containerSpecGcsPath" Core..=) Core.<$> containerSpecGcsPath,
            ("environment" Core..=) Core.<$> environment,
            ("jobName" Core..=) Core.<$> jobName,
            ("launchOptions" Core..=) Core.<$> launchOptions,
            ("parameters" Core..=) Core.<$> parameters,
            ("transformNameMappings" Core..=) Core.<$> transformNameMappings,
            ("update" Core..=) Core.<$> update
          ]
      )

-- | Launch options for this flex template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
--
-- /See:/ 'newLaunchFlexTemplateParameter_LaunchOptions' smart constructor.
newtype LaunchFlexTemplateParameter_LaunchOptions = LaunchFlexTemplateParameter_LaunchOptions
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchFlexTemplateParameter_LaunchOptions' with the minimum fields required to make a request.
newLaunchFlexTemplateParameter_LaunchOptions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LaunchFlexTemplateParameter_LaunchOptions
newLaunchFlexTemplateParameter_LaunchOptions additional =
  LaunchFlexTemplateParameter_LaunchOptions
    { additional =
        additional
    }

instance Core.FromJSON LaunchFlexTemplateParameter_LaunchOptions where
  parseJSON =
    Core.withObject
      "LaunchFlexTemplateParameter_LaunchOptions"
      ( \o ->
          LaunchFlexTemplateParameter_LaunchOptions
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LaunchFlexTemplateParameter_LaunchOptions where
  toJSON LaunchFlexTemplateParameter_LaunchOptions {..} =
    Core.toJSON additional

-- | The parameters for FlexTemplate. Ex. {\"num_workers\":\"5\"}
--
-- /See:/ 'newLaunchFlexTemplateParameter_Parameters' smart constructor.
newtype LaunchFlexTemplateParameter_Parameters = LaunchFlexTemplateParameter_Parameters
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchFlexTemplateParameter_Parameters' with the minimum fields required to make a request.
newLaunchFlexTemplateParameter_Parameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LaunchFlexTemplateParameter_Parameters
newLaunchFlexTemplateParameter_Parameters additional =
  LaunchFlexTemplateParameter_Parameters {additional = additional}

instance Core.FromJSON LaunchFlexTemplateParameter_Parameters where
  parseJSON =
    Core.withObject
      "LaunchFlexTemplateParameter_Parameters"
      ( \o ->
          LaunchFlexTemplateParameter_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LaunchFlexTemplateParameter_Parameters where
  toJSON LaunchFlexTemplateParameter_Parameters {..} =
    Core.toJSON additional

-- | Use this to pass transform/name/mappings for streaming update jobs. Ex:{\"oldTransformName\":\"newTransformName\",...}\'
--
-- /See:/ 'newLaunchFlexTemplateParameter_TransformNameMappings' smart constructor.
newtype LaunchFlexTemplateParameter_TransformNameMappings = LaunchFlexTemplateParameter_TransformNameMappings
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchFlexTemplateParameter_TransformNameMappings' with the minimum fields required to make a request.
newLaunchFlexTemplateParameter_TransformNameMappings ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LaunchFlexTemplateParameter_TransformNameMappings
newLaunchFlexTemplateParameter_TransformNameMappings additional =
  LaunchFlexTemplateParameter_TransformNameMappings
    { additional =
        additional
    }

instance
  Core.FromJSON
    LaunchFlexTemplateParameter_TransformNameMappings
  where
  parseJSON =
    Core.withObject
      "LaunchFlexTemplateParameter_TransformNameMappings"
      ( \o ->
          LaunchFlexTemplateParameter_TransformNameMappings
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    LaunchFlexTemplateParameter_TransformNameMappings
  where
  toJSON LaunchFlexTemplateParameter_TransformNameMappings {..} =
    Core.toJSON additional

-- | A request to launch a Cloud Dataflow job from a FlexTemplate.
--
-- /See:/ 'newLaunchFlexTemplateRequest' smart constructor.
data LaunchFlexTemplateRequest = LaunchFlexTemplateRequest
  { -- | Required. Parameter to launch a job form Flex Template.
    launchParameter :: (Core.Maybe LaunchFlexTemplateParameter),
    -- | If true, the request is validated but not actually executed. Defaults to false.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchFlexTemplateRequest' with the minimum fields required to make a request.
newLaunchFlexTemplateRequest ::
  LaunchFlexTemplateRequest
newLaunchFlexTemplateRequest =
  LaunchFlexTemplateRequest
    { launchParameter = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.FromJSON LaunchFlexTemplateRequest where
  parseJSON =
    Core.withObject
      "LaunchFlexTemplateRequest"
      ( \o ->
          LaunchFlexTemplateRequest
            Core.<$> (o Core..:? "launchParameter")
            Core.<*> (o Core..:? "validateOnly")
      )

instance Core.ToJSON LaunchFlexTemplateRequest where
  toJSON LaunchFlexTemplateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("launchParameter" Core..=) Core.<$> launchParameter,
            ("validateOnly" Core..=) Core.<$> validateOnly
          ]
      )

-- | Response to the request to launch a job from Flex Template.
--
-- /See:/ 'newLaunchFlexTemplateResponse' smart constructor.
newtype LaunchFlexTemplateResponse = LaunchFlexTemplateResponse
  { -- | The job that was launched, if the request was not a dry run and the job was successfully launched.
    job :: (Core.Maybe Job)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchFlexTemplateResponse' with the minimum fields required to make a request.
newLaunchFlexTemplateResponse ::
  LaunchFlexTemplateResponse
newLaunchFlexTemplateResponse =
  LaunchFlexTemplateResponse {job = Core.Nothing}

instance Core.FromJSON LaunchFlexTemplateResponse where
  parseJSON =
    Core.withObject
      "LaunchFlexTemplateResponse"
      (\o -> LaunchFlexTemplateResponse Core.<$> (o Core..:? "job"))

instance Core.ToJSON LaunchFlexTemplateResponse where
  toJSON LaunchFlexTemplateResponse {..} =
    Core.object (Core.catMaybes [("job" Core..=) Core.<$> job])

-- | Parameters to provide to the template being launched. Note that the [metadata in the pipeline code] (https:\/\/cloud.google.com\/dataflow\/docs\/guides\/templates\/creating-templates#metadata) determines which runtime parameters are valid.
--
-- /See:/ 'newLaunchTemplateParameters' smart constructor.
data LaunchTemplateParameters = LaunchTemplateParameters
  { -- | The runtime environment for the job.
    environment :: (Core.Maybe RuntimeEnvironment),
    -- | Required. The job name to use for the created job. The name must match the regular expression @[a-z]([-a-z0-9]{0,1022}[a-z0-9])?@
    jobName :: (Core.Maybe Core.Text),
    -- | The runtime parameters to pass to the job.
    parameters :: (Core.Maybe LaunchTemplateParameters_Parameters),
    -- | Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
    transformNameMapping :: (Core.Maybe LaunchTemplateParameters_TransformNameMapping),
    -- | If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
    update :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchTemplateParameters' with the minimum fields required to make a request.
newLaunchTemplateParameters ::
  LaunchTemplateParameters
newLaunchTemplateParameters =
  LaunchTemplateParameters
    { environment = Core.Nothing,
      jobName = Core.Nothing,
      parameters = Core.Nothing,
      transformNameMapping = Core.Nothing,
      update = Core.Nothing
    }

instance Core.FromJSON LaunchTemplateParameters where
  parseJSON =
    Core.withObject
      "LaunchTemplateParameters"
      ( \o ->
          LaunchTemplateParameters
            Core.<$> (o Core..:? "environment")
            Core.<*> (o Core..:? "jobName")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "transformNameMapping")
            Core.<*> (o Core..:? "update")
      )

instance Core.ToJSON LaunchTemplateParameters where
  toJSON LaunchTemplateParameters {..} =
    Core.object
      ( Core.catMaybes
          [ ("environment" Core..=) Core.<$> environment,
            ("jobName" Core..=) Core.<$> jobName,
            ("parameters" Core..=) Core.<$> parameters,
            ("transformNameMapping" Core..=) Core.<$> transformNameMapping,
            ("update" Core..=) Core.<$> update
          ]
      )

-- | The runtime parameters to pass to the job.
--
-- /See:/ 'newLaunchTemplateParameters_Parameters' smart constructor.
newtype LaunchTemplateParameters_Parameters = LaunchTemplateParameters_Parameters
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchTemplateParameters_Parameters' with the minimum fields required to make a request.
newLaunchTemplateParameters_Parameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LaunchTemplateParameters_Parameters
newLaunchTemplateParameters_Parameters additional =
  LaunchTemplateParameters_Parameters {additional = additional}

instance Core.FromJSON LaunchTemplateParameters_Parameters where
  parseJSON =
    Core.withObject
      "LaunchTemplateParameters_Parameters"
      ( \o ->
          LaunchTemplateParameters_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LaunchTemplateParameters_Parameters where
  toJSON LaunchTemplateParameters_Parameters {..} =
    Core.toJSON additional

-- | Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
--
-- /See:/ 'newLaunchTemplateParameters_TransformNameMapping' smart constructor.
newtype LaunchTemplateParameters_TransformNameMapping = LaunchTemplateParameters_TransformNameMapping
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchTemplateParameters_TransformNameMapping' with the minimum fields required to make a request.
newLaunchTemplateParameters_TransformNameMapping ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  LaunchTemplateParameters_TransformNameMapping
newLaunchTemplateParameters_TransformNameMapping additional =
  LaunchTemplateParameters_TransformNameMapping
    { additional =
        additional
    }

instance
  Core.FromJSON
    LaunchTemplateParameters_TransformNameMapping
  where
  parseJSON =
    Core.withObject
      "LaunchTemplateParameters_TransformNameMapping"
      ( \o ->
          LaunchTemplateParameters_TransformNameMapping
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LaunchTemplateParameters_TransformNameMapping where
  toJSON LaunchTemplateParameters_TransformNameMapping {..} =
    Core.toJSON additional

-- | Response to the request to launch a template.
--
-- /See:/ 'newLaunchTemplateResponse' smart constructor.
newtype LaunchTemplateResponse = LaunchTemplateResponse
  { -- | The job that was launched, if the request was not a dry run and the job was successfully launched.
    job :: (Core.Maybe Job)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LaunchTemplateResponse' with the minimum fields required to make a request.
newLaunchTemplateResponse ::
  LaunchTemplateResponse
newLaunchTemplateResponse =
  LaunchTemplateResponse {job = Core.Nothing}

instance Core.FromJSON LaunchTemplateResponse where
  parseJSON =
    Core.withObject
      "LaunchTemplateResponse"
      (\o -> LaunchTemplateResponse Core.<$> (o Core..:? "job"))

instance Core.ToJSON LaunchTemplateResponse where
  toJSON LaunchTemplateResponse {..} =
    Core.object (Core.catMaybes [("job" Core..=) Core.<$> job])

-- | Request to lease WorkItems.
--
-- /See:/ 'newLeaseWorkItemRequest' smart constructor.
data LeaseWorkItemRequest = LeaseWorkItemRequest
  { -- | The current timestamp at the worker.
    currentWorkerTime :: (Core.Maybe Core.DateTime),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the WorkItem\'s job.
    location :: (Core.Maybe Core.Text),
    -- | Optional. The project number of the project this worker belongs to.
    projectNumber :: (Core.Maybe Core.Int64),
    -- | The initial lease period.
    requestedLeaseDuration :: (Core.Maybe Core.Duration),
    -- | Untranslated bag-of-bytes WorkRequest from UnifiedWorker.
    unifiedWorkerRequest :: (Core.Maybe LeaseWorkItemRequest_UnifiedWorkerRequest),
    -- | Filter for WorkItem type.
    workItemTypes :: (Core.Maybe [Core.Text]),
    -- | Worker capabilities. WorkItems might be limited to workers with specific capabilities.
    workerCapabilities :: (Core.Maybe [Core.Text]),
    -- | Identifies the worker leasing work -- typically the ID of the virtual machine running the worker.
    workerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaseWorkItemRequest' with the minimum fields required to make a request.
newLeaseWorkItemRequest ::
  LeaseWorkItemRequest
newLeaseWorkItemRequest =
  LeaseWorkItemRequest
    { currentWorkerTime = Core.Nothing,
      location = Core.Nothing,
      projectNumber = Core.Nothing,
      requestedLeaseDuration = Core.Nothing,
      unifiedWorkerRequest = Core.Nothing,
      workItemTypes = Core.Nothing,
      workerCapabilities = Core.Nothing,
      workerId = Core.Nothing
    }

instance Core.FromJSON LeaseWorkItemRequest where
  parseJSON =
    Core.withObject
      "LeaseWorkItemRequest"
      ( \o ->
          LeaseWorkItemRequest
            Core.<$> (o Core..:? "currentWorkerTime")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "projectNumber" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "requestedLeaseDuration")
            Core.<*> (o Core..:? "unifiedWorkerRequest")
            Core.<*> (o Core..:? "workItemTypes")
            Core.<*> (o Core..:? "workerCapabilities")
            Core.<*> (o Core..:? "workerId")
      )

instance Core.ToJSON LeaseWorkItemRequest where
  toJSON LeaseWorkItemRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentWorkerTime" Core..=) Core.<$> currentWorkerTime,
            ("location" Core..=) Core.<$> location,
            ("projectNumber" Core..=)
              Core.. Core.AsText
              Core.<$> projectNumber,
            ("requestedLeaseDuration" Core..=) Core.<$> requestedLeaseDuration,
            ("unifiedWorkerRequest" Core..=) Core.<$> unifiedWorkerRequest,
            ("workItemTypes" Core..=) Core.<$> workItemTypes,
            ("workerCapabilities" Core..=) Core.<$> workerCapabilities,
            ("workerId" Core..=) Core.<$> workerId
          ]
      )

-- | Untranslated bag-of-bytes WorkRequest from UnifiedWorker.
--
-- /See:/ 'newLeaseWorkItemRequest_UnifiedWorkerRequest' smart constructor.
newtype LeaseWorkItemRequest_UnifiedWorkerRequest = LeaseWorkItemRequest_UnifiedWorkerRequest
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaseWorkItemRequest_UnifiedWorkerRequest' with the minimum fields required to make a request.
newLeaseWorkItemRequest_UnifiedWorkerRequest ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  LeaseWorkItemRequest_UnifiedWorkerRequest
newLeaseWorkItemRequest_UnifiedWorkerRequest additional =
  LeaseWorkItemRequest_UnifiedWorkerRequest
    { additional =
        additional
    }

instance Core.FromJSON LeaseWorkItemRequest_UnifiedWorkerRequest where
  parseJSON =
    Core.withObject
      "LeaseWorkItemRequest_UnifiedWorkerRequest"
      ( \o ->
          LeaseWorkItemRequest_UnifiedWorkerRequest
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LeaseWorkItemRequest_UnifiedWorkerRequest where
  toJSON LeaseWorkItemRequest_UnifiedWorkerRequest {..} =
    Core.toJSON additional

-- | Response to a request to lease WorkItems.
--
-- /See:/ 'newLeaseWorkItemResponse' smart constructor.
data LeaseWorkItemResponse = LeaseWorkItemResponse
  { -- | Untranslated bag-of-bytes WorkResponse for UnifiedWorker.
    unifiedWorkerResponse :: (Core.Maybe LeaseWorkItemResponse_UnifiedWorkerResponse),
    -- | A list of the leased WorkItems.
    workItems :: (Core.Maybe [WorkItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaseWorkItemResponse' with the minimum fields required to make a request.
newLeaseWorkItemResponse ::
  LeaseWorkItemResponse
newLeaseWorkItemResponse =
  LeaseWorkItemResponse
    { unifiedWorkerResponse = Core.Nothing,
      workItems = Core.Nothing
    }

instance Core.FromJSON LeaseWorkItemResponse where
  parseJSON =
    Core.withObject
      "LeaseWorkItemResponse"
      ( \o ->
          LeaseWorkItemResponse
            Core.<$> (o Core..:? "unifiedWorkerResponse")
            Core.<*> (o Core..:? "workItems")
      )

instance Core.ToJSON LeaseWorkItemResponse where
  toJSON LeaseWorkItemResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("unifiedWorkerResponse" Core..=) Core.<$> unifiedWorkerResponse,
            ("workItems" Core..=) Core.<$> workItems
          ]
      )

-- | Untranslated bag-of-bytes WorkResponse for UnifiedWorker.
--
-- /See:/ 'newLeaseWorkItemResponse_UnifiedWorkerResponse' smart constructor.
newtype LeaseWorkItemResponse_UnifiedWorkerResponse = LeaseWorkItemResponse_UnifiedWorkerResponse
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaseWorkItemResponse_UnifiedWorkerResponse' with the minimum fields required to make a request.
newLeaseWorkItemResponse_UnifiedWorkerResponse ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  LeaseWorkItemResponse_UnifiedWorkerResponse
newLeaseWorkItemResponse_UnifiedWorkerResponse additional =
  LeaseWorkItemResponse_UnifiedWorkerResponse
    { additional =
        additional
    }

instance Core.FromJSON LeaseWorkItemResponse_UnifiedWorkerResponse where
  parseJSON =
    Core.withObject
      "LeaseWorkItemResponse_UnifiedWorkerResponse"
      ( \o ->
          LeaseWorkItemResponse_UnifiedWorkerResponse
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LeaseWorkItemResponse_UnifiedWorkerResponse where
  toJSON LeaseWorkItemResponse_UnifiedWorkerResponse {..} =
    Core.toJSON additional

-- | Linear buckets with the following boundaries for indices in 0 to n-1. - i in [0, n-1]: [start + (i)/width, start + (i+1)/width)
--
-- /See:/ 'newLinear' smart constructor.
data Linear = Linear
  { -- | Must be greater than 0.
    numberOfBuckets :: (Core.Maybe Core.Int32),
    -- | Lower bound of the first bucket.
    start :: (Core.Maybe Core.Double),
    -- | Distance between bucket boundaries. Must be greater than 0.
    width :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Linear' with the minimum fields required to make a request.
newLinear ::
  Linear
newLinear =
  Linear
    { numberOfBuckets = Core.Nothing,
      start = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Linear where
  parseJSON =
    Core.withObject
      "Linear"
      ( \o ->
          Linear
            Core.<$> (o Core..:? "numberOfBuckets")
            Core.<*> (o Core..:? "start")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Linear where
  toJSON Linear {..} =
    Core.object
      ( Core.catMaybes
          [ ("numberOfBuckets" Core..=) Core.<$> numberOfBuckets,
            ("start" Core..=) Core.<$> start,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Response to a request to list job messages.
--
-- /See:/ 'newListJobMessagesResponse' smart constructor.
data ListJobMessagesResponse = ListJobMessagesResponse
  { -- | Autoscaling events in ascending timestamp order.
    autoscalingEvents :: (Core.Maybe [AutoscalingEvent]),
    -- | Messages in ascending timestamp order.
    jobMessages :: (Core.Maybe [JobMessage]),
    -- | The token to obtain the next page of results if there are more.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListJobMessagesResponse' with the minimum fields required to make a request.
newListJobMessagesResponse ::
  ListJobMessagesResponse
newListJobMessagesResponse =
  ListJobMessagesResponse
    { autoscalingEvents = Core.Nothing,
      jobMessages = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListJobMessagesResponse where
  parseJSON =
    Core.withObject
      "ListJobMessagesResponse"
      ( \o ->
          ListJobMessagesResponse
            Core.<$> (o Core..:? "autoscalingEvents")
            Core.<*> (o Core..:? "jobMessages")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListJobMessagesResponse where
  toJSON ListJobMessagesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoscalingEvents" Core..=) Core.<$> autoscalingEvents,
            ("jobMessages" Core..=) Core.<$> jobMessages,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response to a request to list Cloud Dataflow jobs in a project. This might be a partial response, depending on the page size in the ListJobsRequest. However, if the project does not have any jobs, an instance of ListJobsResponse is not returned and the requests\'s response body is empty {}.
--
-- /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse
  { -- | Zero or more messages describing the [regional endpoints] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that failed to respond.
    failedLocation :: (Core.Maybe [FailedLocation]),
    -- | A subset of the requested job information.
    jobs :: (Core.Maybe [Job]),
    -- | Set if there may be more results than fit in this response.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
newListJobsResponse ::
  ListJobsResponse
newListJobsResponse =
  ListJobsResponse
    { failedLocation = Core.Nothing,
      jobs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListJobsResponse where
  parseJSON =
    Core.withObject
      "ListJobsResponse"
      ( \o ->
          ListJobsResponse
            Core.<$> (o Core..:? "failedLocation")
            Core.<*> (o Core..:? "jobs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListJobsResponse where
  toJSON ListJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("failedLocation" Core..=) Core.<$> failedLocation,
            ("jobs" Core..=) Core.<$> jobs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | List of snapshots.
--
-- /See:/ 'newListSnapshotsResponse' smart constructor.
newtype ListSnapshotsResponse = ListSnapshotsResponse
  { -- | Returned snapshots.
    snapshots :: (Core.Maybe [Snapshot])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSnapshotsResponse' with the minimum fields required to make a request.
newListSnapshotsResponse ::
  ListSnapshotsResponse
newListSnapshotsResponse =
  ListSnapshotsResponse {snapshots = Core.Nothing}

instance Core.FromJSON ListSnapshotsResponse where
  parseJSON =
    Core.withObject
      "ListSnapshotsResponse"
      (\o -> ListSnapshotsResponse Core.<$> (o Core..:? "snapshots"))

instance Core.ToJSON ListSnapshotsResponse where
  toJSON ListSnapshotsResponse {..} =
    Core.object
      (Core.catMaybes [("snapshots" Core..=) Core.<$> snapshots])

-- | MapTask consists of an ordered set of instructions, each of which describes one particular low-level operation for the worker to perform in order to accomplish the MapTask\'s WorkItem. Each instruction must appear in the list before any instructions which depends on its output.
--
-- /See:/ 'newMapTask' smart constructor.
data MapTask = MapTask
  { -- | Counter prefix that can be used to prefix counters. Not currently used in Dataflow.
    counterPrefix :: (Core.Maybe Core.Text),
    -- | The instructions in the MapTask.
    instructions :: (Core.Maybe [ParallelInstruction]),
    -- | System-defined name of the stage containing this MapTask. Unique across the workflow.
    stageName :: (Core.Maybe Core.Text),
    -- | System-defined name of this MapTask. Unique across the workflow.
    systemName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MapTask' with the minimum fields required to make a request.
newMapTask ::
  MapTask
newMapTask =
  MapTask
    { counterPrefix = Core.Nothing,
      instructions = Core.Nothing,
      stageName = Core.Nothing,
      systemName = Core.Nothing
    }

instance Core.FromJSON MapTask where
  parseJSON =
    Core.withObject
      "MapTask"
      ( \o ->
          MapTask
            Core.<$> (o Core..:? "counterPrefix")
            Core.<*> (o Core..:? "instructions")
            Core.<*> (o Core..:? "stageName")
            Core.<*> (o Core..:? "systemName")
      )

instance Core.ToJSON MapTask where
  toJSON MapTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("counterPrefix" Core..=) Core.<$> counterPrefix,
            ("instructions" Core..=) Core.<$> instructions,
            ("stageName" Core..=) Core.<$> stageName,
            ("systemName" Core..=) Core.<$> systemName
          ]
      )

-- | Information about the memory usage of a worker or a container within a worker.
--
-- /See:/ 'newMemInfo' smart constructor.
data MemInfo = MemInfo
  { -- | Instantenous memory limit in bytes.
    currentLimitBytes :: (Core.Maybe Core.Word64),
    -- | Number of Out of Memory (OOM) events recorded since the previous measurement.
    currentOoms :: (Core.Maybe Core.Int64),
    -- | Instantenous memory (RSS) size in bytes.
    currentRssBytes :: (Core.Maybe Core.Word64),
    -- | Timestamp of the measurement.
    timestamp :: (Core.Maybe Core.DateTime),
    -- | Total memory (RSS) usage since start up in GB * ms.
    totalGbMs :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemInfo' with the minimum fields required to make a request.
newMemInfo ::
  MemInfo
newMemInfo =
  MemInfo
    { currentLimitBytes = Core.Nothing,
      currentOoms = Core.Nothing,
      currentRssBytes = Core.Nothing,
      timestamp = Core.Nothing,
      totalGbMs = Core.Nothing
    }

instance Core.FromJSON MemInfo where
  parseJSON =
    Core.withObject
      "MemInfo"
      ( \o ->
          MemInfo
            Core.<$> (o Core..:? "currentLimitBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "currentOoms" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "currentRssBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "timestamp")
            Core.<*> (o Core..:? "totalGbMs" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON MemInfo where
  toJSON MemInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentLimitBytes" Core..=)
              Core.. Core.AsText
              Core.<$> currentLimitBytes,
            ("currentOoms" Core..=) Core.. Core.AsText Core.<$> currentOoms,
            ("currentRssBytes" Core..=)
              Core.. Core.AsText
              Core.<$> currentRssBytes,
            ("timestamp" Core..=) Core.<$> timestamp,
            ("totalGbMs" Core..=) Core.. Core.AsText Core.<$> totalGbMs
          ]
      )

-- | The metric short id is returned to the user alongside an offset into ReportWorkItemStatusRequest
--
-- /See:/ 'newMetricShortId' smart constructor.
data MetricShortId = MetricShortId
  { -- | The index of the corresponding metric in the ReportWorkItemStatusRequest. Required.
    metricIndex :: (Core.Maybe Core.Int32),
    -- | The service-generated short identifier for the metric.
    shortId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricShortId' with the minimum fields required to make a request.
newMetricShortId ::
  MetricShortId
newMetricShortId =
  MetricShortId {metricIndex = Core.Nothing, shortId = Core.Nothing}

instance Core.FromJSON MetricShortId where
  parseJSON =
    Core.withObject
      "MetricShortId"
      ( \o ->
          MetricShortId
            Core.<$> (o Core..:? "metricIndex")
            Core.<*> (o Core..:? "shortId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON MetricShortId where
  toJSON MetricShortId {..} =
    Core.object
      ( Core.catMaybes
          [ ("metricIndex" Core..=) Core.<$> metricIndex,
            ("shortId" Core..=) Core.. Core.AsText Core.<$> shortId
          ]
      )

-- | Identifies a metric, by describing the source which generated the metric.
--
-- /See:/ 'newMetricStructuredName' smart constructor.
data MetricStructuredName = MetricStructuredName
  { -- | Zero or more labeled fields which identify the part of the job this metric is associated with, such as the name of a step or collection. For example, built-in counters associated with steps will have context[\'step\'] = . Counters associated with PCollections in the SDK will have context[\'pcollection\'] = .
    context :: (Core.Maybe MetricStructuredName_Context),
    -- | Worker-defined metric name.
    name :: (Core.Maybe Core.Text),
    -- | Origin (namespace) of metric name. May be blank for user-define metrics; will be \"dataflow\" for metrics defined by the Dataflow service or SDK.
    origin :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricStructuredName' with the minimum fields required to make a request.
newMetricStructuredName ::
  MetricStructuredName
newMetricStructuredName =
  MetricStructuredName
    { context = Core.Nothing,
      name = Core.Nothing,
      origin = Core.Nothing
    }

instance Core.FromJSON MetricStructuredName where
  parseJSON =
    Core.withObject
      "MetricStructuredName"
      ( \o ->
          MetricStructuredName
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "origin")
      )

instance Core.ToJSON MetricStructuredName where
  toJSON MetricStructuredName {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("name" Core..=) Core.<$> name,
            ("origin" Core..=) Core.<$> origin
          ]
      )

-- | Zero or more labeled fields which identify the part of the job this metric is associated with, such as the name of a step or collection. For example, built-in counters associated with steps will have context[\'step\'] = . Counters associated with PCollections in the SDK will have context[\'pcollection\'] = .
--
-- /See:/ 'newMetricStructuredName_Context' smart constructor.
newtype MetricStructuredName_Context = MetricStructuredName_Context
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricStructuredName_Context' with the minimum fields required to make a request.
newMetricStructuredName_Context ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  MetricStructuredName_Context
newMetricStructuredName_Context additional =
  MetricStructuredName_Context {additional = additional}

instance Core.FromJSON MetricStructuredName_Context where
  parseJSON =
    Core.withObject
      "MetricStructuredName_Context"
      ( \o ->
          MetricStructuredName_Context Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON MetricStructuredName_Context where
  toJSON MetricStructuredName_Context {..} = Core.toJSON additional

-- | Describes the state of a metric.
--
-- /See:/ 'newMetricUpdate' smart constructor.
data MetricUpdate = MetricUpdate
  { -- | True if this metric is reported as the total cumulative aggregate value accumulated since the worker started working on this WorkItem. By default this is false, indicating that this metric is reported as a delta that is not associated with any WorkItem.
    cumulative :: (Core.Maybe Core.Bool),
    -- | A struct value describing properties of a distribution of numeric values.
    distribution :: (Core.Maybe Core.Value),
    -- | A struct value describing properties of a Gauge. Metrics of gauge type show the value of a metric across time, and is aggregated based on the newest value.
    gauge :: (Core.Maybe Core.Value),
    -- | Worker-computed aggregate value for internal use by the Dataflow service.
    internal :: (Core.Maybe Core.Value),
    -- | Metric aggregation kind. The possible metric aggregation kinds are \"Sum\", \"Max\", \"Min\", \"Mean\", \"Set\", \"And\", \"Or\", and \"Distribution\". The specified aggregation kind is case-insensitive. If omitted, this is not an aggregated value but instead a single metric sample value.
    kind :: (Core.Maybe Core.Text),
    -- | Worker-computed aggregate value for the \"Mean\" aggregation kind. This holds the count of the aggregated values and is used in combination with mean_sum above to obtain the actual mean aggregate value. The only possible value type is Long.
    meanCount :: (Core.Maybe Core.Value),
    -- | Worker-computed aggregate value for the \"Mean\" aggregation kind. This holds the sum of the aggregated values and is used in combination with mean_count below to obtain the actual mean aggregate value. The only possible value types are Long and Double.
    meanSum :: (Core.Maybe Core.Value),
    -- | Name of the metric.
    name :: (Core.Maybe MetricStructuredName),
    -- | Worker-computed aggregate value for aggregation kinds \"Sum\", \"Max\", \"Min\", \"And\", and \"Or\". The possible value types are Long, Double, and Boolean.
    scalar :: (Core.Maybe Core.Value),
    -- | Worker-computed aggregate value for the \"Set\" aggregation kind. The only possible value type is a list of Values whose type can be Long, Double, or String, according to the metric\'s type. All Values in the list must be of the same type.
    set :: (Core.Maybe Core.Value),
    -- | Timestamp associated with the metric value. Optional when workers are reporting work progress; it will be filled in responses from the metrics API.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricUpdate' with the minimum fields required to make a request.
newMetricUpdate ::
  MetricUpdate
newMetricUpdate =
  MetricUpdate
    { cumulative = Core.Nothing,
      distribution = Core.Nothing,
      gauge = Core.Nothing,
      internal = Core.Nothing,
      kind = Core.Nothing,
      meanCount = Core.Nothing,
      meanSum = Core.Nothing,
      name = Core.Nothing,
      scalar = Core.Nothing,
      set = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON MetricUpdate where
  parseJSON =
    Core.withObject
      "MetricUpdate"
      ( \o ->
          MetricUpdate
            Core.<$> (o Core..:? "cumulative")
            Core.<*> (o Core..:? "distribution")
            Core.<*> (o Core..:? "gauge")
            Core.<*> (o Core..:? "internal")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "meanCount")
            Core.<*> (o Core..:? "meanSum")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "scalar")
            Core.<*> (o Core..:? "set")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON MetricUpdate where
  toJSON MetricUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("cumulative" Core..=) Core.<$> cumulative,
            ("distribution" Core..=) Core.<$> distribution,
            ("gauge" Core..=) Core.<$> gauge,
            ("internal" Core..=) Core.<$> internal,
            ("kind" Core..=) Core.<$> kind,
            ("meanCount" Core..=) Core.<$> meanCount,
            ("meanSum" Core..=) Core.<$> meanSum,
            ("name" Core..=) Core.<$> name,
            ("scalar" Core..=) Core.<$> scalar,
            ("set" Core..=) Core.<$> set,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The value of a metric along with its name and labels.
--
-- /See:/ 'newMetricValue' smart constructor.
data MetricValue = MetricValue
  { -- | Base name for this metric.
    metric :: (Core.Maybe Core.Text),
    -- | Optional. Set of metric labels for this metric.
    metricLabels :: (Core.Maybe MetricValue_MetricLabels),
    -- | Non-cumulative int64 value of this metric.
    valueGauge64 :: (Core.Maybe DataflowGaugeValue),
    -- | Histogram value of this metric.
    valueHistogram :: (Core.Maybe DataflowHistogramValue),
    -- | Integer value of this metric.
    valueInt64 :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricValue' with the minimum fields required to make a request.
newMetricValue ::
  MetricValue
newMetricValue =
  MetricValue
    { metric = Core.Nothing,
      metricLabels = Core.Nothing,
      valueGauge64 = Core.Nothing,
      valueHistogram = Core.Nothing,
      valueInt64 = Core.Nothing
    }

instance Core.FromJSON MetricValue where
  parseJSON =
    Core.withObject
      "MetricValue"
      ( \o ->
          MetricValue
            Core.<$> (o Core..:? "metric")
            Core.<*> (o Core..:? "metricLabels")
            Core.<*> (o Core..:? "valueGauge64")
            Core.<*> (o Core..:? "valueHistogram")
            Core.<*> (o Core..:? "valueInt64" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON MetricValue where
  toJSON MetricValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("metric" Core..=) Core.<$> metric,
            ("metricLabels" Core..=) Core.<$> metricLabels,
            ("valueGauge64" Core..=) Core.<$> valueGauge64,
            ("valueHistogram" Core..=) Core.<$> valueHistogram,
            ("valueInt64" Core..=) Core.. Core.AsText Core.<$> valueInt64
          ]
      )

-- | Optional. Set of metric labels for this metric.
--
-- /See:/ 'newMetricValue_MetricLabels' smart constructor.
newtype MetricValue_MetricLabels = MetricValue_MetricLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricValue_MetricLabels' with the minimum fields required to make a request.
newMetricValue_MetricLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  MetricValue_MetricLabels
newMetricValue_MetricLabels additional =
  MetricValue_MetricLabels {additional = additional}

instance Core.FromJSON MetricValue_MetricLabels where
  parseJSON =
    Core.withObject
      "MetricValue_MetricLabels"
      (\o -> MetricValue_MetricLabels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON MetricValue_MetricLabels where
  toJSON MetricValue_MetricLabels {..} = Core.toJSON additional

-- | Describes mounted data disk.
--
-- /See:/ 'newMountedDataDisk' smart constructor.
newtype MountedDataDisk = MountedDataDisk
  { -- | The name of the data disk. This name is local to the Google Cloud Platform project and uniquely identifies the disk within that project, for example \"myproject-1014-104817-4c2-harness-0-disk-1\".
    dataDisk :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MountedDataDisk' with the minimum fields required to make a request.
newMountedDataDisk ::
  MountedDataDisk
newMountedDataDisk = MountedDataDisk {dataDisk = Core.Nothing}

instance Core.FromJSON MountedDataDisk where
  parseJSON =
    Core.withObject
      "MountedDataDisk"
      (\o -> MountedDataDisk Core.<$> (o Core..:? "dataDisk"))

instance Core.ToJSON MountedDataDisk where
  toJSON MountedDataDisk {..} =
    Core.object
      (Core.catMaybes [("dataDisk" Core..=) Core.<$> dataDisk])

-- | Information about an output of a multi-output DoFn.
--
-- /See:/ 'newMultiOutputInfo' smart constructor.
newtype MultiOutputInfo = MultiOutputInfo
  { -- | The id of the tag the user code will emit to this output by; this should correspond to the tag of some SideInputInfo.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MultiOutputInfo' with the minimum fields required to make a request.
newMultiOutputInfo ::
  MultiOutputInfo
newMultiOutputInfo = MultiOutputInfo {tag = Core.Nothing}

instance Core.FromJSON MultiOutputInfo where
  parseJSON =
    Core.withObject
      "MultiOutputInfo"
      (\o -> MultiOutputInfo Core.<$> (o Core..:? "tag"))

instance Core.ToJSON MultiOutputInfo where
  toJSON MultiOutputInfo {..} =
    Core.object (Core.catMaybes [("tag" Core..=) Core.<$> tag])

-- | Basic metadata about a counter.
--
-- /See:/ 'newNameAndKind' smart constructor.
data NameAndKind = NameAndKind
  { -- | Counter aggregation kind.
    kind :: (Core.Maybe NameAndKind_Kind),
    -- | Name of the counter.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NameAndKind' with the minimum fields required to make a request.
newNameAndKind ::
  NameAndKind
newNameAndKind =
  NameAndKind {kind = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON NameAndKind where
  parseJSON =
    Core.withObject
      "NameAndKind"
      ( \o ->
          NameAndKind
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON NameAndKind where
  toJSON NameAndKind {..} =
    Core.object
      ( Core.catMaybes
          [("kind" Core..=) Core.<$> kind, ("name" Core..=) Core.<$> name]
      )

-- | Statistics for the underflow and overflow bucket.
--
-- /See:/ 'newOutlierStats' smart constructor.
data OutlierStats = OutlierStats
  { -- | Number of values that are larger than the upper bound of the largest bucket.
    overflowCount :: (Core.Maybe Core.Int64),
    -- | Mean of values in the overflow bucket.
    overflowMean :: (Core.Maybe Core.Double),
    -- | Number of values that are smaller than the lower bound of the smallest bucket.
    underflowCount :: (Core.Maybe Core.Int64),
    -- | Mean of values in the undeflow bucket.
    underflowMean :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutlierStats' with the minimum fields required to make a request.
newOutlierStats ::
  OutlierStats
newOutlierStats =
  OutlierStats
    { overflowCount = Core.Nothing,
      overflowMean = Core.Nothing,
      underflowCount = Core.Nothing,
      underflowMean = Core.Nothing
    }

instance Core.FromJSON OutlierStats where
  parseJSON =
    Core.withObject
      "OutlierStats"
      ( \o ->
          OutlierStats
            Core.<$> (o Core..:? "overflowCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "overflowMean")
            Core.<*> (o Core..:? "underflowCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "underflowMean")
      )

instance Core.ToJSON OutlierStats where
  toJSON OutlierStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("overflowCount" Core..=)
              Core.. Core.AsText
              Core.<$> overflowCount,
            ("overflowMean" Core..=) Core.<$> overflowMean,
            ("underflowCount" Core..=)
              Core.. Core.AsText
              Core.<$> underflowCount,
            ("underflowMean" Core..=) Core.<$> underflowMean
          ]
      )

-- | The packages that must be installed in order for a worker to run the steps of the Cloud Dataflow job that will be assigned to its worker pool. This is the mechanism by which the Cloud Dataflow SDK causes code to be loaded onto the workers. For example, the Cloud Dataflow Java SDK might use this to install jars containing the user\'s code and all of the various dependencies (libraries, data files, etc.) required in order for that code to run.
--
-- /See:/ 'newPackage' smart constructor.
data Package = Package
  { -- | The resource to read the package from. The supported resource type is: Google Cloud Storage: storage.googleapis.com\/{bucket} bucket.storage.googleapis.com\/
    location :: (Core.Maybe Core.Text),
    -- | The name of the package.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Package' with the minimum fields required to make a request.
newPackage ::
  Package
newPackage = Package {location = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Package where
  parseJSON =
    Core.withObject
      "Package"
      ( \o ->
          Package
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Package where
  toJSON Package {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | An instruction that does a ParDo operation. Takes one main input and zero or more side inputs, and produces zero or more outputs. Runs user code.
--
-- /See:/ 'newParDoInstruction' smart constructor.
data ParDoInstruction = ParDoInstruction
  { -- | The input.
    input :: (Core.Maybe InstructionInput),
    -- | Information about each of the outputs, if user_fn is a MultiDoFn.
    multiOutputInfos :: (Core.Maybe [MultiOutputInfo]),
    -- | The number of outputs.
    numOutputs :: (Core.Maybe Core.Int32),
    -- | Zero or more side inputs.
    sideInputs :: (Core.Maybe [SideInputInfo]),
    -- | The user function to invoke.
    userFn :: (Core.Maybe ParDoInstruction_UserFn)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParDoInstruction' with the minimum fields required to make a request.
newParDoInstruction ::
  ParDoInstruction
newParDoInstruction =
  ParDoInstruction
    { input = Core.Nothing,
      multiOutputInfos = Core.Nothing,
      numOutputs = Core.Nothing,
      sideInputs = Core.Nothing,
      userFn = Core.Nothing
    }

instance Core.FromJSON ParDoInstruction where
  parseJSON =
    Core.withObject
      "ParDoInstruction"
      ( \o ->
          ParDoInstruction
            Core.<$> (o Core..:? "input")
            Core.<*> (o Core..:? "multiOutputInfos")
            Core.<*> (o Core..:? "numOutputs")
            Core.<*> (o Core..:? "sideInputs")
            Core.<*> (o Core..:? "userFn")
      )

instance Core.ToJSON ParDoInstruction where
  toJSON ParDoInstruction {..} =
    Core.object
      ( Core.catMaybes
          [ ("input" Core..=) Core.<$> input,
            ("multiOutputInfos" Core..=) Core.<$> multiOutputInfos,
            ("numOutputs" Core..=) Core.<$> numOutputs,
            ("sideInputs" Core..=) Core.<$> sideInputs,
            ("userFn" Core..=) Core.<$> userFn
          ]
      )

-- | The user function to invoke.
--
-- /See:/ 'newParDoInstruction_UserFn' smart constructor.
newtype ParDoInstruction_UserFn = ParDoInstruction_UserFn
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParDoInstruction_UserFn' with the minimum fields required to make a request.
newParDoInstruction_UserFn ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  ParDoInstruction_UserFn
newParDoInstruction_UserFn additional =
  ParDoInstruction_UserFn {additional = additional}

instance Core.FromJSON ParDoInstruction_UserFn where
  parseJSON =
    Core.withObject
      "ParDoInstruction_UserFn"
      (\o -> ParDoInstruction_UserFn Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ParDoInstruction_UserFn where
  toJSON ParDoInstruction_UserFn {..} = Core.toJSON additional

-- | Describes a particular operation comprising a MapTask.
--
-- /See:/ 'newParallelInstruction' smart constructor.
data ParallelInstruction = ParallelInstruction
  { -- | Additional information for Flatten instructions.
    flatten :: (Core.Maybe FlattenInstruction),
    -- | User-provided name of this operation.
    name :: (Core.Maybe Core.Text),
    -- | System-defined name for the operation in the original workflow graph.
    originalName :: (Core.Maybe Core.Text),
    -- | Describes the outputs of the instruction.
    outputs :: (Core.Maybe [InstructionOutput]),
    -- | Additional information for ParDo instructions.
    parDo :: (Core.Maybe ParDoInstruction),
    -- | Additional information for PartialGroupByKey instructions.
    partialGroupByKey :: (Core.Maybe PartialGroupByKeyInstruction),
    -- | Additional information for Read instructions.
    read :: (Core.Maybe ReadInstruction),
    -- | System-defined name of this operation. Unique across the workflow.
    systemName :: (Core.Maybe Core.Text),
    -- | Additional information for Write instructions.
    write :: (Core.Maybe WriteInstruction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParallelInstruction' with the minimum fields required to make a request.
newParallelInstruction ::
  ParallelInstruction
newParallelInstruction =
  ParallelInstruction
    { flatten = Core.Nothing,
      name = Core.Nothing,
      originalName = Core.Nothing,
      outputs = Core.Nothing,
      parDo = Core.Nothing,
      partialGroupByKey = Core.Nothing,
      read = Core.Nothing,
      systemName = Core.Nothing,
      write = Core.Nothing
    }

instance Core.FromJSON ParallelInstruction where
  parseJSON =
    Core.withObject
      "ParallelInstruction"
      ( \o ->
          ParallelInstruction
            Core.<$> (o Core..:? "flatten")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "originalName")
            Core.<*> (o Core..:? "outputs")
            Core.<*> (o Core..:? "parDo")
            Core.<*> (o Core..:? "partialGroupByKey")
            Core.<*> (o Core..:? "read")
            Core.<*> (o Core..:? "systemName")
            Core.<*> (o Core..:? "write")
      )

instance Core.ToJSON ParallelInstruction where
  toJSON ParallelInstruction {..} =
    Core.object
      ( Core.catMaybes
          [ ("flatten" Core..=) Core.<$> flatten,
            ("name" Core..=) Core.<$> name,
            ("originalName" Core..=) Core.<$> originalName,
            ("outputs" Core..=) Core.<$> outputs,
            ("parDo" Core..=) Core.<$> parDo,
            ("partialGroupByKey" Core..=) Core.<$> partialGroupByKey,
            ("read" Core..=) Core.<$> read,
            ("systemName" Core..=) Core.<$> systemName,
            ("write" Core..=) Core.<$> write
          ]
      )

-- | Structured data associated with this message.
--
-- /See:/ 'newParameter' smart constructor.
data Parameter = Parameter
  { -- | Key or name for this parameter.
    key :: (Core.Maybe Core.Text),
    -- | Value for this parameter.
    value :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
newParameter ::
  Parameter
newParameter = Parameter {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Parameter where
  parseJSON =
    Core.withObject
      "Parameter"
      ( \o ->
          Parameter
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Parameter where
  toJSON Parameter {..} =
    Core.object
      ( Core.catMaybes
          [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
      )

-- | Metadata for a specific parameter.
--
-- /See:/ 'newParameterMetadata' smart constructor.
data ParameterMetadata = ParameterMetadata
  { -- | Optional. Additional metadata for describing this parameter.
    customMetadata :: (Core.Maybe ParameterMetadata_CustomMetadata),
    -- | Optional. The default values will pre-populate the parameter with the given value from the proto. If default_value is left empty, the parameter will be populated with a default of the relevant type, e.g. false for a boolean.
    defaultValue :: (Core.Maybe Core.Text),
    -- | Optional. The options shown when ENUM ParameterType is specified.
    enumOptions :: (Core.Maybe [ParameterMetadataEnumOption]),
    -- | Optional. Specifies a group name for this parameter to be rendered under. Group header text will be rendered exactly as specified in this field. Only considered when parent_name is NOT provided.
    groupName :: (Core.Maybe Core.Text),
    -- | Required. The help text to display for the parameter.
    helpText :: (Core.Maybe Core.Text),
    -- | Optional. Whether the parameter should be hidden in the UI.
    hiddenUi :: (Core.Maybe Core.Bool),
    -- | Optional. Whether the parameter is optional. Defaults to false.
    isOptional :: (Core.Maybe Core.Bool),
    -- | Required. The label to display for the parameter.
    label :: (Core.Maybe Core.Text),
    -- | Required. The name of the parameter.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The type of the parameter. Used for selecting input picker.
    paramType :: (Core.Maybe ParameterMetadata_ParamType),
    -- | Optional. Specifies the name of the parent parameter. Used in conjunction with \'parent/trigger/values\' to make this parameter conditional (will only be rendered conditionally). Should be mappable to a ParameterMetadata.name field.
    parentName :: (Core.Maybe Core.Text),
    -- | Optional. The value(s) of the \'parent/name\' parameter which will trigger this parameter to be shown. If left empty, ANY non-empty value in parent/name will trigger this parameter to be shown. Only considered when this parameter is conditional (when \'parent_name\' has been provided).
    parentTriggerValues :: (Core.Maybe [Core.Text]),
    -- | Optional. Regexes that the parameter must match.
    regexes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParameterMetadata' with the minimum fields required to make a request.
newParameterMetadata ::
  ParameterMetadata
newParameterMetadata =
  ParameterMetadata
    { customMetadata = Core.Nothing,
      defaultValue = Core.Nothing,
      enumOptions = Core.Nothing,
      groupName = Core.Nothing,
      helpText = Core.Nothing,
      hiddenUi = Core.Nothing,
      isOptional = Core.Nothing,
      label = Core.Nothing,
      name = Core.Nothing,
      paramType = Core.Nothing,
      parentName = Core.Nothing,
      parentTriggerValues = Core.Nothing,
      regexes = Core.Nothing
    }

instance Core.FromJSON ParameterMetadata where
  parseJSON =
    Core.withObject
      "ParameterMetadata"
      ( \o ->
          ParameterMetadata
            Core.<$> (o Core..:? "customMetadata")
            Core.<*> (o Core..:? "defaultValue")
            Core.<*> (o Core..:? "enumOptions")
            Core.<*> (o Core..:? "groupName")
            Core.<*> (o Core..:? "helpText")
            Core.<*> (o Core..:? "hiddenUi")
            Core.<*> (o Core..:? "isOptional")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "paramType")
            Core.<*> (o Core..:? "parentName")
            Core.<*> (o Core..:? "parentTriggerValues")
            Core.<*> (o Core..:? "regexes")
      )

instance Core.ToJSON ParameterMetadata where
  toJSON ParameterMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("customMetadata" Core..=) Core.<$> customMetadata,
            ("defaultValue" Core..=) Core.<$> defaultValue,
            ("enumOptions" Core..=) Core.<$> enumOptions,
            ("groupName" Core..=) Core.<$> groupName,
            ("helpText" Core..=) Core.<$> helpText,
            ("hiddenUi" Core..=) Core.<$> hiddenUi,
            ("isOptional" Core..=) Core.<$> isOptional,
            ("label" Core..=) Core.<$> label,
            ("name" Core..=) Core.<$> name,
            ("paramType" Core..=) Core.<$> paramType,
            ("parentName" Core..=) Core.<$> parentName,
            ("parentTriggerValues" Core..=) Core.<$> parentTriggerValues,
            ("regexes" Core..=) Core.<$> regexes
          ]
      )

-- | Optional. Additional metadata for describing this parameter.
--
-- /See:/ 'newParameterMetadata_CustomMetadata' smart constructor.
newtype ParameterMetadata_CustomMetadata = ParameterMetadata_CustomMetadata
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParameterMetadata_CustomMetadata' with the minimum fields required to make a request.
newParameterMetadata_CustomMetadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ParameterMetadata_CustomMetadata
newParameterMetadata_CustomMetadata additional =
  ParameterMetadata_CustomMetadata {additional = additional}

instance Core.FromJSON ParameterMetadata_CustomMetadata where
  parseJSON =
    Core.withObject
      "ParameterMetadata_CustomMetadata"
      ( \o ->
          ParameterMetadata_CustomMetadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ParameterMetadata_CustomMetadata where
  toJSON ParameterMetadata_CustomMetadata {..} =
    Core.toJSON additional

-- | ParameterMetadataEnumOption specifies the option shown in the enum form.
--
-- /See:/ 'newParameterMetadataEnumOption' smart constructor.
data ParameterMetadataEnumOption = ParameterMetadataEnumOption
  { -- | Optional. The description to display for the enum option.
    description :: (Core.Maybe Core.Text),
    -- | Optional. The label to display for the enum option.
    label :: (Core.Maybe Core.Text),
    -- | Required. The value of the enum option.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParameterMetadataEnumOption' with the minimum fields required to make a request.
newParameterMetadataEnumOption ::
  ParameterMetadataEnumOption
newParameterMetadataEnumOption =
  ParameterMetadataEnumOption
    { description = Core.Nothing,
      label = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ParameterMetadataEnumOption where
  parseJSON =
    Core.withObject
      "ParameterMetadataEnumOption"
      ( \o ->
          ParameterMetadataEnumOption
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ParameterMetadataEnumOption where
  toJSON ParameterMetadataEnumOption {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("label" Core..=) Core.<$> label,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | An instruction that does a partial group-by-key. One input and one output.
--
-- /See:/ 'newPartialGroupByKeyInstruction' smart constructor.
data PartialGroupByKeyInstruction = PartialGroupByKeyInstruction
  { -- | Describes the input to the partial group-by-key instruction.
    input :: (Core.Maybe InstructionInput),
    -- | The codec to use for interpreting an element in the input PTable.
    inputElementCodec :: (Core.Maybe PartialGroupByKeyInstruction_InputElementCodec),
    -- | If this instruction includes a combining function this is the name of the intermediate store between the GBK and the CombineValues.
    originalCombineValuesInputStoreName :: (Core.Maybe Core.Text),
    -- | If this instruction includes a combining function, this is the name of the CombineValues instruction lifted into this instruction.
    originalCombineValuesStepName :: (Core.Maybe Core.Text),
    -- | Zero or more side inputs.
    sideInputs :: (Core.Maybe [SideInputInfo]),
    -- | The value combining function to invoke.
    valueCombiningFn :: (Core.Maybe PartialGroupByKeyInstruction_ValueCombiningFn)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialGroupByKeyInstruction' with the minimum fields required to make a request.
newPartialGroupByKeyInstruction ::
  PartialGroupByKeyInstruction
newPartialGroupByKeyInstruction =
  PartialGroupByKeyInstruction
    { input = Core.Nothing,
      inputElementCodec = Core.Nothing,
      originalCombineValuesInputStoreName = Core.Nothing,
      originalCombineValuesStepName = Core.Nothing,
      sideInputs = Core.Nothing,
      valueCombiningFn = Core.Nothing
    }

instance Core.FromJSON PartialGroupByKeyInstruction where
  parseJSON =
    Core.withObject
      "PartialGroupByKeyInstruction"
      ( \o ->
          PartialGroupByKeyInstruction
            Core.<$> (o Core..:? "input")
            Core.<*> (o Core..:? "inputElementCodec")
            Core.<*> (o Core..:? "originalCombineValuesInputStoreName")
            Core.<*> (o Core..:? "originalCombineValuesStepName")
            Core.<*> (o Core..:? "sideInputs")
            Core.<*> (o Core..:? "valueCombiningFn")
      )

instance Core.ToJSON PartialGroupByKeyInstruction where
  toJSON PartialGroupByKeyInstruction {..} =
    Core.object
      ( Core.catMaybes
          [ ("input" Core..=) Core.<$> input,
            ("inputElementCodec" Core..=) Core.<$> inputElementCodec,
            ("originalCombineValuesInputStoreName" Core..=)
              Core.<$> originalCombineValuesInputStoreName,
            ("originalCombineValuesStepName" Core..=)
              Core.<$> originalCombineValuesStepName,
            ("sideInputs" Core..=) Core.<$> sideInputs,
            ("valueCombiningFn" Core..=) Core.<$> valueCombiningFn
          ]
      )

-- | The codec to use for interpreting an element in the input PTable.
--
-- /See:/ 'newPartialGroupByKeyInstruction_InputElementCodec' smart constructor.
newtype PartialGroupByKeyInstruction_InputElementCodec = PartialGroupByKeyInstruction_InputElementCodec
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialGroupByKeyInstruction_InputElementCodec' with the minimum fields required to make a request.
newPartialGroupByKeyInstruction_InputElementCodec ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  PartialGroupByKeyInstruction_InputElementCodec
newPartialGroupByKeyInstruction_InputElementCodec additional =
  PartialGroupByKeyInstruction_InputElementCodec
    { additional =
        additional
    }

instance
  Core.FromJSON
    PartialGroupByKeyInstruction_InputElementCodec
  where
  parseJSON =
    Core.withObject
      "PartialGroupByKeyInstruction_InputElementCodec"
      ( \o ->
          PartialGroupByKeyInstruction_InputElementCodec
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PartialGroupByKeyInstruction_InputElementCodec where
  toJSON PartialGroupByKeyInstruction_InputElementCodec {..} =
    Core.toJSON additional

-- | The value combining function to invoke.
--
-- /See:/ 'newPartialGroupByKeyInstruction_ValueCombiningFn' smart constructor.
newtype PartialGroupByKeyInstruction_ValueCombiningFn = PartialGroupByKeyInstruction_ValueCombiningFn
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartialGroupByKeyInstruction_ValueCombiningFn' with the minimum fields required to make a request.
newPartialGroupByKeyInstruction_ValueCombiningFn ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  PartialGroupByKeyInstruction_ValueCombiningFn
newPartialGroupByKeyInstruction_ValueCombiningFn additional =
  PartialGroupByKeyInstruction_ValueCombiningFn
    { additional =
        additional
    }

instance
  Core.FromJSON
    PartialGroupByKeyInstruction_ValueCombiningFn
  where
  parseJSON =
    Core.withObject
      "PartialGroupByKeyInstruction_ValueCombiningFn"
      ( \o ->
          PartialGroupByKeyInstruction_ValueCombiningFn
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PartialGroupByKeyInstruction_ValueCombiningFn where
  toJSON PartialGroupByKeyInstruction_ValueCombiningFn {..} =
    Core.toJSON additional

-- | Metrics for a particular unfused step and namespace. A metric is uniquely identified by the @metrics_namespace@, @original_step@, @metric name@ and @metric_labels@.
--
-- /See:/ 'newPerStepNamespaceMetrics' smart constructor.
data PerStepNamespaceMetrics = PerStepNamespaceMetrics
  { -- | Optional. Metrics that are recorded for this namespace and unfused step.
    metricValues :: (Core.Maybe [MetricValue]),
    -- | The namespace of these metrics on the worker.
    metricsNamespace :: (Core.Maybe Core.Text),
    -- | The original system name of the unfused step that these metrics are reported from.
    originalStep :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerStepNamespaceMetrics' with the minimum fields required to make a request.
newPerStepNamespaceMetrics ::
  PerStepNamespaceMetrics
newPerStepNamespaceMetrics =
  PerStepNamespaceMetrics
    { metricValues = Core.Nothing,
      metricsNamespace = Core.Nothing,
      originalStep = Core.Nothing
    }

instance Core.FromJSON PerStepNamespaceMetrics where
  parseJSON =
    Core.withObject
      "PerStepNamespaceMetrics"
      ( \o ->
          PerStepNamespaceMetrics
            Core.<$> (o Core..:? "metricValues")
            Core.<*> (o Core..:? "metricsNamespace")
            Core.<*> (o Core..:? "originalStep")
      )

instance Core.ToJSON PerStepNamespaceMetrics where
  toJSON PerStepNamespaceMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("metricValues" Core..=) Core.<$> metricValues,
            ("metricsNamespace" Core..=) Core.<$> metricsNamespace,
            ("originalStep" Core..=) Core.<$> originalStep
          ]
      )

-- | Per worker metrics.
--
-- /See:/ 'newPerWorkerMetrics' smart constructor.
newtype PerWorkerMetrics = PerWorkerMetrics
  { -- | Optional. Metrics for a particular unfused step and namespace.
    perStepNamespaceMetrics :: (Core.Maybe [PerStepNamespaceMetrics])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PerWorkerMetrics' with the minimum fields required to make a request.
newPerWorkerMetrics ::
  PerWorkerMetrics
newPerWorkerMetrics =
  PerWorkerMetrics {perStepNamespaceMetrics = Core.Nothing}

instance Core.FromJSON PerWorkerMetrics where
  parseJSON =
    Core.withObject
      "PerWorkerMetrics"
      ( \o ->
          PerWorkerMetrics Core.<$> (o Core..:? "perStepNamespaceMetrics")
      )

instance Core.ToJSON PerWorkerMetrics where
  toJSON PerWorkerMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("perStepNamespaceMetrics" Core..=)
              Core.<$> perStepNamespaceMetrics
          ]
      )

-- | A descriptive representation of submitted pipeline as well as the executed form. This data is provided by the Dataflow service for ease of visualizing the pipeline and interpreting Dataflow provided metrics.
--
-- /See:/ 'newPipelineDescription' smart constructor.
data PipelineDescription = PipelineDescription
  { -- | Pipeline level display data.
    displayData :: (Core.Maybe [DisplayData]),
    -- | Description of each stage of execution of the pipeline.
    executionPipelineStage :: (Core.Maybe [ExecutionStageSummary]),
    -- | Description of each transform in the pipeline and collections between them.
    originalPipelineTransform :: (Core.Maybe [TransformSummary]),
    -- | A hash value of the submitted pipeline portable graph step names if exists.
    stepNamesHash :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineDescription' with the minimum fields required to make a request.
newPipelineDescription ::
  PipelineDescription
newPipelineDescription =
  PipelineDescription
    { displayData = Core.Nothing,
      executionPipelineStage = Core.Nothing,
      originalPipelineTransform = Core.Nothing,
      stepNamesHash = Core.Nothing
    }

instance Core.FromJSON PipelineDescription where
  parseJSON =
    Core.withObject
      "PipelineDescription"
      ( \o ->
          PipelineDescription
            Core.<$> (o Core..:? "displayData")
            Core.<*> (o Core..:? "executionPipelineStage")
            Core.<*> (o Core..:? "originalPipelineTransform")
            Core.<*> (o Core..:? "stepNamesHash")
      )

instance Core.ToJSON PipelineDescription where
  toJSON PipelineDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayData" Core..=) Core.<$> displayData,
            ("executionPipelineStage" Core..=) Core.<$> executionPipelineStage,
            ("originalPipelineTransform" Core..=)
              Core.<$> originalPipelineTransform,
            ("stepNamesHash" Core..=) Core.<$> stepNamesHash
          ]
      )

-- | A point in the timeseries.
--
-- /See:/ 'newPoint' smart constructor.
data Point = Point
  { -- | The timestamp of the point.
    time :: (Core.Maybe Core.DateTime),
    -- | The value of the point.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Point' with the minimum fields required to make a request.
newPoint ::
  Point
newPoint = Point {time = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Point where
  parseJSON =
    Core.withObject
      "Point"
      ( \o ->
          Point Core.<$> (o Core..:? "time") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Point where
  toJSON Point {..} =
    Core.object
      ( Core.catMaybes
          [("time" Core..=) Core.<$> time, ("value" Core..=) Core.<$> value]
      )

-- | Position defines a position within a collection of data. The value can be either the end position, a key (used with ordered collections), a byte offset, or a record index.
--
-- /See:/ 'newPosition' smart constructor.
data Position = Position
  { -- | Position is a byte offset.
    byteOffset :: (Core.Maybe Core.Int64),
    -- | CloudPosition is a concat position.
    concatPosition :: (Core.Maybe ConcatPosition),
    -- | Position is past all other positions. Also useful for the end position of an unbounded range.
    end :: (Core.Maybe Core.Bool),
    -- | Position is a string key, ordered lexicographically.
    key :: (Core.Maybe Core.Text),
    -- | Position is a record index.
    recordIndex :: (Core.Maybe Core.Int64),
    -- | CloudPosition is a base64 encoded BatchShufflePosition (with FIXED sharding).
    shufflePosition :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Position' with the minimum fields required to make a request.
newPosition ::
  Position
newPosition =
  Position
    { byteOffset = Core.Nothing,
      concatPosition = Core.Nothing,
      end = Core.Nothing,
      key = Core.Nothing,
      recordIndex = Core.Nothing,
      shufflePosition = Core.Nothing
    }

instance Core.FromJSON Position where
  parseJSON =
    Core.withObject
      "Position"
      ( \o ->
          Position
            Core.<$> (o Core..:? "byteOffset" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "concatPosition")
            Core.<*> (o Core..:? "end")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "recordIndex" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "shufflePosition")
      )

instance Core.ToJSON Position where
  toJSON Position {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteOffset" Core..=) Core.. Core.AsText Core.<$> byteOffset,
            ("concatPosition" Core..=) Core.<$> concatPosition,
            ("end" Core..=) Core.<$> end,
            ("key" Core..=) Core.<$> key,
            ("recordIndex" Core..=) Core.. Core.AsText Core.<$> recordIndex,
            ("shufflePosition" Core..=) Core.<$> shufflePosition
          ]
      )

-- | Information about the progress of some component of job execution.
--
-- /See:/ 'newProgressTimeseries' smart constructor.
data ProgressTimeseries = ProgressTimeseries
  { -- | The current progress of the component, in the range [0,1].
    currentProgress :: (Core.Maybe Core.Double),
    -- | History of progress for the component. Points are sorted by time.
    dataPoints :: (Core.Maybe [Point])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProgressTimeseries' with the minimum fields required to make a request.
newProgressTimeseries ::
  ProgressTimeseries
newProgressTimeseries =
  ProgressTimeseries
    { currentProgress = Core.Nothing,
      dataPoints = Core.Nothing
    }

instance Core.FromJSON ProgressTimeseries where
  parseJSON =
    Core.withObject
      "ProgressTimeseries"
      ( \o ->
          ProgressTimeseries
            Core.<$> (o Core..:? "currentProgress")
            Core.<*> (o Core..:? "dataPoints")
      )

instance Core.ToJSON ProgressTimeseries where
  toJSON ProgressTimeseries {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentProgress" Core..=) Core.<$> currentProgress,
            ("dataPoints" Core..=) Core.<$> dataPoints
          ]
      )

-- | Metadata for a Pub\/Sub connector used by the job.
--
-- /See:/ 'newPubSubIODetails' smart constructor.
data PubSubIODetails = PubSubIODetails
  { -- | Subscription used in the connection.
    subscription :: (Core.Maybe Core.Text),
    -- | Topic accessed in the connection.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubIODetails' with the minimum fields required to make a request.
newPubSubIODetails ::
  PubSubIODetails
newPubSubIODetails =
  PubSubIODetails
    { subscription = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON PubSubIODetails where
  parseJSON =
    Core.withObject
      "PubSubIODetails"
      ( \o ->
          PubSubIODetails
            Core.<$> (o Core..:? "subscription")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON PubSubIODetails where
  toJSON PubSubIODetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("subscription" Core..=) Core.<$> subscription,
            ("topic" Core..=) Core.<$> topic
          ]
      )

-- | Identifies a pubsub location to use for transferring data into or out of a streaming Dataflow job.
--
-- /See:/ 'newPubsubLocation' smart constructor.
data PubsubLocation = PubsubLocation
  { -- | Indicates whether the pipeline allows late-arriving data.
    dropLateData :: (Core.Maybe Core.Bool),
    -- | If true, then this location represents dynamic topics.
    dynamicDestinations :: (Core.Maybe Core.Bool),
    -- | If set, contains a pubsub label from which to extract record ids. If left empty, record deduplication will be strictly best effort.
    idLabel :: (Core.Maybe Core.Text),
    -- | A pubsub subscription, in the form of \"pubsub.googleapis.com\/subscriptions\/\/\"
    subscription :: (Core.Maybe Core.Text),
    -- | If set, contains a pubsub label from which to extract record timestamps. If left empty, record timestamps will be generated upon arrival.
    timestampLabel :: (Core.Maybe Core.Text),
    -- | A pubsub topic, in the form of \"pubsub.googleapis.com\/topics\/\/\"
    topic :: (Core.Maybe Core.Text),
    -- | If set, specifies the pubsub subscription that will be used for tracking custom time timestamps for watermark estimation.
    trackingSubscription :: (Core.Maybe Core.Text),
    -- | If true, then the client has requested to get pubsub attributes.
    withAttributes :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubLocation' with the minimum fields required to make a request.
newPubsubLocation ::
  PubsubLocation
newPubsubLocation =
  PubsubLocation
    { dropLateData = Core.Nothing,
      dynamicDestinations = Core.Nothing,
      idLabel = Core.Nothing,
      subscription = Core.Nothing,
      timestampLabel = Core.Nothing,
      topic = Core.Nothing,
      trackingSubscription = Core.Nothing,
      withAttributes = Core.Nothing
    }

instance Core.FromJSON PubsubLocation where
  parseJSON =
    Core.withObject
      "PubsubLocation"
      ( \o ->
          PubsubLocation
            Core.<$> (o Core..:? "dropLateData")
            Core.<*> (o Core..:? "dynamicDestinations")
            Core.<*> (o Core..:? "idLabel")
            Core.<*> (o Core..:? "subscription")
            Core.<*> (o Core..:? "timestampLabel")
            Core.<*> (o Core..:? "topic")
            Core.<*> (o Core..:? "trackingSubscription")
            Core.<*> (o Core..:? "withAttributes")
      )

instance Core.ToJSON PubsubLocation where
  toJSON PubsubLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("dropLateData" Core..=) Core.<$> dropLateData,
            ("dynamicDestinations" Core..=) Core.<$> dynamicDestinations,
            ("idLabel" Core..=) Core.<$> idLabel,
            ("subscription" Core..=) Core.<$> subscription,
            ("timestampLabel" Core..=) Core.<$> timestampLabel,
            ("topic" Core..=) Core.<$> topic,
            ("trackingSubscription" Core..=) Core.<$> trackingSubscription,
            ("withAttributes" Core..=) Core.<$> withAttributes
          ]
      )

-- | Represents a Pubsub snapshot.
--
-- /See:/ 'newPubsubSnapshotMetadata' smart constructor.
data PubsubSnapshotMetadata = PubsubSnapshotMetadata
  { -- | The expire time of the Pubsub snapshot.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | The name of the Pubsub snapshot.
    snapshotName :: (Core.Maybe Core.Text),
    -- | The name of the Pubsub topic.
    topicName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubSnapshotMetadata' with the minimum fields required to make a request.
newPubsubSnapshotMetadata ::
  PubsubSnapshotMetadata
newPubsubSnapshotMetadata =
  PubsubSnapshotMetadata
    { expireTime = Core.Nothing,
      snapshotName = Core.Nothing,
      topicName = Core.Nothing
    }

instance Core.FromJSON PubsubSnapshotMetadata where
  parseJSON =
    Core.withObject
      "PubsubSnapshotMetadata"
      ( \o ->
          PubsubSnapshotMetadata
            Core.<$> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "snapshotName")
            Core.<*> (o Core..:? "topicName")
      )

instance Core.ToJSON PubsubSnapshotMetadata where
  toJSON PubsubSnapshotMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("expireTime" Core..=) Core.<$> expireTime,
            ("snapshotName" Core..=) Core.<$> snapshotName,
            ("topicName" Core..=) Core.<$> topicName
          ]
      )

-- | An instruction that reads records. Takes no inputs, produces one output.
--
-- /See:/ 'newReadInstruction' smart constructor.
newtype ReadInstruction = ReadInstruction
  { -- | The source to read from.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReadInstruction' with the minimum fields required to make a request.
newReadInstruction ::
  ReadInstruction
newReadInstruction = ReadInstruction {source = Core.Nothing}

instance Core.FromJSON ReadInstruction where
  parseJSON =
    Core.withObject
      "ReadInstruction"
      (\o -> ReadInstruction Core.<$> (o Core..:? "source"))

instance Core.ToJSON ReadInstruction where
  toJSON ReadInstruction {..} =
    Core.object (Core.catMaybes [("source" Core..=) Core.<$> source])

-- | Request to report the status of WorkItems.
--
-- /See:/ 'newReportWorkItemStatusRequest' smart constructor.
data ReportWorkItemStatusRequest = ReportWorkItemStatusRequest
  { -- | The current timestamp at the worker.
    currentWorkerTime :: (Core.Maybe Core.DateTime),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the WorkItem\'s job.
    location :: (Core.Maybe Core.Text),
    -- | Optional. The project number of the project which owns the WorkItem\'s job.
    projectNumber :: (Core.Maybe Core.Int64),
    -- | Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker.
    unifiedWorkerRequest :: (Core.Maybe ReportWorkItemStatusRequest_UnifiedWorkerRequest),
    -- | The order is unimportant, except that the order of the WorkItemServiceState messages in the ReportWorkItemStatusResponse corresponds to the order of WorkItemStatus messages here.
    workItemStatuses :: (Core.Maybe [WorkItemStatus]),
    -- | The ID of the worker reporting the WorkItem status. If this does not match the ID of the worker which the Dataflow service believes currently has the lease on the WorkItem, the report will be dropped (with an error response).
    workerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportWorkItemStatusRequest' with the minimum fields required to make a request.
newReportWorkItemStatusRequest ::
  ReportWorkItemStatusRequest
newReportWorkItemStatusRequest =
  ReportWorkItemStatusRequest
    { currentWorkerTime = Core.Nothing,
      location = Core.Nothing,
      projectNumber = Core.Nothing,
      unifiedWorkerRequest = Core.Nothing,
      workItemStatuses = Core.Nothing,
      workerId = Core.Nothing
    }

instance Core.FromJSON ReportWorkItemStatusRequest where
  parseJSON =
    Core.withObject
      "ReportWorkItemStatusRequest"
      ( \o ->
          ReportWorkItemStatusRequest
            Core.<$> (o Core..:? "currentWorkerTime")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "projectNumber" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "unifiedWorkerRequest")
            Core.<*> (o Core..:? "workItemStatuses")
            Core.<*> (o Core..:? "workerId")
      )

instance Core.ToJSON ReportWorkItemStatusRequest where
  toJSON ReportWorkItemStatusRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentWorkerTime" Core..=) Core.<$> currentWorkerTime,
            ("location" Core..=) Core.<$> location,
            ("projectNumber" Core..=)
              Core.. Core.AsText
              Core.<$> projectNumber,
            ("unifiedWorkerRequest" Core..=) Core.<$> unifiedWorkerRequest,
            ("workItemStatuses" Core..=) Core.<$> workItemStatuses,
            ("workerId" Core..=) Core.<$> workerId
          ]
      )

-- | Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker.
--
-- /See:/ 'newReportWorkItemStatusRequest_UnifiedWorkerRequest' smart constructor.
newtype ReportWorkItemStatusRequest_UnifiedWorkerRequest = ReportWorkItemStatusRequest_UnifiedWorkerRequest
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportWorkItemStatusRequest_UnifiedWorkerRequest' with the minimum fields required to make a request.
newReportWorkItemStatusRequest_UnifiedWorkerRequest ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  ReportWorkItemStatusRequest_UnifiedWorkerRequest
newReportWorkItemStatusRequest_UnifiedWorkerRequest additional =
  ReportWorkItemStatusRequest_UnifiedWorkerRequest
    { additional =
        additional
    }

instance
  Core.FromJSON
    ReportWorkItemStatusRequest_UnifiedWorkerRequest
  where
  parseJSON =
    Core.withObject
      "ReportWorkItemStatusRequest_UnifiedWorkerRequest"
      ( \o ->
          ReportWorkItemStatusRequest_UnifiedWorkerRequest
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ReportWorkItemStatusRequest_UnifiedWorkerRequest
  where
  toJSON ReportWorkItemStatusRequest_UnifiedWorkerRequest {..} =
    Core.toJSON additional

-- | Response from a request to report the status of WorkItems.
--
-- /See:/ 'newReportWorkItemStatusResponse' smart constructor.
data ReportWorkItemStatusResponse = ReportWorkItemStatusResponse
  { -- | Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker.
    unifiedWorkerResponse :: (Core.Maybe ReportWorkItemStatusResponse_UnifiedWorkerResponse),
    -- | A set of messages indicating the service-side state for each WorkItem whose status was reported, in the same order as the WorkItemStatus messages in the ReportWorkItemStatusRequest which resulting in this response.
    workItemServiceStates :: (Core.Maybe [WorkItemServiceState])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportWorkItemStatusResponse' with the minimum fields required to make a request.
newReportWorkItemStatusResponse ::
  ReportWorkItemStatusResponse
newReportWorkItemStatusResponse =
  ReportWorkItemStatusResponse
    { unifiedWorkerResponse =
        Core.Nothing,
      workItemServiceStates = Core.Nothing
    }

instance Core.FromJSON ReportWorkItemStatusResponse where
  parseJSON =
    Core.withObject
      "ReportWorkItemStatusResponse"
      ( \o ->
          ReportWorkItemStatusResponse
            Core.<$> (o Core..:? "unifiedWorkerResponse")
            Core.<*> (o Core..:? "workItemServiceStates")
      )

instance Core.ToJSON ReportWorkItemStatusResponse where
  toJSON ReportWorkItemStatusResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("unifiedWorkerResponse" Core..=) Core.<$> unifiedWorkerResponse,
            ("workItemServiceStates" Core..=) Core.<$> workItemServiceStates
          ]
      )

-- | Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker.
--
-- /See:/ 'newReportWorkItemStatusResponse_UnifiedWorkerResponse' smart constructor.
newtype ReportWorkItemStatusResponse_UnifiedWorkerResponse = ReportWorkItemStatusResponse_UnifiedWorkerResponse
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportWorkItemStatusResponse_UnifiedWorkerResponse' with the minimum fields required to make a request.
newReportWorkItemStatusResponse_UnifiedWorkerResponse ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  ReportWorkItemStatusResponse_UnifiedWorkerResponse
newReportWorkItemStatusResponse_UnifiedWorkerResponse additional =
  ReportWorkItemStatusResponse_UnifiedWorkerResponse
    { additional =
        additional
    }

instance
  Core.FromJSON
    ReportWorkItemStatusResponse_UnifiedWorkerResponse
  where
  parseJSON =
    Core.withObject
      "ReportWorkItemStatusResponse_UnifiedWorkerResponse"
      ( \o ->
          ReportWorkItemStatusResponse_UnifiedWorkerResponse
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ReportWorkItemStatusResponse_UnifiedWorkerResponse
  where
  toJSON ReportWorkItemStatusResponse_UnifiedWorkerResponse {..} =
    Core.toJSON additional

-- | Represents the level of parallelism in a WorkItem\'s input, reported by the worker.
--
-- /See:/ 'newReportedParallelism' smart constructor.
data ReportedParallelism = ReportedParallelism
  { -- | Specifies whether the parallelism is infinite. If true, \"value\" is ignored. Infinite parallelism means the service will assume that the work item can always be split into more non-empty work items by dynamic splitting. This is a work-around for lack of support for infinity by the current JSON-based Java RPC stack.
    isInfinite :: (Core.Maybe Core.Bool),
    -- | Specifies the level of parallelism in case it is finite.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportedParallelism' with the minimum fields required to make a request.
newReportedParallelism ::
  ReportedParallelism
newReportedParallelism =
  ReportedParallelism
    { isInfinite = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON ReportedParallelism where
  parseJSON =
    Core.withObject
      "ReportedParallelism"
      ( \o ->
          ReportedParallelism
            Core.<$> (o Core..:? "isInfinite")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ReportedParallelism where
  toJSON ReportedParallelism {..} =
    Core.object
      ( Core.catMaybes
          [ ("isInfinite" Core..=) Core.<$> isInfinite,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Worker metrics exported from workers. This contains resource utilization metrics accumulated from a variety of sources. For more information, see go\/df-resource-signals.
--
-- /See:/ 'newResourceUtilizationReport' smart constructor.
data ResourceUtilizationReport = ResourceUtilizationReport
  { -- | Per container information. Key: container name.
    containers :: (Core.Maybe ResourceUtilizationReport_Containers),
    -- | CPU utilization samples.
    cpuTime :: (Core.Maybe [CPUTime]),
    -- | Optional. GPU usage samples.
    gpuUsage :: (Core.Maybe [GPUUsage]),
    -- | Memory utilization samples.
    memoryInfo :: (Core.Maybe [MemInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUtilizationReport' with the minimum fields required to make a request.
newResourceUtilizationReport ::
  ResourceUtilizationReport
newResourceUtilizationReport =
  ResourceUtilizationReport
    { containers = Core.Nothing,
      cpuTime = Core.Nothing,
      gpuUsage = Core.Nothing,
      memoryInfo = Core.Nothing
    }

instance Core.FromJSON ResourceUtilizationReport where
  parseJSON =
    Core.withObject
      "ResourceUtilizationReport"
      ( \o ->
          ResourceUtilizationReport
            Core.<$> (o Core..:? "containers")
            Core.<*> (o Core..:? "cpuTime")
            Core.<*> (o Core..:? "gpuUsage")
            Core.<*> (o Core..:? "memoryInfo")
      )

instance Core.ToJSON ResourceUtilizationReport where
  toJSON ResourceUtilizationReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("containers" Core..=) Core.<$> containers,
            ("cpuTime" Core..=) Core.<$> cpuTime,
            ("gpuUsage" Core..=) Core.<$> gpuUsage,
            ("memoryInfo" Core..=) Core.<$> memoryInfo
          ]
      )

-- | Per container information. Key: container name.
--
-- /See:/ 'newResourceUtilizationReport_Containers' smart constructor.
newtype ResourceUtilizationReport_Containers = ResourceUtilizationReport_Containers
  { additional :: (Core.HashMap Core.Text ResourceUtilizationReport)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUtilizationReport_Containers' with the minimum fields required to make a request.
newResourceUtilizationReport_Containers ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ResourceUtilizationReport ->
  ResourceUtilizationReport_Containers
newResourceUtilizationReport_Containers additional =
  ResourceUtilizationReport_Containers {additional = additional}

instance Core.FromJSON ResourceUtilizationReport_Containers where
  parseJSON =
    Core.withObject
      "ResourceUtilizationReport_Containers"
      ( \o ->
          ResourceUtilizationReport_Containers
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ResourceUtilizationReport_Containers where
  toJSON ResourceUtilizationReport_Containers {..} =
    Core.toJSON additional

-- | Service-side response to WorkerMessage reporting resource utilization.
--
-- /See:/ 'newResourceUtilizationReportResponse' smart constructor.
data ResourceUtilizationReportResponse = ResourceUtilizationReportResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUtilizationReportResponse' with the minimum fields required to make a request.
newResourceUtilizationReportResponse ::
  ResourceUtilizationReportResponse
newResourceUtilizationReportResponse =
  ResourceUtilizationReportResponse

instance Core.FromJSON ResourceUtilizationReportResponse where
  parseJSON =
    Core.withObject
      "ResourceUtilizationReportResponse"
      (\o -> Core.pure ResourceUtilizationReportResponse)

instance Core.ToJSON ResourceUtilizationReportResponse where
  toJSON = Core.const Core.emptyObject

-- | The environment values to set at runtime.
--
-- /See:/ 'newRuntimeEnvironment' smart constructor.
data RuntimeEnvironment = RuntimeEnvironment
  { -- | Optional. Additional experiment flags for the job, specified with the @--experiments@ option.
    additionalExperiments :: (Core.Maybe [Core.Text]),
    -- | Optional. Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the <https://cloud.google.com/compute/docs/labeling-resources#restrictions labeling restrictions> page. An object containing a list of \"key\": value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }.
    additionalUserLabels :: (Core.Maybe RuntimeEnvironment_AdditionalUserLabels),
    -- | Optional. Whether to bypass the safety checks for the job\'s temporary directory. Use with caution.
    bypassTempDirValidation :: (Core.Maybe Core.Bool),
    -- | Optional. The disk size, in gigabytes, to use on each remote Compute Engine worker instance.
    diskSizeGb :: (Core.Maybe Core.Int32),
    -- | Optional. Whether to enable Streaming Engine for the job.
    enableStreamingEngine :: (Core.Maybe Core.Bool),
    -- | Optional. Configuration for VM IPs.
    ipConfiguration :: (Core.Maybe RuntimeEnvironment_IpConfiguration),
    -- | Optional. Name for the Cloud KMS key for the job. Key format is: projects\/\/locations\/\/keyRings\/\/cryptoKeys\/
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | Optional. The machine type to use for the job. Defaults to the value from the template if not specified.
    machineType :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. The default value is 1.
    maxWorkers :: (Core.Maybe Core.Int32),
    -- | Optional. Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".
    network :: (Core.Maybe Core.Text),
    -- | Optional. The initial number of Google Compute Engine instances for the job. The default value is 11.
    numWorkers :: (Core.Maybe Core.Int32),
    -- | Optional. The email address of the service account to run the job as.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency but might result in duplicate messages committed to storage. Designed to run simple mapping streaming ETL jobs at the lowest cost. For example, Change Data Capture (CDC) to BigQuery is a canonical use case. For more information, see <https://cloud.google.com/dataflow/docs/guides/streaming-modes Set the pipeline streaming mode>.
    streamingMode :: (Core.Maybe RuntimeEnvironment_StreamingMode),
    -- | Optional. Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form \"https:\/\/www.googleapis.com\/compute\/v1\/projects\/HOST/PROJECT/ID\/regions\/REGION\/subnetworks\/SUBNETWORK\" or \"regions\/REGION\/subnetworks\/SUBNETWORK\". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
    subnetwork :: (Core.Maybe Core.Text),
    -- | Required. The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with @gs:\/\/@.
    tempLocation :: (Core.Maybe Core.Text),
    -- | Required. The Compute Engine region (https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker/zone. If neither worker/region nor worker_zone is specified, default to the control plane\'s region.
    workerRegion :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine zone (https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker/region. If neither worker/region nor worker_zone is specified, a zone in the control plane\'s region is chosen based on available capacity. If both @worker_zone@ and @zone@ are set, @worker_zone@ takes precedence.
    workerZone :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine <https://cloud.google.com/compute/docs/regions-zones/regions-zones availability zone> for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeEnvironment' with the minimum fields required to make a request.
newRuntimeEnvironment ::
  RuntimeEnvironment
newRuntimeEnvironment =
  RuntimeEnvironment
    { additionalExperiments = Core.Nothing,
      additionalUserLabels = Core.Nothing,
      bypassTempDirValidation = Core.Nothing,
      diskSizeGb = Core.Nothing,
      enableStreamingEngine = Core.Nothing,
      ipConfiguration = Core.Nothing,
      kmsKeyName = Core.Nothing,
      machineType = Core.Nothing,
      maxWorkers = Core.Nothing,
      network = Core.Nothing,
      numWorkers = Core.Nothing,
      serviceAccountEmail = Core.Nothing,
      streamingMode = Core.Nothing,
      subnetwork = Core.Nothing,
      tempLocation = Core.Nothing,
      workerRegion = Core.Nothing,
      workerZone = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON RuntimeEnvironment where
  parseJSON =
    Core.withObject
      "RuntimeEnvironment"
      ( \o ->
          RuntimeEnvironment
            Core.<$> (o Core..:? "additionalExperiments")
            Core.<*> (o Core..:? "additionalUserLabels")
            Core.<*> (o Core..:? "bypassTempDirValidation")
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "enableStreamingEngine")
            Core.<*> (o Core..:? "ipConfiguration")
            Core.<*> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "maxWorkers")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "numWorkers")
            Core.<*> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "streamingMode")
            Core.<*> (o Core..:? "subnetwork")
            Core.<*> (o Core..:? "tempLocation")
            Core.<*> (o Core..:? "workerRegion")
            Core.<*> (o Core..:? "workerZone")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON RuntimeEnvironment where
  toJSON RuntimeEnvironment {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalExperiments" Core..=) Core.<$> additionalExperiments,
            ("additionalUserLabels" Core..=) Core.<$> additionalUserLabels,
            ("bypassTempDirValidation" Core..=)
              Core.<$> bypassTempDirValidation,
            ("diskSizeGb" Core..=) Core.<$> diskSizeGb,
            ("enableStreamingEngine" Core..=) Core.<$> enableStreamingEngine,
            ("ipConfiguration" Core..=) Core.<$> ipConfiguration,
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("machineType" Core..=) Core.<$> machineType,
            ("maxWorkers" Core..=) Core.<$> maxWorkers,
            ("network" Core..=) Core.<$> network,
            ("numWorkers" Core..=) Core.<$> numWorkers,
            ("serviceAccountEmail" Core..=) Core.<$> serviceAccountEmail,
            ("streamingMode" Core..=) Core.<$> streamingMode,
            ("subnetwork" Core..=) Core.<$> subnetwork,
            ("tempLocation" Core..=) Core.<$> tempLocation,
            ("workerRegion" Core..=) Core.<$> workerRegion,
            ("workerZone" Core..=) Core.<$> workerZone,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Optional. Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the <https://cloud.google.com/compute/docs/labeling-resources#restrictions labeling restrictions> page. An object containing a list of \"key\": value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }.
--
-- /See:/ 'newRuntimeEnvironment_AdditionalUserLabels' smart constructor.
newtype RuntimeEnvironment_AdditionalUserLabels = RuntimeEnvironment_AdditionalUserLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeEnvironment_AdditionalUserLabels' with the minimum fields required to make a request.
newRuntimeEnvironment_AdditionalUserLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  RuntimeEnvironment_AdditionalUserLabels
newRuntimeEnvironment_AdditionalUserLabels additional =
  RuntimeEnvironment_AdditionalUserLabels {additional = additional}

instance Core.FromJSON RuntimeEnvironment_AdditionalUserLabels where
  parseJSON =
    Core.withObject
      "RuntimeEnvironment_AdditionalUserLabels"
      ( \o ->
          RuntimeEnvironment_AdditionalUserLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RuntimeEnvironment_AdditionalUserLabels where
  toJSON RuntimeEnvironment_AdditionalUserLabels {..} =
    Core.toJSON additional

-- | RuntimeMetadata describing a runtime environment.
--
-- /See:/ 'newRuntimeMetadata' smart constructor.
data RuntimeMetadata = RuntimeMetadata
  { -- | The parameters for the template.
    parameters :: (Core.Maybe [ParameterMetadata]),
    -- | SDK Info for the template.
    sdkInfo :: (Core.Maybe SDKInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeMetadata' with the minimum fields required to make a request.
newRuntimeMetadata ::
  RuntimeMetadata
newRuntimeMetadata =
  RuntimeMetadata
    { parameters = Core.Nothing,
      sdkInfo = Core.Nothing
    }

instance Core.FromJSON RuntimeMetadata where
  parseJSON =
    Core.withObject
      "RuntimeMetadata"
      ( \o ->
          RuntimeMetadata
            Core.<$> (o Core..:? "parameters")
            Core.<*> (o Core..:? "sdkInfo")
      )

instance Core.ToJSON RuntimeMetadata where
  toJSON RuntimeMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("parameters" Core..=) Core.<$> parameters,
            ("sdkInfo" Core..=) Core.<$> sdkInfo
          ]
      )

-- | Additional job parameters that can only be updated during runtime using the projects.jobs.update method. These fields have no effect when specified during job creation.
--
-- /See:/ 'newRuntimeUpdatableParams' smart constructor.
data RuntimeUpdatableParams = RuntimeUpdatableParams
  { -- | The maximum number of workers to cap autoscaling at. This field is currently only supported for Streaming Engine jobs.
    maxNumWorkers :: (Core.Maybe Core.Int32),
    -- | The minimum number of workers to scale down to. This field is currently only supported for Streaming Engine jobs.
    minNumWorkers :: (Core.Maybe Core.Int32),
    -- | Target worker utilization, compared against the aggregate utilization of the worker pool by autoscaler, to determine upscaling and downscaling when absent other constraints such as backlog. For more information, see <https://cloud.google.com/dataflow/docs/guides/updating-a-pipeline Update an existing pipeline>.
    workerUtilizationHint :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeUpdatableParams' with the minimum fields required to make a request.
newRuntimeUpdatableParams ::
  RuntimeUpdatableParams
newRuntimeUpdatableParams =
  RuntimeUpdatableParams
    { maxNumWorkers = Core.Nothing,
      minNumWorkers = Core.Nothing,
      workerUtilizationHint = Core.Nothing
    }

instance Core.FromJSON RuntimeUpdatableParams where
  parseJSON =
    Core.withObject
      "RuntimeUpdatableParams"
      ( \o ->
          RuntimeUpdatableParams
            Core.<$> (o Core..:? "maxNumWorkers")
            Core.<*> (o Core..:? "minNumWorkers")
            Core.<*> (o Core..:? "workerUtilizationHint")
      )

instance Core.ToJSON RuntimeUpdatableParams where
  toJSON RuntimeUpdatableParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxNumWorkers" Core..=) Core.<$> maxNumWorkers,
            ("minNumWorkers" Core..=) Core.<$> minNumWorkers,
            ("workerUtilizationHint" Core..=) Core.<$> workerUtilizationHint
          ]
      )

-- | SDK Information.
--
-- /See:/ 'newSDKInfo' smart constructor.
data SDKInfo = SDKInfo
  { -- | Required. The SDK Language.
    language :: (Core.Maybe SDKInfo_Language),
    -- | Optional. The SDK version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SDKInfo' with the minimum fields required to make a request.
newSDKInfo ::
  SDKInfo
newSDKInfo =
  SDKInfo {language = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON SDKInfo where
  parseJSON =
    Core.withObject
      "SDKInfo"
      ( \o ->
          SDKInfo
            Core.<$> (o Core..:? "language")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON SDKInfo where
  toJSON SDKInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("language" Core..=) Core.<$> language,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | A bug found in the Dataflow SDK.
--
-- /See:/ 'newSdkBug' smart constructor.
data SdkBug = SdkBug
  { -- | Output only. How severe the SDK bug is.
    severity :: (Core.Maybe SdkBug_Severity),
    -- | Output only. Describes the impact of this SDK bug.
    type' :: (Core.Maybe SdkBug_Type),
    -- | Output only. Link to more information on the bug.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SdkBug' with the minimum fields required to make a request.
newSdkBug ::
  SdkBug
newSdkBug =
  SdkBug
    { severity = Core.Nothing,
      type' = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON SdkBug where
  parseJSON =
    Core.withObject
      "SdkBug"
      ( \o ->
          SdkBug
            Core.<$> (o Core..:? "severity")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON SdkBug where
  toJSON SdkBug {..} =
    Core.object
      ( Core.catMaybes
          [ ("severity" Core..=) Core.<$> severity,
            ("type" Core..=) Core.<$> type',
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Defines an SDK harness container for executing Dataflow pipelines.
--
-- /See:/ 'newSdkHarnessContainerImage' smart constructor.
data SdkHarnessContainerImage = SdkHarnessContainerImage
  { -- | The set of capabilities enumerated in the above Environment proto. See also <https://github.com/apache/beam/blob/master/model/pipeline/src/main/proto/org/apache/beam/model/pipeline/v1/beam_runner_api.proto beamrunnerapi.proto>
    capabilities :: (Core.Maybe [Core.Text]),
    -- | A docker container image that resides in Google Container Registry.
    containerImage :: (Core.Maybe Core.Text),
    -- | Environment ID for the Beam runner API proto Environment that corresponds to the current SDK Harness.
    environmentId :: (Core.Maybe Core.Text),
    -- | If true, recommends the Dataflow service to use only one core per SDK container instance with this image. If false (or unset) recommends using more than one core per SDK container instance with this image for efficiency. Note that Dataflow service may choose to override this property if needed.
    useSingleCorePerContainer :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SdkHarnessContainerImage' with the minimum fields required to make a request.
newSdkHarnessContainerImage ::
  SdkHarnessContainerImage
newSdkHarnessContainerImage =
  SdkHarnessContainerImage
    { capabilities = Core.Nothing,
      containerImage = Core.Nothing,
      environmentId = Core.Nothing,
      useSingleCorePerContainer = Core.Nothing
    }

instance Core.FromJSON SdkHarnessContainerImage where
  parseJSON =
    Core.withObject
      "SdkHarnessContainerImage"
      ( \o ->
          SdkHarnessContainerImage
            Core.<$> (o Core..:? "capabilities")
            Core.<*> (o Core..:? "containerImage")
            Core.<*> (o Core..:? "environmentId")
            Core.<*> (o Core..:? "useSingleCorePerContainer")
      )

instance Core.ToJSON SdkHarnessContainerImage where
  toJSON SdkHarnessContainerImage {..} =
    Core.object
      ( Core.catMaybes
          [ ("capabilities" Core..=) Core.<$> capabilities,
            ("containerImage" Core..=) Core.<$> containerImage,
            ("environmentId" Core..=) Core.<$> environmentId,
            ("useSingleCorePerContainer" Core..=)
              Core.<$> useSingleCorePerContainer
          ]
      )

-- | The version of the SDK used to run the job.
--
-- /See:/ 'newSdkVersion' smart constructor.
data SdkVersion = SdkVersion
  { -- | Output only. Known bugs found in this SDK version.
    bugs :: (Core.Maybe [SdkBug]),
    -- | The support status for this SDK version.
    sdkSupportStatus :: (Core.Maybe SdkVersion_SdkSupportStatus),
    -- | The version of the SDK used to run the job.
    version :: (Core.Maybe Core.Text),
    -- | A readable string describing the version of the SDK.
    versionDisplayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SdkVersion' with the minimum fields required to make a request.
newSdkVersion ::
  SdkVersion
newSdkVersion =
  SdkVersion
    { bugs = Core.Nothing,
      sdkSupportStatus = Core.Nothing,
      version = Core.Nothing,
      versionDisplayName = Core.Nothing
    }

instance Core.FromJSON SdkVersion where
  parseJSON =
    Core.withObject
      "SdkVersion"
      ( \o ->
          SdkVersion
            Core.<$> (o Core..:? "bugs")
            Core.<*> (o Core..:? "sdkSupportStatus")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "versionDisplayName")
      )

instance Core.ToJSON SdkVersion where
  toJSON SdkVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("bugs" Core..=) Core.<$> bugs,
            ("sdkSupportStatus" Core..=) Core.<$> sdkSupportStatus,
            ("version" Core..=) Core.<$> version,
            ("versionDisplayName" Core..=) Core.<$> versionDisplayName
          ]
      )

-- | Request to send encoded debug information. Next ID: 8
--
-- /See:/ 'newSendDebugCaptureRequest' smart constructor.
data SendDebugCaptureRequest = SendDebugCaptureRequest
  { -- | The internal component id for which debug information is sent.
    componentId :: (Core.Maybe Core.Text),
    -- | The encoded debug information.
    data' :: (Core.Maybe Core.Text),
    -- | Format for the data field above (id=5).
    dataFormat :: (Core.Maybe SendDebugCaptureRequest_DataFormat),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: (Core.Maybe Core.Text),
    -- | The worker id, i.e., VM hostname.
    workerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendDebugCaptureRequest' with the minimum fields required to make a request.
newSendDebugCaptureRequest ::
  SendDebugCaptureRequest
newSendDebugCaptureRequest =
  SendDebugCaptureRequest
    { componentId = Core.Nothing,
      data' = Core.Nothing,
      dataFormat = Core.Nothing,
      location = Core.Nothing,
      workerId = Core.Nothing
    }

instance Core.FromJSON SendDebugCaptureRequest where
  parseJSON =
    Core.withObject
      "SendDebugCaptureRequest"
      ( \o ->
          SendDebugCaptureRequest
            Core.<$> (o Core..:? "componentId")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "dataFormat")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "workerId")
      )

instance Core.ToJSON SendDebugCaptureRequest where
  toJSON SendDebugCaptureRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("componentId" Core..=) Core.<$> componentId,
            ("data" Core..=) Core.<$> data',
            ("dataFormat" Core..=) Core.<$> dataFormat,
            ("location" Core..=) Core.<$> location,
            ("workerId" Core..=) Core.<$> workerId
          ]
      )

-- | Response to a send capture request. nothing
--
-- /See:/ 'newSendDebugCaptureResponse' smart constructor.
data SendDebugCaptureResponse = SendDebugCaptureResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendDebugCaptureResponse' with the minimum fields required to make a request.
newSendDebugCaptureResponse ::
  SendDebugCaptureResponse
newSendDebugCaptureResponse = SendDebugCaptureResponse

instance Core.FromJSON SendDebugCaptureResponse where
  parseJSON =
    Core.withObject
      "SendDebugCaptureResponse"
      (\o -> Core.pure SendDebugCaptureResponse)

instance Core.ToJSON SendDebugCaptureResponse where
  toJSON = Core.const Core.emptyObject

-- | A request for sending worker messages to the service.
--
-- /See:/ 'newSendWorkerMessagesRequest' smart constructor.
data SendWorkerMessagesRequest = SendWorkerMessagesRequest
  { -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job.
    location :: (Core.Maybe Core.Text),
    -- | The WorkerMessages to send.
    workerMessages :: (Core.Maybe [WorkerMessage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendWorkerMessagesRequest' with the minimum fields required to make a request.
newSendWorkerMessagesRequest ::
  SendWorkerMessagesRequest
newSendWorkerMessagesRequest =
  SendWorkerMessagesRequest
    { location = Core.Nothing,
      workerMessages = Core.Nothing
    }

instance Core.FromJSON SendWorkerMessagesRequest where
  parseJSON =
    Core.withObject
      "SendWorkerMessagesRequest"
      ( \o ->
          SendWorkerMessagesRequest
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "workerMessages")
      )

instance Core.ToJSON SendWorkerMessagesRequest where
  toJSON SendWorkerMessagesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("workerMessages" Core..=) Core.<$> workerMessages
          ]
      )

-- | The response to the worker messages.
--
-- /See:/ 'newSendWorkerMessagesResponse' smart constructor.
newtype SendWorkerMessagesResponse = SendWorkerMessagesResponse
  { -- | The servers response to the worker messages.
    workerMessageResponses :: (Core.Maybe [WorkerMessageResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendWorkerMessagesResponse' with the minimum fields required to make a request.
newSendWorkerMessagesResponse ::
  SendWorkerMessagesResponse
newSendWorkerMessagesResponse =
  SendWorkerMessagesResponse {workerMessageResponses = Core.Nothing}

instance Core.FromJSON SendWorkerMessagesResponse where
  parseJSON =
    Core.withObject
      "SendWorkerMessagesResponse"
      ( \o ->
          SendWorkerMessagesResponse
            Core.<$> (o Core..:? "workerMessageResponses")
      )

instance Core.ToJSON SendWorkerMessagesResponse where
  toJSON SendWorkerMessagesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("workerMessageResponses" Core..=)
              Core.<$> workerMessageResponses
          ]
      )

-- | Describes a particular function to invoke.
--
-- /See:/ 'newSeqMapTask' smart constructor.
data SeqMapTask = SeqMapTask
  { -- | Information about each of the inputs.
    inputs :: (Core.Maybe [SideInputInfo]),
    -- | The user-provided name of the SeqDo operation.
    name :: (Core.Maybe Core.Text),
    -- | Information about each of the outputs.
    outputInfos :: (Core.Maybe [SeqMapTaskOutputInfo]),
    -- | System-defined name of the stage containing the SeqDo operation. Unique across the workflow.
    stageName :: (Core.Maybe Core.Text),
    -- | System-defined name of the SeqDo operation. Unique across the workflow.
    systemName :: (Core.Maybe Core.Text),
    -- | The user function to invoke.
    userFn :: (Core.Maybe SeqMapTask_UserFn)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SeqMapTask' with the minimum fields required to make a request.
newSeqMapTask ::
  SeqMapTask
newSeqMapTask =
  SeqMapTask
    { inputs = Core.Nothing,
      name = Core.Nothing,
      outputInfos = Core.Nothing,
      stageName = Core.Nothing,
      systemName = Core.Nothing,
      userFn = Core.Nothing
    }

instance Core.FromJSON SeqMapTask where
  parseJSON =
    Core.withObject
      "SeqMapTask"
      ( \o ->
          SeqMapTask
            Core.<$> (o Core..:? "inputs")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "outputInfos")
            Core.<*> (o Core..:? "stageName")
            Core.<*> (o Core..:? "systemName")
            Core.<*> (o Core..:? "userFn")
      )

instance Core.ToJSON SeqMapTask where
  toJSON SeqMapTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("inputs" Core..=) Core.<$> inputs,
            ("name" Core..=) Core.<$> name,
            ("outputInfos" Core..=) Core.<$> outputInfos,
            ("stageName" Core..=) Core.<$> stageName,
            ("systemName" Core..=) Core.<$> systemName,
            ("userFn" Core..=) Core.<$> userFn
          ]
      )

-- | The user function to invoke.
--
-- /See:/ 'newSeqMapTask_UserFn' smart constructor.
newtype SeqMapTask_UserFn = SeqMapTask_UserFn
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SeqMapTask_UserFn' with the minimum fields required to make a request.
newSeqMapTask_UserFn ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  SeqMapTask_UserFn
newSeqMapTask_UserFn additional =
  SeqMapTask_UserFn {additional = additional}

instance Core.FromJSON SeqMapTask_UserFn where
  parseJSON =
    Core.withObject
      "SeqMapTask_UserFn"
      (\o -> SeqMapTask_UserFn Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SeqMapTask_UserFn where
  toJSON SeqMapTask_UserFn {..} = Core.toJSON additional

-- | Information about an output of a SeqMapTask.
--
-- /See:/ 'newSeqMapTaskOutputInfo' smart constructor.
data SeqMapTaskOutputInfo = SeqMapTaskOutputInfo
  { -- | The sink to write the output value to.
    sink :: (Core.Maybe Sink),
    -- | The id of the TupleTag the user code will tag the output value by.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SeqMapTaskOutputInfo' with the minimum fields required to make a request.
newSeqMapTaskOutputInfo ::
  SeqMapTaskOutputInfo
newSeqMapTaskOutputInfo =
  SeqMapTaskOutputInfo {sink = Core.Nothing, tag = Core.Nothing}

instance Core.FromJSON SeqMapTaskOutputInfo where
  parseJSON =
    Core.withObject
      "SeqMapTaskOutputInfo"
      ( \o ->
          SeqMapTaskOutputInfo
            Core.<$> (o Core..:? "sink")
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON SeqMapTaskOutputInfo where
  toJSON SeqMapTaskOutputInfo {..} =
    Core.object
      ( Core.catMaybes
          [("sink" Core..=) Core.<$> sink, ("tag" Core..=) Core.<$> tag]
      )

-- | Resources used by the Dataflow Service to run the job.
--
-- /See:/ 'newServiceResources' smart constructor.
newtype ServiceResources = ServiceResources
  { -- | Output only. List of Cloud Zones being used by the Dataflow Service for this job. Example: us-central1-c
    zones :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceResources' with the minimum fields required to make a request.
newServiceResources ::
  ServiceResources
newServiceResources = ServiceResources {zones = Core.Nothing}

instance Core.FromJSON ServiceResources where
  parseJSON =
    Core.withObject
      "ServiceResources"
      (\o -> ServiceResources Core.<$> (o Core..:? "zones"))

instance Core.ToJSON ServiceResources where
  toJSON ServiceResources {..} =
    Core.object (Core.catMaybes [("zones" Core..=) Core.<$> zones])

-- | A task which consists of a shell command for the worker to execute.
--
-- /See:/ 'newShellTask' smart constructor.
data ShellTask = ShellTask
  { -- | The shell command to run.
    command :: (Core.Maybe Core.Text),
    -- | Exit code for the task.
    exitCode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShellTask' with the minimum fields required to make a request.
newShellTask ::
  ShellTask
newShellTask =
  ShellTask {command = Core.Nothing, exitCode = Core.Nothing}

instance Core.FromJSON ShellTask where
  parseJSON =
    Core.withObject
      "ShellTask"
      ( \o ->
          ShellTask
            Core.<$> (o Core..:? "command")
            Core.<*> (o Core..:? "exitCode")
      )

instance Core.ToJSON ShellTask where
  toJSON ShellTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("command" Core..=) Core.<$> command,
            ("exitCode" Core..=) Core.<$> exitCode
          ]
      )

-- | Information about a side input of a DoFn or an input of a SeqDoFn.
--
-- /See:/ 'newSideInputInfo' smart constructor.
data SideInputInfo = SideInputInfo
  { -- | How to interpret the source element(s) as a side input value.
    kind :: (Core.Maybe SideInputInfo_Kind),
    -- | The source(s) to read element(s) from to get the value of this side input. If more than one source, then the elements are taken from the sources, in the specified order if order matters. At least one source is required.
    sources :: (Core.Maybe [Source]),
    -- | The id of the tag the user code will access this side input by; this should correspond to the tag of some MultiOutputInfo.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SideInputInfo' with the minimum fields required to make a request.
newSideInputInfo ::
  SideInputInfo
newSideInputInfo =
  SideInputInfo
    { kind = Core.Nothing,
      sources = Core.Nothing,
      tag = Core.Nothing
    }

instance Core.FromJSON SideInputInfo where
  parseJSON =
    Core.withObject
      "SideInputInfo"
      ( \o ->
          SideInputInfo
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "sources")
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON SideInputInfo where
  toJSON SideInputInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("sources" Core..=) Core.<$> sources,
            ("tag" Core..=) Core.<$> tag
          ]
      )

-- | How to interpret the source element(s) as a side input value.
--
-- /See:/ 'newSideInputInfo_Kind' smart constructor.
newtype SideInputInfo_Kind = SideInputInfo_Kind
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SideInputInfo_Kind' with the minimum fields required to make a request.
newSideInputInfo_Kind ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  SideInputInfo_Kind
newSideInputInfo_Kind additional =
  SideInputInfo_Kind {additional = additional}

instance Core.FromJSON SideInputInfo_Kind where
  parseJSON =
    Core.withObject
      "SideInputInfo_Kind"
      (\o -> SideInputInfo_Kind Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SideInputInfo_Kind where
  toJSON SideInputInfo_Kind {..} = Core.toJSON additional

-- | A sink that records can be encoded and written to.
--
-- /See:/ 'newSink' smart constructor.
data Sink = Sink
  { -- | The codec to use to encode data written to the sink.
    codec :: (Core.Maybe Sink_Codec),
    -- | The sink to write to, plus its parameters.
    spec :: (Core.Maybe Sink_Spec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sink' with the minimum fields required to make a request.
newSink ::
  Sink
newSink = Sink {codec = Core.Nothing, spec = Core.Nothing}

instance Core.FromJSON Sink where
  parseJSON =
    Core.withObject
      "Sink"
      ( \o ->
          Sink Core.<$> (o Core..:? "codec") Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON Sink where
  toJSON Sink {..} =
    Core.object
      ( Core.catMaybes
          [("codec" Core..=) Core.<$> codec, ("spec" Core..=) Core.<$> spec]
      )

-- | The codec to use to encode data written to the sink.
--
-- /See:/ 'newSink_Codec' smart constructor.
newtype Sink_Codec = Sink_Codec
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sink_Codec' with the minimum fields required to make a request.
newSink_Codec ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Sink_Codec
newSink_Codec additional = Sink_Codec {additional = additional}

instance Core.FromJSON Sink_Codec where
  parseJSON =
    Core.withObject
      "Sink_Codec"
      (\o -> Sink_Codec Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Sink_Codec where
  toJSON Sink_Codec {..} = Core.toJSON additional

-- | The sink to write to, plus its parameters.
--
-- /See:/ 'newSink_Spec' smart constructor.
newtype Sink_Spec = Sink_Spec
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sink_Spec' with the minimum fields required to make a request.
newSink_Spec ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Sink_Spec
newSink_Spec additional = Sink_Spec {additional = additional}

instance Core.FromJSON Sink_Spec where
  parseJSON =
    Core.withObject
      "Sink_Spec"
      (\o -> Sink_Spec Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Sink_Spec where
  toJSON Sink_Spec {..} = Core.toJSON additional

-- | Represents a snapshot of a job.
--
-- /See:/ 'newSnapshot' smart constructor.
data Snapshot = Snapshot
  { -- | The time this snapshot was created.
    creationTime :: (Core.Maybe Core.DateTime),
    -- | User specified description of the snapshot. Maybe empty.
    description :: (Core.Maybe Core.Text),
    -- | The disk byte size of the snapshot. Only available for snapshots in READY state.
    diskSizeBytes :: (Core.Maybe Core.Int64),
    -- | The unique ID of this snapshot.
    id :: (Core.Maybe Core.Text),
    -- | The project this snapshot belongs to.
    projectId :: (Core.Maybe Core.Text),
    -- | Pub\/Sub snapshot metadata.
    pubsubMetadata :: (Core.Maybe [PubsubSnapshotMetadata]),
    -- | Cloud region where this snapshot lives in, e.g., \"us-central1\".
    region :: (Core.Maybe Core.Text),
    -- | The job this snapshot was created from.
    sourceJobId :: (Core.Maybe Core.Text),
    -- | State of the snapshot.
    state :: (Core.Maybe Snapshot_State),
    -- | The time after which this snapshot will be automatically deleted.
    ttl :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
newSnapshot ::
  Snapshot
newSnapshot =
  Snapshot
    { creationTime = Core.Nothing,
      description = Core.Nothing,
      diskSizeBytes = Core.Nothing,
      id = Core.Nothing,
      projectId = Core.Nothing,
      pubsubMetadata = Core.Nothing,
      region = Core.Nothing,
      sourceJobId = Core.Nothing,
      state = Core.Nothing,
      ttl = Core.Nothing
    }

instance Core.FromJSON Snapshot where
  parseJSON =
    Core.withObject
      "Snapshot"
      ( \o ->
          Snapshot
            Core.<$> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "diskSizeBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "pubsubMetadata")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "sourceJobId")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "ttl")
      )

instance Core.ToJSON Snapshot where
  toJSON Snapshot {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationTime" Core..=) Core.<$> creationTime,
            ("description" Core..=) Core.<$> description,
            ("diskSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> diskSizeBytes,
            ("id" Core..=) Core.<$> id,
            ("projectId" Core..=) Core.<$> projectId,
            ("pubsubMetadata" Core..=) Core.<$> pubsubMetadata,
            ("region" Core..=) Core.<$> region,
            ("sourceJobId" Core..=) Core.<$> sourceJobId,
            ("state" Core..=) Core.<$> state,
            ("ttl" Core..=) Core.<$> ttl
          ]
      )

-- | Request to create a snapshot of a job.
--
-- /See:/ 'newSnapshotJobRequest' smart constructor.
data SnapshotJobRequest = SnapshotJobRequest
  { -- | User specified description of the snapshot. Maybe empty.
    description :: (Core.Maybe Core.Text),
    -- | The location that contains this job.
    location :: (Core.Maybe Core.Text),
    -- | If true, perform snapshots for sources which support this.
    snapshotSources :: (Core.Maybe Core.Bool),
    -- | TTL for the snapshot.
    ttl :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SnapshotJobRequest' with the minimum fields required to make a request.
newSnapshotJobRequest ::
  SnapshotJobRequest
newSnapshotJobRequest =
  SnapshotJobRequest
    { description = Core.Nothing,
      location = Core.Nothing,
      snapshotSources = Core.Nothing,
      ttl = Core.Nothing
    }

instance Core.FromJSON SnapshotJobRequest where
  parseJSON =
    Core.withObject
      "SnapshotJobRequest"
      ( \o ->
          SnapshotJobRequest
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "snapshotSources")
            Core.<*> (o Core..:? "ttl")
      )

instance Core.ToJSON SnapshotJobRequest where
  toJSON SnapshotJobRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("location" Core..=) Core.<$> location,
            ("snapshotSources" Core..=) Core.<$> snapshotSources,
            ("ttl" Core..=) Core.<$> ttl
          ]
      )

-- | A source that records can be read and decoded from.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
  { -- | While splitting, sources may specify the produced bundles as differences against another source, in order to save backend-side memory and allow bigger jobs. For details, see SourceSplitRequest. To support this use case, the full set of parameters of the source is logically obtained by taking the latest explicitly specified value of each parameter in the order: base/specs (later items win), spec (overrides anything in base/specs).
    baseSpecs :: (Core.Maybe [Source_BaseSpecsItem]),
    -- | The codec to use to decode data read from the source.
    codec :: (Core.Maybe Source_Codec),
    -- | Setting this value to true hints to the framework that the source doesn\'t need splitting, and using SourceSplitRequest on it would yield SOURCE/SPLIT/OUTCOME/USE/CURRENT. E.g. a file splitter may set this to true when splitting a single file into a set of byte ranges of appropriate size, and set this to false when splitting a filepattern into individual files. However, for efficiency, a file splitter may decide to produce file subranges directly from the filepattern to avoid a splitting round-trip. See SourceSplitRequest for an overview of the splitting process. This field is meaningful only in the Source objects populated by the user (e.g. when filling in a DerivedSource). Source objects supplied by the framework to the user don\'t have this field populated.
    doesNotNeedSplitting :: (Core.Maybe Core.Bool),
    -- | Optionally, metadata for this source can be supplied right away, avoiding a SourceGetMetadataOperation roundtrip (see SourceOperationRequest). This field is meaningful only in the Source objects populated by the user (e.g. when filling in a DerivedSource). Source objects supplied by the framework to the user don\'t have this field populated.
    metadata :: (Core.Maybe SourceMetadata),
    -- | The source to read from, plus its parameters.
    spec :: (Core.Maybe Source_Spec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource =
  Source
    { baseSpecs = Core.Nothing,
      codec = Core.Nothing,
      doesNotNeedSplitting = Core.Nothing,
      metadata = Core.Nothing,
      spec = Core.Nothing
    }

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \o ->
          Source
            Core.<$> (o Core..:? "baseSpecs")
            Core.<*> (o Core..:? "codec")
            Core.<*> (o Core..:? "doesNotNeedSplitting")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseSpecs" Core..=) Core.<$> baseSpecs,
            ("codec" Core..=) Core.<$> codec,
            ("doesNotNeedSplitting" Core..=) Core.<$> doesNotNeedSplitting,
            ("metadata" Core..=) Core.<$> metadata,
            ("spec" Core..=) Core.<$> spec
          ]
      )

--
-- /See:/ 'newSource_BaseSpecsItem' smart constructor.
newtype Source_BaseSpecsItem = Source_BaseSpecsItem
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source_BaseSpecsItem' with the minimum fields required to make a request.
newSource_BaseSpecsItem ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Source_BaseSpecsItem
newSource_BaseSpecsItem additional =
  Source_BaseSpecsItem {additional = additional}

instance Core.FromJSON Source_BaseSpecsItem where
  parseJSON =
    Core.withObject
      "Source_BaseSpecsItem"
      (\o -> Source_BaseSpecsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Source_BaseSpecsItem where
  toJSON Source_BaseSpecsItem {..} = Core.toJSON additional

-- | The codec to use to decode data read from the source.
--
-- /See:/ 'newSource_Codec' smart constructor.
newtype Source_Codec = Source_Codec
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source_Codec' with the minimum fields required to make a request.
newSource_Codec ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Source_Codec
newSource_Codec additional = Source_Codec {additional = additional}

instance Core.FromJSON Source_Codec where
  parseJSON =
    Core.withObject
      "Source_Codec"
      (\o -> Source_Codec Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Source_Codec where
  toJSON Source_Codec {..} = Core.toJSON additional

-- | The source to read from, plus its parameters.
--
-- /See:/ 'newSource_Spec' smart constructor.
newtype Source_Spec = Source_Spec
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source_Spec' with the minimum fields required to make a request.
newSource_Spec ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Source_Spec
newSource_Spec additional = Source_Spec {additional = additional}

instance Core.FromJSON Source_Spec where
  parseJSON =
    Core.withObject
      "Source_Spec"
      (\o -> Source_Spec Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Source_Spec where
  toJSON Source_Spec {..} = Core.toJSON additional

-- | DEPRECATED in favor of DynamicSourceSplit.
--
-- /See:/ 'newSourceFork' smart constructor.
data SourceFork = SourceFork
  { -- | DEPRECATED
    primary :: (Core.Maybe SourceSplitShard),
    -- | DEPRECATED
    primarySource :: (Core.Maybe DerivedSource),
    -- | DEPRECATED
    residual :: (Core.Maybe SourceSplitShard),
    -- | DEPRECATED
    residualSource :: (Core.Maybe DerivedSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceFork' with the minimum fields required to make a request.
newSourceFork ::
  SourceFork
newSourceFork =
  SourceFork
    { primary = Core.Nothing,
      primarySource = Core.Nothing,
      residual = Core.Nothing,
      residualSource = Core.Nothing
    }

instance Core.FromJSON SourceFork where
  parseJSON =
    Core.withObject
      "SourceFork"
      ( \o ->
          SourceFork
            Core.<$> (o Core..:? "primary")
            Core.<*> (o Core..:? "primarySource")
            Core.<*> (o Core..:? "residual")
            Core.<*> (o Core..:? "residualSource")
      )

instance Core.ToJSON SourceFork where
  toJSON SourceFork {..} =
    Core.object
      ( Core.catMaybes
          [ ("primary" Core..=) Core.<$> primary,
            ("primarySource" Core..=) Core.<$> primarySource,
            ("residual" Core..=) Core.<$> residual,
            ("residualSource" Core..=) Core.<$> residualSource
          ]
      )

-- | A request to compute the SourceMetadata of a Source.
--
-- /See:/ 'newSourceGetMetadataRequest' smart constructor.
newtype SourceGetMetadataRequest = SourceGetMetadataRequest
  { -- | Specification of the source whose metadata should be computed.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceGetMetadataRequest' with the minimum fields required to make a request.
newSourceGetMetadataRequest ::
  SourceGetMetadataRequest
newSourceGetMetadataRequest =
  SourceGetMetadataRequest {source = Core.Nothing}

instance Core.FromJSON SourceGetMetadataRequest where
  parseJSON =
    Core.withObject
      "SourceGetMetadataRequest"
      (\o -> SourceGetMetadataRequest Core.<$> (o Core..:? "source"))

instance Core.ToJSON SourceGetMetadataRequest where
  toJSON SourceGetMetadataRequest {..} =
    Core.object (Core.catMaybes [("source" Core..=) Core.<$> source])

-- | The result of a SourceGetMetadataOperation.
--
-- /See:/ 'newSourceGetMetadataResponse' smart constructor.
newtype SourceGetMetadataResponse = SourceGetMetadataResponse
  { -- | The computed metadata.
    metadata :: (Core.Maybe SourceMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceGetMetadataResponse' with the minimum fields required to make a request.
newSourceGetMetadataResponse ::
  SourceGetMetadataResponse
newSourceGetMetadataResponse =
  SourceGetMetadataResponse {metadata = Core.Nothing}

instance Core.FromJSON SourceGetMetadataResponse where
  parseJSON =
    Core.withObject
      "SourceGetMetadataResponse"
      (\o -> SourceGetMetadataResponse Core.<$> (o Core..:? "metadata"))

instance Core.ToJSON SourceGetMetadataResponse where
  toJSON SourceGetMetadataResponse {..} =
    Core.object
      (Core.catMaybes [("metadata" Core..=) Core.<$> metadata])

-- | Metadata about a Source useful for automatically optimizing and tuning the pipeline, etc.
--
-- /See:/ 'newSourceMetadata' smart constructor.
data SourceMetadata = SourceMetadata
  { -- | An estimate of the total size (in bytes) of the data that would be read from this source. This estimate is in terms of external storage size, before any decompression or other processing done by the reader.
    estimatedSizeBytes :: (Core.Maybe Core.Int64),
    -- | Specifies that the size of this source is known to be infinite (this is a streaming source).
    infinite :: (Core.Maybe Core.Bool),
    -- | Whether this source is known to produce key\/value pairs with the (encoded) keys in lexicographically sorted order.
    producesSortedKeys :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceMetadata' with the minimum fields required to make a request.
newSourceMetadata ::
  SourceMetadata
newSourceMetadata =
  SourceMetadata
    { estimatedSizeBytes = Core.Nothing,
      infinite = Core.Nothing,
      producesSortedKeys = Core.Nothing
    }

instance Core.FromJSON SourceMetadata where
  parseJSON =
    Core.withObject
      "SourceMetadata"
      ( \o ->
          SourceMetadata
            Core.<$> ( o
                         Core..:? "estimatedSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "infinite")
            Core.<*> (o Core..:? "producesSortedKeys")
      )

instance Core.ToJSON SourceMetadata where
  toJSON SourceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("estimatedSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> estimatedSizeBytes,
            ("infinite" Core..=) Core.<$> infinite,
            ("producesSortedKeys" Core..=) Core.<$> producesSortedKeys
          ]
      )

-- | A work item that represents the different operations that can be performed on a user-defined Source specification.
--
-- /See:/ 'newSourceOperationRequest' smart constructor.
data SourceOperationRequest = SourceOperationRequest
  { -- | Information about a request to get metadata about a source.
    getMetadata :: (Core.Maybe SourceGetMetadataRequest),
    -- | User-provided name of the Read instruction for this source.
    name :: (Core.Maybe Core.Text),
    -- | System-defined name for the Read instruction for this source in the original workflow graph.
    originalName :: (Core.Maybe Core.Text),
    -- | Information about a request to split a source.
    split :: (Core.Maybe SourceSplitRequest),
    -- | System-defined name of the stage containing the source operation. Unique across the workflow.
    stageName :: (Core.Maybe Core.Text),
    -- | System-defined name of the Read instruction for this source. Unique across the workflow.
    systemName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceOperationRequest' with the minimum fields required to make a request.
newSourceOperationRequest ::
  SourceOperationRequest
newSourceOperationRequest =
  SourceOperationRequest
    { getMetadata = Core.Nothing,
      name = Core.Nothing,
      originalName = Core.Nothing,
      split = Core.Nothing,
      stageName = Core.Nothing,
      systemName = Core.Nothing
    }

instance Core.FromJSON SourceOperationRequest where
  parseJSON =
    Core.withObject
      "SourceOperationRequest"
      ( \o ->
          SourceOperationRequest
            Core.<$> (o Core..:? "getMetadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "originalName")
            Core.<*> (o Core..:? "split")
            Core.<*> (o Core..:? "stageName")
            Core.<*> (o Core..:? "systemName")
      )

instance Core.ToJSON SourceOperationRequest where
  toJSON SourceOperationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("getMetadata" Core..=) Core.<$> getMetadata,
            ("name" Core..=) Core.<$> name,
            ("originalName" Core..=) Core.<$> originalName,
            ("split" Core..=) Core.<$> split,
            ("stageName" Core..=) Core.<$> stageName,
            ("systemName" Core..=) Core.<$> systemName
          ]
      )

-- | The result of a SourceOperationRequest, specified in ReportWorkItemStatusRequest.source_operation when the work item is completed.
--
-- /See:/ 'newSourceOperationResponse' smart constructor.
data SourceOperationResponse = SourceOperationResponse
  { -- | A response to a request to get metadata about a source.
    getMetadata :: (Core.Maybe SourceGetMetadataResponse),
    -- | A response to a request to split a source.
    split :: (Core.Maybe SourceSplitResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceOperationResponse' with the minimum fields required to make a request.
newSourceOperationResponse ::
  SourceOperationResponse
newSourceOperationResponse =
  SourceOperationResponse
    { getMetadata = Core.Nothing,
      split = Core.Nothing
    }

instance Core.FromJSON SourceOperationResponse where
  parseJSON =
    Core.withObject
      "SourceOperationResponse"
      ( \o ->
          SourceOperationResponse
            Core.<$> (o Core..:? "getMetadata")
            Core.<*> (o Core..:? "split")
      )

instance Core.ToJSON SourceOperationResponse where
  toJSON SourceOperationResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("getMetadata" Core..=) Core.<$> getMetadata,
            ("split" Core..=) Core.<$> split
          ]
      )

-- | Hints for splitting a Source into bundles (parts for parallel processing) using SourceSplitRequest.
--
-- /See:/ 'newSourceSplitOptions' smart constructor.
data SourceSplitOptions = SourceSplitOptions
  { -- | The source should be split into a set of bundles where the estimated size of each is approximately this many bytes.
    desiredBundleSizeBytes :: (Core.Maybe Core.Int64),
    -- | DEPRECATED in favor of desired/bundle/size_bytes.
    desiredShardSizeBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceSplitOptions' with the minimum fields required to make a request.
newSourceSplitOptions ::
  SourceSplitOptions
newSourceSplitOptions =
  SourceSplitOptions
    { desiredBundleSizeBytes = Core.Nothing,
      desiredShardSizeBytes = Core.Nothing
    }

instance Core.FromJSON SourceSplitOptions where
  parseJSON =
    Core.withObject
      "SourceSplitOptions"
      ( \o ->
          SourceSplitOptions
            Core.<$> ( o
                         Core..:? "desiredBundleSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "desiredShardSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON SourceSplitOptions where
  toJSON SourceSplitOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("desiredBundleSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> desiredBundleSizeBytes,
            ("desiredShardSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> desiredShardSizeBytes
          ]
      )

-- | Represents the operation to split a high-level Source specification into bundles (parts for parallel processing). At a high level, splitting of a source into bundles happens as follows: SourceSplitRequest is applied to the source. If it returns SOURCE/SPLIT/OUTCOME/USE/CURRENT, no further splitting happens and the source is used \"as is\". Otherwise, splitting is applied recursively to each produced DerivedSource. As an optimization, for any Source, if its does/not/need/splitting is true, the framework assumes that splitting this source would return SOURCE/SPLIT/OUTCOME/USE_CURRENT, and doesn\'t initiate a SourceSplitRequest. This applies both to the initial source being split and to bundles produced from it.
--
-- /See:/ 'newSourceSplitRequest' smart constructor.
data SourceSplitRequest = SourceSplitRequest
  { -- | Hints for tuning the splitting process.
    options :: (Core.Maybe SourceSplitOptions),
    -- | Specification of the source to be split.
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceSplitRequest' with the minimum fields required to make a request.
newSourceSplitRequest ::
  SourceSplitRequest
newSourceSplitRequest =
  SourceSplitRequest {options = Core.Nothing, source = Core.Nothing}

instance Core.FromJSON SourceSplitRequest where
  parseJSON =
    Core.withObject
      "SourceSplitRequest"
      ( \o ->
          SourceSplitRequest
            Core.<$> (o Core..:? "options")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON SourceSplitRequest where
  toJSON SourceSplitRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("options" Core..=) Core.<$> options,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | The response to a SourceSplitRequest.
--
-- /See:/ 'newSourceSplitResponse' smart constructor.
data SourceSplitResponse = SourceSplitResponse
  { -- | If outcome is SPLITTING_HAPPENED, then this is a list of bundles into which the source was split. Otherwise this field is ignored. This list can be empty, which means the source represents an empty input.
    bundles :: (Core.Maybe [DerivedSource]),
    -- | Indicates whether splitting happened and produced a list of bundles. If this is USE/CURRENT/SOURCE/AS/IS, the current source should be processed \"as is\" without splitting. \"bundles\" is ignored in this case. If this is SPLITTING_HAPPENED, then \"bundles\" contains a list of bundles into which the source was split.
    outcome :: (Core.Maybe SourceSplitResponse_Outcome),
    -- | DEPRECATED in favor of bundles.
    shards :: (Core.Maybe [SourceSplitShard])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceSplitResponse' with the minimum fields required to make a request.
newSourceSplitResponse ::
  SourceSplitResponse
newSourceSplitResponse =
  SourceSplitResponse
    { bundles = Core.Nothing,
      outcome = Core.Nothing,
      shards = Core.Nothing
    }

instance Core.FromJSON SourceSplitResponse where
  parseJSON =
    Core.withObject
      "SourceSplitResponse"
      ( \o ->
          SourceSplitResponse
            Core.<$> (o Core..:? "bundles")
            Core.<*> (o Core..:? "outcome")
            Core.<*> (o Core..:? "shards")
      )

instance Core.ToJSON SourceSplitResponse where
  toJSON SourceSplitResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("bundles" Core..=) Core.<$> bundles,
            ("outcome" Core..=) Core.<$> outcome,
            ("shards" Core..=) Core.<$> shards
          ]
      )

-- | DEPRECATED in favor of DerivedSource.
--
-- /See:/ 'newSourceSplitShard' smart constructor.
data SourceSplitShard = SourceSplitShard
  { -- | DEPRECATED
    derivationMode :: (Core.Maybe SourceSplitShard_DerivationMode),
    -- | DEPRECATED
    source :: (Core.Maybe Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceSplitShard' with the minimum fields required to make a request.
newSourceSplitShard ::
  SourceSplitShard
newSourceSplitShard =
  SourceSplitShard
    { derivationMode = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON SourceSplitShard where
  parseJSON =
    Core.withObject
      "SourceSplitShard"
      ( \o ->
          SourceSplitShard
            Core.<$> (o Core..:? "derivationMode")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON SourceSplitShard where
  toJSON SourceSplitShard {..} =
    Core.object
      ( Core.catMaybes
          [ ("derivationMode" Core..=) Core.<$> derivationMode,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | Metadata for a Spanner connector used by the job.
--
-- /See:/ 'newSpannerIODetails' smart constructor.
data SpannerIODetails = SpannerIODetails
  { -- | DatabaseId accessed in the connection.
    databaseId :: (Core.Maybe Core.Text),
    -- | InstanceId accessed in the connection.
    instanceId :: (Core.Maybe Core.Text),
    -- | ProjectId accessed in the connection.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerIODetails' with the minimum fields required to make a request.
newSpannerIODetails ::
  SpannerIODetails
newSpannerIODetails =
  SpannerIODetails
    { databaseId = Core.Nothing,
      instanceId = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON SpannerIODetails where
  parseJSON =
    Core.withObject
      "SpannerIODetails"
      ( \o ->
          SpannerIODetails
            Core.<$> (o Core..:? "databaseId")
            Core.<*> (o Core..:? "instanceId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON SpannerIODetails where
  toJSON SpannerIODetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("databaseId" Core..=) Core.<$> databaseId,
            ("instanceId" Core..=) Core.<$> instanceId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | A representation of an int64, n, that is immune to precision loss when encoded in JSON.
--
-- /See:/ 'newSplitInt64' smart constructor.
data SplitInt64 = SplitInt64
  { -- | The high order bits, including the sign: n >> 32.
    highBits :: (Core.Maybe Core.Int32),
    -- | The low order bits: n & 0xffffffff.
    lowBits :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SplitInt64' with the minimum fields required to make a request.
newSplitInt64 ::
  SplitInt64
newSplitInt64 =
  SplitInt64 {highBits = Core.Nothing, lowBits = Core.Nothing}

instance Core.FromJSON SplitInt64 where
  parseJSON =
    Core.withObject
      "SplitInt64"
      ( \o ->
          SplitInt64
            Core.<$> (o Core..:? "highBits")
            Core.<*> (o Core..:? "lowBits")
      )

instance Core.ToJSON SplitInt64 where
  toJSON SplitInt64 {..} =
    Core.object
      ( Core.catMaybes
          [ ("highBits" Core..=) Core.<$> highBits,
            ("lowBits" Core..=) Core.<$> lowBits
          ]
      )

-- | Information about the workers and work items within a stage.
--
-- /See:/ 'newStageExecutionDetails' smart constructor.
data StageExecutionDetails = StageExecutionDetails
  { -- | If present, this response does not contain all requested tasks. To obtain the next page of results, repeat the request with page_token set to this value.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Workers that have done work on the stage.
    workers :: (Core.Maybe [WorkerDetails])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageExecutionDetails' with the minimum fields required to make a request.
newStageExecutionDetails ::
  StageExecutionDetails
newStageExecutionDetails =
  StageExecutionDetails
    { nextPageToken = Core.Nothing,
      workers = Core.Nothing
    }

instance Core.FromJSON StageExecutionDetails where
  parseJSON =
    Core.withObject
      "StageExecutionDetails"
      ( \o ->
          StageExecutionDetails
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "workers")
      )

instance Core.ToJSON StageExecutionDetails where
  toJSON StageExecutionDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("workers" Core..=) Core.<$> workers
          ]
      )

-- | Description of an input or output of an execution stage.
--
-- /See:/ 'newStageSource' smart constructor.
data StageSource = StageSource
  { -- | Dataflow service generated name for this source.
    name :: (Core.Maybe Core.Text),
    -- | User name for the original user transform or collection with which this source is most closely associated.
    originalTransformOrCollection :: (Core.Maybe Core.Text),
    -- | Size of the source, if measurable.
    sizeBytes :: (Core.Maybe Core.Int64),
    -- | Human-readable name for this source; may be user or system generated.
    userName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageSource' with the minimum fields required to make a request.
newStageSource ::
  StageSource
newStageSource =
  StageSource
    { name = Core.Nothing,
      originalTransformOrCollection = Core.Nothing,
      sizeBytes = Core.Nothing,
      userName = Core.Nothing
    }

instance Core.FromJSON StageSource where
  parseJSON =
    Core.withObject
      "StageSource"
      ( \o ->
          StageSource
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "originalTransformOrCollection")
            Core.<*> (o Core..:? "sizeBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "userName")
      )

instance Core.ToJSON StageSource where
  toJSON StageSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("originalTransformOrCollection" Core..=)
              Core.<$> originalTransformOrCollection,
            ("sizeBytes" Core..=) Core.. Core.AsText Core.<$> sizeBytes,
            ("userName" Core..=) Core.<$> userName
          ]
      )

-- | Information about a particular execution stage of a job.
--
-- /See:/ 'newStageSummary' smart constructor.
data StageSummary = StageSummary
  { -- | End time of this stage. If the work item is completed, this is the actual end time of the stage. Otherwise, it is the predicted end time.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Metrics for this stage.
    metrics :: (Core.Maybe [MetricUpdate]),
    -- | Progress for this stage. Only applicable to Batch jobs.
    progress :: (Core.Maybe ProgressTimeseries),
    -- | ID of this stage
    stageId :: (Core.Maybe Core.Text),
    -- | Start time of this stage.
    startTime :: (Core.Maybe Core.DateTime),
    -- | State of this stage.
    state :: (Core.Maybe StageSummary_State),
    -- | Straggler summary for this stage.
    stragglerSummary :: (Core.Maybe StragglerSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageSummary' with the minimum fields required to make a request.
newStageSummary ::
  StageSummary
newStageSummary =
  StageSummary
    { endTime = Core.Nothing,
      metrics = Core.Nothing,
      progress = Core.Nothing,
      stageId = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      stragglerSummary = Core.Nothing
    }

instance Core.FromJSON StageSummary where
  parseJSON =
    Core.withObject
      "StageSummary"
      ( \o ->
          StageSummary
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "stageId")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stragglerSummary")
      )

instance Core.ToJSON StageSummary where
  toJSON StageSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("metrics" Core..=) Core.<$> metrics,
            ("progress" Core..=) Core.<$> progress,
            ("stageId" Core..=) Core.<$> stageId,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("stragglerSummary" Core..=) Core.<$> stragglerSummary
          ]
      )

-- | State family configuration.
--
-- /See:/ 'newStateFamilyConfig' smart constructor.
data StateFamilyConfig = StateFamilyConfig
  { -- | If true, this family corresponds to a read operation.
    isRead :: (Core.Maybe Core.Bool),
    -- | The state family value.
    stateFamily :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateFamilyConfig' with the minimum fields required to make a request.
newStateFamilyConfig ::
  StateFamilyConfig
newStateFamilyConfig =
  StateFamilyConfig
    { isRead = Core.Nothing,
      stateFamily = Core.Nothing
    }

instance Core.FromJSON StateFamilyConfig where
  parseJSON =
    Core.withObject
      "StateFamilyConfig"
      ( \o ->
          StateFamilyConfig
            Core.<$> (o Core..:? "isRead")
            Core.<*> (o Core..:? "stateFamily")
      )

instance Core.ToJSON StateFamilyConfig where
  toJSON StateFamilyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("isRead" Core..=) Core.<$> isRead,
            ("stateFamily" Core..=) Core.<$> stateFamily
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Defines a particular step within a Cloud Dataflow job. A job consists of multiple steps, each of which performs some specific operation as part of the overall job. Data is typically passed from one step to another as part of the job. __Note:__ The properties of this object are not stable and might change. Here\'s an example of a sequence of steps which together implement a Map-Reduce job: * Read a collection of data from some source, parsing the collection\'s elements. * Validate the elements. * Apply a user-defined function to map each element to some value and extract an element-specific key value. * Group elements with the same key into a single element with that key, transforming a multiply-keyed collection into a uniquely-keyed collection. * Write the elements out to some data sink. Note that the Cloud Dataflow service may be used to run many different types of jobs, not just Map-Reduce.
--
-- /See:/ 'newStep' smart constructor.
data Step = Step
  { -- | The kind of step in the Cloud Dataflow job.
    kind :: (Core.Maybe Core.Text),
    -- | The name that identifies the step. This must be unique for each step with respect to all other steps in the Cloud Dataflow job.
    name :: (Core.Maybe Core.Text),
    -- | Named properties associated with the step. Each kind of predefined step has its own required set of properties. Must be provided on Create. Only retrieved with JOB/VIEW/ALL.
    properties :: (Core.Maybe Step_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Step' with the minimum fields required to make a request.
newStep ::
  Step
newStep =
  Step
    { kind = Core.Nothing,
      name = Core.Nothing,
      properties = Core.Nothing
    }

instance Core.FromJSON Step where
  parseJSON =
    Core.withObject
      "Step"
      ( \o ->
          Step
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON Step where
  toJSON Step {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Named properties associated with the step. Each kind of predefined step has its own required set of properties. Must be provided on Create. Only retrieved with JOB/VIEW/ALL.
--
-- /See:/ 'newStep_Properties' smart constructor.
newtype Step_Properties = Step_Properties
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Step_Properties' with the minimum fields required to make a request.
newStep_Properties ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Step_Properties
newStep_Properties additional =
  Step_Properties {additional = additional}

instance Core.FromJSON Step_Properties where
  parseJSON =
    Core.withObject
      "Step_Properties"
      (\o -> Step_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Step_Properties where
  toJSON Step_Properties {..} = Core.toJSON additional

-- | Information for a straggler.
--
-- /See:/ 'newStraggler' smart constructor.
data Straggler = Straggler
  { -- | Batch straggler identification and debugging information.
    batchStraggler :: (Core.Maybe StragglerInfo),
    -- | Streaming straggler identification and debugging information.
    streamingStraggler :: (Core.Maybe StreamingStragglerInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Straggler' with the minimum fields required to make a request.
newStraggler ::
  Straggler
newStraggler =
  Straggler
    { batchStraggler = Core.Nothing,
      streamingStraggler = Core.Nothing
    }

instance Core.FromJSON Straggler where
  parseJSON =
    Core.withObject
      "Straggler"
      ( \o ->
          Straggler
            Core.<$> (o Core..:? "batchStraggler")
            Core.<*> (o Core..:? "streamingStraggler")
      )

instance Core.ToJSON Straggler where
  toJSON Straggler {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchStraggler" Core..=) Core.<$> batchStraggler,
            ("streamingStraggler" Core..=) Core.<$> streamingStraggler
          ]
      )

-- | Information useful for debugging a straggler. Each type will provide specialized debugging information relevant for a particular cause. The StragglerDebuggingInfo will be 1:1 mapping to the StragglerCause enum.
--
-- /See:/ 'newStragglerDebuggingInfo' smart constructor.
newtype StragglerDebuggingInfo = StragglerDebuggingInfo
  { -- | Hot key debugging details.
    hotKey :: (Core.Maybe HotKeyDebuggingInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StragglerDebuggingInfo' with the minimum fields required to make a request.
newStragglerDebuggingInfo ::
  StragglerDebuggingInfo
newStragglerDebuggingInfo =
  StragglerDebuggingInfo {hotKey = Core.Nothing}

instance Core.FromJSON StragglerDebuggingInfo where
  parseJSON =
    Core.withObject
      "StragglerDebuggingInfo"
      (\o -> StragglerDebuggingInfo Core.<$> (o Core..:? "hotKey"))

instance Core.ToJSON StragglerDebuggingInfo where
  toJSON StragglerDebuggingInfo {..} =
    Core.object (Core.catMaybes [("hotKey" Core..=) Core.<$> hotKey])

-- | Information useful for straggler identification and debugging.
--
-- /See:/ 'newStragglerInfo' smart constructor.
data StragglerInfo = StragglerInfo
  { -- | The straggler causes, keyed by the string representation of the StragglerCause enum and contains specialized debugging information for each straggler cause.
    causes :: (Core.Maybe StragglerInfo_Causes),
    -- | The time when the work item attempt became a straggler.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StragglerInfo' with the minimum fields required to make a request.
newStragglerInfo ::
  StragglerInfo
newStragglerInfo =
  StragglerInfo {causes = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON StragglerInfo where
  parseJSON =
    Core.withObject
      "StragglerInfo"
      ( \o ->
          StragglerInfo
            Core.<$> (o Core..:? "causes")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON StragglerInfo where
  toJSON StragglerInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("causes" Core..=) Core.<$> causes,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The straggler causes, keyed by the string representation of the StragglerCause enum and contains specialized debugging information for each straggler cause.
--
-- /See:/ 'newStragglerInfo_Causes' smart constructor.
newtype StragglerInfo_Causes = StragglerInfo_Causes
  { additional :: (Core.HashMap Core.Text StragglerDebuggingInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StragglerInfo_Causes' with the minimum fields required to make a request.
newStragglerInfo_Causes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text StragglerDebuggingInfo ->
  StragglerInfo_Causes
newStragglerInfo_Causes additional =
  StragglerInfo_Causes {additional = additional}

instance Core.FromJSON StragglerInfo_Causes where
  parseJSON =
    Core.withObject
      "StragglerInfo_Causes"
      (\o -> StragglerInfo_Causes Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON StragglerInfo_Causes where
  toJSON StragglerInfo_Causes {..} = Core.toJSON additional

-- | Summarized straggler identification details.
--
-- /See:/ 'newStragglerSummary' smart constructor.
data StragglerSummary = StragglerSummary
  { -- | The most recent stragglers.
    recentStragglers :: (Core.Maybe [Straggler]),
    -- | Aggregated counts of straggler causes, keyed by the string representation of the StragglerCause enum.
    stragglerCauseCount :: (Core.Maybe StragglerSummary_StragglerCauseCount),
    -- | The total count of stragglers.
    totalStragglerCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StragglerSummary' with the minimum fields required to make a request.
newStragglerSummary ::
  StragglerSummary
newStragglerSummary =
  StragglerSummary
    { recentStragglers = Core.Nothing,
      stragglerCauseCount = Core.Nothing,
      totalStragglerCount = Core.Nothing
    }

instance Core.FromJSON StragglerSummary where
  parseJSON =
    Core.withObject
      "StragglerSummary"
      ( \o ->
          StragglerSummary
            Core.<$> (o Core..:? "recentStragglers")
            Core.<*> (o Core..:? "stragglerCauseCount")
            Core.<*> ( o
                         Core..:? "totalStragglerCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON StragglerSummary where
  toJSON StragglerSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("recentStragglers" Core..=) Core.<$> recentStragglers,
            ("stragglerCauseCount" Core..=) Core.<$> stragglerCauseCount,
            ("totalStragglerCount" Core..=)
              Core.. Core.AsText
              Core.<$> totalStragglerCount
          ]
      )

-- | Aggregated counts of straggler causes, keyed by the string representation of the StragglerCause enum.
--
-- /See:/ 'newStragglerSummary_StragglerCauseCount' smart constructor.
newtype StragglerSummary_StragglerCauseCount = StragglerSummary_StragglerCauseCount
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StragglerSummary_StragglerCauseCount' with the minimum fields required to make a request.
newStragglerSummary_StragglerCauseCount ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  StragglerSummary_StragglerCauseCount
newStragglerSummary_StragglerCauseCount additional =
  StragglerSummary_StragglerCauseCount {additional = additional}

instance Core.FromJSON StragglerSummary_StragglerCauseCount where
  parseJSON =
    Core.withObject
      "StragglerSummary_StragglerCauseCount"
      ( \o ->
          StragglerSummary_StragglerCauseCount
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StragglerSummary_StragglerCauseCount where
  toJSON StragglerSummary_StragglerCauseCount {..} =
    Core.toJSON additional

-- | Describes a stream of data, either as input to be processed or as output of a streaming Dataflow job.
--
-- /See:/ 'newStreamLocation' smart constructor.
data StreamLocation = StreamLocation
  { -- | The stream is a custom source.
    customSourceLocation :: (Core.Maybe CustomSourceLocation),
    -- | The stream is a pubsub stream.
    pubsubLocation :: (Core.Maybe PubsubLocation),
    -- | The stream is a streaming side input.
    sideInputLocation :: (Core.Maybe StreamingSideInputLocation),
    -- | The stream is part of another computation within the current streaming Dataflow job.
    streamingStageLocation :: (Core.Maybe StreamingStageLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamLocation' with the minimum fields required to make a request.
newStreamLocation ::
  StreamLocation
newStreamLocation =
  StreamLocation
    { customSourceLocation = Core.Nothing,
      pubsubLocation = Core.Nothing,
      sideInputLocation = Core.Nothing,
      streamingStageLocation = Core.Nothing
    }

instance Core.FromJSON StreamLocation where
  parseJSON =
    Core.withObject
      "StreamLocation"
      ( \o ->
          StreamLocation
            Core.<$> (o Core..:? "customSourceLocation")
            Core.<*> (o Core..:? "pubsubLocation")
            Core.<*> (o Core..:? "sideInputLocation")
            Core.<*> (o Core..:? "streamingStageLocation")
      )

instance Core.ToJSON StreamLocation where
  toJSON StreamLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("customSourceLocation" Core..=) Core.<$> customSourceLocation,
            ("pubsubLocation" Core..=) Core.<$> pubsubLocation,
            ("sideInputLocation" Core..=) Core.<$> sideInputLocation,
            ("streamingStageLocation" Core..=)
              Core.<$> streamingStageLocation
          ]
      )

-- | Streaming appliance snapshot configuration.
--
-- /See:/ 'newStreamingApplianceSnapshotConfig' smart constructor.
data StreamingApplianceSnapshotConfig = StreamingApplianceSnapshotConfig
  { -- | Indicates which endpoint is used to import appliance state.
    importStateEndpoint :: (Core.Maybe Core.Text),
    -- | If set, indicates the snapshot id for the snapshot being performed.
    snapshotId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingApplianceSnapshotConfig' with the minimum fields required to make a request.
newStreamingApplianceSnapshotConfig ::
  StreamingApplianceSnapshotConfig
newStreamingApplianceSnapshotConfig =
  StreamingApplianceSnapshotConfig
    { importStateEndpoint =
        Core.Nothing,
      snapshotId = Core.Nothing
    }

instance Core.FromJSON StreamingApplianceSnapshotConfig where
  parseJSON =
    Core.withObject
      "StreamingApplianceSnapshotConfig"
      ( \o ->
          StreamingApplianceSnapshotConfig
            Core.<$> (o Core..:? "importStateEndpoint")
            Core.<*> (o Core..:? "snapshotId")
      )

instance Core.ToJSON StreamingApplianceSnapshotConfig where
  toJSON StreamingApplianceSnapshotConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("importStateEndpoint" Core..=) Core.<$> importStateEndpoint,
            ("snapshotId" Core..=) Core.<$> snapshotId
          ]
      )

-- | Configuration information for a single streaming computation.
--
-- /See:/ 'newStreamingComputationConfig' smart constructor.
data StreamingComputationConfig = StreamingComputationConfig
  { -- | Unique identifier for this computation.
    computationId :: (Core.Maybe Core.Text),
    -- | Instructions that comprise the computation.
    instructions :: (Core.Maybe [ParallelInstruction]),
    -- | Stage name of this computation.
    stageName :: (Core.Maybe Core.Text),
    -- | System defined name for this computation.
    systemName :: (Core.Maybe Core.Text),
    -- | Map from user name of stateful transforms in this stage to their state family.
    transformUserNameToStateFamily ::
      ( Core.Maybe
          StreamingComputationConfig_TransformUserNameToStateFamily
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingComputationConfig' with the minimum fields required to make a request.
newStreamingComputationConfig ::
  StreamingComputationConfig
newStreamingComputationConfig =
  StreamingComputationConfig
    { computationId = Core.Nothing,
      instructions = Core.Nothing,
      stageName = Core.Nothing,
      systemName = Core.Nothing,
      transformUserNameToStateFamily = Core.Nothing
    }

instance Core.FromJSON StreamingComputationConfig where
  parseJSON =
    Core.withObject
      "StreamingComputationConfig"
      ( \o ->
          StreamingComputationConfig
            Core.<$> (o Core..:? "computationId")
            Core.<*> (o Core..:? "instructions")
            Core.<*> (o Core..:? "stageName")
            Core.<*> (o Core..:? "systemName")
            Core.<*> (o Core..:? "transformUserNameToStateFamily")
      )

instance Core.ToJSON StreamingComputationConfig where
  toJSON StreamingComputationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("computationId" Core..=) Core.<$> computationId,
            ("instructions" Core..=) Core.<$> instructions,
            ("stageName" Core..=) Core.<$> stageName,
            ("systemName" Core..=) Core.<$> systemName,
            ("transformUserNameToStateFamily" Core..=)
              Core.<$> transformUserNameToStateFamily
          ]
      )

-- | Map from user name of stateful transforms in this stage to their state family.
--
-- /See:/ 'newStreamingComputationConfig_TransformUserNameToStateFamily' smart constructor.
newtype StreamingComputationConfig_TransformUserNameToStateFamily = StreamingComputationConfig_TransformUserNameToStateFamily
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingComputationConfig_TransformUserNameToStateFamily' with the minimum fields required to make a request.
newStreamingComputationConfig_TransformUserNameToStateFamily ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  StreamingComputationConfig_TransformUserNameToStateFamily
newStreamingComputationConfig_TransformUserNameToStateFamily
  additional =
    StreamingComputationConfig_TransformUserNameToStateFamily
      { additional =
          additional
      }

instance
  Core.FromJSON
    StreamingComputationConfig_TransformUserNameToStateFamily
  where
  parseJSON =
    Core.withObject
      "StreamingComputationConfig_TransformUserNameToStateFamily"
      ( \o ->
          StreamingComputationConfig_TransformUserNameToStateFamily
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    StreamingComputationConfig_TransformUserNameToStateFamily
  where
  toJSON
    StreamingComputationConfig_TransformUserNameToStateFamily {..} =
      Core.toJSON additional

-- | Describes full or partial data disk assignment information of the computation ranges.
--
-- /See:/ 'newStreamingComputationRanges' smart constructor.
data StreamingComputationRanges = StreamingComputationRanges
  { -- | The ID of the computation.
    computationId :: (Core.Maybe Core.Text),
    -- | Data disk assignments for ranges from this computation.
    rangeAssignments :: (Core.Maybe [KeyRangeDataDiskAssignment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingComputationRanges' with the minimum fields required to make a request.
newStreamingComputationRanges ::
  StreamingComputationRanges
newStreamingComputationRanges =
  StreamingComputationRanges
    { computationId = Core.Nothing,
      rangeAssignments = Core.Nothing
    }

instance Core.FromJSON StreamingComputationRanges where
  parseJSON =
    Core.withObject
      "StreamingComputationRanges"
      ( \o ->
          StreamingComputationRanges
            Core.<$> (o Core..:? "computationId")
            Core.<*> (o Core..:? "rangeAssignments")
      )

instance Core.ToJSON StreamingComputationRanges where
  toJSON StreamingComputationRanges {..} =
    Core.object
      ( Core.catMaybes
          [ ("computationId" Core..=) Core.<$> computationId,
            ("rangeAssignments" Core..=) Core.<$> rangeAssignments
          ]
      )

-- | A task which describes what action should be performed for the specified streaming computation ranges.
--
-- /See:/ 'newStreamingComputationTask' smart constructor.
data StreamingComputationTask = StreamingComputationTask
  { -- | Contains ranges of a streaming computation this task should apply to.
    computationRanges :: (Core.Maybe [StreamingComputationRanges]),
    -- | Describes the set of data disks this task should apply to.
    dataDisks :: (Core.Maybe [MountedDataDisk]),
    -- | A type of streaming computation task.
    taskType :: (Core.Maybe StreamingComputationTask_TaskType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingComputationTask' with the minimum fields required to make a request.
newStreamingComputationTask ::
  StreamingComputationTask
newStreamingComputationTask =
  StreamingComputationTask
    { computationRanges = Core.Nothing,
      dataDisks = Core.Nothing,
      taskType = Core.Nothing
    }

instance Core.FromJSON StreamingComputationTask where
  parseJSON =
    Core.withObject
      "StreamingComputationTask"
      ( \o ->
          StreamingComputationTask
            Core.<$> (o Core..:? "computationRanges")
            Core.<*> (o Core..:? "dataDisks")
            Core.<*> (o Core..:? "taskType")
      )

instance Core.ToJSON StreamingComputationTask where
  toJSON StreamingComputationTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("computationRanges" Core..=) Core.<$> computationRanges,
            ("dataDisks" Core..=) Core.<$> dataDisks,
            ("taskType" Core..=) Core.<$> taskType
          ]
      )

-- | A task that carries configuration information for streaming computations.
--
-- /See:/ 'newStreamingConfigTask' smart constructor.
data StreamingConfigTask = StreamingConfigTask
  { -- | Chunk size for commit streams from the harness to windmill.
    commitStreamChunkSizeBytes :: (Core.Maybe Core.Int64),
    -- | Chunk size for get data streams from the harness to windmill.
    getDataStreamChunkSizeBytes :: (Core.Maybe Core.Int64),
    -- | Maximum size for work item commit supported windmill storage layer.
    maxWorkItemCommitBytes :: (Core.Maybe Core.Int64),
    -- | Operational limits for the streaming job. Can be used by the worker to validate outputs sent to the backend.
    operationalLimits :: (Core.Maybe StreamingOperationalLimits),
    -- | Set of computation configuration information.
    streamingComputationConfigs :: (Core.Maybe [StreamingComputationConfig]),
    -- | Map from user step names to state families.
    userStepToStateFamilyNameMap :: (Core.Maybe StreamingConfigTask_UserStepToStateFamilyNameMap),
    -- | Binary encoded proto to control runtime behavior of the java runner v1 user worker.
    userWorkerRunnerV1Settings :: (Core.Maybe Core.Base64),
    -- | Binary encoded proto to control runtime behavior of the runner v2 user worker.
    userWorkerRunnerV2Settings :: (Core.Maybe Core.Base64),
    -- | If present, the worker must use this endpoint to communicate with Windmill Service dispatchers, otherwise the worker must continue to use whatever endpoint it had been using.
    windmillServiceEndpoint :: (Core.Maybe Core.Text),
    -- | If present, the worker must use this port to communicate with Windmill Service dispatchers. Only applicable when windmill/service/endpoint is specified.
    windmillServicePort :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingConfigTask' with the minimum fields required to make a request.
newStreamingConfigTask ::
  StreamingConfigTask
newStreamingConfigTask =
  StreamingConfigTask
    { commitStreamChunkSizeBytes = Core.Nothing,
      getDataStreamChunkSizeBytes = Core.Nothing,
      maxWorkItemCommitBytes = Core.Nothing,
      operationalLimits = Core.Nothing,
      streamingComputationConfigs = Core.Nothing,
      userStepToStateFamilyNameMap = Core.Nothing,
      userWorkerRunnerV1Settings = Core.Nothing,
      userWorkerRunnerV2Settings = Core.Nothing,
      windmillServiceEndpoint = Core.Nothing,
      windmillServicePort = Core.Nothing
    }

instance Core.FromJSON StreamingConfigTask where
  parseJSON =
    Core.withObject
      "StreamingConfigTask"
      ( \o ->
          StreamingConfigTask
            Core.<$> ( o
                         Core..:? "commitStreamChunkSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "getDataStreamChunkSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "maxWorkItemCommitBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "operationalLimits")
            Core.<*> (o Core..:? "streamingComputationConfigs")
            Core.<*> (o Core..:? "userStepToStateFamilyNameMap")
            Core.<*> (o Core..:? "userWorkerRunnerV1Settings")
            Core.<*> (o Core..:? "userWorkerRunnerV2Settings")
            Core.<*> (o Core..:? "windmillServiceEndpoint")
            Core.<*> ( o
                         Core..:? "windmillServicePort"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON StreamingConfigTask where
  toJSON StreamingConfigTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("commitStreamChunkSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> commitStreamChunkSizeBytes,
            ("getDataStreamChunkSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> getDataStreamChunkSizeBytes,
            ("maxWorkItemCommitBytes" Core..=)
              Core.. Core.AsText
              Core.<$> maxWorkItemCommitBytes,
            ("operationalLimits" Core..=) Core.<$> operationalLimits,
            ("streamingComputationConfigs" Core..=)
              Core.<$> streamingComputationConfigs,
            ("userStepToStateFamilyNameMap" Core..=)
              Core.<$> userStepToStateFamilyNameMap,
            ("userWorkerRunnerV1Settings" Core..=)
              Core.<$> userWorkerRunnerV1Settings,
            ("userWorkerRunnerV2Settings" Core..=)
              Core.<$> userWorkerRunnerV2Settings,
            ("windmillServiceEndpoint" Core..=)
              Core.<$> windmillServiceEndpoint,
            ("windmillServicePort" Core..=)
              Core.. Core.AsText
              Core.<$> windmillServicePort
          ]
      )

-- | Map from user step names to state families.
--
-- /See:/ 'newStreamingConfigTask_UserStepToStateFamilyNameMap' smart constructor.
newtype StreamingConfigTask_UserStepToStateFamilyNameMap = StreamingConfigTask_UserStepToStateFamilyNameMap
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingConfigTask_UserStepToStateFamilyNameMap' with the minimum fields required to make a request.
newStreamingConfigTask_UserStepToStateFamilyNameMap ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  StreamingConfigTask_UserStepToStateFamilyNameMap
newStreamingConfigTask_UserStepToStateFamilyNameMap additional =
  StreamingConfigTask_UserStepToStateFamilyNameMap
    { additional =
        additional
    }

instance
  Core.FromJSON
    StreamingConfigTask_UserStepToStateFamilyNameMap
  where
  parseJSON =
    Core.withObject
      "StreamingConfigTask_UserStepToStateFamilyNameMap"
      ( \o ->
          StreamingConfigTask_UserStepToStateFamilyNameMap
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    StreamingConfigTask_UserStepToStateFamilyNameMap
  where
  toJSON StreamingConfigTask_UserStepToStateFamilyNameMap {..} =
    Core.toJSON additional

-- | Operational limits imposed on streaming jobs by the backend.
--
-- /See:/ 'newStreamingOperationalLimits' smart constructor.
data StreamingOperationalLimits = StreamingOperationalLimits
  { -- | The maximum size for an element in bag state.
    maxBagElementBytes :: (Core.Maybe Core.Int64),
    -- | The maximum size for an element in global data.
    maxGlobalDataBytes :: (Core.Maybe Core.Int64),
    -- | The maximum size allowed for a key.
    maxKeyBytes :: (Core.Maybe Core.Int64),
    -- | The maximum size for a single output element.
    maxProductionOutputBytes :: (Core.Maybe Core.Int64),
    -- | The maximum size for an element in sorted list state.
    maxSortedListElementBytes :: (Core.Maybe Core.Int64),
    -- | The maximum size for a source state update.
    maxSourceStateBytes :: (Core.Maybe Core.Int64),
    -- | The maximum size for a state tag.
    maxTagBytes :: (Core.Maybe Core.Int64),
    -- | The maximum size for a value state field.
    maxValueBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingOperationalLimits' with the minimum fields required to make a request.
newStreamingOperationalLimits ::
  StreamingOperationalLimits
newStreamingOperationalLimits =
  StreamingOperationalLimits
    { maxBagElementBytes = Core.Nothing,
      maxGlobalDataBytes = Core.Nothing,
      maxKeyBytes = Core.Nothing,
      maxProductionOutputBytes = Core.Nothing,
      maxSortedListElementBytes = Core.Nothing,
      maxSourceStateBytes = Core.Nothing,
      maxTagBytes = Core.Nothing,
      maxValueBytes = Core.Nothing
    }

instance Core.FromJSON StreamingOperationalLimits where
  parseJSON =
    Core.withObject
      "StreamingOperationalLimits"
      ( \o ->
          StreamingOperationalLimits
            Core.<$> ( o
                         Core..:? "maxBagElementBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "maxGlobalDataBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "maxKeyBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "maxProductionOutputBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "maxSortedListElementBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "maxSourceStateBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "maxTagBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "maxValueBytes" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON StreamingOperationalLimits where
  toJSON StreamingOperationalLimits {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxBagElementBytes" Core..=)
              Core.. Core.AsText
              Core.<$> maxBagElementBytes,
            ("maxGlobalDataBytes" Core..=)
              Core.. Core.AsText
              Core.<$> maxGlobalDataBytes,
            ("maxKeyBytes" Core..=) Core.. Core.AsText Core.<$> maxKeyBytes,
            ("maxProductionOutputBytes" Core..=)
              Core.. Core.AsText
              Core.<$> maxProductionOutputBytes,
            ("maxSortedListElementBytes" Core..=)
              Core.. Core.AsText
              Core.<$> maxSortedListElementBytes,
            ("maxSourceStateBytes" Core..=)
              Core.. Core.AsText
              Core.<$> maxSourceStateBytes,
            ("maxTagBytes" Core..=) Core.. Core.AsText Core.<$> maxTagBytes,
            ("maxValueBytes" Core..=)
              Core.. Core.AsText
              Core.<$> maxValueBytes
          ]
      )

-- | Contains per-user worker telemetry used in streaming autoscaling.
--
-- /See:/ 'newStreamingScalingReport' smart constructor.
data StreamingScalingReport = StreamingScalingReport
  { activeBundleCount :: (Core.Maybe Core.Int32),
    -- | Current acive thread count.
    activeThreadCount :: (Core.Maybe Core.Int32),
    -- | Maximum bundle count.
    maximumBundleCount :: (Core.Maybe Core.Int32),
    -- | Maximum bytes.
    maximumBytes :: (Core.Maybe Core.Int64),
    maximumBytesCount :: (Core.Maybe Core.Int32),
    -- | Maximum thread count limit.
    maximumThreadCount :: (Core.Maybe Core.Int32),
    -- | Current outstanding bundle count.
    outstandingBundleCount :: (Core.Maybe Core.Int32),
    -- | Current outstanding bytes.
    outstandingBytes :: (Core.Maybe Core.Int64),
    outstandingBytesCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingScalingReport' with the minimum fields required to make a request.
newStreamingScalingReport ::
  StreamingScalingReport
newStreamingScalingReport =
  StreamingScalingReport
    { activeBundleCount = Core.Nothing,
      activeThreadCount = Core.Nothing,
      maximumBundleCount = Core.Nothing,
      maximumBytes = Core.Nothing,
      maximumBytesCount = Core.Nothing,
      maximumThreadCount = Core.Nothing,
      outstandingBundleCount = Core.Nothing,
      outstandingBytes = Core.Nothing,
      outstandingBytesCount = Core.Nothing
    }

instance Core.FromJSON StreamingScalingReport where
  parseJSON =
    Core.withObject
      "StreamingScalingReport"
      ( \o ->
          StreamingScalingReport
            Core.<$> (o Core..:? "activeBundleCount")
            Core.<*> (o Core..:? "activeThreadCount")
            Core.<*> (o Core..:? "maximumBundleCount")
            Core.<*> (o Core..:? "maximumBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "maximumBytesCount")
            Core.<*> (o Core..:? "maximumThreadCount")
            Core.<*> (o Core..:? "outstandingBundleCount")
            Core.<*> (o Core..:? "outstandingBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "outstandingBytesCount")
      )

instance Core.ToJSON StreamingScalingReport where
  toJSON StreamingScalingReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeBundleCount" Core..=) Core.<$> activeBundleCount,
            ("activeThreadCount" Core..=) Core.<$> activeThreadCount,
            ("maximumBundleCount" Core..=) Core.<$> maximumBundleCount,
            ("maximumBytes" Core..=) Core.. Core.AsText Core.<$> maximumBytes,
            ("maximumBytesCount" Core..=) Core.<$> maximumBytesCount,
            ("maximumThreadCount" Core..=) Core.<$> maximumThreadCount,
            ("outstandingBundleCount" Core..=) Core.<$> outstandingBundleCount,
            ("outstandingBytes" Core..=)
              Core.. Core.AsText
              Core.<$> outstandingBytes,
            ("outstandingBytesCount" Core..=) Core.<$> outstandingBytesCount
          ]
      )

-- | Contains per-user-worker streaming scaling recommendation from the backend.
--
-- /See:/ 'newStreamingScalingReportResponse' smart constructor.
newtype StreamingScalingReportResponse = StreamingScalingReportResponse
  { -- | Maximum thread count limit;
    maximumThreadCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingScalingReportResponse' with the minimum fields required to make a request.
newStreamingScalingReportResponse ::
  StreamingScalingReportResponse
newStreamingScalingReportResponse =
  StreamingScalingReportResponse {maximumThreadCount = Core.Nothing}

instance Core.FromJSON StreamingScalingReportResponse where
  parseJSON =
    Core.withObject
      "StreamingScalingReportResponse"
      ( \o ->
          StreamingScalingReportResponse
            Core.<$> (o Core..:? "maximumThreadCount")
      )

instance Core.ToJSON StreamingScalingReportResponse where
  toJSON StreamingScalingReportResponse {..} =
    Core.object
      ( Core.catMaybes
          [("maximumThreadCount" Core..=) Core.<$> maximumThreadCount]
      )

-- | A task which initializes part of a streaming Dataflow job.
--
-- /See:/ 'newStreamingSetupTask' smart constructor.
data StreamingSetupTask = StreamingSetupTask
  { -- | The user has requested drain.
    drain :: (Core.Maybe Core.Bool),
    -- | The TCP port on which the worker should listen for messages from other streaming computation workers.
    receiveWorkPort :: (Core.Maybe Core.Int32),
    -- | Configures streaming appliance snapshot.
    snapshotConfig :: (Core.Maybe StreamingApplianceSnapshotConfig),
    -- | The global topology of the streaming Dataflow job.
    streamingComputationTopology :: (Core.Maybe TopologyConfig),
    -- | The TCP port used by the worker to communicate with the Dataflow worker harness.
    workerHarnessPort :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingSetupTask' with the minimum fields required to make a request.
newStreamingSetupTask ::
  StreamingSetupTask
newStreamingSetupTask =
  StreamingSetupTask
    { drain = Core.Nothing,
      receiveWorkPort = Core.Nothing,
      snapshotConfig = Core.Nothing,
      streamingComputationTopology = Core.Nothing,
      workerHarnessPort = Core.Nothing
    }

instance Core.FromJSON StreamingSetupTask where
  parseJSON =
    Core.withObject
      "StreamingSetupTask"
      ( \o ->
          StreamingSetupTask
            Core.<$> (o Core..:? "drain")
            Core.<*> (o Core..:? "receiveWorkPort")
            Core.<*> (o Core..:? "snapshotConfig")
            Core.<*> (o Core..:? "streamingComputationTopology")
            Core.<*> (o Core..:? "workerHarnessPort")
      )

instance Core.ToJSON StreamingSetupTask where
  toJSON StreamingSetupTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("drain" Core..=) Core.<$> drain,
            ("receiveWorkPort" Core..=) Core.<$> receiveWorkPort,
            ("snapshotConfig" Core..=) Core.<$> snapshotConfig,
            ("streamingComputationTopology" Core..=)
              Core.<$> streamingComputationTopology,
            ("workerHarnessPort" Core..=) Core.<$> workerHarnessPort
          ]
      )

-- | Identifies the location of a streaming side input.
--
-- /See:/ 'newStreamingSideInputLocation' smart constructor.
data StreamingSideInputLocation = StreamingSideInputLocation
  { -- | Identifies the state family where this side input is stored.
    stateFamily :: (Core.Maybe Core.Text),
    -- | Identifies the particular side input within the streaming Dataflow job.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingSideInputLocation' with the minimum fields required to make a request.
newStreamingSideInputLocation ::
  StreamingSideInputLocation
newStreamingSideInputLocation =
  StreamingSideInputLocation
    { stateFamily = Core.Nothing,
      tag = Core.Nothing
    }

instance Core.FromJSON StreamingSideInputLocation where
  parseJSON =
    Core.withObject
      "StreamingSideInputLocation"
      ( \o ->
          StreamingSideInputLocation
            Core.<$> (o Core..:? "stateFamily")
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON StreamingSideInputLocation where
  toJSON StreamingSideInputLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("stateFamily" Core..=) Core.<$> stateFamily,
            ("tag" Core..=) Core.<$> tag
          ]
      )

-- | Identifies the location of a streaming computation stage, for stage-to-stage communication.
--
-- /See:/ 'newStreamingStageLocation' smart constructor.
newtype StreamingStageLocation = StreamingStageLocation
  { -- | Identifies the particular stream within the streaming Dataflow job.
    streamId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingStageLocation' with the minimum fields required to make a request.
newStreamingStageLocation ::
  StreamingStageLocation
newStreamingStageLocation =
  StreamingStageLocation {streamId = Core.Nothing}

instance Core.FromJSON StreamingStageLocation where
  parseJSON =
    Core.withObject
      "StreamingStageLocation"
      (\o -> StreamingStageLocation Core.<$> (o Core..:? "streamId"))

instance Core.ToJSON StreamingStageLocation where
  toJSON StreamingStageLocation {..} =
    Core.object
      (Core.catMaybes [("streamId" Core..=) Core.<$> streamId])

-- | Information useful for streaming straggler identification and debugging.
--
-- /See:/ 'newStreamingStragglerInfo' smart constructor.
data StreamingStragglerInfo = StreamingStragglerInfo
  { -- | The event-time watermark lag at the time of the straggler detection.
    dataWatermarkLag :: (Core.Maybe Core.Duration),
    -- | End time of this straggler.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Start time of this straggler.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The system watermark lag at the time of the straggler detection.
    systemWatermarkLag :: (Core.Maybe Core.Duration),
    -- | Name of the worker where the straggler was detected.
    workerName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingStragglerInfo' with the minimum fields required to make a request.
newStreamingStragglerInfo ::
  StreamingStragglerInfo
newStreamingStragglerInfo =
  StreamingStragglerInfo
    { dataWatermarkLag = Core.Nothing,
      endTime = Core.Nothing,
      startTime = Core.Nothing,
      systemWatermarkLag = Core.Nothing,
      workerName = Core.Nothing
    }

instance Core.FromJSON StreamingStragglerInfo where
  parseJSON =
    Core.withObject
      "StreamingStragglerInfo"
      ( \o ->
          StreamingStragglerInfo
            Core.<$> (o Core..:? "dataWatermarkLag")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "systemWatermarkLag")
            Core.<*> (o Core..:? "workerName")
      )

instance Core.ToJSON StreamingStragglerInfo where
  toJSON StreamingStragglerInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataWatermarkLag" Core..=) Core.<$> dataWatermarkLag,
            ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("systemWatermarkLag" Core..=) Core.<$> systemWatermarkLag,
            ("workerName" Core..=) Core.<$> workerName
          ]
      )

-- | A metric value representing a list of strings.
--
-- /See:/ 'newStringList' smart constructor.
newtype StringList = StringList
  { -- | Elements of the list.
    elements :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StringList' with the minimum fields required to make a request.
newStringList ::
  StringList
newStringList = StringList {elements = Core.Nothing}

instance Core.FromJSON StringList where
  parseJSON =
    Core.withObject
      "StringList"
      (\o -> StringList Core.<$> (o Core..:? "elements"))

instance Core.ToJSON StringList where
  toJSON StringList {..} =
    Core.object
      (Core.catMaybes [("elements" Core..=) Core.<$> elements])

-- | A rich message format, including a human readable string, a key for identifying the message, and structured data associated with the message for programmatic consumption.
--
-- /See:/ 'newStructuredMessage' smart constructor.
data StructuredMessage = StructuredMessage
  { -- | Identifier for this message type. Used by external systems to internationalize or personalize message.
    messageKey :: (Core.Maybe Core.Text),
    -- | Human-readable version of message.
    messageText :: (Core.Maybe Core.Text),
    -- | The structured data associated with this message.
    parameters :: (Core.Maybe [Parameter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StructuredMessage' with the minimum fields required to make a request.
newStructuredMessage ::
  StructuredMessage
newStructuredMessage =
  StructuredMessage
    { messageKey = Core.Nothing,
      messageText = Core.Nothing,
      parameters = Core.Nothing
    }

instance Core.FromJSON StructuredMessage where
  parseJSON =
    Core.withObject
      "StructuredMessage"
      ( \o ->
          StructuredMessage
            Core.<$> (o Core..:? "messageKey")
            Core.<*> (o Core..:? "messageText")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON StructuredMessage where
  toJSON StructuredMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("messageKey" Core..=) Core.<$> messageKey,
            ("messageText" Core..=) Core.<$> messageText,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | Taskrunner configuration settings.
--
-- /See:/ 'newTaskRunnerSettings' smart constructor.
data TaskRunnerSettings = TaskRunnerSettings
  { -- | Whether to also send taskrunner log info to stderr.
    alsologtostderr :: (Core.Maybe Core.Bool),
    -- | The location on the worker for task-specific subdirectories.
    baseTaskDir :: (Core.Maybe Core.Text),
    -- | The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, \"Relative Uniform Resource Locators\". If not specified, the default value is \"http:\/\/www.googleapis.com\/\"
    baseUrl :: (Core.Maybe Core.Text),
    -- | The file to store preprocessing commands in.
    commandlinesFileName :: (Core.Maybe Core.Text),
    -- | Whether to continue taskrunner if an exception is hit.
    continueOnException :: (Core.Maybe Core.Bool),
    -- | The API version of endpoint, e.g. \"v1b3\"
    dataflowApiVersion :: (Core.Maybe Core.Text),
    -- | The command to launch the worker harness.
    harnessCommand :: (Core.Maybe Core.Text),
    -- | The suggested backend language.
    languageHint :: (Core.Maybe Core.Text),
    -- | The directory on the VM to store logs.
    logDir :: (Core.Maybe Core.Text),
    -- | Whether to send taskrunner log info to Google Compute Engine VM serial console.
    logToSerialconsole :: (Core.Maybe Core.Bool),
    -- | Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com\/{bucket}\/{object} bucket.storage.googleapis.com\/{object}
    logUploadLocation :: (Core.Maybe Core.Text),
    -- | The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
    oauthScopes :: (Core.Maybe [Core.Text]),
    -- | The settings to pass to the parallel worker harness.
    parallelWorkerSettings :: (Core.Maybe WorkerSettings),
    -- | The streaming worker main class name.
    streamingWorkerMainClass :: (Core.Maybe Core.Text),
    -- | The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. \"wheel\".
    taskGroup :: (Core.Maybe Core.Text),
    -- | The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. \"root\".
    taskUser :: (Core.Maybe Core.Text),
    -- | The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com\/{bucket}\/{object} bucket.storage.googleapis.com\/{object}
    tempStoragePrefix :: (Core.Maybe Core.Text),
    -- | The ID string of the VM.
    vmId :: (Core.Maybe Core.Text),
    -- | The file to store the workflow in.
    workflowFileName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskRunnerSettings' with the minimum fields required to make a request.
newTaskRunnerSettings ::
  TaskRunnerSettings
newTaskRunnerSettings =
  TaskRunnerSettings
    { alsologtostderr = Core.Nothing,
      baseTaskDir = Core.Nothing,
      baseUrl = Core.Nothing,
      commandlinesFileName = Core.Nothing,
      continueOnException = Core.Nothing,
      dataflowApiVersion = Core.Nothing,
      harnessCommand = Core.Nothing,
      languageHint = Core.Nothing,
      logDir = Core.Nothing,
      logToSerialconsole = Core.Nothing,
      logUploadLocation = Core.Nothing,
      oauthScopes = Core.Nothing,
      parallelWorkerSettings = Core.Nothing,
      streamingWorkerMainClass = Core.Nothing,
      taskGroup = Core.Nothing,
      taskUser = Core.Nothing,
      tempStoragePrefix = Core.Nothing,
      vmId = Core.Nothing,
      workflowFileName = Core.Nothing
    }

instance Core.FromJSON TaskRunnerSettings where
  parseJSON =
    Core.withObject
      "TaskRunnerSettings"
      ( \o ->
          TaskRunnerSettings
            Core.<$> (o Core..:? "alsologtostderr")
            Core.<*> (o Core..:? "baseTaskDir")
            Core.<*> (o Core..:? "baseUrl")
            Core.<*> (o Core..:? "commandlinesFileName")
            Core.<*> (o Core..:? "continueOnException")
            Core.<*> (o Core..:? "dataflowApiVersion")
            Core.<*> (o Core..:? "harnessCommand")
            Core.<*> (o Core..:? "languageHint")
            Core.<*> (o Core..:? "logDir")
            Core.<*> (o Core..:? "logToSerialconsole")
            Core.<*> (o Core..:? "logUploadLocation")
            Core.<*> (o Core..:? "oauthScopes")
            Core.<*> (o Core..:? "parallelWorkerSettings")
            Core.<*> (o Core..:? "streamingWorkerMainClass")
            Core.<*> (o Core..:? "taskGroup")
            Core.<*> (o Core..:? "taskUser")
            Core.<*> (o Core..:? "tempStoragePrefix")
            Core.<*> (o Core..:? "vmId")
            Core.<*> (o Core..:? "workflowFileName")
      )

instance Core.ToJSON TaskRunnerSettings where
  toJSON TaskRunnerSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("alsologtostderr" Core..=) Core.<$> alsologtostderr,
            ("baseTaskDir" Core..=) Core.<$> baseTaskDir,
            ("baseUrl" Core..=) Core.<$> baseUrl,
            ("commandlinesFileName" Core..=) Core.<$> commandlinesFileName,
            ("continueOnException" Core..=) Core.<$> continueOnException,
            ("dataflowApiVersion" Core..=) Core.<$> dataflowApiVersion,
            ("harnessCommand" Core..=) Core.<$> harnessCommand,
            ("languageHint" Core..=) Core.<$> languageHint,
            ("logDir" Core..=) Core.<$> logDir,
            ("logToSerialconsole" Core..=) Core.<$> logToSerialconsole,
            ("logUploadLocation" Core..=) Core.<$> logUploadLocation,
            ("oauthScopes" Core..=) Core.<$> oauthScopes,
            ("parallelWorkerSettings" Core..=) Core.<$> parallelWorkerSettings,
            ("streamingWorkerMainClass" Core..=)
              Core.<$> streamingWorkerMainClass,
            ("taskGroup" Core..=) Core.<$> taskGroup,
            ("taskUser" Core..=) Core.<$> taskUser,
            ("tempStoragePrefix" Core..=) Core.<$> tempStoragePrefix,
            ("vmId" Core..=) Core.<$> vmId,
            ("workflowFileName" Core..=) Core.<$> workflowFileName
          ]
      )

-- | Metadata describing a template.
--
-- /See:/ 'newTemplateMetadata' smart constructor.
data TemplateMetadata = TemplateMetadata
  { -- | Optional. Indicates the default streaming mode for a streaming template. Only valid if both supports/at/least/once and supports/exactly/once are true. Possible values: UNSPECIFIED, EXACTLY/ONCE and AT/LEAST/ONCE
    defaultStreamingMode :: (Core.Maybe Core.Text),
    -- | Optional. A description of the template.
    description :: (Core.Maybe Core.Text),
    -- | Required. The name of the template.
    name :: (Core.Maybe Core.Text),
    -- | The parameters for the template.
    parameters :: (Core.Maybe [ParameterMetadata]),
    -- | Optional. Indicates if the template is streaming or not.
    streaming :: (Core.Maybe Core.Bool),
    -- | Optional. Indicates if the streaming template supports at least once mode.
    supportsAtLeastOnce :: (Core.Maybe Core.Bool),
    -- | Optional. Indicates if the streaming template supports exactly once mode.
    supportsExactlyOnce :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TemplateMetadata' with the minimum fields required to make a request.
newTemplateMetadata ::
  TemplateMetadata
newTemplateMetadata =
  TemplateMetadata
    { defaultStreamingMode = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      parameters = Core.Nothing,
      streaming = Core.Nothing,
      supportsAtLeastOnce = Core.Nothing,
      supportsExactlyOnce = Core.Nothing
    }

instance Core.FromJSON TemplateMetadata where
  parseJSON =
    Core.withObject
      "TemplateMetadata"
      ( \o ->
          TemplateMetadata
            Core.<$> (o Core..:? "defaultStreamingMode")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "streaming")
            Core.<*> (o Core..:? "supportsAtLeastOnce")
            Core.<*> (o Core..:? "supportsExactlyOnce")
      )

instance Core.ToJSON TemplateMetadata where
  toJSON TemplateMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultStreamingMode" Core..=) Core.<$> defaultStreamingMode,
            ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("parameters" Core..=) Core.<$> parameters,
            ("streaming" Core..=) Core.<$> streaming,
            ("supportsAtLeastOnce" Core..=) Core.<$> supportsAtLeastOnce,
            ("supportsExactlyOnce" Core..=) Core.<$> supportsExactlyOnce
          ]
      )

-- | Global topology of the streaming Dataflow job, including all computations and their sharded locations.
--
-- /See:/ 'newTopologyConfig' smart constructor.
data TopologyConfig = TopologyConfig
  { -- | The computations associated with a streaming Dataflow job.
    computations :: (Core.Maybe [ComputationTopology]),
    -- | The disks assigned to a streaming Dataflow job.
    dataDiskAssignments :: (Core.Maybe [DataDiskAssignment]),
    -- | The size (in bits) of keys that will be assigned to source messages.
    forwardingKeyBits :: (Core.Maybe Core.Int32),
    -- | Version number for persistent state.
    persistentStateVersion :: (Core.Maybe Core.Int32),
    -- | Maps user stage names to stable computation names.
    userStageToComputationNameMap :: (Core.Maybe TopologyConfig_UserStageToComputationNameMap)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TopologyConfig' with the minimum fields required to make a request.
newTopologyConfig ::
  TopologyConfig
newTopologyConfig =
  TopologyConfig
    { computations = Core.Nothing,
      dataDiskAssignments = Core.Nothing,
      forwardingKeyBits = Core.Nothing,
      persistentStateVersion = Core.Nothing,
      userStageToComputationNameMap = Core.Nothing
    }

instance Core.FromJSON TopologyConfig where
  parseJSON =
    Core.withObject
      "TopologyConfig"
      ( \o ->
          TopologyConfig
            Core.<$> (o Core..:? "computations")
            Core.<*> (o Core..:? "dataDiskAssignments")
            Core.<*> (o Core..:? "forwardingKeyBits")
            Core.<*> (o Core..:? "persistentStateVersion")
            Core.<*> (o Core..:? "userStageToComputationNameMap")
      )

instance Core.ToJSON TopologyConfig where
  toJSON TopologyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("computations" Core..=) Core.<$> computations,
            ("dataDiskAssignments" Core..=) Core.<$> dataDiskAssignments,
            ("forwardingKeyBits" Core..=) Core.<$> forwardingKeyBits,
            ("persistentStateVersion" Core..=) Core.<$> persistentStateVersion,
            ("userStageToComputationNameMap" Core..=)
              Core.<$> userStageToComputationNameMap
          ]
      )

-- | Maps user stage names to stable computation names.
--
-- /See:/ 'newTopologyConfig_UserStageToComputationNameMap' smart constructor.
newtype TopologyConfig_UserStageToComputationNameMap = TopologyConfig_UserStageToComputationNameMap
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TopologyConfig_UserStageToComputationNameMap' with the minimum fields required to make a request.
newTopologyConfig_UserStageToComputationNameMap ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  TopologyConfig_UserStageToComputationNameMap
newTopologyConfig_UserStageToComputationNameMap additional =
  TopologyConfig_UserStageToComputationNameMap
    { additional =
        additional
    }

instance Core.FromJSON TopologyConfig_UserStageToComputationNameMap where
  parseJSON =
    Core.withObject
      "TopologyConfig_UserStageToComputationNameMap"
      ( \o ->
          TopologyConfig_UserStageToComputationNameMap
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TopologyConfig_UserStageToComputationNameMap where
  toJSON TopologyConfig_UserStageToComputationNameMap {..} =
    Core.toJSON additional

-- | Description of the type, names\/ids, and input\/outputs for a transform.
--
-- /See:/ 'newTransformSummary' smart constructor.
data TransformSummary = TransformSummary
  { -- | Transform-specific display data.
    displayData :: (Core.Maybe [DisplayData]),
    -- | SDK generated id of this transform instance.
    id :: (Core.Maybe Core.Text),
    -- | User names for all collection inputs to this transform.
    inputCollectionName :: (Core.Maybe [Core.Text]),
    -- | Type of transform.
    kind :: (Core.Maybe TransformSummary_Kind),
    -- | User provided name for this transform instance.
    name :: (Core.Maybe Core.Text),
    -- | User names for all collection outputs to this transform.
    outputCollectionName :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransformSummary' with the minimum fields required to make a request.
newTransformSummary ::
  TransformSummary
newTransformSummary =
  TransformSummary
    { displayData = Core.Nothing,
      id = Core.Nothing,
      inputCollectionName = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      outputCollectionName = Core.Nothing
    }

instance Core.FromJSON TransformSummary where
  parseJSON =
    Core.withObject
      "TransformSummary"
      ( \o ->
          TransformSummary
            Core.<$> (o Core..:? "displayData")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "inputCollectionName")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "outputCollectionName")
      )

instance Core.ToJSON TransformSummary where
  toJSON TransformSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayData" Core..=) Core.<$> displayData,
            ("id" Core..=) Core.<$> id,
            ("inputCollectionName" Core..=) Core.<$> inputCollectionName,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("outputCollectionName" Core..=) Core.<$> outputCollectionName
          ]
      )

-- | WorkItem represents basic information about a WorkItem to be executed in the cloud.
--
-- /See:/ 'newWorkItem' smart constructor.
data WorkItem = WorkItem
  { -- | Work item-specific configuration as an opaque blob.
    configuration :: (Core.Maybe Core.Text),
    -- | Identifies this WorkItem.
    id :: (Core.Maybe Core.Int64),
    -- | The initial index to use when reporting the status of the WorkItem.
    initialReportIndex :: (Core.Maybe Core.Int64),
    -- | Identifies the workflow job this WorkItem belongs to.
    jobId :: (Core.Maybe Core.Text),
    -- | Time when the lease on this Work will expire.
    leaseExpireTime :: (Core.Maybe Core.DateTime),
    -- | Additional information for MapTask WorkItems.
    mapTask :: (Core.Maybe MapTask),
    -- | Any required packages that need to be fetched in order to execute this WorkItem.
    packages :: (Core.Maybe [Package]),
    -- | Identifies the cloud project this WorkItem belongs to.
    projectId :: (Core.Maybe Core.Text),
    -- | Recommended reporting interval.
    reportStatusInterval :: (Core.Maybe Core.Duration),
    -- | Additional information for SeqMapTask WorkItems.
    seqMapTask :: (Core.Maybe SeqMapTask),
    -- | Additional information for ShellTask WorkItems.
    shellTask :: (Core.Maybe ShellTask),
    -- | Additional information for source operation WorkItems.
    sourceOperationTask :: (Core.Maybe SourceOperationRequest),
    -- | Additional information for StreamingComputationTask WorkItems.
    streamingComputationTask :: (Core.Maybe StreamingComputationTask),
    -- | Additional information for StreamingConfigTask WorkItems.
    streamingConfigTask :: (Core.Maybe StreamingConfigTask),
    -- | Additional information for StreamingSetupTask WorkItems.
    streamingSetupTask :: (Core.Maybe StreamingSetupTask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkItem' with the minimum fields required to make a request.
newWorkItem ::
  WorkItem
newWorkItem =
  WorkItem
    { configuration = Core.Nothing,
      id = Core.Nothing,
      initialReportIndex = Core.Nothing,
      jobId = Core.Nothing,
      leaseExpireTime = Core.Nothing,
      mapTask = Core.Nothing,
      packages = Core.Nothing,
      projectId = Core.Nothing,
      reportStatusInterval = Core.Nothing,
      seqMapTask = Core.Nothing,
      shellTask = Core.Nothing,
      sourceOperationTask = Core.Nothing,
      streamingComputationTask = Core.Nothing,
      streamingConfigTask = Core.Nothing,
      streamingSetupTask = Core.Nothing
    }

instance Core.FromJSON WorkItem where
  parseJSON =
    Core.withObject
      "WorkItem"
      ( \o ->
          WorkItem
            Core.<$> (o Core..:? "configuration")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "initialReportIndex"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "jobId")
            Core.<*> (o Core..:? "leaseExpireTime")
            Core.<*> (o Core..:? "mapTask")
            Core.<*> (o Core..:? "packages")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "reportStatusInterval")
            Core.<*> (o Core..:? "seqMapTask")
            Core.<*> (o Core..:? "shellTask")
            Core.<*> (o Core..:? "sourceOperationTask")
            Core.<*> (o Core..:? "streamingComputationTask")
            Core.<*> (o Core..:? "streamingConfigTask")
            Core.<*> (o Core..:? "streamingSetupTask")
      )

instance Core.ToJSON WorkItem where
  toJSON WorkItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("configuration" Core..=) Core.<$> configuration,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("initialReportIndex" Core..=)
              Core.. Core.AsText
              Core.<$> initialReportIndex,
            ("jobId" Core..=) Core.<$> jobId,
            ("leaseExpireTime" Core..=) Core.<$> leaseExpireTime,
            ("mapTask" Core..=) Core.<$> mapTask,
            ("packages" Core..=) Core.<$> packages,
            ("projectId" Core..=) Core.<$> projectId,
            ("reportStatusInterval" Core..=) Core.<$> reportStatusInterval,
            ("seqMapTask" Core..=) Core.<$> seqMapTask,
            ("shellTask" Core..=) Core.<$> shellTask,
            ("sourceOperationTask" Core..=) Core.<$> sourceOperationTask,
            ("streamingComputationTask" Core..=)
              Core.<$> streamingComputationTask,
            ("streamingConfigTask" Core..=) Core.<$> streamingConfigTask,
            ("streamingSetupTask" Core..=) Core.<$> streamingSetupTask
          ]
      )

-- | Information about an individual work item execution.
--
-- /See:/ 'newWorkItemDetails' smart constructor.
data WorkItemDetails = WorkItemDetails
  { -- | Attempt ID of this work item
    attemptId :: (Core.Maybe Core.Text),
    -- | End time of this work item attempt. If the work item is completed, this is the actual end time of the work item. Otherwise, it is the predicted end time.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Metrics for this work item.
    metrics :: (Core.Maybe [MetricUpdate]),
    -- | Progress of this work item.
    progress :: (Core.Maybe ProgressTimeseries),
    -- | Start time of this work item attempt.
    startTime :: (Core.Maybe Core.DateTime),
    -- | State of this work item.
    state :: (Core.Maybe WorkItemDetails_State),
    -- | Information about straggler detections for this work item.
    stragglerInfo :: (Core.Maybe StragglerInfo),
    -- | Name of this work item.
    taskId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkItemDetails' with the minimum fields required to make a request.
newWorkItemDetails ::
  WorkItemDetails
newWorkItemDetails =
  WorkItemDetails
    { attemptId = Core.Nothing,
      endTime = Core.Nothing,
      metrics = Core.Nothing,
      progress = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      stragglerInfo = Core.Nothing,
      taskId = Core.Nothing
    }

instance Core.FromJSON WorkItemDetails where
  parseJSON =
    Core.withObject
      "WorkItemDetails"
      ( \o ->
          WorkItemDetails
            Core.<$> (o Core..:? "attemptId")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stragglerInfo")
            Core.<*> (o Core..:? "taskId")
      )

instance Core.ToJSON WorkItemDetails where
  toJSON WorkItemDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("attemptId" Core..=) Core.<$> attemptId,
            ("endTime" Core..=) Core.<$> endTime,
            ("metrics" Core..=) Core.<$> metrics,
            ("progress" Core..=) Core.<$> progress,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("stragglerInfo" Core..=) Core.<$> stragglerInfo,
            ("taskId" Core..=) Core.<$> taskId
          ]
      )

-- | The Dataflow service\'s idea of the current state of a WorkItem being processed by a worker.
--
-- /See:/ 'newWorkItemServiceState' smart constructor.
data WorkItemServiceState = WorkItemServiceState
  { -- | If set, a request to complete the work item with the given status. This will not be set to OK, unless supported by the specific kind of WorkItem. It can be used for the backend to indicate a WorkItem must terminate, e.g., for aborting work.
    completeWorkStatus :: (Core.Maybe Status),
    -- | Other data returned by the service, specific to the particular worker harness.
    harnessData :: (Core.Maybe WorkItemServiceState_HarnessData),
    -- | A hot key is a symptom of poor data distribution in which there are enough elements mapped to a single key to impact pipeline performance. When present, this field includes metadata associated with any hot key.
    hotKeyDetection :: (Core.Maybe HotKeyDetection),
    -- | Time at which the current lease will expire.
    leaseExpireTime :: (Core.Maybe Core.DateTime),
    -- | The short ids that workers should use in subsequent metric updates. Workers should strive to use short ids whenever possible, but it is ok to request the short_id again if a worker lost track of it (e.g. if the worker is recovering from a crash). NOTE: it is possible that the response may have short ids for a subset of the metrics.
    metricShortId :: (Core.Maybe [MetricShortId]),
    -- | The index value to use for the next report sent by the worker. Note: If the report call fails for whatever reason, the worker should reuse this index for subsequent report attempts.
    nextReportIndex :: (Core.Maybe Core.Int64),
    -- | New recommended reporting interval.
    reportStatusInterval :: (Core.Maybe Core.Duration),
    -- | The progress point in the WorkItem where the Dataflow service suggests that the worker truncate the task.
    splitRequest :: (Core.Maybe ApproximateSplitRequest),
    -- | DEPRECATED in favor of split_request.
    suggestedStopPoint :: (Core.Maybe ApproximateProgress),
    -- | Obsolete, always empty.
    suggestedStopPosition :: (Core.Maybe Position)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkItemServiceState' with the minimum fields required to make a request.
newWorkItemServiceState ::
  WorkItemServiceState
newWorkItemServiceState =
  WorkItemServiceState
    { completeWorkStatus = Core.Nothing,
      harnessData = Core.Nothing,
      hotKeyDetection = Core.Nothing,
      leaseExpireTime = Core.Nothing,
      metricShortId = Core.Nothing,
      nextReportIndex = Core.Nothing,
      reportStatusInterval = Core.Nothing,
      splitRequest = Core.Nothing,
      suggestedStopPoint = Core.Nothing,
      suggestedStopPosition = Core.Nothing
    }

instance Core.FromJSON WorkItemServiceState where
  parseJSON =
    Core.withObject
      "WorkItemServiceState"
      ( \o ->
          WorkItemServiceState
            Core.<$> (o Core..:? "completeWorkStatus")
            Core.<*> (o Core..:? "harnessData")
            Core.<*> (o Core..:? "hotKeyDetection")
            Core.<*> (o Core..:? "leaseExpireTime")
            Core.<*> (o Core..:? "metricShortId")
            Core.<*> (o Core..:? "nextReportIndex" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "reportStatusInterval")
            Core.<*> (o Core..:? "splitRequest")
            Core.<*> (o Core..:? "suggestedStopPoint")
            Core.<*> (o Core..:? "suggestedStopPosition")
      )

instance Core.ToJSON WorkItemServiceState where
  toJSON WorkItemServiceState {..} =
    Core.object
      ( Core.catMaybes
          [ ("completeWorkStatus" Core..=) Core.<$> completeWorkStatus,
            ("harnessData" Core..=) Core.<$> harnessData,
            ("hotKeyDetection" Core..=) Core.<$> hotKeyDetection,
            ("leaseExpireTime" Core..=) Core.<$> leaseExpireTime,
            ("metricShortId" Core..=) Core.<$> metricShortId,
            ("nextReportIndex" Core..=)
              Core.. Core.AsText
              Core.<$> nextReportIndex,
            ("reportStatusInterval" Core..=) Core.<$> reportStatusInterval,
            ("splitRequest" Core..=) Core.<$> splitRequest,
            ("suggestedStopPoint" Core..=) Core.<$> suggestedStopPoint,
            ("suggestedStopPosition" Core..=) Core.<$> suggestedStopPosition
          ]
      )

-- | Other data returned by the service, specific to the particular worker harness.
--
-- /See:/ 'newWorkItemServiceState_HarnessData' smart constructor.
newtype WorkItemServiceState_HarnessData = WorkItemServiceState_HarnessData
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkItemServiceState_HarnessData' with the minimum fields required to make a request.
newWorkItemServiceState_HarnessData ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  WorkItemServiceState_HarnessData
newWorkItemServiceState_HarnessData additional =
  WorkItemServiceState_HarnessData {additional = additional}

instance Core.FromJSON WorkItemServiceState_HarnessData where
  parseJSON =
    Core.withObject
      "WorkItemServiceState_HarnessData"
      ( \o ->
          WorkItemServiceState_HarnessData Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkItemServiceState_HarnessData where
  toJSON WorkItemServiceState_HarnessData {..} =
    Core.toJSON additional

-- | Conveys a worker\'s progress through the work described by a WorkItem.
--
-- /See:/ 'newWorkItemStatus' smart constructor.
data WorkItemStatus = WorkItemStatus
  { -- | True if the WorkItem was completed (successfully or unsuccessfully).
    completed :: (Core.Maybe Core.Bool),
    -- | Worker output counters for this WorkItem.
    counterUpdates :: (Core.Maybe [CounterUpdate]),
    -- | See documentation of stop_position.
    dynamicSourceSplit :: (Core.Maybe DynamicSourceSplit),
    -- | Specifies errors which occurred during processing. If errors are provided, and completed = true, then the WorkItem is considered to have failed.
    errors :: (Core.Maybe [Status]),
    -- | DEPRECATED in favor of counter_updates.
    metricUpdates :: (Core.Maybe [MetricUpdate]),
    -- | DEPRECATED in favor of reported_progress.
    progress :: (Core.Maybe ApproximateProgress),
    -- | The report index. When a WorkItem is leased, the lease will contain an initial report index. When a WorkItem\'s status is reported to the system, the report should be sent with that report index, and the response will contain the index the worker should use for the next report. Reports received with unexpected index values will be rejected by the service. In order to preserve idempotency, the worker should not alter the contents of a report, even if the worker must submit the same report multiple times before getting back a response. The worker should not submit a subsequent report until the response for the previous report had been received from the service.
    reportIndex :: (Core.Maybe Core.Int64),
    -- | The worker\'s progress through this WorkItem.
    reportedProgress :: (Core.Maybe ApproximateReportedProgress),
    -- | Amount of time the worker requests for its lease.
    requestedLeaseDuration :: (Core.Maybe Core.Duration),
    -- | DEPRECATED in favor of dynamic/source/split.
    sourceFork :: (Core.Maybe SourceFork),
    -- | If the work item represented a SourceOperationRequest, and the work is completed, contains the result of the operation.
    sourceOperationResponse :: (Core.Maybe SourceOperationResponse),
    -- | A worker may split an active map task in two parts, \"primary\" and \"residual\", continuing to process the primary part and returning the residual part into the pool of available work. This event is called a \"dynamic split\" and is critical to the dynamic work rebalancing feature. The two obtained sub-tasks are called \"parts\" of the split. The parts, if concatenated, must represent the same input as would be read by the current task if the split did not happen. The exact way in which the original task is decomposed into the two parts is specified either as a position demarcating them (stop/position), or explicitly as two DerivedSources, if this task consumes a user-defined source type (dynamic/source/split). The \"current\" task is adjusted as a result of the split: after a task with range [A, B) sends a stop/position update at C, its range is considered to be [A, C), e.g.: * Progress should be interpreted relative to the new range, e.g. \"75% completed\" means \"75% of [A, C) completed\" * The worker
    -- should interpret proposed/stop/position relative to the new range, e.g. \"split at 68%\" should be interpreted as \"split at 68% of [A, C)\". * If the worker chooses to split again using stop/position, only stop/positions in [A, C) will be accepted. * Etc. dynamic/source/split has similar semantics: e.g., if a task with source S splits using dynamic/source/split into {P, R} (where P and R must be together equivalent to S), then subsequent progress and proposed/stop/position should be interpreted relative to P, and in a potential subsequent dynamic/source/split into {P\', R\'}, P\' and R\' must be together equivalent to P, etc.
    stopPosition :: (Core.Maybe Position),
    -- | Total time the worker spent being throttled by external systems.
    totalThrottlerWaitTimeSeconds :: (Core.Maybe Core.Double),
    -- | Identifies the WorkItem.
    workItemId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkItemStatus' with the minimum fields required to make a request.
newWorkItemStatus ::
  WorkItemStatus
newWorkItemStatus =
  WorkItemStatus
    { completed = Core.Nothing,
      counterUpdates = Core.Nothing,
      dynamicSourceSplit = Core.Nothing,
      errors = Core.Nothing,
      metricUpdates = Core.Nothing,
      progress = Core.Nothing,
      reportIndex = Core.Nothing,
      reportedProgress = Core.Nothing,
      requestedLeaseDuration = Core.Nothing,
      sourceFork = Core.Nothing,
      sourceOperationResponse = Core.Nothing,
      stopPosition = Core.Nothing,
      totalThrottlerWaitTimeSeconds = Core.Nothing,
      workItemId = Core.Nothing
    }

instance Core.FromJSON WorkItemStatus where
  parseJSON =
    Core.withObject
      "WorkItemStatus"
      ( \o ->
          WorkItemStatus
            Core.<$> (o Core..:? "completed")
            Core.<*> (o Core..:? "counterUpdates")
            Core.<*> (o Core..:? "dynamicSourceSplit")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "metricUpdates")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "reportIndex" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "reportedProgress")
            Core.<*> (o Core..:? "requestedLeaseDuration")
            Core.<*> (o Core..:? "sourceFork")
            Core.<*> (o Core..:? "sourceOperationResponse")
            Core.<*> (o Core..:? "stopPosition")
            Core.<*> (o Core..:? "totalThrottlerWaitTimeSeconds")
            Core.<*> (o Core..:? "workItemId")
      )

instance Core.ToJSON WorkItemStatus where
  toJSON WorkItemStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("completed" Core..=) Core.<$> completed,
            ("counterUpdates" Core..=) Core.<$> counterUpdates,
            ("dynamicSourceSplit" Core..=) Core.<$> dynamicSourceSplit,
            ("errors" Core..=) Core.<$> errors,
            ("metricUpdates" Core..=) Core.<$> metricUpdates,
            ("progress" Core..=) Core.<$> progress,
            ("reportIndex" Core..=) Core.. Core.AsText Core.<$> reportIndex,
            ("reportedProgress" Core..=) Core.<$> reportedProgress,
            ("requestedLeaseDuration" Core..=) Core.<$> requestedLeaseDuration,
            ("sourceFork" Core..=) Core.<$> sourceFork,
            ("sourceOperationResponse" Core..=)
              Core.<$> sourceOperationResponse,
            ("stopPosition" Core..=) Core.<$> stopPosition,
            ("totalThrottlerWaitTimeSeconds" Core..=)
              Core.<$> totalThrottlerWaitTimeSeconds,
            ("workItemId" Core..=) Core.<$> workItemId
          ]
      )

-- | Information about a worker
--
-- /See:/ 'newWorkerDetails' smart constructor.
data WorkerDetails = WorkerDetails
  { -- | Work items processed by this worker, sorted by time.
    workItems :: (Core.Maybe [WorkItemDetails]),
    -- | Name of this worker
    workerName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerDetails' with the minimum fields required to make a request.
newWorkerDetails ::
  WorkerDetails
newWorkerDetails =
  WorkerDetails
    { workItems = Core.Nothing,
      workerName = Core.Nothing
    }

instance Core.FromJSON WorkerDetails where
  parseJSON =
    Core.withObject
      "WorkerDetails"
      ( \o ->
          WorkerDetails
            Core.<$> (o Core..:? "workItems")
            Core.<*> (o Core..:? "workerName")
      )

instance Core.ToJSON WorkerDetails where
  toJSON WorkerDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("workItems" Core..=) Core.<$> workItems,
            ("workerName" Core..=) Core.<$> workerName
          ]
      )

-- | WorkerHealthReport contains information about the health of a worker. The VM should be identified by the labels attached to the WorkerMessage that this health ping belongs to.
--
-- /See:/ 'newWorkerHealthReport' smart constructor.
data WorkerHealthReport = WorkerHealthReport
  { -- | Message describing any unusual health reports.
    msg :: (Core.Maybe Core.Text),
    -- | The pods running on the worker. See: http:\/\/kubernetes.io\/v1.1\/docs\/api-reference\/v1\/definitions.html#/v1/pod This field is used by the worker to send the status of the indvidual containers running on each worker.
    pods :: (Core.Maybe [WorkerHealthReport_PodsItem]),
    -- | The interval at which the worker is sending health reports. The default value of 0 should be interpreted as the field is not being explicitly set by the worker.
    reportInterval :: (Core.Maybe Core.Duration),
    -- | Code to describe a specific reason, if known, that a VM has reported broken state.
    vmBrokenCode :: (Core.Maybe Core.Text),
    -- | Whether the VM is in a permanently broken state. Broken VMs should be abandoned or deleted ASAP to avoid assigning or completing any work.
    vmIsBroken :: (Core.Maybe Core.Bool),
    -- | Whether the VM is currently healthy.
    vmIsHealthy :: (Core.Maybe Core.Bool),
    -- | The time the VM was booted.
    vmStartupTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerHealthReport' with the minimum fields required to make a request.
newWorkerHealthReport ::
  WorkerHealthReport
newWorkerHealthReport =
  WorkerHealthReport
    { msg = Core.Nothing,
      pods = Core.Nothing,
      reportInterval = Core.Nothing,
      vmBrokenCode = Core.Nothing,
      vmIsBroken = Core.Nothing,
      vmIsHealthy = Core.Nothing,
      vmStartupTime = Core.Nothing
    }

instance Core.FromJSON WorkerHealthReport where
  parseJSON =
    Core.withObject
      "WorkerHealthReport"
      ( \o ->
          WorkerHealthReport
            Core.<$> (o Core..:? "msg")
            Core.<*> (o Core..:? "pods")
            Core.<*> (o Core..:? "reportInterval")
            Core.<*> (o Core..:? "vmBrokenCode")
            Core.<*> (o Core..:? "vmIsBroken")
            Core.<*> (o Core..:? "vmIsHealthy")
            Core.<*> (o Core..:? "vmStartupTime")
      )

instance Core.ToJSON WorkerHealthReport where
  toJSON WorkerHealthReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("msg" Core..=) Core.<$> msg,
            ("pods" Core..=) Core.<$> pods,
            ("reportInterval" Core..=) Core.<$> reportInterval,
            ("vmBrokenCode" Core..=) Core.<$> vmBrokenCode,
            ("vmIsBroken" Core..=) Core.<$> vmIsBroken,
            ("vmIsHealthy" Core..=) Core.<$> vmIsHealthy,
            ("vmStartupTime" Core..=) Core.<$> vmStartupTime
          ]
      )

--
-- /See:/ 'newWorkerHealthReport_PodsItem' smart constructor.
newtype WorkerHealthReport_PodsItem = WorkerHealthReport_PodsItem
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerHealthReport_PodsItem' with the minimum fields required to make a request.
newWorkerHealthReport_PodsItem ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  WorkerHealthReport_PodsItem
newWorkerHealthReport_PodsItem additional =
  WorkerHealthReport_PodsItem {additional = additional}

instance Core.FromJSON WorkerHealthReport_PodsItem where
  parseJSON =
    Core.withObject
      "WorkerHealthReport_PodsItem"
      ( \o ->
          WorkerHealthReport_PodsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkerHealthReport_PodsItem where
  toJSON WorkerHealthReport_PodsItem {..} = Core.toJSON additional

-- | WorkerHealthReportResponse contains information returned to the worker in response to a health ping.
--
-- /See:/ 'newWorkerHealthReportResponse' smart constructor.
newtype WorkerHealthReportResponse = WorkerHealthReportResponse
  { -- | A positive value indicates the worker should change its reporting interval to the specified value. The default value of zero means no change in report rate is requested by the server.
    reportInterval :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerHealthReportResponse' with the minimum fields required to make a request.
newWorkerHealthReportResponse ::
  WorkerHealthReportResponse
newWorkerHealthReportResponse =
  WorkerHealthReportResponse {reportInterval = Core.Nothing}

instance Core.FromJSON WorkerHealthReportResponse where
  parseJSON =
    Core.withObject
      "WorkerHealthReportResponse"
      ( \o ->
          WorkerHealthReportResponse Core.<$> (o Core..:? "reportInterval")
      )

instance Core.ToJSON WorkerHealthReportResponse where
  toJSON WorkerHealthReportResponse {..} =
    Core.object
      ( Core.catMaybes
          [("reportInterval" Core..=) Core.<$> reportInterval]
      )

-- | A report of an event in a worker\'s lifecycle. The proto contains one event, because the worker is expected to asynchronously send each message immediately after the event. Due to this asynchrony, messages may arrive out of order (or missing), and it is up to the consumer to interpret. The timestamp of the event is in the enclosing WorkerMessage proto.
--
-- /See:/ 'newWorkerLifecycleEvent' smart constructor.
data WorkerLifecycleEvent = WorkerLifecycleEvent
  { -- | The start time of this container. All events will report this so that events can be grouped together across container\/VM restarts.
    containerStartTime :: (Core.Maybe Core.DateTime),
    -- | The event being reported.
    event :: (Core.Maybe WorkerLifecycleEvent_Event),
    -- | Other stats that can accompany an event. E.g. { \"downloaded_bytes\" : \"123456\" }
    metadata :: (Core.Maybe WorkerLifecycleEvent_Metadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerLifecycleEvent' with the minimum fields required to make a request.
newWorkerLifecycleEvent ::
  WorkerLifecycleEvent
newWorkerLifecycleEvent =
  WorkerLifecycleEvent
    { containerStartTime = Core.Nothing,
      event = Core.Nothing,
      metadata = Core.Nothing
    }

instance Core.FromJSON WorkerLifecycleEvent where
  parseJSON =
    Core.withObject
      "WorkerLifecycleEvent"
      ( \o ->
          WorkerLifecycleEvent
            Core.<$> (o Core..:? "containerStartTime")
            Core.<*> (o Core..:? "event")
            Core.<*> (o Core..:? "metadata")
      )

instance Core.ToJSON WorkerLifecycleEvent where
  toJSON WorkerLifecycleEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerStartTime" Core..=) Core.<$> containerStartTime,
            ("event" Core..=) Core.<$> event,
            ("metadata" Core..=) Core.<$> metadata
          ]
      )

-- | Other stats that can accompany an event. E.g. { \"downloaded_bytes\" : \"123456\" }
--
-- /See:/ 'newWorkerLifecycleEvent_Metadata' smart constructor.
newtype WorkerLifecycleEvent_Metadata = WorkerLifecycleEvent_Metadata
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerLifecycleEvent_Metadata' with the minimum fields required to make a request.
newWorkerLifecycleEvent_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WorkerLifecycleEvent_Metadata
newWorkerLifecycleEvent_Metadata additional =
  WorkerLifecycleEvent_Metadata {additional = additional}

instance Core.FromJSON WorkerLifecycleEvent_Metadata where
  parseJSON =
    Core.withObject
      "WorkerLifecycleEvent_Metadata"
      ( \o ->
          WorkerLifecycleEvent_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkerLifecycleEvent_Metadata where
  toJSON WorkerLifecycleEvent_Metadata {..} = Core.toJSON additional

-- | WorkerMessage provides information to the backend about a worker.
--
-- /See:/ 'newWorkerMessage' smart constructor.
data WorkerMessage = WorkerMessage
  { -- | Optional. Contains metrics related to go\/dataflow-data-sampling-telemetry.
    dataSamplingReport :: (Core.Maybe DataSamplingReport),
    -- | Labels are used to group WorkerMessages. For example, a worker/message about a particular container might have the labels: { \"JOB/ID\": \"2015-04-22\", \"WORKER/ID\": \"wordcount-vm-2015…\" \"CONTAINER/TYPE\": \"worker\", \"CONTAINER/ID\": \"ac1234def\"} Label tags typically correspond to Label enum values. However, for ease of development other strings can be used as tags. LABEL/UNSPECIFIED should not be used here.
    labels :: (Core.Maybe WorkerMessage_Labels),
    -- | System defined metrics for this worker.
    perWorkerMetrics :: (Core.Maybe PerWorkerMetrics),
    -- | Contains per-user worker telemetry used in streaming autoscaling.
    streamingScalingReport :: (Core.Maybe StreamingScalingReport),
    -- | The timestamp of the worker_message.
    time :: (Core.Maybe Core.DateTime),
    -- | The health of a worker.
    workerHealthReport :: (Core.Maybe WorkerHealthReport),
    -- | Record of worker lifecycle events.
    workerLifecycleEvent :: (Core.Maybe WorkerLifecycleEvent),
    -- | A worker message code.
    workerMessageCode :: (Core.Maybe WorkerMessageCode),
    -- | Resource metrics reported by workers.
    workerMetrics :: (Core.Maybe ResourceUtilizationReport),
    -- | Shutdown notice by workers.
    workerShutdownNotice :: (Core.Maybe WorkerShutdownNotice),
    -- | Thread scaling information reported by workers.
    workerThreadScalingReport :: (Core.Maybe WorkerThreadScalingReport)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerMessage' with the minimum fields required to make a request.
newWorkerMessage ::
  WorkerMessage
newWorkerMessage =
  WorkerMessage
    { dataSamplingReport = Core.Nothing,
      labels = Core.Nothing,
      perWorkerMetrics = Core.Nothing,
      streamingScalingReport = Core.Nothing,
      time = Core.Nothing,
      workerHealthReport = Core.Nothing,
      workerLifecycleEvent = Core.Nothing,
      workerMessageCode = Core.Nothing,
      workerMetrics = Core.Nothing,
      workerShutdownNotice = Core.Nothing,
      workerThreadScalingReport = Core.Nothing
    }

instance Core.FromJSON WorkerMessage where
  parseJSON =
    Core.withObject
      "WorkerMessage"
      ( \o ->
          WorkerMessage
            Core.<$> (o Core..:? "dataSamplingReport")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "perWorkerMetrics")
            Core.<*> (o Core..:? "streamingScalingReport")
            Core.<*> (o Core..:? "time")
            Core.<*> (o Core..:? "workerHealthReport")
            Core.<*> (o Core..:? "workerLifecycleEvent")
            Core.<*> (o Core..:? "workerMessageCode")
            Core.<*> (o Core..:? "workerMetrics")
            Core.<*> (o Core..:? "workerShutdownNotice")
            Core.<*> (o Core..:? "workerThreadScalingReport")
      )

instance Core.ToJSON WorkerMessage where
  toJSON WorkerMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSamplingReport" Core..=) Core.<$> dataSamplingReport,
            ("labels" Core..=) Core.<$> labels,
            ("perWorkerMetrics" Core..=) Core.<$> perWorkerMetrics,
            ("streamingScalingReport" Core..=) Core.<$> streamingScalingReport,
            ("time" Core..=) Core.<$> time,
            ("workerHealthReport" Core..=) Core.<$> workerHealthReport,
            ("workerLifecycleEvent" Core..=) Core.<$> workerLifecycleEvent,
            ("workerMessageCode" Core..=) Core.<$> workerMessageCode,
            ("workerMetrics" Core..=) Core.<$> workerMetrics,
            ("workerShutdownNotice" Core..=) Core.<$> workerShutdownNotice,
            ("workerThreadScalingReport" Core..=)
              Core.<$> workerThreadScalingReport
          ]
      )

-- | Labels are used to group WorkerMessages. For example, a worker/message about a particular container might have the labels: { \"JOB/ID\": \"2015-04-22\", \"WORKER/ID\": \"wordcount-vm-2015…\" \"CONTAINER/TYPE\": \"worker\", \"CONTAINER/ID\": \"ac1234def\"} Label tags typically correspond to Label enum values. However, for ease of development other strings can be used as tags. LABEL/UNSPECIFIED should not be used here.
--
-- /See:/ 'newWorkerMessage_Labels' smart constructor.
newtype WorkerMessage_Labels = WorkerMessage_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerMessage_Labels' with the minimum fields required to make a request.
newWorkerMessage_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WorkerMessage_Labels
newWorkerMessage_Labels additional =
  WorkerMessage_Labels {additional = additional}

instance Core.FromJSON WorkerMessage_Labels where
  parseJSON =
    Core.withObject
      "WorkerMessage_Labels"
      (\o -> WorkerMessage_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON WorkerMessage_Labels where
  toJSON WorkerMessage_Labels {..} = Core.toJSON additional

-- | A message code is used to report status and error messages to the service. The message codes are intended to be machine readable. The service will take care of translating these into user understandable messages if necessary. Example use cases: 1. Worker processes reporting successful startup. 2. Worker processes reporting specific errors (e.g. package staging failure).
--
-- /See:/ 'newWorkerMessageCode' smart constructor.
data WorkerMessageCode = WorkerMessageCode
  { -- | The code is a string intended for consumption by a machine that identifies the type of message being sent. Examples: 1. \"HARNESS/STARTED\" might be used to indicate the worker harness has started. 2. \"GCS/DOWNLOAD_ERROR\" might be used to indicate an error downloading a Cloud Storage file as part of the boot process of one of the worker containers. This is a string and not an enum to make it easy to add new codes without waiting for an API change.
    code :: (Core.Maybe Core.Text),
    -- | Parameters contains specific information about the code. This is a struct to allow parameters of different types. Examples: 1. For a \"HARNESS/STARTED\" message parameters might provide the name of the worker and additional data like timing information. 2. For a \"GCS/DOWNLOAD_ERROR\" parameters might contain fields listing the Cloud Storage objects being downloaded and fields containing errors. In general complex data structures should be avoided. If a worker needs to send a specific and complicated data structure then please consider defining a new proto and adding it to the data oneof in WorkerMessageResponse. Conventions: Parameters should only be used for information that isn\'t typically passed as a label. hostname and other worker identifiers should almost always be passed as labels since they will be included on most messages.
    parameters :: (Core.Maybe WorkerMessageCode_Parameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerMessageCode' with the minimum fields required to make a request.
newWorkerMessageCode ::
  WorkerMessageCode
newWorkerMessageCode =
  WorkerMessageCode {code = Core.Nothing, parameters = Core.Nothing}

instance Core.FromJSON WorkerMessageCode where
  parseJSON =
    Core.withObject
      "WorkerMessageCode"
      ( \o ->
          WorkerMessageCode
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON WorkerMessageCode where
  toJSON WorkerMessageCode {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | Parameters contains specific information about the code. This is a struct to allow parameters of different types. Examples: 1. For a \"HARNESS/STARTED\" message parameters might provide the name of the worker and additional data like timing information. 2. For a \"GCS/DOWNLOAD_ERROR\" parameters might contain fields listing the Cloud Storage objects being downloaded and fields containing errors. In general complex data structures should be avoided. If a worker needs to send a specific and complicated data structure then please consider defining a new proto and adding it to the data oneof in WorkerMessageResponse. Conventions: Parameters should only be used for information that isn\'t typically passed as a label. hostname and other worker identifiers should almost always be passed as labels since they will be included on most messages.
--
-- /See:/ 'newWorkerMessageCode_Parameters' smart constructor.
newtype WorkerMessageCode_Parameters = WorkerMessageCode_Parameters
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerMessageCode_Parameters' with the minimum fields required to make a request.
newWorkerMessageCode_Parameters ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  WorkerMessageCode_Parameters
newWorkerMessageCode_Parameters additional =
  WorkerMessageCode_Parameters {additional = additional}

instance Core.FromJSON WorkerMessageCode_Parameters where
  parseJSON =
    Core.withObject
      "WorkerMessageCode_Parameters"
      ( \o ->
          WorkerMessageCode_Parameters Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkerMessageCode_Parameters where
  toJSON WorkerMessageCode_Parameters {..} = Core.toJSON additional

-- | A worker_message response allows the server to pass information to the sender.
--
-- /See:/ 'newWorkerMessageResponse' smart constructor.
data WorkerMessageResponse = WorkerMessageResponse
  { -- | Service\'s streaming scaling response for workers.
    streamingScalingReportResponse :: (Core.Maybe StreamingScalingReportResponse),
    -- | The service\'s response to a worker\'s health report.
    workerHealthReportResponse :: (Core.Maybe WorkerHealthReportResponse),
    -- | Service\'s response to reporting worker metrics (currently empty).
    workerMetricsResponse :: (Core.Maybe ResourceUtilizationReportResponse),
    -- | Service\'s response to shutdown notice (currently empty).
    workerShutdownNoticeResponse :: (Core.Maybe WorkerShutdownNoticeResponse),
    -- | Service\'s thread scaling recommendation for workers.
    workerThreadScalingReportResponse :: (Core.Maybe WorkerThreadScalingReportResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerMessageResponse' with the minimum fields required to make a request.
newWorkerMessageResponse ::
  WorkerMessageResponse
newWorkerMessageResponse =
  WorkerMessageResponse
    { streamingScalingReportResponse =
        Core.Nothing,
      workerHealthReportResponse = Core.Nothing,
      workerMetricsResponse = Core.Nothing,
      workerShutdownNoticeResponse = Core.Nothing,
      workerThreadScalingReportResponse = Core.Nothing
    }

instance Core.FromJSON WorkerMessageResponse where
  parseJSON =
    Core.withObject
      "WorkerMessageResponse"
      ( \o ->
          WorkerMessageResponse
            Core.<$> (o Core..:? "streamingScalingReportResponse")
            Core.<*> (o Core..:? "workerHealthReportResponse")
            Core.<*> (o Core..:? "workerMetricsResponse")
            Core.<*> (o Core..:? "workerShutdownNoticeResponse")
            Core.<*> (o Core..:? "workerThreadScalingReportResponse")
      )

instance Core.ToJSON WorkerMessageResponse where
  toJSON WorkerMessageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("streamingScalingReportResponse" Core..=)
              Core.<$> streamingScalingReportResponse,
            ("workerHealthReportResponse" Core..=)
              Core.<$> workerHealthReportResponse,
            ("workerMetricsResponse" Core..=) Core.<$> workerMetricsResponse,
            ("workerShutdownNoticeResponse" Core..=)
              Core.<$> workerShutdownNoticeResponse,
            ("workerThreadScalingReportResponse" Core..=)
              Core.<$> workerThreadScalingReportResponse
          ]
      )

-- | Describes one particular pool of Cloud Dataflow workers to be instantiated by the Cloud Dataflow service in order to perform the computations required by a job. Note that a workflow job may use multiple pools, in order to match the various computational requirements of the various stages of the job.
--
-- /See:/ 'newWorkerPool' smart constructor.
data WorkerPool = WorkerPool
  { -- | Settings for autoscaling of this WorkerPool.
    autoscalingSettings :: (Core.Maybe AutoscalingSettings),
    -- | Data disks that are used by a VM in this workflow.
    dataDisks :: (Core.Maybe [Disk]),
    -- | The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.
    defaultPackageSet :: (Core.Maybe WorkerPool_DefaultPackageSet),
    -- | Size of root disk for VMs, in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
    diskSizeGb :: (Core.Maybe Core.Int32),
    -- | Fully qualified source image for disks.
    diskSourceImage :: (Core.Maybe Core.Text),
    -- | Type of root disk for VMs. If empty or unspecified, the service will attempt to choose a reasonable default.
    diskType :: (Core.Maybe Core.Text),
    -- | Configuration for VM IPs.
    ipConfiguration :: (Core.Maybe WorkerPool_IpConfiguration),
    -- | The kind of the worker pool; currently only @harness@ and @shuffle@ are supported.
    kind :: (Core.Maybe Core.Text),
    -- | Machine type (e.g. \"n1-standard-1\"). If empty or unspecified, the service will attempt to choose a reasonable default.
    machineType :: (Core.Maybe Core.Text),
    -- | Metadata to set on the Google Compute Engine VMs.
    metadata :: (Core.Maybe WorkerPool_Metadata),
    -- | Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".
    network :: (Core.Maybe Core.Text),
    -- | The number of threads per worker harness. If empty or unspecified, the service will choose a number of threads (according to the number of cores on the selected machine type for batch, or 1 by convention for streaming).
    numThreadsPerWorker :: (Core.Maybe Core.Int32),
    -- | Number of Google Compute Engine workers in this pool needed to execute the job. If zero or unspecified, the service will attempt to choose a reasonable default.
    numWorkers :: (Core.Maybe Core.Int32),
    -- | The action to take on host maintenance, as defined by the Google Compute Engine API.
    onHostMaintenance :: (Core.Maybe Core.Text),
    -- | Packages to be installed on workers.
    packages :: (Core.Maybe [Package]),
    -- | Extra arguments for this worker pool.
    poolArgs :: (Core.Maybe WorkerPool_PoolArgs),
    -- | Set of SDK harness containers needed to execute this pipeline. This will only be set in the Fn API path. For non-cross-language pipelines this should have only one entry. Cross-language pipelines will have two or more entries.
    sdkHarnessContainerImages :: (Core.Maybe [SdkHarnessContainerImage]),
    -- | Subnetwork to which VMs will be assigned, if desired. Expected to be of the form \"regions\/REGION\/subnetworks\/SUBNETWORK\".
    subnetwork :: (Core.Maybe Core.Text),
    -- | Settings passed through to Google Compute Engine workers when using the standard Dataflow task runner. Users should ignore this field.
    taskrunnerSettings :: (Core.Maybe TaskRunnerSettings),
    -- | Sets the policy for determining when to turndown worker pool. Allowed values are: @TEARDOWN_ALWAYS@, @TEARDOWN_ON_SUCCESS@, and @TEARDOWN_NEVER@. @TEARDOWN_ALWAYS@ means workers are always torn down regardless of whether the job succeeds. @TEARDOWN_ON_SUCCESS@ means workers are torn down if the job succeeds. @TEARDOWN_NEVER@ means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user\'s project until they are explicitly terminated by the user. Because of this, Google recommends using the @TEARDOWN_ALWAYS@ policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.
    teardownPolicy :: (Core.Maybe WorkerPool_TeardownPolicy),
    -- | Required. Docker container image that executes the Cloud Dataflow worker harness, residing in Google Container Registry. Deprecated for the Fn API path. Use sdk/harness/container_images instead.
    workerHarnessContainerImage :: (Core.Maybe Core.Text),
    -- | Zone to run the worker pools in. If empty or unspecified, the service will attempt to choose a reasonable default.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerPool' with the minimum fields required to make a request.
newWorkerPool ::
  WorkerPool
newWorkerPool =
  WorkerPool
    { autoscalingSettings = Core.Nothing,
      dataDisks = Core.Nothing,
      defaultPackageSet = Core.Nothing,
      diskSizeGb = Core.Nothing,
      diskSourceImage = Core.Nothing,
      diskType = Core.Nothing,
      ipConfiguration = Core.Nothing,
      kind = Core.Nothing,
      machineType = Core.Nothing,
      metadata = Core.Nothing,
      network = Core.Nothing,
      numThreadsPerWorker = Core.Nothing,
      numWorkers = Core.Nothing,
      onHostMaintenance = Core.Nothing,
      packages = Core.Nothing,
      poolArgs = Core.Nothing,
      sdkHarnessContainerImages = Core.Nothing,
      subnetwork = Core.Nothing,
      taskrunnerSettings = Core.Nothing,
      teardownPolicy = Core.Nothing,
      workerHarnessContainerImage = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON WorkerPool where
  parseJSON =
    Core.withObject
      "WorkerPool"
      ( \o ->
          WorkerPool
            Core.<$> (o Core..:? "autoscalingSettings")
            Core.<*> (o Core..:? "dataDisks")
            Core.<*> (o Core..:? "defaultPackageSet")
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "diskSourceImage")
            Core.<*> (o Core..:? "diskType")
            Core.<*> (o Core..:? "ipConfiguration")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "numThreadsPerWorker")
            Core.<*> (o Core..:? "numWorkers")
            Core.<*> (o Core..:? "onHostMaintenance")
            Core.<*> (o Core..:? "packages")
            Core.<*> (o Core..:? "poolArgs")
            Core.<*> (o Core..:? "sdkHarnessContainerImages")
            Core.<*> (o Core..:? "subnetwork")
            Core.<*> (o Core..:? "taskrunnerSettings")
            Core.<*> (o Core..:? "teardownPolicy")
            Core.<*> (o Core..:? "workerHarnessContainerImage")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON WorkerPool where
  toJSON WorkerPool {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoscalingSettings" Core..=) Core.<$> autoscalingSettings,
            ("dataDisks" Core..=) Core.<$> dataDisks,
            ("defaultPackageSet" Core..=) Core.<$> defaultPackageSet,
            ("diskSizeGb" Core..=) Core.<$> diskSizeGb,
            ("diskSourceImage" Core..=) Core.<$> diskSourceImage,
            ("diskType" Core..=) Core.<$> diskType,
            ("ipConfiguration" Core..=) Core.<$> ipConfiguration,
            ("kind" Core..=) Core.<$> kind,
            ("machineType" Core..=) Core.<$> machineType,
            ("metadata" Core..=) Core.<$> metadata,
            ("network" Core..=) Core.<$> network,
            ("numThreadsPerWorker" Core..=) Core.<$> numThreadsPerWorker,
            ("numWorkers" Core..=) Core.<$> numWorkers,
            ("onHostMaintenance" Core..=) Core.<$> onHostMaintenance,
            ("packages" Core..=) Core.<$> packages,
            ("poolArgs" Core..=) Core.<$> poolArgs,
            ("sdkHarnessContainerImages" Core..=)
              Core.<$> sdkHarnessContainerImages,
            ("subnetwork" Core..=) Core.<$> subnetwork,
            ("taskrunnerSettings" Core..=) Core.<$> taskrunnerSettings,
            ("teardownPolicy" Core..=) Core.<$> teardownPolicy,
            ("workerHarnessContainerImage" Core..=)
              Core.<$> workerHarnessContainerImage,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Metadata to set on the Google Compute Engine VMs.
--
-- /See:/ 'newWorkerPool_Metadata' smart constructor.
newtype WorkerPool_Metadata = WorkerPool_Metadata
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerPool_Metadata' with the minimum fields required to make a request.
newWorkerPool_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WorkerPool_Metadata
newWorkerPool_Metadata additional =
  WorkerPool_Metadata {additional = additional}

instance Core.FromJSON WorkerPool_Metadata where
  parseJSON =
    Core.withObject
      "WorkerPool_Metadata"
      (\o -> WorkerPool_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON WorkerPool_Metadata where
  toJSON WorkerPool_Metadata {..} = Core.toJSON additional

-- | Extra arguments for this worker pool.
--
-- /See:/ 'newWorkerPool_PoolArgs' smart constructor.
newtype WorkerPool_PoolArgs = WorkerPool_PoolArgs
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerPool_PoolArgs' with the minimum fields required to make a request.
newWorkerPool_PoolArgs ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  WorkerPool_PoolArgs
newWorkerPool_PoolArgs additional =
  WorkerPool_PoolArgs {additional = additional}

instance Core.FromJSON WorkerPool_PoolArgs where
  parseJSON =
    Core.withObject
      "WorkerPool_PoolArgs"
      (\o -> WorkerPool_PoolArgs Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON WorkerPool_PoolArgs where
  toJSON WorkerPool_PoolArgs {..} = Core.toJSON additional

-- | Provides data to pass through to the worker harness.
--
-- /See:/ 'newWorkerSettings' smart constructor.
data WorkerSettings = WorkerSettings
  { -- | The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, \"Relative Uniform Resource Locators\". If not specified, the default value is \"http:\/\/www.googleapis.com\/\"
    baseUrl :: (Core.Maybe Core.Text),
    -- | Whether to send work progress updates to the service.
    reportingEnabled :: (Core.Maybe Core.Bool),
    -- | The Cloud Dataflow service path relative to the root URL, for example, \"dataflow\/v1b3\/projects\".
    servicePath :: (Core.Maybe Core.Text),
    -- | The Shuffle service path relative to the root URL, for example, \"shuffle\/v1beta1\".
    shuffleServicePath :: (Core.Maybe Core.Text),
    -- | The prefix of the resources the system should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com\/{bucket}\/{object} bucket.storage.googleapis.com\/{object}
    tempStoragePrefix :: (Core.Maybe Core.Text),
    -- | The ID of the worker running this pipeline.
    workerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerSettings' with the minimum fields required to make a request.
newWorkerSettings ::
  WorkerSettings
newWorkerSettings =
  WorkerSettings
    { baseUrl = Core.Nothing,
      reportingEnabled = Core.Nothing,
      servicePath = Core.Nothing,
      shuffleServicePath = Core.Nothing,
      tempStoragePrefix = Core.Nothing,
      workerId = Core.Nothing
    }

instance Core.FromJSON WorkerSettings where
  parseJSON =
    Core.withObject
      "WorkerSettings"
      ( \o ->
          WorkerSettings
            Core.<$> (o Core..:? "baseUrl")
            Core.<*> (o Core..:? "reportingEnabled")
            Core.<*> (o Core..:? "servicePath")
            Core.<*> (o Core..:? "shuffleServicePath")
            Core.<*> (o Core..:? "tempStoragePrefix")
            Core.<*> (o Core..:? "workerId")
      )

instance Core.ToJSON WorkerSettings where
  toJSON WorkerSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseUrl" Core..=) Core.<$> baseUrl,
            ("reportingEnabled" Core..=) Core.<$> reportingEnabled,
            ("servicePath" Core..=) Core.<$> servicePath,
            ("shuffleServicePath" Core..=) Core.<$> shuffleServicePath,
            ("tempStoragePrefix" Core..=) Core.<$> tempStoragePrefix,
            ("workerId" Core..=) Core.<$> workerId
          ]
      )

-- | Shutdown notification from workers. This is to be sent by the shutdown script of the worker VM so that the backend knows that the VM is being shut down.
--
-- /See:/ 'newWorkerShutdownNotice' smart constructor.
newtype WorkerShutdownNotice = WorkerShutdownNotice
  { -- | The reason for the worker shutdown. Current possible values are: \"UNKNOWN\": shutdown reason is unknown. \"PREEMPTION\": shutdown reason is preemption. Other possible reasons may be added in the future.
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerShutdownNotice' with the minimum fields required to make a request.
newWorkerShutdownNotice ::
  WorkerShutdownNotice
newWorkerShutdownNotice =
  WorkerShutdownNotice {reason = Core.Nothing}

instance Core.FromJSON WorkerShutdownNotice where
  parseJSON =
    Core.withObject
      "WorkerShutdownNotice"
      (\o -> WorkerShutdownNotice Core.<$> (o Core..:? "reason"))

instance Core.ToJSON WorkerShutdownNotice where
  toJSON WorkerShutdownNotice {..} =
    Core.object (Core.catMaybes [("reason" Core..=) Core.<$> reason])

-- | Service-side response to WorkerMessage issuing shutdown notice.
--
-- /See:/ 'newWorkerShutdownNoticeResponse' smart constructor.
data WorkerShutdownNoticeResponse = WorkerShutdownNoticeResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerShutdownNoticeResponse' with the minimum fields required to make a request.
newWorkerShutdownNoticeResponse ::
  WorkerShutdownNoticeResponse
newWorkerShutdownNoticeResponse = WorkerShutdownNoticeResponse

instance Core.FromJSON WorkerShutdownNoticeResponse where
  parseJSON =
    Core.withObject
      "WorkerShutdownNoticeResponse"
      (\o -> Core.pure WorkerShutdownNoticeResponse)

instance Core.ToJSON WorkerShutdownNoticeResponse where
  toJSON = Core.const Core.emptyObject

-- | Contains information about the thread scaling information of a worker.
--
-- /See:/ 'newWorkerThreadScalingReport' smart constructor.
newtype WorkerThreadScalingReport = WorkerThreadScalingReport
  { -- | Current number of active threads in a worker.
    currentThreadCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerThreadScalingReport' with the minimum fields required to make a request.
newWorkerThreadScalingReport ::
  WorkerThreadScalingReport
newWorkerThreadScalingReport =
  WorkerThreadScalingReport {currentThreadCount = Core.Nothing}

instance Core.FromJSON WorkerThreadScalingReport where
  parseJSON =
    Core.withObject
      "WorkerThreadScalingReport"
      ( \o ->
          WorkerThreadScalingReport
            Core.<$> (o Core..:? "currentThreadCount")
      )

instance Core.ToJSON WorkerThreadScalingReport where
  toJSON WorkerThreadScalingReport {..} =
    Core.object
      ( Core.catMaybes
          [("currentThreadCount" Core..=) Core.<$> currentThreadCount]
      )

-- | Contains the thread scaling recommendation for a worker from the backend.
--
-- /See:/ 'newWorkerThreadScalingReportResponse' smart constructor.
newtype WorkerThreadScalingReportResponse = WorkerThreadScalingReportResponse
  { -- | Recommended number of threads for a worker.
    recommendedThreadCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerThreadScalingReportResponse' with the minimum fields required to make a request.
newWorkerThreadScalingReportResponse ::
  WorkerThreadScalingReportResponse
newWorkerThreadScalingReportResponse =
  WorkerThreadScalingReportResponse
    { recommendedThreadCount =
        Core.Nothing
    }

instance Core.FromJSON WorkerThreadScalingReportResponse where
  parseJSON =
    Core.withObject
      "WorkerThreadScalingReportResponse"
      ( \o ->
          WorkerThreadScalingReportResponse
            Core.<$> (o Core..:? "recommendedThreadCount")
      )

instance Core.ToJSON WorkerThreadScalingReportResponse where
  toJSON WorkerThreadScalingReportResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("recommendedThreadCount" Core..=)
              Core.<$> recommendedThreadCount
          ]
      )

-- | An instruction that writes records. Takes one input, produces no outputs.
--
-- /See:/ 'newWriteInstruction' smart constructor.
data WriteInstruction = WriteInstruction
  { -- | The input.
    input :: (Core.Maybe InstructionInput),
    -- | The sink to write to.
    sink :: (Core.Maybe Sink)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteInstruction' with the minimum fields required to make a request.
newWriteInstruction ::
  WriteInstruction
newWriteInstruction =
  WriteInstruction {input = Core.Nothing, sink = Core.Nothing}

instance Core.FromJSON WriteInstruction where
  parseJSON =
    Core.withObject
      "WriteInstruction"
      ( \o ->
          WriteInstruction
            Core.<$> (o Core..:? "input")
            Core.<*> (o Core..:? "sink")
      )

instance Core.ToJSON WriteInstruction where
  toJSON WriteInstruction {..} =
    Core.object
      ( Core.catMaybes
          [("input" Core..=) Core.<$> input, ("sink" Core..=) Core.<$> sink]
      )
