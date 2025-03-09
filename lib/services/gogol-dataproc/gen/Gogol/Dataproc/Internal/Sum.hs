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
-- Module      : Gogol.Dataproc.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataproc.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AnalyzeOperationMetadata_AnalyzedWorkloadType
    AnalyzeOperationMetadata_AnalyzedWorkloadType
      ( AnalyzeOperationMetadata_AnalyzedWorkloadType_WORKLOADTYPEUNSPECIFIED,
        AnalyzeOperationMetadata_AnalyzedWorkloadType_Batch,
        ..
      ),

    -- * ApplicationInfo_ApplicationContextIngestionStatus
    ApplicationInfo_ApplicationContextIngestionStatus
      ( ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSUNSPECIFIED,
        ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSCOMPLETED,
        ..
      ),

    -- * ApplicationInfo_QuantileDataStatus
    ApplicationInfo_QuantileDataStatus
      ( ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSUNSPECIFIED,
        ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSCOMPLETED,
        ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSFAILED,
        ..
      ),

    -- * AutotuningConfig_ScenariosItem
    AutotuningConfig_ScenariosItem
      ( AutotuningConfig_ScenariosItem_SCENARIOUNSPECIFIED,
        AutotuningConfig_ScenariosItem_Scaling,
        AutotuningConfig_ScenariosItem_BROADCASTHASHJOIN,
        AutotuningConfig_ScenariosItem_Memory,
        ..
      ),

    -- * Batch_State
    Batch_State
      ( Batch_State_STATEUNSPECIFIED,
        Batch_State_Pending,
        Batch_State_Running,
        Batch_State_Cancelling,
        Batch_State_Cancelled,
        Batch_State_Succeeded,
        Batch_State_Failed,
        ..
      ),

    -- * BatchOperationMetadata_OperationType
    BatchOperationMetadata_OperationType
      ( BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED,
        BatchOperationMetadata_OperationType_Batch,
        ..
      ),

    -- * ClusterOperationStatus_State
    ClusterOperationStatus_State
      ( ClusterOperationStatus_State_Unknown,
        ClusterOperationStatus_State_Pending,
        ClusterOperationStatus_State_Running,
        ClusterOperationStatus_State_Done,
        ..
      ),

    -- * ClusterStatus_State
    ClusterStatus_State
      ( ClusterStatus_State_Unknown,
        ClusterStatus_State_Creating,
        ClusterStatus_State_Running,
        ClusterStatus_State_Error',
        ClusterStatus_State_ERRORDUETOUPDATE,
        ClusterStatus_State_Deleting,
        ClusterStatus_State_Updating,
        ClusterStatus_State_Stopping,
        ClusterStatus_State_Stopped,
        ClusterStatus_State_Starting,
        ClusterStatus_State_Repairing,
        ClusterStatus_State_Scheduled,
        ..
      ),

    -- * ClusterStatus_Substate
    ClusterStatus_Substate
      ( ClusterStatus_Substate_Unspecified,
        ClusterStatus_Substate_Unhealthy,
        ClusterStatus_Substate_STALESTATUS,
        ..
      ),

    -- * ClusterToRepair_ClusterRepairAction
    ClusterToRepair_ClusterRepairAction
      ( ClusterToRepair_ClusterRepairAction_CLUSTERREPAIRACTIONUNSPECIFIED,
        ClusterToRepair_ClusterRepairAction_REPAIRERRORDUETOUPDATECLUSTER,
        ..
      ),

    -- * DiagnoseClusterRequest_TarballAccess
    DiagnoseClusterRequest_TarballAccess
      ( DiagnoseClusterRequest_TarballAccess_TARBALLACCESSUNSPECIFIED,
        DiagnoseClusterRequest_TarballAccess_GOOGLECLOUDSUPPORT,
        DiagnoseClusterRequest_TarballAccess_GOOGLEDATAPROCDIAGNOSE,
        ..
      ),

    -- * GceClusterConfig_PrivateIpv6GoogleAccess
    GceClusterConfig_PrivateIpv6GoogleAccess
      ( GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
        GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK,
        GceClusterConfig_PrivateIpv6GoogleAccess_Outbound,
        GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional,
        ..
      ),

    -- * GkeNodePoolTarget_RolesItem
    GkeNodePoolTarget_RolesItem
      ( GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED,
        GkeNodePoolTarget_RolesItem_Default,
        GkeNodePoolTarget_RolesItem_Controller,
        GkeNodePoolTarget_RolesItem_SPARKDRIVER,
        GkeNodePoolTarget_RolesItem_SPARKEXECUTOR,
        ..
      ),

    -- * InstanceGroupConfig_Preemptibility
    InstanceGroupConfig_Preemptibility
      ( InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED,
        InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE,
        InstanceGroupConfig_Preemptibility_Preemptible,
        InstanceGroupConfig_Preemptibility_Spot,
        ..
      ),

    -- * JobData_Status
    JobData_Status
      ( JobData_Status_JOBEXECUTIONSTATUSUNSPECIFIED,
        JobData_Status_JOBEXECUTIONSTATUSRUNNING,
        JobData_Status_JOBEXECUTIONSTATUSSUCCEEDED,
        JobData_Status_JOBEXECUTIONSTATUSFAILED,
        JobData_Status_JOBEXECUTIONSTATUSUNKNOWN,
        ..
      ),

    -- * JobStatus_State
    JobStatus_State
      ( JobStatus_State_STATEUNSPECIFIED,
        JobStatus_State_Pending,
        JobStatus_State_SETUPDONE,
        JobStatus_State_Running,
        JobStatus_State_CANCELPENDING,
        JobStatus_State_CANCELSTARTED,
        JobStatus_State_Cancelled,
        JobStatus_State_Done,
        JobStatus_State_Error',
        JobStatus_State_ATTEMPTFAILURE,
        ..
      ),

    -- * JobStatus_Substate
    JobStatus_Substate
      ( JobStatus_Substate_Unspecified,
        JobStatus_Substate_Submitted,
        JobStatus_Substate_Queued,
        JobStatus_Substate_STALESTATUS,
        ..
      ),

    -- * JupyterConfig_Kernel
    JupyterConfig_Kernel
      ( JupyterConfig_Kernel_KERNELUNSPECIFIED,
        JupyterConfig_Kernel_Python,
        JupyterConfig_Kernel_Scala,
        ..
      ),

    -- * LoggingConfig_DriverLogLevelsAdditional
    LoggingConfig_DriverLogLevelsAdditional
      ( LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED,
        LoggingConfig_DriverLogLevelsAdditional_All,
        LoggingConfig_DriverLogLevelsAdditional_Trace,
        LoggingConfig_DriverLogLevelsAdditional_Debug,
        LoggingConfig_DriverLogLevelsAdditional_Info,
        LoggingConfig_DriverLogLevelsAdditional_Warn,
        LoggingConfig_DriverLogLevelsAdditional_Error',
        LoggingConfig_DriverLogLevelsAdditional_Fatal,
        LoggingConfig_DriverLogLevelsAdditional_Off,
        ..
      ),

    -- * Metric_MetricSource
    Metric_MetricSource
      ( Metric_MetricSource_METRICSOURCEUNSPECIFIED,
        Metric_MetricSource_MONITORINGAGENTDEFAULTS,
        Metric_MetricSource_Hdfs,
        Metric_MetricSource_Spark,
        Metric_MetricSource_Yarn,
        Metric_MetricSource_SPARKHISTORYSERVER,
        Metric_MetricSource_HIVESERVER2,
        Metric_MetricSource_Hivemetastore,
        Metric_MetricSource_Flink,
        ..
      ),

    -- * NodeGroup_RolesItem
    NodeGroup_RolesItem
      ( NodeGroup_RolesItem_ROLEUNSPECIFIED,
        NodeGroup_RolesItem_Driver,
        ..
      ),

    -- * NodeGroupOperationMetadata_OperationType
    NodeGroupOperationMetadata_OperationType
      ( NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED,
        NodeGroupOperationMetadata_OperationType_Create,
        NodeGroupOperationMetadata_OperationType_Update,
        NodeGroupOperationMetadata_OperationType_Delete',
        NodeGroupOperationMetadata_OperationType_Resize,
        NodeGroupOperationMetadata_OperationType_Repair,
        NodeGroupOperationMetadata_OperationType_UPDATELABELS,
        NodeGroupOperationMetadata_OperationType_Start,
        NodeGroupOperationMetadata_OperationType_Stop,
        ..
      ),

    -- * NodePool_RepairAction
    NodePool_RepairAction
      ( NodePool_RepairAction_REPAIRACTIONUNSPECIFIED,
        NodePool_RepairAction_Delete',
        ..
      ),

    -- * RddOperationNode_OutputDeterministicLevel
    RddOperationNode_OutputDeterministicLevel
      ( RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNSPECIFIED,
        RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELDETERMINATE,
        RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNORDERED,
        RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELINDETERMINATE,
        ..
      ),

    -- * RepairNodeGroupRequest_RepairAction
    RepairNodeGroupRequest_RepairAction
      ( RepairNodeGroupRequest_RepairAction_REPAIRACTIONUNSPECIFIED,
        RepairNodeGroupRequest_RepairAction_Replace,
        ..
      ),

    -- * ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType
      ( ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED,
        ReservationAffinity_ConsumeReservationType_NORESERVATION,
        ReservationAffinity_ConsumeReservationType_ANYRESERVATION,
        ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION,
        ..
      ),

    -- * Session_State
    Session_State
      ( Session_State_STATEUNSPECIFIED,
        Session_State_Creating,
        Session_State_Active,
        Session_State_Terminating,
        Session_State_Terminated,
        Session_State_Failed,
        ..
      ),

    -- * SessionOperationMetadata_OperationType
    SessionOperationMetadata_OperationType
      ( SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED,
        SessionOperationMetadata_OperationType_Create,
        SessionOperationMetadata_OperationType_Terminate,
        SessionOperationMetadata_OperationType_Delete',
        ..
      ),

    -- * SessionStateHistory_State
    SessionStateHistory_State
      ( SessionStateHistory_State_STATEUNSPECIFIED,
        SessionStateHistory_State_Creating,
        SessionStateHistory_State_Active,
        SessionStateHistory_State_Terminating,
        SessionStateHistory_State_Terminated,
        SessionStateHistory_State_Failed,
        ..
      ),

    -- * SoftwareConfig_OptionalComponentsItem
    SoftwareConfig_OptionalComponentsItem
      ( SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED,
        SoftwareConfig_OptionalComponentsItem_Anaconda,
        SoftwareConfig_OptionalComponentsItem_Docker,
        SoftwareConfig_OptionalComponentsItem_Druid,
        SoftwareConfig_OptionalComponentsItem_Flink,
        SoftwareConfig_OptionalComponentsItem_Hbase,
        SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT,
        SoftwareConfig_OptionalComponentsItem_Hudi,
        SoftwareConfig_OptionalComponentsItem_Jupyter,
        SoftwareConfig_OptionalComponentsItem_Pig,
        SoftwareConfig_OptionalComponentsItem_Presto,
        SoftwareConfig_OptionalComponentsItem_Trino,
        SoftwareConfig_OptionalComponentsItem_Ranger,
        SoftwareConfig_OptionalComponentsItem_Solr,
        SoftwareConfig_OptionalComponentsItem_Zeppelin,
        SoftwareConfig_OptionalComponentsItem_Zookeeper,
        ..
      ),

    -- * SqlExecutionUiData_JobsAdditional
    SqlExecutionUiData_JobsAdditional
      ( SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNSPECIFIED,
        SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSRUNNING,
        SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSSUCCEEDED,
        SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSFAILED,
        SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNKNOWN,
        ..
      ),

    -- * StageData_Status
    StageData_Status
      ( StageData_Status_STAGESTATUSUNSPECIFIED,
        StageData_Status_STAGESTATUSACTIVE,
        StageData_Status_STAGESTATUSCOMPLETE,
        StageData_Status_STAGESTATUSFAILED,
        StageData_Status_STAGESTATUSPENDING,
        StageData_Status_STAGESTATUSSKIPPED,
        ..
      ),

    -- * StateHistory_State
    StateHistory_State
      ( StateHistory_State_STATEUNSPECIFIED,
        StateHistory_State_Pending,
        StateHistory_State_Running,
        StateHistory_State_Cancelling,
        StateHistory_State_Cancelled,
        StateHistory_State_Succeeded,
        StateHistory_State_Failed,
        ..
      ),

    -- * WorkflowMetadata_State
    WorkflowMetadata_State
      ( WorkflowMetadata_State_Unknown,
        WorkflowMetadata_State_Pending,
        WorkflowMetadata_State_Running,
        WorkflowMetadata_State_Done,
        ..
      ),

    -- * WorkflowNode_State
    WorkflowNode_State
      ( WorkflowNode_State_NODESTATEUNSPECIFIED,
        WorkflowNode_State_Blocked,
        WorkflowNode_State_Runnable,
        WorkflowNode_State_Running,
        WorkflowNode_State_Completed,
        WorkflowNode_State_Failed,
        ..
      ),

    -- * YarnApplication_State
    YarnApplication_State
      ( YarnApplication_State_STATEUNSPECIFIED,
        YarnApplication_State_New,
        YarnApplication_State_NEWSAVING,
        YarnApplication_State_Submitted,
        YarnApplication_State_Accepted,
        YarnApplication_State_Running,
        YarnApplication_State_Finished,
        YarnApplication_State_Failed,
        YarnApplication_State_Killed,
        ..
      ),

    -- * ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
    ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
      ( ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED,
        ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING,
        ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED,
        ..
      ),

    -- * ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
    ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
      ( ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED,
        ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE,
        ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD,
        ..
      ),

    -- * ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
    ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
      ( ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED,
        ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING,
        ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED,
        ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED,
        ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN,
        ..
      ),

    -- * ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
    ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
      ( ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED,
        ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING,
        ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS,
        ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED,
        ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED,
        ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING,
        ..
      ),

    -- * ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
    ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
      ( ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED,
        ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE,
        ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE,
        ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED,
        ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING,
        ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED,
        ..
      ),

    -- * ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus
    ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus
      ( ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED,
        ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING,
        ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED,
        ..
      ),

    -- * ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
    ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
      ( ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED,
        ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE,
        ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD,
        ..
      ),

    -- * ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
    ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
      ( ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED,
        ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING,
        ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED,
        ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED,
        ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN,
        ..
      ),

    -- * ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
    ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
      ( ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED,
        ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING,
        ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS,
        ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED,
        ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED,
        ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING,
        ..
      ),

    -- * ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
    ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
      ( ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED,
        ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE,
        ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE,
        ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED,
        ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING,
        ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED,
        ..
      ),

    -- * ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
    ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
      ( ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED,
        ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION,
        ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete',
        ..
      ),

    -- * ProjectsRegionsJobsListJobStateMatcher
    ProjectsRegionsJobsListJobStateMatcher
      ( ProjectsRegionsJobsListJobStateMatcher_All,
        ProjectsRegionsJobsListJobStateMatcher_Active,
        ProjectsRegionsJobsListJobStateMatcher_NONACTIVE,
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

-- | Output only. Type of the workload being analyzed.
newtype AnalyzeOperationMetadata_AnalyzedWorkloadType = AnalyzeOperationMetadata_AnalyzedWorkloadType {fromAnalyzeOperationMetadata_AnalyzedWorkloadType :: Core.Text}
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

-- | Undefined option
pattern AnalyzeOperationMetadata_AnalyzedWorkloadType_WORKLOADTYPEUNSPECIFIED :: AnalyzeOperationMetadata_AnalyzedWorkloadType
pattern AnalyzeOperationMetadata_AnalyzedWorkloadType_WORKLOADTYPEUNSPECIFIED = AnalyzeOperationMetadata_AnalyzedWorkloadType "WORKLOAD_TYPE_UNSPECIFIED"

-- | Serverless batch job
pattern AnalyzeOperationMetadata_AnalyzedWorkloadType_Batch :: AnalyzeOperationMetadata_AnalyzedWorkloadType
pattern AnalyzeOperationMetadata_AnalyzedWorkloadType_Batch = AnalyzeOperationMetadata_AnalyzedWorkloadType "BATCH"

{-# COMPLETE
  AnalyzeOperationMetadata_AnalyzedWorkloadType_WORKLOADTYPEUNSPECIFIED,
  AnalyzeOperationMetadata_AnalyzedWorkloadType_Batch,
  AnalyzeOperationMetadata_AnalyzedWorkloadType
  #-}

newtype ApplicationInfo_ApplicationContextIngestionStatus = ApplicationInfo_ApplicationContextIngestionStatus {fromApplicationInfo_ApplicationContextIngestionStatus :: Core.Text}
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

pattern ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSUNSPECIFIED :: ApplicationInfo_ApplicationContextIngestionStatus
pattern ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSUNSPECIFIED = ApplicationInfo_ApplicationContextIngestionStatus "APPLICATION_CONTEXT_INGESTION_STATUS_UNSPECIFIED"

pattern ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSCOMPLETED :: ApplicationInfo_ApplicationContextIngestionStatus
pattern ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSCOMPLETED = ApplicationInfo_ApplicationContextIngestionStatus "APPLICATION_CONTEXT_INGESTION_STATUS_COMPLETED"

{-# COMPLETE
  ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSUNSPECIFIED,
  ApplicationInfo_ApplicationContextIngestionStatus_APPLICATIONCONTEXTINGESTIONSTATUSCOMPLETED,
  ApplicationInfo_ApplicationContextIngestionStatus
  #-}

newtype ApplicationInfo_QuantileDataStatus = ApplicationInfo_QuantileDataStatus {fromApplicationInfo_QuantileDataStatus :: Core.Text}
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

pattern ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSUNSPECIFIED :: ApplicationInfo_QuantileDataStatus
pattern ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSUNSPECIFIED = ApplicationInfo_QuantileDataStatus "QUANTILE_DATA_STATUS_UNSPECIFIED"

pattern ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSCOMPLETED :: ApplicationInfo_QuantileDataStatus
pattern ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSCOMPLETED = ApplicationInfo_QuantileDataStatus "QUANTILE_DATA_STATUS_COMPLETED"

pattern ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSFAILED :: ApplicationInfo_QuantileDataStatus
pattern ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSFAILED = ApplicationInfo_QuantileDataStatus "QUANTILE_DATA_STATUS_FAILED"

{-# COMPLETE
  ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSUNSPECIFIED,
  ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSCOMPLETED,
  ApplicationInfo_QuantileDataStatus_QUANTILEDATASTATUSFAILED,
  ApplicationInfo_QuantileDataStatus
  #-}

newtype AutotuningConfig_ScenariosItem = AutotuningConfig_ScenariosItem {fromAutotuningConfig_ScenariosItem :: Core.Text}
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

-- | Default value.
pattern AutotuningConfig_ScenariosItem_SCENARIOUNSPECIFIED :: AutotuningConfig_ScenariosItem
pattern AutotuningConfig_ScenariosItem_SCENARIOUNSPECIFIED = AutotuningConfig_ScenariosItem "SCENARIO_UNSPECIFIED"

-- | Scaling recommendations such as initialExecutors.
pattern AutotuningConfig_ScenariosItem_Scaling :: AutotuningConfig_ScenariosItem
pattern AutotuningConfig_ScenariosItem_Scaling = AutotuningConfig_ScenariosItem "SCALING"

-- | Adding hints for potential relation broadcasts.
pattern AutotuningConfig_ScenariosItem_BROADCASTHASHJOIN :: AutotuningConfig_ScenariosItem
pattern AutotuningConfig_ScenariosItem_BROADCASTHASHJOIN = AutotuningConfig_ScenariosItem "BROADCAST_HASH_JOIN"

-- | Memory management for workloads.
pattern AutotuningConfig_ScenariosItem_Memory :: AutotuningConfig_ScenariosItem
pattern AutotuningConfig_ScenariosItem_Memory = AutotuningConfig_ScenariosItem "MEMORY"

{-# COMPLETE
  AutotuningConfig_ScenariosItem_SCENARIOUNSPECIFIED,
  AutotuningConfig_ScenariosItem_Scaling,
  AutotuningConfig_ScenariosItem_BROADCASTHASHJOIN,
  AutotuningConfig_ScenariosItem_Memory,
  AutotuningConfig_ScenariosItem
  #-}

-- | Output only. The state of the batch.
newtype Batch_State = Batch_State {fromBatch_State :: Core.Text}
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

-- | The batch state is unknown.
pattern Batch_State_STATEUNSPECIFIED :: Batch_State
pattern Batch_State_STATEUNSPECIFIED = Batch_State "STATE_UNSPECIFIED"

-- | The batch is created before running.
pattern Batch_State_Pending :: Batch_State
pattern Batch_State_Pending = Batch_State "PENDING"

-- | The batch is running.
pattern Batch_State_Running :: Batch_State
pattern Batch_State_Running = Batch_State "RUNNING"

-- | The batch is cancelling.
pattern Batch_State_Cancelling :: Batch_State
pattern Batch_State_Cancelling = Batch_State "CANCELLING"

-- | The batch cancellation was successful.
pattern Batch_State_Cancelled :: Batch_State
pattern Batch_State_Cancelled = Batch_State "CANCELLED"

-- | The batch completed successfully.
pattern Batch_State_Succeeded :: Batch_State
pattern Batch_State_Succeeded = Batch_State "SUCCEEDED"

-- | The batch is no longer running due to an error.
pattern Batch_State_Failed :: Batch_State
pattern Batch_State_Failed = Batch_State "FAILED"

{-# COMPLETE
  Batch_State_STATEUNSPECIFIED,
  Batch_State_Pending,
  Batch_State_Running,
  Batch_State_Cancelling,
  Batch_State_Cancelled,
  Batch_State_Succeeded,
  Batch_State_Failed,
  Batch_State
  #-}

-- | The operation type.
newtype BatchOperationMetadata_OperationType = BatchOperationMetadata_OperationType {fromBatchOperationMetadata_OperationType :: Core.Text}
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

-- | Batch operation type is unknown.
pattern BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED :: BatchOperationMetadata_OperationType
pattern BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED = BatchOperationMetadata_OperationType "BATCH_OPERATION_TYPE_UNSPECIFIED"

-- | Batch operation type.
pattern BatchOperationMetadata_OperationType_Batch :: BatchOperationMetadata_OperationType
pattern BatchOperationMetadata_OperationType_Batch = BatchOperationMetadata_OperationType "BATCH"

{-# COMPLETE
  BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED,
  BatchOperationMetadata_OperationType_Batch,
  BatchOperationMetadata_OperationType
  #-}

-- | Output only. A message containing the operation state.
newtype ClusterOperationStatus_State = ClusterOperationStatus_State {fromClusterOperationStatus_State :: Core.Text}
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

-- | Unused.
pattern ClusterOperationStatus_State_Unknown :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Unknown = ClusterOperationStatus_State "UNKNOWN"

-- | The operation has been created.
pattern ClusterOperationStatus_State_Pending :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Pending = ClusterOperationStatus_State "PENDING"

-- | The operation is running.
pattern ClusterOperationStatus_State_Running :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Running = ClusterOperationStatus_State "RUNNING"

-- | The operation is done; either cancelled or completed.
pattern ClusterOperationStatus_State_Done :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Done = ClusterOperationStatus_State "DONE"

{-# COMPLETE
  ClusterOperationStatus_State_Unknown,
  ClusterOperationStatus_State_Pending,
  ClusterOperationStatus_State_Running,
  ClusterOperationStatus_State_Done,
  ClusterOperationStatus_State
  #-}

-- | Output only. The cluster\'s state.
newtype ClusterStatus_State = ClusterStatus_State {fromClusterStatus_State :: Core.Text}
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

-- | The cluster state is unknown.
pattern ClusterStatus_State_Unknown :: ClusterStatus_State
pattern ClusterStatus_State_Unknown = ClusterStatus_State "UNKNOWN"

-- | The cluster is being created and set up. It is not ready for use.
pattern ClusterStatus_State_Creating :: ClusterStatus_State
pattern ClusterStatus_State_Creating = ClusterStatus_State "CREATING"

-- | The cluster is currently running and healthy. It is ready for use.Note: The cluster state changes from \"creating\" to \"running\" status after the master node(s), first two primary worker nodes (and the last primary worker node if primary workers > 2) are running.
pattern ClusterStatus_State_Running :: ClusterStatus_State
pattern ClusterStatus_State_Running = ClusterStatus_State "RUNNING"

-- | The cluster encountered an error. It is not ready for use.
pattern ClusterStatus_State_Error' :: ClusterStatus_State
pattern ClusterStatus_State_Error' = ClusterStatus_State "ERROR"

-- | The cluster has encountered an error while being updated. Jobs can be submitted to the cluster, but the cluster cannot be updated.
pattern ClusterStatus_State_ERRORDUETOUPDATE :: ClusterStatus_State
pattern ClusterStatus_State_ERRORDUETOUPDATE = ClusterStatus_State "ERROR_DUE_TO_UPDATE"

-- | The cluster is being deleted. It cannot be used.
pattern ClusterStatus_State_Deleting :: ClusterStatus_State
pattern ClusterStatus_State_Deleting = ClusterStatus_State "DELETING"

-- | The cluster is being updated. It continues to accept and process jobs.
pattern ClusterStatus_State_Updating :: ClusterStatus_State
pattern ClusterStatus_State_Updating = ClusterStatus_State "UPDATING"

-- | The cluster is being stopped. It cannot be used.
pattern ClusterStatus_State_Stopping :: ClusterStatus_State
pattern ClusterStatus_State_Stopping = ClusterStatus_State "STOPPING"

-- | The cluster is currently stopped. It is not ready for use.
pattern ClusterStatus_State_Stopped :: ClusterStatus_State
pattern ClusterStatus_State_Stopped = ClusterStatus_State "STOPPED"

-- | The cluster is being started. It is not ready for use.
pattern ClusterStatus_State_Starting :: ClusterStatus_State
pattern ClusterStatus_State_Starting = ClusterStatus_State "STARTING"

-- | The cluster is being repaired. It is not ready for use.
pattern ClusterStatus_State_Repairing :: ClusterStatus_State
pattern ClusterStatus_State_Repairing = ClusterStatus_State "REPAIRING"

-- | Cluster creation is currently waiting for resources to be available. Once all resources are available, it will transition to CREATING and then RUNNING.
pattern ClusterStatus_State_Scheduled :: ClusterStatus_State
pattern ClusterStatus_State_Scheduled = ClusterStatus_State "SCHEDULED"

{-# COMPLETE
  ClusterStatus_State_Unknown,
  ClusterStatus_State_Creating,
  ClusterStatus_State_Running,
  ClusterStatus_State_Error',
  ClusterStatus_State_ERRORDUETOUPDATE,
  ClusterStatus_State_Deleting,
  ClusterStatus_State_Updating,
  ClusterStatus_State_Stopping,
  ClusterStatus_State_Stopped,
  ClusterStatus_State_Starting,
  ClusterStatus_State_Repairing,
  ClusterStatus_State_Scheduled,
  ClusterStatus_State
  #-}

-- | Output only. Additional state information that includes status reported by the agent.
newtype ClusterStatus_Substate = ClusterStatus_Substate {fromClusterStatus_Substate :: Core.Text}
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

-- | The cluster substate is unknown.
pattern ClusterStatus_Substate_Unspecified :: ClusterStatus_Substate
pattern ClusterStatus_Substate_Unspecified = ClusterStatus_Substate "UNSPECIFIED"

-- | The cluster is known to be in an unhealthy state (for example, critical daemons are not running or HDFS capacity is exhausted).Applies to RUNNING state.
pattern ClusterStatus_Substate_Unhealthy :: ClusterStatus_Substate
pattern ClusterStatus_Substate_Unhealthy = ClusterStatus_Substate "UNHEALTHY"

-- | The agent-reported status is out of date (may occur if Dataproc loses communication with Agent).Applies to RUNNING state.
pattern ClusterStatus_Substate_STALESTATUS :: ClusterStatus_Substate
pattern ClusterStatus_Substate_STALESTATUS = ClusterStatus_Substate "STALE_STATUS"

{-# COMPLETE
  ClusterStatus_Substate_Unspecified,
  ClusterStatus_Substate_Unhealthy,
  ClusterStatus_Substate_STALESTATUS,
  ClusterStatus_Substate
  #-}

-- | Required. Repair action to take on the cluster resource.
newtype ClusterToRepair_ClusterRepairAction = ClusterToRepair_ClusterRepairAction {fromClusterToRepair_ClusterRepairAction :: Core.Text}
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

-- | No action will be taken by default.
pattern ClusterToRepair_ClusterRepairAction_CLUSTERREPAIRACTIONUNSPECIFIED :: ClusterToRepair_ClusterRepairAction
pattern ClusterToRepair_ClusterRepairAction_CLUSTERREPAIRACTIONUNSPECIFIED = ClusterToRepair_ClusterRepairAction "CLUSTER_REPAIR_ACTION_UNSPECIFIED"

-- | Repair cluster in ERROR/DUE/TO_UPDATE states.
pattern ClusterToRepair_ClusterRepairAction_REPAIRERRORDUETOUPDATECLUSTER :: ClusterToRepair_ClusterRepairAction
pattern ClusterToRepair_ClusterRepairAction_REPAIRERRORDUETOUPDATECLUSTER = ClusterToRepair_ClusterRepairAction "REPAIR_ERROR_DUE_TO_UPDATE_CLUSTER"

{-# COMPLETE
  ClusterToRepair_ClusterRepairAction_CLUSTERREPAIRACTIONUNSPECIFIED,
  ClusterToRepair_ClusterRepairAction_REPAIRERRORDUETOUPDATECLUSTER,
  ClusterToRepair_ClusterRepairAction
  #-}

-- | Optional. (Optional) The access type to the diagnostic tarball. If not specified, falls back to default access of the bucket
newtype DiagnoseClusterRequest_TarballAccess = DiagnoseClusterRequest_TarballAccess {fromDiagnoseClusterRequest_TarballAccess :: Core.Text}
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

-- | Tarball Access unspecified. Falls back to default access of the bucket
pattern DiagnoseClusterRequest_TarballAccess_TARBALLACCESSUNSPECIFIED :: DiagnoseClusterRequest_TarballAccess
pattern DiagnoseClusterRequest_TarballAccess_TARBALLACCESSUNSPECIFIED = DiagnoseClusterRequest_TarballAccess "TARBALL_ACCESS_UNSPECIFIED"

-- | Google Cloud Support group has read access to the diagnostic tarball
pattern DiagnoseClusterRequest_TarballAccess_GOOGLECLOUDSUPPORT :: DiagnoseClusterRequest_TarballAccess
pattern DiagnoseClusterRequest_TarballAccess_GOOGLECLOUDSUPPORT = DiagnoseClusterRequest_TarballAccess "GOOGLE_CLOUD_SUPPORT"

-- | Google Cloud Dataproc Diagnose service account has read access to the diagnostic tarball
pattern DiagnoseClusterRequest_TarballAccess_GOOGLEDATAPROCDIAGNOSE :: DiagnoseClusterRequest_TarballAccess
pattern DiagnoseClusterRequest_TarballAccess_GOOGLEDATAPROCDIAGNOSE = DiagnoseClusterRequest_TarballAccess "GOOGLE_DATAPROC_DIAGNOSE"

{-# COMPLETE
  DiagnoseClusterRequest_TarballAccess_TARBALLACCESSUNSPECIFIED,
  DiagnoseClusterRequest_TarballAccess_GOOGLECLOUDSUPPORT,
  DiagnoseClusterRequest_TarballAccess_GOOGLEDATAPROCDIAGNOSE,
  DiagnoseClusterRequest_TarballAccess
  #-}

-- | Optional. The type of IPv6 access for a cluster.
newtype GceClusterConfig_PrivateIpv6GoogleAccess = GceClusterConfig_PrivateIpv6GoogleAccess {fromGceClusterConfig_PrivateIpv6GoogleAccess :: Core.Text}
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

-- | If unspecified, Compute Engine default behavior will apply, which is the same as INHERIT/FROM/SUBNETWORK.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED = GceClusterConfig_PrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"

-- | Private access to and from Google Services configuration inherited from the subnetwork configuration. This is the default Compute Engine behavior.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK = GceClusterConfig_PrivateIpv6GoogleAccess "INHERIT_FROM_SUBNETWORK"

-- | Enables outbound private IPv6 access to Google Services from the Dataproc cluster.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Outbound :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Outbound = GceClusterConfig_PrivateIpv6GoogleAccess "OUTBOUND"

-- | Enables bidirectional private IPv6 access between Google Services and the Dataproc cluster.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional = GceClusterConfig_PrivateIpv6GoogleAccess "BIDIRECTIONAL"

{-# COMPLETE
  GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
  GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK,
  GceClusterConfig_PrivateIpv6GoogleAccess_Outbound,
  GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional,
  GceClusterConfig_PrivateIpv6GoogleAccess
  #-}

newtype GkeNodePoolTarget_RolesItem = GkeNodePoolTarget_RolesItem {fromGkeNodePoolTarget_RolesItem :: Core.Text}
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

-- | Role is unspecified.
pattern GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED = GkeNodePoolTarget_RolesItem "ROLE_UNSPECIFIED"

-- | At least one node pool must have the DEFAULT role. Work assigned to a role that is not associated with a node pool is assigned to the node pool with the DEFAULT role. For example, work assigned to the CONTROLLER role will be assigned to the node pool with the DEFAULT role if no node pool has the CONTROLLER role.
pattern GkeNodePoolTarget_RolesItem_Default :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_Default = GkeNodePoolTarget_RolesItem "DEFAULT"

-- | Run work associated with the Dataproc control plane (for example, controllers and webhooks). Very low resource requirements.
pattern GkeNodePoolTarget_RolesItem_Controller :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_Controller = GkeNodePoolTarget_RolesItem "CONTROLLER"

-- | Run work associated with a Spark driver of a job.
pattern GkeNodePoolTarget_RolesItem_SPARKDRIVER :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_SPARKDRIVER = GkeNodePoolTarget_RolesItem "SPARK_DRIVER"

-- | Run work associated with a Spark executor of a job.
pattern GkeNodePoolTarget_RolesItem_SPARKEXECUTOR :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_SPARKEXECUTOR = GkeNodePoolTarget_RolesItem "SPARK_EXECUTOR"

{-# COMPLETE
  GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED,
  GkeNodePoolTarget_RolesItem_Default,
  GkeNodePoolTarget_RolesItem_Controller,
  GkeNodePoolTarget_RolesItem_SPARKDRIVER,
  GkeNodePoolTarget_RolesItem_SPARKEXECUTOR,
  GkeNodePoolTarget_RolesItem
  #-}

-- | Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
newtype InstanceGroupConfig_Preemptibility = InstanceGroupConfig_Preemptibility {fromInstanceGroupConfig_Preemptibility :: Core.Text}
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

-- | Preemptibility is unspecified, the system will choose the appropriate setting for each instance group.
pattern InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED = InstanceGroupConfig_Preemptibility "PREEMPTIBILITY_UNSPECIFIED"

-- | Instances are non-preemptible.This option is allowed for all instance groups and is the only valid value for Master and Worker instance groups.
pattern InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE = InstanceGroupConfig_Preemptibility "NON_PREEMPTIBLE"

-- | Instances are preemptible (https:\/\/cloud.google.com\/compute\/docs\/instances\/preemptible).This option is allowed only for secondary worker (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/compute\/secondary-vms) groups.
pattern InstanceGroupConfig_Preemptibility_Preemptible :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_Preemptible = InstanceGroupConfig_Preemptibility "PREEMPTIBLE"

-- | Instances are Spot VMs (https:\/\/cloud.google.com\/compute\/docs\/instances\/spot).This option is allowed only for secondary worker (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/compute\/secondary-vms) groups. Spot VMs are the latest version of preemptible VMs (https:\/\/cloud.google.com\/compute\/docs\/instances\/preemptible), and provide additional features.
pattern InstanceGroupConfig_Preemptibility_Spot :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_Spot = InstanceGroupConfig_Preemptibility "SPOT"

{-# COMPLETE
  InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED,
  InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE,
  InstanceGroupConfig_Preemptibility_Preemptible,
  InstanceGroupConfig_Preemptibility_Spot,
  InstanceGroupConfig_Preemptibility
  #-}

newtype JobData_Status = JobData_Status {fromJobData_Status :: Core.Text}
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

pattern JobData_Status_JOBEXECUTIONSTATUSUNSPECIFIED :: JobData_Status
pattern JobData_Status_JOBEXECUTIONSTATUSUNSPECIFIED = JobData_Status "JOB_EXECUTION_STATUS_UNSPECIFIED"

pattern JobData_Status_JOBEXECUTIONSTATUSRUNNING :: JobData_Status
pattern JobData_Status_JOBEXECUTIONSTATUSRUNNING = JobData_Status "JOB_EXECUTION_STATUS_RUNNING"

pattern JobData_Status_JOBEXECUTIONSTATUSSUCCEEDED :: JobData_Status
pattern JobData_Status_JOBEXECUTIONSTATUSSUCCEEDED = JobData_Status "JOB_EXECUTION_STATUS_SUCCEEDED"

pattern JobData_Status_JOBEXECUTIONSTATUSFAILED :: JobData_Status
pattern JobData_Status_JOBEXECUTIONSTATUSFAILED = JobData_Status "JOB_EXECUTION_STATUS_FAILED"

pattern JobData_Status_JOBEXECUTIONSTATUSUNKNOWN :: JobData_Status
pattern JobData_Status_JOBEXECUTIONSTATUSUNKNOWN = JobData_Status "JOB_EXECUTION_STATUS_UNKNOWN"

{-# COMPLETE
  JobData_Status_JOBEXECUTIONSTATUSUNSPECIFIED,
  JobData_Status_JOBEXECUTIONSTATUSRUNNING,
  JobData_Status_JOBEXECUTIONSTATUSSUCCEEDED,
  JobData_Status_JOBEXECUTIONSTATUSFAILED,
  JobData_Status_JOBEXECUTIONSTATUSUNKNOWN,
  JobData_Status
  #-}

-- | Output only. A state message specifying the overall job state.
newtype JobStatus_State = JobStatus_State {fromJobStatus_State :: Core.Text}
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

-- | The job state is unknown.
pattern JobStatus_State_STATEUNSPECIFIED :: JobStatus_State
pattern JobStatus_State_STATEUNSPECIFIED = JobStatus_State "STATE_UNSPECIFIED"

-- | The job is pending; it has been submitted, but is not yet running.
pattern JobStatus_State_Pending :: JobStatus_State
pattern JobStatus_State_Pending = JobStatus_State "PENDING"

-- | Job has been received by the service and completed initial setup; it will soon be submitted to the cluster.
pattern JobStatus_State_SETUPDONE :: JobStatus_State
pattern JobStatus_State_SETUPDONE = JobStatus_State "SETUP_DONE"

-- | The job is running on the cluster.
pattern JobStatus_State_Running :: JobStatus_State
pattern JobStatus_State_Running = JobStatus_State "RUNNING"

-- | A CancelJob request has been received, but is pending.
pattern JobStatus_State_CANCELPENDING :: JobStatus_State
pattern JobStatus_State_CANCELPENDING = JobStatus_State "CANCEL_PENDING"

-- | Transient in-flight resources have been canceled, and the request to cancel the running job has been issued to the cluster.
pattern JobStatus_State_CANCELSTARTED :: JobStatus_State
pattern JobStatus_State_CANCELSTARTED = JobStatus_State "CANCEL_STARTED"

-- | The job cancellation was successful.
pattern JobStatus_State_Cancelled :: JobStatus_State
pattern JobStatus_State_Cancelled = JobStatus_State "CANCELLED"

-- | The job has completed successfully.
pattern JobStatus_State_Done :: JobStatus_State
pattern JobStatus_State_Done = JobStatus_State "DONE"

-- | The job has completed, but encountered an error.
pattern JobStatus_State_Error' :: JobStatus_State
pattern JobStatus_State_Error' = JobStatus_State "ERROR"

-- | Job attempt has failed. The detail field contains failure details for this attempt.Applies to restartable jobs only.
pattern JobStatus_State_ATTEMPTFAILURE :: JobStatus_State
pattern JobStatus_State_ATTEMPTFAILURE = JobStatus_State "ATTEMPT_FAILURE"

{-# COMPLETE
  JobStatus_State_STATEUNSPECIFIED,
  JobStatus_State_Pending,
  JobStatus_State_SETUPDONE,
  JobStatus_State_Running,
  JobStatus_State_CANCELPENDING,
  JobStatus_State_CANCELSTARTED,
  JobStatus_State_Cancelled,
  JobStatus_State_Done,
  JobStatus_State_Error',
  JobStatus_State_ATTEMPTFAILURE,
  JobStatus_State
  #-}

-- | Output only. Additional state information, which includes status reported by the agent.
newtype JobStatus_Substate = JobStatus_Substate {fromJobStatus_Substate :: Core.Text}
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

-- | The job substate is unknown.
pattern JobStatus_Substate_Unspecified :: JobStatus_Substate
pattern JobStatus_Substate_Unspecified = JobStatus_Substate "UNSPECIFIED"

-- | The Job is submitted to the agent.Applies to RUNNING state.
pattern JobStatus_Substate_Submitted :: JobStatus_Substate
pattern JobStatus_Substate_Submitted = JobStatus_Substate "SUBMITTED"

-- | The Job has been received and is awaiting execution (it might be waiting for a condition to be met). See the \"details\" field for the reason for the delay.Applies to RUNNING state.
pattern JobStatus_Substate_Queued :: JobStatus_Substate
pattern JobStatus_Substate_Queued = JobStatus_Substate "QUEUED"

-- | The agent-reported status is out of date, which can be caused by a loss of communication between the agent and Dataproc. If the agent does not send a timely update, the job will fail.Applies to RUNNING state.
pattern JobStatus_Substate_STALESTATUS :: JobStatus_Substate
pattern JobStatus_Substate_STALESTATUS = JobStatus_Substate "STALE_STATUS"

{-# COMPLETE
  JobStatus_Substate_Unspecified,
  JobStatus_Substate_Submitted,
  JobStatus_Substate_Queued,
  JobStatus_Substate_STALESTATUS,
  JobStatus_Substate
  #-}

-- | Optional. Kernel
newtype JupyterConfig_Kernel = JupyterConfig_Kernel {fromJupyterConfig_Kernel :: Core.Text}
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

-- | The kernel is unknown.
pattern JupyterConfig_Kernel_KERNELUNSPECIFIED :: JupyterConfig_Kernel
pattern JupyterConfig_Kernel_KERNELUNSPECIFIED = JupyterConfig_Kernel "KERNEL_UNSPECIFIED"

-- | Python kernel.
pattern JupyterConfig_Kernel_Python :: JupyterConfig_Kernel
pattern JupyterConfig_Kernel_Python = JupyterConfig_Kernel "PYTHON"

-- | Scala kernel.
pattern JupyterConfig_Kernel_Scala :: JupyterConfig_Kernel
pattern JupyterConfig_Kernel_Scala = JupyterConfig_Kernel "SCALA"

{-# COMPLETE
  JupyterConfig_Kernel_KERNELUNSPECIFIED,
  JupyterConfig_Kernel_Python,
  JupyterConfig_Kernel_Scala,
  JupyterConfig_Kernel
  #-}

newtype LoggingConfig_DriverLogLevelsAdditional = LoggingConfig_DriverLogLevelsAdditional {fromLoggingConfig_DriverLogLevelsAdditional :: Core.Text}
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

-- | Level is unspecified. Use default level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED = LoggingConfig_DriverLogLevelsAdditional "LEVEL_UNSPECIFIED"

-- | Use ALL level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_All :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_All = LoggingConfig_DriverLogLevelsAdditional "ALL"

-- | Use TRACE level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Trace :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Trace = LoggingConfig_DriverLogLevelsAdditional "TRACE"

-- | Use DEBUG level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Debug :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Debug = LoggingConfig_DriverLogLevelsAdditional "DEBUG"

-- | Use INFO level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Info :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Info = LoggingConfig_DriverLogLevelsAdditional "INFO"

-- | Use WARN level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Warn :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Warn = LoggingConfig_DriverLogLevelsAdditional "WARN"

-- | Use ERROR level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Error' :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Error' = LoggingConfig_DriverLogLevelsAdditional "ERROR"

-- | Use FATAL level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Fatal :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Fatal = LoggingConfig_DriverLogLevelsAdditional "FATAL"

-- | Turn off log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Off :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Off = LoggingConfig_DriverLogLevelsAdditional "OFF"

{-# COMPLETE
  LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED,
  LoggingConfig_DriverLogLevelsAdditional_All,
  LoggingConfig_DriverLogLevelsAdditional_Trace,
  LoggingConfig_DriverLogLevelsAdditional_Debug,
  LoggingConfig_DriverLogLevelsAdditional_Info,
  LoggingConfig_DriverLogLevelsAdditional_Warn,
  LoggingConfig_DriverLogLevelsAdditional_Error',
  LoggingConfig_DriverLogLevelsAdditional_Fatal,
  LoggingConfig_DriverLogLevelsAdditional_Off,
  LoggingConfig_DriverLogLevelsAdditional
  #-}

-- | Required. A standard set of metrics is collected unless metricOverrides are specified for the metric source (see Custom metrics (https:\/\/cloud.google.com\/dataproc\/docs\/guides\/dataproc-metrics#custom_metrics) for more information).
newtype Metric_MetricSource = Metric_MetricSource {fromMetric_MetricSource :: Core.Text}
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

-- | Required unspecified metric source.
pattern Metric_MetricSource_METRICSOURCEUNSPECIFIED :: Metric_MetricSource
pattern Metric_MetricSource_METRICSOURCEUNSPECIFIED = Metric_MetricSource "METRIC_SOURCE_UNSPECIFIED"

-- | Monitoring agent metrics. If this source is enabled, Dataproc enables the monitoring agent in Compute Engine, and collects monitoring agent metrics, which are published with an agent.googleapis.com prefix.
pattern Metric_MetricSource_MONITORINGAGENTDEFAULTS :: Metric_MetricSource
pattern Metric_MetricSource_MONITORINGAGENTDEFAULTS = Metric_MetricSource "MONITORING_AGENT_DEFAULTS"

-- | HDFS metric source.
pattern Metric_MetricSource_Hdfs :: Metric_MetricSource
pattern Metric_MetricSource_Hdfs = Metric_MetricSource "HDFS"

-- | Spark metric source.
pattern Metric_MetricSource_Spark :: Metric_MetricSource
pattern Metric_MetricSource_Spark = Metric_MetricSource "SPARK"

-- | YARN metric source.
pattern Metric_MetricSource_Yarn :: Metric_MetricSource
pattern Metric_MetricSource_Yarn = Metric_MetricSource "YARN"

-- | Spark History Server metric source.
pattern Metric_MetricSource_SPARKHISTORYSERVER :: Metric_MetricSource
pattern Metric_MetricSource_SPARKHISTORYSERVER = Metric_MetricSource "SPARK_HISTORY_SERVER"

-- | Hiveserver2 metric source.
pattern Metric_MetricSource_HIVESERVER2 :: Metric_MetricSource
pattern Metric_MetricSource_HIVESERVER2 = Metric_MetricSource "HIVESERVER2"

-- | hivemetastore metric source
pattern Metric_MetricSource_Hivemetastore :: Metric_MetricSource
pattern Metric_MetricSource_Hivemetastore = Metric_MetricSource "HIVEMETASTORE"

-- | flink metric source
pattern Metric_MetricSource_Flink :: Metric_MetricSource
pattern Metric_MetricSource_Flink = Metric_MetricSource "FLINK"

{-# COMPLETE
  Metric_MetricSource_METRICSOURCEUNSPECIFIED,
  Metric_MetricSource_MONITORINGAGENTDEFAULTS,
  Metric_MetricSource_Hdfs,
  Metric_MetricSource_Spark,
  Metric_MetricSource_Yarn,
  Metric_MetricSource_SPARKHISTORYSERVER,
  Metric_MetricSource_HIVESERVER2,
  Metric_MetricSource_Hivemetastore,
  Metric_MetricSource_Flink,
  Metric_MetricSource
  #-}

newtype NodeGroup_RolesItem = NodeGroup_RolesItem {fromNodeGroup_RolesItem :: Core.Text}
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

-- | Required unspecified role.
pattern NodeGroup_RolesItem_ROLEUNSPECIFIED :: NodeGroup_RolesItem
pattern NodeGroup_RolesItem_ROLEUNSPECIFIED = NodeGroup_RolesItem "ROLE_UNSPECIFIED"

-- | Job drivers run on the node pool.
pattern NodeGroup_RolesItem_Driver :: NodeGroup_RolesItem
pattern NodeGroup_RolesItem_Driver = NodeGroup_RolesItem "DRIVER"

{-# COMPLETE
  NodeGroup_RolesItem_ROLEUNSPECIFIED,
  NodeGroup_RolesItem_Driver,
  NodeGroup_RolesItem
  #-}

-- | The operation type.
newtype NodeGroupOperationMetadata_OperationType = NodeGroupOperationMetadata_OperationType {fromNodeGroupOperationMetadata_OperationType :: Core.Text}
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

-- | Node group operation type is unknown.
pattern NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED = NodeGroupOperationMetadata_OperationType "NODE_GROUP_OPERATION_TYPE_UNSPECIFIED"

-- | Create node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Create :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Create = NodeGroupOperationMetadata_OperationType "CREATE"

-- | Update node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Update :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Update = NodeGroupOperationMetadata_OperationType "UPDATE"

-- | Delete node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Delete' :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Delete' = NodeGroupOperationMetadata_OperationType "DELETE"

-- | Resize node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Resize :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Resize = NodeGroupOperationMetadata_OperationType "RESIZE"

-- | Repair node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Repair :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Repair = NodeGroupOperationMetadata_OperationType "REPAIR"

-- | Update node group label operation type.
pattern NodeGroupOperationMetadata_OperationType_UPDATELABELS :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_UPDATELABELS = NodeGroupOperationMetadata_OperationType "UPDATE_LABELS"

-- | Start node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Start :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Start = NodeGroupOperationMetadata_OperationType "START"

-- | Stop node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Stop :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Stop = NodeGroupOperationMetadata_OperationType "STOP"

{-# COMPLETE
  NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED,
  NodeGroupOperationMetadata_OperationType_Create,
  NodeGroupOperationMetadata_OperationType_Update,
  NodeGroupOperationMetadata_OperationType_Delete',
  NodeGroupOperationMetadata_OperationType_Resize,
  NodeGroupOperationMetadata_OperationType_Repair,
  NodeGroupOperationMetadata_OperationType_UPDATELABELS,
  NodeGroupOperationMetadata_OperationType_Start,
  NodeGroupOperationMetadata_OperationType_Stop,
  NodeGroupOperationMetadata_OperationType
  #-}

-- | Required. Repair action to take on specified resources of the node pool.
newtype NodePool_RepairAction = NodePool_RepairAction {fromNodePool_RepairAction :: Core.Text}
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

-- | No action will be taken by default.
pattern NodePool_RepairAction_REPAIRACTIONUNSPECIFIED :: NodePool_RepairAction
pattern NodePool_RepairAction_REPAIRACTIONUNSPECIFIED = NodePool_RepairAction "REPAIR_ACTION_UNSPECIFIED"

-- | delete the specified list of nodes.
pattern NodePool_RepairAction_Delete' :: NodePool_RepairAction
pattern NodePool_RepairAction_Delete' = NodePool_RepairAction "DELETE"

{-# COMPLETE
  NodePool_RepairAction_REPAIRACTIONUNSPECIFIED,
  NodePool_RepairAction_Delete',
  NodePool_RepairAction
  #-}

newtype RddOperationNode_OutputDeterministicLevel = RddOperationNode_OutputDeterministicLevel {fromRddOperationNode_OutputDeterministicLevel :: Core.Text}
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

pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNSPECIFIED :: RddOperationNode_OutputDeterministicLevel
pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNSPECIFIED = RddOperationNode_OutputDeterministicLevel "DETERMINISTIC_LEVEL_UNSPECIFIED"

pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELDETERMINATE :: RddOperationNode_OutputDeterministicLevel
pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELDETERMINATE = RddOperationNode_OutputDeterministicLevel "DETERMINISTIC_LEVEL_DETERMINATE"

pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNORDERED :: RddOperationNode_OutputDeterministicLevel
pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNORDERED = RddOperationNode_OutputDeterministicLevel "DETERMINISTIC_LEVEL_UNORDERED"

pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELINDETERMINATE :: RddOperationNode_OutputDeterministicLevel
pattern RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELINDETERMINATE = RddOperationNode_OutputDeterministicLevel "DETERMINISTIC_LEVEL_INDETERMINATE"

{-# COMPLETE
  RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNSPECIFIED,
  RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELDETERMINATE,
  RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELUNORDERED,
  RddOperationNode_OutputDeterministicLevel_DETERMINISTICLEVELINDETERMINATE,
  RddOperationNode_OutputDeterministicLevel
  #-}

-- | Required. Repair action to take on specified resources of the node pool.
newtype RepairNodeGroupRequest_RepairAction = RepairNodeGroupRequest_RepairAction {fromRepairNodeGroupRequest_RepairAction :: Core.Text}
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

-- | No action will be taken by default.
pattern RepairNodeGroupRequest_RepairAction_REPAIRACTIONUNSPECIFIED :: RepairNodeGroupRequest_RepairAction
pattern RepairNodeGroupRequest_RepairAction_REPAIRACTIONUNSPECIFIED = RepairNodeGroupRequest_RepairAction "REPAIR_ACTION_UNSPECIFIED"

-- | replace the specified list of nodes.
pattern RepairNodeGroupRequest_RepairAction_Replace :: RepairNodeGroupRequest_RepairAction
pattern RepairNodeGroupRequest_RepairAction_Replace = RepairNodeGroupRequest_RepairAction "REPLACE"

{-# COMPLETE
  RepairNodeGroupRequest_RepairAction_REPAIRACTIONUNSPECIFIED,
  RepairNodeGroupRequest_RepairAction_Replace,
  RepairNodeGroupRequest_RepairAction
  #-}

-- | Optional. Type of reservation to consume
newtype ReservationAffinity_ConsumeReservationType = ReservationAffinity_ConsumeReservationType {fromReservationAffinity_ConsumeReservationType :: Core.Text}
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

pattern ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED = ReservationAffinity_ConsumeReservationType "TYPE_UNSPECIFIED"

-- | Do not consume from any allocated capacity.
pattern ReservationAffinity_ConsumeReservationType_NORESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_NORESERVATION = ReservationAffinity_ConsumeReservationType "NO_RESERVATION"

-- | Consume any reservation available.
pattern ReservationAffinity_ConsumeReservationType_ANYRESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_ANYRESERVATION = ReservationAffinity_ConsumeReservationType "ANY_RESERVATION"

-- | Must consume from a specific reservation. Must specify key value fields for specifying the reservations.
pattern ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION = ReservationAffinity_ConsumeReservationType "SPECIFIC_RESERVATION"

{-# COMPLETE
  ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED,
  ReservationAffinity_ConsumeReservationType_NORESERVATION,
  ReservationAffinity_ConsumeReservationType_ANYRESERVATION,
  ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION,
  ReservationAffinity_ConsumeReservationType
  #-}

-- | Output only. A state of the session.
newtype Session_State = Session_State {fromSession_State :: Core.Text}
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

-- | The session state is unknown.
pattern Session_State_STATEUNSPECIFIED :: Session_State
pattern Session_State_STATEUNSPECIFIED = Session_State "STATE_UNSPECIFIED"

-- | The session is created prior to running.
pattern Session_State_Creating :: Session_State
pattern Session_State_Creating = Session_State "CREATING"

-- | The session is running.
pattern Session_State_Active :: Session_State
pattern Session_State_Active = Session_State "ACTIVE"

-- | The session is terminating.
pattern Session_State_Terminating :: Session_State
pattern Session_State_Terminating = Session_State "TERMINATING"

-- | The session is terminated successfully.
pattern Session_State_Terminated :: Session_State
pattern Session_State_Terminated = Session_State "TERMINATED"

-- | The session is no longer running due to an error.
pattern Session_State_Failed :: Session_State
pattern Session_State_Failed = Session_State "FAILED"

{-# COMPLETE
  Session_State_STATEUNSPECIFIED,
  Session_State_Creating,
  Session_State_Active,
  Session_State_Terminating,
  Session_State_Terminated,
  Session_State_Failed,
  Session_State
  #-}

-- | The operation type.
newtype SessionOperationMetadata_OperationType = SessionOperationMetadata_OperationType {fromSessionOperationMetadata_OperationType :: Core.Text}
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

-- | Session operation type is unknown.
pattern SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED = SessionOperationMetadata_OperationType "SESSION_OPERATION_TYPE_UNSPECIFIED"

-- | Create Session operation type.
pattern SessionOperationMetadata_OperationType_Create :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_Create = SessionOperationMetadata_OperationType "CREATE"

-- | Terminate Session operation type.
pattern SessionOperationMetadata_OperationType_Terminate :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_Terminate = SessionOperationMetadata_OperationType "TERMINATE"

-- | Delete Session operation type.
pattern SessionOperationMetadata_OperationType_Delete' :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_Delete' = SessionOperationMetadata_OperationType "DELETE"

{-# COMPLETE
  SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED,
  SessionOperationMetadata_OperationType_Create,
  SessionOperationMetadata_OperationType_Terminate,
  SessionOperationMetadata_OperationType_Delete',
  SessionOperationMetadata_OperationType
  #-}

-- | Output only. The state of the session at this point in the session history.
newtype SessionStateHistory_State = SessionStateHistory_State {fromSessionStateHistory_State :: Core.Text}
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

-- | The session state is unknown.
pattern SessionStateHistory_State_STATEUNSPECIFIED :: SessionStateHistory_State
pattern SessionStateHistory_State_STATEUNSPECIFIED = SessionStateHistory_State "STATE_UNSPECIFIED"

-- | The session is created prior to running.
pattern SessionStateHistory_State_Creating :: SessionStateHistory_State
pattern SessionStateHistory_State_Creating = SessionStateHistory_State "CREATING"

-- | The session is running.
pattern SessionStateHistory_State_Active :: SessionStateHistory_State
pattern SessionStateHistory_State_Active = SessionStateHistory_State "ACTIVE"

-- | The session is terminating.
pattern SessionStateHistory_State_Terminating :: SessionStateHistory_State
pattern SessionStateHistory_State_Terminating = SessionStateHistory_State "TERMINATING"

-- | The session is terminated successfully.
pattern SessionStateHistory_State_Terminated :: SessionStateHistory_State
pattern SessionStateHistory_State_Terminated = SessionStateHistory_State "TERMINATED"

-- | The session is no longer running due to an error.
pattern SessionStateHistory_State_Failed :: SessionStateHistory_State
pattern SessionStateHistory_State_Failed = SessionStateHistory_State "FAILED"

{-# COMPLETE
  SessionStateHistory_State_STATEUNSPECIFIED,
  SessionStateHistory_State_Creating,
  SessionStateHistory_State_Active,
  SessionStateHistory_State_Terminating,
  SessionStateHistory_State_Terminated,
  SessionStateHistory_State_Failed,
  SessionStateHistory_State
  #-}

newtype SoftwareConfig_OptionalComponentsItem = SoftwareConfig_OptionalComponentsItem {fromSoftwareConfig_OptionalComponentsItem :: Core.Text}
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

-- | Unspecified component. Specifying this will cause Cluster creation to fail.
pattern SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED = SoftwareConfig_OptionalComponentsItem "COMPONENT_UNSPECIFIED"

-- | The Anaconda component is no longer supported or applicable to supported Dataproc on Compute Engine image versions (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/versioning\/dataproc-version-clusters#supported-dataproc-image-versions). It cannot be activated on clusters created with supported Dataproc on Compute Engine image versions.
pattern SoftwareConfig_OptionalComponentsItem_Anaconda :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Anaconda = SoftwareConfig_OptionalComponentsItem "ANACONDA"

-- | Docker
pattern SoftwareConfig_OptionalComponentsItem_Docker :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Docker = SoftwareConfig_OptionalComponentsItem "DOCKER"

-- | The Druid query engine. (alpha)
pattern SoftwareConfig_OptionalComponentsItem_Druid :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Druid = SoftwareConfig_OptionalComponentsItem "DRUID"

-- | Flink
pattern SoftwareConfig_OptionalComponentsItem_Flink :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Flink = SoftwareConfig_OptionalComponentsItem "FLINK"

-- | HBase. (beta)
pattern SoftwareConfig_OptionalComponentsItem_Hbase :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Hbase = SoftwareConfig_OptionalComponentsItem "HBASE"

-- | The Hive Web HCatalog (the REST service for accessing HCatalog).
pattern SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT = SoftwareConfig_OptionalComponentsItem "HIVE_WEBHCAT"

-- | Hudi.
pattern SoftwareConfig_OptionalComponentsItem_Hudi :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Hudi = SoftwareConfig_OptionalComponentsItem "HUDI"

-- | The Jupyter Notebook.
pattern SoftwareConfig_OptionalComponentsItem_Jupyter :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Jupyter = SoftwareConfig_OptionalComponentsItem "JUPYTER"

-- | The Pig component.
pattern SoftwareConfig_OptionalComponentsItem_Pig :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Pig = SoftwareConfig_OptionalComponentsItem "PIG"

-- | The Presto query engine.
pattern SoftwareConfig_OptionalComponentsItem_Presto :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Presto = SoftwareConfig_OptionalComponentsItem "PRESTO"

-- | The Trino query engine.
pattern SoftwareConfig_OptionalComponentsItem_Trino :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Trino = SoftwareConfig_OptionalComponentsItem "TRINO"

-- | The Ranger service.
pattern SoftwareConfig_OptionalComponentsItem_Ranger :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Ranger = SoftwareConfig_OptionalComponentsItem "RANGER"

-- | The Solr service.
pattern SoftwareConfig_OptionalComponentsItem_Solr :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Solr = SoftwareConfig_OptionalComponentsItem "SOLR"

-- | The Zeppelin notebook.
pattern SoftwareConfig_OptionalComponentsItem_Zeppelin :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Zeppelin = SoftwareConfig_OptionalComponentsItem "ZEPPELIN"

-- | The Zookeeper service.
pattern SoftwareConfig_OptionalComponentsItem_Zookeeper :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Zookeeper = SoftwareConfig_OptionalComponentsItem "ZOOKEEPER"

{-# COMPLETE
  SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED,
  SoftwareConfig_OptionalComponentsItem_Anaconda,
  SoftwareConfig_OptionalComponentsItem_Docker,
  SoftwareConfig_OptionalComponentsItem_Druid,
  SoftwareConfig_OptionalComponentsItem_Flink,
  SoftwareConfig_OptionalComponentsItem_Hbase,
  SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT,
  SoftwareConfig_OptionalComponentsItem_Hudi,
  SoftwareConfig_OptionalComponentsItem_Jupyter,
  SoftwareConfig_OptionalComponentsItem_Pig,
  SoftwareConfig_OptionalComponentsItem_Presto,
  SoftwareConfig_OptionalComponentsItem_Trino,
  SoftwareConfig_OptionalComponentsItem_Ranger,
  SoftwareConfig_OptionalComponentsItem_Solr,
  SoftwareConfig_OptionalComponentsItem_Zeppelin,
  SoftwareConfig_OptionalComponentsItem_Zookeeper,
  SoftwareConfig_OptionalComponentsItem
  #-}

newtype SqlExecutionUiData_JobsAdditional = SqlExecutionUiData_JobsAdditional {fromSqlExecutionUiData_JobsAdditional :: Core.Text}
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

pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNSPECIFIED :: SqlExecutionUiData_JobsAdditional
pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNSPECIFIED = SqlExecutionUiData_JobsAdditional "JOB_EXECUTION_STATUS_UNSPECIFIED"

pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSRUNNING :: SqlExecutionUiData_JobsAdditional
pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSRUNNING = SqlExecutionUiData_JobsAdditional "JOB_EXECUTION_STATUS_RUNNING"

pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSSUCCEEDED :: SqlExecutionUiData_JobsAdditional
pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSSUCCEEDED = SqlExecutionUiData_JobsAdditional "JOB_EXECUTION_STATUS_SUCCEEDED"

pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSFAILED :: SqlExecutionUiData_JobsAdditional
pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSFAILED = SqlExecutionUiData_JobsAdditional "JOB_EXECUTION_STATUS_FAILED"

pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNKNOWN :: SqlExecutionUiData_JobsAdditional
pattern SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNKNOWN = SqlExecutionUiData_JobsAdditional "JOB_EXECUTION_STATUS_UNKNOWN"

{-# COMPLETE
  SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNSPECIFIED,
  SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSRUNNING,
  SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSSUCCEEDED,
  SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSFAILED,
  SqlExecutionUiData_JobsAdditional_JOBEXECUTIONSTATUSUNKNOWN,
  SqlExecutionUiData_JobsAdditional
  #-}

newtype StageData_Status = StageData_Status {fromStageData_Status :: Core.Text}
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

pattern StageData_Status_STAGESTATUSUNSPECIFIED :: StageData_Status
pattern StageData_Status_STAGESTATUSUNSPECIFIED = StageData_Status "STAGE_STATUS_UNSPECIFIED"

pattern StageData_Status_STAGESTATUSACTIVE :: StageData_Status
pattern StageData_Status_STAGESTATUSACTIVE = StageData_Status "STAGE_STATUS_ACTIVE"

pattern StageData_Status_STAGESTATUSCOMPLETE :: StageData_Status
pattern StageData_Status_STAGESTATUSCOMPLETE = StageData_Status "STAGE_STATUS_COMPLETE"

pattern StageData_Status_STAGESTATUSFAILED :: StageData_Status
pattern StageData_Status_STAGESTATUSFAILED = StageData_Status "STAGE_STATUS_FAILED"

pattern StageData_Status_STAGESTATUSPENDING :: StageData_Status
pattern StageData_Status_STAGESTATUSPENDING = StageData_Status "STAGE_STATUS_PENDING"

pattern StageData_Status_STAGESTATUSSKIPPED :: StageData_Status
pattern StageData_Status_STAGESTATUSSKIPPED = StageData_Status "STAGE_STATUS_SKIPPED"

{-# COMPLETE
  StageData_Status_STAGESTATUSUNSPECIFIED,
  StageData_Status_STAGESTATUSACTIVE,
  StageData_Status_STAGESTATUSCOMPLETE,
  StageData_Status_STAGESTATUSFAILED,
  StageData_Status_STAGESTATUSPENDING,
  StageData_Status_STAGESTATUSSKIPPED,
  StageData_Status
  #-}

-- | Output only. The state of the batch at this point in history.
newtype StateHistory_State = StateHistory_State {fromStateHistory_State :: Core.Text}
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

-- | The batch state is unknown.
pattern StateHistory_State_STATEUNSPECIFIED :: StateHistory_State
pattern StateHistory_State_STATEUNSPECIFIED = StateHistory_State "STATE_UNSPECIFIED"

-- | The batch is created before running.
pattern StateHistory_State_Pending :: StateHistory_State
pattern StateHistory_State_Pending = StateHistory_State "PENDING"

-- | The batch is running.
pattern StateHistory_State_Running :: StateHistory_State
pattern StateHistory_State_Running = StateHistory_State "RUNNING"

-- | The batch is cancelling.
pattern StateHistory_State_Cancelling :: StateHistory_State
pattern StateHistory_State_Cancelling = StateHistory_State "CANCELLING"

-- | The batch cancellation was successful.
pattern StateHistory_State_Cancelled :: StateHistory_State
pattern StateHistory_State_Cancelled = StateHistory_State "CANCELLED"

-- | The batch completed successfully.
pattern StateHistory_State_Succeeded :: StateHistory_State
pattern StateHistory_State_Succeeded = StateHistory_State "SUCCEEDED"

-- | The batch is no longer running due to an error.
pattern StateHistory_State_Failed :: StateHistory_State
pattern StateHistory_State_Failed = StateHistory_State "FAILED"

{-# COMPLETE
  StateHistory_State_STATEUNSPECIFIED,
  StateHistory_State_Pending,
  StateHistory_State_Running,
  StateHistory_State_Cancelling,
  StateHistory_State_Cancelled,
  StateHistory_State_Succeeded,
  StateHistory_State_Failed,
  StateHistory_State
  #-}

-- | Output only. The workflow state.
newtype WorkflowMetadata_State = WorkflowMetadata_State {fromWorkflowMetadata_State :: Core.Text}
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

-- | Unused.
pattern WorkflowMetadata_State_Unknown :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Unknown = WorkflowMetadata_State "UNKNOWN"

-- | The operation has been created.
pattern WorkflowMetadata_State_Pending :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Pending = WorkflowMetadata_State "PENDING"

-- | The operation is running.
pattern WorkflowMetadata_State_Running :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Running = WorkflowMetadata_State "RUNNING"

-- | The operation is done; either cancelled or completed.
pattern WorkflowMetadata_State_Done :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Done = WorkflowMetadata_State "DONE"

{-# COMPLETE
  WorkflowMetadata_State_Unknown,
  WorkflowMetadata_State_Pending,
  WorkflowMetadata_State_Running,
  WorkflowMetadata_State_Done,
  WorkflowMetadata_State
  #-}

-- | Output only. The node state.
newtype WorkflowNode_State = WorkflowNode_State {fromWorkflowNode_State :: Core.Text}
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

-- | State is unspecified.
pattern WorkflowNode_State_NODESTATEUNSPECIFIED :: WorkflowNode_State
pattern WorkflowNode_State_NODESTATEUNSPECIFIED = WorkflowNode_State "NODE_STATE_UNSPECIFIED"

-- | The node is awaiting prerequisite node to finish.
pattern WorkflowNode_State_Blocked :: WorkflowNode_State
pattern WorkflowNode_State_Blocked = WorkflowNode_State "BLOCKED"

-- | The node is runnable but not running.
pattern WorkflowNode_State_Runnable :: WorkflowNode_State
pattern WorkflowNode_State_Runnable = WorkflowNode_State "RUNNABLE"

-- | The node is running.
pattern WorkflowNode_State_Running :: WorkflowNode_State
pattern WorkflowNode_State_Running = WorkflowNode_State "RUNNING"

-- | The node completed successfully.
pattern WorkflowNode_State_Completed :: WorkflowNode_State
pattern WorkflowNode_State_Completed = WorkflowNode_State "COMPLETED"

-- | The node failed. A node can be marked FAILED because its ancestor or peer failed.
pattern WorkflowNode_State_Failed :: WorkflowNode_State
pattern WorkflowNode_State_Failed = WorkflowNode_State "FAILED"

{-# COMPLETE
  WorkflowNode_State_NODESTATEUNSPECIFIED,
  WorkflowNode_State_Blocked,
  WorkflowNode_State_Runnable,
  WorkflowNode_State_Running,
  WorkflowNode_State_Completed,
  WorkflowNode_State_Failed,
  WorkflowNode_State
  #-}

-- | Required. The application state.
newtype YarnApplication_State = YarnApplication_State {fromYarnApplication_State :: Core.Text}
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

-- | Status is unspecified.
pattern YarnApplication_State_STATEUNSPECIFIED :: YarnApplication_State
pattern YarnApplication_State_STATEUNSPECIFIED = YarnApplication_State "STATE_UNSPECIFIED"

-- | Status is NEW.
pattern YarnApplication_State_New :: YarnApplication_State
pattern YarnApplication_State_New = YarnApplication_State "NEW"

-- | Status is NEW_SAVING.
pattern YarnApplication_State_NEWSAVING :: YarnApplication_State
pattern YarnApplication_State_NEWSAVING = YarnApplication_State "NEW_SAVING"

-- | Status is SUBMITTED.
pattern YarnApplication_State_Submitted :: YarnApplication_State
pattern YarnApplication_State_Submitted = YarnApplication_State "SUBMITTED"

-- | Status is ACCEPTED.
pattern YarnApplication_State_Accepted :: YarnApplication_State
pattern YarnApplication_State_Accepted = YarnApplication_State "ACCEPTED"

-- | Status is RUNNING.
pattern YarnApplication_State_Running :: YarnApplication_State
pattern YarnApplication_State_Running = YarnApplication_State "RUNNING"

-- | Status is FINISHED.
pattern YarnApplication_State_Finished :: YarnApplication_State
pattern YarnApplication_State_Finished = YarnApplication_State "FINISHED"

-- | Status is FAILED.
pattern YarnApplication_State_Failed :: YarnApplication_State
pattern YarnApplication_State_Failed = YarnApplication_State "FAILED"

-- | Status is KILLED.
pattern YarnApplication_State_Killed :: YarnApplication_State
pattern YarnApplication_State_Killed = YarnApplication_State "KILLED"

{-# COMPLETE
  YarnApplication_State_STATEUNSPECIFIED,
  YarnApplication_State_New,
  YarnApplication_State_NEWSAVING,
  YarnApplication_State_Submitted,
  YarnApplication_State_Accepted,
  YarnApplication_State_Running,
  YarnApplication_State_Finished,
  YarnApplication_State_Failed,
  YarnApplication_State_Killed,
  YarnApplication_State
  #-}

-- | Optional. Search only applications in the chosen state.
newtype ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus = ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus {fromProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus :: Core.Text}
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

pattern ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED :: ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED = ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus "APPLICATION_STATUS_UNSPECIFIED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING :: ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING = ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus "APPLICATION_STATUS_RUNNING"

pattern ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED :: ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED = ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus "APPLICATION_STATUS_COMPLETED"

{-# COMPLETE
  ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED,
  ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING,
  ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED,
  ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
  #-}

-- | Optional. Filter to select whether active\/ dead or all executors should be selected.
newtype ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus = ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus {fromProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus :: Core.Text}
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

pattern ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED :: ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED = ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus "EXECUTOR_STATUS_UNSPECIFIED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE :: ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE = ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus "EXECUTOR_STATUS_ACTIVE"

pattern ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD :: ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD = ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus "EXECUTOR_STATUS_DEAD"

{-# COMPLETE
  ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED,
  ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE,
  ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD,
  ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
  #-}

-- | Optional. List only jobs in the specific state.
newtype ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus = ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus {fromProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus :: Core.Text}
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

pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED :: ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED = ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_UNSPECIFIED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING :: ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING = ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_RUNNING"

pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED :: ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED = ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_SUCCEEDED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED :: ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED = ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_FAILED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN :: ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN = ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_UNKNOWN"

{-# COMPLETE
  ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED,
  ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING,
  ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED,
  ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED,
  ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN,
  ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
  #-}

-- | Optional. List only tasks in the state.
newtype ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus = ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus {fromProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus :: Core.Text}
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

pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED :: ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED = ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_UNSPECIFIED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING :: ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING = ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_RUNNING"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS :: ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS = ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_SUCCESS"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED :: ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED = ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_FAILED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED :: ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED = ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_KILLED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING :: ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING = ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_PENDING"

{-# COMPLETE
  ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED,
  ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING,
  ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS,
  ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED,
  ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED,
  ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING,
  ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
  #-}

-- | Optional. List only stages in the given state.
newtype ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus = ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus {fromProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus :: Core.Text}
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

pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED :: ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED = ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_UNSPECIFIED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE :: ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE = ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_ACTIVE"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE :: ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE = ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_COMPLETE"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED :: ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED = ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_FAILED"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING :: ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING = ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_PENDING"

pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED :: ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED = ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_SKIPPED"

{-# COMPLETE
  ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED,
  ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE,
  ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE,
  ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED,
  ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING,
  ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED,
  ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
  #-}

-- | Optional. Search only applications in the chosen state.
newtype ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus = ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus {fromProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus :: Core.Text}
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

pattern ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED :: ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED = ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus "APPLICATION_STATUS_UNSPECIFIED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING :: ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING = ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus "APPLICATION_STATUS_RUNNING"

pattern ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED :: ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED = ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus "APPLICATION_STATUS_COMPLETED"

{-# COMPLETE
  ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSUNSPECIFIED,
  ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSRUNNING,
  ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus_APPLICATIONSTATUSCOMPLETED,
  ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus
  #-}

-- | Optional. Filter to select whether active\/ dead or all executors should be selected.
newtype ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus = ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus {fromProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus :: Core.Text}
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

pattern ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED :: ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED = ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus "EXECUTOR_STATUS_UNSPECIFIED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE :: ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE = ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus "EXECUTOR_STATUS_ACTIVE"

pattern ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD :: ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD = ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus "EXECUTOR_STATUS_DEAD"

{-# COMPLETE
  ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSUNSPECIFIED,
  ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSACTIVE,
  ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus_EXECUTORSTATUSDEAD,
  ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
  #-}

-- | Optional. List only jobs in the specific state.
newtype ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus = ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus {fromProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus :: Core.Text}
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

pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED :: ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED = ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_UNSPECIFIED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING :: ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING = ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_RUNNING"

pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED :: ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED = ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_SUCCEEDED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED :: ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED = ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_FAILED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN :: ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN = ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus "JOB_EXECUTION_STATUS_UNKNOWN"

{-# COMPLETE
  ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNSPECIFIED,
  ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSRUNNING,
  ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSSUCCEEDED,
  ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSFAILED,
  ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus_JOBEXECUTIONSTATUSUNKNOWN,
  ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
  #-}

-- | Optional. List only tasks in the state.
newtype ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus = ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus {fromProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus :: Core.Text}
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

pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED :: ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED = ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_UNSPECIFIED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING :: ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING = ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_RUNNING"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS :: ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS = ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_SUCCESS"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED :: ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED = ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_FAILED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED :: ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED = ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_KILLED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING :: ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING = ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus "TASK_STATUS_PENDING"

{-# COMPLETE
  ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSUNSPECIFIED,
  ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSRUNNING,
  ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSSUCCESS,
  ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSFAILED,
  ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSKILLED,
  ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus_TASKSTATUSPENDING,
  ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
  #-}

-- | Optional. List only stages in the given state.
newtype ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus = ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus {fromProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus :: Core.Text}
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

pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED :: ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED = ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_UNSPECIFIED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE :: ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE = ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_ACTIVE"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE :: ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE = ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_COMPLETE"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED :: ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED = ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_FAILED"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING :: ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING = ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_PENDING"

pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED :: ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
pattern ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED = ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus "STAGE_STATUS_SKIPPED"

{-# COMPLETE
  ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSUNSPECIFIED,
  ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSACTIVE,
  ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSCOMPLETE,
  ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSFAILED,
  ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSPENDING,
  ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus_STAGESTATUSSKIPPED,
  ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
  #-}

-- | Optional. Failure action when primary worker creation fails.
newtype ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers {fromProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers :: Core.Text}
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

-- | When FailureAction is unspecified, failure action defaults to NO_ACTION.
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED :: ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers "FAILURE_ACTION_UNSPECIFIED"

-- | Take no action on failure to create a cluster resource. NO_ACTION is the default.
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION :: ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers "NO_ACTION"

-- | Delete the failed cluster resource.
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete' :: ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete' = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers "DELETE"

{-# COMPLETE
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED,
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION,
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete',
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
  #-}

-- | Optional. Specifies enumerated categories of jobs to list. (default = match ALL jobs).If filter is provided, jobStateMatcher will be ignored.
newtype ProjectsRegionsJobsListJobStateMatcher = ProjectsRegionsJobsListJobStateMatcher {fromProjectsRegionsJobsListJobStateMatcher :: Core.Text}
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

-- | Match all jobs, regardless of state.
pattern ProjectsRegionsJobsListJobStateMatcher_All :: ProjectsRegionsJobsListJobStateMatcher
pattern ProjectsRegionsJobsListJobStateMatcher_All = ProjectsRegionsJobsListJobStateMatcher "ALL"

-- | Only match jobs in non-terminal states: PENDING, RUNNING, or CANCEL_PENDING.
pattern ProjectsRegionsJobsListJobStateMatcher_Active :: ProjectsRegionsJobsListJobStateMatcher
pattern ProjectsRegionsJobsListJobStateMatcher_Active = ProjectsRegionsJobsListJobStateMatcher "ACTIVE"

-- | Only match jobs in terminal states: CANCELLED, DONE, or ERROR.
pattern ProjectsRegionsJobsListJobStateMatcher_NONACTIVE :: ProjectsRegionsJobsListJobStateMatcher
pattern ProjectsRegionsJobsListJobStateMatcher_NONACTIVE = ProjectsRegionsJobsListJobStateMatcher "NON_ACTIVE"

{-# COMPLETE
  ProjectsRegionsJobsListJobStateMatcher_All,
  ProjectsRegionsJobsListJobStateMatcher_Active,
  ProjectsRegionsJobsListJobStateMatcher_NONACTIVE,
  ProjectsRegionsJobsListJobStateMatcher
  #-}
