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
-- Module      : Gogol.Dataproc.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataproc.Types
  ( -- * Configuration
    dataprocService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- ** AccessSessionSparkApplicationEnvironmentInfoResponse
    AccessSessionSparkApplicationEnvironmentInfoResponse (..),
    newAccessSessionSparkApplicationEnvironmentInfoResponse,

    -- ** AccessSessionSparkApplicationJobResponse
    AccessSessionSparkApplicationJobResponse (..),
    newAccessSessionSparkApplicationJobResponse,

    -- ** AccessSessionSparkApplicationResponse
    AccessSessionSparkApplicationResponse (..),
    newAccessSessionSparkApplicationResponse,

    -- ** AccessSessionSparkApplicationSqlQueryResponse
    AccessSessionSparkApplicationSqlQueryResponse (..),
    newAccessSessionSparkApplicationSqlQueryResponse,

    -- ** AccessSessionSparkApplicationSqlSparkPlanGraphResponse
    AccessSessionSparkApplicationSqlSparkPlanGraphResponse (..),
    newAccessSessionSparkApplicationSqlSparkPlanGraphResponse,

    -- ** AccessSessionSparkApplicationStageAttemptResponse
    AccessSessionSparkApplicationStageAttemptResponse (..),
    newAccessSessionSparkApplicationStageAttemptResponse,

    -- ** AccessSessionSparkApplicationStageRddOperationGraphResponse
    AccessSessionSparkApplicationStageRddOperationGraphResponse (..),
    newAccessSessionSparkApplicationStageRddOperationGraphResponse,

    -- ** AccessSparkApplicationEnvironmentInfoResponse
    AccessSparkApplicationEnvironmentInfoResponse (..),
    newAccessSparkApplicationEnvironmentInfoResponse,

    -- ** AccessSparkApplicationJobResponse
    AccessSparkApplicationJobResponse (..),
    newAccessSparkApplicationJobResponse,

    -- ** AccessSparkApplicationResponse
    AccessSparkApplicationResponse (..),
    newAccessSparkApplicationResponse,

    -- ** AccessSparkApplicationSqlQueryResponse
    AccessSparkApplicationSqlQueryResponse (..),
    newAccessSparkApplicationSqlQueryResponse,

    -- ** AccessSparkApplicationSqlSparkPlanGraphResponse
    AccessSparkApplicationSqlSparkPlanGraphResponse (..),
    newAccessSparkApplicationSqlSparkPlanGraphResponse,

    -- ** AccessSparkApplicationStageAttemptResponse
    AccessSparkApplicationStageAttemptResponse (..),
    newAccessSparkApplicationStageAttemptResponse,

    -- ** AccessSparkApplicationStageRddOperationGraphResponse
    AccessSparkApplicationStageRddOperationGraphResponse (..),
    newAccessSparkApplicationStageRddOperationGraphResponse,

    -- ** AccumulableInfo
    AccumulableInfo (..),
    newAccumulableInfo,

    -- ** AnalyzeBatchRequest
    AnalyzeBatchRequest (..),
    newAnalyzeBatchRequest,

    -- ** AnalyzeOperationMetadata
    AnalyzeOperationMetadata (..),
    newAnalyzeOperationMetadata,

    -- ** AnalyzeOperationMetadata_AnalyzedWorkloadType
    AnalyzeOperationMetadata_AnalyzedWorkloadType (..),

    -- ** AnalyzeOperationMetadata_Labels
    AnalyzeOperationMetadata_Labels (..),
    newAnalyzeOperationMetadata_Labels,

    -- ** AppSummary
    AppSummary (..),
    newAppSummary,

    -- ** ApplicationAttemptInfo
    ApplicationAttemptInfo (..),
    newApplicationAttemptInfo,

    -- ** ApplicationEnvironmentInfo
    ApplicationEnvironmentInfo (..),
    newApplicationEnvironmentInfo,

    -- ** ApplicationEnvironmentInfo_ClasspathEntries
    ApplicationEnvironmentInfo_ClasspathEntries (..),
    newApplicationEnvironmentInfo_ClasspathEntries,

    -- ** ApplicationEnvironmentInfo_HadoopProperties
    ApplicationEnvironmentInfo_HadoopProperties (..),
    newApplicationEnvironmentInfo_HadoopProperties,

    -- ** ApplicationEnvironmentInfo_MetricsProperties
    ApplicationEnvironmentInfo_MetricsProperties (..),
    newApplicationEnvironmentInfo_MetricsProperties,

    -- ** ApplicationEnvironmentInfo_SparkProperties
    ApplicationEnvironmentInfo_SparkProperties (..),
    newApplicationEnvironmentInfo_SparkProperties,

    -- ** ApplicationEnvironmentInfo_SystemProperties
    ApplicationEnvironmentInfo_SystemProperties (..),
    newApplicationEnvironmentInfo_SystemProperties,

    -- ** ApplicationInfo
    ApplicationInfo (..),
    newApplicationInfo,

    -- ** ApplicationInfo_ApplicationContextIngestionStatus
    ApplicationInfo_ApplicationContextIngestionStatus (..),

    -- ** ApplicationInfo_QuantileDataStatus
    ApplicationInfo_QuantileDataStatus (..),

    -- ** AutoscalingConfig
    AutoscalingConfig (..),
    newAutoscalingConfig,

    -- ** AutoscalingPolicy
    AutoscalingPolicy (..),
    newAutoscalingPolicy,

    -- ** AutoscalingPolicy_Labels
    AutoscalingPolicy_Labels (..),
    newAutoscalingPolicy_Labels,

    -- ** AutotuningConfig
    AutotuningConfig (..),
    newAutotuningConfig,

    -- ** AutotuningConfig_ScenariosItem
    AutotuningConfig_ScenariosItem (..),

    -- ** AuxiliaryNodeGroup
    AuxiliaryNodeGroup (..),
    newAuxiliaryNodeGroup,

    -- ** AuxiliaryServicesConfig
    AuxiliaryServicesConfig (..),
    newAuxiliaryServicesConfig,

    -- ** BasicAutoscalingAlgorithm
    BasicAutoscalingAlgorithm (..),
    newBasicAutoscalingAlgorithm,

    -- ** BasicYarnAutoscalingConfig
    BasicYarnAutoscalingConfig (..),
    newBasicYarnAutoscalingConfig,

    -- ** Batch
    Batch (..),
    newBatch,

    -- ** Batch_Labels
    Batch_Labels (..),
    newBatch_Labels,

    -- ** Batch_State
    Batch_State (..),

    -- ** BatchOperationMetadata
    BatchOperationMetadata (..),
    newBatchOperationMetadata,

    -- ** BatchOperationMetadata_Labels
    BatchOperationMetadata_Labels (..),
    newBatchOperationMetadata_Labels,

    -- ** BatchOperationMetadata_OperationType
    BatchOperationMetadata_OperationType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CancelJobRequest
    CancelJobRequest (..),
    newCancelJobRequest,

    -- ** Cluster
    Cluster (..),
    newCluster,

    -- ** Cluster_Labels
    Cluster_Labels (..),
    newCluster_Labels,

    -- ** ClusterConfig
    ClusterConfig (..),
    newClusterConfig,

    -- ** ClusterMetrics
    ClusterMetrics (..),
    newClusterMetrics,

    -- ** ClusterMetrics_HdfsMetrics
    ClusterMetrics_HdfsMetrics (..),
    newClusterMetrics_HdfsMetrics,

    -- ** ClusterMetrics_YarnMetrics
    ClusterMetrics_YarnMetrics (..),
    newClusterMetrics_YarnMetrics,

    -- ** ClusterOperation
    ClusterOperation (..),
    newClusterOperation,

    -- ** ClusterOperationMetadata
    ClusterOperationMetadata (..),
    newClusterOperationMetadata,

    -- ** ClusterOperationMetadata_Labels
    ClusterOperationMetadata_Labels (..),
    newClusterOperationMetadata_Labels,

    -- ** ClusterOperationStatus
    ClusterOperationStatus (..),
    newClusterOperationStatus,

    -- ** ClusterOperationStatus_State
    ClusterOperationStatus_State (..),

    -- ** ClusterSelector
    ClusterSelector (..),
    newClusterSelector,

    -- ** ClusterSelector_ClusterLabels
    ClusterSelector_ClusterLabels (..),
    newClusterSelector_ClusterLabels,

    -- ** ClusterStatus
    ClusterStatus (..),
    newClusterStatus,

    -- ** ClusterStatus_State
    ClusterStatus_State (..),

    -- ** ClusterStatus_Substate
    ClusterStatus_Substate (..),

    -- ** ClusterToRepair
    ClusterToRepair (..),
    newClusterToRepair,

    -- ** ClusterToRepair_ClusterRepairAction
    ClusterToRepair_ClusterRepairAction (..),

    -- ** ConfidentialInstanceConfig
    ConfidentialInstanceConfig (..),
    newConfidentialInstanceConfig,

    -- ** ConsolidatedExecutorSummary
    ConsolidatedExecutorSummary (..),
    newConsolidatedExecutorSummary,

    -- ** DataprocMetricConfig
    DataprocMetricConfig (..),
    newDataprocMetricConfig,

    -- ** DiagnoseClusterRequest
    DiagnoseClusterRequest (..),
    newDiagnoseClusterRequest,

    -- ** DiagnoseClusterRequest_TarballAccess
    DiagnoseClusterRequest_TarballAccess (..),

    -- ** DiagnoseClusterResults
    DiagnoseClusterResults (..),
    newDiagnoseClusterResults,

    -- ** DiskConfig
    DiskConfig (..),
    newDiskConfig,

    -- ** DriverSchedulingConfig
    DriverSchedulingConfig (..),
    newDriverSchedulingConfig,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- ** EndpointConfig
    EndpointConfig (..),
    newEndpointConfig,

    -- ** EndpointConfig_HttpPorts
    EndpointConfig_HttpPorts (..),
    newEndpointConfig_HttpPorts,

    -- ** EnvironmentConfig
    EnvironmentConfig (..),
    newEnvironmentConfig,

    -- ** ExecutionConfig
    ExecutionConfig (..),
    newExecutionConfig,

    -- ** ExecutorMetrics
    ExecutorMetrics (..),
    newExecutorMetrics,

    -- ** ExecutorMetrics_Metrics
    ExecutorMetrics_Metrics (..),
    newExecutorMetrics_Metrics,

    -- ** ExecutorMetricsDistributions
    ExecutorMetricsDistributions (..),
    newExecutorMetricsDistributions,

    -- ** ExecutorPeakMetricsDistributions
    ExecutorPeakMetricsDistributions (..),
    newExecutorPeakMetricsDistributions,

    -- ** ExecutorResourceRequest
    ExecutorResourceRequest (..),
    newExecutorResourceRequest,

    -- ** ExecutorStageSummary
    ExecutorStageSummary (..),
    newExecutorStageSummary,

    -- ** ExecutorSummary
    ExecutorSummary (..),
    newExecutorSummary,

    -- ** ExecutorSummary_Attributes
    ExecutorSummary_Attributes (..),
    newExecutorSummary_Attributes,

    -- ** ExecutorSummary_ExecutorLogs
    ExecutorSummary_ExecutorLogs (..),
    newExecutorSummary_ExecutorLogs,

    -- ** ExecutorSummary_Resources
    ExecutorSummary_Resources (..),
    newExecutorSummary_Resources,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** FlinkJob
    FlinkJob (..),
    newFlinkJob,

    -- ** FlinkJob_Properties
    FlinkJob_Properties (..),
    newFlinkJob_Properties,

    -- ** GceClusterConfig
    GceClusterConfig (..),
    newGceClusterConfig,

    -- ** GceClusterConfig_Metadata
    GceClusterConfig_Metadata (..),
    newGceClusterConfig_Metadata,

    -- ** GceClusterConfig_PrivateIpv6GoogleAccess
    GceClusterConfig_PrivateIpv6GoogleAccess (..),

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** GkeClusterConfig
    GkeClusterConfig (..),
    newGkeClusterConfig,

    -- ** GkeNodeConfig
    GkeNodeConfig (..),
    newGkeNodeConfig,

    -- ** GkeNodePoolAcceleratorConfig
    GkeNodePoolAcceleratorConfig (..),
    newGkeNodePoolAcceleratorConfig,

    -- ** GkeNodePoolAutoscalingConfig
    GkeNodePoolAutoscalingConfig (..),
    newGkeNodePoolAutoscalingConfig,

    -- ** GkeNodePoolConfig
    GkeNodePoolConfig (..),
    newGkeNodePoolConfig,

    -- ** GkeNodePoolTarget
    GkeNodePoolTarget (..),
    newGkeNodePoolTarget,

    -- ** GkeNodePoolTarget_RolesItem
    GkeNodePoolTarget_RolesItem (..),

    -- ** GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
    GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig (..),
    newGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig,

    -- ** HadoopJob
    HadoopJob (..),
    newHadoopJob,

    -- ** HadoopJob_Properties
    HadoopJob_Properties (..),
    newHadoopJob_Properties,

    -- ** HiveJob
    HiveJob (..),
    newHiveJob,

    -- ** HiveJob_Properties
    HiveJob_Properties (..),
    newHiveJob_Properties,

    -- ** HiveJob_ScriptVariables
    HiveJob_ScriptVariables (..),
    newHiveJob_ScriptVariables,

    -- ** IdentityConfig
    IdentityConfig (..),
    newIdentityConfig,

    -- ** IdentityConfig_UserServiceAccountMapping
    IdentityConfig_UserServiceAccountMapping (..),
    newIdentityConfig_UserServiceAccountMapping,

    -- ** InjectCredentialsRequest
    InjectCredentialsRequest (..),
    newInjectCredentialsRequest,

    -- ** InputMetrics
    InputMetrics (..),
    newInputMetrics,

    -- ** InputQuantileMetrics
    InputQuantileMetrics (..),
    newInputQuantileMetrics,

    -- ** InstanceFlexibilityPolicy
    InstanceFlexibilityPolicy (..),
    newInstanceFlexibilityPolicy,

    -- ** InstanceGroupAutoscalingPolicyConfig
    InstanceGroupAutoscalingPolicyConfig (..),
    newInstanceGroupAutoscalingPolicyConfig,

    -- ** InstanceGroupConfig
    InstanceGroupConfig (..),
    newInstanceGroupConfig,

    -- ** InstanceGroupConfig_Preemptibility
    InstanceGroupConfig_Preemptibility (..),

    -- ** InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- ** InstanceSelection
    InstanceSelection (..),
    newInstanceSelection,

    -- ** InstanceSelectionResult
    InstanceSelectionResult (..),
    newInstanceSelectionResult,

    -- ** InstantiateWorkflowTemplateRequest
    InstantiateWorkflowTemplateRequest (..),
    newInstantiateWorkflowTemplateRequest,

    -- ** InstantiateWorkflowTemplateRequest_Parameters
    InstantiateWorkflowTemplateRequest_Parameters (..),
    newInstantiateWorkflowTemplateRequest_Parameters,

    -- ** Interval
    Interval (..),
    newInterval,

    -- ** Job
    Job (..),
    newJob,

    -- ** Job_Labels
    Job_Labels (..),
    newJob_Labels,

    -- ** JobData
    JobData (..),
    newJobData,

    -- ** JobData_KillTasksSummary
    JobData_KillTasksSummary (..),
    newJobData_KillTasksSummary,

    -- ** JobData_Status
    JobData_Status (..),

    -- ** JobMetadata
    JobMetadata (..),
    newJobMetadata,

    -- ** JobPlacement
    JobPlacement (..),
    newJobPlacement,

    -- ** JobPlacement_ClusterLabels
    JobPlacement_ClusterLabels (..),
    newJobPlacement_ClusterLabels,

    -- ** JobReference
    JobReference (..),
    newJobReference,

    -- ** JobScheduling
    JobScheduling (..),
    newJobScheduling,

    -- ** JobStatus
    JobStatus (..),
    newJobStatus,

    -- ** JobStatus_State
    JobStatus_State (..),

    -- ** JobStatus_Substate
    JobStatus_Substate (..),

    -- ** JobsSummary
    JobsSummary (..),
    newJobsSummary,

    -- ** JupyterConfig
    JupyterConfig (..),
    newJupyterConfig,

    -- ** JupyterConfig_Kernel
    JupyterConfig_Kernel (..),

    -- ** KerberosConfig
    KerberosConfig (..),
    newKerberosConfig,

    -- ** KubernetesClusterConfig
    KubernetesClusterConfig (..),
    newKubernetesClusterConfig,

    -- ** KubernetesSoftwareConfig
    KubernetesSoftwareConfig (..),
    newKubernetesSoftwareConfig,

    -- ** KubernetesSoftwareConfig_ComponentVersion
    KubernetesSoftwareConfig_ComponentVersion (..),
    newKubernetesSoftwareConfig_ComponentVersion,

    -- ** KubernetesSoftwareConfig_Properties
    KubernetesSoftwareConfig_Properties (..),
    newKubernetesSoftwareConfig_Properties,

    -- ** LifecycleConfig
    LifecycleConfig (..),
    newLifecycleConfig,

    -- ** ListAutoscalingPoliciesResponse
    ListAutoscalingPoliciesResponse (..),
    newListAutoscalingPoliciesResponse,

    -- ** ListBatchesResponse
    ListBatchesResponse (..),
    newListBatchesResponse,

    -- ** ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- ** ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListSessionTemplatesResponse
    ListSessionTemplatesResponse (..),
    newListSessionTemplatesResponse,

    -- ** ListSessionsResponse
    ListSessionsResponse (..),
    newListSessionsResponse,

    -- ** ListWorkflowTemplatesResponse
    ListWorkflowTemplatesResponse (..),
    newListWorkflowTemplatesResponse,

    -- ** LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

    -- ** LoggingConfig_DriverLogLevels
    LoggingConfig_DriverLogLevels (..),
    newLoggingConfig_DriverLogLevels,

    -- ** LoggingConfig_DriverLogLevelsAdditional
    LoggingConfig_DriverLogLevelsAdditional (..),

    -- ** ManagedCluster
    ManagedCluster (..),
    newManagedCluster,

    -- ** ManagedCluster_Labels
    ManagedCluster_Labels (..),
    newManagedCluster_Labels,

    -- ** ManagedGroupConfig
    ManagedGroupConfig (..),
    newManagedGroupConfig,

    -- ** MemoryMetrics
    MemoryMetrics (..),
    newMemoryMetrics,

    -- ** MetastoreConfig
    MetastoreConfig (..),
    newMetastoreConfig,

    -- ** Metric
    Metric (..),
    newMetric,

    -- ** Metric_MetricSource
    Metric_MetricSource (..),

    -- ** NamespacedGkeDeploymentTarget
    NamespacedGkeDeploymentTarget (..),
    newNamespacedGkeDeploymentTarget,

    -- ** NodeGroup
    NodeGroup (..),
    newNodeGroup,

    -- ** NodeGroup_Labels
    NodeGroup_Labels (..),
    newNodeGroup_Labels,

    -- ** NodeGroup_RolesItem
    NodeGroup_RolesItem (..),

    -- ** NodeGroupAffinity
    NodeGroupAffinity (..),
    newNodeGroupAffinity,

    -- ** NodeGroupOperationMetadata
    NodeGroupOperationMetadata (..),
    newNodeGroupOperationMetadata,

    -- ** NodeGroupOperationMetadata_Labels
    NodeGroupOperationMetadata_Labels (..),
    newNodeGroupOperationMetadata_Labels,

    -- ** NodeGroupOperationMetadata_OperationType
    NodeGroupOperationMetadata_OperationType (..),

    -- ** NodeInitializationAction
    NodeInitializationAction (..),
    newNodeInitializationAction,

    -- ** NodePool
    NodePool (..),
    newNodePool,

    -- ** NodePool_RepairAction
    NodePool_RepairAction (..),

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OrderedJob
    OrderedJob (..),
    newOrderedJob,

    -- ** OrderedJob_Labels
    OrderedJob_Labels (..),
    newOrderedJob_Labels,

    -- ** OutputMetrics
    OutputMetrics (..),
    newOutputMetrics,

    -- ** OutputQuantileMetrics
    OutputQuantileMetrics (..),
    newOutputQuantileMetrics,

    -- ** ParameterValidation
    ParameterValidation (..),
    newParameterValidation,

    -- ** PeripheralsConfig
    PeripheralsConfig (..),
    newPeripheralsConfig,

    -- ** PigJob
    PigJob (..),
    newPigJob,

    -- ** PigJob_Properties
    PigJob_Properties (..),
    newPigJob_Properties,

    -- ** PigJob_ScriptVariables
    PigJob_ScriptVariables (..),
    newPigJob_ScriptVariables,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PoolData
    PoolData (..),
    newPoolData,

    -- ** PrestoJob
    PrestoJob (..),
    newPrestoJob,

    -- ** PrestoJob_Properties
    PrestoJob_Properties (..),
    newPrestoJob_Properties,

    -- ** ProcessSummary
    ProcessSummary (..),
    newProcessSummary,

    -- ** ProcessSummary_ProcessLogs
    ProcessSummary_ProcessLogs (..),
    newProcessSummary_ProcessLogs,

    -- ** ProvisioningModelMix
    ProvisioningModelMix (..),
    newProvisioningModelMix,

    -- ** PyPiRepositoryConfig
    PyPiRepositoryConfig (..),
    newPyPiRepositoryConfig,

    -- ** PySparkBatch
    PySparkBatch (..),
    newPySparkBatch,

    -- ** PySparkJob
    PySparkJob (..),
    newPySparkJob,

    -- ** PySparkJob_Properties
    PySparkJob_Properties (..),
    newPySparkJob_Properties,

    -- ** Quantiles
    Quantiles (..),
    newQuantiles,

    -- ** QueryList
    QueryList (..),
    newQueryList,

    -- ** RddDataDistribution
    RddDataDistribution (..),
    newRddDataDistribution,

    -- ** RddOperationCluster
    RddOperationCluster (..),
    newRddOperationCluster,

    -- ** RddOperationEdge
    RddOperationEdge (..),
    newRddOperationEdge,

    -- ** RddOperationGraph
    RddOperationGraph (..),
    newRddOperationGraph,

    -- ** RddOperationNode
    RddOperationNode (..),
    newRddOperationNode,

    -- ** RddOperationNode_OutputDeterministicLevel
    RddOperationNode_OutputDeterministicLevel (..),

    -- ** RddPartitionInfo
    RddPartitionInfo (..),
    newRddPartitionInfo,

    -- ** RddStorageInfo
    RddStorageInfo (..),
    newRddStorageInfo,

    -- ** RegexValidation
    RegexValidation (..),
    newRegexValidation,

    -- ** RepairClusterRequest
    RepairClusterRequest (..),
    newRepairClusterRequest,

    -- ** RepairNodeGroupRequest
    RepairNodeGroupRequest (..),
    newRepairNodeGroupRequest,

    -- ** RepairNodeGroupRequest_RepairAction
    RepairNodeGroupRequest_RepairAction (..),

    -- ** RepositoryConfig
    RepositoryConfig (..),
    newRepositoryConfig,

    -- ** ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

    -- ** ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType (..),

    -- ** ResizeNodeGroupRequest
    ResizeNodeGroupRequest (..),
    newResizeNodeGroupRequest,

    -- ** ResourceInformation
    ResourceInformation (..),
    newResourceInformation,

    -- ** ResourceProfileInfo
    ResourceProfileInfo (..),
    newResourceProfileInfo,

    -- ** ResourceProfileInfo_ExecutorResources
    ResourceProfileInfo_ExecutorResources (..),
    newResourceProfileInfo_ExecutorResources,

    -- ** ResourceProfileInfo_TaskResources
    ResourceProfileInfo_TaskResources (..),
    newResourceProfileInfo_TaskResources,

    -- ** RuntimeConfig
    RuntimeConfig (..),
    newRuntimeConfig,

    -- ** RuntimeConfig_Properties
    RuntimeConfig_Properties (..),
    newRuntimeConfig_Properties,

    -- ** RuntimeInfo
    RuntimeInfo (..),
    newRuntimeInfo,

    -- ** RuntimeInfo_Endpoints
    RuntimeInfo_Endpoints (..),
    newRuntimeInfo_Endpoints,

    -- ** SearchSessionSparkApplicationExecutorStageSummaryResponse
    SearchSessionSparkApplicationExecutorStageSummaryResponse (..),
    newSearchSessionSparkApplicationExecutorStageSummaryResponse,

    -- ** SearchSessionSparkApplicationExecutorsResponse
    SearchSessionSparkApplicationExecutorsResponse (..),
    newSearchSessionSparkApplicationExecutorsResponse,

    -- ** SearchSessionSparkApplicationJobsResponse
    SearchSessionSparkApplicationJobsResponse (..),
    newSearchSessionSparkApplicationJobsResponse,

    -- ** SearchSessionSparkApplicationSqlQueriesResponse
    SearchSessionSparkApplicationSqlQueriesResponse (..),
    newSearchSessionSparkApplicationSqlQueriesResponse,

    -- ** SearchSessionSparkApplicationStageAttemptTasksResponse
    SearchSessionSparkApplicationStageAttemptTasksResponse (..),
    newSearchSessionSparkApplicationStageAttemptTasksResponse,

    -- ** SearchSessionSparkApplicationStageAttemptsResponse
    SearchSessionSparkApplicationStageAttemptsResponse (..),
    newSearchSessionSparkApplicationStageAttemptsResponse,

    -- ** SearchSessionSparkApplicationStagesResponse
    SearchSessionSparkApplicationStagesResponse (..),
    newSearchSessionSparkApplicationStagesResponse,

    -- ** SearchSessionSparkApplicationsResponse
    SearchSessionSparkApplicationsResponse (..),
    newSearchSessionSparkApplicationsResponse,

    -- ** SearchSparkApplicationExecutorStageSummaryResponse
    SearchSparkApplicationExecutorStageSummaryResponse (..),
    newSearchSparkApplicationExecutorStageSummaryResponse,

    -- ** SearchSparkApplicationExecutorsResponse
    SearchSparkApplicationExecutorsResponse (..),
    newSearchSparkApplicationExecutorsResponse,

    -- ** SearchSparkApplicationJobsResponse
    SearchSparkApplicationJobsResponse (..),
    newSearchSparkApplicationJobsResponse,

    -- ** SearchSparkApplicationSqlQueriesResponse
    SearchSparkApplicationSqlQueriesResponse (..),
    newSearchSparkApplicationSqlQueriesResponse,

    -- ** SearchSparkApplicationStageAttemptTasksResponse
    SearchSparkApplicationStageAttemptTasksResponse (..),
    newSearchSparkApplicationStageAttemptTasksResponse,

    -- ** SearchSparkApplicationStageAttemptsResponse
    SearchSparkApplicationStageAttemptsResponse (..),
    newSearchSparkApplicationStageAttemptsResponse,

    -- ** SearchSparkApplicationStagesResponse
    SearchSparkApplicationStagesResponse (..),
    newSearchSparkApplicationStagesResponse,

    -- ** SearchSparkApplicationsResponse
    SearchSparkApplicationsResponse (..),
    newSearchSparkApplicationsResponse,

    -- ** SecurityConfig
    SecurityConfig (..),
    newSecurityConfig,

    -- ** Session
    Session (..),
    newSession,

    -- ** Session_Labels
    Session_Labels (..),
    newSession_Labels,

    -- ** Session_State
    Session_State (..),

    -- ** SessionOperationMetadata
    SessionOperationMetadata (..),
    newSessionOperationMetadata,

    -- ** SessionOperationMetadata_Labels
    SessionOperationMetadata_Labels (..),
    newSessionOperationMetadata_Labels,

    -- ** SessionOperationMetadata_OperationType
    SessionOperationMetadata_OperationType (..),

    -- ** SessionStateHistory
    SessionStateHistory (..),
    newSessionStateHistory,

    -- ** SessionStateHistory_State
    SessionStateHistory_State (..),

    -- ** SessionTemplate
    SessionTemplate (..),
    newSessionTemplate,

    -- ** SessionTemplate_Labels
    SessionTemplate_Labels (..),
    newSessionTemplate_Labels,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- ** ShufflePushReadMetrics
    ShufflePushReadMetrics (..),
    newShufflePushReadMetrics,

    -- ** ShufflePushReadQuantileMetrics
    ShufflePushReadQuantileMetrics (..),
    newShufflePushReadQuantileMetrics,

    -- ** ShuffleReadMetrics
    ShuffleReadMetrics (..),
    newShuffleReadMetrics,

    -- ** ShuffleReadQuantileMetrics
    ShuffleReadQuantileMetrics (..),
    newShuffleReadQuantileMetrics,

    -- ** ShuffleWriteMetrics
    ShuffleWriteMetrics (..),
    newShuffleWriteMetrics,

    -- ** ShuffleWriteQuantileMetrics
    ShuffleWriteQuantileMetrics (..),
    newShuffleWriteQuantileMetrics,

    -- ** SinkProgress
    SinkProgress (..),
    newSinkProgress,

    -- ** SinkProgress_Metrics
    SinkProgress_Metrics (..),
    newSinkProgress_Metrics,

    -- ** SoftwareConfig
    SoftwareConfig (..),
    newSoftwareConfig,

    -- ** SoftwareConfig_OptionalComponentsItem
    SoftwareConfig_OptionalComponentsItem (..),

    -- ** SoftwareConfig_Properties
    SoftwareConfig_Properties (..),
    newSoftwareConfig_Properties,

    -- ** SourceProgress
    SourceProgress (..),
    newSourceProgress,

    -- ** SourceProgress_Metrics
    SourceProgress_Metrics (..),
    newSourceProgress_Metrics,

    -- ** SparkApplication
    SparkApplication (..),
    newSparkApplication,

    -- ** SparkBatch
    SparkBatch (..),
    newSparkBatch,

    -- ** SparkConnectConfig
    SparkConnectConfig (..),
    newSparkConnectConfig,

    -- ** SparkHistoryServerConfig
    SparkHistoryServerConfig (..),
    newSparkHistoryServerConfig,

    -- ** SparkJob
    SparkJob (..),
    newSparkJob,

    -- ** SparkJob_Properties
    SparkJob_Properties (..),
    newSparkJob_Properties,

    -- ** SparkPlanGraph
    SparkPlanGraph (..),
    newSparkPlanGraph,

    -- ** SparkPlanGraphCluster
    SparkPlanGraphCluster (..),
    newSparkPlanGraphCluster,

    -- ** SparkPlanGraphEdge
    SparkPlanGraphEdge (..),
    newSparkPlanGraphEdge,

    -- ** SparkPlanGraphNode
    SparkPlanGraphNode (..),
    newSparkPlanGraphNode,

    -- ** SparkPlanGraphNodeWrapper
    SparkPlanGraphNodeWrapper (..),
    newSparkPlanGraphNodeWrapper,

    -- ** SparkRBatch
    SparkRBatch (..),
    newSparkRBatch,

    -- ** SparkRJob
    SparkRJob (..),
    newSparkRJob,

    -- ** SparkRJob_Properties
    SparkRJob_Properties (..),
    newSparkRJob_Properties,

    -- ** SparkRuntimeInfo
    SparkRuntimeInfo (..),
    newSparkRuntimeInfo,

    -- ** SparkSqlBatch
    SparkSqlBatch (..),
    newSparkSqlBatch,

    -- ** SparkSqlBatch_QueryVariables
    SparkSqlBatch_QueryVariables (..),
    newSparkSqlBatch_QueryVariables,

    -- ** SparkSqlJob
    SparkSqlJob (..),
    newSparkSqlJob,

    -- ** SparkSqlJob_Properties
    SparkSqlJob_Properties (..),
    newSparkSqlJob_Properties,

    -- ** SparkSqlJob_ScriptVariables
    SparkSqlJob_ScriptVariables (..),
    newSparkSqlJob_ScriptVariables,

    -- ** SparkStandaloneAutoscalingConfig
    SparkStandaloneAutoscalingConfig (..),
    newSparkStandaloneAutoscalingConfig,

    -- ** SparkWrapperObject
    SparkWrapperObject (..),
    newSparkWrapperObject,

    -- ** SpeculationStageSummary
    SpeculationStageSummary (..),
    newSpeculationStageSummary,

    -- ** SqlExecutionUiData
    SqlExecutionUiData (..),
    newSqlExecutionUiData,

    -- ** SqlExecutionUiData_Jobs
    SqlExecutionUiData_Jobs (..),
    newSqlExecutionUiData_Jobs,

    -- ** SqlExecutionUiData_JobsAdditional
    SqlExecutionUiData_JobsAdditional (..),

    -- ** SqlExecutionUiData_MetricValues
    SqlExecutionUiData_MetricValues (..),
    newSqlExecutionUiData_MetricValues,

    -- ** SqlExecutionUiData_ModifiedConfigs
    SqlExecutionUiData_ModifiedConfigs (..),
    newSqlExecutionUiData_ModifiedConfigs,

    -- ** SqlPlanMetric
    SqlPlanMetric (..),
    newSqlPlanMetric,

    -- ** StageAttemptTasksSummary
    StageAttemptTasksSummary (..),
    newStageAttemptTasksSummary,

    -- ** StageData
    StageData (..),
    newStageData,

    -- ** StageData_ExecutorSummary
    StageData_ExecutorSummary (..),
    newStageData_ExecutorSummary,

    -- ** StageData_KilledTasksSummary
    StageData_KilledTasksSummary (..),
    newStageData_KilledTasksSummary,

    -- ** StageData_Locality
    StageData_Locality (..),
    newStageData_Locality,

    -- ** StageData_Status
    StageData_Status (..),

    -- ** StageData_Tasks
    StageData_Tasks (..),
    newStageData_Tasks,

    -- ** StageInputMetrics
    StageInputMetrics (..),
    newStageInputMetrics,

    -- ** StageMetrics
    StageMetrics (..),
    newStageMetrics,

    -- ** StageOutputMetrics
    StageOutputMetrics (..),
    newStageOutputMetrics,

    -- ** StageShufflePushReadMetrics
    StageShufflePushReadMetrics (..),
    newStageShufflePushReadMetrics,

    -- ** StageShuffleReadMetrics
    StageShuffleReadMetrics (..),
    newStageShuffleReadMetrics,

    -- ** StageShuffleWriteMetrics
    StageShuffleWriteMetrics (..),
    newStageShuffleWriteMetrics,

    -- ** StagesSummary
    StagesSummary (..),
    newStagesSummary,

    -- ** StartClusterRequest
    StartClusterRequest (..),
    newStartClusterRequest,

    -- ** StartupConfig
    StartupConfig (..),
    newStartupConfig,

    -- ** StateHistory
    StateHistory (..),
    newStateHistory,

    -- ** StateHistory_State
    StateHistory_State (..),

    -- ** StateOperatorProgress
    StateOperatorProgress (..),
    newStateOperatorProgress,

    -- ** StateOperatorProgress_CustomMetrics
    StateOperatorProgress_CustomMetrics (..),
    newStateOperatorProgress_CustomMetrics,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StopClusterRequest
    StopClusterRequest (..),
    newStopClusterRequest,

    -- ** StreamBlockData
    StreamBlockData (..),
    newStreamBlockData,

    -- ** StreamingQueryData
    StreamingQueryData (..),
    newStreamingQueryData,

    -- ** StreamingQueryProgress
    StreamingQueryProgress (..),
    newStreamingQueryProgress,

    -- ** StreamingQueryProgress_DurationMillis
    StreamingQueryProgress_DurationMillis (..),
    newStreamingQueryProgress_DurationMillis,

    -- ** StreamingQueryProgress_EventTime
    StreamingQueryProgress_EventTime (..),
    newStreamingQueryProgress_EventTime,

    -- ** StreamingQueryProgress_ObservedMetrics
    StreamingQueryProgress_ObservedMetrics (..),
    newStreamingQueryProgress_ObservedMetrics,

    -- ** SubmitJobRequest
    SubmitJobRequest (..),
    newSubmitJobRequest,

    -- ** SummarizeSessionSparkApplicationExecutorsResponse
    SummarizeSessionSparkApplicationExecutorsResponse (..),
    newSummarizeSessionSparkApplicationExecutorsResponse,

    -- ** SummarizeSessionSparkApplicationJobsResponse
    SummarizeSessionSparkApplicationJobsResponse (..),
    newSummarizeSessionSparkApplicationJobsResponse,

    -- ** SummarizeSessionSparkApplicationStageAttemptTasksResponse
    SummarizeSessionSparkApplicationStageAttemptTasksResponse (..),
    newSummarizeSessionSparkApplicationStageAttemptTasksResponse,

    -- ** SummarizeSessionSparkApplicationStagesResponse
    SummarizeSessionSparkApplicationStagesResponse (..),
    newSummarizeSessionSparkApplicationStagesResponse,

    -- ** SummarizeSparkApplicationExecutorsResponse
    SummarizeSparkApplicationExecutorsResponse (..),
    newSummarizeSparkApplicationExecutorsResponse,

    -- ** SummarizeSparkApplicationJobsResponse
    SummarizeSparkApplicationJobsResponse (..),
    newSummarizeSparkApplicationJobsResponse,

    -- ** SummarizeSparkApplicationStageAttemptTasksResponse
    SummarizeSparkApplicationStageAttemptTasksResponse (..),
    newSummarizeSparkApplicationStageAttemptTasksResponse,

    -- ** SummarizeSparkApplicationStagesResponse
    SummarizeSparkApplicationStagesResponse (..),
    newSummarizeSparkApplicationStagesResponse,

    -- ** TaskData
    TaskData (..),
    newTaskData,

    -- ** TaskData_ExecutorLogs
    TaskData_ExecutorLogs (..),
    newTaskData_ExecutorLogs,

    -- ** TaskMetrics
    TaskMetrics (..),
    newTaskMetrics,

    -- ** TaskQuantileMetrics
    TaskQuantileMetrics (..),
    newTaskQuantileMetrics,

    -- ** TaskResourceRequest
    TaskResourceRequest (..),
    newTaskResourceRequest,

    -- ** TemplateParameter
    TemplateParameter (..),
    newTemplateParameter,

    -- ** TerminateSessionRequest
    TerminateSessionRequest (..),
    newTerminateSessionRequest,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TrinoJob
    TrinoJob (..),
    newTrinoJob,

    -- ** TrinoJob_Properties
    TrinoJob_Properties (..),
    newTrinoJob_Properties,

    -- ** UsageMetrics
    UsageMetrics (..),
    newUsageMetrics,

    -- ** UsageSnapshot
    UsageSnapshot (..),
    newUsageSnapshot,

    -- ** ValueValidation
    ValueValidation (..),
    newValueValidation,

    -- ** VirtualClusterConfig
    VirtualClusterConfig (..),
    newVirtualClusterConfig,

    -- ** WorkflowGraph
    WorkflowGraph (..),
    newWorkflowGraph,

    -- ** WorkflowMetadata
    WorkflowMetadata (..),
    newWorkflowMetadata,

    -- ** WorkflowMetadata_Parameters
    WorkflowMetadata_Parameters (..),
    newWorkflowMetadata_Parameters,

    -- ** WorkflowMetadata_State
    WorkflowMetadata_State (..),

    -- ** WorkflowNode
    WorkflowNode (..),
    newWorkflowNode,

    -- ** WorkflowNode_State
    WorkflowNode_State (..),

    -- ** WorkflowTemplate
    WorkflowTemplate (..),
    newWorkflowTemplate,

    -- ** WorkflowTemplate_Labels
    WorkflowTemplate_Labels (..),
    newWorkflowTemplate_Labels,

    -- ** WorkflowTemplatePlacement
    WorkflowTemplatePlacement (..),
    newWorkflowTemplatePlacement,

    -- ** WriteSessionSparkApplicationContextRequest
    WriteSessionSparkApplicationContextRequest (..),
    newWriteSessionSparkApplicationContextRequest,

    -- ** WriteSessionSparkApplicationContextResponse
    WriteSessionSparkApplicationContextResponse (..),
    newWriteSessionSparkApplicationContextResponse,

    -- ** WriteSparkApplicationContextRequest
    WriteSparkApplicationContextRequest (..),
    newWriteSparkApplicationContextRequest,

    -- ** WriteSparkApplicationContextResponse
    WriteSparkApplicationContextResponse (..),
    newWriteSparkApplicationContextResponse,

    -- ** YarnApplication
    YarnApplication (..),
    newYarnApplication,

    -- ** YarnApplication_State
    YarnApplication_State (..),

    -- ** ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus
    ProjectsLocationsBatchesSparkApplicationsSearchApplicationStatus (..),

    -- ** ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
    ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus (..),

    -- ** ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus
    ProjectsLocationsBatchesSparkApplicationsSearchJobsJobStatus (..),

    -- ** ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus
    ProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksTaskStatus (..),

    -- ** ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus
    ProjectsLocationsBatchesSparkApplicationsSearchStagesStageStatus (..),

    -- ** ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus
    ProjectsLocationsSessionsSparkApplicationsSearchApplicationStatus (..),

    -- ** ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
    ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus (..),

    -- ** ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus
    ProjectsLocationsSessionsSparkApplicationsSearchJobsJobStatus (..),

    -- ** ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus
    ProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksTaskStatus (..),

    -- ** ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus
    ProjectsLocationsSessionsSparkApplicationsSearchStagesStageStatus (..),

    -- ** ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
    ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers (..),

    -- ** ProjectsRegionsJobsListJobStateMatcher
    ProjectsRegionsJobsListJobStateMatcher (..),
  )
where

import Gogol.Dataproc.Internal.Product
import Gogol.Dataproc.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Cloud Dataproc API. This contains the host and root path used as a starting point for constructing service requests.
dataprocService :: Core.ServiceConfig
dataprocService =
  Core.defaultService
    (Core.ServiceId "dataproc:v1")
    "dataproc.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
