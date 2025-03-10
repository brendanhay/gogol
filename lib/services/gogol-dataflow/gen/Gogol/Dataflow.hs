{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Dataflow
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Google Cloud Dataflow projects on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference>
module Gogol.Dataflow
  ( -- * Configuration
    dataflowService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Compute'FullControl,

    -- * Resources

    -- ** dataflow.projects.deleteSnapshots
    DataflowProjectsDeleteSnapshotsResource,
    DataflowProjectsDeleteSnapshots (..),
    newDataflowProjectsDeleteSnapshots,

    -- ** dataflow.projects.jobs.aggregated
    DataflowProjectsJobsAggregatedResource,
    DataflowProjectsJobsAggregated (..),
    newDataflowProjectsJobsAggregated,

    -- ** dataflow.projects.jobs.create
    DataflowProjectsJobsCreateResource,
    DataflowProjectsJobsCreate (..),
    newDataflowProjectsJobsCreate,

    -- ** dataflow.projects.jobs.debug.getConfig
    DataflowProjectsJobsDebugGetConfigResource,
    DataflowProjectsJobsDebugGetConfig (..),
    newDataflowProjectsJobsDebugGetConfig,

    -- ** dataflow.projects.jobs.debug.sendCapture
    DataflowProjectsJobsDebugSendCaptureResource,
    DataflowProjectsJobsDebugSendCapture (..),
    newDataflowProjectsJobsDebugSendCapture,

    -- ** dataflow.projects.jobs.get
    DataflowProjectsJobsGetResource,
    DataflowProjectsJobsGet (..),
    newDataflowProjectsJobsGet,

    -- ** dataflow.projects.jobs.getMetrics
    DataflowProjectsJobsGetMetricsResource,
    DataflowProjectsJobsGetMetrics (..),
    newDataflowProjectsJobsGetMetrics,

    -- ** dataflow.projects.jobs.list
    DataflowProjectsJobsListResource,
    DataflowProjectsJobsList (..),
    newDataflowProjectsJobsList,

    -- ** dataflow.projects.jobs.messages.list
    DataflowProjectsJobsMessagesListResource,
    DataflowProjectsJobsMessagesList (..),
    newDataflowProjectsJobsMessagesList,

    -- ** dataflow.projects.jobs.snapshot
    DataflowProjectsJobsSnapshotResource,
    DataflowProjectsJobsSnapshot (..),
    newDataflowProjectsJobsSnapshot,

    -- ** dataflow.projects.jobs.update
    DataflowProjectsJobsUpdateResource,
    DataflowProjectsJobsUpdate (..),
    newDataflowProjectsJobsUpdate,

    -- ** dataflow.projects.jobs.workItems.lease
    DataflowProjectsJobsWorkItemsLeaseResource,
    DataflowProjectsJobsWorkItemsLease (..),
    newDataflowProjectsJobsWorkItemsLease,

    -- ** dataflow.projects.jobs.workItems.reportStatus
    DataflowProjectsJobsWorkItemsReportStatusResource,
    DataflowProjectsJobsWorkItemsReportStatus (..),
    newDataflowProjectsJobsWorkItemsReportStatus,

    -- ** dataflow.projects.locations.flexTemplates.launch
    DataflowProjectsLocationsFlexTemplatesLaunchResource,
    DataflowProjectsLocationsFlexTemplatesLaunch (..),
    newDataflowProjectsLocationsFlexTemplatesLaunch,

    -- ** dataflow.projects.locations.jobs.create
    DataflowProjectsLocationsJobsCreateResource,
    DataflowProjectsLocationsJobsCreate (..),
    newDataflowProjectsLocationsJobsCreate,

    -- ** dataflow.projects.locations.jobs.debug.getConfig
    DataflowProjectsLocationsJobsDebugGetConfigResource,
    DataflowProjectsLocationsJobsDebugGetConfig (..),
    newDataflowProjectsLocationsJobsDebugGetConfig,

    -- ** dataflow.projects.locations.jobs.debug.sendCapture
    DataflowProjectsLocationsJobsDebugSendCaptureResource,
    DataflowProjectsLocationsJobsDebugSendCapture (..),
    newDataflowProjectsLocationsJobsDebugSendCapture,

    -- ** dataflow.projects.locations.jobs.get
    DataflowProjectsLocationsJobsGetResource,
    DataflowProjectsLocationsJobsGet (..),
    newDataflowProjectsLocationsJobsGet,

    -- ** dataflow.projects.locations.jobs.getExecutionDetails
    DataflowProjectsLocationsJobsGetExecutionDetailsResource,
    DataflowProjectsLocationsJobsGetExecutionDetails (..),
    newDataflowProjectsLocationsJobsGetExecutionDetails,

    -- ** dataflow.projects.locations.jobs.getMetrics
    DataflowProjectsLocationsJobsGetMetricsResource,
    DataflowProjectsLocationsJobsGetMetrics (..),
    newDataflowProjectsLocationsJobsGetMetrics,

    -- ** dataflow.projects.locations.jobs.list
    DataflowProjectsLocationsJobsListResource,
    DataflowProjectsLocationsJobsList (..),
    newDataflowProjectsLocationsJobsList,

    -- ** dataflow.projects.locations.jobs.messages.list
    DataflowProjectsLocationsJobsMessagesListResource,
    DataflowProjectsLocationsJobsMessagesList (..),
    newDataflowProjectsLocationsJobsMessagesList,

    -- ** dataflow.projects.locations.jobs.snapshot
    DataflowProjectsLocationsJobsSnapshotResource,
    DataflowProjectsLocationsJobsSnapshot (..),
    newDataflowProjectsLocationsJobsSnapshot,

    -- ** dataflow.projects.locations.jobs.snapshots.list
    DataflowProjectsLocationsJobsSnapshotsListResource,
    DataflowProjectsLocationsJobsSnapshotsList (..),
    newDataflowProjectsLocationsJobsSnapshotsList,

    -- ** dataflow.projects.locations.jobs.stages.getExecutionDetails
    DataflowProjectsLocationsJobsStagesGetExecutionDetailsResource,
    DataflowProjectsLocationsJobsStagesGetExecutionDetails (..),
    newDataflowProjectsLocationsJobsStagesGetExecutionDetails,

    -- ** dataflow.projects.locations.jobs.update
    DataflowProjectsLocationsJobsUpdateResource,
    DataflowProjectsLocationsJobsUpdate (..),
    newDataflowProjectsLocationsJobsUpdate,

    -- ** dataflow.projects.locations.jobs.workItems.lease
    DataflowProjectsLocationsJobsWorkItemsLeaseResource,
    DataflowProjectsLocationsJobsWorkItemsLease (..),
    newDataflowProjectsLocationsJobsWorkItemsLease,

    -- ** dataflow.projects.locations.jobs.workItems.reportStatus
    DataflowProjectsLocationsJobsWorkItemsReportStatusResource,
    DataflowProjectsLocationsJobsWorkItemsReportStatus (..),
    newDataflowProjectsLocationsJobsWorkItemsReportStatus,

    -- ** dataflow.projects.locations.snapshots.delete
    DataflowProjectsLocationsSnapshotsDeleteResource,
    DataflowProjectsLocationsSnapshotsDelete (..),
    newDataflowProjectsLocationsSnapshotsDelete,

    -- ** dataflow.projects.locations.snapshots.get
    DataflowProjectsLocationsSnapshotsGetResource,
    DataflowProjectsLocationsSnapshotsGet (..),
    newDataflowProjectsLocationsSnapshotsGet,

    -- ** dataflow.projects.locations.snapshots.list
    DataflowProjectsLocationsSnapshotsListResource,
    DataflowProjectsLocationsSnapshotsList (..),
    newDataflowProjectsLocationsSnapshotsList,

    -- ** dataflow.projects.locations.templates.create
    DataflowProjectsLocationsTemplatesCreateResource,
    DataflowProjectsLocationsTemplatesCreate (..),
    newDataflowProjectsLocationsTemplatesCreate,

    -- ** dataflow.projects.locations.templates.get
    DataflowProjectsLocationsTemplatesGetResource,
    DataflowProjectsLocationsTemplatesGet (..),
    newDataflowProjectsLocationsTemplatesGet,

    -- ** dataflow.projects.locations.templates.launch
    DataflowProjectsLocationsTemplatesLaunchResource,
    DataflowProjectsLocationsTemplatesLaunch (..),
    newDataflowProjectsLocationsTemplatesLaunch,

    -- ** dataflow.projects.locations.workerMessages
    DataflowProjectsLocationsWorkerMessagesResource,
    DataflowProjectsLocationsWorkerMessages (..),
    newDataflowProjectsLocationsWorkerMessages,

    -- ** dataflow.projects.snapshots.get
    DataflowProjectsSnapshotsGetResource,
    DataflowProjectsSnapshotsGet (..),
    newDataflowProjectsSnapshotsGet,

    -- ** dataflow.projects.snapshots.list
    DataflowProjectsSnapshotsListResource,
    DataflowProjectsSnapshotsList (..),
    newDataflowProjectsSnapshotsList,

    -- ** dataflow.projects.templates.create
    DataflowProjectsTemplatesCreateResource,
    DataflowProjectsTemplatesCreate (..),
    newDataflowProjectsTemplatesCreate,

    -- ** dataflow.projects.templates.get
    DataflowProjectsTemplatesGetResource,
    DataflowProjectsTemplatesGet (..),
    newDataflowProjectsTemplatesGet,

    -- ** dataflow.projects.templates.launch
    DataflowProjectsTemplatesLaunchResource,
    DataflowProjectsTemplatesLaunch (..),
    newDataflowProjectsTemplatesLaunch,

    -- ** dataflow.projects.workerMessages
    DataflowProjectsWorkerMessagesResource,
    DataflowProjectsWorkerMessages (..),
    newDataflowProjectsWorkerMessages,

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

import Gogol.Dataflow.Projects.DeleteSnapshots
import Gogol.Dataflow.Projects.Jobs.Aggregated
import Gogol.Dataflow.Projects.Jobs.Create
import Gogol.Dataflow.Projects.Jobs.Debug.GetConfig
import Gogol.Dataflow.Projects.Jobs.Debug.SendCapture
import Gogol.Dataflow.Projects.Jobs.Get
import Gogol.Dataflow.Projects.Jobs.GetMetrics
import Gogol.Dataflow.Projects.Jobs.List
import Gogol.Dataflow.Projects.Jobs.Messages.List
import Gogol.Dataflow.Projects.Jobs.Snapshot
import Gogol.Dataflow.Projects.Jobs.Update
import Gogol.Dataflow.Projects.Jobs.WorkItems.Lease
import Gogol.Dataflow.Projects.Jobs.WorkItems.ReportStatus
import Gogol.Dataflow.Projects.Locations.FlexTemplates.Launch
import Gogol.Dataflow.Projects.Locations.Jobs.Create
import Gogol.Dataflow.Projects.Locations.Jobs.Debug.GetConfig
import Gogol.Dataflow.Projects.Locations.Jobs.Debug.SendCapture
import Gogol.Dataflow.Projects.Locations.Jobs.Get
import Gogol.Dataflow.Projects.Locations.Jobs.GetExecutionDetails
import Gogol.Dataflow.Projects.Locations.Jobs.GetMetrics
import Gogol.Dataflow.Projects.Locations.Jobs.List
import Gogol.Dataflow.Projects.Locations.Jobs.Messages.List
import Gogol.Dataflow.Projects.Locations.Jobs.Snapshot
import Gogol.Dataflow.Projects.Locations.Jobs.Snapshots.List
import Gogol.Dataflow.Projects.Locations.Jobs.Stages.GetExecutionDetails
import Gogol.Dataflow.Projects.Locations.Jobs.Update
import Gogol.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
import Gogol.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus
import Gogol.Dataflow.Projects.Locations.Snapshots.Delete
import Gogol.Dataflow.Projects.Locations.Snapshots.Get
import Gogol.Dataflow.Projects.Locations.Snapshots.List
import Gogol.Dataflow.Projects.Locations.Templates.Create
import Gogol.Dataflow.Projects.Locations.Templates.Get
import Gogol.Dataflow.Projects.Locations.Templates.Launch
import Gogol.Dataflow.Projects.Locations.WorkerMessages
import Gogol.Dataflow.Projects.Snapshots.Get
import Gogol.Dataflow.Projects.Snapshots.List
import Gogol.Dataflow.Projects.Templates.Create
import Gogol.Dataflow.Projects.Templates.Get
import Gogol.Dataflow.Projects.Templates.Launch
import Gogol.Dataflow.Projects.WorkerMessages
import Gogol.Dataflow.Types
