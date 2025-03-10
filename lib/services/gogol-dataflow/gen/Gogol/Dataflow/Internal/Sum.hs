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
-- Module      : Gogol.Dataflow.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataflow.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AutoscalingEvent_EventType
    AutoscalingEvent_EventType
      ( AutoscalingEvent_EventType_TYPEUNKNOWN,
        AutoscalingEvent_EventType_TARGETNUMWORKERSCHANGED,
        AutoscalingEvent_EventType_CURRENTNUMWORKERSCHANGED,
        AutoscalingEvent_EventType_ACTUATIONFAILURE,
        AutoscalingEvent_EventType_NOCHANGE,
        ..
      ),

    -- * AutoscalingSettings_Algorithm
    AutoscalingSettings_Algorithm
      ( AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMUNKNOWN,
        AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMNONE,
        AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMBASIC,
        ..
      ),

    -- * CounterMetadata_Kind
    CounterMetadata_Kind
      ( CounterMetadata_Kind_Invalid,
        CounterMetadata_Kind_Sum,
        CounterMetadata_Kind_Max,
        CounterMetadata_Kind_Min,
        CounterMetadata_Kind_Mean,
        CounterMetadata_Kind_OR,
        CounterMetadata_Kind_And,
        CounterMetadata_Kind_Set,
        CounterMetadata_Kind_Distribution,
        CounterMetadata_Kind_LATESTVALUE,
        ..
      ),

    -- * CounterMetadata_StandardUnits
    CounterMetadata_StandardUnits
      ( CounterMetadata_StandardUnits_Bytes,
        CounterMetadata_StandardUnits_BYTESPERSEC,
        CounterMetadata_StandardUnits_Milliseconds,
        CounterMetadata_StandardUnits_Microseconds,
        CounterMetadata_StandardUnits_Nanoseconds,
        CounterMetadata_StandardUnits_TIMESTAMPMSEC,
        CounterMetadata_StandardUnits_TIMESTAMPUSEC,
        CounterMetadata_StandardUnits_TIMESTAMPNSEC,
        ..
      ),

    -- * CounterStructuredName_Origin
    CounterStructuredName_Origin
      ( CounterStructuredName_Origin_System,
        CounterStructuredName_Origin_User,
        ..
      ),

    -- * CounterStructuredName_Portion
    CounterStructuredName_Portion
      ( CounterStructuredName_Portion_All,
        CounterStructuredName_Portion_Key,
        CounterStructuredName_Portion_Value,
        ..
      ),

    -- * DataSamplingConfig_BehaviorsItem
    DataSamplingConfig_BehaviorsItem
      ( DataSamplingConfig_BehaviorsItem_DATASAMPLINGBEHAVIORUNSPECIFIED,
        DataSamplingConfig_BehaviorsItem_Disabled,
        DataSamplingConfig_BehaviorsItem_ALWAYSON,
        DataSamplingConfig_BehaviorsItem_Exceptions,
        ..
      ),

    -- * DerivedSource_DerivationMode
    DerivedSource_DerivationMode
      ( DerivedSource_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN,
        DerivedSource_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT,
        DerivedSource_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT,
        DerivedSource_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT,
        ..
      ),

    -- * Environment_FlexResourceSchedulingGoal
    Environment_FlexResourceSchedulingGoal
      ( Environment_FlexResourceSchedulingGoal_FLEXRSUNSPECIFIED,
        Environment_FlexResourceSchedulingGoal_FLEXRSSPEEDOPTIMIZED,
        Environment_FlexResourceSchedulingGoal_FLEXRSCOSTOPTIMIZED,
        ..
      ),

    -- * Environment_ShuffleMode
    Environment_ShuffleMode
      ( Environment_ShuffleMode_SHUFFLEMODEUNSPECIFIED,
        Environment_ShuffleMode_VMBASED,
        Environment_ShuffleMode_SERVICEBASED,
        ..
      ),

    -- * Environment_StreamingMode
    Environment_StreamingMode
      ( Environment_StreamingMode_STREAMINGMODEUNSPECIFIED,
        Environment_StreamingMode_STREAMINGMODEEXACTLYONCE,
        Environment_StreamingMode_STREAMINGMODEATLEASTONCE,
        ..
      ),

    -- * ExecutionStageState_ExecutionStageState
    ExecutionStageState_ExecutionStageState
      ( ExecutionStageState_ExecutionStageState_JOBSTATEUNKNOWN,
        ExecutionStageState_ExecutionStageState_JOBSTATESTOPPED,
        ExecutionStageState_ExecutionStageState_JOBSTATERUNNING,
        ExecutionStageState_ExecutionStageState_JOBSTATEDONE,
        ExecutionStageState_ExecutionStageState_JOBSTATEFAILED,
        ExecutionStageState_ExecutionStageState_JOBSTATECANCELLED,
        ExecutionStageState_ExecutionStageState_JOBSTATEUPDATED,
        ExecutionStageState_ExecutionStageState_JOBSTATEDRAINING,
        ExecutionStageState_ExecutionStageState_JOBSTATEDRAINED,
        ExecutionStageState_ExecutionStageState_JOBSTATEPENDING,
        ExecutionStageState_ExecutionStageState_JOBSTATECANCELLING,
        ExecutionStageState_ExecutionStageState_JOBSTATEQUEUED,
        ExecutionStageState_ExecutionStageState_JOBSTATERESOURCECLEANINGUP,
        ..
      ),

    -- * ExecutionStageSummary_Kind
    ExecutionStageSummary_Kind
      ( ExecutionStageSummary_Kind_UNKNOWNKIND,
        ExecutionStageSummary_Kind_PARDOKIND,
        ExecutionStageSummary_Kind_GROUPBYKEYKIND,
        ExecutionStageSummary_Kind_FLATTENKIND,
        ExecutionStageSummary_Kind_READKIND,
        ExecutionStageSummary_Kind_WRITEKIND,
        ExecutionStageSummary_Kind_CONSTANTKIND,
        ExecutionStageSummary_Kind_SINGLETONKIND,
        ExecutionStageSummary_Kind_SHUFFLEKIND,
        ..
      ),

    -- * FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm
    FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm
      ( FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMUNKNOWN,
        FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMNONE,
        FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMBASIC,
        ..
      ),

    -- * FlexTemplateRuntimeEnvironment_FlexrsGoal
    FlexTemplateRuntimeEnvironment_FlexrsGoal
      ( FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSUNSPECIFIED,
        FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSSPEEDOPTIMIZED,
        FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSCOSTOPTIMIZED,
        ..
      ),

    -- * FlexTemplateRuntimeEnvironment_IpConfiguration
    FlexTemplateRuntimeEnvironment_IpConfiguration
      ( FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED,
        FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC,
        FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE,
        ..
      ),

    -- * FlexTemplateRuntimeEnvironment_StreamingMode
    FlexTemplateRuntimeEnvironment_StreamingMode
      ( FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED,
        FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE,
        FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE,
        ..
      ),

    -- * GetTemplateResponse_TemplateType
    GetTemplateResponse_TemplateType
      ( GetTemplateResponse_TemplateType_Unknown,
        GetTemplateResponse_TemplateType_Legacy,
        GetTemplateResponse_TemplateType_Flex,
        ..
      ),

    -- * Job_CurrentState
    Job_CurrentState
      ( Job_CurrentState_JOBSTATEUNKNOWN,
        Job_CurrentState_JOBSTATESTOPPED,
        Job_CurrentState_JOBSTATERUNNING,
        Job_CurrentState_JOBSTATEDONE,
        Job_CurrentState_JOBSTATEFAILED,
        Job_CurrentState_JOBSTATECANCELLED,
        Job_CurrentState_JOBSTATEUPDATED,
        Job_CurrentState_JOBSTATEDRAINING,
        Job_CurrentState_JOBSTATEDRAINED,
        Job_CurrentState_JOBSTATEPENDING,
        Job_CurrentState_JOBSTATECANCELLING,
        Job_CurrentState_JOBSTATEQUEUED,
        Job_CurrentState_JOBSTATERESOURCECLEANINGUP,
        ..
      ),

    -- * Job_RequestedState
    Job_RequestedState
      ( Job_RequestedState_JOBSTATEUNKNOWN,
        Job_RequestedState_JOBSTATESTOPPED,
        Job_RequestedState_JOBSTATERUNNING,
        Job_RequestedState_JOBSTATEDONE,
        Job_RequestedState_JOBSTATEFAILED,
        Job_RequestedState_JOBSTATECANCELLED,
        Job_RequestedState_JOBSTATEUPDATED,
        Job_RequestedState_JOBSTATEDRAINING,
        Job_RequestedState_JOBSTATEDRAINED,
        Job_RequestedState_JOBSTATEPENDING,
        Job_RequestedState_JOBSTATECANCELLING,
        Job_RequestedState_JOBSTATEQUEUED,
        Job_RequestedState_JOBSTATERESOURCECLEANINGUP,
        ..
      ),

    -- * Job_Type
    Job_Type
      ( Job_Type_JOBTYPEUNKNOWN,
        Job_Type_JOBTYPEBATCH,
        Job_Type_JOBTYPESTREAMING,
        ..
      ),

    -- * JobMessage_MessageImportance
    JobMessage_MessageImportance
      ( JobMessage_MessageImportance_JOBMESSAGEIMPORTANCEUNKNOWN,
        JobMessage_MessageImportance_JOBMESSAGEDEBUG,
        JobMessage_MessageImportance_JOBMESSAGEDETAILED,
        JobMessage_MessageImportance_JOBMESSAGEBASIC,
        JobMessage_MessageImportance_JOBMESSAGEWARNING,
        JobMessage_MessageImportance_JOBMESSAGEERROR,
        ..
      ),

    -- * NameAndKind_Kind
    NameAndKind_Kind
      ( NameAndKind_Kind_Invalid,
        NameAndKind_Kind_Sum,
        NameAndKind_Kind_Max,
        NameAndKind_Kind_Min,
        NameAndKind_Kind_Mean,
        NameAndKind_Kind_OR,
        NameAndKind_Kind_And,
        NameAndKind_Kind_Set,
        NameAndKind_Kind_Distribution,
        NameAndKind_Kind_LATESTVALUE,
        ..
      ),

    -- * ParameterMetadata_ParamType
    ParameterMetadata_ParamType
      ( ParameterMetadata_ParamType_Default,
        ParameterMetadata_ParamType_Text,
        ParameterMetadata_ParamType_GCSREADBUCKET,
        ParameterMetadata_ParamType_GCSWRITEBUCKET,
        ParameterMetadata_ParamType_GCSREADFILE,
        ParameterMetadata_ParamType_GCSWRITEFILE,
        ParameterMetadata_ParamType_GCSREADFOLDER,
        ParameterMetadata_ParamType_GCSWRITEFOLDER,
        ParameterMetadata_ParamType_PUBSUBTOPIC,
        ParameterMetadata_ParamType_PUBSUBSUBSCRIPTION,
        ParameterMetadata_ParamType_BIGQUERYTABLE,
        ParameterMetadata_ParamType_JAVASCRIPTUDFFILE,
        ParameterMetadata_ParamType_SERVICEACCOUNT,
        ParameterMetadata_ParamType_MACHINETYPE,
        ParameterMetadata_ParamType_KMSKEYNAME,
        ParameterMetadata_ParamType_WORKERREGION,
        ParameterMetadata_ParamType_WORKERZONE,
        ParameterMetadata_ParamType_Boolean,
        ParameterMetadata_ParamType_Enum',
        ParameterMetadata_ParamType_Number,
        ParameterMetadata_ParamType_KAFKATOPIC,
        ParameterMetadata_ParamType_KAFKAREADTOPIC,
        ParameterMetadata_ParamType_KAFKAWRITETOPIC,
        ..
      ),

    -- * RuntimeEnvironment_IpConfiguration
    RuntimeEnvironment_IpConfiguration
      ( RuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED,
        RuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC,
        RuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE,
        ..
      ),

    -- * RuntimeEnvironment_StreamingMode
    RuntimeEnvironment_StreamingMode
      ( RuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED,
        RuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE,
        RuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE,
        ..
      ),

    -- * SDKInfo_Language
    SDKInfo_Language
      ( SDKInfo_Language_Unknown,
        SDKInfo_Language_Java,
        SDKInfo_Language_Python,
        SDKInfo_Language_GO,
        SDKInfo_Language_Yaml,
        ..
      ),

    -- * SdkBug_Severity
    SdkBug_Severity
      ( SdkBug_Severity_SEVERITYUNSPECIFIED,
        SdkBug_Severity_Notice,
        SdkBug_Severity_Warning,
        SdkBug_Severity_Severe,
        ..
      ),

    -- * SdkBug_Type
    SdkBug_Type
      ( SdkBug_Type_TYPEUNSPECIFIED,
        SdkBug_Type_General,
        SdkBug_Type_Performance,
        SdkBug_Type_Dataloss,
        ..
      ),

    -- * SdkVersion_SdkSupportStatus
    SdkVersion_SdkSupportStatus
      ( SdkVersion_SdkSupportStatus_Unknown,
        SdkVersion_SdkSupportStatus_Supported,
        SdkVersion_SdkSupportStatus_Stale,
        SdkVersion_SdkSupportStatus_Deprecated,
        SdkVersion_SdkSupportStatus_Unsupported,
        ..
      ),

    -- * SendDebugCaptureRequest_DataFormat
    SendDebugCaptureRequest_DataFormat
      ( SendDebugCaptureRequest_DataFormat_DATAFORMATUNSPECIFIED,
        SendDebugCaptureRequest_DataFormat_Raw,
        SendDebugCaptureRequest_DataFormat_Json,
        SendDebugCaptureRequest_DataFormat_Zlib,
        SendDebugCaptureRequest_DataFormat_Brotli,
        ..
      ),

    -- * Snapshot_State
    Snapshot_State
      ( Snapshot_State_UNKNOWNSNAPSHOTSTATE,
        Snapshot_State_Pending,
        Snapshot_State_Running,
        Snapshot_State_Ready,
        Snapshot_State_Failed,
        Snapshot_State_Deleted,
        ..
      ),

    -- * SourceSplitResponse_Outcome
    SourceSplitResponse_Outcome
      ( SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUNKNOWN,
        SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUSECURRENT,
        SourceSplitResponse_Outcome_SOURCESPLITOUTCOMESPLITTINGHAPPENED,
        ..
      ),

    -- * SourceSplitShard_DerivationMode
    SourceSplitShard_DerivationMode
      ( SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN,
        SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT,
        SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT,
        SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT,
        ..
      ),

    -- * StageSummary_State
    StageSummary_State
      ( StageSummary_State_EXECUTIONSTATEUNKNOWN,
        StageSummary_State_EXECUTIONSTATENOTSTARTED,
        StageSummary_State_EXECUTIONSTATERUNNING,
        StageSummary_State_EXECUTIONSTATESUCCEEDED,
        StageSummary_State_EXECUTIONSTATEFAILED,
        StageSummary_State_EXECUTIONSTATECANCELLED,
        ..
      ),

    -- * StreamingComputationTask_TaskType
    StreamingComputationTask_TaskType
      ( StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKUNKNOWN,
        StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTOP,
        StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTART,
        ..
      ),

    -- * TransformSummary_Kind
    TransformSummary_Kind
      ( TransformSummary_Kind_UNKNOWNKIND,
        TransformSummary_Kind_PARDOKIND,
        TransformSummary_Kind_GROUPBYKEYKIND,
        TransformSummary_Kind_FLATTENKIND,
        TransformSummary_Kind_READKIND,
        TransformSummary_Kind_WRITEKIND,
        TransformSummary_Kind_CONSTANTKIND,
        TransformSummary_Kind_SINGLETONKIND,
        TransformSummary_Kind_SHUFFLEKIND,
        ..
      ),

    -- * WorkItemDetails_State
    WorkItemDetails_State
      ( WorkItemDetails_State_EXECUTIONSTATEUNKNOWN,
        WorkItemDetails_State_EXECUTIONSTATENOTSTARTED,
        WorkItemDetails_State_EXECUTIONSTATERUNNING,
        WorkItemDetails_State_EXECUTIONSTATESUCCEEDED,
        WorkItemDetails_State_EXECUTIONSTATEFAILED,
        WorkItemDetails_State_EXECUTIONSTATECANCELLED,
        ..
      ),

    -- * WorkerLifecycleEvent_Event
    WorkerLifecycleEvent_Event
      ( WorkerLifecycleEvent_Event_UNKNOWNEVENT,
        WorkerLifecycleEvent_Event_OSSTART,
        WorkerLifecycleEvent_Event_CONTAINERSTART,
        WorkerLifecycleEvent_Event_NETWORKUP,
        WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADSTART,
        WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADFINISH,
        WorkerLifecycleEvent_Event_SDKINSTALLSTART,
        WorkerLifecycleEvent_Event_SDKINSTALLFINISH,
        ..
      ),

    -- * WorkerPool_DefaultPackageSet
    WorkerPool_DefaultPackageSet
      ( WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETUNKNOWN,
        WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETNONE,
        WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETJAVA,
        WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETPYTHON,
        ..
      ),

    -- * WorkerPool_IpConfiguration
    WorkerPool_IpConfiguration
      ( WorkerPool_IpConfiguration_WORKERIPUNSPECIFIED,
        WorkerPool_IpConfiguration_WORKERIPPUBLIC,
        WorkerPool_IpConfiguration_WORKERIPPRIVATE,
        ..
      ),

    -- * WorkerPool_TeardownPolicy
    WorkerPool_TeardownPolicy
      ( WorkerPool_TeardownPolicy_TEARDOWNPOLICYUNKNOWN,
        WorkerPool_TeardownPolicy_TEARDOWNALWAYS,
        WorkerPool_TeardownPolicy_TEARDOWNONSUCCESS,
        WorkerPool_TeardownPolicy_TEARDOWNNEVER,
        ..
      ),

    -- * ProjectsJobsAggregatedFilter
    ProjectsJobsAggregatedFilter
      ( ProjectsJobsAggregatedFilter_Unknown,
        ProjectsJobsAggregatedFilter_All,
        ProjectsJobsAggregatedFilter_Terminated,
        ProjectsJobsAggregatedFilter_Active,
        ..
      ),

    -- * ProjectsJobsAggregatedView
    ProjectsJobsAggregatedView
      ( ProjectsJobsAggregatedView_JOBVIEWUNKNOWN,
        ProjectsJobsAggregatedView_JOBVIEWSUMMARY,
        ProjectsJobsAggregatedView_JOBVIEWALL,
        ProjectsJobsAggregatedView_JOBVIEWDESCRIPTION,
        ..
      ),

    -- * ProjectsJobsCreateView
    ProjectsJobsCreateView
      ( ProjectsJobsCreateView_JOBVIEWUNKNOWN,
        ProjectsJobsCreateView_JOBVIEWSUMMARY,
        ProjectsJobsCreateView_JOBVIEWALL,
        ProjectsJobsCreateView_JOBVIEWDESCRIPTION,
        ..
      ),

    -- * ProjectsJobsGetView
    ProjectsJobsGetView
      ( ProjectsJobsGetView_JOBVIEWUNKNOWN,
        ProjectsJobsGetView_JOBVIEWSUMMARY,
        ProjectsJobsGetView_JOBVIEWALL,
        ProjectsJobsGetView_JOBVIEWDESCRIPTION,
        ..
      ),

    -- * ProjectsJobsListFilter
    ProjectsJobsListFilter
      ( ProjectsJobsListFilter_Unknown,
        ProjectsJobsListFilter_All,
        ProjectsJobsListFilter_Terminated,
        ProjectsJobsListFilter_Active,
        ..
      ),

    -- * ProjectsJobsListView
    ProjectsJobsListView
      ( ProjectsJobsListView_JOBVIEWUNKNOWN,
        ProjectsJobsListView_JOBVIEWSUMMARY,
        ProjectsJobsListView_JOBVIEWALL,
        ProjectsJobsListView_JOBVIEWDESCRIPTION,
        ..
      ),

    -- * ProjectsJobsMessagesListMinimumImportance
    ProjectsJobsMessagesListMinimumImportance
      ( ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN,
        ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG,
        ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED,
        ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC,
        ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING,
        ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEERROR,
        ..
      ),

    -- * ProjectsLocationsJobsCreateView
    ProjectsLocationsJobsCreateView
      ( ProjectsLocationsJobsCreateView_JOBVIEWUNKNOWN,
        ProjectsLocationsJobsCreateView_JOBVIEWSUMMARY,
        ProjectsLocationsJobsCreateView_JOBVIEWALL,
        ProjectsLocationsJobsCreateView_JOBVIEWDESCRIPTION,
        ..
      ),

    -- * ProjectsLocationsJobsGetView
    ProjectsLocationsJobsGetView
      ( ProjectsLocationsJobsGetView_JOBVIEWUNKNOWN,
        ProjectsLocationsJobsGetView_JOBVIEWSUMMARY,
        ProjectsLocationsJobsGetView_JOBVIEWALL,
        ProjectsLocationsJobsGetView_JOBVIEWDESCRIPTION,
        ..
      ),

    -- * ProjectsLocationsJobsListFilter
    ProjectsLocationsJobsListFilter
      ( ProjectsLocationsJobsListFilter_Unknown,
        ProjectsLocationsJobsListFilter_All,
        ProjectsLocationsJobsListFilter_Terminated,
        ProjectsLocationsJobsListFilter_Active,
        ..
      ),

    -- * ProjectsLocationsJobsListView
    ProjectsLocationsJobsListView
      ( ProjectsLocationsJobsListView_JOBVIEWUNKNOWN,
        ProjectsLocationsJobsListView_JOBVIEWSUMMARY,
        ProjectsLocationsJobsListView_JOBVIEWALL,
        ProjectsLocationsJobsListView_JOBVIEWDESCRIPTION,
        ..
      ),

    -- * ProjectsLocationsJobsMessagesListMinimumImportance
    ProjectsLocationsJobsMessagesListMinimumImportance
      ( ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN,
        ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG,
        ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED,
        ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC,
        ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING,
        ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEERROR,
        ..
      ),

    -- * ProjectsLocationsTemplatesGetView
    ProjectsLocationsTemplatesGetView
      ( ProjectsLocationsTemplatesGetView_METADATAONLY,
        ..
      ),

    -- * ProjectsTemplatesGetView
    ProjectsTemplatesGetView
      ( ProjectsTemplatesGetView_METADATAONLY,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The type of autoscaling event to report.
newtype AutoscalingEvent_EventType = AutoscalingEvent_EventType {fromAutoscalingEvent_EventType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default type for the enum. Value should never be returned.
pattern AutoscalingEvent_EventType_TYPEUNKNOWN :: AutoscalingEvent_EventType
pattern AutoscalingEvent_EventType_TYPEUNKNOWN = AutoscalingEvent_EventType "TYPE_UNKNOWN"

-- | The TARGET/NUM/WORKERS/CHANGED type should be used when the target worker pool size has changed at the start of an actuation. An event should always be specified as TARGET/NUM/WORKERS/CHANGED if it reflects a change in the target/num/workers.
pattern AutoscalingEvent_EventType_TARGETNUMWORKERSCHANGED :: AutoscalingEvent_EventType
pattern AutoscalingEvent_EventType_TARGETNUMWORKERSCHANGED = AutoscalingEvent_EventType "TARGET_NUM_WORKERS_CHANGED"

-- | The CURRENT/NUM/WORKERS/CHANGED type should be used when actual worker pool size has been changed, but the target/num_workers has not changed.
pattern AutoscalingEvent_EventType_CURRENTNUMWORKERSCHANGED :: AutoscalingEvent_EventType
pattern AutoscalingEvent_EventType_CURRENTNUMWORKERSCHANGED = AutoscalingEvent_EventType "CURRENT_NUM_WORKERS_CHANGED"

-- | The ACTUATION_FAILURE type should be used when we want to report an error to the user indicating why the current number of workers in the pool could not be changed. Displayed in the current status and history widgets.
pattern AutoscalingEvent_EventType_ACTUATIONFAILURE :: AutoscalingEvent_EventType
pattern AutoscalingEvent_EventType_ACTUATIONFAILURE = AutoscalingEvent_EventType "ACTUATION_FAILURE"

-- | Used when we want to report to the user a reason why we are not currently adjusting the number of workers. Should specify both target/num/workers, current/num/workers and a decision_message.
pattern AutoscalingEvent_EventType_NOCHANGE :: AutoscalingEvent_EventType
pattern AutoscalingEvent_EventType_NOCHANGE = AutoscalingEvent_EventType "NO_CHANGE"

{-# COMPLETE
  AutoscalingEvent_EventType_TYPEUNKNOWN,
  AutoscalingEvent_EventType_TARGETNUMWORKERSCHANGED,
  AutoscalingEvent_EventType_CURRENTNUMWORKERSCHANGED,
  AutoscalingEvent_EventType_ACTUATIONFAILURE,
  AutoscalingEvent_EventType_NOCHANGE,
  AutoscalingEvent_EventType
  #-}

-- | The algorithm to use for autoscaling.
newtype AutoscalingSettings_Algorithm = AutoscalingSettings_Algorithm {fromAutoscalingSettings_Algorithm :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The algorithm is unknown, or unspecified.
pattern AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMUNKNOWN :: AutoscalingSettings_Algorithm
pattern AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMUNKNOWN = AutoscalingSettings_Algorithm "AUTOSCALING_ALGORITHM_UNKNOWN"

-- | Disable autoscaling.
pattern AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMNONE :: AutoscalingSettings_Algorithm
pattern AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMNONE = AutoscalingSettings_Algorithm "AUTOSCALING_ALGORITHM_NONE"

-- | Increase worker count over time to reduce job execution time.
pattern AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMBASIC :: AutoscalingSettings_Algorithm
pattern AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMBASIC = AutoscalingSettings_Algorithm "AUTOSCALING_ALGORITHM_BASIC"

{-# COMPLETE
  AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMUNKNOWN,
  AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMNONE,
  AutoscalingSettings_Algorithm_AUTOSCALINGALGORITHMBASIC,
  AutoscalingSettings_Algorithm
  #-}

-- | Counter aggregation kind.
newtype CounterMetadata_Kind = CounterMetadata_Kind {fromCounterMetadata_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Counter aggregation kind was not set.
pattern CounterMetadata_Kind_Invalid :: CounterMetadata_Kind
pattern CounterMetadata_Kind_Invalid = CounterMetadata_Kind "INVALID"

-- | Aggregated value is the sum of all contributed values.
pattern CounterMetadata_Kind_Sum :: CounterMetadata_Kind
pattern CounterMetadata_Kind_Sum = CounterMetadata_Kind "SUM"

-- | Aggregated value is the max of all contributed values.
pattern CounterMetadata_Kind_Max :: CounterMetadata_Kind
pattern CounterMetadata_Kind_Max = CounterMetadata_Kind "MAX"

-- | Aggregated value is the min of all contributed values.
pattern CounterMetadata_Kind_Min :: CounterMetadata_Kind
pattern CounterMetadata_Kind_Min = CounterMetadata_Kind "MIN"

-- | Aggregated value is the mean of all contributed values.
pattern CounterMetadata_Kind_Mean :: CounterMetadata_Kind
pattern CounterMetadata_Kind_Mean = CounterMetadata_Kind "MEAN"

-- | Aggregated value represents the logical \'or\' of all contributed values.
pattern CounterMetadata_Kind_OR :: CounterMetadata_Kind
pattern CounterMetadata_Kind_OR = CounterMetadata_Kind "OR"

-- | Aggregated value represents the logical \'and\' of all contributed values.
pattern CounterMetadata_Kind_And :: CounterMetadata_Kind
pattern CounterMetadata_Kind_And = CounterMetadata_Kind "AND"

-- | Aggregated value is a set of unique contributed values.
pattern CounterMetadata_Kind_Set :: CounterMetadata_Kind
pattern CounterMetadata_Kind_Set = CounterMetadata_Kind "SET"

-- | Aggregated value captures statistics about a distribution.
pattern CounterMetadata_Kind_Distribution :: CounterMetadata_Kind
pattern CounterMetadata_Kind_Distribution = CounterMetadata_Kind "DISTRIBUTION"

-- | Aggregated value tracks the latest value of a variable.
pattern CounterMetadata_Kind_LATESTVALUE :: CounterMetadata_Kind
pattern CounterMetadata_Kind_LATESTVALUE = CounterMetadata_Kind "LATEST_VALUE"

{-# COMPLETE
  CounterMetadata_Kind_Invalid,
  CounterMetadata_Kind_Sum,
  CounterMetadata_Kind_Max,
  CounterMetadata_Kind_Min,
  CounterMetadata_Kind_Mean,
  CounterMetadata_Kind_OR,
  CounterMetadata_Kind_And,
  CounterMetadata_Kind_Set,
  CounterMetadata_Kind_Distribution,
  CounterMetadata_Kind_LATESTVALUE,
  CounterMetadata_Kind
  #-}

-- | System defined Units, see above enum.
newtype CounterMetadata_StandardUnits = CounterMetadata_StandardUnits {fromCounterMetadata_StandardUnits :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Counter returns a value in bytes.
pattern CounterMetadata_StandardUnits_Bytes :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_Bytes = CounterMetadata_StandardUnits "BYTES"

-- | Counter returns a value in bytes per second.
pattern CounterMetadata_StandardUnits_BYTESPERSEC :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_BYTESPERSEC = CounterMetadata_StandardUnits "BYTES_PER_SEC"

-- | Counter returns a value in milliseconds.
pattern CounterMetadata_StandardUnits_Milliseconds :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_Milliseconds = CounterMetadata_StandardUnits "MILLISECONDS"

-- | Counter returns a value in microseconds.
pattern CounterMetadata_StandardUnits_Microseconds :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_Microseconds = CounterMetadata_StandardUnits "MICROSECONDS"

-- | Counter returns a value in nanoseconds.
pattern CounterMetadata_StandardUnits_Nanoseconds :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_Nanoseconds = CounterMetadata_StandardUnits "NANOSECONDS"

-- | Counter returns a timestamp in milliseconds.
pattern CounterMetadata_StandardUnits_TIMESTAMPMSEC :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_TIMESTAMPMSEC = CounterMetadata_StandardUnits "TIMESTAMP_MSEC"

-- | Counter returns a timestamp in microseconds.
pattern CounterMetadata_StandardUnits_TIMESTAMPUSEC :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_TIMESTAMPUSEC = CounterMetadata_StandardUnits "TIMESTAMP_USEC"

-- | Counter returns a timestamp in nanoseconds.
pattern CounterMetadata_StandardUnits_TIMESTAMPNSEC :: CounterMetadata_StandardUnits
pattern CounterMetadata_StandardUnits_TIMESTAMPNSEC = CounterMetadata_StandardUnits "TIMESTAMP_NSEC"

{-# COMPLETE
  CounterMetadata_StandardUnits_Bytes,
  CounterMetadata_StandardUnits_BYTESPERSEC,
  CounterMetadata_StandardUnits_Milliseconds,
  CounterMetadata_StandardUnits_Microseconds,
  CounterMetadata_StandardUnits_Nanoseconds,
  CounterMetadata_StandardUnits_TIMESTAMPMSEC,
  CounterMetadata_StandardUnits_TIMESTAMPUSEC,
  CounterMetadata_StandardUnits_TIMESTAMPNSEC,
  CounterMetadata_StandardUnits
  #-}

-- | One of the standard Origins defined above.
newtype CounterStructuredName_Origin = CounterStructuredName_Origin {fromCounterStructuredName_Origin :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Counter was created by the Dataflow system.
pattern CounterStructuredName_Origin_System :: CounterStructuredName_Origin
pattern CounterStructuredName_Origin_System = CounterStructuredName_Origin "SYSTEM"

-- | Counter was created by the user.
pattern CounterStructuredName_Origin_User :: CounterStructuredName_Origin
pattern CounterStructuredName_Origin_User = CounterStructuredName_Origin "USER"

{-# COMPLETE
  CounterStructuredName_Origin_System,
  CounterStructuredName_Origin_User,
  CounterStructuredName_Origin
  #-}

-- | Portion of this counter, either key or value.
newtype CounterStructuredName_Portion = CounterStructuredName_Portion {fromCounterStructuredName_Portion :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Counter portion has not been set.
pattern CounterStructuredName_Portion_All :: CounterStructuredName_Portion
pattern CounterStructuredName_Portion_All = CounterStructuredName_Portion "ALL"

-- | Counter reports a key.
pattern CounterStructuredName_Portion_Key :: CounterStructuredName_Portion
pattern CounterStructuredName_Portion_Key = CounterStructuredName_Portion "KEY"

-- | Counter reports a value.
pattern CounterStructuredName_Portion_Value :: CounterStructuredName_Portion
pattern CounterStructuredName_Portion_Value = CounterStructuredName_Portion "VALUE"

{-# COMPLETE
  CounterStructuredName_Portion_All,
  CounterStructuredName_Portion_Key,
  CounterStructuredName_Portion_Value,
  CounterStructuredName_Portion
  #-}

newtype DataSamplingConfig_BehaviorsItem = DataSamplingConfig_BehaviorsItem {fromDataSamplingConfig_BehaviorsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | If given, has no effect on sampling behavior. Used as an unknown or unset sentinel value.
pattern DataSamplingConfig_BehaviorsItem_DATASAMPLINGBEHAVIORUNSPECIFIED :: DataSamplingConfig_BehaviorsItem
pattern DataSamplingConfig_BehaviorsItem_DATASAMPLINGBEHAVIORUNSPECIFIED = DataSamplingConfig_BehaviorsItem "DATA_SAMPLING_BEHAVIOR_UNSPECIFIED"

-- | When given, disables element sampling. Has same behavior as not setting the behavior.
pattern DataSamplingConfig_BehaviorsItem_Disabled :: DataSamplingConfig_BehaviorsItem
pattern DataSamplingConfig_BehaviorsItem_Disabled = DataSamplingConfig_BehaviorsItem "DISABLED"

-- | When given, enables sampling in-flight from all PCollections.
pattern DataSamplingConfig_BehaviorsItem_ALWAYSON :: DataSamplingConfig_BehaviorsItem
pattern DataSamplingConfig_BehaviorsItem_ALWAYSON = DataSamplingConfig_BehaviorsItem "ALWAYS_ON"

-- | When given, enables sampling input elements when a user-defined DoFn causes an exception.
pattern DataSamplingConfig_BehaviorsItem_Exceptions :: DataSamplingConfig_BehaviorsItem
pattern DataSamplingConfig_BehaviorsItem_Exceptions = DataSamplingConfig_BehaviorsItem "EXCEPTIONS"

{-# COMPLETE
  DataSamplingConfig_BehaviorsItem_DATASAMPLINGBEHAVIORUNSPECIFIED,
  DataSamplingConfig_BehaviorsItem_Disabled,
  DataSamplingConfig_BehaviorsItem_ALWAYSON,
  DataSamplingConfig_BehaviorsItem_Exceptions,
  DataSamplingConfig_BehaviorsItem
  #-}

-- | What source to base the produced source on (if any).
newtype DerivedSource_DerivationMode = DerivedSource_DerivationMode {fromDerivedSource_DerivationMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The source derivation is unknown, or unspecified.
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN :: DerivedSource_DerivationMode
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN = DerivedSource_DerivationMode "SOURCE_DERIVATION_MODE_UNKNOWN"

-- | Produce a completely independent Source with no base.
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT :: DerivedSource_DerivationMode
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT = DerivedSource_DerivationMode "SOURCE_DERIVATION_MODE_INDEPENDENT"

-- | Produce a Source based on the Source being split.
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT :: DerivedSource_DerivationMode
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT = DerivedSource_DerivationMode "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT"

-- | Produce a Source based on the base of the Source being split.
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT :: DerivedSource_DerivationMode
pattern DerivedSource_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT = DerivedSource_DerivationMode "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT"

{-# COMPLETE
  DerivedSource_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN,
  DerivedSource_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT,
  DerivedSource_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT,
  DerivedSource_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT,
  DerivedSource_DerivationMode
  #-}

-- | Optional. Which Flexible Resource Scheduling mode to run in.
newtype Environment_FlexResourceSchedulingGoal = Environment_FlexResourceSchedulingGoal {fromEnvironment_FlexResourceSchedulingGoal :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Run in the default mode.
pattern Environment_FlexResourceSchedulingGoal_FLEXRSUNSPECIFIED :: Environment_FlexResourceSchedulingGoal
pattern Environment_FlexResourceSchedulingGoal_FLEXRSUNSPECIFIED = Environment_FlexResourceSchedulingGoal "FLEXRS_UNSPECIFIED"

-- | Optimize for lower execution time.
pattern Environment_FlexResourceSchedulingGoal_FLEXRSSPEEDOPTIMIZED :: Environment_FlexResourceSchedulingGoal
pattern Environment_FlexResourceSchedulingGoal_FLEXRSSPEEDOPTIMIZED = Environment_FlexResourceSchedulingGoal "FLEXRS_SPEED_OPTIMIZED"

-- | Optimize for lower cost.
pattern Environment_FlexResourceSchedulingGoal_FLEXRSCOSTOPTIMIZED :: Environment_FlexResourceSchedulingGoal
pattern Environment_FlexResourceSchedulingGoal_FLEXRSCOSTOPTIMIZED = Environment_FlexResourceSchedulingGoal "FLEXRS_COST_OPTIMIZED"

{-# COMPLETE
  Environment_FlexResourceSchedulingGoal_FLEXRSUNSPECIFIED,
  Environment_FlexResourceSchedulingGoal_FLEXRSSPEEDOPTIMIZED,
  Environment_FlexResourceSchedulingGoal_FLEXRSCOSTOPTIMIZED,
  Environment_FlexResourceSchedulingGoal
  #-}

-- | Output only. The shuffle mode used for the job.
newtype Environment_ShuffleMode = Environment_ShuffleMode {fromEnvironment_ShuffleMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Shuffle mode information is not available.
pattern Environment_ShuffleMode_SHUFFLEMODEUNSPECIFIED :: Environment_ShuffleMode
pattern Environment_ShuffleMode_SHUFFLEMODEUNSPECIFIED = Environment_ShuffleMode "SHUFFLE_MODE_UNSPECIFIED"

-- | Shuffle is done on the worker VMs.
pattern Environment_ShuffleMode_VMBASED :: Environment_ShuffleMode
pattern Environment_ShuffleMode_VMBASED = Environment_ShuffleMode "VM_BASED"

-- | Shuffle is done on the service side.
pattern Environment_ShuffleMode_SERVICEBASED :: Environment_ShuffleMode
pattern Environment_ShuffleMode_SERVICEBASED = Environment_ShuffleMode "SERVICE_BASED"

{-# COMPLETE
  Environment_ShuffleMode_SHUFFLEMODEUNSPECIFIED,
  Environment_ShuffleMode_VMBASED,
  Environment_ShuffleMode_SERVICEBASED,
  Environment_ShuffleMode
  #-}

-- | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency but might result in duplicate messages committed to storage. Designed to run simple mapping streaming ETL jobs at the lowest cost. For example, Change Data Capture (CDC) to BigQuery is a canonical use case. For more information, see <https://cloud.google.com/dataflow/docs/guides/streaming-modes Set the pipeline streaming mode>.
newtype Environment_StreamingMode = Environment_StreamingMode {fromEnvironment_StreamingMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Run in the default mode.
pattern Environment_StreamingMode_STREAMINGMODEUNSPECIFIED :: Environment_StreamingMode
pattern Environment_StreamingMode_STREAMINGMODEUNSPECIFIED = Environment_StreamingMode "STREAMING_MODE_UNSPECIFIED"

-- | In this mode, message deduplication is performed against persistent state to make sure each message is processed and committed to storage exactly once.
pattern Environment_StreamingMode_STREAMINGMODEEXACTLYONCE :: Environment_StreamingMode
pattern Environment_StreamingMode_STREAMINGMODEEXACTLYONCE = Environment_StreamingMode "STREAMING_MODE_EXACTLY_ONCE"

-- | Message deduplication is not performed. Messages might be processed multiple times, and the results are applied multiple times. Note: Setting this value also enables Streaming Engine and Streaming Engine resource-based billing.
pattern Environment_StreamingMode_STREAMINGMODEATLEASTONCE :: Environment_StreamingMode
pattern Environment_StreamingMode_STREAMINGMODEATLEASTONCE = Environment_StreamingMode "STREAMING_MODE_AT_LEAST_ONCE"

{-# COMPLETE
  Environment_StreamingMode_STREAMINGMODEUNSPECIFIED,
  Environment_StreamingMode_STREAMINGMODEEXACTLYONCE,
  Environment_StreamingMode_STREAMINGMODEATLEASTONCE,
  Environment_StreamingMode
  #-}

-- | Executions stage states allow the same set of values as JobState.
newtype ExecutionStageState_ExecutionStageState = ExecutionStageState_ExecutionStageState {fromExecutionStageState_ExecutionStageState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job\'s run state isn\'t specified.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEUNKNOWN :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEUNKNOWN = ExecutionStageState_ExecutionStageState "JOB_STATE_UNKNOWN"

-- | @JOB_STATE_STOPPED@ indicates that the job has not yet started to run.
pattern ExecutionStageState_ExecutionStageState_JOBSTATESTOPPED :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATESTOPPED = ExecutionStageState_ExecutionStageState "JOB_STATE_STOPPED"

-- | @JOB_STATE_RUNNING@ indicates that the job is currently running.
pattern ExecutionStageState_ExecutionStageState_JOBSTATERUNNING :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATERUNNING = ExecutionStageState_ExecutionStageState "JOB_STATE_RUNNING"

-- | @JOB_STATE_DONE@ indicates that the job has successfully completed. This is a terminal job state. This state may be set by the Cloud Dataflow service, as a transition from @JOB_STATE_RUNNING@. It may also be set via a Cloud Dataflow @UpdateJob@ call, if the job has not yet reached a terminal state.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEDONE :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEDONE = ExecutionStageState_ExecutionStageState "JOB_STATE_DONE"

-- | @JOB_STATE_FAILED@ indicates that the job has failed. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_RUNNING@.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEFAILED :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEFAILED = ExecutionStageState_ExecutionStageState "JOB_STATE_FAILED"

-- | @JOB_STATE_CANCELLED@ indicates that the job has been explicitly cancelled. This is a terminal job state. This state may only be set via a Cloud Dataflow @UpdateJob@ call, and only if the job has not yet reached another terminal state.
pattern ExecutionStageState_ExecutionStageState_JOBSTATECANCELLED :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATECANCELLED = ExecutionStageState_ExecutionStageState "JOB_STATE_CANCELLED"

-- | @JOB_STATE_UPDATED@ indicates that the job was successfully updated, meaning that this job was stopped and another job was started, inheriting state from this one. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_RUNNING@.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEUPDATED :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEUPDATED = ExecutionStageState_ExecutionStageState "JOB_STATE_UPDATED"

-- | @JOB_STATE_DRAINING@ indicates that the job is in the process of draining. A draining job has stopped pulling from its input sources and is processing any data that remains in-flight. This state may be set via a Cloud Dataflow @UpdateJob@ call, but only as a transition from @JOB_STATE_RUNNING@. Jobs that are draining may only transition to @JOB_STATE_DRAINED@, @JOB_STATE_CANCELLED@, or @JOB_STATE_FAILED@.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEDRAINING :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEDRAINING = ExecutionStageState_ExecutionStageState "JOB_STATE_DRAINING"

-- | @JOB_STATE_DRAINED@ indicates that the job has been drained. A drained job terminated by stopping pulling from its input sources and processing any data that remained in-flight when draining was requested. This state is a terminal state, may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_DRAINING@.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEDRAINED :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEDRAINED = ExecutionStageState_ExecutionStageState "JOB_STATE_DRAINED"

-- | @JOB_STATE_PENDING@ indicates that the job has been created but is not yet running. Jobs that are pending may only transition to @JOB_STATE_RUNNING@, or @JOB_STATE_FAILED@.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEPENDING :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEPENDING = ExecutionStageState_ExecutionStageState "JOB_STATE_PENDING"

-- | @JOB_STATE_CANCELLING@ indicates that the job has been explicitly cancelled and is in the process of stopping. Jobs that are cancelling may only transition to @JOB_STATE_CANCELLED@ or @JOB_STATE_FAILED@.
pattern ExecutionStageState_ExecutionStageState_JOBSTATECANCELLING :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATECANCELLING = ExecutionStageState_ExecutionStageState "JOB_STATE_CANCELLING"

-- | @JOB_STATE_QUEUED@ indicates that the job has been created but is being delayed until launch. Jobs that are queued may only transition to @JOB_STATE_PENDING@ or @JOB_STATE_CANCELLED@.
pattern ExecutionStageState_ExecutionStageState_JOBSTATEQUEUED :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATEQUEUED = ExecutionStageState_ExecutionStageState "JOB_STATE_QUEUED"

-- | @JOB_STATE_RESOURCE_CLEANING_UP@ indicates that the batch job\'s associated resources are currently being cleaned up after a successful run. Currently, this is an opt-in feature, please reach out to Cloud support team if you are interested.
pattern ExecutionStageState_ExecutionStageState_JOBSTATERESOURCECLEANINGUP :: ExecutionStageState_ExecutionStageState
pattern ExecutionStageState_ExecutionStageState_JOBSTATERESOURCECLEANINGUP = ExecutionStageState_ExecutionStageState "JOB_STATE_RESOURCE_CLEANING_UP"

{-# COMPLETE
  ExecutionStageState_ExecutionStageState_JOBSTATEUNKNOWN,
  ExecutionStageState_ExecutionStageState_JOBSTATESTOPPED,
  ExecutionStageState_ExecutionStageState_JOBSTATERUNNING,
  ExecutionStageState_ExecutionStageState_JOBSTATEDONE,
  ExecutionStageState_ExecutionStageState_JOBSTATEFAILED,
  ExecutionStageState_ExecutionStageState_JOBSTATECANCELLED,
  ExecutionStageState_ExecutionStageState_JOBSTATEUPDATED,
  ExecutionStageState_ExecutionStageState_JOBSTATEDRAINING,
  ExecutionStageState_ExecutionStageState_JOBSTATEDRAINED,
  ExecutionStageState_ExecutionStageState_JOBSTATEPENDING,
  ExecutionStageState_ExecutionStageState_JOBSTATECANCELLING,
  ExecutionStageState_ExecutionStageState_JOBSTATEQUEUED,
  ExecutionStageState_ExecutionStageState_JOBSTATERESOURCECLEANINGUP,
  ExecutionStageState_ExecutionStageState
  #-}

-- | Type of transform this stage is executing.
newtype ExecutionStageSummary_Kind = ExecutionStageSummary_Kind {fromExecutionStageSummary_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unrecognized transform type.
pattern ExecutionStageSummary_Kind_UNKNOWNKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_UNKNOWNKIND = ExecutionStageSummary_Kind "UNKNOWN_KIND"

-- | ParDo transform.
pattern ExecutionStageSummary_Kind_PARDOKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_PARDOKIND = ExecutionStageSummary_Kind "PAR_DO_KIND"

-- | Group By Key transform.
pattern ExecutionStageSummary_Kind_GROUPBYKEYKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_GROUPBYKEYKIND = ExecutionStageSummary_Kind "GROUP_BY_KEY_KIND"

-- | Flatten transform.
pattern ExecutionStageSummary_Kind_FLATTENKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_FLATTENKIND = ExecutionStageSummary_Kind "FLATTEN_KIND"

-- | Read transform.
pattern ExecutionStageSummary_Kind_READKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_READKIND = ExecutionStageSummary_Kind "READ_KIND"

-- | Write transform.
pattern ExecutionStageSummary_Kind_WRITEKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_WRITEKIND = ExecutionStageSummary_Kind "WRITE_KIND"

-- | Constructs from a constant value, such as with Create.of.
pattern ExecutionStageSummary_Kind_CONSTANTKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_CONSTANTKIND = ExecutionStageSummary_Kind "CONSTANT_KIND"

-- | Creates a Singleton view of a collection.
pattern ExecutionStageSummary_Kind_SINGLETONKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_SINGLETONKIND = ExecutionStageSummary_Kind "SINGLETON_KIND"

-- | Opening or closing a shuffle session, often as part of a GroupByKey.
pattern ExecutionStageSummary_Kind_SHUFFLEKIND :: ExecutionStageSummary_Kind
pattern ExecutionStageSummary_Kind_SHUFFLEKIND = ExecutionStageSummary_Kind "SHUFFLE_KIND"

{-# COMPLETE
  ExecutionStageSummary_Kind_UNKNOWNKIND,
  ExecutionStageSummary_Kind_PARDOKIND,
  ExecutionStageSummary_Kind_GROUPBYKEYKIND,
  ExecutionStageSummary_Kind_FLATTENKIND,
  ExecutionStageSummary_Kind_READKIND,
  ExecutionStageSummary_Kind_WRITEKIND,
  ExecutionStageSummary_Kind_CONSTANTKIND,
  ExecutionStageSummary_Kind_SINGLETONKIND,
  ExecutionStageSummary_Kind_SHUFFLEKIND,
  ExecutionStageSummary_Kind
  #-}

-- | The algorithm to use for autoscaling
newtype FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm = FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm {fromFlexTemplateRuntimeEnvironment_AutoscalingAlgorithm :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The algorithm is unknown, or unspecified.
pattern FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMUNKNOWN :: FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm
pattern FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMUNKNOWN = FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm "AUTOSCALING_ALGORITHM_UNKNOWN"

-- | Disable autoscaling.
pattern FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMNONE :: FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm
pattern FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMNONE = FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm "AUTOSCALING_ALGORITHM_NONE"

-- | Increase worker count over time to reduce job execution time.
pattern FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMBASIC :: FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm
pattern FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMBASIC = FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm "AUTOSCALING_ALGORITHM_BASIC"

{-# COMPLETE
  FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMUNKNOWN,
  FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMNONE,
  FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm_AUTOSCALINGALGORITHMBASIC,
  FlexTemplateRuntimeEnvironment_AutoscalingAlgorithm
  #-}

-- | Set FlexRS goal for the job. https:\/\/cloud.google.com\/dataflow\/docs\/guides\/flexrs
newtype FlexTemplateRuntimeEnvironment_FlexrsGoal = FlexTemplateRuntimeEnvironment_FlexrsGoal {fromFlexTemplateRuntimeEnvironment_FlexrsGoal :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Run in the default mode.
pattern FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSUNSPECIFIED :: FlexTemplateRuntimeEnvironment_FlexrsGoal
pattern FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSUNSPECIFIED = FlexTemplateRuntimeEnvironment_FlexrsGoal "FLEXRS_UNSPECIFIED"

-- | Optimize for lower execution time.
pattern FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSSPEEDOPTIMIZED :: FlexTemplateRuntimeEnvironment_FlexrsGoal
pattern FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSSPEEDOPTIMIZED = FlexTemplateRuntimeEnvironment_FlexrsGoal "FLEXRS_SPEED_OPTIMIZED"

-- | Optimize for lower cost.
pattern FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSCOSTOPTIMIZED :: FlexTemplateRuntimeEnvironment_FlexrsGoal
pattern FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSCOSTOPTIMIZED = FlexTemplateRuntimeEnvironment_FlexrsGoal "FLEXRS_COST_OPTIMIZED"

{-# COMPLETE
  FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSUNSPECIFIED,
  FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSSPEEDOPTIMIZED,
  FlexTemplateRuntimeEnvironment_FlexrsGoal_FLEXRSCOSTOPTIMIZED,
  FlexTemplateRuntimeEnvironment_FlexrsGoal
  #-}

-- | Configuration for VM IPs.
newtype FlexTemplateRuntimeEnvironment_IpConfiguration = FlexTemplateRuntimeEnvironment_IpConfiguration {fromFlexTemplateRuntimeEnvironment_IpConfiguration :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The configuration is unknown, or unspecified.
pattern FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED :: FlexTemplateRuntimeEnvironment_IpConfiguration
pattern FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED = FlexTemplateRuntimeEnvironment_IpConfiguration "WORKER_IP_UNSPECIFIED"

-- | Workers should have public IP addresses.
pattern FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC :: FlexTemplateRuntimeEnvironment_IpConfiguration
pattern FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC = FlexTemplateRuntimeEnvironment_IpConfiguration "WORKER_IP_PUBLIC"

-- | Workers should have private IP addresses.
pattern FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE :: FlexTemplateRuntimeEnvironment_IpConfiguration
pattern FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE = FlexTemplateRuntimeEnvironment_IpConfiguration "WORKER_IP_PRIVATE"

{-# COMPLETE
  FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED,
  FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC,
  FlexTemplateRuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE,
  FlexTemplateRuntimeEnvironment_IpConfiguration
  #-}

-- | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency but might result in duplicate messages committed to storage. Designed to run simple mapping streaming ETL jobs at the lowest cost. For example, Change Data Capture (CDC) to BigQuery is a canonical use case. For more information, see <https://cloud.google.com/dataflow/docs/guides/streaming-modes Set the pipeline streaming mode>.
newtype FlexTemplateRuntimeEnvironment_StreamingMode = FlexTemplateRuntimeEnvironment_StreamingMode {fromFlexTemplateRuntimeEnvironment_StreamingMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Run in the default mode.
pattern FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED :: FlexTemplateRuntimeEnvironment_StreamingMode
pattern FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED = FlexTemplateRuntimeEnvironment_StreamingMode "STREAMING_MODE_UNSPECIFIED"

-- | In this mode, message deduplication is performed against persistent state to make sure each message is processed and committed to storage exactly once.
pattern FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE :: FlexTemplateRuntimeEnvironment_StreamingMode
pattern FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE = FlexTemplateRuntimeEnvironment_StreamingMode "STREAMING_MODE_EXACTLY_ONCE"

-- | Message deduplication is not performed. Messages might be processed multiple times, and the results are applied multiple times. Note: Setting this value also enables Streaming Engine and Streaming Engine resource-based billing.
pattern FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE :: FlexTemplateRuntimeEnvironment_StreamingMode
pattern FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE = FlexTemplateRuntimeEnvironment_StreamingMode "STREAMING_MODE_AT_LEAST_ONCE"

{-# COMPLETE
  FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED,
  FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE,
  FlexTemplateRuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE,
  FlexTemplateRuntimeEnvironment_StreamingMode
  #-}

-- | Template Type.
newtype GetTemplateResponse_TemplateType = GetTemplateResponse_TemplateType {fromGetTemplateResponse_TemplateType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown Template Type.
pattern GetTemplateResponse_TemplateType_Unknown :: GetTemplateResponse_TemplateType
pattern GetTemplateResponse_TemplateType_Unknown = GetTemplateResponse_TemplateType "UNKNOWN"

-- | Legacy Template.
pattern GetTemplateResponse_TemplateType_Legacy :: GetTemplateResponse_TemplateType
pattern GetTemplateResponse_TemplateType_Legacy = GetTemplateResponse_TemplateType "LEGACY"

-- | Flex Template.
pattern GetTemplateResponse_TemplateType_Flex :: GetTemplateResponse_TemplateType
pattern GetTemplateResponse_TemplateType_Flex = GetTemplateResponse_TemplateType "FLEX"

{-# COMPLETE
  GetTemplateResponse_TemplateType_Unknown,
  GetTemplateResponse_TemplateType_Legacy,
  GetTemplateResponse_TemplateType_Flex,
  GetTemplateResponse_TemplateType
  #-}

-- | The current state of the job. Jobs are created in the @JOB_STATE_STOPPED@ state unless otherwise specified. A job in the @JOB_STATE_RUNNING@ state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field might be mutated by the Dataflow service; callers cannot mutate it.
newtype Job_CurrentState = Job_CurrentState {fromJob_CurrentState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job\'s run state isn\'t specified.
pattern Job_CurrentState_JOBSTATEUNKNOWN :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEUNKNOWN = Job_CurrentState "JOB_STATE_UNKNOWN"

-- | @JOB_STATE_STOPPED@ indicates that the job has not yet started to run.
pattern Job_CurrentState_JOBSTATESTOPPED :: Job_CurrentState
pattern Job_CurrentState_JOBSTATESTOPPED = Job_CurrentState "JOB_STATE_STOPPED"

-- | @JOB_STATE_RUNNING@ indicates that the job is currently running.
pattern Job_CurrentState_JOBSTATERUNNING :: Job_CurrentState
pattern Job_CurrentState_JOBSTATERUNNING = Job_CurrentState "JOB_STATE_RUNNING"

-- | @JOB_STATE_DONE@ indicates that the job has successfully completed. This is a terminal job state. This state may be set by the Cloud Dataflow service, as a transition from @JOB_STATE_RUNNING@. It may also be set via a Cloud Dataflow @UpdateJob@ call, if the job has not yet reached a terminal state.
pattern Job_CurrentState_JOBSTATEDONE :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEDONE = Job_CurrentState "JOB_STATE_DONE"

-- | @JOB_STATE_FAILED@ indicates that the job has failed. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_RUNNING@.
pattern Job_CurrentState_JOBSTATEFAILED :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEFAILED = Job_CurrentState "JOB_STATE_FAILED"

-- | @JOB_STATE_CANCELLED@ indicates that the job has been explicitly cancelled. This is a terminal job state. This state may only be set via a Cloud Dataflow @UpdateJob@ call, and only if the job has not yet reached another terminal state.
pattern Job_CurrentState_JOBSTATECANCELLED :: Job_CurrentState
pattern Job_CurrentState_JOBSTATECANCELLED = Job_CurrentState "JOB_STATE_CANCELLED"

-- | @JOB_STATE_UPDATED@ indicates that the job was successfully updated, meaning that this job was stopped and another job was started, inheriting state from this one. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_RUNNING@.
pattern Job_CurrentState_JOBSTATEUPDATED :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEUPDATED = Job_CurrentState "JOB_STATE_UPDATED"

-- | @JOB_STATE_DRAINING@ indicates that the job is in the process of draining. A draining job has stopped pulling from its input sources and is processing any data that remains in-flight. This state may be set via a Cloud Dataflow @UpdateJob@ call, but only as a transition from @JOB_STATE_RUNNING@. Jobs that are draining may only transition to @JOB_STATE_DRAINED@, @JOB_STATE_CANCELLED@, or @JOB_STATE_FAILED@.
pattern Job_CurrentState_JOBSTATEDRAINING :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEDRAINING = Job_CurrentState "JOB_STATE_DRAINING"

-- | @JOB_STATE_DRAINED@ indicates that the job has been drained. A drained job terminated by stopping pulling from its input sources and processing any data that remained in-flight when draining was requested. This state is a terminal state, may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_DRAINING@.
pattern Job_CurrentState_JOBSTATEDRAINED :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEDRAINED = Job_CurrentState "JOB_STATE_DRAINED"

-- | @JOB_STATE_PENDING@ indicates that the job has been created but is not yet running. Jobs that are pending may only transition to @JOB_STATE_RUNNING@, or @JOB_STATE_FAILED@.
pattern Job_CurrentState_JOBSTATEPENDING :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEPENDING = Job_CurrentState "JOB_STATE_PENDING"

-- | @JOB_STATE_CANCELLING@ indicates that the job has been explicitly cancelled and is in the process of stopping. Jobs that are cancelling may only transition to @JOB_STATE_CANCELLED@ or @JOB_STATE_FAILED@.
pattern Job_CurrentState_JOBSTATECANCELLING :: Job_CurrentState
pattern Job_CurrentState_JOBSTATECANCELLING = Job_CurrentState "JOB_STATE_CANCELLING"

-- | @JOB_STATE_QUEUED@ indicates that the job has been created but is being delayed until launch. Jobs that are queued may only transition to @JOB_STATE_PENDING@ or @JOB_STATE_CANCELLED@.
pattern Job_CurrentState_JOBSTATEQUEUED :: Job_CurrentState
pattern Job_CurrentState_JOBSTATEQUEUED = Job_CurrentState "JOB_STATE_QUEUED"

-- | @JOB_STATE_RESOURCE_CLEANING_UP@ indicates that the batch job\'s associated resources are currently being cleaned up after a successful run. Currently, this is an opt-in feature, please reach out to Cloud support team if you are interested.
pattern Job_CurrentState_JOBSTATERESOURCECLEANINGUP :: Job_CurrentState
pattern Job_CurrentState_JOBSTATERESOURCECLEANINGUP = Job_CurrentState "JOB_STATE_RESOURCE_CLEANING_UP"

{-# COMPLETE
  Job_CurrentState_JOBSTATEUNKNOWN,
  Job_CurrentState_JOBSTATESTOPPED,
  Job_CurrentState_JOBSTATERUNNING,
  Job_CurrentState_JOBSTATEDONE,
  Job_CurrentState_JOBSTATEFAILED,
  Job_CurrentState_JOBSTATECANCELLED,
  Job_CurrentState_JOBSTATEUPDATED,
  Job_CurrentState_JOBSTATEDRAINING,
  Job_CurrentState_JOBSTATEDRAINED,
  Job_CurrentState_JOBSTATEPENDING,
  Job_CurrentState_JOBSTATECANCELLING,
  Job_CurrentState_JOBSTATEQUEUED,
  Job_CurrentState_JOBSTATERESOURCECLEANINGUP,
  Job_CurrentState
  #-}

-- | The job\'s requested state. Applies to @UpdateJob@ requests. Set @requested_state@ with @UpdateJob@ requests to switch between the states @JOB_STATE_STOPPED@ and @JOB_STATE_RUNNING@. You can also use @UpdateJob@ requests to change a job\'s state from @JOB_STATE_RUNNING@ to @JOB_STATE_CANCELLED@, @JOB_STATE_DONE@, or @JOB_STATE_DRAINED@. These states irrevocably terminate the job if it hasn\'t already reached a terminal state. This field has no effect on @CreateJob@ requests.
newtype Job_RequestedState = Job_RequestedState {fromJob_RequestedState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job\'s run state isn\'t specified.
pattern Job_RequestedState_JOBSTATEUNKNOWN :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEUNKNOWN = Job_RequestedState "JOB_STATE_UNKNOWN"

-- | @JOB_STATE_STOPPED@ indicates that the job has not yet started to run.
pattern Job_RequestedState_JOBSTATESTOPPED :: Job_RequestedState
pattern Job_RequestedState_JOBSTATESTOPPED = Job_RequestedState "JOB_STATE_STOPPED"

-- | @JOB_STATE_RUNNING@ indicates that the job is currently running.
pattern Job_RequestedState_JOBSTATERUNNING :: Job_RequestedState
pattern Job_RequestedState_JOBSTATERUNNING = Job_RequestedState "JOB_STATE_RUNNING"

-- | @JOB_STATE_DONE@ indicates that the job has successfully completed. This is a terminal job state. This state may be set by the Cloud Dataflow service, as a transition from @JOB_STATE_RUNNING@. It may also be set via a Cloud Dataflow @UpdateJob@ call, if the job has not yet reached a terminal state.
pattern Job_RequestedState_JOBSTATEDONE :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEDONE = Job_RequestedState "JOB_STATE_DONE"

-- | @JOB_STATE_FAILED@ indicates that the job has failed. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_RUNNING@.
pattern Job_RequestedState_JOBSTATEFAILED :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEFAILED = Job_RequestedState "JOB_STATE_FAILED"

-- | @JOB_STATE_CANCELLED@ indicates that the job has been explicitly cancelled. This is a terminal job state. This state may only be set via a Cloud Dataflow @UpdateJob@ call, and only if the job has not yet reached another terminal state.
pattern Job_RequestedState_JOBSTATECANCELLED :: Job_RequestedState
pattern Job_RequestedState_JOBSTATECANCELLED = Job_RequestedState "JOB_STATE_CANCELLED"

-- | @JOB_STATE_UPDATED@ indicates that the job was successfully updated, meaning that this job was stopped and another job was started, inheriting state from this one. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_RUNNING@.
pattern Job_RequestedState_JOBSTATEUPDATED :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEUPDATED = Job_RequestedState "JOB_STATE_UPDATED"

-- | @JOB_STATE_DRAINING@ indicates that the job is in the process of draining. A draining job has stopped pulling from its input sources and is processing any data that remains in-flight. This state may be set via a Cloud Dataflow @UpdateJob@ call, but only as a transition from @JOB_STATE_RUNNING@. Jobs that are draining may only transition to @JOB_STATE_DRAINED@, @JOB_STATE_CANCELLED@, or @JOB_STATE_FAILED@.
pattern Job_RequestedState_JOBSTATEDRAINING :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEDRAINING = Job_RequestedState "JOB_STATE_DRAINING"

-- | @JOB_STATE_DRAINED@ indicates that the job has been drained. A drained job terminated by stopping pulling from its input sources and processing any data that remained in-flight when draining was requested. This state is a terminal state, may only be set by the Cloud Dataflow service, and only as a transition from @JOB_STATE_DRAINING@.
pattern Job_RequestedState_JOBSTATEDRAINED :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEDRAINED = Job_RequestedState "JOB_STATE_DRAINED"

-- | @JOB_STATE_PENDING@ indicates that the job has been created but is not yet running. Jobs that are pending may only transition to @JOB_STATE_RUNNING@, or @JOB_STATE_FAILED@.
pattern Job_RequestedState_JOBSTATEPENDING :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEPENDING = Job_RequestedState "JOB_STATE_PENDING"

-- | @JOB_STATE_CANCELLING@ indicates that the job has been explicitly cancelled and is in the process of stopping. Jobs that are cancelling may only transition to @JOB_STATE_CANCELLED@ or @JOB_STATE_FAILED@.
pattern Job_RequestedState_JOBSTATECANCELLING :: Job_RequestedState
pattern Job_RequestedState_JOBSTATECANCELLING = Job_RequestedState "JOB_STATE_CANCELLING"

-- | @JOB_STATE_QUEUED@ indicates that the job has been created but is being delayed until launch. Jobs that are queued may only transition to @JOB_STATE_PENDING@ or @JOB_STATE_CANCELLED@.
pattern Job_RequestedState_JOBSTATEQUEUED :: Job_RequestedState
pattern Job_RequestedState_JOBSTATEQUEUED = Job_RequestedState "JOB_STATE_QUEUED"

-- | @JOB_STATE_RESOURCE_CLEANING_UP@ indicates that the batch job\'s associated resources are currently being cleaned up after a successful run. Currently, this is an opt-in feature, please reach out to Cloud support team if you are interested.
pattern Job_RequestedState_JOBSTATERESOURCECLEANINGUP :: Job_RequestedState
pattern Job_RequestedState_JOBSTATERESOURCECLEANINGUP = Job_RequestedState "JOB_STATE_RESOURCE_CLEANING_UP"

{-# COMPLETE
  Job_RequestedState_JOBSTATEUNKNOWN,
  Job_RequestedState_JOBSTATESTOPPED,
  Job_RequestedState_JOBSTATERUNNING,
  Job_RequestedState_JOBSTATEDONE,
  Job_RequestedState_JOBSTATEFAILED,
  Job_RequestedState_JOBSTATECANCELLED,
  Job_RequestedState_JOBSTATEUPDATED,
  Job_RequestedState_JOBSTATEDRAINING,
  Job_RequestedState_JOBSTATEDRAINED,
  Job_RequestedState_JOBSTATEPENDING,
  Job_RequestedState_JOBSTATECANCELLING,
  Job_RequestedState_JOBSTATEQUEUED,
  Job_RequestedState_JOBSTATERESOURCECLEANINGUP,
  Job_RequestedState
  #-}

-- | Optional. The type of Dataflow job.
newtype Job_Type = Job_Type {fromJob_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The type of the job is unspecified, or unknown.
pattern Job_Type_JOBTYPEUNKNOWN :: Job_Type
pattern Job_Type_JOBTYPEUNKNOWN = Job_Type "JOB_TYPE_UNKNOWN"

-- | A batch job with a well-defined end point: data is read, data is processed, data is written, and the job is done.
pattern Job_Type_JOBTYPEBATCH :: Job_Type
pattern Job_Type_JOBTYPEBATCH = Job_Type "JOB_TYPE_BATCH"

-- | A continuously streaming job with no end: data is read, processed, and written continuously.
pattern Job_Type_JOBTYPESTREAMING :: Job_Type
pattern Job_Type_JOBTYPESTREAMING = Job_Type "JOB_TYPE_STREAMING"

{-# COMPLETE
  Job_Type_JOBTYPEUNKNOWN,
  Job_Type_JOBTYPEBATCH,
  Job_Type_JOBTYPESTREAMING,
  Job_Type
  #-}

-- | Importance level of the message.
newtype JobMessage_MessageImportance = JobMessage_MessageImportance {fromJobMessage_MessageImportance :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The message importance isn\'t specified, or is unknown.
pattern JobMessage_MessageImportance_JOBMESSAGEIMPORTANCEUNKNOWN :: JobMessage_MessageImportance
pattern JobMessage_MessageImportance_JOBMESSAGEIMPORTANCEUNKNOWN = JobMessage_MessageImportance "JOB_MESSAGE_IMPORTANCE_UNKNOWN"

-- | The message is at the \'debug\' level: typically only useful for software engineers working on the code the job is running. Typically, Dataflow pipeline runners do not display log messages at this level by default.
pattern JobMessage_MessageImportance_JOBMESSAGEDEBUG :: JobMessage_MessageImportance
pattern JobMessage_MessageImportance_JOBMESSAGEDEBUG = JobMessage_MessageImportance "JOB_MESSAGE_DEBUG"

-- | The message is at the \'detailed\' level: somewhat verbose, but potentially useful to users. Typically, Dataflow pipeline runners do not display log messages at this level by default. These messages are displayed by default in the Dataflow monitoring UI.
pattern JobMessage_MessageImportance_JOBMESSAGEDETAILED :: JobMessage_MessageImportance
pattern JobMessage_MessageImportance_JOBMESSAGEDETAILED = JobMessage_MessageImportance "JOB_MESSAGE_DETAILED"

-- | The message is at the \'basic\' level: useful for keeping track of the execution of a Dataflow pipeline. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern JobMessage_MessageImportance_JOBMESSAGEBASIC :: JobMessage_MessageImportance
pattern JobMessage_MessageImportance_JOBMESSAGEBASIC = JobMessage_MessageImportance "JOB_MESSAGE_BASIC"

-- | The message is at the \'warning\' level: indicating a condition pertaining to a job which may require human intervention. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern JobMessage_MessageImportance_JOBMESSAGEWARNING :: JobMessage_MessageImportance
pattern JobMessage_MessageImportance_JOBMESSAGEWARNING = JobMessage_MessageImportance "JOB_MESSAGE_WARNING"

-- | The message is at the \'error\' level: indicating a condition preventing a job from succeeding. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern JobMessage_MessageImportance_JOBMESSAGEERROR :: JobMessage_MessageImportance
pattern JobMessage_MessageImportance_JOBMESSAGEERROR = JobMessage_MessageImportance "JOB_MESSAGE_ERROR"

{-# COMPLETE
  JobMessage_MessageImportance_JOBMESSAGEIMPORTANCEUNKNOWN,
  JobMessage_MessageImportance_JOBMESSAGEDEBUG,
  JobMessage_MessageImportance_JOBMESSAGEDETAILED,
  JobMessage_MessageImportance_JOBMESSAGEBASIC,
  JobMessage_MessageImportance_JOBMESSAGEWARNING,
  JobMessage_MessageImportance_JOBMESSAGEERROR,
  JobMessage_MessageImportance
  #-}

-- | Counter aggregation kind.
newtype NameAndKind_Kind = NameAndKind_Kind {fromNameAndKind_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Counter aggregation kind was not set.
pattern NameAndKind_Kind_Invalid :: NameAndKind_Kind
pattern NameAndKind_Kind_Invalid = NameAndKind_Kind "INVALID"

-- | Aggregated value is the sum of all contributed values.
pattern NameAndKind_Kind_Sum :: NameAndKind_Kind
pattern NameAndKind_Kind_Sum = NameAndKind_Kind "SUM"

-- | Aggregated value is the max of all contributed values.
pattern NameAndKind_Kind_Max :: NameAndKind_Kind
pattern NameAndKind_Kind_Max = NameAndKind_Kind "MAX"

-- | Aggregated value is the min of all contributed values.
pattern NameAndKind_Kind_Min :: NameAndKind_Kind
pattern NameAndKind_Kind_Min = NameAndKind_Kind "MIN"

-- | Aggregated value is the mean of all contributed values.
pattern NameAndKind_Kind_Mean :: NameAndKind_Kind
pattern NameAndKind_Kind_Mean = NameAndKind_Kind "MEAN"

-- | Aggregated value represents the logical \'or\' of all contributed values.
pattern NameAndKind_Kind_OR :: NameAndKind_Kind
pattern NameAndKind_Kind_OR = NameAndKind_Kind "OR"

-- | Aggregated value represents the logical \'and\' of all contributed values.
pattern NameAndKind_Kind_And :: NameAndKind_Kind
pattern NameAndKind_Kind_And = NameAndKind_Kind "AND"

-- | Aggregated value is a set of unique contributed values.
pattern NameAndKind_Kind_Set :: NameAndKind_Kind
pattern NameAndKind_Kind_Set = NameAndKind_Kind "SET"

-- | Aggregated value captures statistics about a distribution.
pattern NameAndKind_Kind_Distribution :: NameAndKind_Kind
pattern NameAndKind_Kind_Distribution = NameAndKind_Kind "DISTRIBUTION"

-- | Aggregated value tracks the latest value of a variable.
pattern NameAndKind_Kind_LATESTVALUE :: NameAndKind_Kind
pattern NameAndKind_Kind_LATESTVALUE = NameAndKind_Kind "LATEST_VALUE"

{-# COMPLETE
  NameAndKind_Kind_Invalid,
  NameAndKind_Kind_Sum,
  NameAndKind_Kind_Max,
  NameAndKind_Kind_Min,
  NameAndKind_Kind_Mean,
  NameAndKind_Kind_OR,
  NameAndKind_Kind_And,
  NameAndKind_Kind_Set,
  NameAndKind_Kind_Distribution,
  NameAndKind_Kind_LATESTVALUE,
  NameAndKind_Kind
  #-}

-- | Optional. The type of the parameter. Used for selecting input picker.
newtype ParameterMetadata_ParamType = ParameterMetadata_ParamType {fromParameterMetadata_ParamType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default input type.
pattern ParameterMetadata_ParamType_Default :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_Default = ParameterMetadata_ParamType "DEFAULT"

-- | The parameter specifies generic text input.
pattern ParameterMetadata_ParamType_Text :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_Text = ParameterMetadata_ParamType "TEXT"

-- | The parameter specifies a Cloud Storage Bucket to read from.
pattern ParameterMetadata_ParamType_GCSREADBUCKET :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_GCSREADBUCKET = ParameterMetadata_ParamType "GCS_READ_BUCKET"

-- | The parameter specifies a Cloud Storage Bucket to write to.
pattern ParameterMetadata_ParamType_GCSWRITEBUCKET :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_GCSWRITEBUCKET = ParameterMetadata_ParamType "GCS_WRITE_BUCKET"

-- | The parameter specifies a Cloud Storage file path to read from.
pattern ParameterMetadata_ParamType_GCSREADFILE :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_GCSREADFILE = ParameterMetadata_ParamType "GCS_READ_FILE"

-- | The parameter specifies a Cloud Storage file path to write to.
pattern ParameterMetadata_ParamType_GCSWRITEFILE :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_GCSWRITEFILE = ParameterMetadata_ParamType "GCS_WRITE_FILE"

-- | The parameter specifies a Cloud Storage folder path to read from.
pattern ParameterMetadata_ParamType_GCSREADFOLDER :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_GCSREADFOLDER = ParameterMetadata_ParamType "GCS_READ_FOLDER"

-- | The parameter specifies a Cloud Storage folder to write to.
pattern ParameterMetadata_ParamType_GCSWRITEFOLDER :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_GCSWRITEFOLDER = ParameterMetadata_ParamType "GCS_WRITE_FOLDER"

-- | The parameter specifies a Pub\/Sub Topic.
pattern ParameterMetadata_ParamType_PUBSUBTOPIC :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_PUBSUBTOPIC = ParameterMetadata_ParamType "PUBSUB_TOPIC"

-- | The parameter specifies a Pub\/Sub Subscription.
pattern ParameterMetadata_ParamType_PUBSUBSUBSCRIPTION :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_PUBSUBSUBSCRIPTION = ParameterMetadata_ParamType "PUBSUB_SUBSCRIPTION"

-- | The parameter specifies a BigQuery table.
pattern ParameterMetadata_ParamType_BIGQUERYTABLE :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_BIGQUERYTABLE = ParameterMetadata_ParamType "BIGQUERY_TABLE"

-- | The parameter specifies a JavaScript UDF in Cloud Storage.
pattern ParameterMetadata_ParamType_JAVASCRIPTUDFFILE :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_JAVASCRIPTUDFFILE = ParameterMetadata_ParamType "JAVASCRIPT_UDF_FILE"

-- | The parameter specifies a Service Account email.
pattern ParameterMetadata_ParamType_SERVICEACCOUNT :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_SERVICEACCOUNT = ParameterMetadata_ParamType "SERVICE_ACCOUNT"

-- | The parameter specifies a Machine Type.
pattern ParameterMetadata_ParamType_MACHINETYPE :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_MACHINETYPE = ParameterMetadata_ParamType "MACHINE_TYPE"

-- | The parameter specifies a KMS Key name.
pattern ParameterMetadata_ParamType_KMSKEYNAME :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_KMSKEYNAME = ParameterMetadata_ParamType "KMS_KEY_NAME"

-- | The parameter specifies a Worker Region.
pattern ParameterMetadata_ParamType_WORKERREGION :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_WORKERREGION = ParameterMetadata_ParamType "WORKER_REGION"

-- | The parameter specifies a Worker Zone.
pattern ParameterMetadata_ParamType_WORKERZONE :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_WORKERZONE = ParameterMetadata_ParamType "WORKER_ZONE"

-- | The parameter specifies a boolean input.
pattern ParameterMetadata_ParamType_Boolean :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_Boolean = ParameterMetadata_ParamType "BOOLEAN"

-- | The parameter specifies an enum input.
pattern ParameterMetadata_ParamType_Enum' :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_Enum' = ParameterMetadata_ParamType "ENUM"

-- | The parameter specifies a number input.
pattern ParameterMetadata_ParamType_Number :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_Number = ParameterMetadata_ParamType "NUMBER"

-- | Deprecated. Please use KAFKA/READ/TOPIC instead.
pattern ParameterMetadata_ParamType_KAFKATOPIC :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_KAFKATOPIC = ParameterMetadata_ParamType "KAFKA_TOPIC"

-- | The parameter specifies the fully-qualified name of an Apache Kafka topic. This can be either a Google Managed Kafka topic or a non-managed Kafka topic.
pattern ParameterMetadata_ParamType_KAFKAREADTOPIC :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_KAFKAREADTOPIC = ParameterMetadata_ParamType "KAFKA_READ_TOPIC"

-- | The parameter specifies the fully-qualified name of an Apache Kafka topic. This can be an existing Google Managed Kafka topic, the name for a new Google Managed Kafka topic, or an existing non-managed Kafka topic.
pattern ParameterMetadata_ParamType_KAFKAWRITETOPIC :: ParameterMetadata_ParamType
pattern ParameterMetadata_ParamType_KAFKAWRITETOPIC = ParameterMetadata_ParamType "KAFKA_WRITE_TOPIC"

{-# COMPLETE
  ParameterMetadata_ParamType_Default,
  ParameterMetadata_ParamType_Text,
  ParameterMetadata_ParamType_GCSREADBUCKET,
  ParameterMetadata_ParamType_GCSWRITEBUCKET,
  ParameterMetadata_ParamType_GCSREADFILE,
  ParameterMetadata_ParamType_GCSWRITEFILE,
  ParameterMetadata_ParamType_GCSREADFOLDER,
  ParameterMetadata_ParamType_GCSWRITEFOLDER,
  ParameterMetadata_ParamType_PUBSUBTOPIC,
  ParameterMetadata_ParamType_PUBSUBSUBSCRIPTION,
  ParameterMetadata_ParamType_BIGQUERYTABLE,
  ParameterMetadata_ParamType_JAVASCRIPTUDFFILE,
  ParameterMetadata_ParamType_SERVICEACCOUNT,
  ParameterMetadata_ParamType_MACHINETYPE,
  ParameterMetadata_ParamType_KMSKEYNAME,
  ParameterMetadata_ParamType_WORKERREGION,
  ParameterMetadata_ParamType_WORKERZONE,
  ParameterMetadata_ParamType_Boolean,
  ParameterMetadata_ParamType_Enum',
  ParameterMetadata_ParamType_Number,
  ParameterMetadata_ParamType_KAFKATOPIC,
  ParameterMetadata_ParamType_KAFKAREADTOPIC,
  ParameterMetadata_ParamType_KAFKAWRITETOPIC,
  ParameterMetadata_ParamType
  #-}

-- | Optional. Configuration for VM IPs.
newtype RuntimeEnvironment_IpConfiguration = RuntimeEnvironment_IpConfiguration {fromRuntimeEnvironment_IpConfiguration :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The configuration is unknown, or unspecified.
pattern RuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED :: RuntimeEnvironment_IpConfiguration
pattern RuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED = RuntimeEnvironment_IpConfiguration "WORKER_IP_UNSPECIFIED"

-- | Workers should have public IP addresses.
pattern RuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC :: RuntimeEnvironment_IpConfiguration
pattern RuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC = RuntimeEnvironment_IpConfiguration "WORKER_IP_PUBLIC"

-- | Workers should have private IP addresses.
pattern RuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE :: RuntimeEnvironment_IpConfiguration
pattern RuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE = RuntimeEnvironment_IpConfiguration "WORKER_IP_PRIVATE"

{-# COMPLETE
  RuntimeEnvironment_IpConfiguration_WORKERIPUNSPECIFIED,
  RuntimeEnvironment_IpConfiguration_WORKERIPPUBLIC,
  RuntimeEnvironment_IpConfiguration_WORKERIPPRIVATE,
  RuntimeEnvironment_IpConfiguration
  #-}

-- | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency but might result in duplicate messages committed to storage. Designed to run simple mapping streaming ETL jobs at the lowest cost. For example, Change Data Capture (CDC) to BigQuery is a canonical use case. For more information, see <https://cloud.google.com/dataflow/docs/guides/streaming-modes Set the pipeline streaming mode>.
newtype RuntimeEnvironment_StreamingMode = RuntimeEnvironment_StreamingMode {fromRuntimeEnvironment_StreamingMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Run in the default mode.
pattern RuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED :: RuntimeEnvironment_StreamingMode
pattern RuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED = RuntimeEnvironment_StreamingMode "STREAMING_MODE_UNSPECIFIED"

-- | In this mode, message deduplication is performed against persistent state to make sure each message is processed and committed to storage exactly once.
pattern RuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE :: RuntimeEnvironment_StreamingMode
pattern RuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE = RuntimeEnvironment_StreamingMode "STREAMING_MODE_EXACTLY_ONCE"

-- | Message deduplication is not performed. Messages might be processed multiple times, and the results are applied multiple times. Note: Setting this value also enables Streaming Engine and Streaming Engine resource-based billing.
pattern RuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE :: RuntimeEnvironment_StreamingMode
pattern RuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE = RuntimeEnvironment_StreamingMode "STREAMING_MODE_AT_LEAST_ONCE"

{-# COMPLETE
  RuntimeEnvironment_StreamingMode_STREAMINGMODEUNSPECIFIED,
  RuntimeEnvironment_StreamingMode_STREAMINGMODEEXACTLYONCE,
  RuntimeEnvironment_StreamingMode_STREAMINGMODEATLEASTONCE,
  RuntimeEnvironment_StreamingMode
  #-}

-- | Required. The SDK Language.
newtype SDKInfo_Language = SDKInfo_Language {fromSDKInfo_Language :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | UNKNOWN Language.
pattern SDKInfo_Language_Unknown :: SDKInfo_Language
pattern SDKInfo_Language_Unknown = SDKInfo_Language "UNKNOWN"

-- | Java.
pattern SDKInfo_Language_Java :: SDKInfo_Language
pattern SDKInfo_Language_Java = SDKInfo_Language "JAVA"

-- | Python.
pattern SDKInfo_Language_Python :: SDKInfo_Language
pattern SDKInfo_Language_Python = SDKInfo_Language "PYTHON"

-- | Go.
pattern SDKInfo_Language_GO :: SDKInfo_Language
pattern SDKInfo_Language_GO = SDKInfo_Language "GO"

-- | YAML.
pattern SDKInfo_Language_Yaml :: SDKInfo_Language
pattern SDKInfo_Language_Yaml = SDKInfo_Language "YAML"

{-# COMPLETE
  SDKInfo_Language_Unknown,
  SDKInfo_Language_Java,
  SDKInfo_Language_Python,
  SDKInfo_Language_GO,
  SDKInfo_Language_Yaml,
  SDKInfo_Language
  #-}

-- | Output only. How severe the SDK bug is.
newtype SdkBug_Severity = SdkBug_Severity {fromSdkBug_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A bug of unknown severity.
pattern SdkBug_Severity_SEVERITYUNSPECIFIED :: SdkBug_Severity
pattern SdkBug_Severity_SEVERITYUNSPECIFIED = SdkBug_Severity "SEVERITY_UNSPECIFIED"

-- | A minor bug that that may reduce reliability or performance for some jobs. Impact will be minimal or non-existent for most jobs.
pattern SdkBug_Severity_Notice :: SdkBug_Severity
pattern SdkBug_Severity_Notice = SdkBug_Severity "NOTICE"

-- | A bug that has some likelihood of causing performance degradation, data loss, or job failures.
pattern SdkBug_Severity_Warning :: SdkBug_Severity
pattern SdkBug_Severity_Warning = SdkBug_Severity "WARNING"

-- | A bug with extremely significant impact. Jobs may fail erroneously, performance may be severely degraded, and data loss may be very likely.
pattern SdkBug_Severity_Severe :: SdkBug_Severity
pattern SdkBug_Severity_Severe = SdkBug_Severity "SEVERE"

{-# COMPLETE
  SdkBug_Severity_SEVERITYUNSPECIFIED,
  SdkBug_Severity_Notice,
  SdkBug_Severity_Warning,
  SdkBug_Severity_Severe,
  SdkBug_Severity
  #-}

-- | Output only. Describes the impact of this SDK bug.
newtype SdkBug_Type = SdkBug_Type {fromSdkBug_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown issue with this SDK.
pattern SdkBug_Type_TYPEUNSPECIFIED :: SdkBug_Type
pattern SdkBug_Type_TYPEUNSPECIFIED = SdkBug_Type "TYPE_UNSPECIFIED"

-- | Catch-all for SDK bugs that don\'t fit in the below categories.
pattern SdkBug_Type_General :: SdkBug_Type
pattern SdkBug_Type_General = SdkBug_Type "GENERAL"

-- | Using this version of the SDK may result in degraded performance.
pattern SdkBug_Type_Performance :: SdkBug_Type
pattern SdkBug_Type_Performance = SdkBug_Type "PERFORMANCE"

-- | Using this version of the SDK may cause data loss.
pattern SdkBug_Type_Dataloss :: SdkBug_Type
pattern SdkBug_Type_Dataloss = SdkBug_Type "DATALOSS"

{-# COMPLETE
  SdkBug_Type_TYPEUNSPECIFIED,
  SdkBug_Type_General,
  SdkBug_Type_Performance,
  SdkBug_Type_Dataloss,
  SdkBug_Type
  #-}

-- | The support status for this SDK version.
newtype SdkVersion_SdkSupportStatus = SdkVersion_SdkSupportStatus {fromSdkVersion_SdkSupportStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Cloud Dataflow is unaware of this version.
pattern SdkVersion_SdkSupportStatus_Unknown :: SdkVersion_SdkSupportStatus
pattern SdkVersion_SdkSupportStatus_Unknown = SdkVersion_SdkSupportStatus "UNKNOWN"

-- | This is a known version of an SDK, and is supported.
pattern SdkVersion_SdkSupportStatus_Supported :: SdkVersion_SdkSupportStatus
pattern SdkVersion_SdkSupportStatus_Supported = SdkVersion_SdkSupportStatus "SUPPORTED"

-- | A newer version of the SDK family exists, and an update is recommended.
pattern SdkVersion_SdkSupportStatus_Stale :: SdkVersion_SdkSupportStatus
pattern SdkVersion_SdkSupportStatus_Stale = SdkVersion_SdkSupportStatus "STALE"

-- | This version of the SDK is deprecated and will eventually be unsupported.
pattern SdkVersion_SdkSupportStatus_Deprecated :: SdkVersion_SdkSupportStatus
pattern SdkVersion_SdkSupportStatus_Deprecated = SdkVersion_SdkSupportStatus "DEPRECATED"

-- | Support for this SDK version has ended and it should no longer be used.
pattern SdkVersion_SdkSupportStatus_Unsupported :: SdkVersion_SdkSupportStatus
pattern SdkVersion_SdkSupportStatus_Unsupported = SdkVersion_SdkSupportStatus "UNSUPPORTED"

{-# COMPLETE
  SdkVersion_SdkSupportStatus_Unknown,
  SdkVersion_SdkSupportStatus_Supported,
  SdkVersion_SdkSupportStatus_Stale,
  SdkVersion_SdkSupportStatus_Deprecated,
  SdkVersion_SdkSupportStatus_Unsupported,
  SdkVersion_SdkSupportStatus
  #-}

-- | Format for the data field above (id=5).
newtype SendDebugCaptureRequest_DataFormat = SendDebugCaptureRequest_DataFormat {fromSendDebugCaptureRequest_DataFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Format unspecified, parsing is determined based upon page type and legacy encoding. (go\/protodosdonts#do-include-an-unspecified-value-in-an-enum)
pattern SendDebugCaptureRequest_DataFormat_DATAFORMATUNSPECIFIED :: SendDebugCaptureRequest_DataFormat
pattern SendDebugCaptureRequest_DataFormat_DATAFORMATUNSPECIFIED = SendDebugCaptureRequest_DataFormat "DATA_FORMAT_UNSPECIFIED"

-- | Raw HTML string.
pattern SendDebugCaptureRequest_DataFormat_Raw :: SendDebugCaptureRequest_DataFormat
pattern SendDebugCaptureRequest_DataFormat_Raw = SendDebugCaptureRequest_DataFormat "RAW"

-- | JSON-encoded string.
pattern SendDebugCaptureRequest_DataFormat_Json :: SendDebugCaptureRequest_DataFormat
pattern SendDebugCaptureRequest_DataFormat_Json = SendDebugCaptureRequest_DataFormat "JSON"

-- | Websafe encoded zlib-compressed string.
pattern SendDebugCaptureRequest_DataFormat_Zlib :: SendDebugCaptureRequest_DataFormat
pattern SendDebugCaptureRequest_DataFormat_Zlib = SendDebugCaptureRequest_DataFormat "ZLIB"

-- | Websafe encoded brotli-compressed string.
pattern SendDebugCaptureRequest_DataFormat_Brotli :: SendDebugCaptureRequest_DataFormat
pattern SendDebugCaptureRequest_DataFormat_Brotli = SendDebugCaptureRequest_DataFormat "BROTLI"

{-# COMPLETE
  SendDebugCaptureRequest_DataFormat_DATAFORMATUNSPECIFIED,
  SendDebugCaptureRequest_DataFormat_Raw,
  SendDebugCaptureRequest_DataFormat_Json,
  SendDebugCaptureRequest_DataFormat_Zlib,
  SendDebugCaptureRequest_DataFormat_Brotli,
  SendDebugCaptureRequest_DataFormat
  #-}

-- | State of the snapshot.
newtype Snapshot_State = Snapshot_State {fromSnapshot_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown state.
pattern Snapshot_State_UNKNOWNSNAPSHOTSTATE :: Snapshot_State
pattern Snapshot_State_UNKNOWNSNAPSHOTSTATE = Snapshot_State "UNKNOWN_SNAPSHOT_STATE"

-- | Snapshot intent to create has been persisted, snapshotting of state has not yet started.
pattern Snapshot_State_Pending :: Snapshot_State
pattern Snapshot_State_Pending = Snapshot_State "PENDING"

-- | Snapshotting is being performed.
pattern Snapshot_State_Running :: Snapshot_State
pattern Snapshot_State_Running = Snapshot_State "RUNNING"

-- | Snapshot has been created and is ready to be used.
pattern Snapshot_State_Ready :: Snapshot_State
pattern Snapshot_State_Ready = Snapshot_State "READY"

-- | Snapshot failed to be created.
pattern Snapshot_State_Failed :: Snapshot_State
pattern Snapshot_State_Failed = Snapshot_State "FAILED"

-- | Snapshot has been deleted.
pattern Snapshot_State_Deleted :: Snapshot_State
pattern Snapshot_State_Deleted = Snapshot_State "DELETED"

{-# COMPLETE
  Snapshot_State_UNKNOWNSNAPSHOTSTATE,
  Snapshot_State_Pending,
  Snapshot_State_Running,
  Snapshot_State_Ready,
  Snapshot_State_Failed,
  Snapshot_State_Deleted,
  Snapshot_State
  #-}

-- | Indicates whether splitting happened and produced a list of bundles. If this is USE/CURRENT/SOURCE/AS/IS, the current source should be processed \"as is\" without splitting. \"bundles\" is ignored in this case. If this is SPLITTING_HAPPENED, then \"bundles\" contains a list of bundles into which the source was split.
newtype SourceSplitResponse_Outcome = SourceSplitResponse_Outcome {fromSourceSplitResponse_Outcome :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The source split outcome is unknown, or unspecified.
pattern SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUNKNOWN :: SourceSplitResponse_Outcome
pattern SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUNKNOWN = SourceSplitResponse_Outcome "SOURCE_SPLIT_OUTCOME_UNKNOWN"

-- | The current source should be processed \"as is\" without splitting.
pattern SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUSECURRENT :: SourceSplitResponse_Outcome
pattern SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUSECURRENT = SourceSplitResponse_Outcome "SOURCE_SPLIT_OUTCOME_USE_CURRENT"

-- | Splitting produced a list of bundles.
pattern SourceSplitResponse_Outcome_SOURCESPLITOUTCOMESPLITTINGHAPPENED :: SourceSplitResponse_Outcome
pattern SourceSplitResponse_Outcome_SOURCESPLITOUTCOMESPLITTINGHAPPENED = SourceSplitResponse_Outcome "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED"

{-# COMPLETE
  SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUNKNOWN,
  SourceSplitResponse_Outcome_SOURCESPLITOUTCOMEUSECURRENT,
  SourceSplitResponse_Outcome_SOURCESPLITOUTCOMESPLITTINGHAPPENED,
  SourceSplitResponse_Outcome
  #-}

-- | DEPRECATED
newtype SourceSplitShard_DerivationMode = SourceSplitShard_DerivationMode {fromSourceSplitShard_DerivationMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The source derivation is unknown, or unspecified.
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN :: SourceSplitShard_DerivationMode
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN = SourceSplitShard_DerivationMode "SOURCE_DERIVATION_MODE_UNKNOWN"

-- | Produce a completely independent Source with no base.
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT :: SourceSplitShard_DerivationMode
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT = SourceSplitShard_DerivationMode "SOURCE_DERIVATION_MODE_INDEPENDENT"

-- | Produce a Source based on the Source being split.
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT :: SourceSplitShard_DerivationMode
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT = SourceSplitShard_DerivationMode "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT"

-- | Produce a Source based on the base of the Source being split.
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT :: SourceSplitShard_DerivationMode
pattern SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT = SourceSplitShard_DerivationMode "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT"

{-# COMPLETE
  SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEUNKNOWN,
  SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODEINDEPENDENT,
  SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODECHILDOFCURRENT,
  SourceSplitShard_DerivationMode_SOURCEDERIVATIONMODESIBLINGOFCURRENT,
  SourceSplitShard_DerivationMode
  #-}

-- | State of this stage.
newtype StageSummary_State = StageSummary_State {fromStageSummary_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The component state is unknown or unspecified.
pattern StageSummary_State_EXECUTIONSTATEUNKNOWN :: StageSummary_State
pattern StageSummary_State_EXECUTIONSTATEUNKNOWN = StageSummary_State "EXECUTION_STATE_UNKNOWN"

-- | The component is not yet running.
pattern StageSummary_State_EXECUTIONSTATENOTSTARTED :: StageSummary_State
pattern StageSummary_State_EXECUTIONSTATENOTSTARTED = StageSummary_State "EXECUTION_STATE_NOT_STARTED"

-- | The component is currently running.
pattern StageSummary_State_EXECUTIONSTATERUNNING :: StageSummary_State
pattern StageSummary_State_EXECUTIONSTATERUNNING = StageSummary_State "EXECUTION_STATE_RUNNING"

-- | The component succeeded.
pattern StageSummary_State_EXECUTIONSTATESUCCEEDED :: StageSummary_State
pattern StageSummary_State_EXECUTIONSTATESUCCEEDED = StageSummary_State "EXECUTION_STATE_SUCCEEDED"

-- | The component failed.
pattern StageSummary_State_EXECUTIONSTATEFAILED :: StageSummary_State
pattern StageSummary_State_EXECUTIONSTATEFAILED = StageSummary_State "EXECUTION_STATE_FAILED"

-- | Execution of the component was cancelled.
pattern StageSummary_State_EXECUTIONSTATECANCELLED :: StageSummary_State
pattern StageSummary_State_EXECUTIONSTATECANCELLED = StageSummary_State "EXECUTION_STATE_CANCELLED"

{-# COMPLETE
  StageSummary_State_EXECUTIONSTATEUNKNOWN,
  StageSummary_State_EXECUTIONSTATENOTSTARTED,
  StageSummary_State_EXECUTIONSTATERUNNING,
  StageSummary_State_EXECUTIONSTATESUCCEEDED,
  StageSummary_State_EXECUTIONSTATEFAILED,
  StageSummary_State_EXECUTIONSTATECANCELLED,
  StageSummary_State
  #-}

-- | A type of streaming computation task.
newtype StreamingComputationTask_TaskType = StreamingComputationTask_TaskType {fromStreamingComputationTask_TaskType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The streaming computation task is unknown, or unspecified.
pattern StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKUNKNOWN :: StreamingComputationTask_TaskType
pattern StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKUNKNOWN = StreamingComputationTask_TaskType "STREAMING_COMPUTATION_TASK_UNKNOWN"

-- | Stop processing specified streaming computation range(s).
pattern StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTOP :: StreamingComputationTask_TaskType
pattern StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTOP = StreamingComputationTask_TaskType "STREAMING_COMPUTATION_TASK_STOP"

-- | Start processing specified streaming computation range(s).
pattern StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTART :: StreamingComputationTask_TaskType
pattern StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTART = StreamingComputationTask_TaskType "STREAMING_COMPUTATION_TASK_START"

{-# COMPLETE
  StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKUNKNOWN,
  StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTOP,
  StreamingComputationTask_TaskType_STREAMINGCOMPUTATIONTASKSTART,
  StreamingComputationTask_TaskType
  #-}

-- | Type of transform.
newtype TransformSummary_Kind = TransformSummary_Kind {fromTransformSummary_Kind :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unrecognized transform type.
pattern TransformSummary_Kind_UNKNOWNKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_UNKNOWNKIND = TransformSummary_Kind "UNKNOWN_KIND"

-- | ParDo transform.
pattern TransformSummary_Kind_PARDOKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_PARDOKIND = TransformSummary_Kind "PAR_DO_KIND"

-- | Group By Key transform.
pattern TransformSummary_Kind_GROUPBYKEYKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_GROUPBYKEYKIND = TransformSummary_Kind "GROUP_BY_KEY_KIND"

-- | Flatten transform.
pattern TransformSummary_Kind_FLATTENKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_FLATTENKIND = TransformSummary_Kind "FLATTEN_KIND"

-- | Read transform.
pattern TransformSummary_Kind_READKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_READKIND = TransformSummary_Kind "READ_KIND"

-- | Write transform.
pattern TransformSummary_Kind_WRITEKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_WRITEKIND = TransformSummary_Kind "WRITE_KIND"

-- | Constructs from a constant value, such as with Create.of.
pattern TransformSummary_Kind_CONSTANTKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_CONSTANTKIND = TransformSummary_Kind "CONSTANT_KIND"

-- | Creates a Singleton view of a collection.
pattern TransformSummary_Kind_SINGLETONKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_SINGLETONKIND = TransformSummary_Kind "SINGLETON_KIND"

-- | Opening or closing a shuffle session, often as part of a GroupByKey.
pattern TransformSummary_Kind_SHUFFLEKIND :: TransformSummary_Kind
pattern TransformSummary_Kind_SHUFFLEKIND = TransformSummary_Kind "SHUFFLE_KIND"

{-# COMPLETE
  TransformSummary_Kind_UNKNOWNKIND,
  TransformSummary_Kind_PARDOKIND,
  TransformSummary_Kind_GROUPBYKEYKIND,
  TransformSummary_Kind_FLATTENKIND,
  TransformSummary_Kind_READKIND,
  TransformSummary_Kind_WRITEKIND,
  TransformSummary_Kind_CONSTANTKIND,
  TransformSummary_Kind_SINGLETONKIND,
  TransformSummary_Kind_SHUFFLEKIND,
  TransformSummary_Kind
  #-}

-- | State of this work item.
newtype WorkItemDetails_State = WorkItemDetails_State {fromWorkItemDetails_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The component state is unknown or unspecified.
pattern WorkItemDetails_State_EXECUTIONSTATEUNKNOWN :: WorkItemDetails_State
pattern WorkItemDetails_State_EXECUTIONSTATEUNKNOWN = WorkItemDetails_State "EXECUTION_STATE_UNKNOWN"

-- | The component is not yet running.
pattern WorkItemDetails_State_EXECUTIONSTATENOTSTARTED :: WorkItemDetails_State
pattern WorkItemDetails_State_EXECUTIONSTATENOTSTARTED = WorkItemDetails_State "EXECUTION_STATE_NOT_STARTED"

-- | The component is currently running.
pattern WorkItemDetails_State_EXECUTIONSTATERUNNING :: WorkItemDetails_State
pattern WorkItemDetails_State_EXECUTIONSTATERUNNING = WorkItemDetails_State "EXECUTION_STATE_RUNNING"

-- | The component succeeded.
pattern WorkItemDetails_State_EXECUTIONSTATESUCCEEDED :: WorkItemDetails_State
pattern WorkItemDetails_State_EXECUTIONSTATESUCCEEDED = WorkItemDetails_State "EXECUTION_STATE_SUCCEEDED"

-- | The component failed.
pattern WorkItemDetails_State_EXECUTIONSTATEFAILED :: WorkItemDetails_State
pattern WorkItemDetails_State_EXECUTIONSTATEFAILED = WorkItemDetails_State "EXECUTION_STATE_FAILED"

-- | Execution of the component was cancelled.
pattern WorkItemDetails_State_EXECUTIONSTATECANCELLED :: WorkItemDetails_State
pattern WorkItemDetails_State_EXECUTIONSTATECANCELLED = WorkItemDetails_State "EXECUTION_STATE_CANCELLED"

{-# COMPLETE
  WorkItemDetails_State_EXECUTIONSTATEUNKNOWN,
  WorkItemDetails_State_EXECUTIONSTATENOTSTARTED,
  WorkItemDetails_State_EXECUTIONSTATERUNNING,
  WorkItemDetails_State_EXECUTIONSTATESUCCEEDED,
  WorkItemDetails_State_EXECUTIONSTATEFAILED,
  WorkItemDetails_State_EXECUTIONSTATECANCELLED,
  WorkItemDetails_State
  #-}

-- | The event being reported.
newtype WorkerLifecycleEvent_Event = WorkerLifecycleEvent_Event {fromWorkerLifecycleEvent_Event :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid event.
pattern WorkerLifecycleEvent_Event_UNKNOWNEVENT :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_UNKNOWNEVENT = WorkerLifecycleEvent_Event "UNKNOWN_EVENT"

-- | The time the VM started.
pattern WorkerLifecycleEvent_Event_OSSTART :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_OSSTART = WorkerLifecycleEvent_Event "OS_START"

-- | Our container code starts running. Multiple containers could be distinguished with WorkerMessage.labels if desired.
pattern WorkerLifecycleEvent_Event_CONTAINERSTART :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_CONTAINERSTART = WorkerLifecycleEvent_Event "CONTAINER_START"

-- | The worker has a functional external network connection.
pattern WorkerLifecycleEvent_Event_NETWORKUP :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_NETWORKUP = WorkerLifecycleEvent_Event "NETWORK_UP"

-- | Started downloading staging files.
pattern WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADSTART :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADSTART = WorkerLifecycleEvent_Event "STAGING_FILES_DOWNLOAD_START"

-- | Finished downloading all staging files.
pattern WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADFINISH :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADFINISH = WorkerLifecycleEvent_Event "STAGING_FILES_DOWNLOAD_FINISH"

-- | For applicable SDKs, started installation of SDK and worker packages.
pattern WorkerLifecycleEvent_Event_SDKINSTALLSTART :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_SDKINSTALLSTART = WorkerLifecycleEvent_Event "SDK_INSTALL_START"

-- | Finished installing SDK.
pattern WorkerLifecycleEvent_Event_SDKINSTALLFINISH :: WorkerLifecycleEvent_Event
pattern WorkerLifecycleEvent_Event_SDKINSTALLFINISH = WorkerLifecycleEvent_Event "SDK_INSTALL_FINISH"

{-# COMPLETE
  WorkerLifecycleEvent_Event_UNKNOWNEVENT,
  WorkerLifecycleEvent_Event_OSSTART,
  WorkerLifecycleEvent_Event_CONTAINERSTART,
  WorkerLifecycleEvent_Event_NETWORKUP,
  WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADSTART,
  WorkerLifecycleEvent_Event_STAGINGFILESDOWNLOADFINISH,
  WorkerLifecycleEvent_Event_SDKINSTALLSTART,
  WorkerLifecycleEvent_Event_SDKINSTALLFINISH,
  WorkerLifecycleEvent_Event
  #-}

-- | The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.
newtype WorkerPool_DefaultPackageSet = WorkerPool_DefaultPackageSet {fromWorkerPool_DefaultPackageSet :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default set of packages to stage is unknown, or unspecified.
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETUNKNOWN :: WorkerPool_DefaultPackageSet
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETUNKNOWN = WorkerPool_DefaultPackageSet "DEFAULT_PACKAGE_SET_UNKNOWN"

-- | Indicates that no packages should be staged at the worker unless explicitly specified by the job.
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETNONE :: WorkerPool_DefaultPackageSet
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETNONE = WorkerPool_DefaultPackageSet "DEFAULT_PACKAGE_SET_NONE"

-- | Stage packages typically useful to workers written in Java.
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETJAVA :: WorkerPool_DefaultPackageSet
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETJAVA = WorkerPool_DefaultPackageSet "DEFAULT_PACKAGE_SET_JAVA"

-- | Stage packages typically useful to workers written in Python.
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETPYTHON :: WorkerPool_DefaultPackageSet
pattern WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETPYTHON = WorkerPool_DefaultPackageSet "DEFAULT_PACKAGE_SET_PYTHON"

{-# COMPLETE
  WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETUNKNOWN,
  WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETNONE,
  WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETJAVA,
  WorkerPool_DefaultPackageSet_DEFAULTPACKAGESETPYTHON,
  WorkerPool_DefaultPackageSet
  #-}

-- | Configuration for VM IPs.
newtype WorkerPool_IpConfiguration = WorkerPool_IpConfiguration {fromWorkerPool_IpConfiguration :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The configuration is unknown, or unspecified.
pattern WorkerPool_IpConfiguration_WORKERIPUNSPECIFIED :: WorkerPool_IpConfiguration
pattern WorkerPool_IpConfiguration_WORKERIPUNSPECIFIED = WorkerPool_IpConfiguration "WORKER_IP_UNSPECIFIED"

-- | Workers should have public IP addresses.
pattern WorkerPool_IpConfiguration_WORKERIPPUBLIC :: WorkerPool_IpConfiguration
pattern WorkerPool_IpConfiguration_WORKERIPPUBLIC = WorkerPool_IpConfiguration "WORKER_IP_PUBLIC"

-- | Workers should have private IP addresses.
pattern WorkerPool_IpConfiguration_WORKERIPPRIVATE :: WorkerPool_IpConfiguration
pattern WorkerPool_IpConfiguration_WORKERIPPRIVATE = WorkerPool_IpConfiguration "WORKER_IP_PRIVATE"

{-# COMPLETE
  WorkerPool_IpConfiguration_WORKERIPUNSPECIFIED,
  WorkerPool_IpConfiguration_WORKERIPPUBLIC,
  WorkerPool_IpConfiguration_WORKERIPPRIVATE,
  WorkerPool_IpConfiguration
  #-}

-- | Sets the policy for determining when to turndown worker pool. Allowed values are: @TEARDOWN_ALWAYS@, @TEARDOWN_ON_SUCCESS@, and @TEARDOWN_NEVER@. @TEARDOWN_ALWAYS@ means workers are always torn down regardless of whether the job succeeds. @TEARDOWN_ON_SUCCESS@ means workers are torn down if the job succeeds. @TEARDOWN_NEVER@ means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user\'s project until they are explicitly terminated by the user. Because of this, Google recommends using the @TEARDOWN_ALWAYS@ policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.
newtype WorkerPool_TeardownPolicy = WorkerPool_TeardownPolicy {fromWorkerPool_TeardownPolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The teardown policy isn\'t specified, or is unknown.
pattern WorkerPool_TeardownPolicy_TEARDOWNPOLICYUNKNOWN :: WorkerPool_TeardownPolicy
pattern WorkerPool_TeardownPolicy_TEARDOWNPOLICYUNKNOWN = WorkerPool_TeardownPolicy "TEARDOWN_POLICY_UNKNOWN"

-- | Always teardown the resource.
pattern WorkerPool_TeardownPolicy_TEARDOWNALWAYS :: WorkerPool_TeardownPolicy
pattern WorkerPool_TeardownPolicy_TEARDOWNALWAYS = WorkerPool_TeardownPolicy "TEARDOWN_ALWAYS"

-- | Teardown the resource on success. This is useful for debugging failures.
pattern WorkerPool_TeardownPolicy_TEARDOWNONSUCCESS :: WorkerPool_TeardownPolicy
pattern WorkerPool_TeardownPolicy_TEARDOWNONSUCCESS = WorkerPool_TeardownPolicy "TEARDOWN_ON_SUCCESS"

-- | Never teardown the resource. This is useful for debugging and development.
pattern WorkerPool_TeardownPolicy_TEARDOWNNEVER :: WorkerPool_TeardownPolicy
pattern WorkerPool_TeardownPolicy_TEARDOWNNEVER = WorkerPool_TeardownPolicy "TEARDOWN_NEVER"

{-# COMPLETE
  WorkerPool_TeardownPolicy_TEARDOWNPOLICYUNKNOWN,
  WorkerPool_TeardownPolicy_TEARDOWNALWAYS,
  WorkerPool_TeardownPolicy_TEARDOWNONSUCCESS,
  WorkerPool_TeardownPolicy_TEARDOWNNEVER,
  WorkerPool_TeardownPolicy
  #-}

-- | The kind of filter to use.
newtype ProjectsJobsAggregatedFilter = ProjectsJobsAggregatedFilter {fromProjectsJobsAggregatedFilter :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The filter isn\'t specified, or is unknown. This returns all jobs ordered on descending @JobUuid@.
pattern ProjectsJobsAggregatedFilter_Unknown :: ProjectsJobsAggregatedFilter
pattern ProjectsJobsAggregatedFilter_Unknown = ProjectsJobsAggregatedFilter "UNKNOWN"

-- | Returns all running jobs first ordered on creation timestamp, then returns all terminated jobs ordered on the termination timestamp.
pattern ProjectsJobsAggregatedFilter_All :: ProjectsJobsAggregatedFilter
pattern ProjectsJobsAggregatedFilter_All = ProjectsJobsAggregatedFilter "ALL"

-- | Filters the jobs that have a terminated state, ordered on the termination timestamp. Example terminated states: @JOB_STATE_STOPPED@, @JOB_STATE_UPDATED@, @JOB_STATE_DRAINED@, etc.
pattern ProjectsJobsAggregatedFilter_Terminated :: ProjectsJobsAggregatedFilter
pattern ProjectsJobsAggregatedFilter_Terminated = ProjectsJobsAggregatedFilter "TERMINATED"

-- | Filters the jobs that are running ordered on the creation timestamp.
pattern ProjectsJobsAggregatedFilter_Active :: ProjectsJobsAggregatedFilter
pattern ProjectsJobsAggregatedFilter_Active = ProjectsJobsAggregatedFilter "ACTIVE"

{-# COMPLETE
  ProjectsJobsAggregatedFilter_Unknown,
  ProjectsJobsAggregatedFilter_All,
  ProjectsJobsAggregatedFilter_Terminated,
  ProjectsJobsAggregatedFilter_Active,
  ProjectsJobsAggregatedFilter
  #-}

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.
newtype ProjectsJobsAggregatedView = ProjectsJobsAggregatedView {fromProjectsJobsAggregatedView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job view to return isn\'t specified, or is unknown. Responses will contain at least the @JOB_VIEW_SUMMARY@ information, and may contain additional information.
pattern ProjectsJobsAggregatedView_JOBVIEWUNKNOWN :: ProjectsJobsAggregatedView
pattern ProjectsJobsAggregatedView_JOBVIEWUNKNOWN = ProjectsJobsAggregatedView "JOB_VIEW_UNKNOWN"

-- | Request summary information only: Project ID, Job ID, job name, job type, job status, start\/end time, and Cloud SDK version details.
pattern ProjectsJobsAggregatedView_JOBVIEWSUMMARY :: ProjectsJobsAggregatedView
pattern ProjectsJobsAggregatedView_JOBVIEWSUMMARY = ProjectsJobsAggregatedView "JOB_VIEW_SUMMARY"

-- | Request all information available for this job. When the job is in @JOB_STATE_PENDING@, the job has been created but is not yet running, and not all job information is available. For complete job information, wait until the job in is @JOB_STATE_RUNNING@. For more information, see <https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate JobState>.
pattern ProjectsJobsAggregatedView_JOBVIEWALL :: ProjectsJobsAggregatedView
pattern ProjectsJobsAggregatedView_JOBVIEWALL = ProjectsJobsAggregatedView "JOB_VIEW_ALL"

-- | Request summary info and limited job description data for steps, labels and environment.
pattern ProjectsJobsAggregatedView_JOBVIEWDESCRIPTION :: ProjectsJobsAggregatedView
pattern ProjectsJobsAggregatedView_JOBVIEWDESCRIPTION = ProjectsJobsAggregatedView "JOB_VIEW_DESCRIPTION"

{-# COMPLETE
  ProjectsJobsAggregatedView_JOBVIEWUNKNOWN,
  ProjectsJobsAggregatedView_JOBVIEWSUMMARY,
  ProjectsJobsAggregatedView_JOBVIEWALL,
  ProjectsJobsAggregatedView_JOBVIEWDESCRIPTION,
  ProjectsJobsAggregatedView
  #-}

-- | The level of information requested in response.
newtype ProjectsJobsCreateView = ProjectsJobsCreateView {fromProjectsJobsCreateView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job view to return isn\'t specified, or is unknown. Responses will contain at least the @JOB_VIEW_SUMMARY@ information, and may contain additional information.
pattern ProjectsJobsCreateView_JOBVIEWUNKNOWN :: ProjectsJobsCreateView
pattern ProjectsJobsCreateView_JOBVIEWUNKNOWN = ProjectsJobsCreateView "JOB_VIEW_UNKNOWN"

-- | Request summary information only: Project ID, Job ID, job name, job type, job status, start\/end time, and Cloud SDK version details.
pattern ProjectsJobsCreateView_JOBVIEWSUMMARY :: ProjectsJobsCreateView
pattern ProjectsJobsCreateView_JOBVIEWSUMMARY = ProjectsJobsCreateView "JOB_VIEW_SUMMARY"

-- | Request all information available for this job. When the job is in @JOB_STATE_PENDING@, the job has been created but is not yet running, and not all job information is available. For complete job information, wait until the job in is @JOB_STATE_RUNNING@. For more information, see <https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate JobState>.
pattern ProjectsJobsCreateView_JOBVIEWALL :: ProjectsJobsCreateView
pattern ProjectsJobsCreateView_JOBVIEWALL = ProjectsJobsCreateView "JOB_VIEW_ALL"

-- | Request summary info and limited job description data for steps, labels and environment.
pattern ProjectsJobsCreateView_JOBVIEWDESCRIPTION :: ProjectsJobsCreateView
pattern ProjectsJobsCreateView_JOBVIEWDESCRIPTION = ProjectsJobsCreateView "JOB_VIEW_DESCRIPTION"

{-# COMPLETE
  ProjectsJobsCreateView_JOBVIEWUNKNOWN,
  ProjectsJobsCreateView_JOBVIEWSUMMARY,
  ProjectsJobsCreateView_JOBVIEWALL,
  ProjectsJobsCreateView_JOBVIEWDESCRIPTION,
  ProjectsJobsCreateView
  #-}

-- | The level of information requested in response.
newtype ProjectsJobsGetView = ProjectsJobsGetView {fromProjectsJobsGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job view to return isn\'t specified, or is unknown. Responses will contain at least the @JOB_VIEW_SUMMARY@ information, and may contain additional information.
pattern ProjectsJobsGetView_JOBVIEWUNKNOWN :: ProjectsJobsGetView
pattern ProjectsJobsGetView_JOBVIEWUNKNOWN = ProjectsJobsGetView "JOB_VIEW_UNKNOWN"

-- | Request summary information only: Project ID, Job ID, job name, job type, job status, start\/end time, and Cloud SDK version details.
pattern ProjectsJobsGetView_JOBVIEWSUMMARY :: ProjectsJobsGetView
pattern ProjectsJobsGetView_JOBVIEWSUMMARY = ProjectsJobsGetView "JOB_VIEW_SUMMARY"

-- | Request all information available for this job. When the job is in @JOB_STATE_PENDING@, the job has been created but is not yet running, and not all job information is available. For complete job information, wait until the job in is @JOB_STATE_RUNNING@. For more information, see <https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate JobState>.
pattern ProjectsJobsGetView_JOBVIEWALL :: ProjectsJobsGetView
pattern ProjectsJobsGetView_JOBVIEWALL = ProjectsJobsGetView "JOB_VIEW_ALL"

-- | Request summary info and limited job description data for steps, labels and environment.
pattern ProjectsJobsGetView_JOBVIEWDESCRIPTION :: ProjectsJobsGetView
pattern ProjectsJobsGetView_JOBVIEWDESCRIPTION = ProjectsJobsGetView "JOB_VIEW_DESCRIPTION"

{-# COMPLETE
  ProjectsJobsGetView_JOBVIEWUNKNOWN,
  ProjectsJobsGetView_JOBVIEWSUMMARY,
  ProjectsJobsGetView_JOBVIEWALL,
  ProjectsJobsGetView_JOBVIEWDESCRIPTION,
  ProjectsJobsGetView
  #-}

-- | The kind of filter to use.
newtype ProjectsJobsListFilter = ProjectsJobsListFilter {fromProjectsJobsListFilter :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The filter isn\'t specified, or is unknown. This returns all jobs ordered on descending @JobUuid@.
pattern ProjectsJobsListFilter_Unknown :: ProjectsJobsListFilter
pattern ProjectsJobsListFilter_Unknown = ProjectsJobsListFilter "UNKNOWN"

-- | Returns all running jobs first ordered on creation timestamp, then returns all terminated jobs ordered on the termination timestamp.
pattern ProjectsJobsListFilter_All :: ProjectsJobsListFilter
pattern ProjectsJobsListFilter_All = ProjectsJobsListFilter "ALL"

-- | Filters the jobs that have a terminated state, ordered on the termination timestamp. Example terminated states: @JOB_STATE_STOPPED@, @JOB_STATE_UPDATED@, @JOB_STATE_DRAINED@, etc.
pattern ProjectsJobsListFilter_Terminated :: ProjectsJobsListFilter
pattern ProjectsJobsListFilter_Terminated = ProjectsJobsListFilter "TERMINATED"

-- | Filters the jobs that are running ordered on the creation timestamp.
pattern ProjectsJobsListFilter_Active :: ProjectsJobsListFilter
pattern ProjectsJobsListFilter_Active = ProjectsJobsListFilter "ACTIVE"

{-# COMPLETE
  ProjectsJobsListFilter_Unknown,
  ProjectsJobsListFilter_All,
  ProjectsJobsListFilter_Terminated,
  ProjectsJobsListFilter_Active,
  ProjectsJobsListFilter
  #-}

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.
newtype ProjectsJobsListView = ProjectsJobsListView {fromProjectsJobsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job view to return isn\'t specified, or is unknown. Responses will contain at least the @JOB_VIEW_SUMMARY@ information, and may contain additional information.
pattern ProjectsJobsListView_JOBVIEWUNKNOWN :: ProjectsJobsListView
pattern ProjectsJobsListView_JOBVIEWUNKNOWN = ProjectsJobsListView "JOB_VIEW_UNKNOWN"

-- | Request summary information only: Project ID, Job ID, job name, job type, job status, start\/end time, and Cloud SDK version details.
pattern ProjectsJobsListView_JOBVIEWSUMMARY :: ProjectsJobsListView
pattern ProjectsJobsListView_JOBVIEWSUMMARY = ProjectsJobsListView "JOB_VIEW_SUMMARY"

-- | Request all information available for this job. When the job is in @JOB_STATE_PENDING@, the job has been created but is not yet running, and not all job information is available. For complete job information, wait until the job in is @JOB_STATE_RUNNING@. For more information, see <https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate JobState>.
pattern ProjectsJobsListView_JOBVIEWALL :: ProjectsJobsListView
pattern ProjectsJobsListView_JOBVIEWALL = ProjectsJobsListView "JOB_VIEW_ALL"

-- | Request summary info and limited job description data for steps, labels and environment.
pattern ProjectsJobsListView_JOBVIEWDESCRIPTION :: ProjectsJobsListView
pattern ProjectsJobsListView_JOBVIEWDESCRIPTION = ProjectsJobsListView "JOB_VIEW_DESCRIPTION"

{-# COMPLETE
  ProjectsJobsListView_JOBVIEWUNKNOWN,
  ProjectsJobsListView_JOBVIEWSUMMARY,
  ProjectsJobsListView_JOBVIEWALL,
  ProjectsJobsListView_JOBVIEWDESCRIPTION,
  ProjectsJobsListView
  #-}

-- | Filter to only get messages with importance >= level
newtype ProjectsJobsMessagesListMinimumImportance = ProjectsJobsMessagesListMinimumImportance {fromProjectsJobsMessagesListMinimumImportance :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The message importance isn\'t specified, or is unknown.
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN :: ProjectsJobsMessagesListMinimumImportance
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN = ProjectsJobsMessagesListMinimumImportance "JOB_MESSAGE_IMPORTANCE_UNKNOWN"

-- | The message is at the \'debug\' level: typically only useful for software engineers working on the code the job is running. Typically, Dataflow pipeline runners do not display log messages at this level by default.
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG :: ProjectsJobsMessagesListMinimumImportance
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG = ProjectsJobsMessagesListMinimumImportance "JOB_MESSAGE_DEBUG"

-- | The message is at the \'detailed\' level: somewhat verbose, but potentially useful to users. Typically, Dataflow pipeline runners do not display log messages at this level by default. These messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED :: ProjectsJobsMessagesListMinimumImportance
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED = ProjectsJobsMessagesListMinimumImportance "JOB_MESSAGE_DETAILED"

-- | The message is at the \'basic\' level: useful for keeping track of the execution of a Dataflow pipeline. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC :: ProjectsJobsMessagesListMinimumImportance
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC = ProjectsJobsMessagesListMinimumImportance "JOB_MESSAGE_BASIC"

-- | The message is at the \'warning\' level: indicating a condition pertaining to a job which may require human intervention. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING :: ProjectsJobsMessagesListMinimumImportance
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING = ProjectsJobsMessagesListMinimumImportance "JOB_MESSAGE_WARNING"

-- | The message is at the \'error\' level: indicating a condition preventing a job from succeeding. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEERROR :: ProjectsJobsMessagesListMinimumImportance
pattern ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEERROR = ProjectsJobsMessagesListMinimumImportance "JOB_MESSAGE_ERROR"

{-# COMPLETE
  ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN,
  ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG,
  ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED,
  ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC,
  ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING,
  ProjectsJobsMessagesListMinimumImportance_JOBMESSAGEERROR,
  ProjectsJobsMessagesListMinimumImportance
  #-}

-- | The level of information requested in response.
newtype ProjectsLocationsJobsCreateView = ProjectsLocationsJobsCreateView {fromProjectsLocationsJobsCreateView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job view to return isn\'t specified, or is unknown. Responses will contain at least the @JOB_VIEW_SUMMARY@ information, and may contain additional information.
pattern ProjectsLocationsJobsCreateView_JOBVIEWUNKNOWN :: ProjectsLocationsJobsCreateView
pattern ProjectsLocationsJobsCreateView_JOBVIEWUNKNOWN = ProjectsLocationsJobsCreateView "JOB_VIEW_UNKNOWN"

-- | Request summary information only: Project ID, Job ID, job name, job type, job status, start\/end time, and Cloud SDK version details.
pattern ProjectsLocationsJobsCreateView_JOBVIEWSUMMARY :: ProjectsLocationsJobsCreateView
pattern ProjectsLocationsJobsCreateView_JOBVIEWSUMMARY = ProjectsLocationsJobsCreateView "JOB_VIEW_SUMMARY"

-- | Request all information available for this job. When the job is in @JOB_STATE_PENDING@, the job has been created but is not yet running, and not all job information is available. For complete job information, wait until the job in is @JOB_STATE_RUNNING@. For more information, see <https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate JobState>.
pattern ProjectsLocationsJobsCreateView_JOBVIEWALL :: ProjectsLocationsJobsCreateView
pattern ProjectsLocationsJobsCreateView_JOBVIEWALL = ProjectsLocationsJobsCreateView "JOB_VIEW_ALL"

-- | Request summary info and limited job description data for steps, labels and environment.
pattern ProjectsLocationsJobsCreateView_JOBVIEWDESCRIPTION :: ProjectsLocationsJobsCreateView
pattern ProjectsLocationsJobsCreateView_JOBVIEWDESCRIPTION = ProjectsLocationsJobsCreateView "JOB_VIEW_DESCRIPTION"

{-# COMPLETE
  ProjectsLocationsJobsCreateView_JOBVIEWUNKNOWN,
  ProjectsLocationsJobsCreateView_JOBVIEWSUMMARY,
  ProjectsLocationsJobsCreateView_JOBVIEWALL,
  ProjectsLocationsJobsCreateView_JOBVIEWDESCRIPTION,
  ProjectsLocationsJobsCreateView
  #-}

-- | The level of information requested in response.
newtype ProjectsLocationsJobsGetView = ProjectsLocationsJobsGetView {fromProjectsLocationsJobsGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job view to return isn\'t specified, or is unknown. Responses will contain at least the @JOB_VIEW_SUMMARY@ information, and may contain additional information.
pattern ProjectsLocationsJobsGetView_JOBVIEWUNKNOWN :: ProjectsLocationsJobsGetView
pattern ProjectsLocationsJobsGetView_JOBVIEWUNKNOWN = ProjectsLocationsJobsGetView "JOB_VIEW_UNKNOWN"

-- | Request summary information only: Project ID, Job ID, job name, job type, job status, start\/end time, and Cloud SDK version details.
pattern ProjectsLocationsJobsGetView_JOBVIEWSUMMARY :: ProjectsLocationsJobsGetView
pattern ProjectsLocationsJobsGetView_JOBVIEWSUMMARY = ProjectsLocationsJobsGetView "JOB_VIEW_SUMMARY"

-- | Request all information available for this job. When the job is in @JOB_STATE_PENDING@, the job has been created but is not yet running, and not all job information is available. For complete job information, wait until the job in is @JOB_STATE_RUNNING@. For more information, see <https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate JobState>.
pattern ProjectsLocationsJobsGetView_JOBVIEWALL :: ProjectsLocationsJobsGetView
pattern ProjectsLocationsJobsGetView_JOBVIEWALL = ProjectsLocationsJobsGetView "JOB_VIEW_ALL"

-- | Request summary info and limited job description data for steps, labels and environment.
pattern ProjectsLocationsJobsGetView_JOBVIEWDESCRIPTION :: ProjectsLocationsJobsGetView
pattern ProjectsLocationsJobsGetView_JOBVIEWDESCRIPTION = ProjectsLocationsJobsGetView "JOB_VIEW_DESCRIPTION"

{-# COMPLETE
  ProjectsLocationsJobsGetView_JOBVIEWUNKNOWN,
  ProjectsLocationsJobsGetView_JOBVIEWSUMMARY,
  ProjectsLocationsJobsGetView_JOBVIEWALL,
  ProjectsLocationsJobsGetView_JOBVIEWDESCRIPTION,
  ProjectsLocationsJobsGetView
  #-}

-- | The kind of filter to use.
newtype ProjectsLocationsJobsListFilter = ProjectsLocationsJobsListFilter {fromProjectsLocationsJobsListFilter :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The filter isn\'t specified, or is unknown. This returns all jobs ordered on descending @JobUuid@.
pattern ProjectsLocationsJobsListFilter_Unknown :: ProjectsLocationsJobsListFilter
pattern ProjectsLocationsJobsListFilter_Unknown = ProjectsLocationsJobsListFilter "UNKNOWN"

-- | Returns all running jobs first ordered on creation timestamp, then returns all terminated jobs ordered on the termination timestamp.
pattern ProjectsLocationsJobsListFilter_All :: ProjectsLocationsJobsListFilter
pattern ProjectsLocationsJobsListFilter_All = ProjectsLocationsJobsListFilter "ALL"

-- | Filters the jobs that have a terminated state, ordered on the termination timestamp. Example terminated states: @JOB_STATE_STOPPED@, @JOB_STATE_UPDATED@, @JOB_STATE_DRAINED@, etc.
pattern ProjectsLocationsJobsListFilter_Terminated :: ProjectsLocationsJobsListFilter
pattern ProjectsLocationsJobsListFilter_Terminated = ProjectsLocationsJobsListFilter "TERMINATED"

-- | Filters the jobs that are running ordered on the creation timestamp.
pattern ProjectsLocationsJobsListFilter_Active :: ProjectsLocationsJobsListFilter
pattern ProjectsLocationsJobsListFilter_Active = ProjectsLocationsJobsListFilter "ACTIVE"

{-# COMPLETE
  ProjectsLocationsJobsListFilter_Unknown,
  ProjectsLocationsJobsListFilter_All,
  ProjectsLocationsJobsListFilter_Terminated,
  ProjectsLocationsJobsListFilter_Active,
  ProjectsLocationsJobsListFilter
  #-}

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.
newtype ProjectsLocationsJobsListView = ProjectsLocationsJobsListView {fromProjectsLocationsJobsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job view to return isn\'t specified, or is unknown. Responses will contain at least the @JOB_VIEW_SUMMARY@ information, and may contain additional information.
pattern ProjectsLocationsJobsListView_JOBVIEWUNKNOWN :: ProjectsLocationsJobsListView
pattern ProjectsLocationsJobsListView_JOBVIEWUNKNOWN = ProjectsLocationsJobsListView "JOB_VIEW_UNKNOWN"

-- | Request summary information only: Project ID, Job ID, job name, job type, job status, start\/end time, and Cloud SDK version details.
pattern ProjectsLocationsJobsListView_JOBVIEWSUMMARY :: ProjectsLocationsJobsListView
pattern ProjectsLocationsJobsListView_JOBVIEWSUMMARY = ProjectsLocationsJobsListView "JOB_VIEW_SUMMARY"

-- | Request all information available for this job. When the job is in @JOB_STATE_PENDING@, the job has been created but is not yet running, and not all job information is available. For complete job information, wait until the job in is @JOB_STATE_RUNNING@. For more information, see <https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate JobState>.
pattern ProjectsLocationsJobsListView_JOBVIEWALL :: ProjectsLocationsJobsListView
pattern ProjectsLocationsJobsListView_JOBVIEWALL = ProjectsLocationsJobsListView "JOB_VIEW_ALL"

-- | Request summary info and limited job description data for steps, labels and environment.
pattern ProjectsLocationsJobsListView_JOBVIEWDESCRIPTION :: ProjectsLocationsJobsListView
pattern ProjectsLocationsJobsListView_JOBVIEWDESCRIPTION = ProjectsLocationsJobsListView "JOB_VIEW_DESCRIPTION"

{-# COMPLETE
  ProjectsLocationsJobsListView_JOBVIEWUNKNOWN,
  ProjectsLocationsJobsListView_JOBVIEWSUMMARY,
  ProjectsLocationsJobsListView_JOBVIEWALL,
  ProjectsLocationsJobsListView_JOBVIEWDESCRIPTION,
  ProjectsLocationsJobsListView
  #-}

-- | Filter to only get messages with importance >= level
newtype ProjectsLocationsJobsMessagesListMinimumImportance = ProjectsLocationsJobsMessagesListMinimumImportance {fromProjectsLocationsJobsMessagesListMinimumImportance :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The message importance isn\'t specified, or is unknown.
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN :: ProjectsLocationsJobsMessagesListMinimumImportance
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN = ProjectsLocationsJobsMessagesListMinimumImportance "JOB_MESSAGE_IMPORTANCE_UNKNOWN"

-- | The message is at the \'debug\' level: typically only useful for software engineers working on the code the job is running. Typically, Dataflow pipeline runners do not display log messages at this level by default.
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG :: ProjectsLocationsJobsMessagesListMinimumImportance
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG = ProjectsLocationsJobsMessagesListMinimumImportance "JOB_MESSAGE_DEBUG"

-- | The message is at the \'detailed\' level: somewhat verbose, but potentially useful to users. Typically, Dataflow pipeline runners do not display log messages at this level by default. These messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED :: ProjectsLocationsJobsMessagesListMinimumImportance
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED = ProjectsLocationsJobsMessagesListMinimumImportance "JOB_MESSAGE_DETAILED"

-- | The message is at the \'basic\' level: useful for keeping track of the execution of a Dataflow pipeline. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC :: ProjectsLocationsJobsMessagesListMinimumImportance
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC = ProjectsLocationsJobsMessagesListMinimumImportance "JOB_MESSAGE_BASIC"

-- | The message is at the \'warning\' level: indicating a condition pertaining to a job which may require human intervention. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING :: ProjectsLocationsJobsMessagesListMinimumImportance
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING = ProjectsLocationsJobsMessagesListMinimumImportance "JOB_MESSAGE_WARNING"

-- | The message is at the \'error\' level: indicating a condition preventing a job from succeeding. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEERROR :: ProjectsLocationsJobsMessagesListMinimumImportance
pattern ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEERROR = ProjectsLocationsJobsMessagesListMinimumImportance "JOB_MESSAGE_ERROR"

{-# COMPLETE
  ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEIMPORTANCEUNKNOWN,
  ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDEBUG,
  ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEDETAILED,
  ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEBASIC,
  ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEWARNING,
  ProjectsLocationsJobsMessagesListMinimumImportance_JOBMESSAGEERROR,
  ProjectsLocationsJobsMessagesListMinimumImportance
  #-}

-- | The view to retrieve. Defaults to METADATA_ONLY.
newtype ProjectsLocationsTemplatesGetView = ProjectsLocationsTemplatesGetView {fromProjectsLocationsTemplatesGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Template view that retrieves only the metadata associated with the template.
pattern ProjectsLocationsTemplatesGetView_METADATAONLY :: ProjectsLocationsTemplatesGetView
pattern ProjectsLocationsTemplatesGetView_METADATAONLY = ProjectsLocationsTemplatesGetView "METADATA_ONLY"

{-# COMPLETE
  ProjectsLocationsTemplatesGetView_METADATAONLY,
  ProjectsLocationsTemplatesGetView
  #-}

-- | The view to retrieve. Defaults to METADATA_ONLY.
newtype ProjectsTemplatesGetView = ProjectsTemplatesGetView {fromProjectsTemplatesGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Template view that retrieves only the metadata associated with the template.
pattern ProjectsTemplatesGetView_METADATAONLY :: ProjectsTemplatesGetView
pattern ProjectsTemplatesGetView_METADATAONLY = ProjectsTemplatesGetView "METADATA_ONLY"

{-# COMPLETE
  ProjectsTemplatesGetView_METADATAONLY,
  ProjectsTemplatesGetView
  #-}
