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
-- Module      : Gogol.Dataflow.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataflow.Types
  ( -- * Configuration
    dataflowService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Compute'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ApproximateProgress
    ApproximateProgress (..),
    newApproximateProgress,

    -- ** ApproximateReportedProgress
    ApproximateReportedProgress (..),
    newApproximateReportedProgress,

    -- ** ApproximateSplitRequest
    ApproximateSplitRequest (..),
    newApproximateSplitRequest,

    -- ** AutoscalingEvent
    AutoscalingEvent (..),
    newAutoscalingEvent,

    -- ** AutoscalingEvent_EventType
    AutoscalingEvent_EventType (..),

    -- ** AutoscalingSettings
    AutoscalingSettings (..),
    newAutoscalingSettings,

    -- ** AutoscalingSettings_Algorithm
    AutoscalingSettings_Algorithm (..),

    -- ** Base2Exponent
    Base2Exponent (..),
    newBase2Exponent,

    -- ** BigQueryIODetails
    BigQueryIODetails (..),
    newBigQueryIODetails,

    -- ** BigTableIODetails
    BigTableIODetails (..),
    newBigTableIODetails,

    -- ** BoundedTrie
    BoundedTrie (..),
    newBoundedTrie,

    -- ** BoundedTrieNode
    BoundedTrieNode (..),
    newBoundedTrieNode,

    -- ** BoundedTrieNode_Children
    BoundedTrieNode_Children (..),
    newBoundedTrieNode_Children,

    -- ** BucketOptions
    BucketOptions (..),
    newBucketOptions,

    -- ** CPUTime
    CPUTime (..),
    newCPUTime,

    -- ** ComponentSource
    ComponentSource (..),
    newComponentSource,

    -- ** ComponentTransform
    ComponentTransform (..),
    newComponentTransform,

    -- ** ComputationTopology
    ComputationTopology (..),
    newComputationTopology,

    -- ** ConcatPosition
    ConcatPosition (..),
    newConcatPosition,

    -- ** ContainerSpec
    ContainerSpec (..),
    newContainerSpec,

    -- ** CounterMetadata
    CounterMetadata (..),
    newCounterMetadata,

    -- ** CounterMetadata_Kind
    CounterMetadata_Kind (..),

    -- ** CounterMetadata_StandardUnits
    CounterMetadata_StandardUnits (..),

    -- ** CounterStructuredName
    CounterStructuredName (..),
    newCounterStructuredName,

    -- ** CounterStructuredName_Origin
    CounterStructuredName_Origin (..),

    -- ** CounterStructuredName_Portion
    CounterStructuredName_Portion (..),

    -- ** CounterStructuredNameAndMetadata
    CounterStructuredNameAndMetadata (..),
    newCounterStructuredNameAndMetadata,

    -- ** CounterUpdate
    CounterUpdate (..),
    newCounterUpdate,

    -- ** CreateJobFromTemplateRequest
    CreateJobFromTemplateRequest (..),
    newCreateJobFromTemplateRequest,

    -- ** CreateJobFromTemplateRequest_Parameters
    CreateJobFromTemplateRequest_Parameters (..),
    newCreateJobFromTemplateRequest_Parameters,

    -- ** CustomSourceLocation
    CustomSourceLocation (..),
    newCustomSourceLocation,

    -- ** DataDiskAssignment
    DataDiskAssignment (..),
    newDataDiskAssignment,

    -- ** DataSamplingConfig
    DataSamplingConfig (..),
    newDataSamplingConfig,

    -- ** DataSamplingConfig_BehaviorsItem
    DataSamplingConfig_BehaviorsItem (..),

    -- ** DataSamplingReport
    DataSamplingReport (..),
    newDataSamplingReport,

    -- ** DataflowGaugeValue
    DataflowGaugeValue (..),
    newDataflowGaugeValue,

    -- ** DataflowHistogramValue
    DataflowHistogramValue (..),
    newDataflowHistogramValue,

    -- ** DatastoreIODetails
    DatastoreIODetails (..),
    newDatastoreIODetails,

    -- ** DebugOptions
    DebugOptions (..),
    newDebugOptions,

    -- ** DeleteSnapshotResponse
    DeleteSnapshotResponse (..),
    newDeleteSnapshotResponse,

    -- ** DerivedSource
    DerivedSource (..),
    newDerivedSource,

    -- ** DerivedSource_DerivationMode
    DerivedSource_DerivationMode (..),

    -- ** Disk
    Disk (..),
    newDisk,

    -- ** DisplayData
    DisplayData (..),
    newDisplayData,

    -- ** DistributionUpdate
    DistributionUpdate (..),
    newDistributionUpdate,

    -- ** DynamicSourceSplit
    DynamicSourceSplit (..),
    newDynamicSourceSplit,

    -- ** Environment
    Environment (..),
    newEnvironment,

    -- ** Environment_FlexResourceSchedulingGoal
    Environment_FlexResourceSchedulingGoal (..),

    -- ** Environment_InternalExperiments
    Environment_InternalExperiments (..),
    newEnvironment_InternalExperiments,

    -- ** Environment_SdkPipelineOptions
    Environment_SdkPipelineOptions (..),
    newEnvironment_SdkPipelineOptions,

    -- ** Environment_ShuffleMode
    Environment_ShuffleMode (..),

    -- ** Environment_StreamingMode
    Environment_StreamingMode (..),

    -- ** Environment_UserAgent
    Environment_UserAgent (..),
    newEnvironment_UserAgent,

    -- ** Environment_Version
    Environment_Version (..),
    newEnvironment_Version,

    -- ** ExecutionStageState
    ExecutionStageState (..),
    newExecutionStageState,

    -- ** ExecutionStageState_ExecutionStageState
    ExecutionStageState_ExecutionStageState (..),

    -- ** ExecutionStageSummary
    ExecutionStageSummary (..),
    newExecutionStageSummary,

    -- ** ExecutionStageSummary_Kind
    ExecutionStageSummary_Kind (..),

    -- ** FailedLocation
    FailedLocation (..),
    newFailedLocation,

    -- ** FileIODetails
    FileIODetails (..),
    newFileIODetails,

    -- ** FlattenInstruction
    FlattenInstruction (..),
    newFlattenInstruction,

    -- ** FlexTemplateRuntimeEnvironment
    FlexTemplateRuntimeEnvironment (..),
    newFlexTemplateRuntimeEnvironment,

    -- ** FlexTemplateRuntimeEnvironment_AdditionalUserLabels
    FlexTemplateRuntimeEnvironment_AdditionalUserLabels (..),
    newFlexTemplateRuntimeEnvironment_AdditionalUserLabels,

    -- ** FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm
    FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm (..),

    -- ** FlexTemplateRuntimeEnvironment_FlexrsGoal
    FlexTemplateRuntimeEnvironment_FlexrsGoal (..),

    -- ** FlexTemplateRuntimeEnvironment_IpConfiguration
    FlexTemplateRuntimeEnvironment_IpConfiguration (..),

    -- ** FlexTemplateRuntimeEnvironment_StreamingMode
    FlexTemplateRuntimeEnvironment_StreamingMode (..),

    -- ** FloatingPointList
    FloatingPointList (..),
    newFloatingPointList,

    -- ** FloatingPointMean
    FloatingPointMean (..),
    newFloatingPointMean,

    -- ** GPUUsage
    GPUUsage (..),
    newGPUUsage,

    -- ** GPUUtilization
    GPUUtilization (..),
    newGPUUtilization,

    -- ** GetDebugConfigRequest
    GetDebugConfigRequest (..),
    newGetDebugConfigRequest,

    -- ** GetDebugConfigResponse
    GetDebugConfigResponse (..),
    newGetDebugConfigResponse,

    -- ** GetTemplateResponse
    GetTemplateResponse (..),
    newGetTemplateResponse,

    -- ** GetTemplateResponse_TemplateType
    GetTemplateResponse_TemplateType (..),

    -- ** Histogram
    Histogram (..),
    newHistogram,

    -- ** HotKeyDebuggingInfo
    HotKeyDebuggingInfo (..),
    newHotKeyDebuggingInfo,

    -- ** HotKeyDebuggingInfo_DetectedHotKeys
    HotKeyDebuggingInfo_DetectedHotKeys (..),
    newHotKeyDebuggingInfo_DetectedHotKeys,

    -- ** HotKeyDetection
    HotKeyDetection (..),
    newHotKeyDetection,

    -- ** HotKeyInfo
    HotKeyInfo (..),
    newHotKeyInfo,

    -- ** InstructionInput
    InstructionInput (..),
    newInstructionInput,

    -- ** InstructionOutput
    InstructionOutput (..),
    newInstructionOutput,

    -- ** InstructionOutput_Codec
    InstructionOutput_Codec (..),
    newInstructionOutput_Codec,

    -- ** IntegerGauge
    IntegerGauge (..),
    newIntegerGauge,

    -- ** IntegerList
    IntegerList (..),
    newIntegerList,

    -- ** IntegerMean
    IntegerMean (..),
    newIntegerMean,

    -- ** Job
    Job (..),
    newJob,

    -- ** Job_CurrentState
    Job_CurrentState (..),

    -- ** Job_Labels
    Job_Labels (..),
    newJob_Labels,

    -- ** Job_RequestedState
    Job_RequestedState (..),

    -- ** Job_TransformNameMapping
    Job_TransformNameMapping (..),
    newJob_TransformNameMapping,

    -- ** Job_Type
    Job_Type (..),

    -- ** JobExecutionDetails
    JobExecutionDetails (..),
    newJobExecutionDetails,

    -- ** JobExecutionInfo
    JobExecutionInfo (..),
    newJobExecutionInfo,

    -- ** JobExecutionInfo_Stages
    JobExecutionInfo_Stages (..),
    newJobExecutionInfo_Stages,

    -- ** JobExecutionStageInfo
    JobExecutionStageInfo (..),
    newJobExecutionStageInfo,

    -- ** JobMessage
    JobMessage (..),
    newJobMessage,

    -- ** JobMessage_MessageImportance
    JobMessage_MessageImportance (..),

    -- ** JobMetadata
    JobMetadata (..),
    newJobMetadata,

    -- ** JobMetadata_UserDisplayProperties
    JobMetadata_UserDisplayProperties (..),
    newJobMetadata_UserDisplayProperties,

    -- ** JobMetrics
    JobMetrics (..),
    newJobMetrics,

    -- ** KeyRangeDataDiskAssignment
    KeyRangeDataDiskAssignment (..),
    newKeyRangeDataDiskAssignment,

    -- ** KeyRangeLocation
    KeyRangeLocation (..),
    newKeyRangeLocation,

    -- ** LaunchFlexTemplateParameter
    LaunchFlexTemplateParameter (..),
    newLaunchFlexTemplateParameter,

    -- ** LaunchFlexTemplateParameter_LaunchOptions
    LaunchFlexTemplateParameter_LaunchOptions (..),
    newLaunchFlexTemplateParameter_LaunchOptions,

    -- ** LaunchFlexTemplateParameter_Parameters
    LaunchFlexTemplateParameter_Parameters (..),
    newLaunchFlexTemplateParameter_Parameters,

    -- ** LaunchFlexTemplateParameter_TransformNameMappings
    LaunchFlexTemplateParameter_TransformNameMappings (..),
    newLaunchFlexTemplateParameter_TransformNameMappings,

    -- ** LaunchFlexTemplateRequest
    LaunchFlexTemplateRequest (..),
    newLaunchFlexTemplateRequest,

    -- ** LaunchFlexTemplateResponse
    LaunchFlexTemplateResponse (..),
    newLaunchFlexTemplateResponse,

    -- ** LaunchTemplateParameters
    LaunchTemplateParameters (..),
    newLaunchTemplateParameters,

    -- ** LaunchTemplateParameters_Parameters
    LaunchTemplateParameters_Parameters (..),
    newLaunchTemplateParameters_Parameters,

    -- ** LaunchTemplateParameters_TransformNameMapping
    LaunchTemplateParameters_TransformNameMapping (..),
    newLaunchTemplateParameters_TransformNameMapping,

    -- ** LaunchTemplateResponse
    LaunchTemplateResponse (..),
    newLaunchTemplateResponse,

    -- ** LeaseWorkItemRequest
    LeaseWorkItemRequest (..),
    newLeaseWorkItemRequest,

    -- ** LeaseWorkItemRequest_UnifiedWorkerRequest
    LeaseWorkItemRequest_UnifiedWorkerRequest (..),
    newLeaseWorkItemRequest_UnifiedWorkerRequest,

    -- ** LeaseWorkItemResponse
    LeaseWorkItemResponse (..),
    newLeaseWorkItemResponse,

    -- ** LeaseWorkItemResponse_UnifiedWorkerResponse
    LeaseWorkItemResponse_UnifiedWorkerResponse (..),
    newLeaseWorkItemResponse_UnifiedWorkerResponse,

    -- ** Linear
    Linear (..),
    newLinear,

    -- ** ListJobMessagesResponse
    ListJobMessagesResponse (..),
    newListJobMessagesResponse,

    -- ** ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- ** ListSnapshotsResponse
    ListSnapshotsResponse (..),
    newListSnapshotsResponse,

    -- ** MapTask
    MapTask (..),
    newMapTask,

    -- ** MemInfo
    MemInfo (..),
    newMemInfo,

    -- ** MetricShortId
    MetricShortId (..),
    newMetricShortId,

    -- ** MetricStructuredName
    MetricStructuredName (..),
    newMetricStructuredName,

    -- ** MetricStructuredName_Context
    MetricStructuredName_Context (..),
    newMetricStructuredName_Context,

    -- ** MetricUpdate
    MetricUpdate (..),
    newMetricUpdate,

    -- ** MetricValue
    MetricValue (..),
    newMetricValue,

    -- ** MetricValue_MetricLabels
    MetricValue_MetricLabels (..),
    newMetricValue_MetricLabels,

    -- ** MountedDataDisk
    MountedDataDisk (..),
    newMountedDataDisk,

    -- ** MultiOutputInfo
    MultiOutputInfo (..),
    newMultiOutputInfo,

    -- ** NameAndKind
    NameAndKind (..),
    newNameAndKind,

    -- ** NameAndKind_Kind
    NameAndKind_Kind (..),

    -- ** OutlierStats
    OutlierStats (..),
    newOutlierStats,

    -- ** Package
    Package (..),
    newPackage,

    -- ** ParDoInstruction
    ParDoInstruction (..),
    newParDoInstruction,

    -- ** ParDoInstruction_UserFn
    ParDoInstruction_UserFn (..),
    newParDoInstruction_UserFn,

    -- ** ParallelInstruction
    ParallelInstruction (..),
    newParallelInstruction,

    -- ** Parameter
    Parameter (..),
    newParameter,

    -- ** ParameterMetadata
    ParameterMetadata (..),
    newParameterMetadata,

    -- ** ParameterMetadata_CustomMetadata
    ParameterMetadata_CustomMetadata (..),
    newParameterMetadata_CustomMetadata,

    -- ** ParameterMetadata_ParamType
    ParameterMetadata_ParamType (..),

    -- ** ParameterMetadataEnumOption
    ParameterMetadataEnumOption (..),
    newParameterMetadataEnumOption,

    -- ** PartialGroupByKeyInstruction
    PartialGroupByKeyInstruction (..),
    newPartialGroupByKeyInstruction,

    -- ** PartialGroupByKeyInstruction_InputElementCodec
    PartialGroupByKeyInstruction_InputElementCodec (..),
    newPartialGroupByKeyInstruction_InputElementCodec,

    -- ** PartialGroupByKeyInstruction_ValueCombiningFn
    PartialGroupByKeyInstruction_ValueCombiningFn (..),
    newPartialGroupByKeyInstruction_ValueCombiningFn,

    -- ** PerStepNamespaceMetrics
    PerStepNamespaceMetrics (..),
    newPerStepNamespaceMetrics,

    -- ** PerWorkerMetrics
    PerWorkerMetrics (..),
    newPerWorkerMetrics,

    -- ** PipelineDescription
    PipelineDescription (..),
    newPipelineDescription,

    -- ** Point
    Point (..),
    newPoint,

    -- ** Position
    Position (..),
    newPosition,

    -- ** ProgressTimeseries
    ProgressTimeseries (..),
    newProgressTimeseries,

    -- ** PubSubIODetails
    PubSubIODetails (..),
    newPubSubIODetails,

    -- ** PubsubLocation
    PubsubLocation (..),
    newPubsubLocation,

    -- ** PubsubSnapshotMetadata
    PubsubSnapshotMetadata (..),
    newPubsubSnapshotMetadata,

    -- ** ReadInstruction
    ReadInstruction (..),
    newReadInstruction,

    -- ** ReportWorkItemStatusRequest
    ReportWorkItemStatusRequest (..),
    newReportWorkItemStatusRequest,

    -- ** ReportWorkItemStatusRequest_UnifiedWorkerRequest
    ReportWorkItemStatusRequest_UnifiedWorkerRequest (..),
    newReportWorkItemStatusRequest_UnifiedWorkerRequest,

    -- ** ReportWorkItemStatusResponse
    ReportWorkItemStatusResponse (..),
    newReportWorkItemStatusResponse,

    -- ** ReportWorkItemStatusResponse_UnifiedWorkerResponse
    ReportWorkItemStatusResponse_UnifiedWorkerResponse (..),
    newReportWorkItemStatusResponse_UnifiedWorkerResponse,

    -- ** ReportedParallelism
    ReportedParallelism (..),
    newReportedParallelism,

    -- ** ResourceUtilizationReport
    ResourceUtilizationReport (..),
    newResourceUtilizationReport,

    -- ** ResourceUtilizationReport_Containers
    ResourceUtilizationReport_Containers (..),
    newResourceUtilizationReport_Containers,

    -- ** ResourceUtilizationReportResponse
    ResourceUtilizationReportResponse (..),
    newResourceUtilizationReportResponse,

    -- ** RuntimeEnvironment
    RuntimeEnvironment (..),
    newRuntimeEnvironment,

    -- ** RuntimeEnvironment_AdditionalUserLabels
    RuntimeEnvironment_AdditionalUserLabels (..),
    newRuntimeEnvironment_AdditionalUserLabels,

    -- ** RuntimeEnvironment_IpConfiguration
    RuntimeEnvironment_IpConfiguration (..),

    -- ** RuntimeEnvironment_StreamingMode
    RuntimeEnvironment_StreamingMode (..),

    -- ** RuntimeMetadata
    RuntimeMetadata (..),
    newRuntimeMetadata,

    -- ** RuntimeUpdatableParams
    RuntimeUpdatableParams (..),
    newRuntimeUpdatableParams,

    -- ** SDKInfo
    SDKInfo (..),
    newSDKInfo,

    -- ** SDKInfo_Language
    SDKInfo_Language (..),

    -- ** SdkBug
    SdkBug (..),
    newSdkBug,

    -- ** SdkBug_Severity
    SdkBug_Severity (..),

    -- ** SdkBug_Type
    SdkBug_Type (..),

    -- ** SdkHarnessContainerImage
    SdkHarnessContainerImage (..),
    newSdkHarnessContainerImage,

    -- ** SdkVersion
    SdkVersion (..),
    newSdkVersion,

    -- ** SdkVersion_SdkSupportStatus
    SdkVersion_SdkSupportStatus (..),

    -- ** SendDebugCaptureRequest
    SendDebugCaptureRequest (..),
    newSendDebugCaptureRequest,

    -- ** SendDebugCaptureRequest_DataFormat
    SendDebugCaptureRequest_DataFormat (..),

    -- ** SendDebugCaptureResponse
    SendDebugCaptureResponse (..),
    newSendDebugCaptureResponse,

    -- ** SendWorkerMessagesRequest
    SendWorkerMessagesRequest (..),
    newSendWorkerMessagesRequest,

    -- ** SendWorkerMessagesResponse
    SendWorkerMessagesResponse (..),
    newSendWorkerMessagesResponse,

    -- ** SeqMapTask
    SeqMapTask (..),
    newSeqMapTask,

    -- ** SeqMapTask_UserFn
    SeqMapTask_UserFn (..),
    newSeqMapTask_UserFn,

    -- ** SeqMapTaskOutputInfo
    SeqMapTaskOutputInfo (..),
    newSeqMapTaskOutputInfo,

    -- ** ServiceResources
    ServiceResources (..),
    newServiceResources,

    -- ** ShellTask
    ShellTask (..),
    newShellTask,

    -- ** SideInputInfo
    SideInputInfo (..),
    newSideInputInfo,

    -- ** SideInputInfo_Kind
    SideInputInfo_Kind (..),
    newSideInputInfo_Kind,

    -- ** Sink
    Sink (..),
    newSink,

    -- ** Sink_Codec
    Sink_Codec (..),
    newSink_Codec,

    -- ** Sink_Spec
    Sink_Spec (..),
    newSink_Spec,

    -- ** Snapshot
    Snapshot (..),
    newSnapshot,

    -- ** Snapshot_State
    Snapshot_State (..),

    -- ** SnapshotJobRequest
    SnapshotJobRequest (..),
    newSnapshotJobRequest,

    -- ** Source
    Source (..),
    newSource,

    -- ** Source_BaseSpecsItem
    Source_BaseSpecsItem (..),
    newSource_BaseSpecsItem,

    -- ** Source_Codec
    Source_Codec (..),
    newSource_Codec,

    -- ** Source_Spec
    Source_Spec (..),
    newSource_Spec,

    -- ** SourceFork
    SourceFork (..),
    newSourceFork,

    -- ** SourceGetMetadataRequest
    SourceGetMetadataRequest (..),
    newSourceGetMetadataRequest,

    -- ** SourceGetMetadataResponse
    SourceGetMetadataResponse (..),
    newSourceGetMetadataResponse,

    -- ** SourceMetadata
    SourceMetadata (..),
    newSourceMetadata,

    -- ** SourceOperationRequest
    SourceOperationRequest (..),
    newSourceOperationRequest,

    -- ** SourceOperationResponse
    SourceOperationResponse (..),
    newSourceOperationResponse,

    -- ** SourceSplitOptions
    SourceSplitOptions (..),
    newSourceSplitOptions,

    -- ** SourceSplitRequest
    SourceSplitRequest (..),
    newSourceSplitRequest,

    -- ** SourceSplitResponse
    SourceSplitResponse (..),
    newSourceSplitResponse,

    -- ** SourceSplitResponse_Outcome
    SourceSplitResponse_Outcome (..),

    -- ** SourceSplitShard
    SourceSplitShard (..),
    newSourceSplitShard,

    -- ** SourceSplitShard_DerivationMode
    SourceSplitShard_DerivationMode (..),

    -- ** SpannerIODetails
    SpannerIODetails (..),
    newSpannerIODetails,

    -- ** SplitInt64
    SplitInt64 (..),
    newSplitInt64,

    -- ** StageExecutionDetails
    StageExecutionDetails (..),
    newStageExecutionDetails,

    -- ** StageSource
    StageSource (..),
    newStageSource,

    -- ** StageSummary
    StageSummary (..),
    newStageSummary,

    -- ** StageSummary_State
    StageSummary_State (..),

    -- ** StateFamilyConfig
    StateFamilyConfig (..),
    newStateFamilyConfig,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Step
    Step (..),
    newStep,

    -- ** Step_Properties
    Step_Properties (..),
    newStep_Properties,

    -- ** Straggler
    Straggler (..),
    newStraggler,

    -- ** StragglerDebuggingInfo
    StragglerDebuggingInfo (..),
    newStragglerDebuggingInfo,

    -- ** StragglerInfo
    StragglerInfo (..),
    newStragglerInfo,

    -- ** StragglerInfo_Causes
    StragglerInfo_Causes (..),
    newStragglerInfo_Causes,

    -- ** StragglerSummary
    StragglerSummary (..),
    newStragglerSummary,

    -- ** StragglerSummary_StragglerCauseCount
    StragglerSummary_StragglerCauseCount (..),
    newStragglerSummary_StragglerCauseCount,

    -- ** StreamLocation
    StreamLocation (..),
    newStreamLocation,

    -- ** StreamingApplianceSnapshotConfig
    StreamingApplianceSnapshotConfig (..),
    newStreamingApplianceSnapshotConfig,

    -- ** StreamingComputationConfig
    StreamingComputationConfig (..),
    newStreamingComputationConfig,

    -- ** StreamingComputationConfig_TransformUserNameToStateFamily
    StreamingComputationConfig_TransformUserNameToStateFamily (..),
    newStreamingComputationConfig_TransformUserNameToStateFamily,

    -- ** StreamingComputationRanges
    StreamingComputationRanges (..),
    newStreamingComputationRanges,

    -- ** StreamingComputationTask
    StreamingComputationTask (..),
    newStreamingComputationTask,

    -- ** StreamingComputationTask_TaskType
    StreamingComputationTask_TaskType (..),

    -- ** StreamingConfigTask
    StreamingConfigTask (..),
    newStreamingConfigTask,

    -- ** StreamingConfigTask_UserStepToStateFamilyNameMap
    StreamingConfigTask_UserStepToStateFamilyNameMap (..),
    newStreamingConfigTask_UserStepToStateFamilyNameMap,

    -- ** StreamingOperationalLimits
    StreamingOperationalLimits (..),
    newStreamingOperationalLimits,

    -- ** StreamingScalingReport
    StreamingScalingReport (..),
    newStreamingScalingReport,

    -- ** StreamingScalingReportResponse
    StreamingScalingReportResponse (..),
    newStreamingScalingReportResponse,

    -- ** StreamingSetupTask
    StreamingSetupTask (..),
    newStreamingSetupTask,

    -- ** StreamingSideInputLocation
    StreamingSideInputLocation (..),
    newStreamingSideInputLocation,

    -- ** StreamingStageLocation
    StreamingStageLocation (..),
    newStreamingStageLocation,

    -- ** StreamingStragglerInfo
    StreamingStragglerInfo (..),
    newStreamingStragglerInfo,

    -- ** StringList
    StringList (..),
    newStringList,

    -- ** StructuredMessage
    StructuredMessage (..),
    newStructuredMessage,

    -- ** TaskRunnerSettings
    TaskRunnerSettings (..),
    newTaskRunnerSettings,

    -- ** TemplateMetadata
    TemplateMetadata (..),
    newTemplateMetadata,

    -- ** TopologyConfig
    TopologyConfig (..),
    newTopologyConfig,

    -- ** TopologyConfig_UserStageToComputationNameMap
    TopologyConfig_UserStageToComputationNameMap (..),
    newTopologyConfig_UserStageToComputationNameMap,

    -- ** TransformSummary
    TransformSummary (..),
    newTransformSummary,

    -- ** TransformSummary_Kind
    TransformSummary_Kind (..),

    -- ** WorkItem
    WorkItem (..),
    newWorkItem,

    -- ** WorkItemDetails
    WorkItemDetails (..),
    newWorkItemDetails,

    -- ** WorkItemDetails_State
    WorkItemDetails_State (..),

    -- ** WorkItemServiceState
    WorkItemServiceState (..),
    newWorkItemServiceState,

    -- ** WorkItemServiceState_HarnessData
    WorkItemServiceState_HarnessData (..),
    newWorkItemServiceState_HarnessData,

    -- ** WorkItemStatus
    WorkItemStatus (..),
    newWorkItemStatus,

    -- ** WorkerDetails
    WorkerDetails (..),
    newWorkerDetails,

    -- ** WorkerHealthReport
    WorkerHealthReport (..),
    newWorkerHealthReport,

    -- ** WorkerHealthReport_PodsItem
    WorkerHealthReport_PodsItem (..),
    newWorkerHealthReport_PodsItem,

    -- ** WorkerHealthReportResponse
    WorkerHealthReportResponse (..),
    newWorkerHealthReportResponse,

    -- ** WorkerLifecycleEvent
    WorkerLifecycleEvent (..),
    newWorkerLifecycleEvent,

    -- ** WorkerLifecycleEvent_Event
    WorkerLifecycleEvent_Event (..),

    -- ** WorkerLifecycleEvent_Metadata
    WorkerLifecycleEvent_Metadata (..),
    newWorkerLifecycleEvent_Metadata,

    -- ** WorkerMessage
    WorkerMessage (..),
    newWorkerMessage,

    -- ** WorkerMessage_Labels
    WorkerMessage_Labels (..),
    newWorkerMessage_Labels,

    -- ** WorkerMessageCode
    WorkerMessageCode (..),
    newWorkerMessageCode,

    -- ** WorkerMessageCode_Parameters
    WorkerMessageCode_Parameters (..),
    newWorkerMessageCode_Parameters,

    -- ** WorkerMessageResponse
    WorkerMessageResponse (..),
    newWorkerMessageResponse,

    -- ** WorkerPool
    WorkerPool (..),
    newWorkerPool,

    -- ** WorkerPool_DefaultPackageSet
    WorkerPool_DefaultPackageSet (..),

    -- ** WorkerPool_IpConfiguration
    WorkerPool_IpConfiguration (..),

    -- ** WorkerPool_Metadata
    WorkerPool_Metadata (..),
    newWorkerPool_Metadata,

    -- ** WorkerPool_PoolArgs
    WorkerPool_PoolArgs (..),
    newWorkerPool_PoolArgs,

    -- ** WorkerPool_TeardownPolicy
    WorkerPool_TeardownPolicy (..),

    -- ** WorkerSettings
    WorkerSettings (..),
    newWorkerSettings,

    -- ** WorkerShutdownNotice
    WorkerShutdownNotice (..),
    newWorkerShutdownNotice,

    -- ** WorkerShutdownNoticeResponse
    WorkerShutdownNoticeResponse (..),
    newWorkerShutdownNoticeResponse,

    -- ** WorkerThreadScalingReport
    WorkerThreadScalingReport (..),
    newWorkerThreadScalingReport,

    -- ** WorkerThreadScalingReportResponse
    WorkerThreadScalingReportResponse (..),
    newWorkerThreadScalingReportResponse,

    -- ** WriteInstruction
    WriteInstruction (..),
    newWriteInstruction,

    -- ** ProjectsJobsAggregatedFilter
    ProjectsJobsAggregatedFilter (..),

    -- ** ProjectsJobsAggregatedView
    ProjectsJobsAggregatedView (..),

    -- ** ProjectsJobsCreateView
    ProjectsJobsCreateView (..),

    -- ** ProjectsJobsGetView
    ProjectsJobsGetView (..),

    -- ** ProjectsJobsListFilter
    ProjectsJobsListFilter (..),

    -- ** ProjectsJobsListView
    ProjectsJobsListView (..),

    -- ** ProjectsJobsMessagesListMinimumImportance
    ProjectsJobsMessagesListMinimumImportance (..),

    -- ** ProjectsLocationsJobsCreateView
    ProjectsLocationsJobsCreateView (..),

    -- ** ProjectsLocationsJobsGetView
    ProjectsLocationsJobsGetView (..),

    -- ** ProjectsLocationsJobsListFilter
    ProjectsLocationsJobsListFilter (..),

    -- ** ProjectsLocationsJobsListView
    ProjectsLocationsJobsListView (..),

    -- ** ProjectsLocationsJobsMessagesListMinimumImportance
    ProjectsLocationsJobsMessagesListMinimumImportance (..),

    -- ** ProjectsLocationsTemplatesGetView
    ProjectsLocationsTemplatesGetView (..),

    -- ** ProjectsTemplatesGetView
    ProjectsTemplatesGetView (..),
  )
where

import Gogol.Dataflow.Internal.Product
import Gogol.Dataflow.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1b3@ of the Dataflow API. This contains the host and root path used as a starting point for constructing service requests.
dataflowService :: Core.ServiceConfig
dataflowService =
  Core.defaultService
    (Core.ServiceId "dataflow:v1b3")
    "dataflow.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View and manage your Google Compute Engine resources
type Compute'FullControl =
  "https://www.googleapis.com/auth/compute"
