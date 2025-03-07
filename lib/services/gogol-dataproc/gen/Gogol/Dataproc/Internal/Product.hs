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
-- Module      : Gogol.Dataproc.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataproc.Internal.Product
  ( -- * AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- * AccessSessionSparkApplicationEnvironmentInfoResponse
    AccessSessionSparkApplicationEnvironmentInfoResponse (..),
    newAccessSessionSparkApplicationEnvironmentInfoResponse,

    -- * AccessSessionSparkApplicationJobResponse
    AccessSessionSparkApplicationJobResponse (..),
    newAccessSessionSparkApplicationJobResponse,

    -- * AccessSessionSparkApplicationResponse
    AccessSessionSparkApplicationResponse (..),
    newAccessSessionSparkApplicationResponse,

    -- * AccessSessionSparkApplicationSqlQueryResponse
    AccessSessionSparkApplicationSqlQueryResponse (..),
    newAccessSessionSparkApplicationSqlQueryResponse,

    -- * AccessSessionSparkApplicationSqlSparkPlanGraphResponse
    AccessSessionSparkApplicationSqlSparkPlanGraphResponse (..),
    newAccessSessionSparkApplicationSqlSparkPlanGraphResponse,

    -- * AccessSessionSparkApplicationStageAttemptResponse
    AccessSessionSparkApplicationStageAttemptResponse (..),
    newAccessSessionSparkApplicationStageAttemptResponse,

    -- * AccessSessionSparkApplicationStageRddOperationGraphResponse
    AccessSessionSparkApplicationStageRddOperationGraphResponse (..),
    newAccessSessionSparkApplicationStageRddOperationGraphResponse,

    -- * AccessSparkApplicationEnvironmentInfoResponse
    AccessSparkApplicationEnvironmentInfoResponse (..),
    newAccessSparkApplicationEnvironmentInfoResponse,

    -- * AccessSparkApplicationJobResponse
    AccessSparkApplicationJobResponse (..),
    newAccessSparkApplicationJobResponse,

    -- * AccessSparkApplicationResponse
    AccessSparkApplicationResponse (..),
    newAccessSparkApplicationResponse,

    -- * AccessSparkApplicationSqlQueryResponse
    AccessSparkApplicationSqlQueryResponse (..),
    newAccessSparkApplicationSqlQueryResponse,

    -- * AccessSparkApplicationSqlSparkPlanGraphResponse
    AccessSparkApplicationSqlSparkPlanGraphResponse (..),
    newAccessSparkApplicationSqlSparkPlanGraphResponse,

    -- * AccessSparkApplicationStageAttemptResponse
    AccessSparkApplicationStageAttemptResponse (..),
    newAccessSparkApplicationStageAttemptResponse,

    -- * AccessSparkApplicationStageRddOperationGraphResponse
    AccessSparkApplicationStageRddOperationGraphResponse (..),
    newAccessSparkApplicationStageRddOperationGraphResponse,

    -- * AccumulableInfo
    AccumulableInfo (..),
    newAccumulableInfo,

    -- * AnalyzeBatchRequest
    AnalyzeBatchRequest (..),
    newAnalyzeBatchRequest,

    -- * AnalyzeOperationMetadata
    AnalyzeOperationMetadata (..),
    newAnalyzeOperationMetadata,

    -- * AnalyzeOperationMetadata_Labels
    AnalyzeOperationMetadata_Labels (..),
    newAnalyzeOperationMetadata_Labels,

    -- * AppSummary
    AppSummary (..),
    newAppSummary,

    -- * ApplicationAttemptInfo
    ApplicationAttemptInfo (..),
    newApplicationAttemptInfo,

    -- * ApplicationEnvironmentInfo
    ApplicationEnvironmentInfo (..),
    newApplicationEnvironmentInfo,

    -- * ApplicationEnvironmentInfo_ClasspathEntries
    ApplicationEnvironmentInfo_ClasspathEntries (..),
    newApplicationEnvironmentInfo_ClasspathEntries,

    -- * ApplicationEnvironmentInfo_HadoopProperties
    ApplicationEnvironmentInfo_HadoopProperties (..),
    newApplicationEnvironmentInfo_HadoopProperties,

    -- * ApplicationEnvironmentInfo_MetricsProperties
    ApplicationEnvironmentInfo_MetricsProperties (..),
    newApplicationEnvironmentInfo_MetricsProperties,

    -- * ApplicationEnvironmentInfo_SparkProperties
    ApplicationEnvironmentInfo_SparkProperties (..),
    newApplicationEnvironmentInfo_SparkProperties,

    -- * ApplicationEnvironmentInfo_SystemProperties
    ApplicationEnvironmentInfo_SystemProperties (..),
    newApplicationEnvironmentInfo_SystemProperties,

    -- * ApplicationInfo
    ApplicationInfo (..),
    newApplicationInfo,

    -- * AutoscalingConfig
    AutoscalingConfig (..),
    newAutoscalingConfig,

    -- * AutoscalingPolicy
    AutoscalingPolicy (..),
    newAutoscalingPolicy,

    -- * AutoscalingPolicy_Labels
    AutoscalingPolicy_Labels (..),
    newAutoscalingPolicy_Labels,

    -- * AutotuningConfig
    AutotuningConfig (..),
    newAutotuningConfig,

    -- * AuxiliaryNodeGroup
    AuxiliaryNodeGroup (..),
    newAuxiliaryNodeGroup,

    -- * AuxiliaryServicesConfig
    AuxiliaryServicesConfig (..),
    newAuxiliaryServicesConfig,

    -- * BasicAutoscalingAlgorithm
    BasicAutoscalingAlgorithm (..),
    newBasicAutoscalingAlgorithm,

    -- * BasicYarnAutoscalingConfig
    BasicYarnAutoscalingConfig (..),
    newBasicYarnAutoscalingConfig,

    -- * Batch
    Batch (..),
    newBatch,

    -- * Batch_Labels
    Batch_Labels (..),
    newBatch_Labels,

    -- * BatchOperationMetadata
    BatchOperationMetadata (..),
    newBatchOperationMetadata,

    -- * BatchOperationMetadata_Labels
    BatchOperationMetadata_Labels (..),
    newBatchOperationMetadata_Labels,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CancelJobRequest
    CancelJobRequest (..),
    newCancelJobRequest,

    -- * Cluster
    Cluster (..),
    newCluster,

    -- * Cluster_Labels
    Cluster_Labels (..),
    newCluster_Labels,

    -- * ClusterConfig
    ClusterConfig (..),
    newClusterConfig,

    -- * ClusterMetrics
    ClusterMetrics (..),
    newClusterMetrics,

    -- * ClusterMetrics_HdfsMetrics
    ClusterMetrics_HdfsMetrics (..),
    newClusterMetrics_HdfsMetrics,

    -- * ClusterMetrics_YarnMetrics
    ClusterMetrics_YarnMetrics (..),
    newClusterMetrics_YarnMetrics,

    -- * ClusterOperation
    ClusterOperation (..),
    newClusterOperation,

    -- * ClusterOperationMetadata
    ClusterOperationMetadata (..),
    newClusterOperationMetadata,

    -- * ClusterOperationMetadata_Labels
    ClusterOperationMetadata_Labels (..),
    newClusterOperationMetadata_Labels,

    -- * ClusterOperationStatus
    ClusterOperationStatus (..),
    newClusterOperationStatus,

    -- * ClusterSelector
    ClusterSelector (..),
    newClusterSelector,

    -- * ClusterSelector_ClusterLabels
    ClusterSelector_ClusterLabels (..),
    newClusterSelector_ClusterLabels,

    -- * ClusterStatus
    ClusterStatus (..),
    newClusterStatus,

    -- * ClusterToRepair
    ClusterToRepair (..),
    newClusterToRepair,

    -- * ConfidentialInstanceConfig
    ConfidentialInstanceConfig (..),
    newConfidentialInstanceConfig,

    -- * ConsolidatedExecutorSummary
    ConsolidatedExecutorSummary (..),
    newConsolidatedExecutorSummary,

    -- * DataprocMetricConfig
    DataprocMetricConfig (..),
    newDataprocMetricConfig,

    -- * DiagnoseClusterRequest
    DiagnoseClusterRequest (..),
    newDiagnoseClusterRequest,

    -- * DiagnoseClusterResults
    DiagnoseClusterResults (..),
    newDiagnoseClusterResults,

    -- * DiskConfig
    DiskConfig (..),
    newDiskConfig,

    -- * DriverSchedulingConfig
    DriverSchedulingConfig (..),
    newDriverSchedulingConfig,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- * EndpointConfig
    EndpointConfig (..),
    newEndpointConfig,

    -- * EndpointConfig_HttpPorts
    EndpointConfig_HttpPorts (..),
    newEndpointConfig_HttpPorts,

    -- * EnvironmentConfig
    EnvironmentConfig (..),
    newEnvironmentConfig,

    -- * ExecutionConfig
    ExecutionConfig (..),
    newExecutionConfig,

    -- * ExecutorMetrics
    ExecutorMetrics (..),
    newExecutorMetrics,

    -- * ExecutorMetrics_Metrics
    ExecutorMetrics_Metrics (..),
    newExecutorMetrics_Metrics,

    -- * ExecutorMetricsDistributions
    ExecutorMetricsDistributions (..),
    newExecutorMetricsDistributions,

    -- * ExecutorPeakMetricsDistributions
    ExecutorPeakMetricsDistributions (..),
    newExecutorPeakMetricsDistributions,

    -- * ExecutorResourceRequest
    ExecutorResourceRequest (..),
    newExecutorResourceRequest,

    -- * ExecutorStageSummary
    ExecutorStageSummary (..),
    newExecutorStageSummary,

    -- * ExecutorSummary
    ExecutorSummary (..),
    newExecutorSummary,

    -- * ExecutorSummary_Attributes
    ExecutorSummary_Attributes (..),
    newExecutorSummary_Attributes,

    -- * ExecutorSummary_ExecutorLogs
    ExecutorSummary_ExecutorLogs (..),
    newExecutorSummary_ExecutorLogs,

    -- * ExecutorSummary_Resources
    ExecutorSummary_Resources (..),
    newExecutorSummary_Resources,

    -- * Expr
    Expr (..),
    newExpr,

    -- * FlinkJob
    FlinkJob (..),
    newFlinkJob,

    -- * FlinkJob_Properties
    FlinkJob_Properties (..),
    newFlinkJob_Properties,

    -- * GceClusterConfig
    GceClusterConfig (..),
    newGceClusterConfig,

    -- * GceClusterConfig_Metadata
    GceClusterConfig_Metadata (..),
    newGceClusterConfig_Metadata,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * GkeClusterConfig
    GkeClusterConfig (..),
    newGkeClusterConfig,

    -- * GkeNodeConfig
    GkeNodeConfig (..),
    newGkeNodeConfig,

    -- * GkeNodePoolAcceleratorConfig
    GkeNodePoolAcceleratorConfig (..),
    newGkeNodePoolAcceleratorConfig,

    -- * GkeNodePoolAutoscalingConfig
    GkeNodePoolAutoscalingConfig (..),
    newGkeNodePoolAutoscalingConfig,

    -- * GkeNodePoolConfig
    GkeNodePoolConfig (..),
    newGkeNodePoolConfig,

    -- * GkeNodePoolTarget
    GkeNodePoolTarget (..),
    newGkeNodePoolTarget,

    -- * GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
    GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig (..),
    newGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig,

    -- * HadoopJob
    HadoopJob (..),
    newHadoopJob,

    -- * HadoopJob_Properties
    HadoopJob_Properties (..),
    newHadoopJob_Properties,

    -- * HiveJob
    HiveJob (..),
    newHiveJob,

    -- * HiveJob_Properties
    HiveJob_Properties (..),
    newHiveJob_Properties,

    -- * HiveJob_ScriptVariables
    HiveJob_ScriptVariables (..),
    newHiveJob_ScriptVariables,

    -- * IdentityConfig
    IdentityConfig (..),
    newIdentityConfig,

    -- * IdentityConfig_UserServiceAccountMapping
    IdentityConfig_UserServiceAccountMapping (..),
    newIdentityConfig_UserServiceAccountMapping,

    -- * InjectCredentialsRequest
    InjectCredentialsRequest (..),
    newInjectCredentialsRequest,

    -- * InputMetrics
    InputMetrics (..),
    newInputMetrics,

    -- * InputQuantileMetrics
    InputQuantileMetrics (..),
    newInputQuantileMetrics,

    -- * InstanceFlexibilityPolicy
    InstanceFlexibilityPolicy (..),
    newInstanceFlexibilityPolicy,

    -- * InstanceGroupAutoscalingPolicyConfig
    InstanceGroupAutoscalingPolicyConfig (..),
    newInstanceGroupAutoscalingPolicyConfig,

    -- * InstanceGroupConfig
    InstanceGroupConfig (..),
    newInstanceGroupConfig,

    -- * InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- * InstanceSelection
    InstanceSelection (..),
    newInstanceSelection,

    -- * InstanceSelectionResult
    InstanceSelectionResult (..),
    newInstanceSelectionResult,

    -- * InstantiateWorkflowTemplateRequest
    InstantiateWorkflowTemplateRequest (..),
    newInstantiateWorkflowTemplateRequest,

    -- * InstantiateWorkflowTemplateRequest_Parameters
    InstantiateWorkflowTemplateRequest_Parameters (..),
    newInstantiateWorkflowTemplateRequest_Parameters,

    -- * Interval
    Interval (..),
    newInterval,

    -- * Job
    Job (..),
    newJob,

    -- * Job_Labels
    Job_Labels (..),
    newJob_Labels,

    -- * JobData
    JobData (..),
    newJobData,

    -- * JobData_KillTasksSummary
    JobData_KillTasksSummary (..),
    newJobData_KillTasksSummary,

    -- * JobMetadata
    JobMetadata (..),
    newJobMetadata,

    -- * JobPlacement
    JobPlacement (..),
    newJobPlacement,

    -- * JobPlacement_ClusterLabels
    JobPlacement_ClusterLabels (..),
    newJobPlacement_ClusterLabels,

    -- * JobReference
    JobReference (..),
    newJobReference,

    -- * JobScheduling
    JobScheduling (..),
    newJobScheduling,

    -- * JobStatus
    JobStatus (..),
    newJobStatus,

    -- * JobsSummary
    JobsSummary (..),
    newJobsSummary,

    -- * JupyterConfig
    JupyterConfig (..),
    newJupyterConfig,

    -- * KerberosConfig
    KerberosConfig (..),
    newKerberosConfig,

    -- * KubernetesClusterConfig
    KubernetesClusterConfig (..),
    newKubernetesClusterConfig,

    -- * KubernetesSoftwareConfig
    KubernetesSoftwareConfig (..),
    newKubernetesSoftwareConfig,

    -- * KubernetesSoftwareConfig_ComponentVersion
    KubernetesSoftwareConfig_ComponentVersion (..),
    newKubernetesSoftwareConfig_ComponentVersion,

    -- * KubernetesSoftwareConfig_Properties
    KubernetesSoftwareConfig_Properties (..),
    newKubernetesSoftwareConfig_Properties,

    -- * LifecycleConfig
    LifecycleConfig (..),
    newLifecycleConfig,

    -- * ListAutoscalingPoliciesResponse
    ListAutoscalingPoliciesResponse (..),
    newListAutoscalingPoliciesResponse,

    -- * ListBatchesResponse
    ListBatchesResponse (..),
    newListBatchesResponse,

    -- * ListClustersResponse
    ListClustersResponse (..),
    newListClustersResponse,

    -- * ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListSessionTemplatesResponse
    ListSessionTemplatesResponse (..),
    newListSessionTemplatesResponse,

    -- * ListSessionsResponse
    ListSessionsResponse (..),
    newListSessionsResponse,

    -- * ListWorkflowTemplatesResponse
    ListWorkflowTemplatesResponse (..),
    newListWorkflowTemplatesResponse,

    -- * LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

    -- * LoggingConfig_DriverLogLevels
    LoggingConfig_DriverLogLevels (..),
    newLoggingConfig_DriverLogLevels,

    -- * ManagedCluster
    ManagedCluster (..),
    newManagedCluster,

    -- * ManagedCluster_Labels
    ManagedCluster_Labels (..),
    newManagedCluster_Labels,

    -- * ManagedGroupConfig
    ManagedGroupConfig (..),
    newManagedGroupConfig,

    -- * MemoryMetrics
    MemoryMetrics (..),
    newMemoryMetrics,

    -- * MetastoreConfig
    MetastoreConfig (..),
    newMetastoreConfig,

    -- * Metric
    Metric (..),
    newMetric,

    -- * NamespacedGkeDeploymentTarget
    NamespacedGkeDeploymentTarget (..),
    newNamespacedGkeDeploymentTarget,

    -- * NodeGroup
    NodeGroup (..),
    newNodeGroup,

    -- * NodeGroup_Labels
    NodeGroup_Labels (..),
    newNodeGroup_Labels,

    -- * NodeGroupAffinity
    NodeGroupAffinity (..),
    newNodeGroupAffinity,

    -- * NodeGroupOperationMetadata
    NodeGroupOperationMetadata (..),
    newNodeGroupOperationMetadata,

    -- * NodeGroupOperationMetadata_Labels
    NodeGroupOperationMetadata_Labels (..),
    newNodeGroupOperationMetadata_Labels,

    -- * NodeInitializationAction
    NodeInitializationAction (..),
    newNodeInitializationAction,

    -- * NodePool
    NodePool (..),
    newNodePool,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OrderedJob
    OrderedJob (..),
    newOrderedJob,

    -- * OrderedJob_Labels
    OrderedJob_Labels (..),
    newOrderedJob_Labels,

    -- * OutputMetrics
    OutputMetrics (..),
    newOutputMetrics,

    -- * OutputQuantileMetrics
    OutputQuantileMetrics (..),
    newOutputQuantileMetrics,

    -- * ParameterValidation
    ParameterValidation (..),
    newParameterValidation,

    -- * PeripheralsConfig
    PeripheralsConfig (..),
    newPeripheralsConfig,

    -- * PigJob
    PigJob (..),
    newPigJob,

    -- * PigJob_Properties
    PigJob_Properties (..),
    newPigJob_Properties,

    -- * PigJob_ScriptVariables
    PigJob_ScriptVariables (..),
    newPigJob_ScriptVariables,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PoolData
    PoolData (..),
    newPoolData,

    -- * PrestoJob
    PrestoJob (..),
    newPrestoJob,

    -- * PrestoJob_Properties
    PrestoJob_Properties (..),
    newPrestoJob_Properties,

    -- * ProcessSummary
    ProcessSummary (..),
    newProcessSummary,

    -- * ProcessSummary_ProcessLogs
    ProcessSummary_ProcessLogs (..),
    newProcessSummary_ProcessLogs,

    -- * ProvisioningModelMix
    ProvisioningModelMix (..),
    newProvisioningModelMix,

    -- * PyPiRepositoryConfig
    PyPiRepositoryConfig (..),
    newPyPiRepositoryConfig,

    -- * PySparkBatch
    PySparkBatch (..),
    newPySparkBatch,

    -- * PySparkJob
    PySparkJob (..),
    newPySparkJob,

    -- * PySparkJob_Properties
    PySparkJob_Properties (..),
    newPySparkJob_Properties,

    -- * Quantiles
    Quantiles (..),
    newQuantiles,

    -- * QueryList
    QueryList (..),
    newQueryList,

    -- * RddDataDistribution
    RddDataDistribution (..),
    newRddDataDistribution,

    -- * RddOperationCluster
    RddOperationCluster (..),
    newRddOperationCluster,

    -- * RddOperationEdge
    RddOperationEdge (..),
    newRddOperationEdge,

    -- * RddOperationGraph
    RddOperationGraph (..),
    newRddOperationGraph,

    -- * RddOperationNode
    RddOperationNode (..),
    newRddOperationNode,

    -- * RddPartitionInfo
    RddPartitionInfo (..),
    newRddPartitionInfo,

    -- * RddStorageInfo
    RddStorageInfo (..),
    newRddStorageInfo,

    -- * RegexValidation
    RegexValidation (..),
    newRegexValidation,

    -- * RepairClusterRequest
    RepairClusterRequest (..),
    newRepairClusterRequest,

    -- * RepairNodeGroupRequest
    RepairNodeGroupRequest (..),
    newRepairNodeGroupRequest,

    -- * RepositoryConfig
    RepositoryConfig (..),
    newRepositoryConfig,

    -- * ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

    -- * ResizeNodeGroupRequest
    ResizeNodeGroupRequest (..),
    newResizeNodeGroupRequest,

    -- * ResourceInformation
    ResourceInformation (..),
    newResourceInformation,

    -- * ResourceProfileInfo
    ResourceProfileInfo (..),
    newResourceProfileInfo,

    -- * ResourceProfileInfo_ExecutorResources
    ResourceProfileInfo_ExecutorResources (..),
    newResourceProfileInfo_ExecutorResources,

    -- * ResourceProfileInfo_TaskResources
    ResourceProfileInfo_TaskResources (..),
    newResourceProfileInfo_TaskResources,

    -- * RuntimeConfig
    RuntimeConfig (..),
    newRuntimeConfig,

    -- * RuntimeConfig_Properties
    RuntimeConfig_Properties (..),
    newRuntimeConfig_Properties,

    -- * RuntimeInfo
    RuntimeInfo (..),
    newRuntimeInfo,

    -- * RuntimeInfo_Endpoints
    RuntimeInfo_Endpoints (..),
    newRuntimeInfo_Endpoints,

    -- * SearchSessionSparkApplicationExecutorStageSummaryResponse
    SearchSessionSparkApplicationExecutorStageSummaryResponse (..),
    newSearchSessionSparkApplicationExecutorStageSummaryResponse,

    -- * SearchSessionSparkApplicationExecutorsResponse
    SearchSessionSparkApplicationExecutorsResponse (..),
    newSearchSessionSparkApplicationExecutorsResponse,

    -- * SearchSessionSparkApplicationJobsResponse
    SearchSessionSparkApplicationJobsResponse (..),
    newSearchSessionSparkApplicationJobsResponse,

    -- * SearchSessionSparkApplicationSqlQueriesResponse
    SearchSessionSparkApplicationSqlQueriesResponse (..),
    newSearchSessionSparkApplicationSqlQueriesResponse,

    -- * SearchSessionSparkApplicationStageAttemptTasksResponse
    SearchSessionSparkApplicationStageAttemptTasksResponse (..),
    newSearchSessionSparkApplicationStageAttemptTasksResponse,

    -- * SearchSessionSparkApplicationStageAttemptsResponse
    SearchSessionSparkApplicationStageAttemptsResponse (..),
    newSearchSessionSparkApplicationStageAttemptsResponse,

    -- * SearchSessionSparkApplicationStagesResponse
    SearchSessionSparkApplicationStagesResponse (..),
    newSearchSessionSparkApplicationStagesResponse,

    -- * SearchSessionSparkApplicationsResponse
    SearchSessionSparkApplicationsResponse (..),
    newSearchSessionSparkApplicationsResponse,

    -- * SearchSparkApplicationExecutorStageSummaryResponse
    SearchSparkApplicationExecutorStageSummaryResponse (..),
    newSearchSparkApplicationExecutorStageSummaryResponse,

    -- * SearchSparkApplicationExecutorsResponse
    SearchSparkApplicationExecutorsResponse (..),
    newSearchSparkApplicationExecutorsResponse,

    -- * SearchSparkApplicationJobsResponse
    SearchSparkApplicationJobsResponse (..),
    newSearchSparkApplicationJobsResponse,

    -- * SearchSparkApplicationSqlQueriesResponse
    SearchSparkApplicationSqlQueriesResponse (..),
    newSearchSparkApplicationSqlQueriesResponse,

    -- * SearchSparkApplicationStageAttemptTasksResponse
    SearchSparkApplicationStageAttemptTasksResponse (..),
    newSearchSparkApplicationStageAttemptTasksResponse,

    -- * SearchSparkApplicationStageAttemptsResponse
    SearchSparkApplicationStageAttemptsResponse (..),
    newSearchSparkApplicationStageAttemptsResponse,

    -- * SearchSparkApplicationStagesResponse
    SearchSparkApplicationStagesResponse (..),
    newSearchSparkApplicationStagesResponse,

    -- * SearchSparkApplicationsResponse
    SearchSparkApplicationsResponse (..),
    newSearchSparkApplicationsResponse,

    -- * SecurityConfig
    SecurityConfig (..),
    newSecurityConfig,

    -- * Session
    Session (..),
    newSession,

    -- * Session_Labels
    Session_Labels (..),
    newSession_Labels,

    -- * SessionOperationMetadata
    SessionOperationMetadata (..),
    newSessionOperationMetadata,

    -- * SessionOperationMetadata_Labels
    SessionOperationMetadata_Labels (..),
    newSessionOperationMetadata_Labels,

    -- * SessionStateHistory
    SessionStateHistory (..),
    newSessionStateHistory,

    -- * SessionTemplate
    SessionTemplate (..),
    newSessionTemplate,

    -- * SessionTemplate_Labels
    SessionTemplate_Labels (..),
    newSessionTemplate_Labels,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- * ShufflePushReadMetrics
    ShufflePushReadMetrics (..),
    newShufflePushReadMetrics,

    -- * ShufflePushReadQuantileMetrics
    ShufflePushReadQuantileMetrics (..),
    newShufflePushReadQuantileMetrics,

    -- * ShuffleReadMetrics
    ShuffleReadMetrics (..),
    newShuffleReadMetrics,

    -- * ShuffleReadQuantileMetrics
    ShuffleReadQuantileMetrics (..),
    newShuffleReadQuantileMetrics,

    -- * ShuffleWriteMetrics
    ShuffleWriteMetrics (..),
    newShuffleWriteMetrics,

    -- * ShuffleWriteQuantileMetrics
    ShuffleWriteQuantileMetrics (..),
    newShuffleWriteQuantileMetrics,

    -- * SinkProgress
    SinkProgress (..),
    newSinkProgress,

    -- * SinkProgress_Metrics
    SinkProgress_Metrics (..),
    newSinkProgress_Metrics,

    -- * SoftwareConfig
    SoftwareConfig (..),
    newSoftwareConfig,

    -- * SoftwareConfig_Properties
    SoftwareConfig_Properties (..),
    newSoftwareConfig_Properties,

    -- * SourceProgress
    SourceProgress (..),
    newSourceProgress,

    -- * SourceProgress_Metrics
    SourceProgress_Metrics (..),
    newSourceProgress_Metrics,

    -- * SparkApplication
    SparkApplication (..),
    newSparkApplication,

    -- * SparkBatch
    SparkBatch (..),
    newSparkBatch,

    -- * SparkConnectConfig
    SparkConnectConfig (..),
    newSparkConnectConfig,

    -- * SparkHistoryServerConfig
    SparkHistoryServerConfig (..),
    newSparkHistoryServerConfig,

    -- * SparkJob
    SparkJob (..),
    newSparkJob,

    -- * SparkJob_Properties
    SparkJob_Properties (..),
    newSparkJob_Properties,

    -- * SparkPlanGraph
    SparkPlanGraph (..),
    newSparkPlanGraph,

    -- * SparkPlanGraphCluster
    SparkPlanGraphCluster (..),
    newSparkPlanGraphCluster,

    -- * SparkPlanGraphEdge
    SparkPlanGraphEdge (..),
    newSparkPlanGraphEdge,

    -- * SparkPlanGraphNode
    SparkPlanGraphNode (..),
    newSparkPlanGraphNode,

    -- * SparkPlanGraphNodeWrapper
    SparkPlanGraphNodeWrapper (..),
    newSparkPlanGraphNodeWrapper,

    -- * SparkRBatch
    SparkRBatch (..),
    newSparkRBatch,

    -- * SparkRJob
    SparkRJob (..),
    newSparkRJob,

    -- * SparkRJob_Properties
    SparkRJob_Properties (..),
    newSparkRJob_Properties,

    -- * SparkRuntimeInfo
    SparkRuntimeInfo (..),
    newSparkRuntimeInfo,

    -- * SparkSqlBatch
    SparkSqlBatch (..),
    newSparkSqlBatch,

    -- * SparkSqlBatch_QueryVariables
    SparkSqlBatch_QueryVariables (..),
    newSparkSqlBatch_QueryVariables,

    -- * SparkSqlJob
    SparkSqlJob (..),
    newSparkSqlJob,

    -- * SparkSqlJob_Properties
    SparkSqlJob_Properties (..),
    newSparkSqlJob_Properties,

    -- * SparkSqlJob_ScriptVariables
    SparkSqlJob_ScriptVariables (..),
    newSparkSqlJob_ScriptVariables,

    -- * SparkStandaloneAutoscalingConfig
    SparkStandaloneAutoscalingConfig (..),
    newSparkStandaloneAutoscalingConfig,

    -- * SparkWrapperObject
    SparkWrapperObject (..),
    newSparkWrapperObject,

    -- * SpeculationStageSummary
    SpeculationStageSummary (..),
    newSpeculationStageSummary,

    -- * SqlExecutionUiData
    SqlExecutionUiData (..),
    newSqlExecutionUiData,

    -- * SqlExecutionUiData_Jobs
    SqlExecutionUiData_Jobs (..),
    newSqlExecutionUiData_Jobs,

    -- * SqlExecutionUiData_MetricValues
    SqlExecutionUiData_MetricValues (..),
    newSqlExecutionUiData_MetricValues,

    -- * SqlExecutionUiData_ModifiedConfigs
    SqlExecutionUiData_ModifiedConfigs (..),
    newSqlExecutionUiData_ModifiedConfigs,

    -- * SqlPlanMetric
    SqlPlanMetric (..),
    newSqlPlanMetric,

    -- * StageAttemptTasksSummary
    StageAttemptTasksSummary (..),
    newStageAttemptTasksSummary,

    -- * StageData
    StageData (..),
    newStageData,

    -- * StageData_ExecutorSummary
    StageData_ExecutorSummary (..),
    newStageData_ExecutorSummary,

    -- * StageData_KilledTasksSummary
    StageData_KilledTasksSummary (..),
    newStageData_KilledTasksSummary,

    -- * StageData_Locality
    StageData_Locality (..),
    newStageData_Locality,

    -- * StageData_Tasks
    StageData_Tasks (..),
    newStageData_Tasks,

    -- * StageInputMetrics
    StageInputMetrics (..),
    newStageInputMetrics,

    -- * StageMetrics
    StageMetrics (..),
    newStageMetrics,

    -- * StageOutputMetrics
    StageOutputMetrics (..),
    newStageOutputMetrics,

    -- * StageShufflePushReadMetrics
    StageShufflePushReadMetrics (..),
    newStageShufflePushReadMetrics,

    -- * StageShuffleReadMetrics
    StageShuffleReadMetrics (..),
    newStageShuffleReadMetrics,

    -- * StageShuffleWriteMetrics
    StageShuffleWriteMetrics (..),
    newStageShuffleWriteMetrics,

    -- * StagesSummary
    StagesSummary (..),
    newStagesSummary,

    -- * StartClusterRequest
    StartClusterRequest (..),
    newStartClusterRequest,

    -- * StartupConfig
    StartupConfig (..),
    newStartupConfig,

    -- * StateHistory
    StateHistory (..),
    newStateHistory,

    -- * StateOperatorProgress
    StateOperatorProgress (..),
    newStateOperatorProgress,

    -- * StateOperatorProgress_CustomMetrics
    StateOperatorProgress_CustomMetrics (..),
    newStateOperatorProgress_CustomMetrics,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StopClusterRequest
    StopClusterRequest (..),
    newStopClusterRequest,

    -- * StreamBlockData
    StreamBlockData (..),
    newStreamBlockData,

    -- * StreamingQueryData
    StreamingQueryData (..),
    newStreamingQueryData,

    -- * StreamingQueryProgress
    StreamingQueryProgress (..),
    newStreamingQueryProgress,

    -- * StreamingQueryProgress_DurationMillis
    StreamingQueryProgress_DurationMillis (..),
    newStreamingQueryProgress_DurationMillis,

    -- * StreamingQueryProgress_EventTime
    StreamingQueryProgress_EventTime (..),
    newStreamingQueryProgress_EventTime,

    -- * StreamingQueryProgress_ObservedMetrics
    StreamingQueryProgress_ObservedMetrics (..),
    newStreamingQueryProgress_ObservedMetrics,

    -- * SubmitJobRequest
    SubmitJobRequest (..),
    newSubmitJobRequest,

    -- * SummarizeSessionSparkApplicationExecutorsResponse
    SummarizeSessionSparkApplicationExecutorsResponse (..),
    newSummarizeSessionSparkApplicationExecutorsResponse,

    -- * SummarizeSessionSparkApplicationJobsResponse
    SummarizeSessionSparkApplicationJobsResponse (..),
    newSummarizeSessionSparkApplicationJobsResponse,

    -- * SummarizeSessionSparkApplicationStageAttemptTasksResponse
    SummarizeSessionSparkApplicationStageAttemptTasksResponse (..),
    newSummarizeSessionSparkApplicationStageAttemptTasksResponse,

    -- * SummarizeSessionSparkApplicationStagesResponse
    SummarizeSessionSparkApplicationStagesResponse (..),
    newSummarizeSessionSparkApplicationStagesResponse,

    -- * SummarizeSparkApplicationExecutorsResponse
    SummarizeSparkApplicationExecutorsResponse (..),
    newSummarizeSparkApplicationExecutorsResponse,

    -- * SummarizeSparkApplicationJobsResponse
    SummarizeSparkApplicationJobsResponse (..),
    newSummarizeSparkApplicationJobsResponse,

    -- * SummarizeSparkApplicationStageAttemptTasksResponse
    SummarizeSparkApplicationStageAttemptTasksResponse (..),
    newSummarizeSparkApplicationStageAttemptTasksResponse,

    -- * SummarizeSparkApplicationStagesResponse
    SummarizeSparkApplicationStagesResponse (..),
    newSummarizeSparkApplicationStagesResponse,

    -- * TaskData
    TaskData (..),
    newTaskData,

    -- * TaskData_ExecutorLogs
    TaskData_ExecutorLogs (..),
    newTaskData_ExecutorLogs,

    -- * TaskMetrics
    TaskMetrics (..),
    newTaskMetrics,

    -- * TaskQuantileMetrics
    TaskQuantileMetrics (..),
    newTaskQuantileMetrics,

    -- * TaskResourceRequest
    TaskResourceRequest (..),
    newTaskResourceRequest,

    -- * TemplateParameter
    TemplateParameter (..),
    newTemplateParameter,

    -- * TerminateSessionRequest
    TerminateSessionRequest (..),
    newTerminateSessionRequest,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TrinoJob
    TrinoJob (..),
    newTrinoJob,

    -- * TrinoJob_Properties
    TrinoJob_Properties (..),
    newTrinoJob_Properties,

    -- * UsageMetrics
    UsageMetrics (..),
    newUsageMetrics,

    -- * UsageSnapshot
    UsageSnapshot (..),
    newUsageSnapshot,

    -- * ValueValidation
    ValueValidation (..),
    newValueValidation,

    -- * VirtualClusterConfig
    VirtualClusterConfig (..),
    newVirtualClusterConfig,

    -- * WorkflowGraph
    WorkflowGraph (..),
    newWorkflowGraph,

    -- * WorkflowMetadata
    WorkflowMetadata (..),
    newWorkflowMetadata,

    -- * WorkflowMetadata_Parameters
    WorkflowMetadata_Parameters (..),
    newWorkflowMetadata_Parameters,

    -- * WorkflowNode
    WorkflowNode (..),
    newWorkflowNode,

    -- * WorkflowTemplate
    WorkflowTemplate (..),
    newWorkflowTemplate,

    -- * WorkflowTemplate_Labels
    WorkflowTemplate_Labels (..),
    newWorkflowTemplate_Labels,

    -- * WorkflowTemplatePlacement
    WorkflowTemplatePlacement (..),
    newWorkflowTemplatePlacement,

    -- * WriteSessionSparkApplicationContextRequest
    WriteSessionSparkApplicationContextRequest (..),
    newWriteSessionSparkApplicationContextRequest,

    -- * WriteSessionSparkApplicationContextResponse
    WriteSessionSparkApplicationContextResponse (..),
    newWriteSessionSparkApplicationContextResponse,

    -- * WriteSparkApplicationContextRequest
    WriteSparkApplicationContextRequest (..),
    newWriteSparkApplicationContextRequest,

    -- * WriteSparkApplicationContextResponse
    WriteSparkApplicationContextResponse (..),
    newWriteSparkApplicationContextResponse,

    -- * YarnApplication
    YarnApplication (..),
    newYarnApplication,
  )
where

import Gogol.Dataproc.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Specifies the type and number of accelerator cards attached to the instances of an instance. See GPUs on Compute Engine (https:\/\/cloud.google.com\/compute\/docs\/gpus\/).
--
-- /See:/ 'newAcceleratorConfig' smart constructor.
data AcceleratorConfig = AcceleratorConfig
  { -- | The number of the accelerator cards of this type exposed to this instance.
    acceleratorCount :: (Core.Maybe Core.Int32),
    -- | Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https:\/\/cloud.google.com\/compute\/docs\/reference\/v1\/acceleratorTypes).Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/zones\/[zone]\/acceleratorTypes\/nvidia-tesla-t4 projects\/[project/id]\/zones\/[zone]\/acceleratorTypes\/nvidia-tesla-t4 nvidia-tesla-t4Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/auto-zone#using/auto/zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-t4.
    acceleratorTypeUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceleratorConfig' with the minimum fields required to make a request.
newAcceleratorConfig ::
  AcceleratorConfig
newAcceleratorConfig =
  AcceleratorConfig
    { acceleratorCount = Core.Nothing,
      acceleratorTypeUri = Core.Nothing
    }

instance Core.FromJSON AcceleratorConfig where
  parseJSON =
    Core.withObject
      "AcceleratorConfig"
      ( \o ->
          AcceleratorConfig
            Core.<$> (o Core..:? "acceleratorCount")
            Core.<*> (o Core..:? "acceleratorTypeUri")
      )

instance Core.ToJSON AcceleratorConfig where
  toJSON AcceleratorConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorCount" Core..=) Core.<$> acceleratorCount,
            ("acceleratorTypeUri" Core..=) Core.<$> acceleratorTypeUri
          ]
      )

-- | Environment details of a Saprk Application.
--
-- /See:/ 'newAccessSessionSparkApplicationEnvironmentInfoResponse' smart constructor.
newtype AccessSessionSparkApplicationEnvironmentInfoResponse = AccessSessionSparkApplicationEnvironmentInfoResponse
  { -- | Details about the Environment that the application is running in.
    applicationEnvironmentInfo :: (Core.Maybe ApplicationEnvironmentInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSessionSparkApplicationEnvironmentInfoResponse' with the minimum fields required to make a request.
newAccessSessionSparkApplicationEnvironmentInfoResponse ::
  AccessSessionSparkApplicationEnvironmentInfoResponse
newAccessSessionSparkApplicationEnvironmentInfoResponse =
  AccessSessionSparkApplicationEnvironmentInfoResponse
    { applicationEnvironmentInfo =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSessionSparkApplicationEnvironmentInfoResponse
  where
  parseJSON =
    Core.withObject
      "AccessSessionSparkApplicationEnvironmentInfoResponse"
      ( \o ->
          AccessSessionSparkApplicationEnvironmentInfoResponse
            Core.<$> (o Core..:? "applicationEnvironmentInfo")
      )

instance
  Core.ToJSON
    AccessSessionSparkApplicationEnvironmentInfoResponse
  where
  toJSON AccessSessionSparkApplicationEnvironmentInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationEnvironmentInfo" Core..=)
              Core.<$> applicationEnvironmentInfo
          ]
      )

-- | Details of a particular job associated with Spark Application
--
-- /See:/ 'newAccessSessionSparkApplicationJobResponse' smart constructor.
newtype AccessSessionSparkApplicationJobResponse = AccessSessionSparkApplicationJobResponse
  { -- | Output only. Data corresponding to a spark job.
    jobData :: (Core.Maybe JobData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSessionSparkApplicationJobResponse' with the minimum fields required to make a request.
newAccessSessionSparkApplicationJobResponse ::
  AccessSessionSparkApplicationJobResponse
newAccessSessionSparkApplicationJobResponse =
  AccessSessionSparkApplicationJobResponse {jobData = Core.Nothing}

instance Core.FromJSON AccessSessionSparkApplicationJobResponse where
  parseJSON =
    Core.withObject
      "AccessSessionSparkApplicationJobResponse"
      ( \o ->
          AccessSessionSparkApplicationJobResponse
            Core.<$> (o Core..:? "jobData")
      )

instance Core.ToJSON AccessSessionSparkApplicationJobResponse where
  toJSON AccessSessionSparkApplicationJobResponse {..} =
    Core.object
      (Core.catMaybes [("jobData" Core..=) Core.<$> jobData])

-- | A summary of Spark Application
--
-- /See:/ 'newAccessSessionSparkApplicationResponse' smart constructor.
newtype AccessSessionSparkApplicationResponse = AccessSessionSparkApplicationResponse
  { -- | Output only. High level information corresponding to an application.
    application :: (Core.Maybe ApplicationInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSessionSparkApplicationResponse' with the minimum fields required to make a request.
newAccessSessionSparkApplicationResponse ::
  AccessSessionSparkApplicationResponse
newAccessSessionSparkApplicationResponse =
  AccessSessionSparkApplicationResponse {application = Core.Nothing}

instance Core.FromJSON AccessSessionSparkApplicationResponse where
  parseJSON =
    Core.withObject
      "AccessSessionSparkApplicationResponse"
      ( \o ->
          AccessSessionSparkApplicationResponse
            Core.<$> (o Core..:? "application")
      )

instance Core.ToJSON AccessSessionSparkApplicationResponse where
  toJSON AccessSessionSparkApplicationResponse {..} =
    Core.object
      (Core.catMaybes [("application" Core..=) Core.<$> application])

-- | Details of a query for a Spark Application
--
-- /See:/ 'newAccessSessionSparkApplicationSqlQueryResponse' smart constructor.
newtype AccessSessionSparkApplicationSqlQueryResponse = AccessSessionSparkApplicationSqlQueryResponse
  { -- | SQL Execution Data
    executionData :: (Core.Maybe SqlExecutionUiData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSessionSparkApplicationSqlQueryResponse' with the minimum fields required to make a request.
newAccessSessionSparkApplicationSqlQueryResponse ::
  AccessSessionSparkApplicationSqlQueryResponse
newAccessSessionSparkApplicationSqlQueryResponse =
  AccessSessionSparkApplicationSqlQueryResponse
    { executionData =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSessionSparkApplicationSqlQueryResponse
  where
  parseJSON =
    Core.withObject
      "AccessSessionSparkApplicationSqlQueryResponse"
      ( \o ->
          AccessSessionSparkApplicationSqlQueryResponse
            Core.<$> (o Core..:? "executionData")
      )

instance Core.ToJSON AccessSessionSparkApplicationSqlQueryResponse where
  toJSON AccessSessionSparkApplicationSqlQueryResponse {..} =
    Core.object
      (Core.catMaybes [("executionData" Core..=) Core.<$> executionData])

-- | SparkPlanGraph for a Spark Application execution limited to maximum 10000 clusters.
--
-- /See:/ 'newAccessSessionSparkApplicationSqlSparkPlanGraphResponse' smart constructor.
newtype AccessSessionSparkApplicationSqlSparkPlanGraphResponse = AccessSessionSparkApplicationSqlSparkPlanGraphResponse
  { -- | SparkPlanGraph for a Spark Application execution.
    sparkPlanGraph :: (Core.Maybe SparkPlanGraph)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSessionSparkApplicationSqlSparkPlanGraphResponse' with the minimum fields required to make a request.
newAccessSessionSparkApplicationSqlSparkPlanGraphResponse ::
  AccessSessionSparkApplicationSqlSparkPlanGraphResponse
newAccessSessionSparkApplicationSqlSparkPlanGraphResponse =
  AccessSessionSparkApplicationSqlSparkPlanGraphResponse
    { sparkPlanGraph =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSessionSparkApplicationSqlSparkPlanGraphResponse
  where
  parseJSON =
    Core.withObject
      "AccessSessionSparkApplicationSqlSparkPlanGraphResponse"
      ( \o ->
          AccessSessionSparkApplicationSqlSparkPlanGraphResponse
            Core.<$> (o Core..:? "sparkPlanGraph")
      )

instance
  Core.ToJSON
    AccessSessionSparkApplicationSqlSparkPlanGraphResponse
  where
  toJSON AccessSessionSparkApplicationSqlSparkPlanGraphResponse {..} =
    Core.object
      ( Core.catMaybes
          [("sparkPlanGraph" Core..=) Core.<$> sparkPlanGraph]
      )

-- | Stage Attempt for a Stage of a Spark Application
--
-- /See:/ 'newAccessSessionSparkApplicationStageAttemptResponse' smart constructor.
newtype AccessSessionSparkApplicationStageAttemptResponse = AccessSessionSparkApplicationStageAttemptResponse
  { -- | Output only. Data corresponding to a stage.
    stageData :: (Core.Maybe StageData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSessionSparkApplicationStageAttemptResponse' with the minimum fields required to make a request.
newAccessSessionSparkApplicationStageAttemptResponse ::
  AccessSessionSparkApplicationStageAttemptResponse
newAccessSessionSparkApplicationStageAttemptResponse =
  AccessSessionSparkApplicationStageAttemptResponse
    { stageData =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSessionSparkApplicationStageAttemptResponse
  where
  parseJSON =
    Core.withObject
      "AccessSessionSparkApplicationStageAttemptResponse"
      ( \o ->
          AccessSessionSparkApplicationStageAttemptResponse
            Core.<$> (o Core..:? "stageData")
      )

instance
  Core.ToJSON
    AccessSessionSparkApplicationStageAttemptResponse
  where
  toJSON AccessSessionSparkApplicationStageAttemptResponse {..} =
    Core.object
      (Core.catMaybes [("stageData" Core..=) Core.<$> stageData])

-- | RDD operation graph for a Spark Application Stage limited to maximum 10000 clusters.
--
-- /See:/ 'newAccessSessionSparkApplicationStageRddOperationGraphResponse' smart constructor.
newtype AccessSessionSparkApplicationStageRddOperationGraphResponse = AccessSessionSparkApplicationStageRddOperationGraphResponse
  { -- | RDD operation graph for a Spark Application Stage.
    rddOperationGraph :: (Core.Maybe RddOperationGraph)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSessionSparkApplicationStageRddOperationGraphResponse' with the minimum fields required to make a request.
newAccessSessionSparkApplicationStageRddOperationGraphResponse ::
  AccessSessionSparkApplicationStageRddOperationGraphResponse
newAccessSessionSparkApplicationStageRddOperationGraphResponse =
  AccessSessionSparkApplicationStageRddOperationGraphResponse
    { rddOperationGraph =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSessionSparkApplicationStageRddOperationGraphResponse
  where
  parseJSON =
    Core.withObject
      "AccessSessionSparkApplicationStageRddOperationGraphResponse"
      ( \o ->
          AccessSessionSparkApplicationStageRddOperationGraphResponse
            Core.<$> (o Core..:? "rddOperationGraph")
      )

instance
  Core.ToJSON
    AccessSessionSparkApplicationStageRddOperationGraphResponse
  where
  toJSON
    AccessSessionSparkApplicationStageRddOperationGraphResponse {..} =
      Core.object
        ( Core.catMaybes
            [("rddOperationGraph" Core..=) Core.<$> rddOperationGraph]
        )

-- | Environment details of a Saprk Application.
--
-- /See:/ 'newAccessSparkApplicationEnvironmentInfoResponse' smart constructor.
newtype AccessSparkApplicationEnvironmentInfoResponse = AccessSparkApplicationEnvironmentInfoResponse
  { -- | Details about the Environment that the application is running in.
    applicationEnvironmentInfo :: (Core.Maybe ApplicationEnvironmentInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSparkApplicationEnvironmentInfoResponse' with the minimum fields required to make a request.
newAccessSparkApplicationEnvironmentInfoResponse ::
  AccessSparkApplicationEnvironmentInfoResponse
newAccessSparkApplicationEnvironmentInfoResponse =
  AccessSparkApplicationEnvironmentInfoResponse
    { applicationEnvironmentInfo =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSparkApplicationEnvironmentInfoResponse
  where
  parseJSON =
    Core.withObject
      "AccessSparkApplicationEnvironmentInfoResponse"
      ( \o ->
          AccessSparkApplicationEnvironmentInfoResponse
            Core.<$> (o Core..:? "applicationEnvironmentInfo")
      )

instance Core.ToJSON AccessSparkApplicationEnvironmentInfoResponse where
  toJSON AccessSparkApplicationEnvironmentInfoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationEnvironmentInfo" Core..=)
              Core.<$> applicationEnvironmentInfo
          ]
      )

-- | Details of a particular job associated with Spark Application
--
-- /See:/ 'newAccessSparkApplicationJobResponse' smart constructor.
newtype AccessSparkApplicationJobResponse = AccessSparkApplicationJobResponse
  { -- | Output only. Data corresponding to a spark job.
    jobData :: (Core.Maybe JobData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSparkApplicationJobResponse' with the minimum fields required to make a request.
newAccessSparkApplicationJobResponse ::
  AccessSparkApplicationJobResponse
newAccessSparkApplicationJobResponse =
  AccessSparkApplicationJobResponse {jobData = Core.Nothing}

instance Core.FromJSON AccessSparkApplicationJobResponse where
  parseJSON =
    Core.withObject
      "AccessSparkApplicationJobResponse"
      ( \o ->
          AccessSparkApplicationJobResponse Core.<$> (o Core..:? "jobData")
      )

instance Core.ToJSON AccessSparkApplicationJobResponse where
  toJSON AccessSparkApplicationJobResponse {..} =
    Core.object
      (Core.catMaybes [("jobData" Core..=) Core.<$> jobData])

-- | A summary of Spark Application
--
-- /See:/ 'newAccessSparkApplicationResponse' smart constructor.
newtype AccessSparkApplicationResponse = AccessSparkApplicationResponse
  { -- | Output only. High level information corresponding to an application.
    application :: (Core.Maybe ApplicationInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSparkApplicationResponse' with the minimum fields required to make a request.
newAccessSparkApplicationResponse ::
  AccessSparkApplicationResponse
newAccessSparkApplicationResponse =
  AccessSparkApplicationResponse {application = Core.Nothing}

instance Core.FromJSON AccessSparkApplicationResponse where
  parseJSON =
    Core.withObject
      "AccessSparkApplicationResponse"
      ( \o ->
          AccessSparkApplicationResponse Core.<$> (o Core..:? "application")
      )

instance Core.ToJSON AccessSparkApplicationResponse where
  toJSON AccessSparkApplicationResponse {..} =
    Core.object
      (Core.catMaybes [("application" Core..=) Core.<$> application])

-- | Details of a query for a Spark Application
--
-- /See:/ 'newAccessSparkApplicationSqlQueryResponse' smart constructor.
newtype AccessSparkApplicationSqlQueryResponse = AccessSparkApplicationSqlQueryResponse
  { -- | SQL Execution Data
    executionData :: (Core.Maybe SqlExecutionUiData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSparkApplicationSqlQueryResponse' with the minimum fields required to make a request.
newAccessSparkApplicationSqlQueryResponse ::
  AccessSparkApplicationSqlQueryResponse
newAccessSparkApplicationSqlQueryResponse =
  AccessSparkApplicationSqlQueryResponse
    { executionData =
        Core.Nothing
    }

instance Core.FromJSON AccessSparkApplicationSqlQueryResponse where
  parseJSON =
    Core.withObject
      "AccessSparkApplicationSqlQueryResponse"
      ( \o ->
          AccessSparkApplicationSqlQueryResponse
            Core.<$> (o Core..:? "executionData")
      )

instance Core.ToJSON AccessSparkApplicationSqlQueryResponse where
  toJSON AccessSparkApplicationSqlQueryResponse {..} =
    Core.object
      (Core.catMaybes [("executionData" Core..=) Core.<$> executionData])

-- | SparkPlanGraph for a Spark Application execution limited to maximum 10000 clusters.
--
-- /See:/ 'newAccessSparkApplicationSqlSparkPlanGraphResponse' smart constructor.
newtype AccessSparkApplicationSqlSparkPlanGraphResponse = AccessSparkApplicationSqlSparkPlanGraphResponse
  { -- | SparkPlanGraph for a Spark Application execution.
    sparkPlanGraph :: (Core.Maybe SparkPlanGraph)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSparkApplicationSqlSparkPlanGraphResponse' with the minimum fields required to make a request.
newAccessSparkApplicationSqlSparkPlanGraphResponse ::
  AccessSparkApplicationSqlSparkPlanGraphResponse
newAccessSparkApplicationSqlSparkPlanGraphResponse =
  AccessSparkApplicationSqlSparkPlanGraphResponse
    { sparkPlanGraph =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSparkApplicationSqlSparkPlanGraphResponse
  where
  parseJSON =
    Core.withObject
      "AccessSparkApplicationSqlSparkPlanGraphResponse"
      ( \o ->
          AccessSparkApplicationSqlSparkPlanGraphResponse
            Core.<$> (o Core..:? "sparkPlanGraph")
      )

instance
  Core.ToJSON
    AccessSparkApplicationSqlSparkPlanGraphResponse
  where
  toJSON AccessSparkApplicationSqlSparkPlanGraphResponse {..} =
    Core.object
      ( Core.catMaybes
          [("sparkPlanGraph" Core..=) Core.<$> sparkPlanGraph]
      )

-- | Stage Attempt for a Stage of a Spark Application
--
-- /See:/ 'newAccessSparkApplicationStageAttemptResponse' smart constructor.
newtype AccessSparkApplicationStageAttemptResponse = AccessSparkApplicationStageAttemptResponse
  { -- | Output only. Data corresponding to a stage.
    stageData :: (Core.Maybe StageData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSparkApplicationStageAttemptResponse' with the minimum fields required to make a request.
newAccessSparkApplicationStageAttemptResponse ::
  AccessSparkApplicationStageAttemptResponse
newAccessSparkApplicationStageAttemptResponse =
  AccessSparkApplicationStageAttemptResponse
    { stageData =
        Core.Nothing
    }

instance Core.FromJSON AccessSparkApplicationStageAttemptResponse where
  parseJSON =
    Core.withObject
      "AccessSparkApplicationStageAttemptResponse"
      ( \o ->
          AccessSparkApplicationStageAttemptResponse
            Core.<$> (o Core..:? "stageData")
      )

instance Core.ToJSON AccessSparkApplicationStageAttemptResponse where
  toJSON AccessSparkApplicationStageAttemptResponse {..} =
    Core.object
      (Core.catMaybes [("stageData" Core..=) Core.<$> stageData])

-- | RDD operation graph for a Spark Application Stage limited to maximum 10000 clusters.
--
-- /See:/ 'newAccessSparkApplicationStageRddOperationGraphResponse' smart constructor.
newtype AccessSparkApplicationStageRddOperationGraphResponse = AccessSparkApplicationStageRddOperationGraphResponse
  { -- | RDD operation graph for a Spark Application Stage.
    rddOperationGraph :: (Core.Maybe RddOperationGraph)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSparkApplicationStageRddOperationGraphResponse' with the minimum fields required to make a request.
newAccessSparkApplicationStageRddOperationGraphResponse ::
  AccessSparkApplicationStageRddOperationGraphResponse
newAccessSparkApplicationStageRddOperationGraphResponse =
  AccessSparkApplicationStageRddOperationGraphResponse
    { rddOperationGraph =
        Core.Nothing
    }

instance
  Core.FromJSON
    AccessSparkApplicationStageRddOperationGraphResponse
  where
  parseJSON =
    Core.withObject
      "AccessSparkApplicationStageRddOperationGraphResponse"
      ( \o ->
          AccessSparkApplicationStageRddOperationGraphResponse
            Core.<$> (o Core..:? "rddOperationGraph")
      )

instance
  Core.ToJSON
    AccessSparkApplicationStageRddOperationGraphResponse
  where
  toJSON AccessSparkApplicationStageRddOperationGraphResponse {..} =
    Core.object
      ( Core.catMaybes
          [("rddOperationGraph" Core..=) Core.<$> rddOperationGraph]
      )

--
-- /See:/ 'newAccumulableInfo' smart constructor.
data AccumulableInfo = AccumulableInfo
  { accumullableInfoId :: (Core.Maybe Core.Int64),
    name :: (Core.Maybe Core.Text),
    update :: (Core.Maybe Core.Text),
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccumulableInfo' with the minimum fields required to make a request.
newAccumulableInfo ::
  AccumulableInfo
newAccumulableInfo =
  AccumulableInfo
    { accumullableInfoId = Core.Nothing,
      name = Core.Nothing,
      update = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON AccumulableInfo where
  parseJSON =
    Core.withObject
      "AccumulableInfo"
      ( \o ->
          AccumulableInfo
            Core.<$> ( o
                         Core..:? "accumullableInfoId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "update")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON AccumulableInfo where
  toJSON AccumulableInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("accumullableInfoId" Core..=)
              Core.. Core.AsText
              Core.<$> accumullableInfoId,
            ("name" Core..=) Core.<$> name,
            ("update" Core..=) Core.<$> update,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A request to analyze a batch workload.
--
-- /See:/ 'newAnalyzeBatchRequest' smart constructor.
newtype AnalyzeBatchRequest = AnalyzeBatchRequest
  { -- | Optional. A unique ID used to identify the request. If the service receives two AnalyzeBatchRequest (http:\/\/cloud\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.AnalyzeBatchRequest)s with the same request/id, the second request is ignored and the Operation that corresponds to the first request created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (/), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeBatchRequest' with the minimum fields required to make a request.
newAnalyzeBatchRequest ::
  AnalyzeBatchRequest
newAnalyzeBatchRequest =
  AnalyzeBatchRequest {requestId = Core.Nothing}

instance Core.FromJSON AnalyzeBatchRequest where
  parseJSON =
    Core.withObject
      "AnalyzeBatchRequest"
      (\o -> AnalyzeBatchRequest Core.<$> (o Core..:? "requestId"))

instance Core.ToJSON AnalyzeBatchRequest where
  toJSON AnalyzeBatchRequest {..} =
    Core.object
      (Core.catMaybes [("requestId" Core..=) Core.<$> requestId])

-- | Metadata describing the Analyze operation.
--
-- /See:/ 'newAnalyzeOperationMetadata' smart constructor.
data AnalyzeOperationMetadata = AnalyzeOperationMetadata
  { -- | Output only. name of the workload being analyzed.
    analyzedWorkloadName :: (Core.Maybe Core.Text),
    -- | Output only. Type of the workload being analyzed.
    analyzedWorkloadType :: (Core.Maybe AnalyzeOperationMetadata_AnalyzedWorkloadType),
    -- | Output only. unique identifier of the workload typically generated by control plane. E.g. batch uuid.
    analyzedWorkloadUuid :: (Core.Maybe Core.Text),
    -- | Output only. The time when the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Short description of the operation.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The time when the operation finished.
    doneTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Labels associated with the operation.
    labels :: (Core.Maybe AnalyzeOperationMetadata_Labels),
    -- | Output only. Warnings encountered during operation execution.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeOperationMetadata' with the minimum fields required to make a request.
newAnalyzeOperationMetadata ::
  AnalyzeOperationMetadata
newAnalyzeOperationMetadata =
  AnalyzeOperationMetadata
    { analyzedWorkloadName = Core.Nothing,
      analyzedWorkloadType = Core.Nothing,
      analyzedWorkloadUuid = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      doneTime = Core.Nothing,
      labels = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON AnalyzeOperationMetadata where
  parseJSON =
    Core.withObject
      "AnalyzeOperationMetadata"
      ( \o ->
          AnalyzeOperationMetadata
            Core.<$> (o Core..:? "analyzedWorkloadName")
            Core.<*> (o Core..:? "analyzedWorkloadType")
            Core.<*> (o Core..:? "analyzedWorkloadUuid")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "doneTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON AnalyzeOperationMetadata where
  toJSON AnalyzeOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("analyzedWorkloadName" Core..=) Core.<$> analyzedWorkloadName,
            ("analyzedWorkloadType" Core..=) Core.<$> analyzedWorkloadType,
            ("analyzedWorkloadUuid" Core..=) Core.<$> analyzedWorkloadUuid,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("doneTime" Core..=) Core.<$> doneTime,
            ("labels" Core..=) Core.<$> labels,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Output only. Labels associated with the operation.
--
-- /See:/ 'newAnalyzeOperationMetadata_Labels' smart constructor.
newtype AnalyzeOperationMetadata_Labels = AnalyzeOperationMetadata_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeOperationMetadata_Labels' with the minimum fields required to make a request.
newAnalyzeOperationMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  AnalyzeOperationMetadata_Labels
newAnalyzeOperationMetadata_Labels additional =
  AnalyzeOperationMetadata_Labels {additional = additional}

instance Core.FromJSON AnalyzeOperationMetadata_Labels where
  parseJSON =
    Core.withObject
      "AnalyzeOperationMetadata_Labels"
      ( \o ->
          AnalyzeOperationMetadata_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON AnalyzeOperationMetadata_Labels where
  toJSON AnalyzeOperationMetadata_Labels {..} = Core.toJSON additional

--
-- /See:/ 'newAppSummary' smart constructor.
data AppSummary = AppSummary
  { numCompletedJobs :: (Core.Maybe Core.Int32),
    numCompletedStages :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppSummary' with the minimum fields required to make a request.
newAppSummary ::
  AppSummary
newAppSummary =
  AppSummary
    { numCompletedJobs = Core.Nothing,
      numCompletedStages = Core.Nothing
    }

instance Core.FromJSON AppSummary where
  parseJSON =
    Core.withObject
      "AppSummary"
      ( \o ->
          AppSummary
            Core.<$> (o Core..:? "numCompletedJobs")
            Core.<*> (o Core..:? "numCompletedStages")
      )

instance Core.ToJSON AppSummary where
  toJSON AppSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("numCompletedJobs" Core..=) Core.<$> numCompletedJobs,
            ("numCompletedStages" Core..=) Core.<$> numCompletedStages
          ]
      )

-- | Specific attempt of an application.
--
-- /See:/ 'newApplicationAttemptInfo' smart constructor.
data ApplicationAttemptInfo = ApplicationAttemptInfo
  { appSparkVersion :: (Core.Maybe Core.Text),
    attemptId :: (Core.Maybe Core.Text),
    completed :: (Core.Maybe Core.Bool),
    durationMillis :: (Core.Maybe Core.Int64),
    endTime :: (Core.Maybe Core.DateTime),
    lastUpdated :: (Core.Maybe Core.DateTime),
    sparkUser :: (Core.Maybe Core.Text),
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationAttemptInfo' with the minimum fields required to make a request.
newApplicationAttemptInfo ::
  ApplicationAttemptInfo
newApplicationAttemptInfo =
  ApplicationAttemptInfo
    { appSparkVersion = Core.Nothing,
      attemptId = Core.Nothing,
      completed = Core.Nothing,
      durationMillis = Core.Nothing,
      endTime = Core.Nothing,
      lastUpdated = Core.Nothing,
      sparkUser = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON ApplicationAttemptInfo where
  parseJSON =
    Core.withObject
      "ApplicationAttemptInfo"
      ( \o ->
          ApplicationAttemptInfo
            Core.<$> (o Core..:? "appSparkVersion")
            Core.<*> (o Core..:? "attemptId")
            Core.<*> (o Core..:? "completed")
            Core.<*> (o Core..:? "durationMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "lastUpdated")
            Core.<*> (o Core..:? "sparkUser")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON ApplicationAttemptInfo where
  toJSON ApplicationAttemptInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("appSparkVersion" Core..=) Core.<$> appSparkVersion,
            ("attemptId" Core..=) Core.<$> attemptId,
            ("completed" Core..=) Core.<$> completed,
            ("durationMillis" Core..=)
              Core.. Core.AsText
              Core.<$> durationMillis,
            ("endTime" Core..=) Core.<$> endTime,
            ("lastUpdated" Core..=) Core.<$> lastUpdated,
            ("sparkUser" Core..=) Core.<$> sparkUser,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Details about the Environment that the application is running in.
--
-- /See:/ 'newApplicationEnvironmentInfo' smart constructor.
data ApplicationEnvironmentInfo = ApplicationEnvironmentInfo
  { classpathEntries :: (Core.Maybe ApplicationEnvironmentInfo_ClasspathEntries),
    hadoopProperties :: (Core.Maybe ApplicationEnvironmentInfo_HadoopProperties),
    metricsProperties :: (Core.Maybe ApplicationEnvironmentInfo_MetricsProperties),
    resourceProfiles :: (Core.Maybe [ResourceProfileInfo]),
    runtime :: (Core.Maybe SparkRuntimeInfo),
    sparkProperties :: (Core.Maybe ApplicationEnvironmentInfo_SparkProperties),
    systemProperties :: (Core.Maybe ApplicationEnvironmentInfo_SystemProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationEnvironmentInfo' with the minimum fields required to make a request.
newApplicationEnvironmentInfo ::
  ApplicationEnvironmentInfo
newApplicationEnvironmentInfo =
  ApplicationEnvironmentInfo
    { classpathEntries = Core.Nothing,
      hadoopProperties = Core.Nothing,
      metricsProperties = Core.Nothing,
      resourceProfiles = Core.Nothing,
      runtime = Core.Nothing,
      sparkProperties = Core.Nothing,
      systemProperties = Core.Nothing
    }

instance Core.FromJSON ApplicationEnvironmentInfo where
  parseJSON =
    Core.withObject
      "ApplicationEnvironmentInfo"
      ( \o ->
          ApplicationEnvironmentInfo
            Core.<$> (o Core..:? "classpathEntries")
            Core.<*> (o Core..:? "hadoopProperties")
            Core.<*> (o Core..:? "metricsProperties")
            Core.<*> (o Core..:? "resourceProfiles")
            Core.<*> (o Core..:? "runtime")
            Core.<*> (o Core..:? "sparkProperties")
            Core.<*> (o Core..:? "systemProperties")
      )

instance Core.ToJSON ApplicationEnvironmentInfo where
  toJSON ApplicationEnvironmentInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("classpathEntries" Core..=) Core.<$> classpathEntries,
            ("hadoopProperties" Core..=) Core.<$> hadoopProperties,
            ("metricsProperties" Core..=) Core.<$> metricsProperties,
            ("resourceProfiles" Core..=) Core.<$> resourceProfiles,
            ("runtime" Core..=) Core.<$> runtime,
            ("sparkProperties" Core..=) Core.<$> sparkProperties,
            ("systemProperties" Core..=) Core.<$> systemProperties
          ]
      )

--
-- /See:/ 'newApplicationEnvironmentInfo_ClasspathEntries' smart constructor.
newtype ApplicationEnvironmentInfo_ClasspathEntries = ApplicationEnvironmentInfo_ClasspathEntries
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationEnvironmentInfo_ClasspathEntries' with the minimum fields required to make a request.
newApplicationEnvironmentInfo_ClasspathEntries ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ApplicationEnvironmentInfo_ClasspathEntries
newApplicationEnvironmentInfo_ClasspathEntries additional =
  ApplicationEnvironmentInfo_ClasspathEntries
    { additional =
        additional
    }

instance Core.FromJSON ApplicationEnvironmentInfo_ClasspathEntries where
  parseJSON =
    Core.withObject
      "ApplicationEnvironmentInfo_ClasspathEntries"
      ( \o ->
          ApplicationEnvironmentInfo_ClasspathEntries
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ApplicationEnvironmentInfo_ClasspathEntries where
  toJSON ApplicationEnvironmentInfo_ClasspathEntries {..} =
    Core.toJSON additional

--
-- /See:/ 'newApplicationEnvironmentInfo_HadoopProperties' smart constructor.
newtype ApplicationEnvironmentInfo_HadoopProperties = ApplicationEnvironmentInfo_HadoopProperties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationEnvironmentInfo_HadoopProperties' with the minimum fields required to make a request.
newApplicationEnvironmentInfo_HadoopProperties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ApplicationEnvironmentInfo_HadoopProperties
newApplicationEnvironmentInfo_HadoopProperties additional =
  ApplicationEnvironmentInfo_HadoopProperties
    { additional =
        additional
    }

instance Core.FromJSON ApplicationEnvironmentInfo_HadoopProperties where
  parseJSON =
    Core.withObject
      "ApplicationEnvironmentInfo_HadoopProperties"
      ( \o ->
          ApplicationEnvironmentInfo_HadoopProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ApplicationEnvironmentInfo_HadoopProperties where
  toJSON ApplicationEnvironmentInfo_HadoopProperties {..} =
    Core.toJSON additional

--
-- /See:/ 'newApplicationEnvironmentInfo_MetricsProperties' smart constructor.
newtype ApplicationEnvironmentInfo_MetricsProperties = ApplicationEnvironmentInfo_MetricsProperties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationEnvironmentInfo_MetricsProperties' with the minimum fields required to make a request.
newApplicationEnvironmentInfo_MetricsProperties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ApplicationEnvironmentInfo_MetricsProperties
newApplicationEnvironmentInfo_MetricsProperties additional =
  ApplicationEnvironmentInfo_MetricsProperties
    { additional =
        additional
    }

instance Core.FromJSON ApplicationEnvironmentInfo_MetricsProperties where
  parseJSON =
    Core.withObject
      "ApplicationEnvironmentInfo_MetricsProperties"
      ( \o ->
          ApplicationEnvironmentInfo_MetricsProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ApplicationEnvironmentInfo_MetricsProperties where
  toJSON ApplicationEnvironmentInfo_MetricsProperties {..} =
    Core.toJSON additional

--
-- /See:/ 'newApplicationEnvironmentInfo_SparkProperties' smart constructor.
newtype ApplicationEnvironmentInfo_SparkProperties = ApplicationEnvironmentInfo_SparkProperties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationEnvironmentInfo_SparkProperties' with the minimum fields required to make a request.
newApplicationEnvironmentInfo_SparkProperties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ApplicationEnvironmentInfo_SparkProperties
newApplicationEnvironmentInfo_SparkProperties additional =
  ApplicationEnvironmentInfo_SparkProperties
    { additional =
        additional
    }

instance Core.FromJSON ApplicationEnvironmentInfo_SparkProperties where
  parseJSON =
    Core.withObject
      "ApplicationEnvironmentInfo_SparkProperties"
      ( \o ->
          ApplicationEnvironmentInfo_SparkProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ApplicationEnvironmentInfo_SparkProperties where
  toJSON ApplicationEnvironmentInfo_SparkProperties {..} =
    Core.toJSON additional

--
-- /See:/ 'newApplicationEnvironmentInfo_SystemProperties' smart constructor.
newtype ApplicationEnvironmentInfo_SystemProperties = ApplicationEnvironmentInfo_SystemProperties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationEnvironmentInfo_SystemProperties' with the minimum fields required to make a request.
newApplicationEnvironmentInfo_SystemProperties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ApplicationEnvironmentInfo_SystemProperties
newApplicationEnvironmentInfo_SystemProperties additional =
  ApplicationEnvironmentInfo_SystemProperties
    { additional =
        additional
    }

instance Core.FromJSON ApplicationEnvironmentInfo_SystemProperties where
  parseJSON =
    Core.withObject
      "ApplicationEnvironmentInfo_SystemProperties"
      ( \o ->
          ApplicationEnvironmentInfo_SystemProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ApplicationEnvironmentInfo_SystemProperties where
  toJSON ApplicationEnvironmentInfo_SystemProperties {..} =
    Core.toJSON additional

-- | High level information corresponding to an application.
--
-- /See:/ 'newApplicationInfo' smart constructor.
data ApplicationInfo = ApplicationInfo
  { applicationContextIngestionStatus :: (Core.Maybe ApplicationInfo_ApplicationContextIngestionStatus),
    applicationId :: (Core.Maybe Core.Text),
    attempts :: (Core.Maybe [ApplicationAttemptInfo]),
    coresGranted :: (Core.Maybe Core.Int32),
    coresPerExecutor :: (Core.Maybe Core.Int32),
    maxCores :: (Core.Maybe Core.Int32),
    memoryPerExecutorMb :: (Core.Maybe Core.Int32),
    name :: (Core.Maybe Core.Text),
    quantileDataStatus :: (Core.Maybe ApplicationInfo_QuantileDataStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationInfo' with the minimum fields required to make a request.
newApplicationInfo ::
  ApplicationInfo
newApplicationInfo =
  ApplicationInfo
    { applicationContextIngestionStatus = Core.Nothing,
      applicationId = Core.Nothing,
      attempts = Core.Nothing,
      coresGranted = Core.Nothing,
      coresPerExecutor = Core.Nothing,
      maxCores = Core.Nothing,
      memoryPerExecutorMb = Core.Nothing,
      name = Core.Nothing,
      quantileDataStatus = Core.Nothing
    }

instance Core.FromJSON ApplicationInfo where
  parseJSON =
    Core.withObject
      "ApplicationInfo"
      ( \o ->
          ApplicationInfo
            Core.<$> (o Core..:? "applicationContextIngestionStatus")
            Core.<*> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "attempts")
            Core.<*> (o Core..:? "coresGranted")
            Core.<*> (o Core..:? "coresPerExecutor")
            Core.<*> (o Core..:? "maxCores")
            Core.<*> (o Core..:? "memoryPerExecutorMb")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "quantileDataStatus")
      )

instance Core.ToJSON ApplicationInfo where
  toJSON ApplicationInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationContextIngestionStatus" Core..=)
              Core.<$> applicationContextIngestionStatus,
            ("applicationId" Core..=) Core.<$> applicationId,
            ("attempts" Core..=) Core.<$> attempts,
            ("coresGranted" Core..=) Core.<$> coresGranted,
            ("coresPerExecutor" Core..=) Core.<$> coresPerExecutor,
            ("maxCores" Core..=) Core.<$> maxCores,
            ("memoryPerExecutorMb" Core..=) Core.<$> memoryPerExecutorMb,
            ("name" Core..=) Core.<$> name,
            ("quantileDataStatus" Core..=) Core.<$> quantileDataStatus
          ]
      )

-- | Autoscaling Policy config associated with the cluster.
--
-- /See:/ 'newAutoscalingConfig' smart constructor.
newtype AutoscalingConfig = AutoscalingConfig
  { -- | Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/locations\/[dataproc/region]\/autoscalingPolicies\/[policy/id] projects\/[project/id]\/locations\/[dataproc/region]\/autoscalingPolicies\/[policy/id]Note that the policy must be in the same project and Dataproc region.
    policyUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingConfig' with the minimum fields required to make a request.
newAutoscalingConfig ::
  AutoscalingConfig
newAutoscalingConfig = AutoscalingConfig {policyUri = Core.Nothing}

instance Core.FromJSON AutoscalingConfig where
  parseJSON =
    Core.withObject
      "AutoscalingConfig"
      (\o -> AutoscalingConfig Core.<$> (o Core..:? "policyUri"))

instance Core.ToJSON AutoscalingConfig where
  toJSON AutoscalingConfig {..} =
    Core.object
      (Core.catMaybes [("policyUri" Core..=) Core.<$> policyUri])

-- | Describes an autoscaling policy for Dataproc cluster autoscaler.
--
-- /See:/ 'newAutoscalingPolicy' smart constructor.
data AutoscalingPolicy = AutoscalingPolicy
  { basicAlgorithm :: (Core.Maybe BasicAutoscalingAlgorithm),
    -- | Required. The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
    id :: (Core.Maybe Core.Text),
    -- | Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
    labels :: (Core.Maybe AutoscalingPolicy_Labels),
    -- | Output only. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
    name :: (Core.Maybe Core.Text),
    -- | Optional. Describes how the autoscaler will operate for secondary workers.
    secondaryWorkerConfig :: (Core.Maybe InstanceGroupAutoscalingPolicyConfig),
    -- | Required. Describes how the autoscaler will operate for primary workers.
    workerConfig :: (Core.Maybe InstanceGroupAutoscalingPolicyConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingPolicy' with the minimum fields required to make a request.
newAutoscalingPolicy ::
  AutoscalingPolicy
newAutoscalingPolicy =
  AutoscalingPolicy
    { basicAlgorithm = Core.Nothing,
      id = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      secondaryWorkerConfig = Core.Nothing,
      workerConfig = Core.Nothing
    }

instance Core.FromJSON AutoscalingPolicy where
  parseJSON =
    Core.withObject
      "AutoscalingPolicy"
      ( \o ->
          AutoscalingPolicy
            Core.<$> (o Core..:? "basicAlgorithm")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "secondaryWorkerConfig")
            Core.<*> (o Core..:? "workerConfig")
      )

instance Core.ToJSON AutoscalingPolicy where
  toJSON AutoscalingPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("basicAlgorithm" Core..=) Core.<$> basicAlgorithm,
            ("id" Core..=) Core.<$> id,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("secondaryWorkerConfig" Core..=) Core.<$> secondaryWorkerConfig,
            ("workerConfig" Core..=) Core.<$> workerConfig
          ]
      )

-- | Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
--
-- /See:/ 'newAutoscalingPolicy_Labels' smart constructor.
newtype AutoscalingPolicy_Labels = AutoscalingPolicy_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingPolicy_Labels' with the minimum fields required to make a request.
newAutoscalingPolicy_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  AutoscalingPolicy_Labels
newAutoscalingPolicy_Labels additional =
  AutoscalingPolicy_Labels {additional = additional}

instance Core.FromJSON AutoscalingPolicy_Labels where
  parseJSON =
    Core.withObject
      "AutoscalingPolicy_Labels"
      (\o -> AutoscalingPolicy_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON AutoscalingPolicy_Labels where
  toJSON AutoscalingPolicy_Labels {..} = Core.toJSON additional

-- | Autotuning configuration of the workload.
--
-- /See:/ 'newAutotuningConfig' smart constructor.
newtype AutotuningConfig = AutotuningConfig
  { -- | Optional. Scenarios for which tunings are applied.
    scenarios :: (Core.Maybe [AutotuningConfig_ScenariosItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutotuningConfig' with the minimum fields required to make a request.
newAutotuningConfig ::
  AutotuningConfig
newAutotuningConfig = AutotuningConfig {scenarios = Core.Nothing}

instance Core.FromJSON AutotuningConfig where
  parseJSON =
    Core.withObject
      "AutotuningConfig"
      (\o -> AutotuningConfig Core.<$> (o Core..:? "scenarios"))

instance Core.ToJSON AutotuningConfig where
  toJSON AutotuningConfig {..} =
    Core.object
      (Core.catMaybes [("scenarios" Core..=) Core.<$> scenarios])

-- | Node group identification and configuration information.
--
-- /See:/ 'newAuxiliaryNodeGroup' smart constructor.
data AuxiliaryNodeGroup = AuxiliaryNodeGroup
  { -- | Required. Node group configuration.
    nodeGroup :: (Core.Maybe NodeGroup),
    -- | Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
    nodeGroupId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuxiliaryNodeGroup' with the minimum fields required to make a request.
newAuxiliaryNodeGroup ::
  AuxiliaryNodeGroup
newAuxiliaryNodeGroup =
  AuxiliaryNodeGroup
    { nodeGroup = Core.Nothing,
      nodeGroupId = Core.Nothing
    }

instance Core.FromJSON AuxiliaryNodeGroup where
  parseJSON =
    Core.withObject
      "AuxiliaryNodeGroup"
      ( \o ->
          AuxiliaryNodeGroup
            Core.<$> (o Core..:? "nodeGroup")
            Core.<*> (o Core..:? "nodeGroupId")
      )

instance Core.ToJSON AuxiliaryNodeGroup where
  toJSON AuxiliaryNodeGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("nodeGroup" Core..=) Core.<$> nodeGroup,
            ("nodeGroupId" Core..=) Core.<$> nodeGroupId
          ]
      )

-- | Auxiliary services configuration for a Cluster.
--
-- /See:/ 'newAuxiliaryServicesConfig' smart constructor.
data AuxiliaryServicesConfig = AuxiliaryServicesConfig
  { -- | Optional. The Hive Metastore configuration for this workload.
    metastoreConfig :: (Core.Maybe MetastoreConfig),
    -- | Optional. The Spark History Server configuration for the workload.
    sparkHistoryServerConfig :: (Core.Maybe SparkHistoryServerConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuxiliaryServicesConfig' with the minimum fields required to make a request.
newAuxiliaryServicesConfig ::
  AuxiliaryServicesConfig
newAuxiliaryServicesConfig =
  AuxiliaryServicesConfig
    { metastoreConfig = Core.Nothing,
      sparkHistoryServerConfig = Core.Nothing
    }

instance Core.FromJSON AuxiliaryServicesConfig where
  parseJSON =
    Core.withObject
      "AuxiliaryServicesConfig"
      ( \o ->
          AuxiliaryServicesConfig
            Core.<$> (o Core..:? "metastoreConfig")
            Core.<*> (o Core..:? "sparkHistoryServerConfig")
      )

instance Core.ToJSON AuxiliaryServicesConfig where
  toJSON AuxiliaryServicesConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("metastoreConfig" Core..=) Core.<$> metastoreConfig,
            ("sparkHistoryServerConfig" Core..=)
              Core.<$> sparkHistoryServerConfig
          ]
      )

-- | Basic algorithm for autoscaling.
--
-- /See:/ 'newBasicAutoscalingAlgorithm' smart constructor.
data BasicAutoscalingAlgorithm = BasicAutoscalingAlgorithm
  { -- | Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
    cooldownPeriod :: (Core.Maybe Core.Duration),
    -- | Optional. Spark Standalone autoscaling configuration
    sparkStandaloneConfig :: (Core.Maybe SparkStandaloneAutoscalingConfig),
    -- | Optional. YARN autoscaling configuration.
    yarnConfig :: (Core.Maybe BasicYarnAutoscalingConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicAutoscalingAlgorithm' with the minimum fields required to make a request.
newBasicAutoscalingAlgorithm ::
  BasicAutoscalingAlgorithm
newBasicAutoscalingAlgorithm =
  BasicAutoscalingAlgorithm
    { cooldownPeriod = Core.Nothing,
      sparkStandaloneConfig = Core.Nothing,
      yarnConfig = Core.Nothing
    }

instance Core.FromJSON BasicAutoscalingAlgorithm where
  parseJSON =
    Core.withObject
      "BasicAutoscalingAlgorithm"
      ( \o ->
          BasicAutoscalingAlgorithm
            Core.<$> (o Core..:? "cooldownPeriod")
            Core.<*> (o Core..:? "sparkStandaloneConfig")
            Core.<*> (o Core..:? "yarnConfig")
      )

instance Core.ToJSON BasicAutoscalingAlgorithm where
  toJSON BasicAutoscalingAlgorithm {..} =
    Core.object
      ( Core.catMaybes
          [ ("cooldownPeriod" Core..=) Core.<$> cooldownPeriod,
            ("sparkStandaloneConfig" Core..=) Core.<$> sparkStandaloneConfig,
            ("yarnConfig" Core..=) Core.<$> yarnConfig
          ]
      )

-- | Basic autoscaling configurations for YARN.
--
-- /See:/ 'newBasicYarnAutoscalingConfig' smart constructor.
data BasicYarnAutoscalingConfig = BasicYarnAutoscalingConfig
  { -- | Required. Timeout for YARN graceful decommissioning of Node Managers. Specifies the duration to wait for jobs to complete before forcefully removing workers (and potentially interrupting jobs). Only applicable to downscaling operations.Bounds: 0s, 1d.
    gracefulDecommissionTimeout :: (Core.Maybe Core.Duration),
    -- | Required. Fraction of average YARN pending memory in the last cooldown period for which to remove workers. A scale-down factor of 1 will result in scaling down so that there is no available memory remaining after the update (more aggressive scaling). A scale-down factor of 0 disables removing workers, which can be beneficial for autoscaling a single job. See How autoscaling works (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/autoscaling#how/autoscaling/works) for more information.Bounds: 0.0, 1.0.
    scaleDownFactor :: (Core.Maybe Core.Double),
    -- | Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0 means the autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
    scaleDownMinWorkerFraction :: (Core.Maybe Core.Double),
    -- | Required. Fraction of average YARN pending memory in the last cooldown period for which to add workers. A scale-up factor of 1.0 will result in scaling up so that there is no pending memory remaining after the update (more aggressive scaling). A scale-up factor closer to 0 will result in a smaller magnitude of scaling up (less aggressive scaling). See How autoscaling works (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/autoscaling#how/autoscaling/works) for more information.Bounds: 0.0, 1.0.
    scaleUpFactor :: (Core.Maybe Core.Double),
    -- | Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of 0 means the autoscaler will scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
    scaleUpMinWorkerFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicYarnAutoscalingConfig' with the minimum fields required to make a request.
newBasicYarnAutoscalingConfig ::
  BasicYarnAutoscalingConfig
newBasicYarnAutoscalingConfig =
  BasicYarnAutoscalingConfig
    { gracefulDecommissionTimeout =
        Core.Nothing,
      scaleDownFactor = Core.Nothing,
      scaleDownMinWorkerFraction = Core.Nothing,
      scaleUpFactor = Core.Nothing,
      scaleUpMinWorkerFraction = Core.Nothing
    }

instance Core.FromJSON BasicYarnAutoscalingConfig where
  parseJSON =
    Core.withObject
      "BasicYarnAutoscalingConfig"
      ( \o ->
          BasicYarnAutoscalingConfig
            Core.<$> (o Core..:? "gracefulDecommissionTimeout")
            Core.<*> (o Core..:? "scaleDownFactor")
            Core.<*> (o Core..:? "scaleDownMinWorkerFraction")
            Core.<*> (o Core..:? "scaleUpFactor")
            Core.<*> (o Core..:? "scaleUpMinWorkerFraction")
      )

instance Core.ToJSON BasicYarnAutoscalingConfig where
  toJSON BasicYarnAutoscalingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gracefulDecommissionTimeout" Core..=)
              Core.<$> gracefulDecommissionTimeout,
            ("scaleDownFactor" Core..=) Core.<$> scaleDownFactor,
            ("scaleDownMinWorkerFraction" Core..=)
              Core.<$> scaleDownMinWorkerFraction,
            ("scaleUpFactor" Core..=) Core.<$> scaleUpFactor,
            ("scaleUpMinWorkerFraction" Core..=)
              Core.<$> scaleUpMinWorkerFraction
          ]
      )

-- | A representation of a batch workload in the service.
--
-- /See:/ 'newBatch' smart constructor.
data Batch = Batch
  { -- | Output only. The time when the batch was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The email address of the user who created the batch.
    creator :: (Core.Maybe Core.Text),
    -- | Optional. Environment configuration for the batch execution.
    environmentConfig :: (Core.Maybe EnvironmentConfig),
    -- | Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a batch.
    labels :: (Core.Maybe Batch_Labels),
    -- | Output only. The resource name of the batch.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the operation associated with this batch.
    operation :: (Core.Maybe Core.Text),
    -- | Optional. PySpark batch config.
    pysparkBatch :: (Core.Maybe PySparkBatch),
    -- | Optional. Runtime configuration for the batch execution.
    runtimeConfig :: (Core.Maybe RuntimeConfig),
    -- | Output only. Runtime information about batch execution.
    runtimeInfo :: (Core.Maybe RuntimeInfo),
    -- | Optional. Spark batch config.
    sparkBatch :: (Core.Maybe SparkBatch),
    -- | Optional. SparkR batch config.
    sparkRBatch :: (Core.Maybe SparkRBatch),
    -- | Optional. SparkSql batch config.
    sparkSqlBatch :: (Core.Maybe SparkSqlBatch),
    -- | Output only. The state of the batch.
    state :: (Core.Maybe Batch_State),
    -- | Output only. Historical state information for the batch.
    stateHistory :: (Core.Maybe [StateHistory]),
    -- | Output only. Batch state details, such as a failure description if the state is FAILED.
    stateMessage :: (Core.Maybe Core.Text),
    -- | Output only. The time when the batch entered a current state.
    stateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
    uuid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Batch' with the minimum fields required to make a request.
newBatch ::
  Batch
newBatch =
  Batch
    { createTime = Core.Nothing,
      creator = Core.Nothing,
      environmentConfig = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      operation = Core.Nothing,
      pysparkBatch = Core.Nothing,
      runtimeConfig = Core.Nothing,
      runtimeInfo = Core.Nothing,
      sparkBatch = Core.Nothing,
      sparkRBatch = Core.Nothing,
      sparkSqlBatch = Core.Nothing,
      state = Core.Nothing,
      stateHistory = Core.Nothing,
      stateMessage = Core.Nothing,
      stateTime = Core.Nothing,
      uuid = Core.Nothing
    }

instance Core.FromJSON Batch where
  parseJSON =
    Core.withObject
      "Batch"
      ( \o ->
          Batch
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "creator")
            Core.<*> (o Core..:? "environmentConfig")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "pysparkBatch")
            Core.<*> (o Core..:? "runtimeConfig")
            Core.<*> (o Core..:? "runtimeInfo")
            Core.<*> (o Core..:? "sparkBatch")
            Core.<*> (o Core..:? "sparkRBatch")
            Core.<*> (o Core..:? "sparkSqlBatch")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateHistory")
            Core.<*> (o Core..:? "stateMessage")
            Core.<*> (o Core..:? "stateTime")
            Core.<*> (o Core..:? "uuid")
      )

instance Core.ToJSON Batch where
  toJSON Batch {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("creator" Core..=) Core.<$> creator,
            ("environmentConfig" Core..=) Core.<$> environmentConfig,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("operation" Core..=) Core.<$> operation,
            ("pysparkBatch" Core..=) Core.<$> pysparkBatch,
            ("runtimeConfig" Core..=) Core.<$> runtimeConfig,
            ("runtimeInfo" Core..=) Core.<$> runtimeInfo,
            ("sparkBatch" Core..=) Core.<$> sparkBatch,
            ("sparkRBatch" Core..=) Core.<$> sparkRBatch,
            ("sparkSqlBatch" Core..=) Core.<$> sparkSqlBatch,
            ("state" Core..=) Core.<$> state,
            ("stateHistory" Core..=) Core.<$> stateHistory,
            ("stateMessage" Core..=) Core.<$> stateMessage,
            ("stateTime" Core..=) Core.<$> stateTime,
            ("uuid" Core..=) Core.<$> uuid
          ]
      )

-- | Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a batch.
--
-- /See:/ 'newBatch_Labels' smart constructor.
newtype Batch_Labels = Batch_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Batch_Labels' with the minimum fields required to make a request.
newBatch_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Batch_Labels
newBatch_Labels additional = Batch_Labels {additional = additional}

instance Core.FromJSON Batch_Labels where
  parseJSON =
    Core.withObject
      "Batch_Labels"
      (\o -> Batch_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Batch_Labels where
  toJSON Batch_Labels {..} = Core.toJSON additional

-- | Metadata describing the Batch operation.
--
-- /See:/ 'newBatchOperationMetadata' smart constructor.
data BatchOperationMetadata = BatchOperationMetadata
  { -- | Name of the batch for the operation.
    batch :: (Core.Maybe Core.Text),
    -- | Batch UUID for the operation.
    batchUuid :: (Core.Maybe Core.Text),
    -- | The time when the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Short description of the operation.
    description :: (Core.Maybe Core.Text),
    -- | The time when the operation finished.
    doneTime :: (Core.Maybe Core.DateTime),
    -- | Labels associated with the operation.
    labels :: (Core.Maybe BatchOperationMetadata_Labels),
    -- | The operation type.
    operationType :: (Core.Maybe BatchOperationMetadata_OperationType),
    -- | Warnings encountered during operation execution.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchOperationMetadata' with the minimum fields required to make a request.
newBatchOperationMetadata ::
  BatchOperationMetadata
newBatchOperationMetadata =
  BatchOperationMetadata
    { batch = Core.Nothing,
      batchUuid = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      doneTime = Core.Nothing,
      labels = Core.Nothing,
      operationType = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON BatchOperationMetadata where
  parseJSON =
    Core.withObject
      "BatchOperationMetadata"
      ( \o ->
          BatchOperationMetadata
            Core.<$> (o Core..:? "batch")
            Core.<*> (o Core..:? "batchUuid")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "doneTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON BatchOperationMetadata where
  toJSON BatchOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("batch" Core..=) Core.<$> batch,
            ("batchUuid" Core..=) Core.<$> batchUuid,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("doneTime" Core..=) Core.<$> doneTime,
            ("labels" Core..=) Core.<$> labels,
            ("operationType" Core..=) Core.<$> operationType,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Labels associated with the operation.
--
-- /See:/ 'newBatchOperationMetadata_Labels' smart constructor.
newtype BatchOperationMetadata_Labels = BatchOperationMetadata_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchOperationMetadata_Labels' with the minimum fields required to make a request.
newBatchOperationMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  BatchOperationMetadata_Labels
newBatchOperationMetadata_Labels additional =
  BatchOperationMetadata_Labels {additional = additional}

instance Core.FromJSON BatchOperationMetadata_Labels where
  parseJSON =
    Core.withObject
      "BatchOperationMetadata_Labels"
      ( \o ->
          BatchOperationMetadata_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BatchOperationMetadata_Labels where
  toJSON BatchOperationMetadata_Labels {..} = Core.toJSON additional

-- | Associates members, or principals, with a role.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding.If the condition evaluates to true, then this binding applies to the current request.If the condition evaluates to false, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding.To learn which resources support conditions in their IAM policies, see the IAM documentation (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. members can have the following values: allUsers: A special identifier that represents anyone who is on the internet; with or without a Google account. allAuthenticatedUsers: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. user:{emailid}: An email address that represents a specific Google account. For example, alice\@example.com . serviceAccount:{emailid}: An email address that represents a Google service account. For example, my-other-app\@appspot.gserviceaccount.com. serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]: An identifier for a Kubernetes service account (https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/kubernetes-service-accounts). For example, my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]. group:{emailid}: An email address
    -- that represents a Google group. For example, admins\@example.com. domain:{domain}: The G Suite domain (primary) that represents all the users of that domain. For example, google.com or example.com. principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool/id}\/subject\/{subject/attribute/value}: A single identity in a workforce identity pool. principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool/id}\/group\/{group/id}: All workforce identities in a group. principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool/id}\/attribute.{attribute/name}\/{attribute/value}: All workforce identities with a specific attribute value. principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*: All identities in a workforce identity pool. principal:\/\/iam.googleapis.com\/projects\/{project/number}\/locations\/global\/workloadIdentityPools\/{pool/id}\/subject\/{subject/attribute/value}: A single identity in a workload identity pool.
    -- principalSet:\/\/iam.googleapis.com\/projects\/{project/number}\/locations\/global\/workloadIdentityPools\/{pool/id}\/group\/{group/id}: A workload identity pool group. principalSet:\/\/iam.googleapis.com\/projects\/{project/number}\/locations\/global\/workloadIdentityPools\/{pool/id}\/attribute.{attribute/name}\/{attribute/value}: All identities in a workload identity pool with a certain attribute. principalSet:\/\/iam.googleapis.com\/projects\/{project/number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*: All identities in a workload identity pool. deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a user that has been recently deleted. For example, alice\@example.com?uid=123456789012345678901. If the user is recovered, this value reverts to user:{emailid} and the recovered user retains the role in the binding. deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a service account that has been recently
    -- deleted. For example, my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901. If the service account is undeleted, this value reverts to serviceAccount:{emailid} and the undeleted service account retains the role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, admins\@example.com?uid=123456789012345678901. If the group is recovered, this value reverts to group:{emailid} and the recovered group retains the role in the binding. deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool/id}\/subject\/{subject/attribute_value}: Deleted single identity in a workforce identity pool. For example, deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of members, or principals. For example, roles\/viewer, roles\/editor, or roles\/owner.For an overview of the IAM roles and permissions, see the IAM documentation (https:\/\/cloud.google.com\/iam\/docs\/roles-overview). For a list of the available pre-defined roles, see here (https:\/\/cloud.google.com\/iam\/docs\/understanding-roles).
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding ::
  Binding
newBinding =
  Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Binding where
  parseJSON =
    Core.withObject
      "Binding"
      ( \o ->
          Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Binding where
  toJSON Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | A request to cancel a job.
--
-- /See:/ 'newCancelJobRequest' smart constructor.
data CancelJobRequest = CancelJobRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelJobRequest' with the minimum fields required to make a request.
newCancelJobRequest ::
  CancelJobRequest
newCancelJobRequest = CancelJobRequest

instance Core.FromJSON CancelJobRequest where
  parseJSON =
    Core.withObject
      "CancelJobRequest"
      (\o -> Core.pure CancelJobRequest)

instance Core.ToJSON CancelJobRequest where
  toJSON = Core.const Core.emptyObject

-- | Describes the identifying information, config, and status of a Dataproc cluster
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster
  { -- | Required. The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
    clusterName :: (Core.Maybe Core.Text),
    -- | Output only. A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
    config :: (Core.Maybe ClusterConfig),
    -- | Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a cluster.
    labels :: (Core.Maybe Cluster_Labels),
    -- | Output only. Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
    metrics :: (Core.Maybe ClusterMetrics),
    -- | Required. The Google Cloud Platform project ID that the cluster belongs to.
    projectId :: (Core.Maybe Core.Text),
    -- | Output only. Cluster status.
    status :: (Core.Maybe ClusterStatus),
    -- | Output only. The previous cluster status.
    statusHistory :: (Core.Maybe [ClusterStatus]),
    -- | Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https:\/\/cloud.google.com\/dataproc\/docs\/guides\/dpgke\/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual/cluster/config must be specified.
    virtualClusterConfig :: (Core.Maybe VirtualClusterConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
newCluster ::
  Cluster
newCluster =
  Cluster
    { clusterName = Core.Nothing,
      clusterUuid = Core.Nothing,
      config = Core.Nothing,
      labels = Core.Nothing,
      metrics = Core.Nothing,
      projectId = Core.Nothing,
      status = Core.Nothing,
      statusHistory = Core.Nothing,
      virtualClusterConfig = Core.Nothing
    }

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \o ->
          Cluster
            Core.<$> (o Core..:? "clusterName")
            Core.<*> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "config")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusHistory")
            Core.<*> (o Core..:? "virtualClusterConfig")
      )

instance Core.ToJSON Cluster where
  toJSON Cluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterName" Core..=) Core.<$> clusterName,
            ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("config" Core..=) Core.<$> config,
            ("labels" Core..=) Core.<$> labels,
            ("metrics" Core..=) Core.<$> metrics,
            ("projectId" Core..=) Core.<$> projectId,
            ("status" Core..=) Core.<$> status,
            ("statusHistory" Core..=) Core.<$> statusHistory,
            ("virtualClusterConfig" Core..=) Core.<$> virtualClusterConfig
          ]
      )

-- | Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a cluster.
--
-- /See:/ 'newCluster_Labels' smart constructor.
newtype Cluster_Labels = Cluster_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster_Labels' with the minimum fields required to make a request.
newCluster_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Cluster_Labels
newCluster_Labels additional =
  Cluster_Labels {additional = additional}

instance Core.FromJSON Cluster_Labels where
  parseJSON =
    Core.withObject
      "Cluster_Labels"
      (\o -> Cluster_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Cluster_Labels where
  toJSON Cluster_Labels {..} = Core.toJSON additional

-- | The cluster config.
--
-- /See:/ 'newClusterConfig' smart constructor.
data ClusterConfig = ClusterConfig
  { -- | Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
    autoscalingConfig :: (Core.Maybe AutoscalingConfig),
    -- | Optional. The node group settings.
    auxiliaryNodeGroups :: (Core.Maybe [AuxiliaryNodeGroup]),
    -- | Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster\'s staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs:\/\/... URI to a Cloud Storage bucket.
    configBucket :: (Core.Maybe Core.Text),
    -- | Optional. The config for Dataproc metrics.
    dataprocMetricConfig :: (Core.Maybe DataprocMetricConfig),
    -- | Optional. Encryption settings for the cluster.
    encryptionConfig :: (Core.Maybe EncryptionConfig),
    -- | Optional. Port\/endpoint configuration for this cluster
    endpointConfig :: (Core.Maybe EndpointConfig),
    -- | Optional. The shared Compute Engine config settings for all instances in a cluster.
    gceClusterConfig :: (Core.Maybe GceClusterConfig),
    -- | Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. These config settings are mutually exclusive with Compute Engine-based options, such as gce/cluster/config, master/config, worker/config, secondary/worker/config, and autoscaling_config.
    gkeClusterConfig :: (Core.Maybe GkeClusterConfig),
    -- | Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node\'s role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http:\/\/metadata\/computeMetadata\/v1\/instance\/attributes\/dataproc-role) if [[ \"${ROLE}\" == \'Master\' ]]; then ... master specific actions ... else ... worker specific actions ... fi
    initializationActions :: (Core.Maybe [NodeInitializationAction]),
    -- | Optional. Lifecycle setting for the cluster.
    lifecycleConfig :: (Core.Maybe LifecycleConfig),
    -- | Optional. The Compute Engine config settings for the cluster\'s master instance.
    masterConfig :: (Core.Maybe InstanceGroupConfig),
    -- | Optional. Metastore configuration.
    metastoreConfig :: (Core.Maybe MetastoreConfig),
    -- | Optional. The Compute Engine config settings for a cluster\'s secondary worker instances
    secondaryWorkerConfig :: (Core.Maybe InstanceGroupConfig),
    -- | Optional. Security settings for the cluster.
    securityConfig :: (Core.Maybe SecurityConfig),
    -- | Optional. The config settings for cluster software.
    softwareConfig :: (Core.Maybe SoftwareConfig),
    -- | Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster\'s temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs:\/\/... URI to a Cloud Storage bucket.
    tempBucket :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine config settings for the cluster\'s worker instances.
    workerConfig :: (Core.Maybe InstanceGroupConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterConfig' with the minimum fields required to make a request.
newClusterConfig ::
  ClusterConfig
newClusterConfig =
  ClusterConfig
    { autoscalingConfig = Core.Nothing,
      auxiliaryNodeGroups = Core.Nothing,
      configBucket = Core.Nothing,
      dataprocMetricConfig = Core.Nothing,
      encryptionConfig = Core.Nothing,
      endpointConfig = Core.Nothing,
      gceClusterConfig = Core.Nothing,
      gkeClusterConfig = Core.Nothing,
      initializationActions = Core.Nothing,
      lifecycleConfig = Core.Nothing,
      masterConfig = Core.Nothing,
      metastoreConfig = Core.Nothing,
      secondaryWorkerConfig = Core.Nothing,
      securityConfig = Core.Nothing,
      softwareConfig = Core.Nothing,
      tempBucket = Core.Nothing,
      workerConfig = Core.Nothing
    }

instance Core.FromJSON ClusterConfig where
  parseJSON =
    Core.withObject
      "ClusterConfig"
      ( \o ->
          ClusterConfig
            Core.<$> (o Core..:? "autoscalingConfig")
            Core.<*> (o Core..:? "auxiliaryNodeGroups")
            Core.<*> (o Core..:? "configBucket")
            Core.<*> (o Core..:? "dataprocMetricConfig")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "endpointConfig")
            Core.<*> (o Core..:? "gceClusterConfig")
            Core.<*> (o Core..:? "gkeClusterConfig")
            Core.<*> (o Core..:? "initializationActions")
            Core.<*> (o Core..:? "lifecycleConfig")
            Core.<*> (o Core..:? "masterConfig")
            Core.<*> (o Core..:? "metastoreConfig")
            Core.<*> (o Core..:? "secondaryWorkerConfig")
            Core.<*> (o Core..:? "securityConfig")
            Core.<*> (o Core..:? "softwareConfig")
            Core.<*> (o Core..:? "tempBucket")
            Core.<*> (o Core..:? "workerConfig")
      )

instance Core.ToJSON ClusterConfig where
  toJSON ClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoscalingConfig" Core..=) Core.<$> autoscalingConfig,
            ("auxiliaryNodeGroups" Core..=) Core.<$> auxiliaryNodeGroups,
            ("configBucket" Core..=) Core.<$> configBucket,
            ("dataprocMetricConfig" Core..=) Core.<$> dataprocMetricConfig,
            ("encryptionConfig" Core..=) Core.<$> encryptionConfig,
            ("endpointConfig" Core..=) Core.<$> endpointConfig,
            ("gceClusterConfig" Core..=) Core.<$> gceClusterConfig,
            ("gkeClusterConfig" Core..=) Core.<$> gkeClusterConfig,
            ("initializationActions" Core..=) Core.<$> initializationActions,
            ("lifecycleConfig" Core..=) Core.<$> lifecycleConfig,
            ("masterConfig" Core..=) Core.<$> masterConfig,
            ("metastoreConfig" Core..=) Core.<$> metastoreConfig,
            ("secondaryWorkerConfig" Core..=) Core.<$> secondaryWorkerConfig,
            ("securityConfig" Core..=) Core.<$> securityConfig,
            ("softwareConfig" Core..=) Core.<$> softwareConfig,
            ("tempBucket" Core..=) Core.<$> tempBucket,
            ("workerConfig" Core..=) Core.<$> workerConfig
          ]
      )

-- | Contains cluster daemon metrics, such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
--
-- /See:/ 'newClusterMetrics' smart constructor.
data ClusterMetrics = ClusterMetrics
  { -- | The HDFS metrics.
    hdfsMetrics :: (Core.Maybe ClusterMetrics_HdfsMetrics),
    -- | YARN metrics.
    yarnMetrics :: (Core.Maybe ClusterMetrics_YarnMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMetrics' with the minimum fields required to make a request.
newClusterMetrics ::
  ClusterMetrics
newClusterMetrics =
  ClusterMetrics
    { hdfsMetrics = Core.Nothing,
      yarnMetrics = Core.Nothing
    }

instance Core.FromJSON ClusterMetrics where
  parseJSON =
    Core.withObject
      "ClusterMetrics"
      ( \o ->
          ClusterMetrics
            Core.<$> (o Core..:? "hdfsMetrics")
            Core.<*> (o Core..:? "yarnMetrics")
      )

instance Core.ToJSON ClusterMetrics where
  toJSON ClusterMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("hdfsMetrics" Core..=) Core.<$> hdfsMetrics,
            ("yarnMetrics" Core..=) Core.<$> yarnMetrics
          ]
      )

-- | The HDFS metrics.
--
-- /See:/ 'newClusterMetrics_HdfsMetrics' smart constructor.
newtype ClusterMetrics_HdfsMetrics = ClusterMetrics_HdfsMetrics
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMetrics_HdfsMetrics' with the minimum fields required to make a request.
newClusterMetrics_HdfsMetrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  ClusterMetrics_HdfsMetrics
newClusterMetrics_HdfsMetrics additional =
  ClusterMetrics_HdfsMetrics {additional = additional}

instance Core.FromJSON ClusterMetrics_HdfsMetrics where
  parseJSON =
    Core.withObject
      "ClusterMetrics_HdfsMetrics"
      ( \o ->
          ClusterMetrics_HdfsMetrics Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterMetrics_HdfsMetrics where
  toJSON ClusterMetrics_HdfsMetrics {..} = Core.toJSON additional

-- | YARN metrics.
--
-- /See:/ 'newClusterMetrics_YarnMetrics' smart constructor.
newtype ClusterMetrics_YarnMetrics = ClusterMetrics_YarnMetrics
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMetrics_YarnMetrics' with the minimum fields required to make a request.
newClusterMetrics_YarnMetrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  ClusterMetrics_YarnMetrics
newClusterMetrics_YarnMetrics additional =
  ClusterMetrics_YarnMetrics {additional = additional}

instance Core.FromJSON ClusterMetrics_YarnMetrics where
  parseJSON =
    Core.withObject
      "ClusterMetrics_YarnMetrics"
      ( \o ->
          ClusterMetrics_YarnMetrics Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterMetrics_YarnMetrics where
  toJSON ClusterMetrics_YarnMetrics {..} = Core.toJSON additional

-- | The cluster operation triggered by a workflow.
--
-- /See:/ 'newClusterOperation' smart constructor.
data ClusterOperation = ClusterOperation
  { -- | Output only. Indicates the operation is done.
    done :: (Core.Maybe Core.Bool),
    -- | Output only. Error, if operation failed.
    error :: (Core.Maybe Core.Text),
    -- | Output only. The id of the cluster operation.
    operationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterOperation' with the minimum fields required to make a request.
newClusterOperation ::
  ClusterOperation
newClusterOperation =
  ClusterOperation
    { done = Core.Nothing,
      error = Core.Nothing,
      operationId = Core.Nothing
    }

instance Core.FromJSON ClusterOperation where
  parseJSON =
    Core.withObject
      "ClusterOperation"
      ( \o ->
          ClusterOperation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "operationId")
      )

instance Core.ToJSON ClusterOperation where
  toJSON ClusterOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("operationId" Core..=) Core.<$> operationId
          ]
      )

-- | Metadata describing the operation.
--
-- /See:/ 'newClusterOperationMetadata' smart constructor.
data ClusterOperationMetadata = ClusterOperationMetadata
  { -- | Output only. Child operation ids
    childOperationIds :: (Core.Maybe [Core.Text]),
    -- | Output only. Name of the cluster for the operation.
    clusterName :: (Core.Maybe Core.Text),
    -- | Output only. Cluster UUID for the operation.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Output only. Short description of operation.
    description :: (Core.Maybe Core.Text),
    -- | Output only. Labels associated with the operation
    labels :: (Core.Maybe ClusterOperationMetadata_Labels),
    -- | Output only. The operation type.
    operationType :: (Core.Maybe Core.Text),
    -- | Output only. Current operation status.
    status :: (Core.Maybe ClusterOperationStatus),
    -- | Output only. The previous operation status.
    statusHistory :: (Core.Maybe [ClusterOperationStatus]),
    -- | Output only. Errors encountered during operation execution.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterOperationMetadata' with the minimum fields required to make a request.
newClusterOperationMetadata ::
  ClusterOperationMetadata
newClusterOperationMetadata =
  ClusterOperationMetadata
    { childOperationIds = Core.Nothing,
      clusterName = Core.Nothing,
      clusterUuid = Core.Nothing,
      description = Core.Nothing,
      labels = Core.Nothing,
      operationType = Core.Nothing,
      status = Core.Nothing,
      statusHistory = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON ClusterOperationMetadata where
  parseJSON =
    Core.withObject
      "ClusterOperationMetadata"
      ( \o ->
          ClusterOperationMetadata
            Core.<$> (o Core..:? "childOperationIds")
            Core.<*> (o Core..:? "clusterName")
            Core.<*> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusHistory")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON ClusterOperationMetadata where
  toJSON ClusterOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("childOperationIds" Core..=) Core.<$> childOperationIds,
            ("clusterName" Core..=) Core.<$> clusterName,
            ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("description" Core..=) Core.<$> description,
            ("labels" Core..=) Core.<$> labels,
            ("operationType" Core..=) Core.<$> operationType,
            ("status" Core..=) Core.<$> status,
            ("statusHistory" Core..=) Core.<$> statusHistory,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Output only. Labels associated with the operation
--
-- /See:/ 'newClusterOperationMetadata_Labels' smart constructor.
newtype ClusterOperationMetadata_Labels = ClusterOperationMetadata_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterOperationMetadata_Labels' with the minimum fields required to make a request.
newClusterOperationMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ClusterOperationMetadata_Labels
newClusterOperationMetadata_Labels additional =
  ClusterOperationMetadata_Labels {additional = additional}

instance Core.FromJSON ClusterOperationMetadata_Labels where
  parseJSON =
    Core.withObject
      "ClusterOperationMetadata_Labels"
      ( \o ->
          ClusterOperationMetadata_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterOperationMetadata_Labels where
  toJSON ClusterOperationMetadata_Labels {..} = Core.toJSON additional

-- | The status of the operation.
--
-- /See:/ 'newClusterOperationStatus' smart constructor.
data ClusterOperationStatus = ClusterOperationStatus
  { -- | Output only. A message containing any operation metadata details.
    details :: (Core.Maybe Core.Text),
    -- | Output only. A message containing the detailed operation state.
    innerState :: (Core.Maybe Core.Text),
    -- | Output only. A message containing the operation state.
    state :: (Core.Maybe ClusterOperationStatus_State),
    -- | Output only. The time this state was entered.
    stateStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterOperationStatus' with the minimum fields required to make a request.
newClusterOperationStatus ::
  ClusterOperationStatus
newClusterOperationStatus =
  ClusterOperationStatus
    { details = Core.Nothing,
      innerState = Core.Nothing,
      state = Core.Nothing,
      stateStartTime = Core.Nothing
    }

instance Core.FromJSON ClusterOperationStatus where
  parseJSON =
    Core.withObject
      "ClusterOperationStatus"
      ( \o ->
          ClusterOperationStatus
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "innerState")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateStartTime")
      )

instance Core.ToJSON ClusterOperationStatus where
  toJSON ClusterOperationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("innerState" Core..=) Core.<$> innerState,
            ("state" Core..=) Core.<$> state,
            ("stateStartTime" Core..=) Core.<$> stateStartTime
          ]
      )

-- | A selector that chooses target cluster for jobs based on metadata.
--
-- /See:/ 'newClusterSelector' smart constructor.
data ClusterSelector = ClusterSelector
  { -- | Required. The cluster labels. Cluster must have all labels to match.
    clusterLabels :: (Core.Maybe ClusterSelector_ClusterLabels),
    -- | Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterSelector' with the minimum fields required to make a request.
newClusterSelector ::
  ClusterSelector
newClusterSelector =
  ClusterSelector
    { clusterLabels = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON ClusterSelector where
  parseJSON =
    Core.withObject
      "ClusterSelector"
      ( \o ->
          ClusterSelector
            Core.<$> (o Core..:? "clusterLabels")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON ClusterSelector where
  toJSON ClusterSelector {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterLabels" Core..=) Core.<$> clusterLabels,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Required. The cluster labels. Cluster must have all labels to match.
--
-- /See:/ 'newClusterSelector_ClusterLabels' smart constructor.
newtype ClusterSelector_ClusterLabels = ClusterSelector_ClusterLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterSelector_ClusterLabels' with the minimum fields required to make a request.
newClusterSelector_ClusterLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ClusterSelector_ClusterLabels
newClusterSelector_ClusterLabels additional =
  ClusterSelector_ClusterLabels {additional = additional}

instance Core.FromJSON ClusterSelector_ClusterLabels where
  parseJSON =
    Core.withObject
      "ClusterSelector_ClusterLabels"
      ( \o ->
          ClusterSelector_ClusterLabels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterSelector_ClusterLabels where
  toJSON ClusterSelector_ClusterLabels {..} = Core.toJSON additional

-- | The status of a cluster and its instances.
--
-- /See:/ 'newClusterStatus' smart constructor.
data ClusterStatus = ClusterStatus
  { -- | Optional. Output only. Details of cluster\'s state.
    detail :: (Core.Maybe Core.Text),
    -- | Output only. The cluster\'s state.
    state :: (Core.Maybe ClusterStatus_State),
    -- | Output only. Time when this state was entered (see JSON representation of Timestamp (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    stateStartTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Additional state information that includes status reported by the agent.
    substate :: (Core.Maybe ClusterStatus_Substate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterStatus' with the minimum fields required to make a request.
newClusterStatus ::
  ClusterStatus
newClusterStatus =
  ClusterStatus
    { detail = Core.Nothing,
      state = Core.Nothing,
      stateStartTime = Core.Nothing,
      substate = Core.Nothing
    }

instance Core.FromJSON ClusterStatus where
  parseJSON =
    Core.withObject
      "ClusterStatus"
      ( \o ->
          ClusterStatus
            Core.<$> (o Core..:? "detail")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateStartTime")
            Core.<*> (o Core..:? "substate")
      )

instance Core.ToJSON ClusterStatus where
  toJSON ClusterStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("detail" Core..=) Core.<$> detail,
            ("state" Core..=) Core.<$> state,
            ("stateStartTime" Core..=) Core.<$> stateStartTime,
            ("substate" Core..=) Core.<$> substate
          ]
      )

-- | Cluster to be repaired
--
-- /See:/ 'newClusterToRepair' smart constructor.
newtype ClusterToRepair = ClusterToRepair
  { -- | Required. Repair action to take on the cluster resource.
    clusterRepairAction :: (Core.Maybe ClusterToRepair_ClusterRepairAction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterToRepair' with the minimum fields required to make a request.
newClusterToRepair ::
  ClusterToRepair
newClusterToRepair =
  ClusterToRepair {clusterRepairAction = Core.Nothing}

instance Core.FromJSON ClusterToRepair where
  parseJSON =
    Core.withObject
      "ClusterToRepair"
      ( \o ->
          ClusterToRepair Core.<$> (o Core..:? "clusterRepairAction")
      )

instance Core.ToJSON ClusterToRepair where
  toJSON ClusterToRepair {..} =
    Core.object
      ( Core.catMaybes
          [("clusterRepairAction" Core..=) Core.<$> clusterRepairAction]
      )

-- | Confidential Instance Config for clusters using Confidential VMs (https:\/\/cloud.google.com\/compute\/confidential-vm\/docs)
--
-- /See:/ 'newConfidentialInstanceConfig' smart constructor.
newtype ConfidentialInstanceConfig = ConfidentialInstanceConfig
  { -- | Optional. Defines whether the instance should have confidential compute enabled.
    enableConfidentialCompute :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfidentialInstanceConfig' with the minimum fields required to make a request.
newConfidentialInstanceConfig ::
  ConfidentialInstanceConfig
newConfidentialInstanceConfig =
  ConfidentialInstanceConfig
    { enableConfidentialCompute =
        Core.Nothing
    }

instance Core.FromJSON ConfidentialInstanceConfig where
  parseJSON =
    Core.withObject
      "ConfidentialInstanceConfig"
      ( \o ->
          ConfidentialInstanceConfig
            Core.<$> (o Core..:? "enableConfidentialCompute")
      )

instance Core.ToJSON ConfidentialInstanceConfig where
  toJSON ConfidentialInstanceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableConfidentialCompute" Core..=)
              Core.<$> enableConfidentialCompute
          ]
      )

-- | Consolidated summary about executors used by the application.
--
-- /See:/ 'newConsolidatedExecutorSummary' smart constructor.
data ConsolidatedExecutorSummary = ConsolidatedExecutorSummary
  { activeTasks :: (Core.Maybe Core.Int32),
    completedTasks :: (Core.Maybe Core.Int32),
    count :: (Core.Maybe Core.Int32),
    diskUsed :: (Core.Maybe Core.Int64),
    failedTasks :: (Core.Maybe Core.Int32),
    isExcluded :: (Core.Maybe Core.Int32),
    maxMemory :: (Core.Maybe Core.Int64),
    memoryMetrics :: (Core.Maybe MemoryMetrics),
    memoryUsed :: (Core.Maybe Core.Int64),
    rddBlocks :: (Core.Maybe Core.Int32),
    totalCores :: (Core.Maybe Core.Int32),
    totalDurationMillis :: (Core.Maybe Core.Int64),
    totalGcTimeMillis :: (Core.Maybe Core.Int64),
    totalInputBytes :: (Core.Maybe Core.Int64),
    totalShuffleRead :: (Core.Maybe Core.Int64),
    totalShuffleWrite :: (Core.Maybe Core.Int64),
    totalTasks :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConsolidatedExecutorSummary' with the minimum fields required to make a request.
newConsolidatedExecutorSummary ::
  ConsolidatedExecutorSummary
newConsolidatedExecutorSummary =
  ConsolidatedExecutorSummary
    { activeTasks = Core.Nothing,
      completedTasks = Core.Nothing,
      count = Core.Nothing,
      diskUsed = Core.Nothing,
      failedTasks = Core.Nothing,
      isExcluded = Core.Nothing,
      maxMemory = Core.Nothing,
      memoryMetrics = Core.Nothing,
      memoryUsed = Core.Nothing,
      rddBlocks = Core.Nothing,
      totalCores = Core.Nothing,
      totalDurationMillis = Core.Nothing,
      totalGcTimeMillis = Core.Nothing,
      totalInputBytes = Core.Nothing,
      totalShuffleRead = Core.Nothing,
      totalShuffleWrite = Core.Nothing,
      totalTasks = Core.Nothing
    }

instance Core.FromJSON ConsolidatedExecutorSummary where
  parseJSON =
    Core.withObject
      "ConsolidatedExecutorSummary"
      ( \o ->
          ConsolidatedExecutorSummary
            Core.<$> (o Core..:? "activeTasks")
            Core.<*> (o Core..:? "completedTasks")
            Core.<*> (o Core..:? "count")
            Core.<*> (o Core..:? "diskUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "failedTasks")
            Core.<*> (o Core..:? "isExcluded")
            Core.<*> (o Core..:? "maxMemory" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "memoryMetrics")
            Core.<*> (o Core..:? "memoryUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "rddBlocks")
            Core.<*> (o Core..:? "totalCores")
            Core.<*> ( o
                         Core..:? "totalDurationMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "totalGcTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalInputBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalShuffleRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalShuffleWrite" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalTasks")
      )

instance Core.ToJSON ConsolidatedExecutorSummary where
  toJSON ConsolidatedExecutorSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeTasks" Core..=) Core.<$> activeTasks,
            ("completedTasks" Core..=) Core.<$> completedTasks,
            ("count" Core..=) Core.<$> count,
            ("diskUsed" Core..=) Core.. Core.AsText Core.<$> diskUsed,
            ("failedTasks" Core..=) Core.<$> failedTasks,
            ("isExcluded" Core..=) Core.<$> isExcluded,
            ("maxMemory" Core..=) Core.. Core.AsText Core.<$> maxMemory,
            ("memoryMetrics" Core..=) Core.<$> memoryMetrics,
            ("memoryUsed" Core..=) Core.. Core.AsText Core.<$> memoryUsed,
            ("rddBlocks" Core..=) Core.<$> rddBlocks,
            ("totalCores" Core..=) Core.<$> totalCores,
            ("totalDurationMillis" Core..=)
              Core.. Core.AsText
              Core.<$> totalDurationMillis,
            ("totalGcTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> totalGcTimeMillis,
            ("totalInputBytes" Core..=)
              Core.. Core.AsText
              Core.<$> totalInputBytes,
            ("totalShuffleRead" Core..=)
              Core.. Core.AsText
              Core.<$> totalShuffleRead,
            ("totalShuffleWrite" Core..=)
              Core.. Core.AsText
              Core.<$> totalShuffleWrite,
            ("totalTasks" Core..=) Core.<$> totalTasks
          ]
      )

-- | Dataproc metric config.
--
-- /See:/ 'newDataprocMetricConfig' smart constructor.
newtype DataprocMetricConfig = DataprocMetricConfig
  { -- | Required. Metrics sources to enable.
    metrics :: (Core.Maybe [Metric])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocMetricConfig' with the minimum fields required to make a request.
newDataprocMetricConfig ::
  DataprocMetricConfig
newDataprocMetricConfig =
  DataprocMetricConfig {metrics = Core.Nothing}

instance Core.FromJSON DataprocMetricConfig where
  parseJSON =
    Core.withObject
      "DataprocMetricConfig"
      (\o -> DataprocMetricConfig Core.<$> (o Core..:? "metrics"))

instance Core.ToJSON DataprocMetricConfig where
  toJSON DataprocMetricConfig {..} =
    Core.object
      (Core.catMaybes [("metrics" Core..=) Core.<$> metrics])

-- | A request to collect cluster diagnostic information.
--
-- /See:/ 'newDiagnoseClusterRequest' smart constructor.
data DiagnoseClusterRequest = DiagnoseClusterRequest
  { -- | Optional. Time interval in which diagnosis should be carried out on the cluster.
    diagnosisInterval :: (Core.Maybe Interval),
    -- | Optional. DEPRECATED Specifies the job on which diagnosis is to be performed. Format: projects\/{project}\/regions\/{region}\/jobs\/{job}
    job :: (Core.Maybe Core.Text),
    -- | Optional. Specifies a list of jobs on which diagnosis is to be performed. Format: projects\/{project}\/regions\/{region}\/jobs\/{job}
    jobs :: (Core.Maybe [Core.Text]),
    -- | Optional. (Optional) The access type to the diagnostic tarball. If not specified, falls back to default access of the bucket
    tarballAccess :: (Core.Maybe DiagnoseClusterRequest_TarballAccess),
    -- | Optional. (Optional) The output Cloud Storage directory for the diagnostic tarball. If not specified, a task-specific directory in the cluster\'s staging bucket will be used.
    tarballGcsDir :: (Core.Maybe Core.Text),
    -- | Optional. DEPRECATED Specifies the yarn application on which diagnosis is to be performed.
    yarnApplicationId :: (Core.Maybe Core.Text),
    -- | Optional. Specifies a list of yarn applications on which diagnosis is to be performed.
    yarnApplicationIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiagnoseClusterRequest' with the minimum fields required to make a request.
newDiagnoseClusterRequest ::
  DiagnoseClusterRequest
newDiagnoseClusterRequest =
  DiagnoseClusterRequest
    { diagnosisInterval = Core.Nothing,
      job = Core.Nothing,
      jobs = Core.Nothing,
      tarballAccess = Core.Nothing,
      tarballGcsDir = Core.Nothing,
      yarnApplicationId = Core.Nothing,
      yarnApplicationIds = Core.Nothing
    }

instance Core.FromJSON DiagnoseClusterRequest where
  parseJSON =
    Core.withObject
      "DiagnoseClusterRequest"
      ( \o ->
          DiagnoseClusterRequest
            Core.<$> (o Core..:? "diagnosisInterval")
            Core.<*> (o Core..:? "job")
            Core.<*> (o Core..:? "jobs")
            Core.<*> (o Core..:? "tarballAccess")
            Core.<*> (o Core..:? "tarballGcsDir")
            Core.<*> (o Core..:? "yarnApplicationId")
            Core.<*> (o Core..:? "yarnApplicationIds")
      )

instance Core.ToJSON DiagnoseClusterRequest where
  toJSON DiagnoseClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("diagnosisInterval" Core..=) Core.<$> diagnosisInterval,
            ("job" Core..=) Core.<$> job,
            ("jobs" Core..=) Core.<$> jobs,
            ("tarballAccess" Core..=) Core.<$> tarballAccess,
            ("tarballGcsDir" Core..=) Core.<$> tarballGcsDir,
            ("yarnApplicationId" Core..=) Core.<$> yarnApplicationId,
            ("yarnApplicationIds" Core..=) Core.<$> yarnApplicationIds
          ]
      )

-- | The location of diagnostic output.
--
-- /See:/ 'newDiagnoseClusterResults' smart constructor.
newtype DiagnoseClusterResults = DiagnoseClusterResults
  { -- | Output only. The Cloud Storage URI of the diagnostic output. The output report is a plain text file with a summary of collected diagnostics.
    outputUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiagnoseClusterResults' with the minimum fields required to make a request.
newDiagnoseClusterResults ::
  DiagnoseClusterResults
newDiagnoseClusterResults =
  DiagnoseClusterResults {outputUri = Core.Nothing}

instance Core.FromJSON DiagnoseClusterResults where
  parseJSON =
    Core.withObject
      "DiagnoseClusterResults"
      (\o -> DiagnoseClusterResults Core.<$> (o Core..:? "outputUri"))

instance Core.ToJSON DiagnoseClusterResults where
  toJSON DiagnoseClusterResults {..} =
    Core.object
      (Core.catMaybes [("outputUri" Core..=) Core.<$> outputUri])

-- | Specifies the config of disk options for a group of VM instances.
--
-- /See:/ 'newDiskConfig' smart constructor.
data DiskConfig = DiskConfig
  { -- | Optional. Indicates how many IOPS to provision for the disk. This sets the number of I\/O operations per second that the disk can handle. Note: This field is only supported if boot/disk/type is hyperdisk-balanced.
    bootDiskProvisionedIops :: (Core.Maybe Core.Int64),
    -- | Optional. Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be greater than or equal to 1. Note: This field is only supported if boot/disk/type is hyperdisk-balanced.
    bootDiskProvisionedThroughput :: (Core.Maybe Core.Int64),
    -- | Optional. Size in GB of the boot disk (default is 500GB).
    bootDiskSizeGb :: (Core.Maybe Core.Int32),
    -- | Optional. Type of the boot disk (default is \"pd-standard\"). Valid values: \"pd-balanced\" (Persistent Disk Balanced Solid State Drive), \"pd-ssd\" (Persistent Disk Solid State Drive), or \"pd-standard\" (Persistent Disk Hard Disk Drive). See Disk types (https:\/\/cloud.google.com\/compute\/docs\/disks#disk-types).
    bootDiskType :: (Core.Maybe Core.Text),
    -- | Optional. Interface type of local SSDs (default is \"scsi\"). Valid values: \"scsi\" (Small Computer System Interface), \"nvme\" (Non-Volatile Memory Express). See local SSD performance (https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd#performance).
    localSsdInterface :: (Core.Maybe Core.Text),
    -- | Optional. Number of attached SSDs, from 0 to 8 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and HDFS (https:\/\/hadoop.apache.org\/docs\/r1.2.1\/hdfs/user/guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.Note: Local SSD options may vary by machine type and number of vCPUs selected.
    numLocalSsds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskConfig' with the minimum fields required to make a request.
newDiskConfig ::
  DiskConfig
newDiskConfig =
  DiskConfig
    { bootDiskProvisionedIops = Core.Nothing,
      bootDiskProvisionedThroughput = Core.Nothing,
      bootDiskSizeGb = Core.Nothing,
      bootDiskType = Core.Nothing,
      localSsdInterface = Core.Nothing,
      numLocalSsds = Core.Nothing
    }

instance Core.FromJSON DiskConfig where
  parseJSON =
    Core.withObject
      "DiskConfig"
      ( \o ->
          DiskConfig
            Core.<$> ( o
                         Core..:? "bootDiskProvisionedIops"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "bootDiskProvisionedThroughput"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "bootDiskSizeGb")
            Core.<*> (o Core..:? "bootDiskType")
            Core.<*> (o Core..:? "localSsdInterface")
            Core.<*> (o Core..:? "numLocalSsds")
      )

instance Core.ToJSON DiskConfig where
  toJSON DiskConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bootDiskProvisionedIops" Core..=)
              Core.. Core.AsText
              Core.<$> bootDiskProvisionedIops,
            ("bootDiskProvisionedThroughput" Core..=)
              Core.. Core.AsText
              Core.<$> bootDiskProvisionedThroughput,
            ("bootDiskSizeGb" Core..=) Core.<$> bootDiskSizeGb,
            ("bootDiskType" Core..=) Core.<$> bootDiskType,
            ("localSsdInterface" Core..=) Core.<$> localSsdInterface,
            ("numLocalSsds" Core..=) Core.<$> numLocalSsds
          ]
      )

-- | Driver scheduling configuration.
--
-- /See:/ 'newDriverSchedulingConfig' smart constructor.
data DriverSchedulingConfig = DriverSchedulingConfig
  { -- | Required. The amount of memory in MB the driver is requesting.
    memoryMb :: (Core.Maybe Core.Int32),
    -- | Required. The number of vCPUs the driver is requesting.
    vcores :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriverSchedulingConfig' with the minimum fields required to make a request.
newDriverSchedulingConfig ::
  DriverSchedulingConfig
newDriverSchedulingConfig =
  DriverSchedulingConfig
    { memoryMb = Core.Nothing,
      vcores = Core.Nothing
    }

instance Core.FromJSON DriverSchedulingConfig where
  parseJSON =
    Core.withObject
      "DriverSchedulingConfig"
      ( \o ->
          DriverSchedulingConfig
            Core.<$> (o Core..:? "memoryMb")
            Core.<*> (o Core..:? "vcores")
      )

instance Core.ToJSON DriverSchedulingConfig where
  toJSON DriverSchedulingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("memoryMb" Core..=) Core.<$> memoryMb,
            ("vcores" Core..=) Core.<$> vcores
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Encryption settings for the cluster.
--
-- /See:/ 'newEncryptionConfig' smart constructor.
data EncryptionConfig = EncryptionConfig
  { -- | Optional. The Cloud KMS key resource name to use for persistent disk encryption for all instances in the cluster. See Use CMEK with cluster data (https:\/\/cloud.google.com\/\/dataproc\/docs\/concepts\/configuring-clusters\/customer-managed-encryption#use/cmek/with/cluster/data) for more information.
    gcePdKmsKeyName :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud KMS key resource name to use for cluster persistent disk and job argument encryption. See Use CMEK with cluster data (https:\/\/cloud.google.com\/\/dataproc\/docs\/concepts\/configuring-clusters\/customer-managed-encryption#use/cmek/with/cluster/data) for more information.When this key resource name is provided, the following job arguments of the following job types submitted to the cluster are encrypted using CMEK: FlinkJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/FlinkJob) HadoopJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/HadoopJob) SparkJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/SparkJob) SparkRJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/SparkRJob) PySparkJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/PySparkJob) SparkSqlJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/SparkSqlJob) scriptVariables and
    -- queryList.queries HiveJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/HiveJob) scriptVariables and queryList.queries PigJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/PigJob) scriptVariables and queryList.queries PrestoJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/PrestoJob) scriptVariables and queryList.queries
    kmsKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
newEncryptionConfig ::
  EncryptionConfig
newEncryptionConfig =
  EncryptionConfig
    { gcePdKmsKeyName = Core.Nothing,
      kmsKey = Core.Nothing
    }

instance Core.FromJSON EncryptionConfig where
  parseJSON =
    Core.withObject
      "EncryptionConfig"
      ( \o ->
          EncryptionConfig
            Core.<$> (o Core..:? "gcePdKmsKeyName")
            Core.<*> (o Core..:? "kmsKey")
      )

instance Core.ToJSON EncryptionConfig where
  toJSON EncryptionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcePdKmsKeyName" Core..=) Core.<$> gcePdKmsKeyName,
            ("kmsKey" Core..=) Core.<$> kmsKey
          ]
      )

-- | Endpoint config for this cluster
--
-- /See:/ 'newEndpointConfig' smart constructor.
data EndpointConfig = EndpointConfig
  { -- | Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
    enableHttpPortAccess :: (Core.Maybe Core.Bool),
    -- | Output only. The map of port descriptions to URLs. Will only be populated if enable/http/port_access is true.
    httpPorts :: (Core.Maybe EndpointConfig_HttpPorts)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EndpointConfig' with the minimum fields required to make a request.
newEndpointConfig ::
  EndpointConfig
newEndpointConfig =
  EndpointConfig
    { enableHttpPortAccess = Core.Nothing,
      httpPorts = Core.Nothing
    }

instance Core.FromJSON EndpointConfig where
  parseJSON =
    Core.withObject
      "EndpointConfig"
      ( \o ->
          EndpointConfig
            Core.<$> (o Core..:? "enableHttpPortAccess")
            Core.<*> (o Core..:? "httpPorts")
      )

instance Core.ToJSON EndpointConfig where
  toJSON EndpointConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableHttpPortAccess" Core..=) Core.<$> enableHttpPortAccess,
            ("httpPorts" Core..=) Core.<$> httpPorts
          ]
      )

-- | Output only. The map of port descriptions to URLs. Will only be populated if enable/http/port_access is true.
--
-- /See:/ 'newEndpointConfig_HttpPorts' smart constructor.
newtype EndpointConfig_HttpPorts = EndpointConfig_HttpPorts
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EndpointConfig_HttpPorts' with the minimum fields required to make a request.
newEndpointConfig_HttpPorts ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  EndpointConfig_HttpPorts
newEndpointConfig_HttpPorts additional =
  EndpointConfig_HttpPorts {additional = additional}

instance Core.FromJSON EndpointConfig_HttpPorts where
  parseJSON =
    Core.withObject
      "EndpointConfig_HttpPorts"
      (\o -> EndpointConfig_HttpPorts Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON EndpointConfig_HttpPorts where
  toJSON EndpointConfig_HttpPorts {..} = Core.toJSON additional

-- | Environment configuration for a workload.
--
-- /See:/ 'newEnvironmentConfig' smart constructor.
data EnvironmentConfig = EnvironmentConfig
  { -- | Optional. Execution configuration for a workload.
    executionConfig :: (Core.Maybe ExecutionConfig),
    -- | Optional. Peripherals configuration that workload has access to.
    peripheralsConfig :: (Core.Maybe PeripheralsConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnvironmentConfig' with the minimum fields required to make a request.
newEnvironmentConfig ::
  EnvironmentConfig
newEnvironmentConfig =
  EnvironmentConfig
    { executionConfig = Core.Nothing,
      peripheralsConfig = Core.Nothing
    }

instance Core.FromJSON EnvironmentConfig where
  parseJSON =
    Core.withObject
      "EnvironmentConfig"
      ( \o ->
          EnvironmentConfig
            Core.<$> (o Core..:? "executionConfig")
            Core.<*> (o Core..:? "peripheralsConfig")
      )

instance Core.ToJSON EnvironmentConfig where
  toJSON EnvironmentConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionConfig" Core..=) Core.<$> executionConfig,
            ("peripheralsConfig" Core..=) Core.<$> peripheralsConfig
          ]
      )

-- | Execution configuration for a workload.
--
-- /See:/ 'newExecutionConfig' smart constructor.
data ExecutionConfig = ExecutionConfig
  { -- | Optional. Applies to sessions only. The duration to keep the session alive while it\'s idling. Exceeding this threshold causes the session to terminate. This field cannot be set on a batch workload. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)). Defaults to 1 hour if not set. If both ttl and idle/ttl are specified for an interactive session, the conditions are treated as OR conditions: the workload will be terminated when it has been idle for idle/ttl or when ttl has been exceeded, whichever occurs first.
    idleTtl :: (Core.Maybe Core.Duration),
    -- | Optional. The Cloud KMS key to use for encryption.
    kmsKey :: (Core.Maybe Core.Text),
    -- | Optional. Tags used for network traffic control.
    networkTags :: (Core.Maybe [Core.Text]),
    -- | Optional. Network URI to connect workload to.
    networkUri :: (Core.Maybe Core.Text),
    -- | Optional. Service account that used to execute workload.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Optional. A Cloud Storage bucket used to stage workload dependencies, config files, and store workload output and other ephemeral data, such as Spark history files. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location according to the region where your workload is running, and then create and manage project-level, per-location staging and temporary buckets. This field requires a Cloud Storage bucket name, not a gs:\/\/... URI to a Cloud Storage bucket.
    stagingBucket :: (Core.Maybe Core.Text),
    -- | Optional. Subnetwork URI to connect workload to.
    subnetworkUri :: (Core.Maybe Core.Text),
    -- | Optional. The duration after which the workload will be terminated, specified as the JSON representation for Duration (https:\/\/protobuf.dev\/programming-guides\/proto3\/#json). When the workload exceeds this duration, it will be unconditionally terminated without waiting for ongoing work to finish. If ttl is not specified for a batch workload, the workload will be allowed to run until it exits naturally (or run forever without exiting). If ttl is not specified for an interactive session, it defaults to 24 hours. If ttl is not specified for a batch that uses 2.1+ runtime version, it defaults to 4 hours. Minimum value is 10 minutes; maximum value is 14 days. If both ttl and idle/ttl are specified (for an interactive session), the conditions are treated as OR conditions: the workload will be terminated when it has been idle for idle/ttl or when ttl has been exceeded, whichever occurs first.
    ttl :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutionConfig' with the minimum fields required to make a request.
newExecutionConfig ::
  ExecutionConfig
newExecutionConfig =
  ExecutionConfig
    { idleTtl = Core.Nothing,
      kmsKey = Core.Nothing,
      networkTags = Core.Nothing,
      networkUri = Core.Nothing,
      serviceAccount = Core.Nothing,
      stagingBucket = Core.Nothing,
      subnetworkUri = Core.Nothing,
      ttl = Core.Nothing
    }

instance Core.FromJSON ExecutionConfig where
  parseJSON =
    Core.withObject
      "ExecutionConfig"
      ( \o ->
          ExecutionConfig
            Core.<$> (o Core..:? "idleTtl")
            Core.<*> (o Core..:? "kmsKey")
            Core.<*> (o Core..:? "networkTags")
            Core.<*> (o Core..:? "networkUri")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "stagingBucket")
            Core.<*> (o Core..:? "subnetworkUri")
            Core.<*> (o Core..:? "ttl")
      )

instance Core.ToJSON ExecutionConfig where
  toJSON ExecutionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("idleTtl" Core..=) Core.<$> idleTtl,
            ("kmsKey" Core..=) Core.<$> kmsKey,
            ("networkTags" Core..=) Core.<$> networkTags,
            ("networkUri" Core..=) Core.<$> networkUri,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("stagingBucket" Core..=) Core.<$> stagingBucket,
            ("subnetworkUri" Core..=) Core.<$> subnetworkUri,
            ("ttl" Core..=) Core.<$> ttl
          ]
      )

--
-- /See:/ 'newExecutorMetrics' smart constructor.
newtype ExecutorMetrics = ExecutorMetrics
  { metrics :: (Core.Maybe ExecutorMetrics_Metrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorMetrics' with the minimum fields required to make a request.
newExecutorMetrics ::
  ExecutorMetrics
newExecutorMetrics = ExecutorMetrics {metrics = Core.Nothing}

instance Core.FromJSON ExecutorMetrics where
  parseJSON =
    Core.withObject
      "ExecutorMetrics"
      (\o -> ExecutorMetrics Core.<$> (o Core..:? "metrics"))

instance Core.ToJSON ExecutorMetrics where
  toJSON ExecutorMetrics {..} =
    Core.object
      (Core.catMaybes [("metrics" Core..=) Core.<$> metrics])

--
-- /See:/ 'newExecutorMetrics_Metrics' smart constructor.
newtype ExecutorMetrics_Metrics = ExecutorMetrics_Metrics
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorMetrics_Metrics' with the minimum fields required to make a request.
newExecutorMetrics_Metrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  ExecutorMetrics_Metrics
newExecutorMetrics_Metrics additional =
  ExecutorMetrics_Metrics {additional = additional}

instance Core.FromJSON ExecutorMetrics_Metrics where
  parseJSON =
    Core.withObject
      "ExecutorMetrics_Metrics"
      (\o -> ExecutorMetrics_Metrics Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ExecutorMetrics_Metrics where
  toJSON ExecutorMetrics_Metrics {..} = Core.toJSON additional

--
-- /See:/ 'newExecutorMetricsDistributions' smart constructor.
data ExecutorMetricsDistributions = ExecutorMetricsDistributions
  { diskBytesSpilled :: (Core.Maybe [Core.Double]),
    failedTasks :: (Core.Maybe [Core.Double]),
    inputBytes :: (Core.Maybe [Core.Double]),
    inputRecords :: (Core.Maybe [Core.Double]),
    killedTasks :: (Core.Maybe [Core.Double]),
    memoryBytesSpilled :: (Core.Maybe [Core.Double]),
    outputBytes :: (Core.Maybe [Core.Double]),
    outputRecords :: (Core.Maybe [Core.Double]),
    peakMemoryMetrics :: (Core.Maybe ExecutorPeakMetricsDistributions),
    quantiles :: (Core.Maybe [Core.Double]),
    shuffleRead :: (Core.Maybe [Core.Double]),
    shuffleReadRecords :: (Core.Maybe [Core.Double]),
    shuffleWrite :: (Core.Maybe [Core.Double]),
    shuffleWriteRecords :: (Core.Maybe [Core.Double]),
    succeededTasks :: (Core.Maybe [Core.Double]),
    taskTimeMillis :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorMetricsDistributions' with the minimum fields required to make a request.
newExecutorMetricsDistributions ::
  ExecutorMetricsDistributions
newExecutorMetricsDistributions =
  ExecutorMetricsDistributions
    { diskBytesSpilled = Core.Nothing,
      failedTasks = Core.Nothing,
      inputBytes = Core.Nothing,
      inputRecords = Core.Nothing,
      killedTasks = Core.Nothing,
      memoryBytesSpilled = Core.Nothing,
      outputBytes = Core.Nothing,
      outputRecords = Core.Nothing,
      peakMemoryMetrics = Core.Nothing,
      quantiles = Core.Nothing,
      shuffleRead = Core.Nothing,
      shuffleReadRecords = Core.Nothing,
      shuffleWrite = Core.Nothing,
      shuffleWriteRecords = Core.Nothing,
      succeededTasks = Core.Nothing,
      taskTimeMillis = Core.Nothing
    }

instance Core.FromJSON ExecutorMetricsDistributions where
  parseJSON =
    Core.withObject
      "ExecutorMetricsDistributions"
      ( \o ->
          ExecutorMetricsDistributions
            Core.<$> (o Core..:? "diskBytesSpilled")
            Core.<*> (o Core..:? "failedTasks")
            Core.<*> (o Core..:? "inputBytes")
            Core.<*> (o Core..:? "inputRecords")
            Core.<*> (o Core..:? "killedTasks")
            Core.<*> (o Core..:? "memoryBytesSpilled")
            Core.<*> (o Core..:? "outputBytes")
            Core.<*> (o Core..:? "outputRecords")
            Core.<*> (o Core..:? "peakMemoryMetrics")
            Core.<*> (o Core..:? "quantiles")
            Core.<*> (o Core..:? "shuffleRead")
            Core.<*> (o Core..:? "shuffleReadRecords")
            Core.<*> (o Core..:? "shuffleWrite")
            Core.<*> (o Core..:? "shuffleWriteRecords")
            Core.<*> (o Core..:? "succeededTasks")
            Core.<*> (o Core..:? "taskTimeMillis")
      )

instance Core.ToJSON ExecutorMetricsDistributions where
  toJSON ExecutorMetricsDistributions {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskBytesSpilled" Core..=) Core.<$> diskBytesSpilled,
            ("failedTasks" Core..=) Core.<$> failedTasks,
            ("inputBytes" Core..=) Core.<$> inputBytes,
            ("inputRecords" Core..=) Core.<$> inputRecords,
            ("killedTasks" Core..=) Core.<$> killedTasks,
            ("memoryBytesSpilled" Core..=) Core.<$> memoryBytesSpilled,
            ("outputBytes" Core..=) Core.<$> outputBytes,
            ("outputRecords" Core..=) Core.<$> outputRecords,
            ("peakMemoryMetrics" Core..=) Core.<$> peakMemoryMetrics,
            ("quantiles" Core..=) Core.<$> quantiles,
            ("shuffleRead" Core..=) Core.<$> shuffleRead,
            ("shuffleReadRecords" Core..=) Core.<$> shuffleReadRecords,
            ("shuffleWrite" Core..=) Core.<$> shuffleWrite,
            ("shuffleWriteRecords" Core..=) Core.<$> shuffleWriteRecords,
            ("succeededTasks" Core..=) Core.<$> succeededTasks,
            ("taskTimeMillis" Core..=) Core.<$> taskTimeMillis
          ]
      )

--
-- /See:/ 'newExecutorPeakMetricsDistributions' smart constructor.
data ExecutorPeakMetricsDistributions = ExecutorPeakMetricsDistributions
  { executorMetrics :: (Core.Maybe [ExecutorMetrics]),
    quantiles :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorPeakMetricsDistributions' with the minimum fields required to make a request.
newExecutorPeakMetricsDistributions ::
  ExecutorPeakMetricsDistributions
newExecutorPeakMetricsDistributions =
  ExecutorPeakMetricsDistributions
    { executorMetrics = Core.Nothing,
      quantiles = Core.Nothing
    }

instance Core.FromJSON ExecutorPeakMetricsDistributions where
  parseJSON =
    Core.withObject
      "ExecutorPeakMetricsDistributions"
      ( \o ->
          ExecutorPeakMetricsDistributions
            Core.<$> (o Core..:? "executorMetrics")
            Core.<*> (o Core..:? "quantiles")
      )

instance Core.ToJSON ExecutorPeakMetricsDistributions where
  toJSON ExecutorPeakMetricsDistributions {..} =
    Core.object
      ( Core.catMaybes
          [ ("executorMetrics" Core..=) Core.<$> executorMetrics,
            ("quantiles" Core..=) Core.<$> quantiles
          ]
      )

-- | Resources used per executor used by the application.
--
-- /See:/ 'newExecutorResourceRequest' smart constructor.
data ExecutorResourceRequest = ExecutorResourceRequest
  { amount :: (Core.Maybe Core.Int64),
    discoveryScript :: (Core.Maybe Core.Text),
    resourceName :: (Core.Maybe Core.Text),
    vendor :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorResourceRequest' with the minimum fields required to make a request.
newExecutorResourceRequest ::
  ExecutorResourceRequest
newExecutorResourceRequest =
  ExecutorResourceRequest
    { amount = Core.Nothing,
      discoveryScript = Core.Nothing,
      resourceName = Core.Nothing,
      vendor = Core.Nothing
    }

instance Core.FromJSON ExecutorResourceRequest where
  parseJSON =
    Core.withObject
      "ExecutorResourceRequest"
      ( \o ->
          ExecutorResourceRequest
            Core.<$> (o Core..:? "amount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "discoveryScript")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "vendor")
      )

instance Core.ToJSON ExecutorResourceRequest where
  toJSON ExecutorResourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.. Core.AsText Core.<$> amount,
            ("discoveryScript" Core..=) Core.<$> discoveryScript,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("vendor" Core..=) Core.<$> vendor
          ]
      )

-- | Executor resources consumed by a stage.
--
-- /See:/ 'newExecutorStageSummary' smart constructor.
data ExecutorStageSummary = ExecutorStageSummary
  { diskBytesSpilled :: (Core.Maybe Core.Int64),
    executorId :: (Core.Maybe Core.Text),
    failedTasks :: (Core.Maybe Core.Int32),
    inputBytes :: (Core.Maybe Core.Int64),
    inputRecords :: (Core.Maybe Core.Int64),
    isExcludedForStage :: (Core.Maybe Core.Bool),
    killedTasks :: (Core.Maybe Core.Int32),
    memoryBytesSpilled :: (Core.Maybe Core.Int64),
    outputBytes :: (Core.Maybe Core.Int64),
    outputRecords :: (Core.Maybe Core.Int64),
    peakMemoryMetrics :: (Core.Maybe ExecutorMetrics),
    shuffleRead :: (Core.Maybe Core.Int64),
    shuffleReadRecords :: (Core.Maybe Core.Int64),
    shuffleWrite :: (Core.Maybe Core.Int64),
    shuffleWriteRecords :: (Core.Maybe Core.Int64),
    stageAttemptId :: (Core.Maybe Core.Int32),
    stageId :: (Core.Maybe Core.Int64),
    succeededTasks :: (Core.Maybe Core.Int32),
    taskTimeMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorStageSummary' with the minimum fields required to make a request.
newExecutorStageSummary ::
  ExecutorStageSummary
newExecutorStageSummary =
  ExecutorStageSummary
    { diskBytesSpilled = Core.Nothing,
      executorId = Core.Nothing,
      failedTasks = Core.Nothing,
      inputBytes = Core.Nothing,
      inputRecords = Core.Nothing,
      isExcludedForStage = Core.Nothing,
      killedTasks = Core.Nothing,
      memoryBytesSpilled = Core.Nothing,
      outputBytes = Core.Nothing,
      outputRecords = Core.Nothing,
      peakMemoryMetrics = Core.Nothing,
      shuffleRead = Core.Nothing,
      shuffleReadRecords = Core.Nothing,
      shuffleWrite = Core.Nothing,
      shuffleWriteRecords = Core.Nothing,
      stageAttemptId = Core.Nothing,
      stageId = Core.Nothing,
      succeededTasks = Core.Nothing,
      taskTimeMillis = Core.Nothing
    }

instance Core.FromJSON ExecutorStageSummary where
  parseJSON =
    Core.withObject
      "ExecutorStageSummary"
      ( \o ->
          ExecutorStageSummary
            Core.<$> (o Core..:? "diskBytesSpilled" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "executorId")
            Core.<*> (o Core..:? "failedTasks")
            Core.<*> (o Core..:? "inputBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "inputRecords" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "isExcludedForStage")
            Core.<*> (o Core..:? "killedTasks")
            Core.<*> ( o
                         Core..:? "memoryBytesSpilled"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "outputBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "outputRecords" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "peakMemoryMetrics")
            Core.<*> (o Core..:? "shuffleRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "shuffleReadRecords"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "shuffleWrite" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "shuffleWriteRecords"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "stageAttemptId")
            Core.<*> (o Core..:? "stageId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "succeededTasks")
            Core.<*> (o Core..:? "taskTimeMillis" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON ExecutorStageSummary where
  toJSON ExecutorStageSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskBytesSpilled" Core..=)
              Core.. Core.AsText
              Core.<$> diskBytesSpilled,
            ("executorId" Core..=) Core.<$> executorId,
            ("failedTasks" Core..=) Core.<$> failedTasks,
            ("inputBytes" Core..=) Core.. Core.AsText Core.<$> inputBytes,
            ("inputRecords" Core..=) Core.. Core.AsText Core.<$> inputRecords,
            ("isExcludedForStage" Core..=) Core.<$> isExcludedForStage,
            ("killedTasks" Core..=) Core.<$> killedTasks,
            ("memoryBytesSpilled" Core..=)
              Core.. Core.AsText
              Core.<$> memoryBytesSpilled,
            ("outputBytes" Core..=) Core.. Core.AsText Core.<$> outputBytes,
            ("outputRecords" Core..=)
              Core.. Core.AsText
              Core.<$> outputRecords,
            ("peakMemoryMetrics" Core..=) Core.<$> peakMemoryMetrics,
            ("shuffleRead" Core..=) Core.. Core.AsText Core.<$> shuffleRead,
            ("shuffleReadRecords" Core..=)
              Core.. Core.AsText
              Core.<$> shuffleReadRecords,
            ("shuffleWrite" Core..=) Core.. Core.AsText Core.<$> shuffleWrite,
            ("shuffleWriteRecords" Core..=)
              Core.. Core.AsText
              Core.<$> shuffleWriteRecords,
            ("stageAttemptId" Core..=) Core.<$> stageAttemptId,
            ("stageId" Core..=) Core.. Core.AsText Core.<$> stageId,
            ("succeededTasks" Core..=) Core.<$> succeededTasks,
            ("taskTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> taskTimeMillis
          ]
      )

-- | Details about executors used by the application.
--
-- /See:/ 'newExecutorSummary' smart constructor.
data ExecutorSummary = ExecutorSummary
  { activeTasks :: (Core.Maybe Core.Int32),
    addTime :: (Core.Maybe Core.DateTime),
    attributes :: (Core.Maybe ExecutorSummary_Attributes),
    completedTasks :: (Core.Maybe Core.Int32),
    diskUsed :: (Core.Maybe Core.Int64),
    excludedInStages :: (Core.Maybe [Core.Int64]),
    executorId :: (Core.Maybe Core.Text),
    executorLogs :: (Core.Maybe ExecutorSummary_ExecutorLogs),
    failedTasks :: (Core.Maybe Core.Int32),
    hostPort :: (Core.Maybe Core.Text),
    isActive :: (Core.Maybe Core.Bool),
    isExcluded :: (Core.Maybe Core.Bool),
    maxMemory :: (Core.Maybe Core.Int64),
    maxTasks :: (Core.Maybe Core.Int32),
    memoryMetrics :: (Core.Maybe MemoryMetrics),
    memoryUsed :: (Core.Maybe Core.Int64),
    peakMemoryMetrics :: (Core.Maybe ExecutorMetrics),
    rddBlocks :: (Core.Maybe Core.Int32),
    removeReason :: (Core.Maybe Core.Text),
    removeTime :: (Core.Maybe Core.DateTime),
    resourceProfileId :: (Core.Maybe Core.Int32),
    resources :: (Core.Maybe ExecutorSummary_Resources),
    totalCores :: (Core.Maybe Core.Int32),
    totalDurationMillis :: (Core.Maybe Core.Int64),
    totalGcTimeMillis :: (Core.Maybe Core.Int64),
    totalInputBytes :: (Core.Maybe Core.Int64),
    totalShuffleRead :: (Core.Maybe Core.Int64),
    totalShuffleWrite :: (Core.Maybe Core.Int64),
    totalTasks :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorSummary' with the minimum fields required to make a request.
newExecutorSummary ::
  ExecutorSummary
newExecutorSummary =
  ExecutorSummary
    { activeTasks = Core.Nothing,
      addTime = Core.Nothing,
      attributes = Core.Nothing,
      completedTasks = Core.Nothing,
      diskUsed = Core.Nothing,
      excludedInStages = Core.Nothing,
      executorId = Core.Nothing,
      executorLogs = Core.Nothing,
      failedTasks = Core.Nothing,
      hostPort = Core.Nothing,
      isActive = Core.Nothing,
      isExcluded = Core.Nothing,
      maxMemory = Core.Nothing,
      maxTasks = Core.Nothing,
      memoryMetrics = Core.Nothing,
      memoryUsed = Core.Nothing,
      peakMemoryMetrics = Core.Nothing,
      rddBlocks = Core.Nothing,
      removeReason = Core.Nothing,
      removeTime = Core.Nothing,
      resourceProfileId = Core.Nothing,
      resources = Core.Nothing,
      totalCores = Core.Nothing,
      totalDurationMillis = Core.Nothing,
      totalGcTimeMillis = Core.Nothing,
      totalInputBytes = Core.Nothing,
      totalShuffleRead = Core.Nothing,
      totalShuffleWrite = Core.Nothing,
      totalTasks = Core.Nothing
    }

instance Core.FromJSON ExecutorSummary where
  parseJSON =
    Core.withObject
      "ExecutorSummary"
      ( \o ->
          ExecutorSummary
            Core.<$> (o Core..:? "activeTasks")
            Core.<*> (o Core..:? "addTime")
            Core.<*> (o Core..:? "attributes")
            Core.<*> (o Core..:? "completedTasks")
            Core.<*> (o Core..:? "diskUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "excludedInStages"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "executorId")
            Core.<*> (o Core..:? "executorLogs")
            Core.<*> (o Core..:? "failedTasks")
            Core.<*> (o Core..:? "hostPort")
            Core.<*> (o Core..:? "isActive")
            Core.<*> (o Core..:? "isExcluded")
            Core.<*> (o Core..:? "maxMemory" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "maxTasks")
            Core.<*> (o Core..:? "memoryMetrics")
            Core.<*> (o Core..:? "memoryUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "peakMemoryMetrics")
            Core.<*> (o Core..:? "rddBlocks")
            Core.<*> (o Core..:? "removeReason")
            Core.<*> (o Core..:? "removeTime")
            Core.<*> (o Core..:? "resourceProfileId")
            Core.<*> (o Core..:? "resources")
            Core.<*> (o Core..:? "totalCores")
            Core.<*> ( o
                         Core..:? "totalDurationMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "totalGcTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalInputBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalShuffleRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalShuffleWrite" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "totalTasks")
      )

instance Core.ToJSON ExecutorSummary where
  toJSON ExecutorSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeTasks" Core..=) Core.<$> activeTasks,
            ("addTime" Core..=) Core.<$> addTime,
            ("attributes" Core..=) Core.<$> attributes,
            ("completedTasks" Core..=) Core.<$> completedTasks,
            ("diskUsed" Core..=) Core.. Core.AsText Core.<$> diskUsed,
            ("excludedInStages" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> excludedInStages,
            ("executorId" Core..=) Core.<$> executorId,
            ("executorLogs" Core..=) Core.<$> executorLogs,
            ("failedTasks" Core..=) Core.<$> failedTasks,
            ("hostPort" Core..=) Core.<$> hostPort,
            ("isActive" Core..=) Core.<$> isActive,
            ("isExcluded" Core..=) Core.<$> isExcluded,
            ("maxMemory" Core..=) Core.. Core.AsText Core.<$> maxMemory,
            ("maxTasks" Core..=) Core.<$> maxTasks,
            ("memoryMetrics" Core..=) Core.<$> memoryMetrics,
            ("memoryUsed" Core..=) Core.. Core.AsText Core.<$> memoryUsed,
            ("peakMemoryMetrics" Core..=) Core.<$> peakMemoryMetrics,
            ("rddBlocks" Core..=) Core.<$> rddBlocks,
            ("removeReason" Core..=) Core.<$> removeReason,
            ("removeTime" Core..=) Core.<$> removeTime,
            ("resourceProfileId" Core..=) Core.<$> resourceProfileId,
            ("resources" Core..=) Core.<$> resources,
            ("totalCores" Core..=) Core.<$> totalCores,
            ("totalDurationMillis" Core..=)
              Core.. Core.AsText
              Core.<$> totalDurationMillis,
            ("totalGcTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> totalGcTimeMillis,
            ("totalInputBytes" Core..=)
              Core.. Core.AsText
              Core.<$> totalInputBytes,
            ("totalShuffleRead" Core..=)
              Core.. Core.AsText
              Core.<$> totalShuffleRead,
            ("totalShuffleWrite" Core..=)
              Core.. Core.AsText
              Core.<$> totalShuffleWrite,
            ("totalTasks" Core..=) Core.<$> totalTasks
          ]
      )

--
-- /See:/ 'newExecutorSummary_Attributes' smart constructor.
newtype ExecutorSummary_Attributes = ExecutorSummary_Attributes
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorSummary_Attributes' with the minimum fields required to make a request.
newExecutorSummary_Attributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ExecutorSummary_Attributes
newExecutorSummary_Attributes additional =
  ExecutorSummary_Attributes {additional = additional}

instance Core.FromJSON ExecutorSummary_Attributes where
  parseJSON =
    Core.withObject
      "ExecutorSummary_Attributes"
      ( \o ->
          ExecutorSummary_Attributes Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ExecutorSummary_Attributes where
  toJSON ExecutorSummary_Attributes {..} = Core.toJSON additional

--
-- /See:/ 'newExecutorSummary_ExecutorLogs' smart constructor.
newtype ExecutorSummary_ExecutorLogs = ExecutorSummary_ExecutorLogs
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorSummary_ExecutorLogs' with the minimum fields required to make a request.
newExecutorSummary_ExecutorLogs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ExecutorSummary_ExecutorLogs
newExecutorSummary_ExecutorLogs additional =
  ExecutorSummary_ExecutorLogs {additional = additional}

instance Core.FromJSON ExecutorSummary_ExecutorLogs where
  parseJSON =
    Core.withObject
      "ExecutorSummary_ExecutorLogs"
      ( \o ->
          ExecutorSummary_ExecutorLogs Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ExecutorSummary_ExecutorLogs where
  toJSON ExecutorSummary_ExecutorLogs {..} = Core.toJSON additional

--
-- /See:/ 'newExecutorSummary_Resources' smart constructor.
newtype ExecutorSummary_Resources = ExecutorSummary_Resources
  { additional :: (Core.HashMap Core.Text ResourceInformation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutorSummary_Resources' with the minimum fields required to make a request.
newExecutorSummary_Resources ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ResourceInformation ->
  ExecutorSummary_Resources
newExecutorSummary_Resources additional =
  ExecutorSummary_Resources {additional = additional}

instance Core.FromJSON ExecutorSummary_Resources where
  parseJSON =
    Core.withObject
      "ExecutorSummary_Resources"
      ( \o ->
          ExecutorSummary_Resources Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ExecutorSummary_Resources where
  toJSON ExecutorSummary_Resources {..} = Core.toJSON additional

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec.Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A Dataproc job for running Apache Flink applications on YARN.
--
-- /See:/ 'newFlinkJob' smart constructor.
data FlinkJob = FlinkJob
  { -- | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision might occur that causes an incorrect job submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Flink driver and tasks.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | The name of the driver\'s main class. The jar file that contains the class must be in the default CLASSPATH or specified in jarFileUris.
    mainClass :: (Core.Maybe Core.Text),
    -- | The HCFS URI of the jar file that contains the main class.
    mainJarFileUri :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, used to configure Flink. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/flink\/conf\/flink-defaults.conf and classes in user code.
    properties :: (Core.Maybe FlinkJob_Properties),
    -- | Optional. HCFS URI of the savepoint, which contains the last saved progress for starting the current job.
    savepointUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlinkJob' with the minimum fields required to make a request.
newFlinkJob ::
  FlinkJob
newFlinkJob =
  FlinkJob
    { args = Core.Nothing,
      jarFileUris = Core.Nothing,
      loggingConfig = Core.Nothing,
      mainClass = Core.Nothing,
      mainJarFileUri = Core.Nothing,
      properties = Core.Nothing,
      savepointUri = Core.Nothing
    }

instance Core.FromJSON FlinkJob where
  parseJSON =
    Core.withObject
      "FlinkJob"
      ( \o ->
          FlinkJob
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "mainClass")
            Core.<*> (o Core..:? "mainJarFileUri")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "savepointUri")
      )

instance Core.ToJSON FlinkJob where
  toJSON FlinkJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("mainClass" Core..=) Core.<$> mainClass,
            ("mainJarFileUri" Core..=) Core.<$> mainJarFileUri,
            ("properties" Core..=) Core.<$> properties,
            ("savepointUri" Core..=) Core.<$> savepointUri
          ]
      )

-- | Optional. A mapping of property names to values, used to configure Flink. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/flink\/conf\/flink-defaults.conf and classes in user code.
--
-- /See:/ 'newFlinkJob_Properties' smart constructor.
newtype FlinkJob_Properties = FlinkJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlinkJob_Properties' with the minimum fields required to make a request.
newFlinkJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  FlinkJob_Properties
newFlinkJob_Properties additional =
  FlinkJob_Properties {additional = additional}

instance Core.FromJSON FlinkJob_Properties where
  parseJSON =
    Core.withObject
      "FlinkJob_Properties"
      (\o -> FlinkJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON FlinkJob_Properties where
  toJSON FlinkJob_Properties {..} = Core.toJSON additional

-- | Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.
--
-- /See:/ 'newGceClusterConfig' smart constructor.
data GceClusterConfig = GceClusterConfig
  { -- | Optional. Confidential Instance Config for clusters using Confidential VMs (https:\/\/cloud.google.com\/compute\/confidential-vm\/docs).
    confidentialInstanceConfig :: (Core.Maybe ConfidentialInstanceConfig),
    -- | Optional. This setting applies to subnetwork-enabled networks. It is set to true by default in clusters created with image versions 2.2.x.When set to true: All cluster VMs have internal IP addresses. Google Private Access (https:\/\/cloud.google.com\/vpc\/docs\/private-google-access) must be enabled to access Dataproc and other Google Cloud APIs. Off-cluster dependencies must be configured to be accessible without external IP addresses.When set to false: Cluster VMs are not restricted to internal IP addresses. Ephemeral external IP addresses are assigned to each cluster VM.
    internalIpOnly :: (Core.Maybe Core.Bool),
    -- | Optional. The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https:\/\/cloud.google.com\/compute\/docs\/storing-retrieving-metadata#project/and/instance_metadata)).
    metadata :: (Core.Maybe GceClusterConfig_Metadata),
    -- | Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork/uri. If neither network/uri nor subnetwork/uri is specified, the \"default\" network of the project is used, if it exists. Cannot be a \"Custom Subnet Network\" (see Using Subnetworks (https:\/\/cloud.google.com\/compute\/docs\/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/global\/networks\/default projects\/[project_id]\/global\/networks\/default default
    networkUri :: (Core.Maybe Core.Text),
    -- | Optional. Node Group Affinity for sole-tenant clusters.
    nodeGroupAffinity :: (Core.Maybe NodeGroupAffinity),
    -- | Optional. The type of IPv6 access for a cluster.
    privateIpv6GoogleAccess :: (Core.Maybe GceClusterConfig_PrivateIpv6GoogleAccess),
    -- | Optional. Reservation Affinity for consuming Zonal reservation.
    reservationAffinity :: (Core.Maybe ReservationAffinity),
    -- | Optional. The Dataproc service account (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/service-accounts#service/accounts/in/dataproc) (also see VM Data Plane identity (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/iam\/dataproc-principals#vm/service/account/data/plane/identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https:\/\/cloud.google.com\/compute\/docs\/access\/service-accounts#default/service/account) is used.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https:\/\/www.googleapis.com\/auth\/cloud.useraccounts.readonly https:\/\/www.googleapis.com\/auth\/devstorage.read/write https:\/\/www.googleapis.com\/auth\/logging.writeIf no scopes are specified, the following defaults are also provided: https:\/\/www.googleapis.com\/auth\/bigquery https:\/\/www.googleapis.com\/auth\/bigtable.admin.table https:\/\/www.googleapis.com\/auth\/bigtable.data https:\/\/www.googleapis.com\/auth\/devstorage.full/control
    serviceAccountScopes :: (Core.Maybe [Core.Text]),
    -- | Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https:\/\/cloud.google.com\/security\/shielded-cloud\/shielded-vm).
    shieldedInstanceConfig :: (Core.Maybe ShieldedInstanceConfig),
    -- | Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network/uri.A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/regions\/[region]\/subnetworks\/sub0 projects\/[project_id]\/regions\/[region]\/subnetworks\/sub0 sub0
    subnetworkUri :: (Core.Maybe Core.Text),
    -- | The Compute Engine network tags to add to all instances (see Tagging instances (https:\/\/cloud.google.com\/vpc\/docs\/add-remove-network-tags)).
    tags :: (Core.Maybe [Core.Text]),
    -- | Optional. The Compute Engine zone where the Dataproc cluster will be located. If omitted, the service will pick a zone in the cluster\'s Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/zones\/[zone] projects\/[project/id]\/zones\/[zone] [zone]
    zoneUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GceClusterConfig' with the minimum fields required to make a request.
newGceClusterConfig ::
  GceClusterConfig
newGceClusterConfig =
  GceClusterConfig
    { confidentialInstanceConfig = Core.Nothing,
      internalIpOnly = Core.Nothing,
      metadata = Core.Nothing,
      networkUri = Core.Nothing,
      nodeGroupAffinity = Core.Nothing,
      privateIpv6GoogleAccess = Core.Nothing,
      reservationAffinity = Core.Nothing,
      serviceAccount = Core.Nothing,
      serviceAccountScopes = Core.Nothing,
      shieldedInstanceConfig = Core.Nothing,
      subnetworkUri = Core.Nothing,
      tags = Core.Nothing,
      zoneUri = Core.Nothing
    }

instance Core.FromJSON GceClusterConfig where
  parseJSON =
    Core.withObject
      "GceClusterConfig"
      ( \o ->
          GceClusterConfig
            Core.<$> (o Core..:? "confidentialInstanceConfig")
            Core.<*> (o Core..:? "internalIpOnly")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "networkUri")
            Core.<*> (o Core..:? "nodeGroupAffinity")
            Core.<*> (o Core..:? "privateIpv6GoogleAccess")
            Core.<*> (o Core..:? "reservationAffinity")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "serviceAccountScopes")
            Core.<*> (o Core..:? "shieldedInstanceConfig")
            Core.<*> (o Core..:? "subnetworkUri")
            Core.<*> (o Core..:? "tags")
            Core.<*> (o Core..:? "zoneUri")
      )

instance Core.ToJSON GceClusterConfig where
  toJSON GceClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidentialInstanceConfig" Core..=)
              Core.<$> confidentialInstanceConfig,
            ("internalIpOnly" Core..=) Core.<$> internalIpOnly,
            ("metadata" Core..=) Core.<$> metadata,
            ("networkUri" Core..=) Core.<$> networkUri,
            ("nodeGroupAffinity" Core..=) Core.<$> nodeGroupAffinity,
            ("privateIpv6GoogleAccess" Core..=)
              Core.<$> privateIpv6GoogleAccess,
            ("reservationAffinity" Core..=) Core.<$> reservationAffinity,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("serviceAccountScopes" Core..=) Core.<$> serviceAccountScopes,
            ("shieldedInstanceConfig" Core..=) Core.<$> shieldedInstanceConfig,
            ("subnetworkUri" Core..=) Core.<$> subnetworkUri,
            ("tags" Core..=) Core.<$> tags,
            ("zoneUri" Core..=) Core.<$> zoneUri
          ]
      )

-- | Optional. The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https:\/\/cloud.google.com\/compute\/docs\/storing-retrieving-metadata#project/and/instance_metadata)).
--
-- /See:/ 'newGceClusterConfig_Metadata' smart constructor.
newtype GceClusterConfig_Metadata = GceClusterConfig_Metadata
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GceClusterConfig_Metadata' with the minimum fields required to make a request.
newGceClusterConfig_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GceClusterConfig_Metadata
newGceClusterConfig_Metadata additional =
  GceClusterConfig_Metadata {additional = additional}

instance Core.FromJSON GceClusterConfig_Metadata where
  parseJSON =
    Core.withObject
      "GceClusterConfig_Metadata"
      ( \o ->
          GceClusterConfig_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GceClusterConfig_Metadata where
  toJSON GceClusterConfig_Metadata {..} = Core.toJSON additional

-- | Request message for GetIamPolicy method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
  { -- | OPTIONAL: A GetPolicyOptions object for specifying options to GetIamPolicy.
    options :: (Core.Maybe GetPolicyOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest ::
  GetIamPolicyRequest
newGetIamPolicyRequest =
  GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GetIamPolicyRequest"
      (\o -> GetIamPolicyRequest Core.<$> (o Core..:? "options"))

instance Core.ToJSON GetIamPolicyRequest where
  toJSON GetIamPolicyRequest {..} =
    Core.object
      (Core.catMaybes [("options" Core..=) Core.<$> options])

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
  { -- | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
    requestedPolicyVersion :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions ::
  GetPolicyOptions
newGetPolicyOptions =
  GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
  parseJSON =
    Core.withObject
      "GetPolicyOptions"
      ( \o ->
          GetPolicyOptions Core.<$> (o Core..:? "requestedPolicyVersion")
      )

instance Core.ToJSON GetPolicyOptions where
  toJSON GetPolicyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedPolicyVersion" Core..=)
              Core.<$> requestedPolicyVersion
          ]
      )

-- | The cluster\'s GKE config.
--
-- /See:/ 'newGkeClusterConfig' smart constructor.
data GkeClusterConfig = GkeClusterConfig
  { -- | Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: \'projects\/{project}\/locations\/{location}\/clusters\/{cluster_id}\'
    gkeClusterTarget :: (Core.Maybe Core.Text),
    -- | Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
    namespacedGkeDeploymentTarget :: (Core.Maybe NamespacedGkeDeploymentTarget),
    -- | Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
    nodePoolTarget :: (Core.Maybe [GkeNodePoolTarget])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeClusterConfig' with the minimum fields required to make a request.
newGkeClusterConfig ::
  GkeClusterConfig
newGkeClusterConfig =
  GkeClusterConfig
    { gkeClusterTarget = Core.Nothing,
      namespacedGkeDeploymentTarget = Core.Nothing,
      nodePoolTarget = Core.Nothing
    }

instance Core.FromJSON GkeClusterConfig where
  parseJSON =
    Core.withObject
      "GkeClusterConfig"
      ( \o ->
          GkeClusterConfig
            Core.<$> (o Core..:? "gkeClusterTarget")
            Core.<*> (o Core..:? "namespacedGkeDeploymentTarget")
            Core.<*> (o Core..:? "nodePoolTarget")
      )

instance Core.ToJSON GkeClusterConfig where
  toJSON GkeClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gkeClusterTarget" Core..=) Core.<$> gkeClusterTarget,
            ("namespacedGkeDeploymentTarget" Core..=)
              Core.<$> namespacedGkeDeploymentTarget,
            ("nodePoolTarget" Core..=) Core.<$> nodePoolTarget
          ]
      )

-- | Parameters that describe cluster nodes.
--
-- /See:/ 'newGkeNodeConfig' smart constructor.
data GkeNodeConfig = GkeNodeConfig
  { -- | Optional. A list of hardware accelerators (https:\/\/cloud.google.com\/compute\/docs\/gpus) to attach to each node.
    accelerators :: (Core.Maybe [GkeNodePoolAcceleratorConfig]),
    -- | Optional. The Customer Managed Encryption Key (CMEK) (https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/using-cmek) used to encrypt the boot disk attached to each node in the node pool. Specify the key using the following format: projects\/{project}\/locations\/{location}\/keyRings\/{key/ring}\/cryptoKeys\/{crypto/key}
    bootDiskKmsKey :: (Core.Maybe Core.Text),
    -- | Optional. The number of local SSD disks to attach to the node, which is limited by the maximum number of disks allowable per zone (see Adding Local SSDs (https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd)).
    localSsdCount :: (Core.Maybe Core.Int32),
    -- | Optional. The name of a Compute Engine machine type (https:\/\/cloud.google.com\/compute\/docs\/machine-types).
    machineType :: (Core.Maybe Core.Text),
    -- | Optional. Minimum CPU platform (https:\/\/cloud.google.com\/compute\/docs\/instances\/specify-min-cpu-platform) to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as \"Intel Haswell\"\` or Intel Sandy Bridge\".
    minCpuPlatform :: (Core.Maybe Core.Text),
    -- | Optional. Whether the nodes are created as legacy preemptible VM instances (https:\/\/cloud.google.com\/compute\/docs\/instances\/preemptible). Also see Spot VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
    preemptible :: (Core.Maybe Core.Bool),
    -- | Optional. Whether the nodes are created as Spot VM instances (https:\/\/cloud.google.com\/compute\/docs\/instances\/spot). Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
    spot :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeNodeConfig' with the minimum fields required to make a request.
newGkeNodeConfig ::
  GkeNodeConfig
newGkeNodeConfig =
  GkeNodeConfig
    { accelerators = Core.Nothing,
      bootDiskKmsKey = Core.Nothing,
      localSsdCount = Core.Nothing,
      machineType = Core.Nothing,
      minCpuPlatform = Core.Nothing,
      preemptible = Core.Nothing,
      spot = Core.Nothing
    }

instance Core.FromJSON GkeNodeConfig where
  parseJSON =
    Core.withObject
      "GkeNodeConfig"
      ( \o ->
          GkeNodeConfig
            Core.<$> (o Core..:? "accelerators")
            Core.<*> (o Core..:? "bootDiskKmsKey")
            Core.<*> (o Core..:? "localSsdCount")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "minCpuPlatform")
            Core.<*> (o Core..:? "preemptible")
            Core.<*> (o Core..:? "spot")
      )

instance Core.ToJSON GkeNodeConfig where
  toJSON GkeNodeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("accelerators" Core..=) Core.<$> accelerators,
            ("bootDiskKmsKey" Core..=) Core.<$> bootDiskKmsKey,
            ("localSsdCount" Core..=) Core.<$> localSsdCount,
            ("machineType" Core..=) Core.<$> machineType,
            ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
            ("preemptible" Core..=) Core.<$> preemptible,
            ("spot" Core..=) Core.<$> spot
          ]
      )

-- | A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request for a node pool.
--
-- /See:/ 'newGkeNodePoolAcceleratorConfig' smart constructor.
data GkeNodePoolAcceleratorConfig = GkeNodePoolAcceleratorConfig
  { -- | The number of accelerator cards exposed to an instance.
    acceleratorCount :: (Core.Maybe Core.Int64),
    -- | The accelerator type resource namename (see GPUs on Compute Engine).
    acceleratorType :: (Core.Maybe Core.Text),
    -- | Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https:\/\/docs.nvidia.com\/datacenter\/tesla\/mig-user-guide\/#partitioning).
    gpuPartitionSize :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeNodePoolAcceleratorConfig' with the minimum fields required to make a request.
newGkeNodePoolAcceleratorConfig ::
  GkeNodePoolAcceleratorConfig
newGkeNodePoolAcceleratorConfig =
  GkeNodePoolAcceleratorConfig
    { acceleratorCount = Core.Nothing,
      acceleratorType = Core.Nothing,
      gpuPartitionSize = Core.Nothing
    }

instance Core.FromJSON GkeNodePoolAcceleratorConfig where
  parseJSON =
    Core.withObject
      "GkeNodePoolAcceleratorConfig"
      ( \o ->
          GkeNodePoolAcceleratorConfig
            Core.<$> (o Core..:? "acceleratorCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "acceleratorType")
            Core.<*> (o Core..:? "gpuPartitionSize")
      )

instance Core.ToJSON GkeNodePoolAcceleratorConfig where
  toJSON GkeNodePoolAcceleratorConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorCount" Core..=)
              Core.. Core.AsText
              Core.<$> acceleratorCount,
            ("acceleratorType" Core..=) Core.<$> acceleratorType,
            ("gpuPartitionSize" Core..=) Core.<$> gpuPartitionSize
          ]
      )

-- | GkeNodePoolAutoscaling contains information the cluster autoscaler needs to adjust the size of the node pool to the current cluster usage.
--
-- /See:/ 'newGkeNodePoolAutoscalingConfig' smart constructor.
data GkeNodePoolAutoscalingConfig = GkeNodePoolAutoscalingConfig
  { -- | The maximum number of nodes in the node pool. Must be >= min/node/count, and must be > 0. Note: Quota must be sufficient to scale up the cluster.
    maxNodeCount :: (Core.Maybe Core.Int32),
    -- | The minimum number of nodes in the node pool. Must be >= 0 and \<= max/node/count.
    minNodeCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeNodePoolAutoscalingConfig' with the minimum fields required to make a request.
newGkeNodePoolAutoscalingConfig ::
  GkeNodePoolAutoscalingConfig
newGkeNodePoolAutoscalingConfig =
  GkeNodePoolAutoscalingConfig
    { maxNodeCount = Core.Nothing,
      minNodeCount = Core.Nothing
    }

instance Core.FromJSON GkeNodePoolAutoscalingConfig where
  parseJSON =
    Core.withObject
      "GkeNodePoolAutoscalingConfig"
      ( \o ->
          GkeNodePoolAutoscalingConfig
            Core.<$> (o Core..:? "maxNodeCount")
            Core.<*> (o Core..:? "minNodeCount")
      )

instance Core.ToJSON GkeNodePoolAutoscalingConfig where
  toJSON GkeNodePoolAutoscalingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxNodeCount" Core..=) Core.<$> maxNodeCount,
            ("minNodeCount" Core..=) Core.<$> minNodeCount
          ]
      )

-- | The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/jobs\/dataproc-gke#create-a-dataproc-on-gke-cluster).
--
-- /See:/ 'newGkeNodePoolConfig' smart constructor.
data GkeNodePoolConfig = GkeNodePoolConfig
  { -- | Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
    autoscaling :: (Core.Maybe GkeNodePoolAutoscalingConfig),
    -- | Optional. The node pool configuration.
    config :: (Core.Maybe GkeNodeConfig),
    -- | Optional. The list of Compute Engine zones (https:\/\/cloud.google.com\/compute\/docs\/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
    locations :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeNodePoolConfig' with the minimum fields required to make a request.
newGkeNodePoolConfig ::
  GkeNodePoolConfig
newGkeNodePoolConfig =
  GkeNodePoolConfig
    { autoscaling = Core.Nothing,
      config = Core.Nothing,
      locations = Core.Nothing
    }

instance Core.FromJSON GkeNodePoolConfig where
  parseJSON =
    Core.withObject
      "GkeNodePoolConfig"
      ( \o ->
          GkeNodePoolConfig
            Core.<$> (o Core..:? "autoscaling")
            Core.<*> (o Core..:? "config")
            Core.<*> (o Core..:? "locations")
      )

instance Core.ToJSON GkeNodePoolConfig where
  toJSON GkeNodePoolConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoscaling" Core..=) Core.<$> autoscaling,
            ("config" Core..=) Core.<$> config,
            ("locations" Core..=) Core.<$> locations
          ]
      )

-- | GKE node pools that Dataproc workloads run on.
--
-- /See:/ 'newGkeNodePoolTarget' smart constructor.
data GkeNodePoolTarget = GkeNodePoolTarget
  { -- | Required. The target GKE node pool. Format: \'projects\/{project}\/locations\/{location}\/clusters\/{cluster}\/nodePools\/{node_pool}\'
    nodePool :: (Core.Maybe Core.Text),
    -- | Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a node pool with the specified shape. If one with the same name already exists, it is verified against all specified fields. If a field differs, the virtual cluster creation will fail.If omitted, any node pool with the specified name is used. If a node pool with the specified name does not exist, Dataproc create a node pool with default values.This is an input only field. It will not be returned by the API.
    nodePoolConfig :: (Core.Maybe GkeNodePoolConfig),
    -- | Required. The roles associated with the GKE node pool.
    roles :: (Core.Maybe [GkeNodePoolTarget_RolesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeNodePoolTarget' with the minimum fields required to make a request.
newGkeNodePoolTarget ::
  GkeNodePoolTarget
newGkeNodePoolTarget =
  GkeNodePoolTarget
    { nodePool = Core.Nothing,
      nodePoolConfig = Core.Nothing,
      roles = Core.Nothing
    }

instance Core.FromJSON GkeNodePoolTarget where
  parseJSON =
    Core.withObject
      "GkeNodePoolTarget"
      ( \o ->
          GkeNodePoolTarget
            Core.<$> (o Core..:? "nodePool")
            Core.<*> (o Core..:? "nodePoolConfig")
            Core.<*> (o Core..:? "roles")
      )

instance Core.ToJSON GkeNodePoolTarget where
  toJSON GkeNodePoolTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("nodePool" Core..=) Core.<$> nodePool,
            ("nodePoolConfig" Core..=) Core.<$> nodePoolConfig,
            ("roles" Core..=) Core.<$> roles
          ]
      )

-- | Encryption settings for encrypting workflow template job arguments.
--
-- /See:/ 'newGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig' smart constructor.
newtype GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig = GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
  { -- | Optional. The Cloud KMS key name to use for encrypting workflow template job arguments.When this this key is provided, the following workflow template job arguments (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/use-workflows#adding/jobs/to/a/template), if present, are CMEK encrypted (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/customer-managed-encryption#use/cmek/with/workflow/template_data): FlinkJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/FlinkJob) HadoopJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/HadoopJob) SparkJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/SparkJob) SparkRJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/SparkRJob) PySparkJob args (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/PySparkJob) SparkSqlJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/SparkSqlJob) scriptVariables and
    -- queryList.queries HiveJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/HiveJob) scriptVariables and queryList.queries PigJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/PigJob) scriptVariables and queryList.queries PrestoJob (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/PrestoJob) scriptVariables and queryList.queries
    kmsKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig' with the minimum fields required to make a request.
newGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig ::
  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
newGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig =
  GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
    { kmsKey =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig"
      ( \o ->
          GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
            Core.<$> (o Core..:? "kmsKey")
      )

instance
  Core.ToJSON
    GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
  where
  toJSON GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig {..} =
    Core.object (Core.catMaybes [("kmsKey" Core..=) Core.<$> kmsKey])

-- | A Dataproc job for running Apache Hadoop MapReduce (https:\/\/hadoop.apache.org\/docs\/current\/hadoop-mapreduce-client\/hadoop-mapreduce-client-core\/MapReduceTutorial.html) jobs on Apache Hadoop YARN (https:\/\/hadoop.apache.org\/docs\/r2.7.1\/hadoop-yarn\/hadoop-yarn-site\/YARN.html).
--
-- /See:/ 'newHadoopJob' smart constructor.
data HadoopJob = HadoopJob
  { -- | Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the driver. Do not include arguments, such as -libjars or -Dfoo=bar, that can be set as job properties, since a collision might occur that causes an incorrect job submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory of Hadoop drivers and distributed tasks. Useful for naively parallel tasks.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | The name of the driver\'s main class. The jar file containing the class must be in the default CLASSPATH or specified in jar/file/uris.
    mainClass :: (Core.Maybe Core.Text),
    -- | The HCFS URI of the jar file containing the main class. Examples: \'gs:\/\/foo-bucket\/analytics-binaries\/extract-useful-metrics-mr.jar\' \'hdfs:\/tmp\/test-samples\/custom-wordcount.jar\' \'file:\/\/\/home\/usr\/lib\/hadoop-mapreduce\/hadoop-mapreduce-examples.jar\'
    mainJarFileUri :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site and classes in user code.
    properties :: (Core.Maybe HadoopJob_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HadoopJob' with the minimum fields required to make a request.
newHadoopJob ::
  HadoopJob
newHadoopJob =
  HadoopJob
    { archiveUris = Core.Nothing,
      args = Core.Nothing,
      fileUris = Core.Nothing,
      jarFileUris = Core.Nothing,
      loggingConfig = Core.Nothing,
      mainClass = Core.Nothing,
      mainJarFileUri = Core.Nothing,
      properties = Core.Nothing
    }

instance Core.FromJSON HadoopJob where
  parseJSON =
    Core.withObject
      "HadoopJob"
      ( \o ->
          HadoopJob
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "args")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "mainClass")
            Core.<*> (o Core..:? "mainJarFileUri")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON HadoopJob where
  toJSON HadoopJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("mainClass" Core..=) Core.<$> mainClass,
            ("mainJarFileUri" Core..=) Core.<$> mainJarFileUri,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site and classes in user code.
--
-- /See:/ 'newHadoopJob_Properties' smart constructor.
newtype HadoopJob_Properties = HadoopJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HadoopJob_Properties' with the minimum fields required to make a request.
newHadoopJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  HadoopJob_Properties
newHadoopJob_Properties additional =
  HadoopJob_Properties {additional = additional}

instance Core.FromJSON HadoopJob_Properties where
  parseJSON =
    Core.withObject
      "HadoopJob_Properties"
      (\o -> HadoopJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON HadoopJob_Properties where
  toJSON HadoopJob_Properties {..} = Core.toJSON additional

-- | A Dataproc job for running Apache Hive (https:\/\/hive.apache.org\/) queries on YARN.
--
-- /See:/ 'newHiveJob' smart constructor.
data HiveJob = HiveJob
  { -- | Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
    continueOnFailure :: (Core.Maybe Core.Bool),
    -- | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/hive\/conf\/hive-site.xml, and classes in user code.
    properties :: (Core.Maybe HiveJob_Properties),
    -- | The HCFS URI of the script that contains Hive queries.
    queryFileUri :: (Core.Maybe Core.Text),
    -- | A list of queries.
    queryList :: (Core.Maybe QueryList),
    -- | Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name=\"value\";).
    scriptVariables :: (Core.Maybe HiveJob_ScriptVariables)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HiveJob' with the minimum fields required to make a request.
newHiveJob ::
  HiveJob
newHiveJob =
  HiveJob
    { continueOnFailure = Core.Nothing,
      jarFileUris = Core.Nothing,
      properties = Core.Nothing,
      queryFileUri = Core.Nothing,
      queryList = Core.Nothing,
      scriptVariables = Core.Nothing
    }

instance Core.FromJSON HiveJob where
  parseJSON =
    Core.withObject
      "HiveJob"
      ( \o ->
          HiveJob
            Core.<$> (o Core..:? "continueOnFailure")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "queryFileUri")
            Core.<*> (o Core..:? "queryList")
            Core.<*> (o Core..:? "scriptVariables")
      )

instance Core.ToJSON HiveJob where
  toJSON HiveJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("continueOnFailure" Core..=) Core.<$> continueOnFailure,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("properties" Core..=) Core.<$> properties,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryList" Core..=) Core.<$> queryList,
            ("scriptVariables" Core..=) Core.<$> scriptVariables
          ]
      )

-- | Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/hive\/conf\/hive-site.xml, and classes in user code.
--
-- /See:/ 'newHiveJob_Properties' smart constructor.
newtype HiveJob_Properties = HiveJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HiveJob_Properties' with the minimum fields required to make a request.
newHiveJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  HiveJob_Properties
newHiveJob_Properties additional =
  HiveJob_Properties {additional = additional}

instance Core.FromJSON HiveJob_Properties where
  parseJSON =
    Core.withObject
      "HiveJob_Properties"
      (\o -> HiveJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON HiveJob_Properties where
  toJSON HiveJob_Properties {..} = Core.toJSON additional

-- | Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name=\"value\";).
--
-- /See:/ 'newHiveJob_ScriptVariables' smart constructor.
newtype HiveJob_ScriptVariables = HiveJob_ScriptVariables
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HiveJob_ScriptVariables' with the minimum fields required to make a request.
newHiveJob_ScriptVariables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  HiveJob_ScriptVariables
newHiveJob_ScriptVariables additional =
  HiveJob_ScriptVariables {additional = additional}

instance Core.FromJSON HiveJob_ScriptVariables where
  parseJSON =
    Core.withObject
      "HiveJob_ScriptVariables"
      (\o -> HiveJob_ScriptVariables Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON HiveJob_ScriptVariables where
  toJSON HiveJob_ScriptVariables {..} = Core.toJSON additional

-- | Identity related configuration, including service account based secure multi-tenancy user mappings.
--
-- /See:/ 'newIdentityConfig' smart constructor.
newtype IdentityConfig = IdentityConfig
  { -- | Required. Map of user to service account.
    userServiceAccountMapping :: (Core.Maybe IdentityConfig_UserServiceAccountMapping)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityConfig' with the minimum fields required to make a request.
newIdentityConfig ::
  IdentityConfig
newIdentityConfig =
  IdentityConfig {userServiceAccountMapping = Core.Nothing}

instance Core.FromJSON IdentityConfig where
  parseJSON =
    Core.withObject
      "IdentityConfig"
      ( \o ->
          IdentityConfig Core.<$> (o Core..:? "userServiceAccountMapping")
      )

instance Core.ToJSON IdentityConfig where
  toJSON IdentityConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("userServiceAccountMapping" Core..=)
              Core.<$> userServiceAccountMapping
          ]
      )

-- | Required. Map of user to service account.
--
-- /See:/ 'newIdentityConfig_UserServiceAccountMapping' smart constructor.
newtype IdentityConfig_UserServiceAccountMapping = IdentityConfig_UserServiceAccountMapping
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityConfig_UserServiceAccountMapping' with the minimum fields required to make a request.
newIdentityConfig_UserServiceAccountMapping ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  IdentityConfig_UserServiceAccountMapping
newIdentityConfig_UserServiceAccountMapping additional =
  IdentityConfig_UserServiceAccountMapping {additional = additional}

instance Core.FromJSON IdentityConfig_UserServiceAccountMapping where
  parseJSON =
    Core.withObject
      "IdentityConfig_UserServiceAccountMapping"
      ( \o ->
          IdentityConfig_UserServiceAccountMapping
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON IdentityConfig_UserServiceAccountMapping where
  toJSON IdentityConfig_UserServiceAccountMapping {..} =
    Core.toJSON additional

-- | A request to inject credentials into a cluster.
--
-- /See:/ 'newInjectCredentialsRequest' smart constructor.
data InjectCredentialsRequest = InjectCredentialsRequest
  { -- | Required. The cluster UUID.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Required. The encrypted credentials being injected in to the cluster.The client is responsible for encrypting the credentials in a way that is supported by the cluster.A wrapped value is used here so that the actual contents of the encrypted credentials are not written to audit logs.
    credentialsCiphertext :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InjectCredentialsRequest' with the minimum fields required to make a request.
newInjectCredentialsRequest ::
  InjectCredentialsRequest
newInjectCredentialsRequest =
  InjectCredentialsRequest
    { clusterUuid = Core.Nothing,
      credentialsCiphertext = Core.Nothing
    }

instance Core.FromJSON InjectCredentialsRequest where
  parseJSON =
    Core.withObject
      "InjectCredentialsRequest"
      ( \o ->
          InjectCredentialsRequest
            Core.<$> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "credentialsCiphertext")
      )

instance Core.ToJSON InjectCredentialsRequest where
  toJSON InjectCredentialsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("credentialsCiphertext" Core..=) Core.<$> credentialsCiphertext
          ]
      )

-- | Metrics about the input data read by the task.
--
-- /See:/ 'newInputMetrics' smart constructor.
data InputMetrics = InputMetrics
  { bytesRead :: (Core.Maybe Core.Int64),
    recordsRead :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputMetrics' with the minimum fields required to make a request.
newInputMetrics ::
  InputMetrics
newInputMetrics =
  InputMetrics
    { bytesRead = Core.Nothing,
      recordsRead = Core.Nothing
    }

instance Core.FromJSON InputMetrics where
  parseJSON =
    Core.withObject
      "InputMetrics"
      ( \o ->
          InputMetrics
            Core.<$> (o Core..:? "bytesRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsRead" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON InputMetrics where
  toJSON InputMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesRead" Core..=) Core.. Core.AsText Core.<$> bytesRead,
            ("recordsRead" Core..=) Core.. Core.AsText Core.<$> recordsRead
          ]
      )

--
-- /See:/ 'newInputQuantileMetrics' smart constructor.
data InputQuantileMetrics = InputQuantileMetrics
  { bytesRead :: (Core.Maybe Quantiles),
    recordsRead :: (Core.Maybe Quantiles)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputQuantileMetrics' with the minimum fields required to make a request.
newInputQuantileMetrics ::
  InputQuantileMetrics
newInputQuantileMetrics =
  InputQuantileMetrics
    { bytesRead = Core.Nothing,
      recordsRead = Core.Nothing
    }

instance Core.FromJSON InputQuantileMetrics where
  parseJSON =
    Core.withObject
      "InputQuantileMetrics"
      ( \o ->
          InputQuantileMetrics
            Core.<$> (o Core..:? "bytesRead")
            Core.<*> (o Core..:? "recordsRead")
      )

instance Core.ToJSON InputQuantileMetrics where
  toJSON InputQuantileMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesRead" Core..=) Core.<$> bytesRead,
            ("recordsRead" Core..=) Core.<$> recordsRead
          ]
      )

-- | Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
--
-- /See:/ 'newInstanceFlexibilityPolicy' smart constructor.
data InstanceFlexibilityPolicy = InstanceFlexibilityPolicy
  { -- | Optional. List of instance selection options that the group will use when creating new VMs.
    instanceSelectionList :: (Core.Maybe [InstanceSelection]),
    -- | Output only. A list of instance selection results in the group.
    instanceSelectionResults :: (Core.Maybe [InstanceSelectionResult]),
    -- | Optional. Defines how the Group selects the provisioning model to ensure required reliability.
    provisioningModelMix :: (Core.Maybe ProvisioningModelMix)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceFlexibilityPolicy' with the minimum fields required to make a request.
newInstanceFlexibilityPolicy ::
  InstanceFlexibilityPolicy
newInstanceFlexibilityPolicy =
  InstanceFlexibilityPolicy
    { instanceSelectionList = Core.Nothing,
      instanceSelectionResults = Core.Nothing,
      provisioningModelMix = Core.Nothing
    }

instance Core.FromJSON InstanceFlexibilityPolicy where
  parseJSON =
    Core.withObject
      "InstanceFlexibilityPolicy"
      ( \o ->
          InstanceFlexibilityPolicy
            Core.<$> (o Core..:? "instanceSelectionList")
            Core.<*> (o Core..:? "instanceSelectionResults")
            Core.<*> (o Core..:? "provisioningModelMix")
      )

instance Core.ToJSON InstanceFlexibilityPolicy where
  toJSON InstanceFlexibilityPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("instanceSelectionList" Core..=) Core.<$> instanceSelectionList,
            ("instanceSelectionResults" Core..=)
              Core.<$> instanceSelectionResults,
            ("provisioningModelMix" Core..=) Core.<$> provisioningModelMix
          ]
      )

-- | Configuration for the size bounds of an instance group, including its proportional size to other groups.
--
-- /See:/ 'newInstanceGroupAutoscalingPolicyConfig' smart constructor.
data InstanceGroupAutoscalingPolicyConfig = InstanceGroupAutoscalingPolicyConfig
  { -- | Required. Maximum number of instances for this group. Required for primary workers. Note that by default, clusters will not use secondary workers. Required for secondary workers if the minimum secondary instances is set.Primary workers - Bounds: [min/instances, ). Secondary workers - Bounds: [min/instances, ). Default: 0.
    maxInstances :: (Core.Maybe Core.Int32),
    -- | Optional. Minimum number of instances for this group.Primary workers - Bounds: 2, max/instances. Default: 2. Secondary workers - Bounds: 0, max/instances. Default: 0.
    minInstances :: (Core.Maybe Core.Int32),
    -- | Optional. Weight for the instance group, which is used to determine the fraction of total workers in the cluster from this instance group. For example, if primary workers have weight 2, and secondary workers have weight 1, the cluster will have approximately 2 primary workers for each secondary worker.The cluster may not reach the specified balance if constrained by min\/max bounds or other autoscaling settings. For example, if max_instances for secondary workers is 0, then only primary workers will be added. The cluster can also be out of balance when created.If weight is not set on any instance group, the cluster will default to equal weight for all groups: the cluster will attempt to maintain an equal number of workers in each group within the configured size bounds for each group. If weight is set for one group only, the cluster will default to zero weight on the unset group. For example if weight is set only on primary workers, the cluster will use primary workers only and no secondary workers.
    weight :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceGroupAutoscalingPolicyConfig' with the minimum fields required to make a request.
newInstanceGroupAutoscalingPolicyConfig ::
  InstanceGroupAutoscalingPolicyConfig
newInstanceGroupAutoscalingPolicyConfig =
  InstanceGroupAutoscalingPolicyConfig
    { maxInstances = Core.Nothing,
      minInstances = Core.Nothing,
      weight = Core.Nothing
    }

instance Core.FromJSON InstanceGroupAutoscalingPolicyConfig where
  parseJSON =
    Core.withObject
      "InstanceGroupAutoscalingPolicyConfig"
      ( \o ->
          InstanceGroupAutoscalingPolicyConfig
            Core.<$> (o Core..:? "maxInstances")
            Core.<*> (o Core..:? "minInstances")
            Core.<*> (o Core..:? "weight")
      )

instance Core.ToJSON InstanceGroupAutoscalingPolicyConfig where
  toJSON InstanceGroupAutoscalingPolicyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxInstances" Core..=) Core.<$> maxInstances,
            ("minInstances" Core..=) Core.<$> minInstances,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | The config settings for Compute Engine resources in an instance group, such as a master or worker group.
--
-- /See:/ 'newInstanceGroupConfig' smart constructor.
data InstanceGroupConfig = InstanceGroupConfig
  { -- | Optional. The Compute Engine accelerator configuration for these instances.
    accelerators :: (Core.Maybe [AcceleratorConfig]),
    -- | Optional. Disk option config settings.
    diskConfig :: (Core.Maybe DiskConfig),
    -- | Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/global\/images\/[image-id] projects\/[project/id]\/global\/images\/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/global\/images\/family\/[custom-image-family-name] projects\/[project/id]\/global\/images\/family\/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
    imageUri :: (Core.Maybe Core.Text),
    -- | Optional. Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
    instanceFlexibilityPolicy :: (Core.Maybe InstanceFlexibilityPolicy),
    -- | Output only. The list of instance names. Dataproc derives the names from cluster/name, num/instances, and the instance group.
    instanceNames :: (Core.Maybe [Core.Text]),
    -- | Output only. List of references to Compute Engine instances.
    instanceReferences :: (Core.Maybe [InstanceReference]),
    -- | Output only. Specifies that this instance group contains preemptible instances.
    isPreemptible :: (Core.Maybe Core.Bool),
    -- | Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/zones\/[zone]\/machineTypes\/n1-standard-2 projects\/[project/id]\/zones\/[zone]\/machineTypes\/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/auto-zone#using/auto/zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
    machineTypeUri :: (Core.Maybe Core.Text),
    -- | Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
    managedGroupConfig :: (Core.Maybe ManagedGroupConfig),
    -- | Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/compute\/dataproc-min-cpu).
    minCpuPlatform :: (Core.Maybe Core.Text),
    -- | Optional. The minimum number of primary worker instances to create. If min/num/instances is set, cluster creation will succeed if the number of primary workers created is at least equal to the min/num/instances number.Example: Cluster creation request with num/instances = 5 and min/num_instances = 3: If 4 VMs are created and 1 instance fails, the failed VM is deleted. The cluster is resized to 4 instances and placed in a RUNNING state. If 2 instances are created and 3 instances fail, the cluster in placed in an ERROR state. The failed VMs are not deleted.
    minNumInstances :: (Core.Maybe Core.Int32),
    -- | Optional. The number of VM instances in the instance group. For HA cluster master/config groups, must be set to 3. For standard cluster master/config groups, must be set to 1.
    numInstances :: (Core.Maybe Core.Int32),
    -- | Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
    preemptibility :: (Core.Maybe InstanceGroupConfig_Preemptibility),
    -- | Optional. Configuration to handle the startup of instances during cluster create and update process.
    startupConfig :: (Core.Maybe StartupConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceGroupConfig' with the minimum fields required to make a request.
newInstanceGroupConfig ::
  InstanceGroupConfig
newInstanceGroupConfig =
  InstanceGroupConfig
    { accelerators = Core.Nothing,
      diskConfig = Core.Nothing,
      imageUri = Core.Nothing,
      instanceFlexibilityPolicy = Core.Nothing,
      instanceNames = Core.Nothing,
      instanceReferences = Core.Nothing,
      isPreemptible = Core.Nothing,
      machineTypeUri = Core.Nothing,
      managedGroupConfig = Core.Nothing,
      minCpuPlatform = Core.Nothing,
      minNumInstances = Core.Nothing,
      numInstances = Core.Nothing,
      preemptibility = Core.Nothing,
      startupConfig = Core.Nothing
    }

instance Core.FromJSON InstanceGroupConfig where
  parseJSON =
    Core.withObject
      "InstanceGroupConfig"
      ( \o ->
          InstanceGroupConfig
            Core.<$> (o Core..:? "accelerators")
            Core.<*> (o Core..:? "diskConfig")
            Core.<*> (o Core..:? "imageUri")
            Core.<*> (o Core..:? "instanceFlexibilityPolicy")
            Core.<*> (o Core..:? "instanceNames")
            Core.<*> (o Core..:? "instanceReferences")
            Core.<*> (o Core..:? "isPreemptible")
            Core.<*> (o Core..:? "machineTypeUri")
            Core.<*> (o Core..:? "managedGroupConfig")
            Core.<*> (o Core..:? "minCpuPlatform")
            Core.<*> (o Core..:? "minNumInstances")
            Core.<*> (o Core..:? "numInstances")
            Core.<*> (o Core..:? "preemptibility")
            Core.<*> (o Core..:? "startupConfig")
      )

instance Core.ToJSON InstanceGroupConfig where
  toJSON InstanceGroupConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("accelerators" Core..=) Core.<$> accelerators,
            ("diskConfig" Core..=) Core.<$> diskConfig,
            ("imageUri" Core..=) Core.<$> imageUri,
            ("instanceFlexibilityPolicy" Core..=)
              Core.<$> instanceFlexibilityPolicy,
            ("instanceNames" Core..=) Core.<$> instanceNames,
            ("instanceReferences" Core..=) Core.<$> instanceReferences,
            ("isPreemptible" Core..=) Core.<$> isPreemptible,
            ("machineTypeUri" Core..=) Core.<$> machineTypeUri,
            ("managedGroupConfig" Core..=) Core.<$> managedGroupConfig,
            ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
            ("minNumInstances" Core..=) Core.<$> minNumInstances,
            ("numInstances" Core..=) Core.<$> numInstances,
            ("preemptibility" Core..=) Core.<$> preemptibility,
            ("startupConfig" Core..=) Core.<$> startupConfig
          ]
      )

-- | A reference to a Compute Engine instance.
--
-- /See:/ 'newInstanceReference' smart constructor.
data InstanceReference = InstanceReference
  { -- | The unique identifier of the Compute Engine instance.
    instanceId :: (Core.Maybe Core.Text),
    -- | The user-friendly name of the Compute Engine instance.
    instanceName :: (Core.Maybe Core.Text),
    -- | The public ECIES key used for sharing data with this instance.
    publicEciesKey :: (Core.Maybe Core.Text),
    -- | The public RSA key used for sharing data with this instance.
    publicKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceReference' with the minimum fields required to make a request.
newInstanceReference ::
  InstanceReference
newInstanceReference =
  InstanceReference
    { instanceId = Core.Nothing,
      instanceName = Core.Nothing,
      publicEciesKey = Core.Nothing,
      publicKey = Core.Nothing
    }

instance Core.FromJSON InstanceReference where
  parseJSON =
    Core.withObject
      "InstanceReference"
      ( \o ->
          InstanceReference
            Core.<$> (o Core..:? "instanceId")
            Core.<*> (o Core..:? "instanceName")
            Core.<*> (o Core..:? "publicEciesKey")
            Core.<*> (o Core..:? "publicKey")
      )

instance Core.ToJSON InstanceReference where
  toJSON InstanceReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("instanceId" Core..=) Core.<$> instanceId,
            ("instanceName" Core..=) Core.<$> instanceName,
            ("publicEciesKey" Core..=) Core.<$> publicEciesKey,
            ("publicKey" Core..=) Core.<$> publicKey
          ]
      )

-- | Defines machines types and a rank to which the machines types belong.
--
-- /See:/ 'newInstanceSelection' smart constructor.
data InstanceSelection = InstanceSelection
  { -- | Optional. Full machine-type names, e.g. \"n1-standard-16\".
    machineTypes :: (Core.Maybe [Core.Text]),
    -- | Optional. Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
    rank :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceSelection' with the minimum fields required to make a request.
newInstanceSelection ::
  InstanceSelection
newInstanceSelection =
  InstanceSelection
    { machineTypes = Core.Nothing,
      rank = Core.Nothing
    }

instance Core.FromJSON InstanceSelection where
  parseJSON =
    Core.withObject
      "InstanceSelection"
      ( \o ->
          InstanceSelection
            Core.<$> (o Core..:? "machineTypes")
            Core.<*> (o Core..:? "rank")
      )

instance Core.ToJSON InstanceSelection where
  toJSON InstanceSelection {..} =
    Core.object
      ( Core.catMaybes
          [ ("machineTypes" Core..=) Core.<$> machineTypes,
            ("rank" Core..=) Core.<$> rank
          ]
      )

-- | Defines a mapping from machine types to the number of VMs that are created with each machine type.
--
-- /See:/ 'newInstanceSelectionResult' smart constructor.
data InstanceSelectionResult = InstanceSelectionResult
  { -- | Output only. Full machine-type names, e.g. \"n1-standard-16\".
    machineType :: (Core.Maybe Core.Text),
    -- | Output only. Number of VM provisioned with the machine_type.
    vmCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceSelectionResult' with the minimum fields required to make a request.
newInstanceSelectionResult ::
  InstanceSelectionResult
newInstanceSelectionResult =
  InstanceSelectionResult
    { machineType = Core.Nothing,
      vmCount = Core.Nothing
    }

instance Core.FromJSON InstanceSelectionResult where
  parseJSON =
    Core.withObject
      "InstanceSelectionResult"
      ( \o ->
          InstanceSelectionResult
            Core.<$> (o Core..:? "machineType")
            Core.<*> (o Core..:? "vmCount")
      )

instance Core.ToJSON InstanceSelectionResult where
  toJSON InstanceSelectionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("machineType" Core..=) Core.<$> machineType,
            ("vmCount" Core..=) Core.<$> vmCount
          ]
      )

-- | A request to instantiate a workflow template.
--
-- /See:/ 'newInstantiateWorkflowTemplateRequest' smart constructor.
data InstantiateWorkflowTemplateRequest = InstantiateWorkflowTemplateRequest
  { -- | Optional. Map from parameter names to values that should be used for those parameters. Values may not exceed 1000 characters.
    parameters :: (Core.Maybe InstantiateWorkflowTemplateRequest_Parameters),
    -- | Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates risk of concurrent instances started due to retries.It is recommended to always set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The tag must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Optional. The version of workflow template to instantiate. If specified, the workflow will be instantiated only if the current version of the workflow template has the supplied version.This option cannot be used to instantiate a previous version of workflow template.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstantiateWorkflowTemplateRequest' with the minimum fields required to make a request.
newInstantiateWorkflowTemplateRequest ::
  InstantiateWorkflowTemplateRequest
newInstantiateWorkflowTemplateRequest =
  InstantiateWorkflowTemplateRequest
    { parameters = Core.Nothing,
      requestId = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON InstantiateWorkflowTemplateRequest where
  parseJSON =
    Core.withObject
      "InstantiateWorkflowTemplateRequest"
      ( \o ->
          InstantiateWorkflowTemplateRequest
            Core.<$> (o Core..:? "parameters")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON InstantiateWorkflowTemplateRequest where
  toJSON InstantiateWorkflowTemplateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("parameters" Core..=) Core.<$> parameters,
            ("requestId" Core..=) Core.<$> requestId,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Optional. Map from parameter names to values that should be used for those parameters. Values may not exceed 1000 characters.
--
-- /See:/ 'newInstantiateWorkflowTemplateRequest_Parameters' smart constructor.
newtype InstantiateWorkflowTemplateRequest_Parameters = InstantiateWorkflowTemplateRequest_Parameters
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstantiateWorkflowTemplateRequest_Parameters' with the minimum fields required to make a request.
newInstantiateWorkflowTemplateRequest_Parameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  InstantiateWorkflowTemplateRequest_Parameters
newInstantiateWorkflowTemplateRequest_Parameters additional =
  InstantiateWorkflowTemplateRequest_Parameters
    { additional =
        additional
    }

instance
  Core.FromJSON
    InstantiateWorkflowTemplateRequest_Parameters
  where
  parseJSON =
    Core.withObject
      "InstantiateWorkflowTemplateRequest_Parameters"
      ( \o ->
          InstantiateWorkflowTemplateRequest_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON InstantiateWorkflowTemplateRequest_Parameters where
  toJSON InstantiateWorkflowTemplateRequest_Parameters {..} =
    Core.toJSON additional

-- | Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive).The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.
--
-- /See:/ 'newInterval' smart constructor.
data Interval = Interval
  { -- | Optional. Exclusive end of the interval.If specified, a Timestamp matching this interval will have to be before the end.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Inclusive start of the interval.If specified, a Timestamp matching this interval will have to be the same or after the start.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Interval' with the minimum fields required to make a request.
newInterval ::
  Interval
newInterval =
  Interval {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON Interval where
  parseJSON =
    Core.withObject
      "Interval"
      ( \o ->
          Interval
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON Interval where
  toJSON Interval {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | A Dataproc job resource.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job
  { -- | Output only. Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
    done :: (Core.Maybe Core.Bool),
    -- | Output only. If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver/output/uri.
    driverControlFilesUri :: (Core.Maybe Core.Text),
    -- | Output only. A URI pointing to the location of the stdout of the job\'s driver program.
    driverOutputResourceUri :: (Core.Maybe Core.Text),
    -- | Optional. Driver scheduling configuration.
    driverSchedulingConfig :: (Core.Maybe DriverSchedulingConfig),
    -- | Optional. Job is a Flink job.
    flinkJob :: (Core.Maybe FlinkJob),
    -- | Optional. Job is a Hadoop job.
    hadoopJob :: (Core.Maybe HadoopJob),
    -- | Optional. Job is a Hive job.
    hiveJob :: (Core.Maybe HiveJob),
    -- | Output only. A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.
    jobUuid :: (Core.Maybe Core.Text),
    -- | Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a job.
    labels :: (Core.Maybe Job_Labels),
    -- | Optional. Job is a Pig job.
    pigJob :: (Core.Maybe PigJob),
    -- | Required. Job information, including how, when, and where to run the job.
    placement :: (Core.Maybe JobPlacement),
    -- | Optional. Job is a Presto job.
    prestoJob :: (Core.Maybe PrestoJob),
    -- | Optional. Job is a PySpark job.
    pysparkJob :: (Core.Maybe PySparkJob),
    -- | Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
    reference :: (Core.Maybe JobReference),
    -- | Optional. Job scheduling configuration.
    scheduling :: (Core.Maybe JobScheduling),
    -- | Optional. Job is a Spark job.
    sparkJob :: (Core.Maybe SparkJob),
    -- | Optional. Job is a SparkR job.
    sparkRJob :: (Core.Maybe SparkRJob),
    -- | Optional. Job is a SparkSql job.
    sparkSqlJob :: (Core.Maybe SparkSqlJob),
    -- | Output only. The job status. Additional application-specific status information might be contained in the type/job and yarn/applications fields.
    status :: (Core.Maybe JobStatus),
    -- | Output only. The previous job status.
    statusHistory :: (Core.Maybe [JobStatus]),
    -- | Optional. Job is a Trino job.
    trinoJob :: (Core.Maybe TrinoJob),
    -- | Output only. The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.
    yarnApplications :: (Core.Maybe [YarnApplication])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
newJob ::
  Job
newJob =
  Job
    { done = Core.Nothing,
      driverControlFilesUri = Core.Nothing,
      driverOutputResourceUri = Core.Nothing,
      driverSchedulingConfig = Core.Nothing,
      flinkJob = Core.Nothing,
      hadoopJob = Core.Nothing,
      hiveJob = Core.Nothing,
      jobUuid = Core.Nothing,
      labels = Core.Nothing,
      pigJob = Core.Nothing,
      placement = Core.Nothing,
      prestoJob = Core.Nothing,
      pysparkJob = Core.Nothing,
      reference = Core.Nothing,
      scheduling = Core.Nothing,
      sparkJob = Core.Nothing,
      sparkRJob = Core.Nothing,
      sparkSqlJob = Core.Nothing,
      status = Core.Nothing,
      statusHistory = Core.Nothing,
      trinoJob = Core.Nothing,
      yarnApplications = Core.Nothing
    }

instance Core.FromJSON Job where
  parseJSON =
    Core.withObject
      "Job"
      ( \o ->
          Job
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "driverControlFilesUri")
            Core.<*> (o Core..:? "driverOutputResourceUri")
            Core.<*> (o Core..:? "driverSchedulingConfig")
            Core.<*> (o Core..:? "flinkJob")
            Core.<*> (o Core..:? "hadoopJob")
            Core.<*> (o Core..:? "hiveJob")
            Core.<*> (o Core..:? "jobUuid")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "pigJob")
            Core.<*> (o Core..:? "placement")
            Core.<*> (o Core..:? "prestoJob")
            Core.<*> (o Core..:? "pysparkJob")
            Core.<*> (o Core..:? "reference")
            Core.<*> (o Core..:? "scheduling")
            Core.<*> (o Core..:? "sparkJob")
            Core.<*> (o Core..:? "sparkRJob")
            Core.<*> (o Core..:? "sparkSqlJob")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusHistory")
            Core.<*> (o Core..:? "trinoJob")
            Core.<*> (o Core..:? "yarnApplications")
      )

instance Core.ToJSON Job where
  toJSON Job {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("driverControlFilesUri" Core..=) Core.<$> driverControlFilesUri,
            ("driverOutputResourceUri" Core..=)
              Core.<$> driverOutputResourceUri,
            ("driverSchedulingConfig" Core..=) Core.<$> driverSchedulingConfig,
            ("flinkJob" Core..=) Core.<$> flinkJob,
            ("hadoopJob" Core..=) Core.<$> hadoopJob,
            ("hiveJob" Core..=) Core.<$> hiveJob,
            ("jobUuid" Core..=) Core.<$> jobUuid,
            ("labels" Core..=) Core.<$> labels,
            ("pigJob" Core..=) Core.<$> pigJob,
            ("placement" Core..=) Core.<$> placement,
            ("prestoJob" Core..=) Core.<$> prestoJob,
            ("pysparkJob" Core..=) Core.<$> pysparkJob,
            ("reference" Core..=) Core.<$> reference,
            ("scheduling" Core..=) Core.<$> scheduling,
            ("sparkJob" Core..=) Core.<$> sparkJob,
            ("sparkRJob" Core..=) Core.<$> sparkRJob,
            ("sparkSqlJob" Core..=) Core.<$> sparkSqlJob,
            ("status" Core..=) Core.<$> status,
            ("statusHistory" Core..=) Core.<$> statusHistory,
            ("trinoJob" Core..=) Core.<$> trinoJob,
            ("yarnApplications" Core..=) Core.<$> yarnApplications
          ]
      )

-- | Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a job.
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

-- | Data corresponding to a spark job.
--
-- /See:/ 'newJobData' smart constructor.
data JobData = JobData
  { completionTime :: (Core.Maybe Core.DateTime),
    description :: (Core.Maybe Core.Text),
    jobGroup :: (Core.Maybe Core.Text),
    jobId :: (Core.Maybe Core.Int64),
    killTasksSummary :: (Core.Maybe JobData_KillTasksSummary),
    name :: (Core.Maybe Core.Text),
    numActiveStages :: (Core.Maybe Core.Int32),
    numActiveTasks :: (Core.Maybe Core.Int32),
    numCompletedIndices :: (Core.Maybe Core.Int32),
    numCompletedStages :: (Core.Maybe Core.Int32),
    numCompletedTasks :: (Core.Maybe Core.Int32),
    numFailedStages :: (Core.Maybe Core.Int32),
    numFailedTasks :: (Core.Maybe Core.Int32),
    numKilledTasks :: (Core.Maybe Core.Int32),
    numSkippedStages :: (Core.Maybe Core.Int32),
    numSkippedTasks :: (Core.Maybe Core.Int32),
    numTasks :: (Core.Maybe Core.Int32),
    skippedStages :: (Core.Maybe [Core.Int32]),
    sqlExecutionId :: (Core.Maybe Core.Int64),
    stageIds :: (Core.Maybe [Core.Int64]),
    status :: (Core.Maybe JobData_Status),
    submissionTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobData' with the minimum fields required to make a request.
newJobData ::
  JobData
newJobData =
  JobData
    { completionTime = Core.Nothing,
      description = Core.Nothing,
      jobGroup = Core.Nothing,
      jobId = Core.Nothing,
      killTasksSummary = Core.Nothing,
      name = Core.Nothing,
      numActiveStages = Core.Nothing,
      numActiveTasks = Core.Nothing,
      numCompletedIndices = Core.Nothing,
      numCompletedStages = Core.Nothing,
      numCompletedTasks = Core.Nothing,
      numFailedStages = Core.Nothing,
      numFailedTasks = Core.Nothing,
      numKilledTasks = Core.Nothing,
      numSkippedStages = Core.Nothing,
      numSkippedTasks = Core.Nothing,
      numTasks = Core.Nothing,
      skippedStages = Core.Nothing,
      sqlExecutionId = Core.Nothing,
      stageIds = Core.Nothing,
      status = Core.Nothing,
      submissionTime = Core.Nothing
    }

instance Core.FromJSON JobData where
  parseJSON =
    Core.withObject
      "JobData"
      ( \o ->
          JobData
            Core.<$> (o Core..:? "completionTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "jobGroup")
            Core.<*> (o Core..:? "jobId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "killTasksSummary")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "numActiveStages")
            Core.<*> (o Core..:? "numActiveTasks")
            Core.<*> (o Core..:? "numCompletedIndices")
            Core.<*> (o Core..:? "numCompletedStages")
            Core.<*> (o Core..:? "numCompletedTasks")
            Core.<*> (o Core..:? "numFailedStages")
            Core.<*> (o Core..:? "numFailedTasks")
            Core.<*> (o Core..:? "numKilledTasks")
            Core.<*> (o Core..:? "numSkippedStages")
            Core.<*> (o Core..:? "numSkippedTasks")
            Core.<*> (o Core..:? "numTasks")
            Core.<*> (o Core..:? "skippedStages")
            Core.<*> (o Core..:? "sqlExecutionId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "stageIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "submissionTime")
      )

instance Core.ToJSON JobData where
  toJSON JobData {..} =
    Core.object
      ( Core.catMaybes
          [ ("completionTime" Core..=) Core.<$> completionTime,
            ("description" Core..=) Core.<$> description,
            ("jobGroup" Core..=) Core.<$> jobGroup,
            ("jobId" Core..=) Core.. Core.AsText Core.<$> jobId,
            ("killTasksSummary" Core..=) Core.<$> killTasksSummary,
            ("name" Core..=) Core.<$> name,
            ("numActiveStages" Core..=) Core.<$> numActiveStages,
            ("numActiveTasks" Core..=) Core.<$> numActiveTasks,
            ("numCompletedIndices" Core..=) Core.<$> numCompletedIndices,
            ("numCompletedStages" Core..=) Core.<$> numCompletedStages,
            ("numCompletedTasks" Core..=) Core.<$> numCompletedTasks,
            ("numFailedStages" Core..=) Core.<$> numFailedStages,
            ("numFailedTasks" Core..=) Core.<$> numFailedTasks,
            ("numKilledTasks" Core..=) Core.<$> numKilledTasks,
            ("numSkippedStages" Core..=) Core.<$> numSkippedStages,
            ("numSkippedTasks" Core..=) Core.<$> numSkippedTasks,
            ("numTasks" Core..=) Core.<$> numTasks,
            ("skippedStages" Core..=) Core.<$> skippedStages,
            ("sqlExecutionId" Core..=)
              Core.. Core.AsText
              Core.<$> sqlExecutionId,
            ("stageIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> stageIds,
            ("status" Core..=) Core.<$> status,
            ("submissionTime" Core..=) Core.<$> submissionTime
          ]
      )

--
-- /See:/ 'newJobData_KillTasksSummary' smart constructor.
newtype JobData_KillTasksSummary = JobData_KillTasksSummary
  { additional :: (Core.HashMap Core.Text Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobData_KillTasksSummary' with the minimum fields required to make a request.
newJobData_KillTasksSummary ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int32 ->
  JobData_KillTasksSummary
newJobData_KillTasksSummary additional =
  JobData_KillTasksSummary {additional = additional}

instance Core.FromJSON JobData_KillTasksSummary where
  parseJSON =
    Core.withObject
      "JobData_KillTasksSummary"
      (\o -> JobData_KillTasksSummary Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON JobData_KillTasksSummary where
  toJSON JobData_KillTasksSummary {..} = Core.toJSON additional

-- | Job Operation metadata.
--
-- /See:/ 'newJobMetadata' smart constructor.
data JobMetadata = JobMetadata
  { -- | Output only. The job id.
    jobId :: (Core.Maybe Core.Text),
    -- | Output only. Operation type.
    operationType :: (Core.Maybe Core.Text),
    -- | Output only. Job submission time.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Most recent job status.
    status :: (Core.Maybe JobStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobMetadata' with the minimum fields required to make a request.
newJobMetadata ::
  JobMetadata
newJobMetadata =
  JobMetadata
    { jobId = Core.Nothing,
      operationType = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON JobMetadata where
  parseJSON =
    Core.withObject
      "JobMetadata"
      ( \o ->
          JobMetadata
            Core.<$> (o Core..:? "jobId")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON JobMetadata where
  toJSON JobMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobId" Core..=) Core.<$> jobId,
            ("operationType" Core..=) Core.<$> operationType,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Dataproc job config.
--
-- /See:/ 'newJobPlacement' smart constructor.
data JobPlacement = JobPlacement
  { -- | Optional. Cluster labels to identify a cluster where the job will be submitted.
    clusterLabels :: (Core.Maybe JobPlacement_ClusterLabels),
    -- | Required. The name of the cluster where the job will be submitted.
    clusterName :: (Core.Maybe Core.Text),
    -- | Output only. A cluster UUID generated by the Dataproc service when the job is submitted.
    clusterUuid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobPlacement' with the minimum fields required to make a request.
newJobPlacement ::
  JobPlacement
newJobPlacement =
  JobPlacement
    { clusterLabels = Core.Nothing,
      clusterName = Core.Nothing,
      clusterUuid = Core.Nothing
    }

instance Core.FromJSON JobPlacement where
  parseJSON =
    Core.withObject
      "JobPlacement"
      ( \o ->
          JobPlacement
            Core.<$> (o Core..:? "clusterLabels")
            Core.<*> (o Core..:? "clusterName")
            Core.<*> (o Core..:? "clusterUuid")
      )

instance Core.ToJSON JobPlacement where
  toJSON JobPlacement {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterLabels" Core..=) Core.<$> clusterLabels,
            ("clusterName" Core..=) Core.<$> clusterName,
            ("clusterUuid" Core..=) Core.<$> clusterUuid
          ]
      )

-- | Optional. Cluster labels to identify a cluster where the job will be submitted.
--
-- /See:/ 'newJobPlacement_ClusterLabels' smart constructor.
newtype JobPlacement_ClusterLabels = JobPlacement_ClusterLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobPlacement_ClusterLabels' with the minimum fields required to make a request.
newJobPlacement_ClusterLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  JobPlacement_ClusterLabels
newJobPlacement_ClusterLabels additional =
  JobPlacement_ClusterLabels {additional = additional}

instance Core.FromJSON JobPlacement_ClusterLabels where
  parseJSON =
    Core.withObject
      "JobPlacement_ClusterLabels"
      ( \o ->
          JobPlacement_ClusterLabels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON JobPlacement_ClusterLabels where
  toJSON JobPlacement_ClusterLabels {..} = Core.toJSON additional

-- | Encapsulates the full scoping used to reference a job.
--
-- /See:/ 'newJobReference' smart constructor.
data JobReference = JobReference
  { -- | Optional. The job ID, which must be unique within the project.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.
    jobId :: (Core.Maybe Core.Text),
    -- | Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobReference' with the minimum fields required to make a request.
newJobReference ::
  JobReference
newJobReference =
  JobReference {jobId = Core.Nothing, projectId = Core.Nothing}

instance Core.FromJSON JobReference where
  parseJSON =
    Core.withObject
      "JobReference"
      ( \o ->
          JobReference
            Core.<$> (o Core..:? "jobId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON JobReference where
  toJSON JobReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobId" Core..=) Core.<$> jobId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Job scheduling options.
--
-- /See:/ 'newJobScheduling' smart constructor.
data JobScheduling = JobScheduling
  { -- | Optional. Maximum number of times per hour a driver can be restarted as a result of driver exiting with non-zero code before job is reported failed.A job might be reported as thrashing if the driver exits with a non-zero code four times within a 10-minute window.Maximum value is 10.Note: This restartable job option is not supported in Dataproc workflow templates (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/using-workflows#adding/jobs/to/a/template).
    maxFailuresPerHour :: (Core.Maybe Core.Int32),
    -- | Optional. Maximum total number of times a driver can be restarted as a result of the driver exiting with a non-zero code. After the maximum number is reached, the job will be reported as failed.Maximum value is 240.Note: Currently, this restartable job option is not supported in Dataproc workflow templates (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/using-workflows#adding/jobs/to/a/template).
    maxFailuresTotal :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobScheduling' with the minimum fields required to make a request.
newJobScheduling ::
  JobScheduling
newJobScheduling =
  JobScheduling
    { maxFailuresPerHour = Core.Nothing,
      maxFailuresTotal = Core.Nothing
    }

instance Core.FromJSON JobScheduling where
  parseJSON =
    Core.withObject
      "JobScheduling"
      ( \o ->
          JobScheduling
            Core.<$> (o Core..:? "maxFailuresPerHour")
            Core.<*> (o Core..:? "maxFailuresTotal")
      )

instance Core.ToJSON JobScheduling where
  toJSON JobScheduling {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxFailuresPerHour" Core..=) Core.<$> maxFailuresPerHour,
            ("maxFailuresTotal" Core..=) Core.<$> maxFailuresTotal
          ]
      )

-- | Dataproc job status.
--
-- /See:/ 'newJobStatus' smart constructor.
data JobStatus = JobStatus
  { -- | Optional. Output only. Job state details, such as an error description if the state is ERROR.
    details :: (Core.Maybe Core.Text),
    -- | Output only. A state message specifying the overall job state.
    state :: (Core.Maybe JobStatus_State),
    -- | Output only. The time when this state was entered.
    stateStartTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Additional state information, which includes status reported by the agent.
    substate :: (Core.Maybe JobStatus_Substate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatus' with the minimum fields required to make a request.
newJobStatus ::
  JobStatus
newJobStatus =
  JobStatus
    { details = Core.Nothing,
      state = Core.Nothing,
      stateStartTime = Core.Nothing,
      substate = Core.Nothing
    }

instance Core.FromJSON JobStatus where
  parseJSON =
    Core.withObject
      "JobStatus"
      ( \o ->
          JobStatus
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateStartTime")
            Core.<*> (o Core..:? "substate")
      )

instance Core.ToJSON JobStatus where
  toJSON JobStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("state" Core..=) Core.<$> state,
            ("stateStartTime" Core..=) Core.<$> stateStartTime,
            ("substate" Core..=) Core.<$> substate
          ]
      )

-- | Data related to Jobs page summary
--
-- /See:/ 'newJobsSummary' smart constructor.
data JobsSummary = JobsSummary
  { -- | Number of active jobs
    activeJobs :: (Core.Maybe Core.Int32),
    -- | Spark Application Id
    applicationId :: (Core.Maybe Core.Text),
    -- | Attempts info
    attempts :: (Core.Maybe [ApplicationAttemptInfo]),
    -- | Number of completed jobs
    completedJobs :: (Core.Maybe Core.Int32),
    -- | Number of failed jobs
    failedJobs :: (Core.Maybe Core.Int32),
    -- | Spark Scheduling mode
    schedulingMode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsSummary' with the minimum fields required to make a request.
newJobsSummary ::
  JobsSummary
newJobsSummary =
  JobsSummary
    { activeJobs = Core.Nothing,
      applicationId = Core.Nothing,
      attempts = Core.Nothing,
      completedJobs = Core.Nothing,
      failedJobs = Core.Nothing,
      schedulingMode = Core.Nothing
    }

instance Core.FromJSON JobsSummary where
  parseJSON =
    Core.withObject
      "JobsSummary"
      ( \o ->
          JobsSummary
            Core.<$> (o Core..:? "activeJobs")
            Core.<*> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "attempts")
            Core.<*> (o Core..:? "completedJobs")
            Core.<*> (o Core..:? "failedJobs")
            Core.<*> (o Core..:? "schedulingMode")
      )

instance Core.ToJSON JobsSummary where
  toJSON JobsSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeJobs" Core..=) Core.<$> activeJobs,
            ("applicationId" Core..=) Core.<$> applicationId,
            ("attempts" Core..=) Core.<$> attempts,
            ("completedJobs" Core..=) Core.<$> completedJobs,
            ("failedJobs" Core..=) Core.<$> failedJobs,
            ("schedulingMode" Core..=) Core.<$> schedulingMode
          ]
      )

-- | Jupyter configuration for an interactive session.
--
-- /See:/ 'newJupyterConfig' smart constructor.
data JupyterConfig = JupyterConfig
  { -- | Optional. Display name, shown in the Jupyter kernelspec card.
    displayName :: (Core.Maybe Core.Text),
    -- | Optional. Kernel
    kernel :: (Core.Maybe JupyterConfig_Kernel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JupyterConfig' with the minimum fields required to make a request.
newJupyterConfig ::
  JupyterConfig
newJupyterConfig =
  JupyterConfig {displayName = Core.Nothing, kernel = Core.Nothing}

instance Core.FromJSON JupyterConfig where
  parseJSON =
    Core.withObject
      "JupyterConfig"
      ( \o ->
          JupyterConfig
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "kernel")
      )

instance Core.ToJSON JupyterConfig where
  toJSON JupyterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("kernel" Core..=) Core.<$> kernel
          ]
      )

-- | Specifies Kerberos related configuration.
--
-- /See:/ 'newKerberosConfig' smart constructor.
data KerberosConfig = KerberosConfig
  { -- | Optional. The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship.
    crossRealmTrustAdminServer :: (Core.Maybe Core.Text),
    -- | Optional. The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship.
    crossRealmTrustKdc :: (Core.Maybe Core.Text),
    -- | Optional. The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust.
    crossRealmTrustRealm :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster Kerberos realm and the remote trusted realm, in a cross realm trust relationship.
    crossRealmTrustSharedPasswordUri :: (Core.Maybe Core.Text),
    -- | Optional. Flag to indicate whether to Kerberize the cluster (default: false). Set this field to true to enable Kerberos on a cluster.
    enableKerberos :: (Core.Maybe Core.Bool),
    -- | Optional. The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database.
    kdcDbKeyUri :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc.
    keyPasswordUri :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided keystore. For the self-signed certificate, this password is generated by Dataproc.
    keystorePasswordUri :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate.
    keystoreUri :: (Core.Maybe Core.Text),
    -- | Optional. The URI of the KMS key used to encrypt sensitive files.
    kmsKeyUri :: (Core.Maybe Core.Text),
    -- | Optional. The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm.
    realm :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud Storage URI of a KMS encrypted file containing the root principal password.
    rootPrincipalPasswordUri :: (Core.Maybe Core.Text),
    -- | Optional. The lifetime of the ticket granting ticket, in hours. If not specified, or user specifies 0, then default value 10 will be used.
    tgtLifetimeHours :: (Core.Maybe Core.Int32),
    -- | Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc.
    truststorePasswordUri :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate.
    truststoreUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KerberosConfig' with the minimum fields required to make a request.
newKerberosConfig ::
  KerberosConfig
newKerberosConfig =
  KerberosConfig
    { crossRealmTrustAdminServer = Core.Nothing,
      crossRealmTrustKdc = Core.Nothing,
      crossRealmTrustRealm = Core.Nothing,
      crossRealmTrustSharedPasswordUri = Core.Nothing,
      enableKerberos = Core.Nothing,
      kdcDbKeyUri = Core.Nothing,
      keyPasswordUri = Core.Nothing,
      keystorePasswordUri = Core.Nothing,
      keystoreUri = Core.Nothing,
      kmsKeyUri = Core.Nothing,
      realm = Core.Nothing,
      rootPrincipalPasswordUri = Core.Nothing,
      tgtLifetimeHours = Core.Nothing,
      truststorePasswordUri = Core.Nothing,
      truststoreUri = Core.Nothing
    }

instance Core.FromJSON KerberosConfig where
  parseJSON =
    Core.withObject
      "KerberosConfig"
      ( \o ->
          KerberosConfig
            Core.<$> (o Core..:? "crossRealmTrustAdminServer")
            Core.<*> (o Core..:? "crossRealmTrustKdc")
            Core.<*> (o Core..:? "crossRealmTrustRealm")
            Core.<*> (o Core..:? "crossRealmTrustSharedPasswordUri")
            Core.<*> (o Core..:? "enableKerberos")
            Core.<*> (o Core..:? "kdcDbKeyUri")
            Core.<*> (o Core..:? "keyPasswordUri")
            Core.<*> (o Core..:? "keystorePasswordUri")
            Core.<*> (o Core..:? "keystoreUri")
            Core.<*> (o Core..:? "kmsKeyUri")
            Core.<*> (o Core..:? "realm")
            Core.<*> (o Core..:? "rootPrincipalPasswordUri")
            Core.<*> (o Core..:? "tgtLifetimeHours")
            Core.<*> (o Core..:? "truststorePasswordUri")
            Core.<*> (o Core..:? "truststoreUri")
      )

instance Core.ToJSON KerberosConfig where
  toJSON KerberosConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("crossRealmTrustAdminServer" Core..=)
              Core.<$> crossRealmTrustAdminServer,
            ("crossRealmTrustKdc" Core..=) Core.<$> crossRealmTrustKdc,
            ("crossRealmTrustRealm" Core..=) Core.<$> crossRealmTrustRealm,
            ("crossRealmTrustSharedPasswordUri" Core..=)
              Core.<$> crossRealmTrustSharedPasswordUri,
            ("enableKerberos" Core..=) Core.<$> enableKerberos,
            ("kdcDbKeyUri" Core..=) Core.<$> kdcDbKeyUri,
            ("keyPasswordUri" Core..=) Core.<$> keyPasswordUri,
            ("keystorePasswordUri" Core..=) Core.<$> keystorePasswordUri,
            ("keystoreUri" Core..=) Core.<$> keystoreUri,
            ("kmsKeyUri" Core..=) Core.<$> kmsKeyUri,
            ("realm" Core..=) Core.<$> realm,
            ("rootPrincipalPasswordUri" Core..=)
              Core.<$> rootPrincipalPasswordUri,
            ("tgtLifetimeHours" Core..=) Core.<$> tgtLifetimeHours,
            ("truststorePasswordUri" Core..=) Core.<$> truststorePasswordUri,
            ("truststoreUri" Core..=) Core.<$> truststoreUri
          ]
      )

-- | The configuration for running the Dataproc cluster on Kubernetes.
--
-- /See:/ 'newKubernetesClusterConfig' smart constructor.
data KubernetesClusterConfig = KubernetesClusterConfig
  { -- | Required. The configuration for running the Dataproc cluster on GKE.
    gkeClusterConfig :: (Core.Maybe GkeClusterConfig),
    -- | Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used.
    kubernetesNamespace :: (Core.Maybe Core.Text),
    -- | Optional. The software configuration for this Dataproc cluster running on Kubernetes.
    kubernetesSoftwareConfig :: (Core.Maybe KubernetesSoftwareConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KubernetesClusterConfig' with the minimum fields required to make a request.
newKubernetesClusterConfig ::
  KubernetesClusterConfig
newKubernetesClusterConfig =
  KubernetesClusterConfig
    { gkeClusterConfig = Core.Nothing,
      kubernetesNamespace = Core.Nothing,
      kubernetesSoftwareConfig = Core.Nothing
    }

instance Core.FromJSON KubernetesClusterConfig where
  parseJSON =
    Core.withObject
      "KubernetesClusterConfig"
      ( \o ->
          KubernetesClusterConfig
            Core.<$> (o Core..:? "gkeClusterConfig")
            Core.<*> (o Core..:? "kubernetesNamespace")
            Core.<*> (o Core..:? "kubernetesSoftwareConfig")
      )

instance Core.ToJSON KubernetesClusterConfig where
  toJSON KubernetesClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gkeClusterConfig" Core..=) Core.<$> gkeClusterConfig,
            ("kubernetesNamespace" Core..=) Core.<$> kubernetesNamespace,
            ("kubernetesSoftwareConfig" Core..=)
              Core.<$> kubernetesSoftwareConfig
          ]
      )

-- | The software configuration for this Dataproc cluster running on Kubernetes.
--
-- /See:/ 'newKubernetesSoftwareConfig' smart constructor.
data KubernetesSoftwareConfig = KubernetesSoftwareConfig
  { -- | The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.
    componentVersion :: (Core.Maybe KubernetesSoftwareConfig_ComponentVersion),
    -- | The properties to set on daemon config files.Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. The following are supported prefixes and their mappings: spark: spark-defaults.confFor more information, see Cluster properties (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/cluster-properties).
    properties :: (Core.Maybe KubernetesSoftwareConfig_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KubernetesSoftwareConfig' with the minimum fields required to make a request.
newKubernetesSoftwareConfig ::
  KubernetesSoftwareConfig
newKubernetesSoftwareConfig =
  KubernetesSoftwareConfig
    { componentVersion = Core.Nothing,
      properties = Core.Nothing
    }

instance Core.FromJSON KubernetesSoftwareConfig where
  parseJSON =
    Core.withObject
      "KubernetesSoftwareConfig"
      ( \o ->
          KubernetesSoftwareConfig
            Core.<$> (o Core..:? "componentVersion")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON KubernetesSoftwareConfig where
  toJSON KubernetesSoftwareConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("componentVersion" Core..=) Core.<$> componentVersion,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.
--
-- /See:/ 'newKubernetesSoftwareConfig_ComponentVersion' smart constructor.
newtype KubernetesSoftwareConfig_ComponentVersion = KubernetesSoftwareConfig_ComponentVersion
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KubernetesSoftwareConfig_ComponentVersion' with the minimum fields required to make a request.
newKubernetesSoftwareConfig_ComponentVersion ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  KubernetesSoftwareConfig_ComponentVersion
newKubernetesSoftwareConfig_ComponentVersion additional =
  KubernetesSoftwareConfig_ComponentVersion
    { additional =
        additional
    }

instance Core.FromJSON KubernetesSoftwareConfig_ComponentVersion where
  parseJSON =
    Core.withObject
      "KubernetesSoftwareConfig_ComponentVersion"
      ( \o ->
          KubernetesSoftwareConfig_ComponentVersion
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON KubernetesSoftwareConfig_ComponentVersion where
  toJSON KubernetesSoftwareConfig_ComponentVersion {..} =
    Core.toJSON additional

-- | The properties to set on daemon config files.Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. The following are supported prefixes and their mappings: spark: spark-defaults.confFor more information, see Cluster properties (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/cluster-properties).
--
-- /See:/ 'newKubernetesSoftwareConfig_Properties' smart constructor.
newtype KubernetesSoftwareConfig_Properties = KubernetesSoftwareConfig_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KubernetesSoftwareConfig_Properties' with the minimum fields required to make a request.
newKubernetesSoftwareConfig_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  KubernetesSoftwareConfig_Properties
newKubernetesSoftwareConfig_Properties additional =
  KubernetesSoftwareConfig_Properties {additional = additional}

instance Core.FromJSON KubernetesSoftwareConfig_Properties where
  parseJSON =
    Core.withObject
      "KubernetesSoftwareConfig_Properties"
      ( \o ->
          KubernetesSoftwareConfig_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON KubernetesSoftwareConfig_Properties where
  toJSON KubernetesSoftwareConfig_Properties {..} =
    Core.toJSON additional

-- | Specifies the cluster auto-delete schedule configuration.
--
-- /See:/ 'newLifecycleConfig' smart constructor.
data LifecycleConfig = LifecycleConfig
  { -- | Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    autoDeleteTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    autoDeleteTtl :: (Core.Maybe Core.Duration),
    -- | Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    idleDeleteTtl :: (Core.Maybe Core.Duration),
    -- | Output only. The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    idleStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LifecycleConfig' with the minimum fields required to make a request.
newLifecycleConfig ::
  LifecycleConfig
newLifecycleConfig =
  LifecycleConfig
    { autoDeleteTime = Core.Nothing,
      autoDeleteTtl = Core.Nothing,
      idleDeleteTtl = Core.Nothing,
      idleStartTime = Core.Nothing
    }

instance Core.FromJSON LifecycleConfig where
  parseJSON =
    Core.withObject
      "LifecycleConfig"
      ( \o ->
          LifecycleConfig
            Core.<$> (o Core..:? "autoDeleteTime")
            Core.<*> (o Core..:? "autoDeleteTtl")
            Core.<*> (o Core..:? "idleDeleteTtl")
            Core.<*> (o Core..:? "idleStartTime")
      )

instance Core.ToJSON LifecycleConfig where
  toJSON LifecycleConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoDeleteTime" Core..=) Core.<$> autoDeleteTime,
            ("autoDeleteTtl" Core..=) Core.<$> autoDeleteTtl,
            ("idleDeleteTtl" Core..=) Core.<$> idleDeleteTtl,
            ("idleStartTime" Core..=) Core.<$> idleStartTime
          ]
      )

-- | A response to a request to list autoscaling policies in a project.
--
-- /See:/ 'newListAutoscalingPoliciesResponse' smart constructor.
data ListAutoscalingPoliciesResponse = ListAutoscalingPoliciesResponse
  { -- | Output only. This token is included in the response if there are more results to fetch.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Autoscaling policies list.
    policies :: (Core.Maybe [AutoscalingPolicy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAutoscalingPoliciesResponse' with the minimum fields required to make a request.
newListAutoscalingPoliciesResponse ::
  ListAutoscalingPoliciesResponse
newListAutoscalingPoliciesResponse =
  ListAutoscalingPoliciesResponse
    { nextPageToken = Core.Nothing,
      policies = Core.Nothing
    }

instance Core.FromJSON ListAutoscalingPoliciesResponse where
  parseJSON =
    Core.withObject
      "ListAutoscalingPoliciesResponse"
      ( \o ->
          ListAutoscalingPoliciesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "policies")
      )

instance Core.ToJSON ListAutoscalingPoliciesResponse where
  toJSON ListAutoscalingPoliciesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("policies" Core..=) Core.<$> policies
          ]
      )

-- | A list of batch workloads.
--
-- /See:/ 'newListBatchesResponse' smart constructor.
data ListBatchesResponse = ListBatchesResponse
  { -- | Output only. The batches from the specified collection.
    batches :: (Core.Maybe [Batch]),
    -- | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. List of Batches that could not be included in the response. Attempting to get one of these resources may indicate why it was not included in the list response.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBatchesResponse' with the minimum fields required to make a request.
newListBatchesResponse ::
  ListBatchesResponse
newListBatchesResponse =
  ListBatchesResponse
    { batches = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListBatchesResponse where
  parseJSON =
    Core.withObject
      "ListBatchesResponse"
      ( \o ->
          ListBatchesResponse
            Core.<$> (o Core..:? "batches")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListBatchesResponse where
  toJSON ListBatchesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("batches" Core..=) Core.<$> batches,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | The list of all clusters in a project.
--
-- /See:/ 'newListClustersResponse' smart constructor.
data ListClustersResponse = ListClustersResponse
  { -- | Output only. The clusters in the project.
    clusters :: (Core.Maybe [Cluster]),
    -- | Output only. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListClustersRequest.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
newListClustersResponse ::
  ListClustersResponse
newListClustersResponse =
  ListClustersResponse
    { clusters = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListClustersResponse where
  parseJSON =
    Core.withObject
      "ListClustersResponse"
      ( \o ->
          ListClustersResponse
            Core.<$> (o Core..:? "clusters")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListClustersResponse where
  toJSON ListClustersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusters" Core..=) Core.<$> clusters,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A list of jobs in a project.
--
-- /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse
  { -- | Output only. Jobs list.
    jobs :: (Core.Maybe [Job]),
    -- | Optional. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListJobsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. List of jobs with kms_key-encrypted parameters that could not be decrypted. A response to a jobs.get request may indicate the reason for the decryption failure for a specific job.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
newListJobsResponse ::
  ListJobsResponse
newListJobsResponse =
  ListJobsResponse
    { jobs = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListJobsResponse where
  parseJSON =
    Core.withObject
      "ListJobsResponse"
      ( \o ->
          ListJobsResponse
            Core.<$> (o Core..:? "jobs")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListJobsResponse where
  toJSON ListJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | A list of session templates.
--
-- /See:/ 'newListSessionTemplatesResponse' smart constructor.
data ListSessionTemplatesResponse = ListSessionTemplatesResponse
  { -- | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Session template list
    sessionTemplates :: (Core.Maybe [SessionTemplate])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSessionTemplatesResponse' with the minimum fields required to make a request.
newListSessionTemplatesResponse ::
  ListSessionTemplatesResponse
newListSessionTemplatesResponse =
  ListSessionTemplatesResponse
    { nextPageToken = Core.Nothing,
      sessionTemplates = Core.Nothing
    }

instance Core.FromJSON ListSessionTemplatesResponse where
  parseJSON =
    Core.withObject
      "ListSessionTemplatesResponse"
      ( \o ->
          ListSessionTemplatesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sessionTemplates")
      )

instance Core.ToJSON ListSessionTemplatesResponse where
  toJSON ListSessionTemplatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sessionTemplates" Core..=) Core.<$> sessionTemplates
          ]
      )

-- | A list of interactive sessions.
--
-- /See:/ 'newListSessionsResponse' smart constructor.
data ListSessionsResponse = ListSessionsResponse
  { -- | A token, which can be sent as page_token, to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. The sessions from the specified collection.
    sessions :: (Core.Maybe [Session])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSessionsResponse' with the minimum fields required to make a request.
newListSessionsResponse ::
  ListSessionsResponse
newListSessionsResponse =
  ListSessionsResponse
    { nextPageToken = Core.Nothing,
      sessions = Core.Nothing
    }

instance Core.FromJSON ListSessionsResponse where
  parseJSON =
    Core.withObject
      "ListSessionsResponse"
      ( \o ->
          ListSessionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sessions")
      )

instance Core.ToJSON ListSessionsResponse where
  toJSON ListSessionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sessions" Core..=) Core.<$> sessions
          ]
      )

-- | A response to a request to list workflow templates in a project.
--
-- /See:/ 'newListWorkflowTemplatesResponse' smart constructor.
data ListWorkflowTemplatesResponse = ListWorkflowTemplatesResponse
  { -- | Output only. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListWorkflowTemplatesRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. WorkflowTemplates list.
    templates :: (Core.Maybe [WorkflowTemplate]),
    -- | Output only. List of workflow templates that could not be included in the response. Attempting to get one of these resources may indicate why it was not included in the list response.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWorkflowTemplatesResponse' with the minimum fields required to make a request.
newListWorkflowTemplatesResponse ::
  ListWorkflowTemplatesResponse
newListWorkflowTemplatesResponse =
  ListWorkflowTemplatesResponse
    { nextPageToken = Core.Nothing,
      templates = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListWorkflowTemplatesResponse where
  parseJSON =
    Core.withObject
      "ListWorkflowTemplatesResponse"
      ( \o ->
          ListWorkflowTemplatesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "templates")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListWorkflowTemplatesResponse where
  toJSON ListWorkflowTemplatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("templates" Core..=) Core.<$> templates,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | The runtime logging config of the job.
--
-- /See:/ 'newLoggingConfig' smart constructor.
newtype LoggingConfig = LoggingConfig
  { -- | The per-package log levels for the driver. This can include \"root\" package name to configure rootLogger. Examples: - \'com.google = FATAL\' - \'root = INFO\' - \'org.apache = DEBUG\'
    driverLogLevels :: (Core.Maybe LoggingConfig_DriverLogLevels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingConfig' with the minimum fields required to make a request.
newLoggingConfig ::
  LoggingConfig
newLoggingConfig = LoggingConfig {driverLogLevels = Core.Nothing}

instance Core.FromJSON LoggingConfig where
  parseJSON =
    Core.withObject
      "LoggingConfig"
      (\o -> LoggingConfig Core.<$> (o Core..:? "driverLogLevels"))

instance Core.ToJSON LoggingConfig where
  toJSON LoggingConfig {..} =
    Core.object
      ( Core.catMaybes
          [("driverLogLevels" Core..=) Core.<$> driverLogLevels]
      )

-- | The per-package log levels for the driver. This can include \"root\" package name to configure rootLogger. Examples: - \'com.google = FATAL\' - \'root = INFO\' - \'org.apache = DEBUG\'
--
-- /See:/ 'newLoggingConfig_DriverLogLevels' smart constructor.
newtype LoggingConfig_DriverLogLevels = LoggingConfig_DriverLogLevels
  { additional :: (Core.HashMap Core.Text LoggingConfig_DriverLogLevelsAdditional)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingConfig_DriverLogLevels' with the minimum fields required to make a request.
newLoggingConfig_DriverLogLevels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text LoggingConfig_DriverLogLevelsAdditional ->
  LoggingConfig_DriverLogLevels
newLoggingConfig_DriverLogLevels additional =
  LoggingConfig_DriverLogLevels {additional = additional}

instance Core.FromJSON LoggingConfig_DriverLogLevels where
  parseJSON =
    Core.withObject
      "LoggingConfig_DriverLogLevels"
      ( \o ->
          LoggingConfig_DriverLogLevels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LoggingConfig_DriverLogLevels where
  toJSON LoggingConfig_DriverLogLevels {..} = Core.toJSON additional

-- | Cluster that is managed by the workflow.
--
-- /See:/ 'newManagedCluster' smart constructor.
data ManagedCluster = ManagedCluster
  { -- | Required. The cluster name prefix. A unique cluster name will be formed by appending a random suffix.The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.
    clusterName :: (Core.Maybe Core.Text),
    -- | Required. The cluster configuration.
    config :: (Core.Maybe ClusterConfig),
    -- | Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.
    labels :: (Core.Maybe ManagedCluster_Labels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedCluster' with the minimum fields required to make a request.
newManagedCluster ::
  ManagedCluster
newManagedCluster =
  ManagedCluster
    { clusterName = Core.Nothing,
      config = Core.Nothing,
      labels = Core.Nothing
    }

instance Core.FromJSON ManagedCluster where
  parseJSON =
    Core.withObject
      "ManagedCluster"
      ( \o ->
          ManagedCluster
            Core.<$> (o Core..:? "clusterName")
            Core.<*> (o Core..:? "config")
            Core.<*> (o Core..:? "labels")
      )

instance Core.ToJSON ManagedCluster where
  toJSON ManagedCluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterName" Core..=) Core.<$> clusterName,
            ("config" Core..=) Core.<$> config,
            ("labels" Core..=) Core.<$> labels
          ]
      )

-- | Optional. The labels to associate with this cluster.Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given cluster.
--
-- /See:/ 'newManagedCluster_Labels' smart constructor.
newtype ManagedCluster_Labels = ManagedCluster_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedCluster_Labels' with the minimum fields required to make a request.
newManagedCluster_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ManagedCluster_Labels
newManagedCluster_Labels additional =
  ManagedCluster_Labels {additional = additional}

instance Core.FromJSON ManagedCluster_Labels where
  parseJSON =
    Core.withObject
      "ManagedCluster_Labels"
      (\o -> ManagedCluster_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ManagedCluster_Labels where
  toJSON ManagedCluster_Labels {..} = Core.toJSON additional

-- | Specifies the resources used to actively manage an instance group.
--
-- /See:/ 'newManagedGroupConfig' smart constructor.
data ManagedGroupConfig = ManagedGroupConfig
  { -- | Output only. The name of the Instance Group Manager for this group.
    instanceGroupManagerName :: (Core.Maybe Core.Text),
    -- | Output only. The partial URI to the instance group manager for this group. E.g. projects\/my-project\/regions\/us-central1\/instanceGroupManagers\/my-igm.
    instanceGroupManagerUri :: (Core.Maybe Core.Text),
    -- | Output only. The name of the Instance Template used for the Managed Instance Group.
    instanceTemplateName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedGroupConfig' with the minimum fields required to make a request.
newManagedGroupConfig ::
  ManagedGroupConfig
newManagedGroupConfig =
  ManagedGroupConfig
    { instanceGroupManagerName = Core.Nothing,
      instanceGroupManagerUri = Core.Nothing,
      instanceTemplateName = Core.Nothing
    }

instance Core.FromJSON ManagedGroupConfig where
  parseJSON =
    Core.withObject
      "ManagedGroupConfig"
      ( \o ->
          ManagedGroupConfig
            Core.<$> (o Core..:? "instanceGroupManagerName")
            Core.<*> (o Core..:? "instanceGroupManagerUri")
            Core.<*> (o Core..:? "instanceTemplateName")
      )

instance Core.ToJSON ManagedGroupConfig where
  toJSON ManagedGroupConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("instanceGroupManagerName" Core..=)
              Core.<$> instanceGroupManagerName,
            ("instanceGroupManagerUri" Core..=)
              Core.<$> instanceGroupManagerUri,
            ("instanceTemplateName" Core..=) Core.<$> instanceTemplateName
          ]
      )

--
-- /See:/ 'newMemoryMetrics' smart constructor.
data MemoryMetrics = MemoryMetrics
  { totalOffHeapStorageMemory :: (Core.Maybe Core.Int64),
    totalOnHeapStorageMemory :: (Core.Maybe Core.Int64),
    usedOffHeapStorageMemory :: (Core.Maybe Core.Int64),
    usedOnHeapStorageMemory :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MemoryMetrics' with the minimum fields required to make a request.
newMemoryMetrics ::
  MemoryMetrics
newMemoryMetrics =
  MemoryMetrics
    { totalOffHeapStorageMemory = Core.Nothing,
      totalOnHeapStorageMemory = Core.Nothing,
      usedOffHeapStorageMemory = Core.Nothing,
      usedOnHeapStorageMemory = Core.Nothing
    }

instance Core.FromJSON MemoryMetrics where
  parseJSON =
    Core.withObject
      "MemoryMetrics"
      ( \o ->
          MemoryMetrics
            Core.<$> ( o
                         Core..:? "totalOffHeapStorageMemory"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "totalOnHeapStorageMemory"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "usedOffHeapStorageMemory"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "usedOnHeapStorageMemory"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MemoryMetrics where
  toJSON MemoryMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("totalOffHeapStorageMemory" Core..=)
              Core.. Core.AsText
              Core.<$> totalOffHeapStorageMemory,
            ("totalOnHeapStorageMemory" Core..=)
              Core.. Core.AsText
              Core.<$> totalOnHeapStorageMemory,
            ("usedOffHeapStorageMemory" Core..=)
              Core.. Core.AsText
              Core.<$> usedOffHeapStorageMemory,
            ("usedOnHeapStorageMemory" Core..=)
              Core.. Core.AsText
              Core.<$> usedOnHeapStorageMemory
          ]
      )

-- | Specifies a Metastore configuration.
--
-- /See:/ 'newMetastoreConfig' smart constructor.
newtype MetastoreConfig = MetastoreConfig
  { -- | Required. Resource name of an existing Dataproc Metastore service.Example: projects\/[project/id]\/locations\/[dataproc/region]\/services\/[service-name]
    dataprocMetastoreService :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetastoreConfig' with the minimum fields required to make a request.
newMetastoreConfig ::
  MetastoreConfig
newMetastoreConfig =
  MetastoreConfig {dataprocMetastoreService = Core.Nothing}

instance Core.FromJSON MetastoreConfig where
  parseJSON =
    Core.withObject
      "MetastoreConfig"
      ( \o ->
          MetastoreConfig Core.<$> (o Core..:? "dataprocMetastoreService")
      )

instance Core.ToJSON MetastoreConfig where
  toJSON MetastoreConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataprocMetastoreService" Core..=)
              Core.<$> dataprocMetastoreService
          ]
      )

-- | A Dataproc custom metric.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
  { -- | Optional. Specify one or more Custom metrics (https:\/\/cloud.google.com\/dataproc\/docs\/guides\/dataproc-metrics#custom/metrics) to collect for the metric course (for the SPARK metric source (any Spark metric (https:\/\/spark.apache.org\/docs\/latest\/monitoring.html#metrics) can be specified).Provide metrics in the following format: METRIC/SOURCE: INSTANCE:GROUP:METRIC Use camelcase as appropriate.Examples: yarn:ResourceManager:QueueMetrics:AppsCompleted spark:driver:DAGScheduler:job.allJobs sparkHistoryServer:JVM:Memory:NonHeapMemoryUsage.committed hiveserver2:JVM:Memory:NonHeapMemoryUsage.used Notes: Only the specified overridden metrics are collected for the metric source. For example, if one or more spark:executive metrics are listed as metric overrides, other SPARK metrics are not collected. The collection of the metrics for other enabled custom metric sources is unaffected. For example, if both SPARK andd YARN metric sources are enabled, and overrides are provided for Spark metrics only, all YARN
    -- metrics are collected.
    metricOverrides :: (Core.Maybe [Core.Text]),
    -- | Required. A standard set of metrics is collected unless metricOverrides are specified for the metric source (see Custom metrics (https:\/\/cloud.google.com\/dataproc\/docs\/guides\/dataproc-metrics#custom_metrics) for more information).
    metricSource :: (Core.Maybe Metric_MetricSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric ::
  Metric
newMetric =
  Metric
    { metricOverrides = Core.Nothing,
      metricSource = Core.Nothing
    }

instance Core.FromJSON Metric where
  parseJSON =
    Core.withObject
      "Metric"
      ( \o ->
          Metric
            Core.<$> (o Core..:? "metricOverrides")
            Core.<*> (o Core..:? "metricSource")
      )

instance Core.ToJSON Metric where
  toJSON Metric {..} =
    Core.object
      ( Core.catMaybes
          [ ("metricOverrides" Core..=) Core.<$> metricOverrides,
            ("metricSource" Core..=) Core.<$> metricSource
          ]
      )

-- | Deprecated. Used only for the deprecated beta. A full, namespace-isolated deployment target for an existing GKE cluster.
--
-- /See:/ 'newNamespacedGkeDeploymentTarget' smart constructor.
data NamespacedGkeDeploymentTarget = NamespacedGkeDeploymentTarget
  { -- | Optional. A namespace within the GKE cluster to deploy into.
    clusterNamespace :: (Core.Maybe Core.Text),
    -- | Optional. The target GKE cluster to deploy to. Format: \'projects\/{project}\/locations\/{location}\/clusters\/{cluster_id}\'
    targetGkeCluster :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamespacedGkeDeploymentTarget' with the minimum fields required to make a request.
newNamespacedGkeDeploymentTarget ::
  NamespacedGkeDeploymentTarget
newNamespacedGkeDeploymentTarget =
  NamespacedGkeDeploymentTarget
    { clusterNamespace = Core.Nothing,
      targetGkeCluster = Core.Nothing
    }

instance Core.FromJSON NamespacedGkeDeploymentTarget where
  parseJSON =
    Core.withObject
      "NamespacedGkeDeploymentTarget"
      ( \o ->
          NamespacedGkeDeploymentTarget
            Core.<$> (o Core..:? "clusterNamespace")
            Core.<*> (o Core..:? "targetGkeCluster")
      )

instance Core.ToJSON NamespacedGkeDeploymentTarget where
  toJSON NamespacedGkeDeploymentTarget {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterNamespace" Core..=) Core.<$> clusterNamespace,
            ("targetGkeCluster" Core..=) Core.<$> targetGkeCluster
          ]
      )

-- | Dataproc Node Group. The Dataproc NodeGroup resource is not related to the Dataproc NodeGroupAffinity resource.
--
-- /See:/ 'newNodeGroup' smart constructor.
data NodeGroup = NodeGroup
  { -- | Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). The node group must have no more than 32 labels.
    labels :: (Core.Maybe NodeGroup_Labels),
    -- | The Node group resource name (https:\/\/aip.dev\/122).
    name :: (Core.Maybe Core.Text),
    -- | Optional. The node group instance group configuration.
    nodeGroupConfig :: (Core.Maybe InstanceGroupConfig),
    -- | Required. Node group roles.
    roles :: (Core.Maybe [NodeGroup_RolesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeGroup' with the minimum fields required to make a request.
newNodeGroup ::
  NodeGroup
newNodeGroup =
  NodeGroup
    { labels = Core.Nothing,
      name = Core.Nothing,
      nodeGroupConfig = Core.Nothing,
      roles = Core.Nothing
    }

instance Core.FromJSON NodeGroup where
  parseJSON =
    Core.withObject
      "NodeGroup"
      ( \o ->
          NodeGroup
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeGroupConfig")
            Core.<*> (o Core..:? "roles")
      )

instance Core.ToJSON NodeGroup where
  toJSON NodeGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("nodeGroupConfig" Core..=) Core.<$> nodeGroupConfig,
            ("roles" Core..=) Core.<$> roles
          ]
      )

-- | Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). The node group must have no more than 32 labels.
--
-- /See:/ 'newNodeGroup_Labels' smart constructor.
newtype NodeGroup_Labels = NodeGroup_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeGroup_Labels' with the minimum fields required to make a request.
newNodeGroup_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  NodeGroup_Labels
newNodeGroup_Labels additional =
  NodeGroup_Labels {additional = additional}

instance Core.FromJSON NodeGroup_Labels where
  parseJSON =
    Core.withObject
      "NodeGroup_Labels"
      (\o -> NodeGroup_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON NodeGroup_Labels where
  toJSON NodeGroup_Labels {..} = Core.toJSON additional

-- | Node Group Affinity for clusters using sole-tenant node groups. The Dataproc NodeGroupAffinity resource is not related to the Dataproc NodeGroup resource.
--
-- /See:/ 'newNodeGroupAffinity' smart constructor.
newtype NodeGroupAffinity = NodeGroupAffinity
  { -- | Required. The URI of a sole-tenant node group resource (https:\/\/cloud.google.com\/compute\/docs\/reference\/rest\/v1\/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/zones\/[zone]\/nodeGroups\/node-group-1 projects\/[project/id]\/zones\/[zone]\/nodeGroups\/node-group-1 node-group-1
    nodeGroupUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeGroupAffinity' with the minimum fields required to make a request.
newNodeGroupAffinity ::
  NodeGroupAffinity
newNodeGroupAffinity =
  NodeGroupAffinity {nodeGroupUri = Core.Nothing}

instance Core.FromJSON NodeGroupAffinity where
  parseJSON =
    Core.withObject
      "NodeGroupAffinity"
      (\o -> NodeGroupAffinity Core.<$> (o Core..:? "nodeGroupUri"))

instance Core.ToJSON NodeGroupAffinity where
  toJSON NodeGroupAffinity {..} =
    Core.object
      (Core.catMaybes [("nodeGroupUri" Core..=) Core.<$> nodeGroupUri])

-- | Metadata describing the node group operation.
--
-- /See:/ 'newNodeGroupOperationMetadata' smart constructor.
data NodeGroupOperationMetadata = NodeGroupOperationMetadata
  { -- | Output only. Cluster UUID associated with the node group operation.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Output only. Short description of operation.
    description :: (Core.Maybe Core.Text),
    -- | Output only. Labels associated with the operation.
    labels :: (Core.Maybe NodeGroupOperationMetadata_Labels),
    -- | Output only. Node group ID for the operation.
    nodeGroupId :: (Core.Maybe Core.Text),
    -- | The operation type.
    operationType :: (Core.Maybe NodeGroupOperationMetadata_OperationType),
    -- | Output only. Current operation status.
    status :: (Core.Maybe ClusterOperationStatus),
    -- | Output only. The previous operation status.
    statusHistory :: (Core.Maybe [ClusterOperationStatus]),
    -- | Output only. Errors encountered during operation execution.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeGroupOperationMetadata' with the minimum fields required to make a request.
newNodeGroupOperationMetadata ::
  NodeGroupOperationMetadata
newNodeGroupOperationMetadata =
  NodeGroupOperationMetadata
    { clusterUuid = Core.Nothing,
      description = Core.Nothing,
      labels = Core.Nothing,
      nodeGroupId = Core.Nothing,
      operationType = Core.Nothing,
      status = Core.Nothing,
      statusHistory = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON NodeGroupOperationMetadata where
  parseJSON =
    Core.withObject
      "NodeGroupOperationMetadata"
      ( \o ->
          NodeGroupOperationMetadata
            Core.<$> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "nodeGroupId")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusHistory")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON NodeGroupOperationMetadata where
  toJSON NodeGroupOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("description" Core..=) Core.<$> description,
            ("labels" Core..=) Core.<$> labels,
            ("nodeGroupId" Core..=) Core.<$> nodeGroupId,
            ("operationType" Core..=) Core.<$> operationType,
            ("status" Core..=) Core.<$> status,
            ("statusHistory" Core..=) Core.<$> statusHistory,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Output only. Labels associated with the operation.
--
-- /See:/ 'newNodeGroupOperationMetadata_Labels' smart constructor.
newtype NodeGroupOperationMetadata_Labels = NodeGroupOperationMetadata_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeGroupOperationMetadata_Labels' with the minimum fields required to make a request.
newNodeGroupOperationMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  NodeGroupOperationMetadata_Labels
newNodeGroupOperationMetadata_Labels additional =
  NodeGroupOperationMetadata_Labels {additional = additional}

instance Core.FromJSON NodeGroupOperationMetadata_Labels where
  parseJSON =
    Core.withObject
      "NodeGroupOperationMetadata_Labels"
      ( \o ->
          NodeGroupOperationMetadata_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON NodeGroupOperationMetadata_Labels where
  toJSON NodeGroupOperationMetadata_Labels {..} =
    Core.toJSON additional

-- | Specifies an executable to run on a fully configured node and a timeout period for executable completion.
--
-- /See:/ 'newNodeInitializationAction' smart constructor.
data NodeInitializationAction = NodeInitializationAction
  { -- | Required. Cloud Storage URI of executable file.
    executableFile :: (Core.Maybe Core.Text),
    -- | Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
    executionTimeout :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeInitializationAction' with the minimum fields required to make a request.
newNodeInitializationAction ::
  NodeInitializationAction
newNodeInitializationAction =
  NodeInitializationAction
    { executableFile = Core.Nothing,
      executionTimeout = Core.Nothing
    }

instance Core.FromJSON NodeInitializationAction where
  parseJSON =
    Core.withObject
      "NodeInitializationAction"
      ( \o ->
          NodeInitializationAction
            Core.<$> (o Core..:? "executableFile")
            Core.<*> (o Core..:? "executionTimeout")
      )

instance Core.ToJSON NodeInitializationAction where
  toJSON NodeInitializationAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("executableFile" Core..=) Core.<$> executableFile,
            ("executionTimeout" Core..=) Core.<$> executionTimeout
          ]
      )

-- | indicating a list of workers of same type
--
-- /See:/ 'newNodePool' smart constructor.
data NodePool = NodePool
  { -- | Required. A unique id of the node pool. Primary and Secondary workers can be specified using special reserved ids PRIMARY/WORKER/POOL and SECONDARY/WORKER/POOL respectively. Aux node pools can be referenced using corresponding pool id.
    id :: (Core.Maybe Core.Text),
    -- | Name of instances to be repaired. These instances must belong to specified node pool.
    instanceNames :: (Core.Maybe [Core.Text]),
    -- | Required. Repair action to take on specified resources of the node pool.
    repairAction :: (Core.Maybe NodePool_RepairAction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodePool' with the minimum fields required to make a request.
newNodePool ::
  NodePool
newNodePool =
  NodePool
    { id = Core.Nothing,
      instanceNames = Core.Nothing,
      repairAction = Core.Nothing
    }

instance Core.FromJSON NodePool where
  parseJSON =
    Core.withObject
      "NodePool"
      ( \o ->
          NodePool
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "instanceNames")
            Core.<*> (o Core..:? "repairAction")
      )

instance Core.ToJSON NodePool where
  toJSON NodePool {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("instanceNames" Core..=) Core.<$> instanceNames,
            ("repairAction" Core..=) Core.<$> repairAction
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations\/{unique_id}.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | A job executed by the workflow.
--
-- /See:/ 'newOrderedJob' smart constructor.
data OrderedJob = OrderedJob
  { -- | Optional. Job is a Flink job.
    flinkJob :: (Core.Maybe FlinkJob),
    -- | Optional. Job is a Hadoop job.
    hadoopJob :: (Core.Maybe HadoopJob),
    -- | Optional. Job is a Hive job.
    hiveJob :: (Core.Maybe HiveJob),
    -- | Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
    labels :: (Core.Maybe OrderedJob_Labels),
    -- | Optional. Job is a Pig job.
    pigJob :: (Core.Maybe PigJob),
    -- | Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
    prerequisiteStepIds :: (Core.Maybe [Core.Text]),
    -- | Optional. Job is a Presto job.
    prestoJob :: (Core.Maybe PrestoJob),
    -- | Optional. Job is a PySpark job.
    pysparkJob :: (Core.Maybe PySparkJob),
    -- | Optional. Job scheduling configuration.
    scheduling :: (Core.Maybe JobScheduling),
    -- | Optional. Job is a Spark job.
    sparkJob :: (Core.Maybe SparkJob),
    -- | Optional. Job is a SparkR job.
    sparkRJob :: (Core.Maybe SparkRJob),
    -- | Optional. Job is a SparkSql job.
    sparkSqlJob :: (Core.Maybe SparkSqlJob),
    -- | Required. The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
    stepId :: (Core.Maybe Core.Text),
    -- | Optional. Job is a Trino job.
    trinoJob :: (Core.Maybe TrinoJob)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderedJob' with the minimum fields required to make a request.
newOrderedJob ::
  OrderedJob
newOrderedJob =
  OrderedJob
    { flinkJob = Core.Nothing,
      hadoopJob = Core.Nothing,
      hiveJob = Core.Nothing,
      labels = Core.Nothing,
      pigJob = Core.Nothing,
      prerequisiteStepIds = Core.Nothing,
      prestoJob = Core.Nothing,
      pysparkJob = Core.Nothing,
      scheduling = Core.Nothing,
      sparkJob = Core.Nothing,
      sparkRJob = Core.Nothing,
      sparkSqlJob = Core.Nothing,
      stepId = Core.Nothing,
      trinoJob = Core.Nothing
    }

instance Core.FromJSON OrderedJob where
  parseJSON =
    Core.withObject
      "OrderedJob"
      ( \o ->
          OrderedJob
            Core.<$> (o Core..:? "flinkJob")
            Core.<*> (o Core..:? "hadoopJob")
            Core.<*> (o Core..:? "hiveJob")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "pigJob")
            Core.<*> (o Core..:? "prerequisiteStepIds")
            Core.<*> (o Core..:? "prestoJob")
            Core.<*> (o Core..:? "pysparkJob")
            Core.<*> (o Core..:? "scheduling")
            Core.<*> (o Core..:? "sparkJob")
            Core.<*> (o Core..:? "sparkRJob")
            Core.<*> (o Core..:? "sparkSqlJob")
            Core.<*> (o Core..:? "stepId")
            Core.<*> (o Core..:? "trinoJob")
      )

instance Core.ToJSON OrderedJob where
  toJSON OrderedJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("flinkJob" Core..=) Core.<$> flinkJob,
            ("hadoopJob" Core..=) Core.<$> hadoopJob,
            ("hiveJob" Core..=) Core.<$> hiveJob,
            ("labels" Core..=) Core.<$> labels,
            ("pigJob" Core..=) Core.<$> pigJob,
            ("prerequisiteStepIds" Core..=) Core.<$> prerequisiteStepIds,
            ("prestoJob" Core..=) Core.<$> prestoJob,
            ("pysparkJob" Core..=) Core.<$> pysparkJob,
            ("scheduling" Core..=) Core.<$> scheduling,
            ("sparkJob" Core..=) Core.<$> sparkJob,
            ("sparkRJob" Core..=) Core.<$> sparkRJob,
            ("sparkSqlJob" Core..=) Core.<$> sparkSqlJob,
            ("stepId" Core..=) Core.<$> stepId,
            ("trinoJob" Core..=) Core.<$> trinoJob
          ]
      )

-- | Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
--
-- /See:/ 'newOrderedJob_Labels' smart constructor.
newtype OrderedJob_Labels = OrderedJob_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderedJob_Labels' with the minimum fields required to make a request.
newOrderedJob_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  OrderedJob_Labels
newOrderedJob_Labels additional =
  OrderedJob_Labels {additional = additional}

instance Core.FromJSON OrderedJob_Labels where
  parseJSON =
    Core.withObject
      "OrderedJob_Labels"
      (\o -> OrderedJob_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON OrderedJob_Labels where
  toJSON OrderedJob_Labels {..} = Core.toJSON additional

-- | Metrics about the data written by the task.
--
-- /See:/ 'newOutputMetrics' smart constructor.
data OutputMetrics = OutputMetrics
  { bytesWritten :: (Core.Maybe Core.Int64),
    recordsWritten :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutputMetrics' with the minimum fields required to make a request.
newOutputMetrics ::
  OutputMetrics
newOutputMetrics =
  OutputMetrics
    { bytesWritten = Core.Nothing,
      recordsWritten = Core.Nothing
    }

instance Core.FromJSON OutputMetrics where
  parseJSON =
    Core.withObject
      "OutputMetrics"
      ( \o ->
          OutputMetrics
            Core.<$> (o Core..:? "bytesWritten" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsWritten" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON OutputMetrics where
  toJSON OutputMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesWritten" Core..=) Core.. Core.AsText Core.<$> bytesWritten,
            ("recordsWritten" Core..=)
              Core.. Core.AsText
              Core.<$> recordsWritten
          ]
      )

--
-- /See:/ 'newOutputQuantileMetrics' smart constructor.
data OutputQuantileMetrics = OutputQuantileMetrics
  { bytesWritten :: (Core.Maybe Quantiles),
    recordsWritten :: (Core.Maybe Quantiles)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutputQuantileMetrics' with the minimum fields required to make a request.
newOutputQuantileMetrics ::
  OutputQuantileMetrics
newOutputQuantileMetrics =
  OutputQuantileMetrics
    { bytesWritten = Core.Nothing,
      recordsWritten = Core.Nothing
    }

instance Core.FromJSON OutputQuantileMetrics where
  parseJSON =
    Core.withObject
      "OutputQuantileMetrics"
      ( \o ->
          OutputQuantileMetrics
            Core.<$> (o Core..:? "bytesWritten")
            Core.<*> (o Core..:? "recordsWritten")
      )

instance Core.ToJSON OutputQuantileMetrics where
  toJSON OutputQuantileMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesWritten" Core..=) Core.<$> bytesWritten,
            ("recordsWritten" Core..=) Core.<$> recordsWritten
          ]
      )

-- | Configuration for parameter validation.
--
-- /See:/ 'newParameterValidation' smart constructor.
data ParameterValidation = ParameterValidation
  { -- | Validation based on regular expressions.
    regex :: (Core.Maybe RegexValidation),
    -- | Validation based on a list of allowed values.
    values :: (Core.Maybe ValueValidation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParameterValidation' with the minimum fields required to make a request.
newParameterValidation ::
  ParameterValidation
newParameterValidation =
  ParameterValidation {regex = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON ParameterValidation where
  parseJSON =
    Core.withObject
      "ParameterValidation"
      ( \o ->
          ParameterValidation
            Core.<$> (o Core..:? "regex")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON ParameterValidation where
  toJSON ParameterValidation {..} =
    Core.object
      ( Core.catMaybes
          [ ("regex" Core..=) Core.<$> regex,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Auxiliary services configuration for a workload.
--
-- /See:/ 'newPeripheralsConfig' smart constructor.
data PeripheralsConfig = PeripheralsConfig
  { -- | Optional. Resource name of an existing Dataproc Metastore service.Example: projects\/[project/id]\/locations\/[region]\/services\/[service/id]
    metastoreService :: (Core.Maybe Core.Text),
    -- | Optional. The Spark History Server configuration for the workload.
    sparkHistoryServerConfig :: (Core.Maybe SparkHistoryServerConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeripheralsConfig' with the minimum fields required to make a request.
newPeripheralsConfig ::
  PeripheralsConfig
newPeripheralsConfig =
  PeripheralsConfig
    { metastoreService = Core.Nothing,
      sparkHistoryServerConfig = Core.Nothing
    }

instance Core.FromJSON PeripheralsConfig where
  parseJSON =
    Core.withObject
      "PeripheralsConfig"
      ( \o ->
          PeripheralsConfig
            Core.<$> (o Core..:? "metastoreService")
            Core.<*> (o Core..:? "sparkHistoryServerConfig")
      )

instance Core.ToJSON PeripheralsConfig where
  toJSON PeripheralsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("metastoreService" Core..=) Core.<$> metastoreService,
            ("sparkHistoryServerConfig" Core..=)
              Core.<$> sparkHistoryServerConfig
          ]
      )

-- | A Dataproc job for running Apache Pig (https:\/\/pig.apache.org\/) queries on YARN.
--
-- /See:/ 'newPigJob' smart constructor.
data PigJob = PigJob
  { -- | Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
    continueOnFailure :: (Core.Maybe Core.Bool),
    -- | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/pig\/conf\/pig.properties, and classes in user code.
    properties :: (Core.Maybe PigJob_Properties),
    -- | The HCFS URI of the script that contains the Pig queries.
    queryFileUri :: (Core.Maybe Core.Text),
    -- | A list of queries.
    queryList :: (Core.Maybe QueryList),
    -- | Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
    scriptVariables :: (Core.Maybe PigJob_ScriptVariables)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PigJob' with the minimum fields required to make a request.
newPigJob ::
  PigJob
newPigJob =
  PigJob
    { continueOnFailure = Core.Nothing,
      jarFileUris = Core.Nothing,
      loggingConfig = Core.Nothing,
      properties = Core.Nothing,
      queryFileUri = Core.Nothing,
      queryList = Core.Nothing,
      scriptVariables = Core.Nothing
    }

instance Core.FromJSON PigJob where
  parseJSON =
    Core.withObject
      "PigJob"
      ( \o ->
          PigJob
            Core.<$> (o Core..:? "continueOnFailure")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "queryFileUri")
            Core.<*> (o Core..:? "queryList")
            Core.<*> (o Core..:? "scriptVariables")
      )

instance Core.ToJSON PigJob where
  toJSON PigJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("continueOnFailure" Core..=) Core.<$> continueOnFailure,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("properties" Core..=) Core.<$> properties,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryList" Core..=) Core.<$> queryList,
            ("scriptVariables" Core..=) Core.<$> scriptVariables
          ]
      )

-- | Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/pig\/conf\/pig.properties, and classes in user code.
--
-- /See:/ 'newPigJob_Properties' smart constructor.
newtype PigJob_Properties = PigJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PigJob_Properties' with the minimum fields required to make a request.
newPigJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PigJob_Properties
newPigJob_Properties additional =
  PigJob_Properties {additional = additional}

instance Core.FromJSON PigJob_Properties where
  parseJSON =
    Core.withObject
      "PigJob_Properties"
      (\o -> PigJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON PigJob_Properties where
  toJSON PigJob_Properties {..} = Core.toJSON additional

-- | Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
--
-- /See:/ 'newPigJob_ScriptVariables' smart constructor.
newtype PigJob_ScriptVariables = PigJob_ScriptVariables
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PigJob_ScriptVariables' with the minimum fields required to make a request.
newPigJob_ScriptVariables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PigJob_ScriptVariables
newPigJob_ScriptVariables additional =
  PigJob_ScriptVariables {additional = additional}

instance Core.FromJSON PigJob_ScriptVariables where
  parseJSON =
    Core.withObject
      "PigJob_ScriptVariables"
      (\o -> PigJob_ScriptVariables Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON PigJob_ScriptVariables where
  toJSON PigJob_ScriptVariables {..} = Core.toJSON additional

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).JSON example: { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } YAML example: bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation
-- (https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice\@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.
    bindings :: (Core.Maybe [Binding]),
    -- | etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation
    -- (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Pool Data
--
-- /See:/ 'newPoolData' smart constructor.
data PoolData = PoolData
  { name :: (Core.Maybe Core.Text),
    stageIds :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PoolData' with the minimum fields required to make a request.
newPoolData ::
  PoolData
newPoolData =
  PoolData {name = Core.Nothing, stageIds = Core.Nothing}

instance Core.FromJSON PoolData where
  parseJSON =
    Core.withObject
      "PoolData"
      ( \o ->
          PoolData
            Core.<$> (o Core..:? "name")
            Core.<*> ( o
                         Core..:? "stageIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON PoolData where
  toJSON PoolData {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("stageIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> stageIds
          ]
      )

-- | A Dataproc job for running Presto (https:\/\/prestosql.io\/) queries. IMPORTANT: The Dataproc Presto Optional Component (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/components\/presto) must be enabled when the cluster is created to submit a Presto job to the cluster.
--
-- /See:/ 'newPrestoJob' smart constructor.
data PrestoJob = PrestoJob
  { -- | Optional. Presto client tags to attach to this query
    clientTags :: (Core.Maybe [Core.Text]),
    -- | Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
    continueOnFailure :: (Core.Maybe Core.Bool),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats
    outputFormat :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values. Used to set Presto session properties (https:\/\/prestodb.io\/docs\/current\/sql\/set-session.html) Equivalent to using the --session flag in the Presto CLI
    properties :: (Core.Maybe PrestoJob_Properties),
    -- | The HCFS URI of the script that contains SQL queries.
    queryFileUri :: (Core.Maybe Core.Text),
    -- | A list of queries.
    queryList :: (Core.Maybe QueryList)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrestoJob' with the minimum fields required to make a request.
newPrestoJob ::
  PrestoJob
newPrestoJob =
  PrestoJob
    { clientTags = Core.Nothing,
      continueOnFailure = Core.Nothing,
      loggingConfig = Core.Nothing,
      outputFormat = Core.Nothing,
      properties = Core.Nothing,
      queryFileUri = Core.Nothing,
      queryList = Core.Nothing
    }

instance Core.FromJSON PrestoJob where
  parseJSON =
    Core.withObject
      "PrestoJob"
      ( \o ->
          PrestoJob
            Core.<$> (o Core..:? "clientTags")
            Core.<*> (o Core..:? "continueOnFailure")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "outputFormat")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "queryFileUri")
            Core.<*> (o Core..:? "queryList")
      )

instance Core.ToJSON PrestoJob where
  toJSON PrestoJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientTags" Core..=) Core.<$> clientTags,
            ("continueOnFailure" Core..=) Core.<$> continueOnFailure,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("outputFormat" Core..=) Core.<$> outputFormat,
            ("properties" Core..=) Core.<$> properties,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryList" Core..=) Core.<$> queryList
          ]
      )

-- | Optional. A mapping of property names to values. Used to set Presto session properties (https:\/\/prestodb.io\/docs\/current\/sql\/set-session.html) Equivalent to using the --session flag in the Presto CLI
--
-- /See:/ 'newPrestoJob_Properties' smart constructor.
newtype PrestoJob_Properties = PrestoJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrestoJob_Properties' with the minimum fields required to make a request.
newPrestoJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PrestoJob_Properties
newPrestoJob_Properties additional =
  PrestoJob_Properties {additional = additional}

instance Core.FromJSON PrestoJob_Properties where
  parseJSON =
    Core.withObject
      "PrestoJob_Properties"
      (\o -> PrestoJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON PrestoJob_Properties where
  toJSON PrestoJob_Properties {..} = Core.toJSON additional

-- | Process Summary
--
-- /See:/ 'newProcessSummary' smart constructor.
data ProcessSummary = ProcessSummary
  { addTime :: (Core.Maybe Core.DateTime),
    hostPort :: (Core.Maybe Core.Text),
    isActive :: (Core.Maybe Core.Bool),
    processId :: (Core.Maybe Core.Text),
    processLogs :: (Core.Maybe ProcessSummary_ProcessLogs),
    removeTime :: (Core.Maybe Core.DateTime),
    totalCores :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProcessSummary' with the minimum fields required to make a request.
newProcessSummary ::
  ProcessSummary
newProcessSummary =
  ProcessSummary
    { addTime = Core.Nothing,
      hostPort = Core.Nothing,
      isActive = Core.Nothing,
      processId = Core.Nothing,
      processLogs = Core.Nothing,
      removeTime = Core.Nothing,
      totalCores = Core.Nothing
    }

instance Core.FromJSON ProcessSummary where
  parseJSON =
    Core.withObject
      "ProcessSummary"
      ( \o ->
          ProcessSummary
            Core.<$> (o Core..:? "addTime")
            Core.<*> (o Core..:? "hostPort")
            Core.<*> (o Core..:? "isActive")
            Core.<*> (o Core..:? "processId")
            Core.<*> (o Core..:? "processLogs")
            Core.<*> (o Core..:? "removeTime")
            Core.<*> (o Core..:? "totalCores")
      )

instance Core.ToJSON ProcessSummary where
  toJSON ProcessSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("addTime" Core..=) Core.<$> addTime,
            ("hostPort" Core..=) Core.<$> hostPort,
            ("isActive" Core..=) Core.<$> isActive,
            ("processId" Core..=) Core.<$> processId,
            ("processLogs" Core..=) Core.<$> processLogs,
            ("removeTime" Core..=) Core.<$> removeTime,
            ("totalCores" Core..=) Core.<$> totalCores
          ]
      )

--
-- /See:/ 'newProcessSummary_ProcessLogs' smart constructor.
newtype ProcessSummary_ProcessLogs = ProcessSummary_ProcessLogs
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProcessSummary_ProcessLogs' with the minimum fields required to make a request.
newProcessSummary_ProcessLogs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ProcessSummary_ProcessLogs
newProcessSummary_ProcessLogs additional =
  ProcessSummary_ProcessLogs {additional = additional}

instance Core.FromJSON ProcessSummary_ProcessLogs where
  parseJSON =
    Core.withObject
      "ProcessSummary_ProcessLogs"
      ( \o ->
          ProcessSummary_ProcessLogs Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ProcessSummary_ProcessLogs where
  toJSON ProcessSummary_ProcessLogs {..} = Core.toJSON additional

-- | Defines how Dataproc should create VMs with a mixture of provisioning models.
--
-- /See:/ 'newProvisioningModelMix' smart constructor.
data ProvisioningModelMix = ProvisioningModelMix
  { -- | Optional. The base capacity that will always use Standard VMs to avoid risk of more preemption than the minimum capacity you need. Dataproc will create only standard VMs until it reaches standard/capacity/base, then it will start using standard/capacity/percent/above/base to mix Spot with Standard VMs. eg. If 15 instances are requested and standard/capacity/base is 5, Dataproc will create 5 standard VMs and then start mixing spot and standard VMs for remaining 10 instances.
    standardCapacityBase :: (Core.Maybe Core.Int32),
    -- | Optional. The percentage of target capacity that should use Standard VM. The remaining percentage will use Spot VMs. The percentage applies only to the capacity above standard/capacity/base. eg. If 15 instances are requested and standard/capacity/base is 5 and standard/capacity/percent/above/base is 30, Dataproc will create 5 standard VMs and then start mixing spot and standard VMs for remaining 10 instances. The mix will be 30% standard and 70% spot.
    standardCapacityPercentAboveBase :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProvisioningModelMix' with the minimum fields required to make a request.
newProvisioningModelMix ::
  ProvisioningModelMix
newProvisioningModelMix =
  ProvisioningModelMix
    { standardCapacityBase = Core.Nothing,
      standardCapacityPercentAboveBase = Core.Nothing
    }

instance Core.FromJSON ProvisioningModelMix where
  parseJSON =
    Core.withObject
      "ProvisioningModelMix"
      ( \o ->
          ProvisioningModelMix
            Core.<$> (o Core..:? "standardCapacityBase")
            Core.<*> (o Core..:? "standardCapacityPercentAboveBase")
      )

instance Core.ToJSON ProvisioningModelMix where
  toJSON ProvisioningModelMix {..} =
    Core.object
      ( Core.catMaybes
          [ ("standardCapacityBase" Core..=) Core.<$> standardCapacityBase,
            ("standardCapacityPercentAboveBase" Core..=)
              Core.<$> standardCapacityPercentAboveBase
          ]
      )

-- | Configuration for PyPi repository
--
-- /See:/ 'newPyPiRepositoryConfig' smart constructor.
newtype PyPiRepositoryConfig = PyPiRepositoryConfig
  { -- | Optional. PyPi repository address
    pypiRepository :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PyPiRepositoryConfig' with the minimum fields required to make a request.
newPyPiRepositoryConfig ::
  PyPiRepositoryConfig
newPyPiRepositoryConfig =
  PyPiRepositoryConfig {pypiRepository = Core.Nothing}

instance Core.FromJSON PyPiRepositoryConfig where
  parseJSON =
    Core.withObject
      "PyPiRepositoryConfig"
      ( \o ->
          PyPiRepositoryConfig Core.<$> (o Core..:? "pypiRepository")
      )

instance Core.ToJSON PyPiRepositoryConfig where
  toJSON PyPiRepositoryConfig {..} =
    Core.object
      ( Core.catMaybes
          [("pypiRepository" Core..=) Core.<$> pypiRepository]
      )

-- | A configuration for running an Apache PySpark (https:\/\/spark.apache.org\/docs\/latest\/api\/python\/getting_started\/quickstart.html) batch workload.
--
-- /See:/ 'newPySparkBatch' smart constructor.
data PySparkBatch = PySparkBatch
  { -- | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of files to be placed in the working directory of each executor.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Required. The HCFS URI of the main Python file to use as the Spark driver. Must be a .py file.
    mainPythonFileUri :: (Core.Maybe Core.Text),
    -- | Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
    pythonFileUris :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PySparkBatch' with the minimum fields required to make a request.
newPySparkBatch ::
  PySparkBatch
newPySparkBatch =
  PySparkBatch
    { archiveUris = Core.Nothing,
      args = Core.Nothing,
      fileUris = Core.Nothing,
      jarFileUris = Core.Nothing,
      mainPythonFileUri = Core.Nothing,
      pythonFileUris = Core.Nothing
    }

instance Core.FromJSON PySparkBatch where
  parseJSON =
    Core.withObject
      "PySparkBatch"
      ( \o ->
          PySparkBatch
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "args")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "mainPythonFileUri")
            Core.<*> (o Core..:? "pythonFileUris")
      )

instance Core.ToJSON PySparkBatch where
  toJSON PySparkBatch {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("mainPythonFileUri" Core..=) Core.<$> mainPythonFileUri,
            ("pythonFileUris" Core..=) Core.<$> pythonFileUris
          ]
      )

-- | A Dataproc job for running Apache PySpark (https:\/\/spark.apache.org\/docs\/latest\/api\/python\/index.html#pyspark-overview) applications on YARN.
--
-- /See:/ 'newPySparkJob' smart constructor.
data PySparkJob = PySparkJob
  { -- | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file.
    mainPythonFileUri :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
    properties :: (Core.Maybe PySparkJob_Properties),
    -- | Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
    pythonFileUris :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PySparkJob' with the minimum fields required to make a request.
newPySparkJob ::
  PySparkJob
newPySparkJob =
  PySparkJob
    { archiveUris = Core.Nothing,
      args = Core.Nothing,
      fileUris = Core.Nothing,
      jarFileUris = Core.Nothing,
      loggingConfig = Core.Nothing,
      mainPythonFileUri = Core.Nothing,
      properties = Core.Nothing,
      pythonFileUris = Core.Nothing
    }

instance Core.FromJSON PySparkJob where
  parseJSON =
    Core.withObject
      "PySparkJob"
      ( \o ->
          PySparkJob
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "args")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "mainPythonFileUri")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "pythonFileUris")
      )

instance Core.ToJSON PySparkJob where
  toJSON PySparkJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("mainPythonFileUri" Core..=) Core.<$> mainPythonFileUri,
            ("properties" Core..=) Core.<$> properties,
            ("pythonFileUris" Core..=) Core.<$> pythonFileUris
          ]
      )

-- | Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'newPySparkJob_Properties' smart constructor.
newtype PySparkJob_Properties = PySparkJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PySparkJob_Properties' with the minimum fields required to make a request.
newPySparkJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PySparkJob_Properties
newPySparkJob_Properties additional =
  PySparkJob_Properties {additional = additional}

instance Core.FromJSON PySparkJob_Properties where
  parseJSON =
    Core.withObject
      "PySparkJob_Properties"
      (\o -> PySparkJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON PySparkJob_Properties where
  toJSON PySparkJob_Properties {..} = Core.toJSON additional

-- | Quantile metrics data related to Tasks. Units can be seconds, bytes, milliseconds, etc depending on the message type.
--
-- /See:/ 'newQuantiles' smart constructor.
data Quantiles = Quantiles
  { count :: (Core.Maybe Core.Int64),
    maximum :: (Core.Maybe Core.Int64),
    minimum :: (Core.Maybe Core.Int64),
    percentile25 :: (Core.Maybe Core.Int64),
    percentile50 :: (Core.Maybe Core.Int64),
    percentile75 :: (Core.Maybe Core.Int64),
    sum :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Quantiles' with the minimum fields required to make a request.
newQuantiles ::
  Quantiles
newQuantiles =
  Quantiles
    { count = Core.Nothing,
      maximum = Core.Nothing,
      minimum = Core.Nothing,
      percentile25 = Core.Nothing,
      percentile50 = Core.Nothing,
      percentile75 = Core.Nothing,
      sum = Core.Nothing
    }

instance Core.FromJSON Quantiles where
  parseJSON =
    Core.withObject
      "Quantiles"
      ( \o ->
          Quantiles
            Core.<$> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "maximum" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minimum" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "percentile25" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "percentile50" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "percentile75" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "sum" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Quantiles where
  toJSON Quantiles {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("maximum" Core..=) Core.. Core.AsText Core.<$> maximum,
            ("minimum" Core..=) Core.. Core.AsText Core.<$> minimum,
            ("percentile25" Core..=) Core.. Core.AsText Core.<$> percentile25,
            ("percentile50" Core..=) Core.. Core.AsText Core.<$> percentile50,
            ("percentile75" Core..=) Core.. Core.AsText Core.<$> percentile75,
            ("sum" Core..=) Core.. Core.AsText Core.<$> sum
          ]
      )

-- | A list of queries to run on a cluster.
--
-- /See:/ 'newQueryList' smart constructor.
newtype QueryList = QueryList
  { -- | Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: \"hiveJob\": { \"queryList\": { \"queries\": [ \"query1\", \"query2\", \"query3;query4\", ] } }
    queries :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryList' with the minimum fields required to make a request.
newQueryList ::
  QueryList
newQueryList = QueryList {queries = Core.Nothing}

instance Core.FromJSON QueryList where
  parseJSON =
    Core.withObject
      "QueryList"
      (\o -> QueryList Core.<$> (o Core..:? "queries"))

instance Core.ToJSON QueryList where
  toJSON QueryList {..} =
    Core.object
      (Core.catMaybes [("queries" Core..=) Core.<$> queries])

-- | Details about RDD usage.
--
-- /See:/ 'newRddDataDistribution' smart constructor.
data RddDataDistribution = RddDataDistribution
  { address :: (Core.Maybe Core.Text),
    diskUsed :: (Core.Maybe Core.Int64),
    memoryRemaining :: (Core.Maybe Core.Int64),
    memoryUsed :: (Core.Maybe Core.Int64),
    offHeapMemoryRemaining :: (Core.Maybe Core.Int64),
    offHeapMemoryUsed :: (Core.Maybe Core.Int64),
    onHeapMemoryRemaining :: (Core.Maybe Core.Int64),
    onHeapMemoryUsed :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RddDataDistribution' with the minimum fields required to make a request.
newRddDataDistribution ::
  RddDataDistribution
newRddDataDistribution =
  RddDataDistribution
    { address = Core.Nothing,
      diskUsed = Core.Nothing,
      memoryRemaining = Core.Nothing,
      memoryUsed = Core.Nothing,
      offHeapMemoryRemaining = Core.Nothing,
      offHeapMemoryUsed = Core.Nothing,
      onHeapMemoryRemaining = Core.Nothing,
      onHeapMemoryUsed = Core.Nothing
    }

instance Core.FromJSON RddDataDistribution where
  parseJSON =
    Core.withObject
      "RddDataDistribution"
      ( \o ->
          RddDataDistribution
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "diskUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "memoryRemaining" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "memoryUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "offHeapMemoryRemaining"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "offHeapMemoryUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "onHeapMemoryRemaining"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "onHeapMemoryUsed" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON RddDataDistribution where
  toJSON RddDataDistribution {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("diskUsed" Core..=) Core.. Core.AsText Core.<$> diskUsed,
            ("memoryRemaining" Core..=)
              Core.. Core.AsText
              Core.<$> memoryRemaining,
            ("memoryUsed" Core..=) Core.. Core.AsText Core.<$> memoryUsed,
            ("offHeapMemoryRemaining" Core..=)
              Core.. Core.AsText
              Core.<$> offHeapMemoryRemaining,
            ("offHeapMemoryUsed" Core..=)
              Core.. Core.AsText
              Core.<$> offHeapMemoryUsed,
            ("onHeapMemoryRemaining" Core..=)
              Core.. Core.AsText
              Core.<$> onHeapMemoryRemaining,
            ("onHeapMemoryUsed" Core..=)
              Core.. Core.AsText
              Core.<$> onHeapMemoryUsed
          ]
      )

-- | A grouping of nodes representing higher level constructs (stage, job etc.).
--
-- /See:/ 'newRddOperationCluster' smart constructor.
data RddOperationCluster = RddOperationCluster
  { childClusters :: (Core.Maybe [RddOperationCluster]),
    childNodes :: (Core.Maybe [RddOperationNode]),
    name :: (Core.Maybe Core.Text),
    rddClusterId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RddOperationCluster' with the minimum fields required to make a request.
newRddOperationCluster ::
  RddOperationCluster
newRddOperationCluster =
  RddOperationCluster
    { childClusters = Core.Nothing,
      childNodes = Core.Nothing,
      name = Core.Nothing,
      rddClusterId = Core.Nothing
    }

instance Core.FromJSON RddOperationCluster where
  parseJSON =
    Core.withObject
      "RddOperationCluster"
      ( \o ->
          RddOperationCluster
            Core.<$> (o Core..:? "childClusters")
            Core.<*> (o Core..:? "childNodes")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "rddClusterId")
      )

instance Core.ToJSON RddOperationCluster where
  toJSON RddOperationCluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("childClusters" Core..=) Core.<$> childClusters,
            ("childNodes" Core..=) Core.<$> childNodes,
            ("name" Core..=) Core.<$> name,
            ("rddClusterId" Core..=) Core.<$> rddClusterId
          ]
      )

-- | A directed edge representing dependency between two RDDs.
--
-- /See:/ 'newRddOperationEdge' smart constructor.
data RddOperationEdge = RddOperationEdge
  { fromId :: (Core.Maybe Core.Int32),
    toId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RddOperationEdge' with the minimum fields required to make a request.
newRddOperationEdge ::
  RddOperationEdge
newRddOperationEdge =
  RddOperationEdge {fromId = Core.Nothing, toId = Core.Nothing}

instance Core.FromJSON RddOperationEdge where
  parseJSON =
    Core.withObject
      "RddOperationEdge"
      ( \o ->
          RddOperationEdge
            Core.<$> (o Core..:? "fromId")
            Core.<*> (o Core..:? "toId")
      )

instance Core.ToJSON RddOperationEdge where
  toJSON RddOperationEdge {..} =
    Core.object
      ( Core.catMaybes
          [ ("fromId" Core..=) Core.<$> fromId,
            ("toId" Core..=) Core.<$> toId
          ]
      )

-- | Graph representing RDD dependencies. Consists of edges and a root cluster.
--
-- /See:/ 'newRddOperationGraph' smart constructor.
data RddOperationGraph = RddOperationGraph
  { edges :: (Core.Maybe [RddOperationEdge]),
    incomingEdges :: (Core.Maybe [RddOperationEdge]),
    outgoingEdges :: (Core.Maybe [RddOperationEdge]),
    rootCluster :: (Core.Maybe RddOperationCluster),
    stageId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RddOperationGraph' with the minimum fields required to make a request.
newRddOperationGraph ::
  RddOperationGraph
newRddOperationGraph =
  RddOperationGraph
    { edges = Core.Nothing,
      incomingEdges = Core.Nothing,
      outgoingEdges = Core.Nothing,
      rootCluster = Core.Nothing,
      stageId = Core.Nothing
    }

instance Core.FromJSON RddOperationGraph where
  parseJSON =
    Core.withObject
      "RddOperationGraph"
      ( \o ->
          RddOperationGraph
            Core.<$> (o Core..:? "edges")
            Core.<*> (o Core..:? "incomingEdges")
            Core.<*> (o Core..:? "outgoingEdges")
            Core.<*> (o Core..:? "rootCluster")
            Core.<*> (o Core..:? "stageId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON RddOperationGraph where
  toJSON RddOperationGraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("edges" Core..=) Core.<$> edges,
            ("incomingEdges" Core..=) Core.<$> incomingEdges,
            ("outgoingEdges" Core..=) Core.<$> outgoingEdges,
            ("rootCluster" Core..=) Core.<$> rootCluster,
            ("stageId" Core..=) Core.. Core.AsText Core.<$> stageId
          ]
      )

-- | A node in the RDD operation graph. Corresponds to a single RDD.
--
-- /See:/ 'newRddOperationNode' smart constructor.
data RddOperationNode = RddOperationNode
  { barrier :: (Core.Maybe Core.Bool),
    cached :: (Core.Maybe Core.Bool),
    callsite :: (Core.Maybe Core.Text),
    name :: (Core.Maybe Core.Text),
    nodeId :: (Core.Maybe Core.Int32),
    outputDeterministicLevel :: (Core.Maybe RddOperationNode_OutputDeterministicLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RddOperationNode' with the minimum fields required to make a request.
newRddOperationNode ::
  RddOperationNode
newRddOperationNode =
  RddOperationNode
    { barrier = Core.Nothing,
      cached = Core.Nothing,
      callsite = Core.Nothing,
      name = Core.Nothing,
      nodeId = Core.Nothing,
      outputDeterministicLevel = Core.Nothing
    }

instance Core.FromJSON RddOperationNode where
  parseJSON =
    Core.withObject
      "RddOperationNode"
      ( \o ->
          RddOperationNode
            Core.<$> (o Core..:? "barrier")
            Core.<*> (o Core..:? "cached")
            Core.<*> (o Core..:? "callsite")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodeId")
            Core.<*> (o Core..:? "outputDeterministicLevel")
      )

instance Core.ToJSON RddOperationNode where
  toJSON RddOperationNode {..} =
    Core.object
      ( Core.catMaybes
          [ ("barrier" Core..=) Core.<$> barrier,
            ("cached" Core..=) Core.<$> cached,
            ("callsite" Core..=) Core.<$> callsite,
            ("name" Core..=) Core.<$> name,
            ("nodeId" Core..=) Core.<$> nodeId,
            ("outputDeterministicLevel" Core..=)
              Core.<$> outputDeterministicLevel
          ]
      )

-- | Information about RDD partitions.
--
-- /See:/ 'newRddPartitionInfo' smart constructor.
data RddPartitionInfo = RddPartitionInfo
  { blockName :: (Core.Maybe Core.Text),
    diskUsed :: (Core.Maybe Core.Int64),
    executors :: (Core.Maybe [Core.Text]),
    memoryUsed :: (Core.Maybe Core.Int64),
    storageLevel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RddPartitionInfo' with the minimum fields required to make a request.
newRddPartitionInfo ::
  RddPartitionInfo
newRddPartitionInfo =
  RddPartitionInfo
    { blockName = Core.Nothing,
      diskUsed = Core.Nothing,
      executors = Core.Nothing,
      memoryUsed = Core.Nothing,
      storageLevel = Core.Nothing
    }

instance Core.FromJSON RddPartitionInfo where
  parseJSON =
    Core.withObject
      "RddPartitionInfo"
      ( \o ->
          RddPartitionInfo
            Core.<$> (o Core..:? "blockName")
            Core.<*> (o Core..:? "diskUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "executors")
            Core.<*> (o Core..:? "memoryUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "storageLevel")
      )

instance Core.ToJSON RddPartitionInfo where
  toJSON RddPartitionInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockName" Core..=) Core.<$> blockName,
            ("diskUsed" Core..=) Core.. Core.AsText Core.<$> diskUsed,
            ("executors" Core..=) Core.<$> executors,
            ("memoryUsed" Core..=) Core.. Core.AsText Core.<$> memoryUsed,
            ("storageLevel" Core..=) Core.<$> storageLevel
          ]
      )

-- | Overall data about RDD storage.
--
-- /See:/ 'newRddStorageInfo' smart constructor.
data RddStorageInfo = RddStorageInfo
  { dataDistribution :: (Core.Maybe [RddDataDistribution]),
    diskUsed :: (Core.Maybe Core.Int64),
    memoryUsed :: (Core.Maybe Core.Int64),
    name :: (Core.Maybe Core.Text),
    numCachedPartitions :: (Core.Maybe Core.Int32),
    numPartitions :: (Core.Maybe Core.Int32),
    partitions :: (Core.Maybe [RddPartitionInfo]),
    rddStorageId :: (Core.Maybe Core.Int32),
    storageLevel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RddStorageInfo' with the minimum fields required to make a request.
newRddStorageInfo ::
  RddStorageInfo
newRddStorageInfo =
  RddStorageInfo
    { dataDistribution = Core.Nothing,
      diskUsed = Core.Nothing,
      memoryUsed = Core.Nothing,
      name = Core.Nothing,
      numCachedPartitions = Core.Nothing,
      numPartitions = Core.Nothing,
      partitions = Core.Nothing,
      rddStorageId = Core.Nothing,
      storageLevel = Core.Nothing
    }

instance Core.FromJSON RddStorageInfo where
  parseJSON =
    Core.withObject
      "RddStorageInfo"
      ( \o ->
          RddStorageInfo
            Core.<$> (o Core..:? "dataDistribution")
            Core.<*> (o Core..:? "diskUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "memoryUsed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "numCachedPartitions")
            Core.<*> (o Core..:? "numPartitions")
            Core.<*> (o Core..:? "partitions")
            Core.<*> (o Core..:? "rddStorageId")
            Core.<*> (o Core..:? "storageLevel")
      )

instance Core.ToJSON RddStorageInfo where
  toJSON RddStorageInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataDistribution" Core..=) Core.<$> dataDistribution,
            ("diskUsed" Core..=) Core.. Core.AsText Core.<$> diskUsed,
            ("memoryUsed" Core..=) Core.. Core.AsText Core.<$> memoryUsed,
            ("name" Core..=) Core.<$> name,
            ("numCachedPartitions" Core..=) Core.<$> numCachedPartitions,
            ("numPartitions" Core..=) Core.<$> numPartitions,
            ("partitions" Core..=) Core.<$> partitions,
            ("rddStorageId" Core..=) Core.<$> rddStorageId,
            ("storageLevel" Core..=) Core.<$> storageLevel
          ]
      )

-- | Validation based on regular expressions.
--
-- /See:/ 'newRegexValidation' smart constructor.
newtype RegexValidation = RegexValidation
  { -- | Required. RE2 regular expressions used to validate the parameter\'s value. The value must match the regex in its entirety (substring matches are not sufficient).
    regexes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegexValidation' with the minimum fields required to make a request.
newRegexValidation ::
  RegexValidation
newRegexValidation = RegexValidation {regexes = Core.Nothing}

instance Core.FromJSON RegexValidation where
  parseJSON =
    Core.withObject
      "RegexValidation"
      (\o -> RegexValidation Core.<$> (o Core..:? "regexes"))

instance Core.ToJSON RegexValidation where
  toJSON RegexValidation {..} =
    Core.object
      (Core.catMaybes [("regexes" Core..=) Core.<$> regexes])

-- | A request to repair a cluster.
--
-- /See:/ 'newRepairClusterRequest' smart constructor.
data RepairClusterRequest = RepairClusterRequest
  { -- | Optional. Cluster to be repaired
    cluster :: (Core.Maybe ClusterToRepair),
    -- | Optional. Specifying the cluster/uuid means the RPC will fail (with error NOT/FOUND) if a cluster with the specified UUID does not exist.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning facilitates the removal of cluster nodes without interrupting jobs in progress. The timeout specifies the amount of time to wait for jobs finish before forcefully removing nodes. The default timeout is 0 for forceful decommissioning, and the maximum timeout period is 1 day. (see JSON Mapping—Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).graceful/decommission/timeout is supported in Dataproc image versions 1.2+.
    gracefulDecommissionTimeout :: (Core.Maybe Core.Duration),
    -- | Optional. Node pools and corresponding repair action to be taken. All node pools should be unique in this request. i.e. Multiple entries for the same node pool id are not allowed.
    nodePools :: (Core.Maybe [NodePool]),
    -- | Optional. operation id of the parent operation sending the repair request
    parentOperationId :: (Core.Maybe Core.Text),
    -- | Optional. A unique ID used to identify the request. If the server receives two RepairClusterRequests with the same ID, the second request is ignored, and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepairClusterRequest' with the minimum fields required to make a request.
newRepairClusterRequest ::
  RepairClusterRequest
newRepairClusterRequest =
  RepairClusterRequest
    { cluster = Core.Nothing,
      clusterUuid = Core.Nothing,
      gracefulDecommissionTimeout = Core.Nothing,
      nodePools = Core.Nothing,
      parentOperationId = Core.Nothing,
      requestId = Core.Nothing
    }

instance Core.FromJSON RepairClusterRequest where
  parseJSON =
    Core.withObject
      "RepairClusterRequest"
      ( \o ->
          RepairClusterRequest
            Core.<$> (o Core..:? "cluster")
            Core.<*> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "gracefulDecommissionTimeout")
            Core.<*> (o Core..:? "nodePools")
            Core.<*> (o Core..:? "parentOperationId")
            Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON RepairClusterRequest where
  toJSON RepairClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cluster" Core..=) Core.<$> cluster,
            ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("gracefulDecommissionTimeout" Core..=)
              Core.<$> gracefulDecommissionTimeout,
            ("nodePools" Core..=) Core.<$> nodePools,
            ("parentOperationId" Core..=) Core.<$> parentOperationId,
            ("requestId" Core..=) Core.<$> requestId
          ]
      )

--
-- /See:/ 'newRepairNodeGroupRequest' smart constructor.
data RepairNodeGroupRequest = RepairNodeGroupRequest
  { -- | Required. Name of instances to be repaired. These instances must belong to specified node pool.
    instanceNames :: (Core.Maybe [Core.Text]),
    -- | Required. Repair action to take on specified resources of the node pool.
    repairAction :: (Core.Maybe RepairNodeGroupRequest_RepairAction),
    -- | Optional. A unique ID used to identify the request. If the server receives two RepairNodeGroupRequest with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepairNodeGroupRequest' with the minimum fields required to make a request.
newRepairNodeGroupRequest ::
  RepairNodeGroupRequest
newRepairNodeGroupRequest =
  RepairNodeGroupRequest
    { instanceNames = Core.Nothing,
      repairAction = Core.Nothing,
      requestId = Core.Nothing
    }

instance Core.FromJSON RepairNodeGroupRequest where
  parseJSON =
    Core.withObject
      "RepairNodeGroupRequest"
      ( \o ->
          RepairNodeGroupRequest
            Core.<$> (o Core..:? "instanceNames")
            Core.<*> (o Core..:? "repairAction")
            Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON RepairNodeGroupRequest where
  toJSON RepairNodeGroupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("instanceNames" Core..=) Core.<$> instanceNames,
            ("repairAction" Core..=) Core.<$> repairAction,
            ("requestId" Core..=) Core.<$> requestId
          ]
      )

-- | Configuration for dependency repositories
--
-- /See:/ 'newRepositoryConfig' smart constructor.
newtype RepositoryConfig = RepositoryConfig
  { -- | Optional. Configuration for PyPi repository.
    pypiRepositoryConfig :: (Core.Maybe PyPiRepositoryConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepositoryConfig' with the minimum fields required to make a request.
newRepositoryConfig ::
  RepositoryConfig
newRepositoryConfig =
  RepositoryConfig {pypiRepositoryConfig = Core.Nothing}

instance Core.FromJSON RepositoryConfig where
  parseJSON =
    Core.withObject
      "RepositoryConfig"
      ( \o ->
          RepositoryConfig Core.<$> (o Core..:? "pypiRepositoryConfig")
      )

instance Core.ToJSON RepositoryConfig where
  toJSON RepositoryConfig {..} =
    Core.object
      ( Core.catMaybes
          [("pypiRepositoryConfig" Core..=) Core.<$> pypiRepositoryConfig]
      )

-- | Reservation Affinity for consuming Zonal reservation.
--
-- /See:/ 'newReservationAffinity' smart constructor.
data ReservationAffinity = ReservationAffinity
  { -- | Optional. Type of reservation to consume
    consumeReservationType :: (Core.Maybe ReservationAffinity_ConsumeReservationType),
    -- | Optional. Corresponds to the label key of reservation resource.
    key :: (Core.Maybe Core.Text),
    -- | Optional. Corresponds to the label values of reservation resource.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReservationAffinity' with the minimum fields required to make a request.
newReservationAffinity ::
  ReservationAffinity
newReservationAffinity =
  ReservationAffinity
    { consumeReservationType = Core.Nothing,
      key = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON ReservationAffinity where
  parseJSON =
    Core.withObject
      "ReservationAffinity"
      ( \o ->
          ReservationAffinity
            Core.<$> (o Core..:? "consumeReservationType")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON ReservationAffinity where
  toJSON ReservationAffinity {..} =
    Core.object
      ( Core.catMaybes
          [ ("consumeReservationType" Core..=)
              Core.<$> consumeReservationType,
            ("key" Core..=) Core.<$> key,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | A request to resize a node group.
--
-- /See:/ 'newResizeNodeGroupRequest' smart constructor.
data ResizeNodeGroupRequest = ResizeNodeGroupRequest
  { -- | Optional. Timeout for graceful YARN decommissioning. Graceful decommissioning (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/scaling-clusters#graceful_decommissioning) allows the removal of nodes from the Compute Engine node group without interrupting jobs in progress. This timeout specifies how long to wait for jobs in progress to finish before forcefully removing nodes (and potentially interrupting jobs). Default timeout is 0 (for forceful decommission), and the maximum allowed timeout is 1 day. (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).Only supported on Dataproc image versions 1.2 and higher.
    gracefulDecommissionTimeout :: (Core.Maybe Core.Duration),
    -- | Optional. operation id of the parent operation sending the resize request
    parentOperationId :: (Core.Maybe Core.Text),
    -- | Optional. A unique ID used to identify the request. If the server receives two ResizeNodeGroupRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.ResizeNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Required. The number of running instances for the node group to maintain. The group adds or removes instances to maintain the number of instances specified by this parameter.
    size :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResizeNodeGroupRequest' with the minimum fields required to make a request.
newResizeNodeGroupRequest ::
  ResizeNodeGroupRequest
newResizeNodeGroupRequest =
  ResizeNodeGroupRequest
    { gracefulDecommissionTimeout =
        Core.Nothing,
      parentOperationId = Core.Nothing,
      requestId = Core.Nothing,
      size = Core.Nothing
    }

instance Core.FromJSON ResizeNodeGroupRequest where
  parseJSON =
    Core.withObject
      "ResizeNodeGroupRequest"
      ( \o ->
          ResizeNodeGroupRequest
            Core.<$> (o Core..:? "gracefulDecommissionTimeout")
            Core.<*> (o Core..:? "parentOperationId")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "size")
      )

instance Core.ToJSON ResizeNodeGroupRequest where
  toJSON ResizeNodeGroupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("gracefulDecommissionTimeout" Core..=)
              Core.<$> gracefulDecommissionTimeout,
            ("parentOperationId" Core..=) Core.<$> parentOperationId,
            ("requestId" Core..=) Core.<$> requestId,
            ("size" Core..=) Core.<$> size
          ]
      )

--
-- /See:/ 'newResourceInformation' smart constructor.
data ResourceInformation = ResourceInformation
  { addresses :: (Core.Maybe [Core.Text]),
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceInformation' with the minimum fields required to make a request.
newResourceInformation ::
  ResourceInformation
newResourceInformation =
  ResourceInformation
    { addresses = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON ResourceInformation where
  parseJSON =
    Core.withObject
      "ResourceInformation"
      ( \o ->
          ResourceInformation
            Core.<$> (o Core..:? "addresses")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ResourceInformation where
  toJSON ResourceInformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("addresses" Core..=) Core.<$> addresses,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Resource profile that contains information about all the resources required by executors and tasks.
--
-- /See:/ 'newResourceProfileInfo' smart constructor.
data ResourceProfileInfo = ResourceProfileInfo
  { executorResources :: (Core.Maybe ResourceProfileInfo_ExecutorResources),
    resourceProfileId :: (Core.Maybe Core.Int32),
    taskResources :: (Core.Maybe ResourceProfileInfo_TaskResources)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceProfileInfo' with the minimum fields required to make a request.
newResourceProfileInfo ::
  ResourceProfileInfo
newResourceProfileInfo =
  ResourceProfileInfo
    { executorResources = Core.Nothing,
      resourceProfileId = Core.Nothing,
      taskResources = Core.Nothing
    }

instance Core.FromJSON ResourceProfileInfo where
  parseJSON =
    Core.withObject
      "ResourceProfileInfo"
      ( \o ->
          ResourceProfileInfo
            Core.<$> (o Core..:? "executorResources")
            Core.<*> (o Core..:? "resourceProfileId")
            Core.<*> (o Core..:? "taskResources")
      )

instance Core.ToJSON ResourceProfileInfo where
  toJSON ResourceProfileInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("executorResources" Core..=) Core.<$> executorResources,
            ("resourceProfileId" Core..=) Core.<$> resourceProfileId,
            ("taskResources" Core..=) Core.<$> taskResources
          ]
      )

--
-- /See:/ 'newResourceProfileInfo_ExecutorResources' smart constructor.
newtype ResourceProfileInfo_ExecutorResources = ResourceProfileInfo_ExecutorResources
  { additional :: (Core.HashMap Core.Text ExecutorResourceRequest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceProfileInfo_ExecutorResources' with the minimum fields required to make a request.
newResourceProfileInfo_ExecutorResources ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ExecutorResourceRequest ->
  ResourceProfileInfo_ExecutorResources
newResourceProfileInfo_ExecutorResources additional =
  ResourceProfileInfo_ExecutorResources {additional = additional}

instance Core.FromJSON ResourceProfileInfo_ExecutorResources where
  parseJSON =
    Core.withObject
      "ResourceProfileInfo_ExecutorResources"
      ( \o ->
          ResourceProfileInfo_ExecutorResources
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ResourceProfileInfo_ExecutorResources where
  toJSON ResourceProfileInfo_ExecutorResources {..} =
    Core.toJSON additional

--
-- /See:/ 'newResourceProfileInfo_TaskResources' smart constructor.
newtype ResourceProfileInfo_TaskResources = ResourceProfileInfo_TaskResources
  { additional :: (Core.HashMap Core.Text TaskResourceRequest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceProfileInfo_TaskResources' with the minimum fields required to make a request.
newResourceProfileInfo_TaskResources ::
  -- |  See 'additional'.
  Core.HashMap Core.Text TaskResourceRequest ->
  ResourceProfileInfo_TaskResources
newResourceProfileInfo_TaskResources additional =
  ResourceProfileInfo_TaskResources {additional = additional}

instance Core.FromJSON ResourceProfileInfo_TaskResources where
  parseJSON =
    Core.withObject
      "ResourceProfileInfo_TaskResources"
      ( \o ->
          ResourceProfileInfo_TaskResources
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ResourceProfileInfo_TaskResources where
  toJSON ResourceProfileInfo_TaskResources {..} =
    Core.toJSON additional

-- | Runtime configuration for a workload.
--
-- /See:/ 'newRuntimeConfig' smart constructor.
data RuntimeConfig = RuntimeConfig
  { -- | Optional. Autotuning configuration of the workload.
    autotuningConfig :: (Core.Maybe AutotuningConfig),
    -- | Optional. Cohort identifier. Identifies families of the workloads having the same shape, e.g. daily ETL jobs.
    cohort :: (Core.Maybe Core.Text),
    -- | Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
    containerImage :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, which are used to configure workload execution.
    properties :: (Core.Maybe RuntimeConfig_Properties),
    -- | Optional. Dependency repository configuration.
    repositoryConfig :: (Core.Maybe RepositoryConfig),
    -- | Optional. Version of the batch runtime.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeConfig' with the minimum fields required to make a request.
newRuntimeConfig ::
  RuntimeConfig
newRuntimeConfig =
  RuntimeConfig
    { autotuningConfig = Core.Nothing,
      cohort = Core.Nothing,
      containerImage = Core.Nothing,
      properties = Core.Nothing,
      repositoryConfig = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON RuntimeConfig where
  parseJSON =
    Core.withObject
      "RuntimeConfig"
      ( \o ->
          RuntimeConfig
            Core.<$> (o Core..:? "autotuningConfig")
            Core.<*> (o Core..:? "cohort")
            Core.<*> (o Core..:? "containerImage")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "repositoryConfig")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON RuntimeConfig where
  toJSON RuntimeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("autotuningConfig" Core..=) Core.<$> autotuningConfig,
            ("cohort" Core..=) Core.<$> cohort,
            ("containerImage" Core..=) Core.<$> containerImage,
            ("properties" Core..=) Core.<$> properties,
            ("repositoryConfig" Core..=) Core.<$> repositoryConfig,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Optional. A mapping of property names to values, which are used to configure workload execution.
--
-- /See:/ 'newRuntimeConfig_Properties' smart constructor.
newtype RuntimeConfig_Properties = RuntimeConfig_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeConfig_Properties' with the minimum fields required to make a request.
newRuntimeConfig_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  RuntimeConfig_Properties
newRuntimeConfig_Properties additional =
  RuntimeConfig_Properties {additional = additional}

instance Core.FromJSON RuntimeConfig_Properties where
  parseJSON =
    Core.withObject
      "RuntimeConfig_Properties"
      (\o -> RuntimeConfig_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON RuntimeConfig_Properties where
  toJSON RuntimeConfig_Properties {..} = Core.toJSON additional

-- | Runtime information about workload execution.
--
-- /See:/ 'newRuntimeInfo' smart constructor.
data RuntimeInfo = RuntimeInfo
  { -- | Output only. Approximate workload resource usage, calculated when the workload completes (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing)).Note: This metric calculation may change in the future, for example, to capture cumulative workload resource consumption during workload execution (see the Dataproc Serverless release notes (https:\/\/cloud.google.com\/dataproc-serverless\/docs\/release-notes) for announcements, changes, fixes and other Dataproc developments).
    approximateUsage :: (Core.Maybe UsageMetrics),
    -- | Output only. Snapshot of current workload resource usage.
    currentUsage :: (Core.Maybe UsageSnapshot),
    -- | Output only. A URI pointing to the location of the diagnostics tarball.
    diagnosticOutputUri :: (Core.Maybe Core.Text),
    -- | Output only. Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
    endpoints :: (Core.Maybe RuntimeInfo_Endpoints),
    -- | Output only. A URI pointing to the location of the stdout and stderr of the workload.
    outputUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeInfo' with the minimum fields required to make a request.
newRuntimeInfo ::
  RuntimeInfo
newRuntimeInfo =
  RuntimeInfo
    { approximateUsage = Core.Nothing,
      currentUsage = Core.Nothing,
      diagnosticOutputUri = Core.Nothing,
      endpoints = Core.Nothing,
      outputUri = Core.Nothing
    }

instance Core.FromJSON RuntimeInfo where
  parseJSON =
    Core.withObject
      "RuntimeInfo"
      ( \o ->
          RuntimeInfo
            Core.<$> (o Core..:? "approximateUsage")
            Core.<*> (o Core..:? "currentUsage")
            Core.<*> (o Core..:? "diagnosticOutputUri")
            Core.<*> (o Core..:? "endpoints")
            Core.<*> (o Core..:? "outputUri")
      )

instance Core.ToJSON RuntimeInfo where
  toJSON RuntimeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("approximateUsage" Core..=) Core.<$> approximateUsage,
            ("currentUsage" Core..=) Core.<$> currentUsage,
            ("diagnosticOutputUri" Core..=) Core.<$> diagnosticOutputUri,
            ("endpoints" Core..=) Core.<$> endpoints,
            ("outputUri" Core..=) Core.<$> outputUri
          ]
      )

-- | Output only. Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
--
-- /See:/ 'newRuntimeInfo_Endpoints' smart constructor.
newtype RuntimeInfo_Endpoints = RuntimeInfo_Endpoints
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeInfo_Endpoints' with the minimum fields required to make a request.
newRuntimeInfo_Endpoints ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  RuntimeInfo_Endpoints
newRuntimeInfo_Endpoints additional =
  RuntimeInfo_Endpoints {additional = additional}

instance Core.FromJSON RuntimeInfo_Endpoints where
  parseJSON =
    Core.withObject
      "RuntimeInfo_Endpoints"
      (\o -> RuntimeInfo_Endpoints Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON RuntimeInfo_Endpoints where
  toJSON RuntimeInfo_Endpoints {..} = Core.toJSON additional

-- | List of Executors associated with a Spark Application Stage.
--
-- /See:/ 'newSearchSessionSparkApplicationExecutorStageSummaryResponse' smart constructor.
data SearchSessionSparkApplicationExecutorStageSummaryResponse = SearchSessionSparkApplicationExecutorStageSummaryResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationExecutorStageSummaryRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Details about executors used by the application stage.
    sparkApplicationStageExecutors :: (Core.Maybe [ExecutorStageSummary])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationExecutorStageSummaryResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationExecutorStageSummaryResponse ::
  SearchSessionSparkApplicationExecutorStageSummaryResponse
newSearchSessionSparkApplicationExecutorStageSummaryResponse =
  SearchSessionSparkApplicationExecutorStageSummaryResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStageExecutors =
        Core.Nothing
    }

instance
  Core.FromJSON
    SearchSessionSparkApplicationExecutorStageSummaryResponse
  where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationExecutorStageSummaryResponse"
      ( \o ->
          SearchSessionSparkApplicationExecutorStageSummaryResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStageExecutors")
      )

instance
  Core.ToJSON
    SearchSessionSparkApplicationExecutorStageSummaryResponse
  where
  toJSON
    SearchSessionSparkApplicationExecutorStageSummaryResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("sparkApplicationStageExecutors" Core..=)
                Core.<$> sparkApplicationStageExecutors
            ]
        )

-- | List of Executors associated with a Spark Application.
--
-- /See:/ 'newSearchSessionSparkApplicationExecutorsResponse' smart constructor.
data SearchSessionSparkApplicationExecutorsResponse = SearchSessionSparkApplicationExecutorsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationExecutorsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Details about executors used by the application.
    sparkApplicationExecutors :: (Core.Maybe [ExecutorSummary])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationExecutorsResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationExecutorsResponse ::
  SearchSessionSparkApplicationExecutorsResponse
newSearchSessionSparkApplicationExecutorsResponse =
  SearchSessionSparkApplicationExecutorsResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationExecutors = Core.Nothing
    }

instance
  Core.FromJSON
    SearchSessionSparkApplicationExecutorsResponse
  where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationExecutorsResponse"
      ( \o ->
          SearchSessionSparkApplicationExecutorsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationExecutors")
      )

instance Core.ToJSON SearchSessionSparkApplicationExecutorsResponse where
  toJSON SearchSessionSparkApplicationExecutorsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationExecutors" Core..=)
              Core.<$> sparkApplicationExecutors
          ]
      )

-- | A list of Jobs associated with a Spark Application.
--
-- /See:/ 'newSearchSessionSparkApplicationJobsResponse' smart constructor.
data SearchSessionSparkApplicationJobsResponse = SearchSessionSparkApplicationJobsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationJobsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to a spark job.
    sparkApplicationJobs :: (Core.Maybe [JobData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationJobsResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationJobsResponse ::
  SearchSessionSparkApplicationJobsResponse
newSearchSessionSparkApplicationJobsResponse =
  SearchSessionSparkApplicationJobsResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationJobs = Core.Nothing
    }

instance Core.FromJSON SearchSessionSparkApplicationJobsResponse where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationJobsResponse"
      ( \o ->
          SearchSessionSparkApplicationJobsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationJobs")
      )

instance Core.ToJSON SearchSessionSparkApplicationJobsResponse where
  toJSON SearchSessionSparkApplicationJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationJobs" Core..=) Core.<$> sparkApplicationJobs
          ]
      )

-- | List of all queries for a Spark Application.
--
-- /See:/ 'newSearchSessionSparkApplicationSqlQueriesResponse' smart constructor.
data SearchSessionSparkApplicationSqlQueriesResponse = SearchSessionSparkApplicationSqlQueriesResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationSqlQueriesRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. SQL Execution Data
    sparkApplicationSqlQueries :: (Core.Maybe [SqlExecutionUiData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationSqlQueriesResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationSqlQueriesResponse ::
  SearchSessionSparkApplicationSqlQueriesResponse
newSearchSessionSparkApplicationSqlQueriesResponse =
  SearchSessionSparkApplicationSqlQueriesResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationSqlQueries = Core.Nothing
    }

instance
  Core.FromJSON
    SearchSessionSparkApplicationSqlQueriesResponse
  where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationSqlQueriesResponse"
      ( \o ->
          SearchSessionSparkApplicationSqlQueriesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationSqlQueries")
      )

instance
  Core.ToJSON
    SearchSessionSparkApplicationSqlQueriesResponse
  where
  toJSON SearchSessionSparkApplicationSqlQueriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationSqlQueries" Core..=)
              Core.<$> sparkApplicationSqlQueries
          ]
      )

-- | List of tasks for a stage of a Spark Application
--
-- /See:/ 'newSearchSessionSparkApplicationStageAttemptTasksResponse' smart constructor.
data SearchSessionSparkApplicationStageAttemptTasksResponse = SearchSessionSparkApplicationStageAttemptTasksResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationStageAttemptTasksRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to tasks created by spark.
    sparkApplicationStageAttemptTasks :: (Core.Maybe [TaskData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationStageAttemptTasksResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationStageAttemptTasksResponse ::
  SearchSessionSparkApplicationStageAttemptTasksResponse
newSearchSessionSparkApplicationStageAttemptTasksResponse =
  SearchSessionSparkApplicationStageAttemptTasksResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStageAttemptTasks =
        Core.Nothing
    }

instance
  Core.FromJSON
    SearchSessionSparkApplicationStageAttemptTasksResponse
  where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationStageAttemptTasksResponse"
      ( \o ->
          SearchSessionSparkApplicationStageAttemptTasksResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStageAttemptTasks")
      )

instance
  Core.ToJSON
    SearchSessionSparkApplicationStageAttemptTasksResponse
  where
  toJSON SearchSessionSparkApplicationStageAttemptTasksResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationStageAttemptTasks" Core..=)
              Core.<$> sparkApplicationStageAttemptTasks
          ]
      )

-- | A list of Stage Attempts for a Stage of a Spark Application.
--
-- /See:/ 'newSearchSessionSparkApplicationStageAttemptsResponse' smart constructor.
data SearchSessionSparkApplicationStageAttemptsResponse = SearchSessionSparkApplicationStageAttemptsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationStageAttemptsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to a stage attempts
    sparkApplicationStageAttempts :: (Core.Maybe [StageData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationStageAttemptsResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationStageAttemptsResponse ::
  SearchSessionSparkApplicationStageAttemptsResponse
newSearchSessionSparkApplicationStageAttemptsResponse =
  SearchSessionSparkApplicationStageAttemptsResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStageAttempts = Core.Nothing
    }

instance
  Core.FromJSON
    SearchSessionSparkApplicationStageAttemptsResponse
  where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationStageAttemptsResponse"
      ( \o ->
          SearchSessionSparkApplicationStageAttemptsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStageAttempts")
      )

instance
  Core.ToJSON
    SearchSessionSparkApplicationStageAttemptsResponse
  where
  toJSON SearchSessionSparkApplicationStageAttemptsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationStageAttempts" Core..=)
              Core.<$> sparkApplicationStageAttempts
          ]
      )

-- | A list of stages associated with a Spark Application.
--
-- /See:/ 'newSearchSessionSparkApplicationStagesResponse' smart constructor.
data SearchSessionSparkApplicationStagesResponse = SearchSessionSparkApplicationStagesResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationStages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to a stage.
    sparkApplicationStages :: (Core.Maybe [StageData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationStagesResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationStagesResponse ::
  SearchSessionSparkApplicationStagesResponse
newSearchSessionSparkApplicationStagesResponse =
  SearchSessionSparkApplicationStagesResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStages = Core.Nothing
    }

instance Core.FromJSON SearchSessionSparkApplicationStagesResponse where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationStagesResponse"
      ( \o ->
          SearchSessionSparkApplicationStagesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStages")
      )

instance Core.ToJSON SearchSessionSparkApplicationStagesResponse where
  toJSON SearchSessionSparkApplicationStagesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationStages" Core..=)
              Core.<$> sparkApplicationStages
          ]
      )

-- | A list of summary of Spark Applications
--
-- /See:/ 'newSearchSessionSparkApplicationsResponse' smart constructor.
data SearchSessionSparkApplicationsResponse = SearchSessionSparkApplicationsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSessionSparkApplicationsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. High level information corresponding to an application.
    sparkApplications :: (Core.Maybe [SparkApplication])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSessionSparkApplicationsResponse' with the minimum fields required to make a request.
newSearchSessionSparkApplicationsResponse ::
  SearchSessionSparkApplicationsResponse
newSearchSessionSparkApplicationsResponse =
  SearchSessionSparkApplicationsResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplications = Core.Nothing
    }

instance Core.FromJSON SearchSessionSparkApplicationsResponse where
  parseJSON =
    Core.withObject
      "SearchSessionSparkApplicationsResponse"
      ( \o ->
          SearchSessionSparkApplicationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplications")
      )

instance Core.ToJSON SearchSessionSparkApplicationsResponse where
  toJSON SearchSessionSparkApplicationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplications" Core..=) Core.<$> sparkApplications
          ]
      )

-- | List of Executors associated with a Spark Application Stage.
--
-- /See:/ 'newSearchSparkApplicationExecutorStageSummaryResponse' smart constructor.
data SearchSparkApplicationExecutorStageSummaryResponse = SearchSparkApplicationExecutorStageSummaryResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSparkApplicationExecutorsListRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Details about executors used by the application stage.
    sparkApplicationStageExecutors :: (Core.Maybe [ExecutorStageSummary])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationExecutorStageSummaryResponse' with the minimum fields required to make a request.
newSearchSparkApplicationExecutorStageSummaryResponse ::
  SearchSparkApplicationExecutorStageSummaryResponse
newSearchSparkApplicationExecutorStageSummaryResponse =
  SearchSparkApplicationExecutorStageSummaryResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStageExecutors =
        Core.Nothing
    }

instance
  Core.FromJSON
    SearchSparkApplicationExecutorStageSummaryResponse
  where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationExecutorStageSummaryResponse"
      ( \o ->
          SearchSparkApplicationExecutorStageSummaryResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStageExecutors")
      )

instance
  Core.ToJSON
    SearchSparkApplicationExecutorStageSummaryResponse
  where
  toJSON SearchSparkApplicationExecutorStageSummaryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationStageExecutors" Core..=)
              Core.<$> sparkApplicationStageExecutors
          ]
      )

-- | List of Executors associated with a Spark Application.
--
-- /See:/ 'newSearchSparkApplicationExecutorsResponse' smart constructor.
data SearchSparkApplicationExecutorsResponse = SearchSparkApplicationExecutorsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSparkApplicationExecutorsListRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Details about executors used by the application.
    sparkApplicationExecutors :: (Core.Maybe [ExecutorSummary])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationExecutorsResponse' with the minimum fields required to make a request.
newSearchSparkApplicationExecutorsResponse ::
  SearchSparkApplicationExecutorsResponse
newSearchSparkApplicationExecutorsResponse =
  SearchSparkApplicationExecutorsResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationExecutors = Core.Nothing
    }

instance Core.FromJSON SearchSparkApplicationExecutorsResponse where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationExecutorsResponse"
      ( \o ->
          SearchSparkApplicationExecutorsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationExecutors")
      )

instance Core.ToJSON SearchSparkApplicationExecutorsResponse where
  toJSON SearchSparkApplicationExecutorsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationExecutors" Core..=)
              Core.<$> sparkApplicationExecutors
          ]
      )

-- | A list of Jobs associated with a Spark Application.
--
-- /See:/ 'newSearchSparkApplicationJobsResponse' smart constructor.
data SearchSparkApplicationJobsResponse = SearchSparkApplicationJobsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSparkApplicationJobsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to a spark job.
    sparkApplicationJobs :: (Core.Maybe [JobData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationJobsResponse' with the minimum fields required to make a request.
newSearchSparkApplicationJobsResponse ::
  SearchSparkApplicationJobsResponse
newSearchSparkApplicationJobsResponse =
  SearchSparkApplicationJobsResponse
    { nextPageToken = Core.Nothing,
      sparkApplicationJobs = Core.Nothing
    }

instance Core.FromJSON SearchSparkApplicationJobsResponse where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationJobsResponse"
      ( \o ->
          SearchSparkApplicationJobsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationJobs")
      )

instance Core.ToJSON SearchSparkApplicationJobsResponse where
  toJSON SearchSparkApplicationJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationJobs" Core..=) Core.<$> sparkApplicationJobs
          ]
      )

-- | List of all queries for a Spark Application.
--
-- /See:/ 'newSearchSparkApplicationSqlQueriesResponse' smart constructor.
data SearchSparkApplicationSqlQueriesResponse = SearchSparkApplicationSqlQueriesResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSparkApplicationSqlQueriesRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. SQL Execution Data
    sparkApplicationSqlQueries :: (Core.Maybe [SqlExecutionUiData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationSqlQueriesResponse' with the minimum fields required to make a request.
newSearchSparkApplicationSqlQueriesResponse ::
  SearchSparkApplicationSqlQueriesResponse
newSearchSparkApplicationSqlQueriesResponse =
  SearchSparkApplicationSqlQueriesResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationSqlQueries = Core.Nothing
    }

instance Core.FromJSON SearchSparkApplicationSqlQueriesResponse where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationSqlQueriesResponse"
      ( \o ->
          SearchSparkApplicationSqlQueriesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationSqlQueries")
      )

instance Core.ToJSON SearchSparkApplicationSqlQueriesResponse where
  toJSON SearchSparkApplicationSqlQueriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationSqlQueries" Core..=)
              Core.<$> sparkApplicationSqlQueries
          ]
      )

-- | List of tasks for a stage of a Spark Application
--
-- /See:/ 'newSearchSparkApplicationStageAttemptTasksResponse' smart constructor.
data SearchSparkApplicationStageAttemptTasksResponse = SearchSparkApplicationStageAttemptTasksResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListSparkApplicationStageAttemptTasksRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to tasks created by spark.
    sparkApplicationStageAttemptTasks :: (Core.Maybe [TaskData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationStageAttemptTasksResponse' with the minimum fields required to make a request.
newSearchSparkApplicationStageAttemptTasksResponse ::
  SearchSparkApplicationStageAttemptTasksResponse
newSearchSparkApplicationStageAttemptTasksResponse =
  SearchSparkApplicationStageAttemptTasksResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStageAttemptTasks =
        Core.Nothing
    }

instance
  Core.FromJSON
    SearchSparkApplicationStageAttemptTasksResponse
  where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationStageAttemptTasksResponse"
      ( \o ->
          SearchSparkApplicationStageAttemptTasksResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStageAttemptTasks")
      )

instance
  Core.ToJSON
    SearchSparkApplicationStageAttemptTasksResponse
  where
  toJSON SearchSparkApplicationStageAttemptTasksResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationStageAttemptTasks" Core..=)
              Core.<$> sparkApplicationStageAttemptTasks
          ]
      )

-- | A list of Stage Attempts for a Stage of a Spark Application.
--
-- /See:/ 'newSearchSparkApplicationStageAttemptsResponse' smart constructor.
data SearchSparkApplicationStageAttemptsResponse = SearchSparkApplicationStageAttemptsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListSparkApplicationStageAttemptsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to a stage attempts
    sparkApplicationStageAttempts :: (Core.Maybe [StageData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationStageAttemptsResponse' with the minimum fields required to make a request.
newSearchSparkApplicationStageAttemptsResponse ::
  SearchSparkApplicationStageAttemptsResponse
newSearchSparkApplicationStageAttemptsResponse =
  SearchSparkApplicationStageAttemptsResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStageAttempts = Core.Nothing
    }

instance Core.FromJSON SearchSparkApplicationStageAttemptsResponse where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationStageAttemptsResponse"
      ( \o ->
          SearchSparkApplicationStageAttemptsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStageAttempts")
      )

instance Core.ToJSON SearchSparkApplicationStageAttemptsResponse where
  toJSON SearchSparkApplicationStageAttemptsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationStageAttempts" Core..=)
              Core.<$> sparkApplicationStageAttempts
          ]
      )

-- | A list of stages associated with a Spark Application.
--
-- /See:/ 'newSearchSparkApplicationStagesResponse' smart constructor.
data SearchSparkApplicationStagesResponse = SearchSparkApplicationStagesResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSparkApplicationStages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Data corresponding to a stage.
    sparkApplicationStages :: (Core.Maybe [StageData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationStagesResponse' with the minimum fields required to make a request.
newSearchSparkApplicationStagesResponse ::
  SearchSparkApplicationStagesResponse
newSearchSparkApplicationStagesResponse =
  SearchSparkApplicationStagesResponse
    { nextPageToken =
        Core.Nothing,
      sparkApplicationStages = Core.Nothing
    }

instance Core.FromJSON SearchSparkApplicationStagesResponse where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationStagesResponse"
      ( \o ->
          SearchSparkApplicationStagesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplicationStages")
      )

instance Core.ToJSON SearchSparkApplicationStagesResponse where
  toJSON SearchSparkApplicationStagesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplicationStages" Core..=)
              Core.<$> sparkApplicationStages
          ]
      )

-- | A list of summary of Spark Applications
--
-- /See:/ 'newSearchSparkApplicationsResponse' smart constructor.
data SearchSparkApplicationsResponse = SearchSparkApplicationsResponse
  { -- | This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent SearchSparkApplicationsRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. High level information corresponding to an application.
    sparkApplications :: (Core.Maybe [SparkApplication])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchSparkApplicationsResponse' with the minimum fields required to make a request.
newSearchSparkApplicationsResponse ::
  SearchSparkApplicationsResponse
newSearchSparkApplicationsResponse =
  SearchSparkApplicationsResponse
    { nextPageToken = Core.Nothing,
      sparkApplications = Core.Nothing
    }

instance Core.FromJSON SearchSparkApplicationsResponse where
  parseJSON =
    Core.withObject
      "SearchSparkApplicationsResponse"
      ( \o ->
          SearchSparkApplicationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sparkApplications")
      )

instance Core.ToJSON SearchSparkApplicationsResponse where
  toJSON SearchSparkApplicationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sparkApplications" Core..=) Core.<$> sparkApplications
          ]
      )

-- | Security related configuration, including encryption, Kerberos, etc.
--
-- /See:/ 'newSecurityConfig' smart constructor.
data SecurityConfig = SecurityConfig
  { -- | Optional. Identity related configuration, including service account based secure multi-tenancy user mappings.
    identityConfig :: (Core.Maybe IdentityConfig),
    -- | Optional. Kerberos related configuration.
    kerberosConfig :: (Core.Maybe KerberosConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityConfig' with the minimum fields required to make a request.
newSecurityConfig ::
  SecurityConfig
newSecurityConfig =
  SecurityConfig
    { identityConfig = Core.Nothing,
      kerberosConfig = Core.Nothing
    }

instance Core.FromJSON SecurityConfig where
  parseJSON =
    Core.withObject
      "SecurityConfig"
      ( \o ->
          SecurityConfig
            Core.<$> (o Core..:? "identityConfig")
            Core.<*> (o Core..:? "kerberosConfig")
      )

instance Core.ToJSON SecurityConfig where
  toJSON SecurityConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("identityConfig" Core..=) Core.<$> identityConfig,
            ("kerberosConfig" Core..=) Core.<$> kerberosConfig
          ]
      )

-- | A representation of a session.
--
-- /See:/ 'newSession' smart constructor.
data Session = Session
  { -- | Output only. The time when the session was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The email address of the user who created the session.
    creator :: (Core.Maybe Core.Text),
    -- | Optional. Environment configuration for the session execution.
    environmentConfig :: (Core.Maybe EnvironmentConfig),
    -- | Optional. Jupyter session config.
    jupyterSession :: (Core.Maybe JupyterConfig),
    -- | Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a session.
    labels :: (Core.Maybe Session_Labels),
    -- | Required. The resource name of the session.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Runtime configuration for the session execution.
    runtimeConfig :: (Core.Maybe RuntimeConfig),
    -- | Output only. Runtime information about session execution.
    runtimeInfo :: (Core.Maybe RuntimeInfo),
    -- | Optional. The session template used by the session.Only resource names, including project ID and location, are valid.Example: * https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/locations\/[dataproc/region]\/sessionTemplates\/[template/id] * projects\/[project/id]\/locations\/[dataproc/region]\/sessionTemplates\/[template/id]The template must be in the same project and Dataproc region as the session.
    sessionTemplate :: (Core.Maybe Core.Text),
    -- | Optional. Spark connect session config.
    sparkConnectSession :: (Core.Maybe SparkConnectConfig),
    -- | Output only. A state of the session.
    state :: (Core.Maybe Session_State),
    -- | Output only. Historical state information for the session.
    stateHistory :: (Core.Maybe [SessionStateHistory]),
    -- | Output only. Session state details, such as the failure description if the state is FAILED.
    stateMessage :: (Core.Maybe Core.Text),
    -- | Output only. The time when the session entered the current state.
    stateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The email address of the user who owns the session.
    user :: (Core.Maybe Core.Text),
    -- | Output only. A session UUID (Unique Universal Identifier). The service generates this value when it creates the session.
    uuid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Session' with the minimum fields required to make a request.
newSession ::
  Session
newSession =
  Session
    { createTime = Core.Nothing,
      creator = Core.Nothing,
      environmentConfig = Core.Nothing,
      jupyterSession = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      runtimeConfig = Core.Nothing,
      runtimeInfo = Core.Nothing,
      sessionTemplate = Core.Nothing,
      sparkConnectSession = Core.Nothing,
      state = Core.Nothing,
      stateHistory = Core.Nothing,
      stateMessage = Core.Nothing,
      stateTime = Core.Nothing,
      user = Core.Nothing,
      uuid = Core.Nothing
    }

instance Core.FromJSON Session where
  parseJSON =
    Core.withObject
      "Session"
      ( \o ->
          Session
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "creator")
            Core.<*> (o Core..:? "environmentConfig")
            Core.<*> (o Core..:? "jupyterSession")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "runtimeConfig")
            Core.<*> (o Core..:? "runtimeInfo")
            Core.<*> (o Core..:? "sessionTemplate")
            Core.<*> (o Core..:? "sparkConnectSession")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateHistory")
            Core.<*> (o Core..:? "stateMessage")
            Core.<*> (o Core..:? "stateTime")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "uuid")
      )

instance Core.ToJSON Session where
  toJSON Session {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("creator" Core..=) Core.<$> creator,
            ("environmentConfig" Core..=) Core.<$> environmentConfig,
            ("jupyterSession" Core..=) Core.<$> jupyterSession,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("runtimeConfig" Core..=) Core.<$> runtimeConfig,
            ("runtimeInfo" Core..=) Core.<$> runtimeInfo,
            ("sessionTemplate" Core..=) Core.<$> sessionTemplate,
            ("sparkConnectSession" Core..=) Core.<$> sparkConnectSession,
            ("state" Core..=) Core.<$> state,
            ("stateHistory" Core..=) Core.<$> stateHistory,
            ("stateMessage" Core..=) Core.<$> stateMessage,
            ("stateTime" Core..=) Core.<$> stateTime,
            ("user" Core..=) Core.<$> user,
            ("uuid" Core..=) Core.<$> uuid
          ]
      )

-- | Optional. The labels to associate with the session. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a session.
--
-- /See:/ 'newSession_Labels' smart constructor.
newtype Session_Labels = Session_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Session_Labels' with the minimum fields required to make a request.
newSession_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Session_Labels
newSession_Labels additional =
  Session_Labels {additional = additional}

instance Core.FromJSON Session_Labels where
  parseJSON =
    Core.withObject
      "Session_Labels"
      (\o -> Session_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Session_Labels where
  toJSON Session_Labels {..} = Core.toJSON additional

-- | Metadata describing the Session operation.
--
-- /See:/ 'newSessionOperationMetadata' smart constructor.
data SessionOperationMetadata = SessionOperationMetadata
  { -- | The time when the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Short description of the operation.
    description :: (Core.Maybe Core.Text),
    -- | The time when the operation was finished.
    doneTime :: (Core.Maybe Core.DateTime),
    -- | Labels associated with the operation.
    labels :: (Core.Maybe SessionOperationMetadata_Labels),
    -- | The operation type.
    operationType :: (Core.Maybe SessionOperationMetadata_OperationType),
    -- | Name of the session for the operation.
    session :: (Core.Maybe Core.Text),
    -- | Session UUID for the operation.
    sessionUuid :: (Core.Maybe Core.Text),
    -- | Warnings encountered during operation execution.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SessionOperationMetadata' with the minimum fields required to make a request.
newSessionOperationMetadata ::
  SessionOperationMetadata
newSessionOperationMetadata =
  SessionOperationMetadata
    { createTime = Core.Nothing,
      description = Core.Nothing,
      doneTime = Core.Nothing,
      labels = Core.Nothing,
      operationType = Core.Nothing,
      session = Core.Nothing,
      sessionUuid = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON SessionOperationMetadata where
  parseJSON =
    Core.withObject
      "SessionOperationMetadata"
      ( \o ->
          SessionOperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "doneTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "session")
            Core.<*> (o Core..:? "sessionUuid")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON SessionOperationMetadata where
  toJSON SessionOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("doneTime" Core..=) Core.<$> doneTime,
            ("labels" Core..=) Core.<$> labels,
            ("operationType" Core..=) Core.<$> operationType,
            ("session" Core..=) Core.<$> session,
            ("sessionUuid" Core..=) Core.<$> sessionUuid,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Labels associated with the operation.
--
-- /See:/ 'newSessionOperationMetadata_Labels' smart constructor.
newtype SessionOperationMetadata_Labels = SessionOperationMetadata_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SessionOperationMetadata_Labels' with the minimum fields required to make a request.
newSessionOperationMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SessionOperationMetadata_Labels
newSessionOperationMetadata_Labels additional =
  SessionOperationMetadata_Labels {additional = additional}

instance Core.FromJSON SessionOperationMetadata_Labels where
  parseJSON =
    Core.withObject
      "SessionOperationMetadata_Labels"
      ( \o ->
          SessionOperationMetadata_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SessionOperationMetadata_Labels where
  toJSON SessionOperationMetadata_Labels {..} = Core.toJSON additional

-- | Historical state information.
--
-- /See:/ 'newSessionStateHistory' smart constructor.
data SessionStateHistory = SessionStateHistory
  { -- | Output only. The state of the session at this point in the session history.
    state :: (Core.Maybe SessionStateHistory_State),
    -- | Output only. Details about the state at this point in the session history.
    stateMessage :: (Core.Maybe Core.Text),
    -- | Output only. The time when the session entered the historical state.
    stateStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SessionStateHistory' with the minimum fields required to make a request.
newSessionStateHistory ::
  SessionStateHistory
newSessionStateHistory =
  SessionStateHistory
    { state = Core.Nothing,
      stateMessage = Core.Nothing,
      stateStartTime = Core.Nothing
    }

instance Core.FromJSON SessionStateHistory where
  parseJSON =
    Core.withObject
      "SessionStateHistory"
      ( \o ->
          SessionStateHistory
            Core.<$> (o Core..:? "state")
            Core.<*> (o Core..:? "stateMessage")
            Core.<*> (o Core..:? "stateStartTime")
      )

instance Core.ToJSON SessionStateHistory where
  toJSON SessionStateHistory {..} =
    Core.object
      ( Core.catMaybes
          [ ("state" Core..=) Core.<$> state,
            ("stateMessage" Core..=) Core.<$> stateMessage,
            ("stateStartTime" Core..=) Core.<$> stateStartTime
          ]
      )

-- | A representation of a session template.
--
-- /See:/ 'newSessionTemplate' smart constructor.
data SessionTemplate = SessionTemplate
  { -- | Output only. The time when the template was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The email address of the user who created the template.
    creator :: (Core.Maybe Core.Text),
    -- | Optional. Brief description of the template.
    description :: (Core.Maybe Core.Text),
    -- | Optional. Environment configuration for session execution.
    environmentConfig :: (Core.Maybe EnvironmentConfig),
    -- | Optional. Jupyter session config.
    jupyterSession :: (Core.Maybe JupyterConfig),
    -- | Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a session.
    labels :: (Core.Maybe SessionTemplate_Labels),
    -- | Required. The resource name of the session template.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Runtime configuration for session execution.
    runtimeConfig :: (Core.Maybe RuntimeConfig),
    -- | Optional. Spark connect session config.
    sparkConnectSession :: (Core.Maybe SparkConnectConfig),
    -- | Output only. The time the template was last updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
    uuid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SessionTemplate' with the minimum fields required to make a request.
newSessionTemplate ::
  SessionTemplate
newSessionTemplate =
  SessionTemplate
    { createTime = Core.Nothing,
      creator = Core.Nothing,
      description = Core.Nothing,
      environmentConfig = Core.Nothing,
      jupyterSession = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      runtimeConfig = Core.Nothing,
      sparkConnectSession = Core.Nothing,
      updateTime = Core.Nothing,
      uuid = Core.Nothing
    }

instance Core.FromJSON SessionTemplate where
  parseJSON =
    Core.withObject
      "SessionTemplate"
      ( \o ->
          SessionTemplate
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "creator")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "environmentConfig")
            Core.<*> (o Core..:? "jupyterSession")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "runtimeConfig")
            Core.<*> (o Core..:? "sparkConnectSession")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "uuid")
      )

instance Core.ToJSON SessionTemplate where
  toJSON SessionTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("creator" Core..=) Core.<$> creator,
            ("description" Core..=) Core.<$> description,
            ("environmentConfig" Core..=) Core.<$> environmentConfig,
            ("jupyterSession" Core..=) Core.<$> jupyterSession,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("runtimeConfig" Core..=) Core.<$> runtimeConfig,
            ("sparkConnectSession" Core..=) Core.<$> sparkConnectSession,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("uuid" Core..=) Core.<$> uuid
          ]
      )

-- | Optional. Labels to associate with sessions created using this template. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters and conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a session.
--
-- /See:/ 'newSessionTemplate_Labels' smart constructor.
newtype SessionTemplate_Labels = SessionTemplate_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SessionTemplate_Labels' with the minimum fields required to make a request.
newSessionTemplate_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SessionTemplate_Labels
newSessionTemplate_Labels additional =
  SessionTemplate_Labels {additional = additional}

instance Core.FromJSON SessionTemplate_Labels where
  parseJSON =
    Core.withObject
      "SessionTemplate_Labels"
      (\o -> SessionTemplate_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SessionTemplate_Labels where
  toJSON SessionTemplate_Labels {..} = Core.toJSON additional

-- | Request message for SetIamPolicy method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      (\o -> SetIamPolicyRequest Core.<$> (o Core..:? "policy"))

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object (Core.catMaybes [("policy" Core..=) Core.<$> policy])

-- | Shielded Instance Config for clusters using Compute Engine Shielded VMs (https:\/\/cloud.google.com\/security\/shielded-cloud\/shielded-vm).
--
-- /See:/ 'newShieldedInstanceConfig' smart constructor.
data ShieldedInstanceConfig = ShieldedInstanceConfig
  { -- | Optional. Defines whether instances have integrity monitoring enabled.
    enableIntegrityMonitoring :: (Core.Maybe Core.Bool),
    -- | Optional. Defines whether instances have Secure Boot enabled.
    enableSecureBoot :: (Core.Maybe Core.Bool),
    -- | Optional. Defines whether instances have the vTPM enabled.
    enableVtpm :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShieldedInstanceConfig' with the minimum fields required to make a request.
newShieldedInstanceConfig ::
  ShieldedInstanceConfig
newShieldedInstanceConfig =
  ShieldedInstanceConfig
    { enableIntegrityMonitoring = Core.Nothing,
      enableSecureBoot = Core.Nothing,
      enableVtpm = Core.Nothing
    }

instance Core.FromJSON ShieldedInstanceConfig where
  parseJSON =
    Core.withObject
      "ShieldedInstanceConfig"
      ( \o ->
          ShieldedInstanceConfig
            Core.<$> (o Core..:? "enableIntegrityMonitoring")
            Core.<*> (o Core..:? "enableSecureBoot")
            Core.<*> (o Core..:? "enableVtpm")
      )

instance Core.ToJSON ShieldedInstanceConfig where
  toJSON ShieldedInstanceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableIntegrityMonitoring" Core..=)
              Core.<$> enableIntegrityMonitoring,
            ("enableSecureBoot" Core..=) Core.<$> enableSecureBoot,
            ("enableVtpm" Core..=) Core.<$> enableVtpm
          ]
      )

--
-- /See:/ 'newShufflePushReadMetrics' smart constructor.
data ShufflePushReadMetrics = ShufflePushReadMetrics
  { corruptMergedBlockChunks :: (Core.Maybe Core.Int64),
    localMergedBlocksFetched :: (Core.Maybe Core.Int64),
    localMergedBytesRead :: (Core.Maybe Core.Int64),
    localMergedChunksFetched :: (Core.Maybe Core.Int64),
    mergedFetchFallbackCount :: (Core.Maybe Core.Int64),
    remoteMergedBlocksFetched :: (Core.Maybe Core.Int64),
    remoteMergedBytesRead :: (Core.Maybe Core.Int64),
    remoteMergedChunksFetched :: (Core.Maybe Core.Int64),
    remoteMergedReqsDuration :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShufflePushReadMetrics' with the minimum fields required to make a request.
newShufflePushReadMetrics ::
  ShufflePushReadMetrics
newShufflePushReadMetrics =
  ShufflePushReadMetrics
    { corruptMergedBlockChunks = Core.Nothing,
      localMergedBlocksFetched = Core.Nothing,
      localMergedBytesRead = Core.Nothing,
      localMergedChunksFetched = Core.Nothing,
      mergedFetchFallbackCount = Core.Nothing,
      remoteMergedBlocksFetched = Core.Nothing,
      remoteMergedBytesRead = Core.Nothing,
      remoteMergedChunksFetched = Core.Nothing,
      remoteMergedReqsDuration = Core.Nothing
    }

instance Core.FromJSON ShufflePushReadMetrics where
  parseJSON =
    Core.withObject
      "ShufflePushReadMetrics"
      ( \o ->
          ShufflePushReadMetrics
            Core.<$> ( o
                         Core..:? "corruptMergedBlockChunks"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localMergedBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localMergedBytesRead"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localMergedChunksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "mergedFetchFallbackCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedBytesRead"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedChunksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedReqsDuration"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ShufflePushReadMetrics where
  toJSON ShufflePushReadMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("corruptMergedBlockChunks" Core..=)
              Core.. Core.AsText
              Core.<$> corruptMergedBlockChunks,
            ("localMergedBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> localMergedBlocksFetched,
            ("localMergedBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> localMergedBytesRead,
            ("localMergedChunksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> localMergedChunksFetched,
            ("mergedFetchFallbackCount" Core..=)
              Core.. Core.AsText
              Core.<$> mergedFetchFallbackCount,
            ("remoteMergedBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedBlocksFetched,
            ("remoteMergedBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedBytesRead,
            ("remoteMergedChunksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedChunksFetched,
            ("remoteMergedReqsDuration" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedReqsDuration
          ]
      )

--
-- /See:/ 'newShufflePushReadQuantileMetrics' smart constructor.
data ShufflePushReadQuantileMetrics = ShufflePushReadQuantileMetrics
  { corruptMergedBlockChunks :: (Core.Maybe Quantiles),
    localMergedBlocksFetched :: (Core.Maybe Quantiles),
    localMergedBytesRead :: (Core.Maybe Quantiles),
    localMergedChunksFetched :: (Core.Maybe Quantiles),
    mergedFetchFallbackCount :: (Core.Maybe Quantiles),
    remoteMergedBlocksFetched :: (Core.Maybe Quantiles),
    remoteMergedBytesRead :: (Core.Maybe Quantiles),
    remoteMergedChunksFetched :: (Core.Maybe Quantiles),
    remoteMergedReqsDuration :: (Core.Maybe Quantiles)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShufflePushReadQuantileMetrics' with the minimum fields required to make a request.
newShufflePushReadQuantileMetrics ::
  ShufflePushReadQuantileMetrics
newShufflePushReadQuantileMetrics =
  ShufflePushReadQuantileMetrics
    { corruptMergedBlockChunks =
        Core.Nothing,
      localMergedBlocksFetched = Core.Nothing,
      localMergedBytesRead = Core.Nothing,
      localMergedChunksFetched = Core.Nothing,
      mergedFetchFallbackCount = Core.Nothing,
      remoteMergedBlocksFetched = Core.Nothing,
      remoteMergedBytesRead = Core.Nothing,
      remoteMergedChunksFetched = Core.Nothing,
      remoteMergedReqsDuration = Core.Nothing
    }

instance Core.FromJSON ShufflePushReadQuantileMetrics where
  parseJSON =
    Core.withObject
      "ShufflePushReadQuantileMetrics"
      ( \o ->
          ShufflePushReadQuantileMetrics
            Core.<$> (o Core..:? "corruptMergedBlockChunks")
            Core.<*> (o Core..:? "localMergedBlocksFetched")
            Core.<*> (o Core..:? "localMergedBytesRead")
            Core.<*> (o Core..:? "localMergedChunksFetched")
            Core.<*> (o Core..:? "mergedFetchFallbackCount")
            Core.<*> (o Core..:? "remoteMergedBlocksFetched")
            Core.<*> (o Core..:? "remoteMergedBytesRead")
            Core.<*> (o Core..:? "remoteMergedChunksFetched")
            Core.<*> (o Core..:? "remoteMergedReqsDuration")
      )

instance Core.ToJSON ShufflePushReadQuantileMetrics where
  toJSON ShufflePushReadQuantileMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("corruptMergedBlockChunks" Core..=)
              Core.<$> corruptMergedBlockChunks,
            ("localMergedBlocksFetched" Core..=)
              Core.<$> localMergedBlocksFetched,
            ("localMergedBytesRead" Core..=) Core.<$> localMergedBytesRead,
            ("localMergedChunksFetched" Core..=)
              Core.<$> localMergedChunksFetched,
            ("mergedFetchFallbackCount" Core..=)
              Core.<$> mergedFetchFallbackCount,
            ("remoteMergedBlocksFetched" Core..=)
              Core.<$> remoteMergedBlocksFetched,
            ("remoteMergedBytesRead" Core..=) Core.<$> remoteMergedBytesRead,
            ("remoteMergedChunksFetched" Core..=)
              Core.<$> remoteMergedChunksFetched,
            ("remoteMergedReqsDuration" Core..=)
              Core.<$> remoteMergedReqsDuration
          ]
      )

-- | Shuffle data read by the task.
--
-- /See:/ 'newShuffleReadMetrics' smart constructor.
data ShuffleReadMetrics = ShuffleReadMetrics
  { fetchWaitTimeMillis :: (Core.Maybe Core.Int64),
    localBlocksFetched :: (Core.Maybe Core.Int64),
    localBytesRead :: (Core.Maybe Core.Int64),
    recordsRead :: (Core.Maybe Core.Int64),
    remoteBlocksFetched :: (Core.Maybe Core.Int64),
    remoteBytesRead :: (Core.Maybe Core.Int64),
    remoteBytesReadToDisk :: (Core.Maybe Core.Int64),
    remoteReqsDuration :: (Core.Maybe Core.Int64),
    shufflePushReadMetrics :: (Core.Maybe ShufflePushReadMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShuffleReadMetrics' with the minimum fields required to make a request.
newShuffleReadMetrics ::
  ShuffleReadMetrics
newShuffleReadMetrics =
  ShuffleReadMetrics
    { fetchWaitTimeMillis = Core.Nothing,
      localBlocksFetched = Core.Nothing,
      localBytesRead = Core.Nothing,
      recordsRead = Core.Nothing,
      remoteBlocksFetched = Core.Nothing,
      remoteBytesRead = Core.Nothing,
      remoteBytesReadToDisk = Core.Nothing,
      remoteReqsDuration = Core.Nothing,
      shufflePushReadMetrics = Core.Nothing
    }

instance Core.FromJSON ShuffleReadMetrics where
  parseJSON =
    Core.withObject
      "ShuffleReadMetrics"
      ( \o ->
          ShuffleReadMetrics
            Core.<$> ( o
                         Core..:? "fetchWaitTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "localBytesRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "remoteBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "remoteBytesRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "remoteBytesReadToDisk"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteReqsDuration"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "shufflePushReadMetrics")
      )

instance Core.ToJSON ShuffleReadMetrics where
  toJSON ShuffleReadMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("fetchWaitTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> fetchWaitTimeMillis,
            ("localBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> localBlocksFetched,
            ("localBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> localBytesRead,
            ("recordsRead" Core..=) Core.. Core.AsText Core.<$> recordsRead,
            ("remoteBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> remoteBlocksFetched,
            ("remoteBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> remoteBytesRead,
            ("remoteBytesReadToDisk" Core..=)
              Core.. Core.AsText
              Core.<$> remoteBytesReadToDisk,
            ("remoteReqsDuration" Core..=)
              Core.. Core.AsText
              Core.<$> remoteReqsDuration,
            ("shufflePushReadMetrics" Core..=)
              Core.<$> shufflePushReadMetrics
          ]
      )

--
-- /See:/ 'newShuffleReadQuantileMetrics' smart constructor.
data ShuffleReadQuantileMetrics = ShuffleReadQuantileMetrics
  { fetchWaitTimeMillis :: (Core.Maybe Quantiles),
    localBlocksFetched :: (Core.Maybe Quantiles),
    readBytes :: (Core.Maybe Quantiles),
    readRecords :: (Core.Maybe Quantiles),
    remoteBlocksFetched :: (Core.Maybe Quantiles),
    remoteBytesRead :: (Core.Maybe Quantiles),
    remoteBytesReadToDisk :: (Core.Maybe Quantiles),
    remoteReqsDuration :: (Core.Maybe Quantiles),
    shufflePushReadMetrics :: (Core.Maybe ShufflePushReadQuantileMetrics),
    totalBlocksFetched :: (Core.Maybe Quantiles)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShuffleReadQuantileMetrics' with the minimum fields required to make a request.
newShuffleReadQuantileMetrics ::
  ShuffleReadQuantileMetrics
newShuffleReadQuantileMetrics =
  ShuffleReadQuantileMetrics
    { fetchWaitTimeMillis = Core.Nothing,
      localBlocksFetched = Core.Nothing,
      readBytes = Core.Nothing,
      readRecords = Core.Nothing,
      remoteBlocksFetched = Core.Nothing,
      remoteBytesRead = Core.Nothing,
      remoteBytesReadToDisk = Core.Nothing,
      remoteReqsDuration = Core.Nothing,
      shufflePushReadMetrics = Core.Nothing,
      totalBlocksFetched = Core.Nothing
    }

instance Core.FromJSON ShuffleReadQuantileMetrics where
  parseJSON =
    Core.withObject
      "ShuffleReadQuantileMetrics"
      ( \o ->
          ShuffleReadQuantileMetrics
            Core.<$> (o Core..:? "fetchWaitTimeMillis")
            Core.<*> (o Core..:? "localBlocksFetched")
            Core.<*> (o Core..:? "readBytes")
            Core.<*> (o Core..:? "readRecords")
            Core.<*> (o Core..:? "remoteBlocksFetched")
            Core.<*> (o Core..:? "remoteBytesRead")
            Core.<*> (o Core..:? "remoteBytesReadToDisk")
            Core.<*> (o Core..:? "remoteReqsDuration")
            Core.<*> (o Core..:? "shufflePushReadMetrics")
            Core.<*> (o Core..:? "totalBlocksFetched")
      )

instance Core.ToJSON ShuffleReadQuantileMetrics where
  toJSON ShuffleReadQuantileMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("fetchWaitTimeMillis" Core..=) Core.<$> fetchWaitTimeMillis,
            ("localBlocksFetched" Core..=) Core.<$> localBlocksFetched,
            ("readBytes" Core..=) Core.<$> readBytes,
            ("readRecords" Core..=) Core.<$> readRecords,
            ("remoteBlocksFetched" Core..=) Core.<$> remoteBlocksFetched,
            ("remoteBytesRead" Core..=) Core.<$> remoteBytesRead,
            ("remoteBytesReadToDisk" Core..=) Core.<$> remoteBytesReadToDisk,
            ("remoteReqsDuration" Core..=) Core.<$> remoteReqsDuration,
            ("shufflePushReadMetrics" Core..=) Core.<$> shufflePushReadMetrics,
            ("totalBlocksFetched" Core..=) Core.<$> totalBlocksFetched
          ]
      )

-- | Shuffle data written by task.
--
-- /See:/ 'newShuffleWriteMetrics' smart constructor.
data ShuffleWriteMetrics = ShuffleWriteMetrics
  { bytesWritten :: (Core.Maybe Core.Int64),
    recordsWritten :: (Core.Maybe Core.Int64),
    writeTimeNanos :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShuffleWriteMetrics' with the minimum fields required to make a request.
newShuffleWriteMetrics ::
  ShuffleWriteMetrics
newShuffleWriteMetrics =
  ShuffleWriteMetrics
    { bytesWritten = Core.Nothing,
      recordsWritten = Core.Nothing,
      writeTimeNanos = Core.Nothing
    }

instance Core.FromJSON ShuffleWriteMetrics where
  parseJSON =
    Core.withObject
      "ShuffleWriteMetrics"
      ( \o ->
          ShuffleWriteMetrics
            Core.<$> (o Core..:? "bytesWritten" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsWritten" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "writeTimeNanos" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON ShuffleWriteMetrics where
  toJSON ShuffleWriteMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesWritten" Core..=) Core.. Core.AsText Core.<$> bytesWritten,
            ("recordsWritten" Core..=)
              Core.. Core.AsText
              Core.<$> recordsWritten,
            ("writeTimeNanos" Core..=)
              Core.. Core.AsText
              Core.<$> writeTimeNanos
          ]
      )

--
-- /See:/ 'newShuffleWriteQuantileMetrics' smart constructor.
data ShuffleWriteQuantileMetrics = ShuffleWriteQuantileMetrics
  { writeBytes :: (Core.Maybe Quantiles),
    writeRecords :: (Core.Maybe Quantiles),
    writeTimeNanos :: (Core.Maybe Quantiles)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShuffleWriteQuantileMetrics' with the minimum fields required to make a request.
newShuffleWriteQuantileMetrics ::
  ShuffleWriteQuantileMetrics
newShuffleWriteQuantileMetrics =
  ShuffleWriteQuantileMetrics
    { writeBytes = Core.Nothing,
      writeRecords = Core.Nothing,
      writeTimeNanos = Core.Nothing
    }

instance Core.FromJSON ShuffleWriteQuantileMetrics where
  parseJSON =
    Core.withObject
      "ShuffleWriteQuantileMetrics"
      ( \o ->
          ShuffleWriteQuantileMetrics
            Core.<$> (o Core..:? "writeBytes")
            Core.<*> (o Core..:? "writeRecords")
            Core.<*> (o Core..:? "writeTimeNanos")
      )

instance Core.ToJSON ShuffleWriteQuantileMetrics where
  toJSON ShuffleWriteQuantileMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("writeBytes" Core..=) Core.<$> writeBytes,
            ("writeRecords" Core..=) Core.<$> writeRecords,
            ("writeTimeNanos" Core..=) Core.<$> writeTimeNanos
          ]
      )

--
-- /See:/ 'newSinkProgress' smart constructor.
data SinkProgress = SinkProgress
  { description :: (Core.Maybe Core.Text),
    metrics :: (Core.Maybe SinkProgress_Metrics),
    numOutputRows :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SinkProgress' with the minimum fields required to make a request.
newSinkProgress ::
  SinkProgress
newSinkProgress =
  SinkProgress
    { description = Core.Nothing,
      metrics = Core.Nothing,
      numOutputRows = Core.Nothing
    }

instance Core.FromJSON SinkProgress where
  parseJSON =
    Core.withObject
      "SinkProgress"
      ( \o ->
          SinkProgress
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "numOutputRows" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON SinkProgress where
  toJSON SinkProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("metrics" Core..=) Core.<$> metrics,
            ("numOutputRows" Core..=)
              Core.. Core.AsText
              Core.<$> numOutputRows
          ]
      )

--
-- /See:/ 'newSinkProgress_Metrics' smart constructor.
newtype SinkProgress_Metrics = SinkProgress_Metrics
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SinkProgress_Metrics' with the minimum fields required to make a request.
newSinkProgress_Metrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SinkProgress_Metrics
newSinkProgress_Metrics additional =
  SinkProgress_Metrics {additional = additional}

instance Core.FromJSON SinkProgress_Metrics where
  parseJSON =
    Core.withObject
      "SinkProgress_Metrics"
      (\o -> SinkProgress_Metrics Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SinkProgress_Metrics where
  toJSON SinkProgress_Metrics {..} = Core.toJSON additional

-- | Specifies the selection and config of software inside the cluster.
--
-- /See:/ 'newSoftwareConfig' smart constructor.
data SoftwareConfig = SoftwareConfig
  { -- | Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/versioning\/dataproc-versions#supported-dataproc-image-versions), such as \"1.2\" (including a subminor version, such as \"1.2.29\"), or the \"preview\" version (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/versioning\/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
    imageVersion :: (Core.Maybe Core.Text),
    -- | Optional. The set of components to activate on the cluster.
    optionalComponents :: (Core.Maybe [SoftwareConfig_OptionalComponentsItem]),
    -- | Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/cluster-properties).
    properties :: (Core.Maybe SoftwareConfig_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareConfig' with the minimum fields required to make a request.
newSoftwareConfig ::
  SoftwareConfig
newSoftwareConfig =
  SoftwareConfig
    { imageVersion = Core.Nothing,
      optionalComponents = Core.Nothing,
      properties = Core.Nothing
    }

instance Core.FromJSON SoftwareConfig where
  parseJSON =
    Core.withObject
      "SoftwareConfig"
      ( \o ->
          SoftwareConfig
            Core.<$> (o Core..:? "imageVersion")
            Core.<*> (o Core..:? "optionalComponents")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON SoftwareConfig where
  toJSON SoftwareConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageVersion" Core..=) Core.<$> imageVersion,
            ("optionalComponents" Core..=) Core.<$> optionalComponents,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/cluster-properties).
--
-- /See:/ 'newSoftwareConfig_Properties' smart constructor.
newtype SoftwareConfig_Properties = SoftwareConfig_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareConfig_Properties' with the minimum fields required to make a request.
newSoftwareConfig_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SoftwareConfig_Properties
newSoftwareConfig_Properties additional =
  SoftwareConfig_Properties {additional = additional}

instance Core.FromJSON SoftwareConfig_Properties where
  parseJSON =
    Core.withObject
      "SoftwareConfig_Properties"
      ( \o ->
          SoftwareConfig_Properties Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SoftwareConfig_Properties where
  toJSON SoftwareConfig_Properties {..} = Core.toJSON additional

--
-- /See:/ 'newSourceProgress' smart constructor.
data SourceProgress = SourceProgress
  { description :: (Core.Maybe Core.Text),
    endOffset :: (Core.Maybe Core.Text),
    inputRowsPerSecond :: (Core.Maybe Core.Double),
    latestOffset :: (Core.Maybe Core.Text),
    metrics :: (Core.Maybe SourceProgress_Metrics),
    numInputRows :: (Core.Maybe Core.Int64),
    processedRowsPerSecond :: (Core.Maybe Core.Double),
    startOffset :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceProgress' with the minimum fields required to make a request.
newSourceProgress ::
  SourceProgress
newSourceProgress =
  SourceProgress
    { description = Core.Nothing,
      endOffset = Core.Nothing,
      inputRowsPerSecond = Core.Nothing,
      latestOffset = Core.Nothing,
      metrics = Core.Nothing,
      numInputRows = Core.Nothing,
      processedRowsPerSecond = Core.Nothing,
      startOffset = Core.Nothing
    }

instance Core.FromJSON SourceProgress where
  parseJSON =
    Core.withObject
      "SourceProgress"
      ( \o ->
          SourceProgress
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "endOffset")
            Core.<*> (o Core..:? "inputRowsPerSecond")
            Core.<*> (o Core..:? "latestOffset")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "numInputRows" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "processedRowsPerSecond")
            Core.<*> (o Core..:? "startOffset")
      )

instance Core.ToJSON SourceProgress where
  toJSON SourceProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("endOffset" Core..=) Core.<$> endOffset,
            ("inputRowsPerSecond" Core..=) Core.<$> inputRowsPerSecond,
            ("latestOffset" Core..=) Core.<$> latestOffset,
            ("metrics" Core..=) Core.<$> metrics,
            ("numInputRows" Core..=) Core.. Core.AsText Core.<$> numInputRows,
            ("processedRowsPerSecond" Core..=) Core.<$> processedRowsPerSecond,
            ("startOffset" Core..=) Core.<$> startOffset
          ]
      )

--
-- /See:/ 'newSourceProgress_Metrics' smart constructor.
newtype SourceProgress_Metrics = SourceProgress_Metrics
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceProgress_Metrics' with the minimum fields required to make a request.
newSourceProgress_Metrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SourceProgress_Metrics
newSourceProgress_Metrics additional =
  SourceProgress_Metrics {additional = additional}

instance Core.FromJSON SourceProgress_Metrics where
  parseJSON =
    Core.withObject
      "SourceProgress_Metrics"
      (\o -> SourceProgress_Metrics Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SourceProgress_Metrics where
  toJSON SourceProgress_Metrics {..} = Core.toJSON additional

-- | A summary of Spark Application
--
-- /See:/ 'newSparkApplication' smart constructor.
data SparkApplication = SparkApplication
  { -- | Output only. High level information corresponding to an application.
    application :: (Core.Maybe ApplicationInfo),
    -- | Identifier. Name of the spark application
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkApplication' with the minimum fields required to make a request.
newSparkApplication ::
  SparkApplication
newSparkApplication =
  SparkApplication {application = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON SparkApplication where
  parseJSON =
    Core.withObject
      "SparkApplication"
      ( \o ->
          SparkApplication
            Core.<$> (o Core..:? "application")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON SparkApplication where
  toJSON SparkApplication {..} =
    Core.object
      ( Core.catMaybes
          [ ("application" Core..=) Core.<$> application,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | A configuration for running an Apache Spark (https:\/\/spark.apache.org\/) batch workload.
--
-- /See:/ 'newSparkBatch' smart constructor.
data SparkBatch = SparkBatch
  { -- | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of files to be placed in the working directory of each executor.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The name of the driver main class. The jar file that contains the class must be in the classpath or specified in jar/file/uris.
    mainClass :: (Core.Maybe Core.Text),
    -- | Optional. The HCFS URI of the jar file that contains the main class.
    mainJarFileUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkBatch' with the minimum fields required to make a request.
newSparkBatch ::
  SparkBatch
newSparkBatch =
  SparkBatch
    { archiveUris = Core.Nothing,
      args = Core.Nothing,
      fileUris = Core.Nothing,
      jarFileUris = Core.Nothing,
      mainClass = Core.Nothing,
      mainJarFileUri = Core.Nothing
    }

instance Core.FromJSON SparkBatch where
  parseJSON =
    Core.withObject
      "SparkBatch"
      ( \o ->
          SparkBatch
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "args")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "mainClass")
            Core.<*> (o Core..:? "mainJarFileUri")
      )

instance Core.ToJSON SparkBatch where
  toJSON SparkBatch {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("mainClass" Core..=) Core.<$> mainClass,
            ("mainJarFileUri" Core..=) Core.<$> mainJarFileUri
          ]
      )

-- | Spark connect configuration for an interactive session.
--
-- /See:/ 'newSparkConnectConfig' smart constructor.
data SparkConnectConfig = SparkConnectConfig
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkConnectConfig' with the minimum fields required to make a request.
newSparkConnectConfig ::
  SparkConnectConfig
newSparkConnectConfig = SparkConnectConfig

instance Core.FromJSON SparkConnectConfig where
  parseJSON =
    Core.withObject
      "SparkConnectConfig"
      (\o -> Core.pure SparkConnectConfig)

instance Core.ToJSON SparkConnectConfig where
  toJSON = Core.const Core.emptyObject

-- | Spark History Server configuration for the workload.
--
-- /See:/ 'newSparkHistoryServerConfig' smart constructor.
newtype SparkHistoryServerConfig = SparkHistoryServerConfig
  { -- | Optional. Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload.Example: projects\/[project/id]\/regions\/[region]\/clusters\/[cluster/name]
    dataprocCluster :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkHistoryServerConfig' with the minimum fields required to make a request.
newSparkHistoryServerConfig ::
  SparkHistoryServerConfig
newSparkHistoryServerConfig =
  SparkHistoryServerConfig {dataprocCluster = Core.Nothing}

instance Core.FromJSON SparkHistoryServerConfig where
  parseJSON =
    Core.withObject
      "SparkHistoryServerConfig"
      ( \o ->
          SparkHistoryServerConfig Core.<$> (o Core..:? "dataprocCluster")
      )

instance Core.ToJSON SparkHistoryServerConfig where
  toJSON SparkHistoryServerConfig {..} =
    Core.object
      ( Core.catMaybes
          [("dataprocCluster" Core..=) Core.<$> dataprocCluster]
      )

-- | A Dataproc job for running Apache Spark (https:\/\/spark.apache.org\/) applications on YARN.
--
-- /See:/ 'newSparkJob' smart constructor.
data SparkJob = SparkJob
  { -- | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | The name of the driver\'s main class. The jar file that contains the class must be in the default CLASSPATH or specified in SparkJob.jar/file/uris.
    mainClass :: (Core.Maybe Core.Text),
    -- | The HCFS URI of the jar file that contains the main class.
    mainJarFileUri :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
    properties :: (Core.Maybe SparkJob_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkJob' with the minimum fields required to make a request.
newSparkJob ::
  SparkJob
newSparkJob =
  SparkJob
    { archiveUris = Core.Nothing,
      args = Core.Nothing,
      fileUris = Core.Nothing,
      jarFileUris = Core.Nothing,
      loggingConfig = Core.Nothing,
      mainClass = Core.Nothing,
      mainJarFileUri = Core.Nothing,
      properties = Core.Nothing
    }

instance Core.FromJSON SparkJob where
  parseJSON =
    Core.withObject
      "SparkJob"
      ( \o ->
          SparkJob
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "args")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "mainClass")
            Core.<*> (o Core..:? "mainJarFileUri")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON SparkJob where
  toJSON SparkJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("mainClass" Core..=) Core.<$> mainClass,
            ("mainJarFileUri" Core..=) Core.<$> mainJarFileUri,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'newSparkJob_Properties' smart constructor.
newtype SparkJob_Properties = SparkJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkJob_Properties' with the minimum fields required to make a request.
newSparkJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SparkJob_Properties
newSparkJob_Properties additional =
  SparkJob_Properties {additional = additional}

instance Core.FromJSON SparkJob_Properties where
  parseJSON =
    Core.withObject
      "SparkJob_Properties"
      (\o -> SparkJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SparkJob_Properties where
  toJSON SparkJob_Properties {..} = Core.toJSON additional

-- | A graph used for storing information of an executionPlan of DataFrame.
--
-- /See:/ 'newSparkPlanGraph' smart constructor.
data SparkPlanGraph = SparkPlanGraph
  { edges :: (Core.Maybe [SparkPlanGraphEdge]),
    executionId :: (Core.Maybe Core.Int64),
    nodes :: (Core.Maybe [SparkPlanGraphNodeWrapper])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkPlanGraph' with the minimum fields required to make a request.
newSparkPlanGraph ::
  SparkPlanGraph
newSparkPlanGraph =
  SparkPlanGraph
    { edges = Core.Nothing,
      executionId = Core.Nothing,
      nodes = Core.Nothing
    }

instance Core.FromJSON SparkPlanGraph where
  parseJSON =
    Core.withObject
      "SparkPlanGraph"
      ( \o ->
          SparkPlanGraph
            Core.<$> (o Core..:? "edges")
            Core.<*> (o Core..:? "executionId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "nodes")
      )

instance Core.ToJSON SparkPlanGraph where
  toJSON SparkPlanGraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("edges" Core..=) Core.<$> edges,
            ("executionId" Core..=) Core.. Core.AsText Core.<$> executionId,
            ("nodes" Core..=) Core.<$> nodes
          ]
      )

-- | Represents a tree of spark plan.
--
-- /See:/ 'newSparkPlanGraphCluster' smart constructor.
data SparkPlanGraphCluster = SparkPlanGraphCluster
  { desc :: (Core.Maybe Core.Text),
    metrics :: (Core.Maybe [SqlPlanMetric]),
    name :: (Core.Maybe Core.Text),
    nodes :: (Core.Maybe [SparkPlanGraphNodeWrapper]),
    sparkPlanGraphClusterId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkPlanGraphCluster' with the minimum fields required to make a request.
newSparkPlanGraphCluster ::
  SparkPlanGraphCluster
newSparkPlanGraphCluster =
  SparkPlanGraphCluster
    { desc = Core.Nothing,
      metrics = Core.Nothing,
      name = Core.Nothing,
      nodes = Core.Nothing,
      sparkPlanGraphClusterId = Core.Nothing
    }

instance Core.FromJSON SparkPlanGraphCluster where
  parseJSON =
    Core.withObject
      "SparkPlanGraphCluster"
      ( \o ->
          SparkPlanGraphCluster
            Core.<$> (o Core..:? "desc")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodes")
            Core.<*> ( o
                         Core..:? "sparkPlanGraphClusterId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON SparkPlanGraphCluster where
  toJSON SparkPlanGraphCluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("desc" Core..=) Core.<$> desc,
            ("metrics" Core..=) Core.<$> metrics,
            ("name" Core..=) Core.<$> name,
            ("nodes" Core..=) Core.<$> nodes,
            ("sparkPlanGraphClusterId" Core..=)
              Core.. Core.AsText
              Core.<$> sparkPlanGraphClusterId
          ]
      )

-- | Represents a directed edge in the spark plan tree from child to parent.
--
-- /See:/ 'newSparkPlanGraphEdge' smart constructor.
data SparkPlanGraphEdge = SparkPlanGraphEdge
  { fromId :: (Core.Maybe Core.Int64),
    toId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkPlanGraphEdge' with the minimum fields required to make a request.
newSparkPlanGraphEdge ::
  SparkPlanGraphEdge
newSparkPlanGraphEdge =
  SparkPlanGraphEdge {fromId = Core.Nothing, toId = Core.Nothing}

instance Core.FromJSON SparkPlanGraphEdge where
  parseJSON =
    Core.withObject
      "SparkPlanGraphEdge"
      ( \o ->
          SparkPlanGraphEdge
            Core.<$> (o Core..:? "fromId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "toId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON SparkPlanGraphEdge where
  toJSON SparkPlanGraphEdge {..} =
    Core.object
      ( Core.catMaybes
          [ ("fromId" Core..=) Core.. Core.AsText Core.<$> fromId,
            ("toId" Core..=) Core.. Core.AsText Core.<$> toId
          ]
      )

-- | Represents a node in the spark plan tree.
--
-- /See:/ 'newSparkPlanGraphNode' smart constructor.
data SparkPlanGraphNode = SparkPlanGraphNode
  { desc :: (Core.Maybe Core.Text),
    metrics :: (Core.Maybe [SqlPlanMetric]),
    name :: (Core.Maybe Core.Text),
    sparkPlanGraphNodeId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkPlanGraphNode' with the minimum fields required to make a request.
newSparkPlanGraphNode ::
  SparkPlanGraphNode
newSparkPlanGraphNode =
  SparkPlanGraphNode
    { desc = Core.Nothing,
      metrics = Core.Nothing,
      name = Core.Nothing,
      sparkPlanGraphNodeId = Core.Nothing
    }

instance Core.FromJSON SparkPlanGraphNode where
  parseJSON =
    Core.withObject
      "SparkPlanGraphNode"
      ( \o ->
          SparkPlanGraphNode
            Core.<$> (o Core..:? "desc")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "name")
            Core.<*> ( o
                         Core..:? "sparkPlanGraphNodeId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON SparkPlanGraphNode where
  toJSON SparkPlanGraphNode {..} =
    Core.object
      ( Core.catMaybes
          [ ("desc" Core..=) Core.<$> desc,
            ("metrics" Core..=) Core.<$> metrics,
            ("name" Core..=) Core.<$> name,
            ("sparkPlanGraphNodeId" Core..=)
              Core.. Core.AsText
              Core.<$> sparkPlanGraphNodeId
          ]
      )

-- | Wrapper user to represent either a node or a cluster.
--
-- /See:/ 'newSparkPlanGraphNodeWrapper' smart constructor.
data SparkPlanGraphNodeWrapper = SparkPlanGraphNodeWrapper
  { cluster :: (Core.Maybe SparkPlanGraphCluster),
    node :: (Core.Maybe SparkPlanGraphNode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkPlanGraphNodeWrapper' with the minimum fields required to make a request.
newSparkPlanGraphNodeWrapper ::
  SparkPlanGraphNodeWrapper
newSparkPlanGraphNodeWrapper =
  SparkPlanGraphNodeWrapper
    { cluster = Core.Nothing,
      node = Core.Nothing
    }

instance Core.FromJSON SparkPlanGraphNodeWrapper where
  parseJSON =
    Core.withObject
      "SparkPlanGraphNodeWrapper"
      ( \o ->
          SparkPlanGraphNodeWrapper
            Core.<$> (o Core..:? "cluster")
            Core.<*> (o Core..:? "node")
      )

instance Core.ToJSON SparkPlanGraphNodeWrapper where
  toJSON SparkPlanGraphNodeWrapper {..} =
    Core.object
      ( Core.catMaybes
          [ ("cluster" Core..=) Core.<$> cluster,
            ("node" Core..=) Core.<$> node
          ]
      )

-- | A configuration for running an Apache SparkR (https:\/\/spark.apache.org\/docs\/latest\/sparkr.html) batch workload.
--
-- /See:/ 'newSparkRBatch' smart constructor.
data SparkRBatch = SparkRBatch
  { -- | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the Spark driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of files to be placed in the working directory of each executor.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | Required. The HCFS URI of the main R file to use as the driver. Must be a .R or .r file.
    mainRFileUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkRBatch' with the minimum fields required to make a request.
newSparkRBatch ::
  SparkRBatch
newSparkRBatch =
  SparkRBatch
    { archiveUris = Core.Nothing,
      args = Core.Nothing,
      fileUris = Core.Nothing,
      mainRFileUri = Core.Nothing
    }

instance Core.FromJSON SparkRBatch where
  parseJSON =
    Core.withObject
      "SparkRBatch"
      ( \o ->
          SparkRBatch
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "args")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "mainRFileUri")
      )

instance Core.ToJSON SparkRBatch where
  toJSON SparkRBatch {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("mainRFileUri" Core..=) Core.<$> mainRFileUri
          ]
      )

-- | A Dataproc job for running Apache SparkR (https:\/\/spark.apache.org\/docs\/latest\/sparkr.html) applications on YARN.
--
-- /See:/ 'newSparkRJob' smart constructor.
data SparkRJob = SparkRJob
  { -- | Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | Required. The HCFS URI of the main R file to use as the driver. Must be a .R file.
    mainRFileUri :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
    properties :: (Core.Maybe SparkRJob_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkRJob' with the minimum fields required to make a request.
newSparkRJob ::
  SparkRJob
newSparkRJob =
  SparkRJob
    { archiveUris = Core.Nothing,
      args = Core.Nothing,
      fileUris = Core.Nothing,
      loggingConfig = Core.Nothing,
      mainRFileUri = Core.Nothing,
      properties = Core.Nothing
    }

instance Core.FromJSON SparkRJob where
  parseJSON =
    Core.withObject
      "SparkRJob"
      ( \o ->
          SparkRJob
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "args")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "mainRFileUri")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON SparkRJob where
  toJSON SparkRJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("mainRFileUri" Core..=) Core.<$> mainRFileUri,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'newSparkRJob_Properties' smart constructor.
newtype SparkRJob_Properties = SparkRJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkRJob_Properties' with the minimum fields required to make a request.
newSparkRJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SparkRJob_Properties
newSparkRJob_Properties additional =
  SparkRJob_Properties {additional = additional}

instance Core.FromJSON SparkRJob_Properties where
  parseJSON =
    Core.withObject
      "SparkRJob_Properties"
      (\o -> SparkRJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SparkRJob_Properties where
  toJSON SparkRJob_Properties {..} = Core.toJSON additional

--
-- /See:/ 'newSparkRuntimeInfo' smart constructor.
data SparkRuntimeInfo = SparkRuntimeInfo
  { javaHome :: (Core.Maybe Core.Text),
    javaVersion :: (Core.Maybe Core.Text),
    scalaVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkRuntimeInfo' with the minimum fields required to make a request.
newSparkRuntimeInfo ::
  SparkRuntimeInfo
newSparkRuntimeInfo =
  SparkRuntimeInfo
    { javaHome = Core.Nothing,
      javaVersion = Core.Nothing,
      scalaVersion = Core.Nothing
    }

instance Core.FromJSON SparkRuntimeInfo where
  parseJSON =
    Core.withObject
      "SparkRuntimeInfo"
      ( \o ->
          SparkRuntimeInfo
            Core.<$> (o Core..:? "javaHome")
            Core.<*> (o Core..:? "javaVersion")
            Core.<*> (o Core..:? "scalaVersion")
      )

instance Core.ToJSON SparkRuntimeInfo where
  toJSON SparkRuntimeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("javaHome" Core..=) Core.<$> javaHome,
            ("javaVersion" Core..=) Core.<$> javaVersion,
            ("scalaVersion" Core..=) Core.<$> scalaVersion
          ]
      )

-- | A configuration for running Apache Spark SQL (https:\/\/spark.apache.org\/sql\/) queries as a batch workload.
--
-- /See:/ 'newSparkSqlBatch' smart constructor.
data SparkSqlBatch = SparkSqlBatch
  { -- | Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Required. The HCFS URI of the script that contains Spark SQL queries to execute.
    queryFileUri :: (Core.Maybe Core.Text),
    -- | Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=\"value\";).
    queryVariables :: (Core.Maybe SparkSqlBatch_QueryVariables)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlBatch' with the minimum fields required to make a request.
newSparkSqlBatch ::
  SparkSqlBatch
newSparkSqlBatch =
  SparkSqlBatch
    { jarFileUris = Core.Nothing,
      queryFileUri = Core.Nothing,
      queryVariables = Core.Nothing
    }

instance Core.FromJSON SparkSqlBatch where
  parseJSON =
    Core.withObject
      "SparkSqlBatch"
      ( \o ->
          SparkSqlBatch
            Core.<$> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "queryFileUri")
            Core.<*> (o Core..:? "queryVariables")
      )

instance Core.ToJSON SparkSqlBatch where
  toJSON SparkSqlBatch {..} =
    Core.object
      ( Core.catMaybes
          [ ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryVariables" Core..=) Core.<$> queryVariables
          ]
      )

-- | Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=\"value\";).
--
-- /See:/ 'newSparkSqlBatch_QueryVariables' smart constructor.
newtype SparkSqlBatch_QueryVariables = SparkSqlBatch_QueryVariables
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlBatch_QueryVariables' with the minimum fields required to make a request.
newSparkSqlBatch_QueryVariables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SparkSqlBatch_QueryVariables
newSparkSqlBatch_QueryVariables additional =
  SparkSqlBatch_QueryVariables {additional = additional}

instance Core.FromJSON SparkSqlBatch_QueryVariables where
  parseJSON =
    Core.withObject
      "SparkSqlBatch_QueryVariables"
      ( \o ->
          SparkSqlBatch_QueryVariables Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkSqlBatch_QueryVariables where
  toJSON SparkSqlBatch_QueryVariables {..} = Core.toJSON additional

-- | A Dataproc job for running Apache Spark SQL (https:\/\/spark.apache.org\/sql\/) queries.
--
-- /See:/ 'newSparkSqlJob' smart constructor.
data SparkSqlJob = SparkSqlJob
  { -- | Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | Optional. A mapping of property names to values, used to configure Spark SQL\'s SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
    properties :: (Core.Maybe SparkSqlJob_Properties),
    -- | The HCFS URI of the script that contains SQL queries.
    queryFileUri :: (Core.Maybe Core.Text),
    -- | A list of queries.
    queryList :: (Core.Maybe QueryList),
    -- | Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=\"value\";).
    scriptVariables :: (Core.Maybe SparkSqlJob_ScriptVariables)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlJob' with the minimum fields required to make a request.
newSparkSqlJob ::
  SparkSqlJob
newSparkSqlJob =
  SparkSqlJob
    { jarFileUris = Core.Nothing,
      loggingConfig = Core.Nothing,
      properties = Core.Nothing,
      queryFileUri = Core.Nothing,
      queryList = Core.Nothing,
      scriptVariables = Core.Nothing
    }

instance Core.FromJSON SparkSqlJob where
  parseJSON =
    Core.withObject
      "SparkSqlJob"
      ( \o ->
          SparkSqlJob
            Core.<$> (o Core..:? "jarFileUris")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "queryFileUri")
            Core.<*> (o Core..:? "queryList")
            Core.<*> (o Core..:? "scriptVariables")
      )

instance Core.ToJSON SparkSqlJob where
  toJSON SparkSqlJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("properties" Core..=) Core.<$> properties,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryList" Core..=) Core.<$> queryList,
            ("scriptVariables" Core..=) Core.<$> scriptVariables
          ]
      )

-- | Optional. A mapping of property names to values, used to configure Spark SQL\'s SparkConf. Properties that conflict with values set by the Dataproc API might be overwritten.
--
-- /See:/ 'newSparkSqlJob_Properties' smart constructor.
newtype SparkSqlJob_Properties = SparkSqlJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlJob_Properties' with the minimum fields required to make a request.
newSparkSqlJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SparkSqlJob_Properties
newSparkSqlJob_Properties additional =
  SparkSqlJob_Properties {additional = additional}

instance Core.FromJSON SparkSqlJob_Properties where
  parseJSON =
    Core.withObject
      "SparkSqlJob_Properties"
      (\o -> SparkSqlJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SparkSqlJob_Properties where
  toJSON SparkSqlJob_Properties {..} = Core.toJSON additional

-- | Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=\"value\";).
--
-- /See:/ 'newSparkSqlJob_ScriptVariables' smart constructor.
newtype SparkSqlJob_ScriptVariables = SparkSqlJob_ScriptVariables
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlJob_ScriptVariables' with the minimum fields required to make a request.
newSparkSqlJob_ScriptVariables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SparkSqlJob_ScriptVariables
newSparkSqlJob_ScriptVariables additional =
  SparkSqlJob_ScriptVariables {additional = additional}

instance Core.FromJSON SparkSqlJob_ScriptVariables where
  parseJSON =
    Core.withObject
      "SparkSqlJob_ScriptVariables"
      ( \o ->
          SparkSqlJob_ScriptVariables Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkSqlJob_ScriptVariables where
  toJSON SparkSqlJob_ScriptVariables {..} = Core.toJSON additional

-- | Basic autoscaling configurations for Spark Standalone.
--
-- /See:/ 'newSparkStandaloneAutoscalingConfig' smart constructor.
data SparkStandaloneAutoscalingConfig = SparkStandaloneAutoscalingConfig
  { -- | Required. Timeout for Spark graceful decommissioning of spark workers. Specifies the duration to wait for spark worker to complete spark decommissioning tasks before forcefully removing workers. Only applicable to downscaling operations.Bounds: 0s, 1d.
    gracefulDecommissionTimeout :: (Core.Maybe Core.Duration),
    -- | Optional. Remove only idle workers when scaling down cluster
    removeOnlyIdleWorkers :: (Core.Maybe Core.Bool),
    -- | Required. Fraction of required executors to remove from Spark Serverless clusters. A scale-down factor of 1.0 will result in scaling down so that there are no more executors for the Spark Job.(more aggressive scaling). A scale-down factor closer to 0 will result in a smaller magnitude of scaling donw (less aggressive scaling).Bounds: 0.0, 1.0.
    scaleDownFactor :: (Core.Maybe Core.Double),
    -- | Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0 means the autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
    scaleDownMinWorkerFraction :: (Core.Maybe Core.Double),
    -- | Required. Fraction of required workers to add to Spark Standalone clusters. A scale-up factor of 1.0 will result in scaling up so that there are no more required workers for the Spark Job (more aggressive scaling). A scale-up factor closer to 0 will result in a smaller magnitude of scaling up (less aggressive scaling).Bounds: 0.0, 1.0.
    scaleUpFactor :: (Core.Maybe Core.Double),
    -- | Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of 0 means the autoscaler will scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
    scaleUpMinWorkerFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkStandaloneAutoscalingConfig' with the minimum fields required to make a request.
newSparkStandaloneAutoscalingConfig ::
  SparkStandaloneAutoscalingConfig
newSparkStandaloneAutoscalingConfig =
  SparkStandaloneAutoscalingConfig
    { gracefulDecommissionTimeout =
        Core.Nothing,
      removeOnlyIdleWorkers = Core.Nothing,
      scaleDownFactor = Core.Nothing,
      scaleDownMinWorkerFraction = Core.Nothing,
      scaleUpFactor = Core.Nothing,
      scaleUpMinWorkerFraction = Core.Nothing
    }

instance Core.FromJSON SparkStandaloneAutoscalingConfig where
  parseJSON =
    Core.withObject
      "SparkStandaloneAutoscalingConfig"
      ( \o ->
          SparkStandaloneAutoscalingConfig
            Core.<$> (o Core..:? "gracefulDecommissionTimeout")
            Core.<*> (o Core..:? "removeOnlyIdleWorkers")
            Core.<*> (o Core..:? "scaleDownFactor")
            Core.<*> (o Core..:? "scaleDownMinWorkerFraction")
            Core.<*> (o Core..:? "scaleUpFactor")
            Core.<*> (o Core..:? "scaleUpMinWorkerFraction")
      )

instance Core.ToJSON SparkStandaloneAutoscalingConfig where
  toJSON SparkStandaloneAutoscalingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gracefulDecommissionTimeout" Core..=)
              Core.<$> gracefulDecommissionTimeout,
            ("removeOnlyIdleWorkers" Core..=) Core.<$> removeOnlyIdleWorkers,
            ("scaleDownFactor" Core..=) Core.<$> scaleDownFactor,
            ("scaleDownMinWorkerFraction" Core..=)
              Core.<$> scaleDownMinWorkerFraction,
            ("scaleUpFactor" Core..=) Core.<$> scaleUpFactor,
            ("scaleUpMinWorkerFraction" Core..=)
              Core.<$> scaleUpMinWorkerFraction
          ]
      )

-- | Outer message that contains the data obtained from spark listener, packaged with information that is required to process it.
--
-- /See:/ 'newSparkWrapperObject' smart constructor.
data SparkWrapperObject = SparkWrapperObject
  { appSummary :: (Core.Maybe AppSummary),
    applicationEnvironmentInfo :: (Core.Maybe ApplicationEnvironmentInfo),
    -- | Application Id created by Spark.
    applicationId :: (Core.Maybe Core.Text),
    applicationInfo :: (Core.Maybe ApplicationInfo),
    -- | VM Timestamp associated with the data object.
    eventTimestamp :: (Core.Maybe Core.DateTime),
    executorStageSummary :: (Core.Maybe ExecutorStageSummary),
    executorSummary :: (Core.Maybe ExecutorSummary),
    jobData :: (Core.Maybe JobData),
    poolData :: (Core.Maybe PoolData),
    processSummary :: (Core.Maybe ProcessSummary),
    rddOperationGraph :: (Core.Maybe RddOperationGraph),
    rddStorageInfo :: (Core.Maybe RddStorageInfo),
    resourceProfileInfo :: (Core.Maybe ResourceProfileInfo),
    sparkPlanGraph :: (Core.Maybe SparkPlanGraph),
    speculationStageSummary :: (Core.Maybe SpeculationStageSummary),
    sqlExecutionUiData :: (Core.Maybe SqlExecutionUiData),
    stageData :: (Core.Maybe StageData),
    streamBlockData :: (Core.Maybe StreamBlockData),
    streamingQueryData :: (Core.Maybe StreamingQueryData),
    streamingQueryProgress :: (Core.Maybe StreamingQueryProgress),
    taskData :: (Core.Maybe TaskData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkWrapperObject' with the minimum fields required to make a request.
newSparkWrapperObject ::
  SparkWrapperObject
newSparkWrapperObject =
  SparkWrapperObject
    { appSummary = Core.Nothing,
      applicationEnvironmentInfo = Core.Nothing,
      applicationId = Core.Nothing,
      applicationInfo = Core.Nothing,
      eventTimestamp = Core.Nothing,
      executorStageSummary = Core.Nothing,
      executorSummary = Core.Nothing,
      jobData = Core.Nothing,
      poolData = Core.Nothing,
      processSummary = Core.Nothing,
      rddOperationGraph = Core.Nothing,
      rddStorageInfo = Core.Nothing,
      resourceProfileInfo = Core.Nothing,
      sparkPlanGraph = Core.Nothing,
      speculationStageSummary = Core.Nothing,
      sqlExecutionUiData = Core.Nothing,
      stageData = Core.Nothing,
      streamBlockData = Core.Nothing,
      streamingQueryData = Core.Nothing,
      streamingQueryProgress = Core.Nothing,
      taskData = Core.Nothing
    }

instance Core.FromJSON SparkWrapperObject where
  parseJSON =
    Core.withObject
      "SparkWrapperObject"
      ( \o ->
          SparkWrapperObject
            Core.<$> (o Core..:? "appSummary")
            Core.<*> (o Core..:? "applicationEnvironmentInfo")
            Core.<*> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "applicationInfo")
            Core.<*> (o Core..:? "eventTimestamp")
            Core.<*> (o Core..:? "executorStageSummary")
            Core.<*> (o Core..:? "executorSummary")
            Core.<*> (o Core..:? "jobData")
            Core.<*> (o Core..:? "poolData")
            Core.<*> (o Core..:? "processSummary")
            Core.<*> (o Core..:? "rddOperationGraph")
            Core.<*> (o Core..:? "rddStorageInfo")
            Core.<*> (o Core..:? "resourceProfileInfo")
            Core.<*> (o Core..:? "sparkPlanGraph")
            Core.<*> (o Core..:? "speculationStageSummary")
            Core.<*> (o Core..:? "sqlExecutionUiData")
            Core.<*> (o Core..:? "stageData")
            Core.<*> (o Core..:? "streamBlockData")
            Core.<*> (o Core..:? "streamingQueryData")
            Core.<*> (o Core..:? "streamingQueryProgress")
            Core.<*> (o Core..:? "taskData")
      )

instance Core.ToJSON SparkWrapperObject where
  toJSON SparkWrapperObject {..} =
    Core.object
      ( Core.catMaybes
          [ ("appSummary" Core..=) Core.<$> appSummary,
            ("applicationEnvironmentInfo" Core..=)
              Core.<$> applicationEnvironmentInfo,
            ("applicationId" Core..=) Core.<$> applicationId,
            ("applicationInfo" Core..=) Core.<$> applicationInfo,
            ("eventTimestamp" Core..=) Core.<$> eventTimestamp,
            ("executorStageSummary" Core..=) Core.<$> executorStageSummary,
            ("executorSummary" Core..=) Core.<$> executorSummary,
            ("jobData" Core..=) Core.<$> jobData,
            ("poolData" Core..=) Core.<$> poolData,
            ("processSummary" Core..=) Core.<$> processSummary,
            ("rddOperationGraph" Core..=) Core.<$> rddOperationGraph,
            ("rddStorageInfo" Core..=) Core.<$> rddStorageInfo,
            ("resourceProfileInfo" Core..=) Core.<$> resourceProfileInfo,
            ("sparkPlanGraph" Core..=) Core.<$> sparkPlanGraph,
            ("speculationStageSummary" Core..=)
              Core.<$> speculationStageSummary,
            ("sqlExecutionUiData" Core..=) Core.<$> sqlExecutionUiData,
            ("stageData" Core..=) Core.<$> stageData,
            ("streamBlockData" Core..=) Core.<$> streamBlockData,
            ("streamingQueryData" Core..=) Core.<$> streamingQueryData,
            ("streamingQueryProgress" Core..=) Core.<$> streamingQueryProgress,
            ("taskData" Core..=) Core.<$> taskData
          ]
      )

-- | Details of the speculation task when speculative execution is enabled.
--
-- /See:/ 'newSpeculationStageSummary' smart constructor.
data SpeculationStageSummary = SpeculationStageSummary
  { numActiveTasks :: (Core.Maybe Core.Int32),
    numCompletedTasks :: (Core.Maybe Core.Int32),
    numFailedTasks :: (Core.Maybe Core.Int32),
    numKilledTasks :: (Core.Maybe Core.Int32),
    numTasks :: (Core.Maybe Core.Int32),
    stageAttemptId :: (Core.Maybe Core.Int32),
    stageId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpeculationStageSummary' with the minimum fields required to make a request.
newSpeculationStageSummary ::
  SpeculationStageSummary
newSpeculationStageSummary =
  SpeculationStageSummary
    { numActiveTasks = Core.Nothing,
      numCompletedTasks = Core.Nothing,
      numFailedTasks = Core.Nothing,
      numKilledTasks = Core.Nothing,
      numTasks = Core.Nothing,
      stageAttemptId = Core.Nothing,
      stageId = Core.Nothing
    }

instance Core.FromJSON SpeculationStageSummary where
  parseJSON =
    Core.withObject
      "SpeculationStageSummary"
      ( \o ->
          SpeculationStageSummary
            Core.<$> (o Core..:? "numActiveTasks")
            Core.<*> (o Core..:? "numCompletedTasks")
            Core.<*> (o Core..:? "numFailedTasks")
            Core.<*> (o Core..:? "numKilledTasks")
            Core.<*> (o Core..:? "numTasks")
            Core.<*> (o Core..:? "stageAttemptId")
            Core.<*> (o Core..:? "stageId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON SpeculationStageSummary where
  toJSON SpeculationStageSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("numActiveTasks" Core..=) Core.<$> numActiveTasks,
            ("numCompletedTasks" Core..=) Core.<$> numCompletedTasks,
            ("numFailedTasks" Core..=) Core.<$> numFailedTasks,
            ("numKilledTasks" Core..=) Core.<$> numKilledTasks,
            ("numTasks" Core..=) Core.<$> numTasks,
            ("stageAttemptId" Core..=) Core.<$> stageAttemptId,
            ("stageId" Core..=) Core.. Core.AsText Core.<$> stageId
          ]
      )

-- | SQL Execution Data
--
-- /See:/ 'newSqlExecutionUiData' smart constructor.
data SqlExecutionUiData = SqlExecutionUiData
  { completionTime :: (Core.Maybe Core.DateTime),
    description :: (Core.Maybe Core.Text),
    details :: (Core.Maybe Core.Text),
    errorMessage :: (Core.Maybe Core.Text),
    executionId :: (Core.Maybe Core.Int64),
    jobs :: (Core.Maybe SqlExecutionUiData_Jobs),
    metricValues :: (Core.Maybe SqlExecutionUiData_MetricValues),
    metricValuesIsNull :: (Core.Maybe Core.Bool),
    metrics :: (Core.Maybe [SqlPlanMetric]),
    modifiedConfigs :: (Core.Maybe SqlExecutionUiData_ModifiedConfigs),
    physicalPlanDescription :: (Core.Maybe Core.Text),
    rootExecutionId :: (Core.Maybe Core.Int64),
    stages :: (Core.Maybe [Core.Int64]),
    submissionTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlExecutionUiData' with the minimum fields required to make a request.
newSqlExecutionUiData ::
  SqlExecutionUiData
newSqlExecutionUiData =
  SqlExecutionUiData
    { completionTime = Core.Nothing,
      description = Core.Nothing,
      details = Core.Nothing,
      errorMessage = Core.Nothing,
      executionId = Core.Nothing,
      jobs = Core.Nothing,
      metricValues = Core.Nothing,
      metricValuesIsNull = Core.Nothing,
      metrics = Core.Nothing,
      modifiedConfigs = Core.Nothing,
      physicalPlanDescription = Core.Nothing,
      rootExecutionId = Core.Nothing,
      stages = Core.Nothing,
      submissionTime = Core.Nothing
    }

instance Core.FromJSON SqlExecutionUiData where
  parseJSON =
    Core.withObject
      "SqlExecutionUiData"
      ( \o ->
          SqlExecutionUiData
            Core.<$> (o Core..:? "completionTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "executionId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "jobs")
            Core.<*> (o Core..:? "metricValues")
            Core.<*> (o Core..:? "metricValuesIsNull")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "modifiedConfigs")
            Core.<*> (o Core..:? "physicalPlanDescription")
            Core.<*> (o Core..:? "rootExecutionId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "stages"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "submissionTime")
      )

instance Core.ToJSON SqlExecutionUiData where
  toJSON SqlExecutionUiData {..} =
    Core.object
      ( Core.catMaybes
          [ ("completionTime" Core..=) Core.<$> completionTime,
            ("description" Core..=) Core.<$> description,
            ("details" Core..=) Core.<$> details,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("executionId" Core..=) Core.. Core.AsText Core.<$> executionId,
            ("jobs" Core..=) Core.<$> jobs,
            ("metricValues" Core..=) Core.<$> metricValues,
            ("metricValuesIsNull" Core..=) Core.<$> metricValuesIsNull,
            ("metrics" Core..=) Core.<$> metrics,
            ("modifiedConfigs" Core..=) Core.<$> modifiedConfigs,
            ("physicalPlanDescription" Core..=)
              Core.<$> physicalPlanDescription,
            ("rootExecutionId" Core..=)
              Core.. Core.AsText
              Core.<$> rootExecutionId,
            ("stages" Core..=) Core.. Core.fmap Core.AsText Core.<$> stages,
            ("submissionTime" Core..=) Core.<$> submissionTime
          ]
      )

--
-- /See:/ 'newSqlExecutionUiData_Jobs' smart constructor.
newtype SqlExecutionUiData_Jobs = SqlExecutionUiData_Jobs
  { additional :: (Core.HashMap Core.Text SqlExecutionUiData_JobsAdditional)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlExecutionUiData_Jobs' with the minimum fields required to make a request.
newSqlExecutionUiData_Jobs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SqlExecutionUiData_JobsAdditional ->
  SqlExecutionUiData_Jobs
newSqlExecutionUiData_Jobs additional =
  SqlExecutionUiData_Jobs {additional = additional}

instance Core.FromJSON SqlExecutionUiData_Jobs where
  parseJSON =
    Core.withObject
      "SqlExecutionUiData_Jobs"
      (\o -> SqlExecutionUiData_Jobs Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON SqlExecutionUiData_Jobs where
  toJSON SqlExecutionUiData_Jobs {..} = Core.toJSON additional

--
-- /See:/ 'newSqlExecutionUiData_MetricValues' smart constructor.
newtype SqlExecutionUiData_MetricValues = SqlExecutionUiData_MetricValues
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlExecutionUiData_MetricValues' with the minimum fields required to make a request.
newSqlExecutionUiData_MetricValues ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SqlExecutionUiData_MetricValues
newSqlExecutionUiData_MetricValues additional =
  SqlExecutionUiData_MetricValues {additional = additional}

instance Core.FromJSON SqlExecutionUiData_MetricValues where
  parseJSON =
    Core.withObject
      "SqlExecutionUiData_MetricValues"
      ( \o ->
          SqlExecutionUiData_MetricValues Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SqlExecutionUiData_MetricValues where
  toJSON SqlExecutionUiData_MetricValues {..} = Core.toJSON additional

--
-- /See:/ 'newSqlExecutionUiData_ModifiedConfigs' smart constructor.
newtype SqlExecutionUiData_ModifiedConfigs = SqlExecutionUiData_ModifiedConfigs
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlExecutionUiData_ModifiedConfigs' with the minimum fields required to make a request.
newSqlExecutionUiData_ModifiedConfigs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SqlExecutionUiData_ModifiedConfigs
newSqlExecutionUiData_ModifiedConfigs additional =
  SqlExecutionUiData_ModifiedConfigs {additional = additional}

instance Core.FromJSON SqlExecutionUiData_ModifiedConfigs where
  parseJSON =
    Core.withObject
      "SqlExecutionUiData_ModifiedConfigs"
      ( \o ->
          SqlExecutionUiData_ModifiedConfigs
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SqlExecutionUiData_ModifiedConfigs where
  toJSON SqlExecutionUiData_ModifiedConfigs {..} =
    Core.toJSON additional

-- | Metrics related to SQL execution.
--
-- /See:/ 'newSqlPlanMetric' smart constructor.
data SqlPlanMetric = SqlPlanMetric
  { accumulatorId :: (Core.Maybe Core.Int64),
    metricType :: (Core.Maybe Core.Text),
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlPlanMetric' with the minimum fields required to make a request.
newSqlPlanMetric ::
  SqlPlanMetric
newSqlPlanMetric =
  SqlPlanMetric
    { accumulatorId = Core.Nothing,
      metricType = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON SqlPlanMetric where
  parseJSON =
    Core.withObject
      "SqlPlanMetric"
      ( \o ->
          SqlPlanMetric
            Core.<$> (o Core..:? "accumulatorId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "metricType")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON SqlPlanMetric where
  toJSON SqlPlanMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("accumulatorId" Core..=)
              Core.. Core.AsText
              Core.<$> accumulatorId,
            ("metricType" Core..=) Core.<$> metricType,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Data related to tasks summary for a Spark Stage Attempt
--
-- /See:/ 'newStageAttemptTasksSummary' smart constructor.
data StageAttemptTasksSummary = StageAttemptTasksSummary
  { applicationId :: (Core.Maybe Core.Text),
    numFailedTasks :: (Core.Maybe Core.Int32),
    numKilledTasks :: (Core.Maybe Core.Int32),
    numPendingTasks :: (Core.Maybe Core.Int32),
    numRunningTasks :: (Core.Maybe Core.Int32),
    numSuccessTasks :: (Core.Maybe Core.Int32),
    numTasks :: (Core.Maybe Core.Int32),
    stageAttemptId :: (Core.Maybe Core.Int32),
    stageId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageAttemptTasksSummary' with the minimum fields required to make a request.
newStageAttemptTasksSummary ::
  StageAttemptTasksSummary
newStageAttemptTasksSummary =
  StageAttemptTasksSummary
    { applicationId = Core.Nothing,
      numFailedTasks = Core.Nothing,
      numKilledTasks = Core.Nothing,
      numPendingTasks = Core.Nothing,
      numRunningTasks = Core.Nothing,
      numSuccessTasks = Core.Nothing,
      numTasks = Core.Nothing,
      stageAttemptId = Core.Nothing,
      stageId = Core.Nothing
    }

instance Core.FromJSON StageAttemptTasksSummary where
  parseJSON =
    Core.withObject
      "StageAttemptTasksSummary"
      ( \o ->
          StageAttemptTasksSummary
            Core.<$> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "numFailedTasks")
            Core.<*> (o Core..:? "numKilledTasks")
            Core.<*> (o Core..:? "numPendingTasks")
            Core.<*> (o Core..:? "numRunningTasks")
            Core.<*> (o Core..:? "numSuccessTasks")
            Core.<*> (o Core..:? "numTasks")
            Core.<*> (o Core..:? "stageAttemptId")
            Core.<*> (o Core..:? "stageId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON StageAttemptTasksSummary where
  toJSON StageAttemptTasksSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationId" Core..=) Core.<$> applicationId,
            ("numFailedTasks" Core..=) Core.<$> numFailedTasks,
            ("numKilledTasks" Core..=) Core.<$> numKilledTasks,
            ("numPendingTasks" Core..=) Core.<$> numPendingTasks,
            ("numRunningTasks" Core..=) Core.<$> numRunningTasks,
            ("numSuccessTasks" Core..=) Core.<$> numSuccessTasks,
            ("numTasks" Core..=) Core.<$> numTasks,
            ("stageAttemptId" Core..=) Core.<$> stageAttemptId,
            ("stageId" Core..=) Core.. Core.AsText Core.<$> stageId
          ]
      )

-- | Data corresponding to a stage.
--
-- /See:/ 'newStageData' smart constructor.
data StageData = StageData
  { accumulatorUpdates :: (Core.Maybe [AccumulableInfo]),
    completionTime :: (Core.Maybe Core.DateTime),
    description :: (Core.Maybe Core.Text),
    details :: (Core.Maybe Core.Text),
    executorMetricsDistributions :: (Core.Maybe ExecutorMetricsDistributions),
    executorSummary :: (Core.Maybe StageData_ExecutorSummary),
    failureReason :: (Core.Maybe Core.Text),
    firstTaskLaunchedTime :: (Core.Maybe Core.DateTime),
    isShufflePushEnabled :: (Core.Maybe Core.Bool),
    jobIds :: (Core.Maybe [Core.Int64]),
    killedTasksSummary :: (Core.Maybe StageData_KilledTasksSummary),
    locality :: (Core.Maybe StageData_Locality),
    name :: (Core.Maybe Core.Text),
    numActiveTasks :: (Core.Maybe Core.Int32),
    numCompleteTasks :: (Core.Maybe Core.Int32),
    numCompletedIndices :: (Core.Maybe Core.Int32),
    numFailedTasks :: (Core.Maybe Core.Int32),
    numKilledTasks :: (Core.Maybe Core.Int32),
    numTasks :: (Core.Maybe Core.Int32),
    parentStageIds :: (Core.Maybe [Core.Int64]),
    peakExecutorMetrics :: (Core.Maybe ExecutorMetrics),
    rddIds :: (Core.Maybe [Core.Int64]),
    resourceProfileId :: (Core.Maybe Core.Int32),
    schedulingPool :: (Core.Maybe Core.Text),
    shuffleMergersCount :: (Core.Maybe Core.Int32),
    speculationSummary :: (Core.Maybe SpeculationStageSummary),
    stageAttemptId :: (Core.Maybe Core.Int32),
    stageId :: (Core.Maybe Core.Int64),
    stageMetrics :: (Core.Maybe StageMetrics),
    status :: (Core.Maybe StageData_Status),
    submissionTime :: (Core.Maybe Core.DateTime),
    -- | Summary metrics fields. These are included in response only if present in summary/metrics/mask field in request
    taskQuantileMetrics :: (Core.Maybe TaskQuantileMetrics),
    tasks :: (Core.Maybe StageData_Tasks)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageData' with the minimum fields required to make a request.
newStageData ::
  StageData
newStageData =
  StageData
    { accumulatorUpdates = Core.Nothing,
      completionTime = Core.Nothing,
      description = Core.Nothing,
      details = Core.Nothing,
      executorMetricsDistributions = Core.Nothing,
      executorSummary = Core.Nothing,
      failureReason = Core.Nothing,
      firstTaskLaunchedTime = Core.Nothing,
      isShufflePushEnabled = Core.Nothing,
      jobIds = Core.Nothing,
      killedTasksSummary = Core.Nothing,
      locality = Core.Nothing,
      name = Core.Nothing,
      numActiveTasks = Core.Nothing,
      numCompleteTasks = Core.Nothing,
      numCompletedIndices = Core.Nothing,
      numFailedTasks = Core.Nothing,
      numKilledTasks = Core.Nothing,
      numTasks = Core.Nothing,
      parentStageIds = Core.Nothing,
      peakExecutorMetrics = Core.Nothing,
      rddIds = Core.Nothing,
      resourceProfileId = Core.Nothing,
      schedulingPool = Core.Nothing,
      shuffleMergersCount = Core.Nothing,
      speculationSummary = Core.Nothing,
      stageAttemptId = Core.Nothing,
      stageId = Core.Nothing,
      stageMetrics = Core.Nothing,
      status = Core.Nothing,
      submissionTime = Core.Nothing,
      taskQuantileMetrics = Core.Nothing,
      tasks = Core.Nothing
    }

instance Core.FromJSON StageData where
  parseJSON =
    Core.withObject
      "StageData"
      ( \o ->
          StageData
            Core.<$> (o Core..:? "accumulatorUpdates")
            Core.<*> (o Core..:? "completionTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "executorMetricsDistributions")
            Core.<*> (o Core..:? "executorSummary")
            Core.<*> (o Core..:? "failureReason")
            Core.<*> (o Core..:? "firstTaskLaunchedTime")
            Core.<*> (o Core..:? "isShufflePushEnabled")
            Core.<*> ( o
                         Core..:? "jobIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "killedTasksSummary")
            Core.<*> (o Core..:? "locality")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "numActiveTasks")
            Core.<*> (o Core..:? "numCompleteTasks")
            Core.<*> (o Core..:? "numCompletedIndices")
            Core.<*> (o Core..:? "numFailedTasks")
            Core.<*> (o Core..:? "numKilledTasks")
            Core.<*> (o Core..:? "numTasks")
            Core.<*> ( o
                         Core..:? "parentStageIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "peakExecutorMetrics")
            Core.<*> ( o
                         Core..:? "rddIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "resourceProfileId")
            Core.<*> (o Core..:? "schedulingPool")
            Core.<*> (o Core..:? "shuffleMergersCount")
            Core.<*> (o Core..:? "speculationSummary")
            Core.<*> (o Core..:? "stageAttemptId")
            Core.<*> (o Core..:? "stageId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "stageMetrics")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "submissionTime")
            Core.<*> (o Core..:? "taskQuantileMetrics")
            Core.<*> (o Core..:? "tasks")
      )

instance Core.ToJSON StageData where
  toJSON StageData {..} =
    Core.object
      ( Core.catMaybes
          [ ("accumulatorUpdates" Core..=) Core.<$> accumulatorUpdates,
            ("completionTime" Core..=) Core.<$> completionTime,
            ("description" Core..=) Core.<$> description,
            ("details" Core..=) Core.<$> details,
            ("executorMetricsDistributions" Core..=)
              Core.<$> executorMetricsDistributions,
            ("executorSummary" Core..=) Core.<$> executorSummary,
            ("failureReason" Core..=) Core.<$> failureReason,
            ("firstTaskLaunchedTime" Core..=) Core.<$> firstTaskLaunchedTime,
            ("isShufflePushEnabled" Core..=) Core.<$> isShufflePushEnabled,
            ("jobIds" Core..=) Core.. Core.fmap Core.AsText Core.<$> jobIds,
            ("killedTasksSummary" Core..=) Core.<$> killedTasksSummary,
            ("locality" Core..=) Core.<$> locality,
            ("name" Core..=) Core.<$> name,
            ("numActiveTasks" Core..=) Core.<$> numActiveTasks,
            ("numCompleteTasks" Core..=) Core.<$> numCompleteTasks,
            ("numCompletedIndices" Core..=) Core.<$> numCompletedIndices,
            ("numFailedTasks" Core..=) Core.<$> numFailedTasks,
            ("numKilledTasks" Core..=) Core.<$> numKilledTasks,
            ("numTasks" Core..=) Core.<$> numTasks,
            ("parentStageIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> parentStageIds,
            ("peakExecutorMetrics" Core..=) Core.<$> peakExecutorMetrics,
            ("rddIds" Core..=) Core.. Core.fmap Core.AsText Core.<$> rddIds,
            ("resourceProfileId" Core..=) Core.<$> resourceProfileId,
            ("schedulingPool" Core..=) Core.<$> schedulingPool,
            ("shuffleMergersCount" Core..=) Core.<$> shuffleMergersCount,
            ("speculationSummary" Core..=) Core.<$> speculationSummary,
            ("stageAttemptId" Core..=) Core.<$> stageAttemptId,
            ("stageId" Core..=) Core.. Core.AsText Core.<$> stageId,
            ("stageMetrics" Core..=) Core.<$> stageMetrics,
            ("status" Core..=) Core.<$> status,
            ("submissionTime" Core..=) Core.<$> submissionTime,
            ("taskQuantileMetrics" Core..=) Core.<$> taskQuantileMetrics,
            ("tasks" Core..=) Core.<$> tasks
          ]
      )

--
-- /See:/ 'newStageData_ExecutorSummary' smart constructor.
newtype StageData_ExecutorSummary = StageData_ExecutorSummary
  { additional :: (Core.HashMap Core.Text ExecutorStageSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageData_ExecutorSummary' with the minimum fields required to make a request.
newStageData_ExecutorSummary ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ExecutorStageSummary ->
  StageData_ExecutorSummary
newStageData_ExecutorSummary additional =
  StageData_ExecutorSummary {additional = additional}

instance Core.FromJSON StageData_ExecutorSummary where
  parseJSON =
    Core.withObject
      "StageData_ExecutorSummary"
      ( \o ->
          StageData_ExecutorSummary Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StageData_ExecutorSummary where
  toJSON StageData_ExecutorSummary {..} = Core.toJSON additional

--
-- /See:/ 'newStageData_KilledTasksSummary' smart constructor.
newtype StageData_KilledTasksSummary = StageData_KilledTasksSummary
  { additional :: (Core.HashMap Core.Text Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageData_KilledTasksSummary' with the minimum fields required to make a request.
newStageData_KilledTasksSummary ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int32 ->
  StageData_KilledTasksSummary
newStageData_KilledTasksSummary additional =
  StageData_KilledTasksSummary {additional = additional}

instance Core.FromJSON StageData_KilledTasksSummary where
  parseJSON =
    Core.withObject
      "StageData_KilledTasksSummary"
      ( \o ->
          StageData_KilledTasksSummary Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StageData_KilledTasksSummary where
  toJSON StageData_KilledTasksSummary {..} = Core.toJSON additional

--
-- /See:/ 'newStageData_Locality' smart constructor.
newtype StageData_Locality = StageData_Locality
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageData_Locality' with the minimum fields required to make a request.
newStageData_Locality ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  StageData_Locality
newStageData_Locality additional =
  StageData_Locality {additional = additional}

instance Core.FromJSON StageData_Locality where
  parseJSON =
    Core.withObject
      "StageData_Locality"
      (\o -> StageData_Locality Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON StageData_Locality where
  toJSON StageData_Locality {..} = Core.toJSON additional

--
-- /See:/ 'newStageData_Tasks' smart constructor.
newtype StageData_Tasks = StageData_Tasks
  { additional :: (Core.HashMap Core.Text TaskData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageData_Tasks' with the minimum fields required to make a request.
newStageData_Tasks ::
  -- |  See 'additional'.
  Core.HashMap Core.Text TaskData ->
  StageData_Tasks
newStageData_Tasks additional =
  StageData_Tasks {additional = additional}

instance Core.FromJSON StageData_Tasks where
  parseJSON =
    Core.withObject
      "StageData_Tasks"
      (\o -> StageData_Tasks Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON StageData_Tasks where
  toJSON StageData_Tasks {..} = Core.toJSON additional

-- | Metrics about the input read by the stage.
--
-- /See:/ 'newStageInputMetrics' smart constructor.
data StageInputMetrics = StageInputMetrics
  { bytesRead :: (Core.Maybe Core.Int64),
    recordsRead :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageInputMetrics' with the minimum fields required to make a request.
newStageInputMetrics ::
  StageInputMetrics
newStageInputMetrics =
  StageInputMetrics
    { bytesRead = Core.Nothing,
      recordsRead = Core.Nothing
    }

instance Core.FromJSON StageInputMetrics where
  parseJSON =
    Core.withObject
      "StageInputMetrics"
      ( \o ->
          StageInputMetrics
            Core.<$> (o Core..:? "bytesRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsRead" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON StageInputMetrics where
  toJSON StageInputMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesRead" Core..=) Core.. Core.AsText Core.<$> bytesRead,
            ("recordsRead" Core..=) Core.. Core.AsText Core.<$> recordsRead
          ]
      )

-- | Stage Level Aggregated Metrics
--
-- /See:/ 'newStageMetrics' smart constructor.
data StageMetrics = StageMetrics
  { diskBytesSpilled :: (Core.Maybe Core.Int64),
    executorCpuTimeNanos :: (Core.Maybe Core.Int64),
    executorDeserializeCpuTimeNanos :: (Core.Maybe Core.Int64),
    executorDeserializeTimeMillis :: (Core.Maybe Core.Int64),
    executorRunTimeMillis :: (Core.Maybe Core.Int64),
    jvmGcTimeMillis :: (Core.Maybe Core.Int64),
    memoryBytesSpilled :: (Core.Maybe Core.Int64),
    peakExecutionMemoryBytes :: (Core.Maybe Core.Int64),
    resultSerializationTimeMillis :: (Core.Maybe Core.Int64),
    resultSize :: (Core.Maybe Core.Int64),
    stageInputMetrics :: (Core.Maybe StageInputMetrics),
    stageOutputMetrics :: (Core.Maybe StageOutputMetrics),
    stageShuffleReadMetrics :: (Core.Maybe StageShuffleReadMetrics),
    stageShuffleWriteMetrics :: (Core.Maybe StageShuffleWriteMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageMetrics' with the minimum fields required to make a request.
newStageMetrics ::
  StageMetrics
newStageMetrics =
  StageMetrics
    { diskBytesSpilled = Core.Nothing,
      executorCpuTimeNanos = Core.Nothing,
      executorDeserializeCpuTimeNanos = Core.Nothing,
      executorDeserializeTimeMillis = Core.Nothing,
      executorRunTimeMillis = Core.Nothing,
      jvmGcTimeMillis = Core.Nothing,
      memoryBytesSpilled = Core.Nothing,
      peakExecutionMemoryBytes = Core.Nothing,
      resultSerializationTimeMillis = Core.Nothing,
      resultSize = Core.Nothing,
      stageInputMetrics = Core.Nothing,
      stageOutputMetrics = Core.Nothing,
      stageShuffleReadMetrics = Core.Nothing,
      stageShuffleWriteMetrics = Core.Nothing
    }

instance Core.FromJSON StageMetrics where
  parseJSON =
    Core.withObject
      "StageMetrics"
      ( \o ->
          StageMetrics
            Core.<$> (o Core..:? "diskBytesSpilled" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "executorCpuTimeNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "executorDeserializeCpuTimeNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "executorDeserializeTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "executorRunTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "jvmGcTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "memoryBytesSpilled"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "peakExecutionMemoryBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "resultSerializationTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "resultSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "stageInputMetrics")
            Core.<*> (o Core..:? "stageOutputMetrics")
            Core.<*> (o Core..:? "stageShuffleReadMetrics")
            Core.<*> (o Core..:? "stageShuffleWriteMetrics")
      )

instance Core.ToJSON StageMetrics where
  toJSON StageMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskBytesSpilled" Core..=)
              Core.. Core.AsText
              Core.<$> diskBytesSpilled,
            ("executorCpuTimeNanos" Core..=)
              Core.. Core.AsText
              Core.<$> executorCpuTimeNanos,
            ("executorDeserializeCpuTimeNanos" Core..=)
              Core.. Core.AsText
              Core.<$> executorDeserializeCpuTimeNanos,
            ("executorDeserializeTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> executorDeserializeTimeMillis,
            ("executorRunTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> executorRunTimeMillis,
            ("jvmGcTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> jvmGcTimeMillis,
            ("memoryBytesSpilled" Core..=)
              Core.. Core.AsText
              Core.<$> memoryBytesSpilled,
            ("peakExecutionMemoryBytes" Core..=)
              Core.. Core.AsText
              Core.<$> peakExecutionMemoryBytes,
            ("resultSerializationTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> resultSerializationTimeMillis,
            ("resultSize" Core..=) Core.. Core.AsText Core.<$> resultSize,
            ("stageInputMetrics" Core..=) Core.<$> stageInputMetrics,
            ("stageOutputMetrics" Core..=) Core.<$> stageOutputMetrics,
            ("stageShuffleReadMetrics" Core..=)
              Core.<$> stageShuffleReadMetrics,
            ("stageShuffleWriteMetrics" Core..=)
              Core.<$> stageShuffleWriteMetrics
          ]
      )

-- | Metrics about the output written by the stage.
--
-- /See:/ 'newStageOutputMetrics' smart constructor.
data StageOutputMetrics = StageOutputMetrics
  { bytesWritten :: (Core.Maybe Core.Int64),
    recordsWritten :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageOutputMetrics' with the minimum fields required to make a request.
newStageOutputMetrics ::
  StageOutputMetrics
newStageOutputMetrics =
  StageOutputMetrics
    { bytesWritten = Core.Nothing,
      recordsWritten = Core.Nothing
    }

instance Core.FromJSON StageOutputMetrics where
  parseJSON =
    Core.withObject
      "StageOutputMetrics"
      ( \o ->
          StageOutputMetrics
            Core.<$> (o Core..:? "bytesWritten" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsWritten" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON StageOutputMetrics where
  toJSON StageOutputMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesWritten" Core..=) Core.. Core.AsText Core.<$> bytesWritten,
            ("recordsWritten" Core..=)
              Core.. Core.AsText
              Core.<$> recordsWritten
          ]
      )

--
-- /See:/ 'newStageShufflePushReadMetrics' smart constructor.
data StageShufflePushReadMetrics = StageShufflePushReadMetrics
  { corruptMergedBlockChunks :: (Core.Maybe Core.Int64),
    localMergedBlocksFetched :: (Core.Maybe Core.Int64),
    localMergedBytesRead :: (Core.Maybe Core.Int64),
    localMergedChunksFetched :: (Core.Maybe Core.Int64),
    mergedFetchFallbackCount :: (Core.Maybe Core.Int64),
    remoteMergedBlocksFetched :: (Core.Maybe Core.Int64),
    remoteMergedBytesRead :: (Core.Maybe Core.Int64),
    remoteMergedChunksFetched :: (Core.Maybe Core.Int64),
    remoteMergedReqsDuration :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageShufflePushReadMetrics' with the minimum fields required to make a request.
newStageShufflePushReadMetrics ::
  StageShufflePushReadMetrics
newStageShufflePushReadMetrics =
  StageShufflePushReadMetrics
    { corruptMergedBlockChunks =
        Core.Nothing,
      localMergedBlocksFetched = Core.Nothing,
      localMergedBytesRead = Core.Nothing,
      localMergedChunksFetched = Core.Nothing,
      mergedFetchFallbackCount = Core.Nothing,
      remoteMergedBlocksFetched = Core.Nothing,
      remoteMergedBytesRead = Core.Nothing,
      remoteMergedChunksFetched = Core.Nothing,
      remoteMergedReqsDuration = Core.Nothing
    }

instance Core.FromJSON StageShufflePushReadMetrics where
  parseJSON =
    Core.withObject
      "StageShufflePushReadMetrics"
      ( \o ->
          StageShufflePushReadMetrics
            Core.<$> ( o
                         Core..:? "corruptMergedBlockChunks"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localMergedBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localMergedBytesRead"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localMergedChunksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "mergedFetchFallbackCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedBytesRead"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedChunksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteMergedReqsDuration"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON StageShufflePushReadMetrics where
  toJSON StageShufflePushReadMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("corruptMergedBlockChunks" Core..=)
              Core.. Core.AsText
              Core.<$> corruptMergedBlockChunks,
            ("localMergedBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> localMergedBlocksFetched,
            ("localMergedBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> localMergedBytesRead,
            ("localMergedChunksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> localMergedChunksFetched,
            ("mergedFetchFallbackCount" Core..=)
              Core.. Core.AsText
              Core.<$> mergedFetchFallbackCount,
            ("remoteMergedBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedBlocksFetched,
            ("remoteMergedBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedBytesRead,
            ("remoteMergedChunksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedChunksFetched,
            ("remoteMergedReqsDuration" Core..=)
              Core.. Core.AsText
              Core.<$> remoteMergedReqsDuration
          ]
      )

-- | Shuffle data read for the stage.
--
-- /See:/ 'newStageShuffleReadMetrics' smart constructor.
data StageShuffleReadMetrics = StageShuffleReadMetrics
  { bytesRead :: (Core.Maybe Core.Int64),
    fetchWaitTimeMillis :: (Core.Maybe Core.Int64),
    localBlocksFetched :: (Core.Maybe Core.Int64),
    localBytesRead :: (Core.Maybe Core.Int64),
    recordsRead :: (Core.Maybe Core.Int64),
    remoteBlocksFetched :: (Core.Maybe Core.Int64),
    remoteBytesRead :: (Core.Maybe Core.Int64),
    remoteBytesReadToDisk :: (Core.Maybe Core.Int64),
    remoteReqsDuration :: (Core.Maybe Core.Int64),
    stageShufflePushReadMetrics :: (Core.Maybe StageShufflePushReadMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageShuffleReadMetrics' with the minimum fields required to make a request.
newStageShuffleReadMetrics ::
  StageShuffleReadMetrics
newStageShuffleReadMetrics =
  StageShuffleReadMetrics
    { bytesRead = Core.Nothing,
      fetchWaitTimeMillis = Core.Nothing,
      localBlocksFetched = Core.Nothing,
      localBytesRead = Core.Nothing,
      recordsRead = Core.Nothing,
      remoteBlocksFetched = Core.Nothing,
      remoteBytesRead = Core.Nothing,
      remoteBytesReadToDisk = Core.Nothing,
      remoteReqsDuration = Core.Nothing,
      stageShufflePushReadMetrics = Core.Nothing
    }

instance Core.FromJSON StageShuffleReadMetrics where
  parseJSON =
    Core.withObject
      "StageShuffleReadMetrics"
      ( \o ->
          StageShuffleReadMetrics
            Core.<$> (o Core..:? "bytesRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "fetchWaitTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "localBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "localBytesRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "remoteBlocksFetched"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "remoteBytesRead" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "remoteBytesReadToDisk"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "remoteReqsDuration"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "stageShufflePushReadMetrics")
      )

instance Core.ToJSON StageShuffleReadMetrics where
  toJSON StageShuffleReadMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesRead" Core..=) Core.. Core.AsText Core.<$> bytesRead,
            ("fetchWaitTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> fetchWaitTimeMillis,
            ("localBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> localBlocksFetched,
            ("localBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> localBytesRead,
            ("recordsRead" Core..=) Core.. Core.AsText Core.<$> recordsRead,
            ("remoteBlocksFetched" Core..=)
              Core.. Core.AsText
              Core.<$> remoteBlocksFetched,
            ("remoteBytesRead" Core..=)
              Core.. Core.AsText
              Core.<$> remoteBytesRead,
            ("remoteBytesReadToDisk" Core..=)
              Core.. Core.AsText
              Core.<$> remoteBytesReadToDisk,
            ("remoteReqsDuration" Core..=)
              Core.. Core.AsText
              Core.<$> remoteReqsDuration,
            ("stageShufflePushReadMetrics" Core..=)
              Core.<$> stageShufflePushReadMetrics
          ]
      )

-- | Shuffle data written for the stage.
--
-- /See:/ 'newStageShuffleWriteMetrics' smart constructor.
data StageShuffleWriteMetrics = StageShuffleWriteMetrics
  { bytesWritten :: (Core.Maybe Core.Int64),
    recordsWritten :: (Core.Maybe Core.Int64),
    writeTimeNanos :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StageShuffleWriteMetrics' with the minimum fields required to make a request.
newStageShuffleWriteMetrics ::
  StageShuffleWriteMetrics
newStageShuffleWriteMetrics =
  StageShuffleWriteMetrics
    { bytesWritten = Core.Nothing,
      recordsWritten = Core.Nothing,
      writeTimeNanos = Core.Nothing
    }

instance Core.FromJSON StageShuffleWriteMetrics where
  parseJSON =
    Core.withObject
      "StageShuffleWriteMetrics"
      ( \o ->
          StageShuffleWriteMetrics
            Core.<$> (o Core..:? "bytesWritten" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "recordsWritten" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "writeTimeNanos" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON StageShuffleWriteMetrics where
  toJSON StageShuffleWriteMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bytesWritten" Core..=) Core.. Core.AsText Core.<$> bytesWritten,
            ("recordsWritten" Core..=)
              Core.. Core.AsText
              Core.<$> recordsWritten,
            ("writeTimeNanos" Core..=)
              Core.. Core.AsText
              Core.<$> writeTimeNanos
          ]
      )

-- | Data related to Stages page summary
--
-- /See:/ 'newStagesSummary' smart constructor.
data StagesSummary = StagesSummary
  { applicationId :: (Core.Maybe Core.Text),
    numActiveStages :: (Core.Maybe Core.Int32),
    numCompletedStages :: (Core.Maybe Core.Int32),
    numFailedStages :: (Core.Maybe Core.Int32),
    numPendingStages :: (Core.Maybe Core.Int32),
    numSkippedStages :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StagesSummary' with the minimum fields required to make a request.
newStagesSummary ::
  StagesSummary
newStagesSummary =
  StagesSummary
    { applicationId = Core.Nothing,
      numActiveStages = Core.Nothing,
      numCompletedStages = Core.Nothing,
      numFailedStages = Core.Nothing,
      numPendingStages = Core.Nothing,
      numSkippedStages = Core.Nothing
    }

instance Core.FromJSON StagesSummary where
  parseJSON =
    Core.withObject
      "StagesSummary"
      ( \o ->
          StagesSummary
            Core.<$> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "numActiveStages")
            Core.<*> (o Core..:? "numCompletedStages")
            Core.<*> (o Core..:? "numFailedStages")
            Core.<*> (o Core..:? "numPendingStages")
            Core.<*> (o Core..:? "numSkippedStages")
      )

instance Core.ToJSON StagesSummary where
  toJSON StagesSummary {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationId" Core..=) Core.<$> applicationId,
            ("numActiveStages" Core..=) Core.<$> numActiveStages,
            ("numCompletedStages" Core..=) Core.<$> numCompletedStages,
            ("numFailedStages" Core..=) Core.<$> numFailedStages,
            ("numPendingStages" Core..=) Core.<$> numPendingStages,
            ("numSkippedStages" Core..=) Core.<$> numSkippedStages
          ]
      )

-- | A request to start a cluster.
--
-- /See:/ 'newStartClusterRequest' smart constructor.
data StartClusterRequest = StartClusterRequest
  { -- | Optional. Specifying the cluster/uuid means the RPC will fail (with error NOT/FOUND) if a cluster with the specified UUID does not exist.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Optional. A unique ID used to identify the request. If the server receives two StartClusterRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StartClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartClusterRequest' with the minimum fields required to make a request.
newStartClusterRequest ::
  StartClusterRequest
newStartClusterRequest =
  StartClusterRequest
    { clusterUuid = Core.Nothing,
      requestId = Core.Nothing
    }

instance Core.FromJSON StartClusterRequest where
  parseJSON =
    Core.withObject
      "StartClusterRequest"
      ( \o ->
          StartClusterRequest
            Core.<$> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON StartClusterRequest where
  toJSON StartClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("requestId" Core..=) Core.<$> requestId
          ]
      )

-- | Configuration to handle the startup of instances during cluster create and update process.
--
-- /See:/ 'newStartupConfig' smart constructor.
newtype StartupConfig = StartupConfig
  { -- | Optional. The config setting to enable cluster creation\/ updation to be successful only after required/registration/fraction of instances are up and running. This configuration is applicable to only secondary workers for now. The cluster will fail if required/registration/fraction of instances are not available. This will include instance creation, agent registration, and service registration (if enabled).
    requiredRegistrationFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartupConfig' with the minimum fields required to make a request.
newStartupConfig ::
  StartupConfig
newStartupConfig =
  StartupConfig {requiredRegistrationFraction = Core.Nothing}

instance Core.FromJSON StartupConfig where
  parseJSON =
    Core.withObject
      "StartupConfig"
      ( \o ->
          StartupConfig Core.<$> (o Core..:? "requiredRegistrationFraction")
      )

instance Core.ToJSON StartupConfig where
  toJSON StartupConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("requiredRegistrationFraction" Core..=)
              Core.<$> requiredRegistrationFraction
          ]
      )

-- | Historical state information.
--
-- /See:/ 'newStateHistory' smart constructor.
data StateHistory = StateHistory
  { -- | Output only. The state of the batch at this point in history.
    state :: (Core.Maybe StateHistory_State),
    -- | Output only. Details about the state at this point in history.
    stateMessage :: (Core.Maybe Core.Text),
    -- | Output only. The time when the batch entered the historical state.
    stateStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateHistory' with the minimum fields required to make a request.
newStateHistory ::
  StateHistory
newStateHistory =
  StateHistory
    { state = Core.Nothing,
      stateMessage = Core.Nothing,
      stateStartTime = Core.Nothing
    }

instance Core.FromJSON StateHistory where
  parseJSON =
    Core.withObject
      "StateHistory"
      ( \o ->
          StateHistory
            Core.<$> (o Core..:? "state")
            Core.<*> (o Core..:? "stateMessage")
            Core.<*> (o Core..:? "stateStartTime")
      )

instance Core.ToJSON StateHistory where
  toJSON StateHistory {..} =
    Core.object
      ( Core.catMaybes
          [ ("state" Core..=) Core.<$> state,
            ("stateMessage" Core..=) Core.<$> stateMessage,
            ("stateStartTime" Core..=) Core.<$> stateStartTime
          ]
      )

--
-- /See:/ 'newStateOperatorProgress' smart constructor.
data StateOperatorProgress = StateOperatorProgress
  { allRemovalsTimeMs :: (Core.Maybe Core.Int64),
    allUpdatesTimeMs :: (Core.Maybe Core.Int64),
    commitTimeMs :: (Core.Maybe Core.Int64),
    customMetrics :: (Core.Maybe StateOperatorProgress_CustomMetrics),
    memoryUsedBytes :: (Core.Maybe Core.Int64),
    numRowsDroppedByWatermark :: (Core.Maybe Core.Int64),
    numRowsRemoved :: (Core.Maybe Core.Int64),
    numRowsTotal :: (Core.Maybe Core.Int64),
    numRowsUpdated :: (Core.Maybe Core.Int64),
    numShufflePartitions :: (Core.Maybe Core.Int64),
    numStateStoreInstances :: (Core.Maybe Core.Int64),
    operatorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateOperatorProgress' with the minimum fields required to make a request.
newStateOperatorProgress ::
  StateOperatorProgress
newStateOperatorProgress =
  StateOperatorProgress
    { allRemovalsTimeMs = Core.Nothing,
      allUpdatesTimeMs = Core.Nothing,
      commitTimeMs = Core.Nothing,
      customMetrics = Core.Nothing,
      memoryUsedBytes = Core.Nothing,
      numRowsDroppedByWatermark = Core.Nothing,
      numRowsRemoved = Core.Nothing,
      numRowsTotal = Core.Nothing,
      numRowsUpdated = Core.Nothing,
      numShufflePartitions = Core.Nothing,
      numStateStoreInstances = Core.Nothing,
      operatorName = Core.Nothing
    }

instance Core.FromJSON StateOperatorProgress where
  parseJSON =
    Core.withObject
      "StateOperatorProgress"
      ( \o ->
          StateOperatorProgress
            Core.<$> (o Core..:? "allRemovalsTimeMs" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "allUpdatesTimeMs" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "commitTimeMs" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "customMetrics")
            Core.<*> (o Core..:? "memoryUsedBytes" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "numRowsDroppedByWatermark"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "numRowsRemoved" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "numRowsTotal" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "numRowsUpdated" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "numShufflePartitions"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "numStateStoreInstances"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "operatorName")
      )

instance Core.ToJSON StateOperatorProgress where
  toJSON StateOperatorProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("allRemovalsTimeMs" Core..=)
              Core.. Core.AsText
              Core.<$> allRemovalsTimeMs,
            ("allUpdatesTimeMs" Core..=)
              Core.. Core.AsText
              Core.<$> allUpdatesTimeMs,
            ("commitTimeMs" Core..=) Core.. Core.AsText Core.<$> commitTimeMs,
            ("customMetrics" Core..=) Core.<$> customMetrics,
            ("memoryUsedBytes" Core..=)
              Core.. Core.AsText
              Core.<$> memoryUsedBytes,
            ("numRowsDroppedByWatermark" Core..=)
              Core.. Core.AsText
              Core.<$> numRowsDroppedByWatermark,
            ("numRowsRemoved" Core..=)
              Core.. Core.AsText
              Core.<$> numRowsRemoved,
            ("numRowsTotal" Core..=) Core.. Core.AsText Core.<$> numRowsTotal,
            ("numRowsUpdated" Core..=)
              Core.. Core.AsText
              Core.<$> numRowsUpdated,
            ("numShufflePartitions" Core..=)
              Core.. Core.AsText
              Core.<$> numShufflePartitions,
            ("numStateStoreInstances" Core..=)
              Core.. Core.AsText
              Core.<$> numStateStoreInstances,
            ("operatorName" Core..=) Core.<$> operatorName
          ]
      )

--
-- /See:/ 'newStateOperatorProgress_CustomMetrics' smart constructor.
newtype StateOperatorProgress_CustomMetrics = StateOperatorProgress_CustomMetrics
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateOperatorProgress_CustomMetrics' with the minimum fields required to make a request.
newStateOperatorProgress_CustomMetrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  StateOperatorProgress_CustomMetrics
newStateOperatorProgress_CustomMetrics additional =
  StateOperatorProgress_CustomMetrics {additional = additional}

instance Core.FromJSON StateOperatorProgress_CustomMetrics where
  parseJSON =
    Core.withObject
      "StateOperatorProgress_CustomMetrics"
      ( \o ->
          StateOperatorProgress_CustomMetrics
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StateOperatorProgress_CustomMetrics where
  toJSON StateOperatorProgress_CustomMetrics {..} =
    Core.toJSON additional

-- | The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https:\/\/github.com\/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https:\/\/cloud.google.com\/apis\/design\/errors).
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

-- | A request to stop a cluster.
--
-- /See:/ 'newStopClusterRequest' smart constructor.
data StopClusterRequest = StopClusterRequest
  { -- | Optional. Specifying the cluster/uuid means the RPC will fail (with error NOT/FOUND) if a cluster with the specified UUID does not exist.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Optional. A unique ID used to identify the request. If the server receives two StopClusterRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StopClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StopClusterRequest' with the minimum fields required to make a request.
newStopClusterRequest ::
  StopClusterRequest
newStopClusterRequest =
  StopClusterRequest
    { clusterUuid = Core.Nothing,
      requestId = Core.Nothing
    }

instance Core.FromJSON StopClusterRequest where
  parseJSON =
    Core.withObject
      "StopClusterRequest"
      ( \o ->
          StopClusterRequest
            Core.<$> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON StopClusterRequest where
  toJSON StopClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("requestId" Core..=) Core.<$> requestId
          ]
      )

-- | Stream Block Data.
--
-- /See:/ 'newStreamBlockData' smart constructor.
data StreamBlockData = StreamBlockData
  { deserialized :: (Core.Maybe Core.Bool),
    diskSize :: (Core.Maybe Core.Int64),
    executorId :: (Core.Maybe Core.Text),
    hostPort :: (Core.Maybe Core.Text),
    memSize :: (Core.Maybe Core.Int64),
    name :: (Core.Maybe Core.Text),
    storageLevel :: (Core.Maybe Core.Text),
    useDisk :: (Core.Maybe Core.Bool),
    useMemory :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamBlockData' with the minimum fields required to make a request.
newStreamBlockData ::
  StreamBlockData
newStreamBlockData =
  StreamBlockData
    { deserialized = Core.Nothing,
      diskSize = Core.Nothing,
      executorId = Core.Nothing,
      hostPort = Core.Nothing,
      memSize = Core.Nothing,
      name = Core.Nothing,
      storageLevel = Core.Nothing,
      useDisk = Core.Nothing,
      useMemory = Core.Nothing
    }

instance Core.FromJSON StreamBlockData where
  parseJSON =
    Core.withObject
      "StreamBlockData"
      ( \o ->
          StreamBlockData
            Core.<$> (o Core..:? "deserialized")
            Core.<*> (o Core..:? "diskSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "executorId")
            Core.<*> (o Core..:? "hostPort")
            Core.<*> (o Core..:? "memSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "storageLevel")
            Core.<*> (o Core..:? "useDisk")
            Core.<*> (o Core..:? "useMemory")
      )

instance Core.ToJSON StreamBlockData where
  toJSON StreamBlockData {..} =
    Core.object
      ( Core.catMaybes
          [ ("deserialized" Core..=) Core.<$> deserialized,
            ("diskSize" Core..=) Core.. Core.AsText Core.<$> diskSize,
            ("executorId" Core..=) Core.<$> executorId,
            ("hostPort" Core..=) Core.<$> hostPort,
            ("memSize" Core..=) Core.. Core.AsText Core.<$> memSize,
            ("name" Core..=) Core.<$> name,
            ("storageLevel" Core..=) Core.<$> storageLevel,
            ("useDisk" Core..=) Core.<$> useDisk,
            ("useMemory" Core..=) Core.<$> useMemory
          ]
      )

-- | Streaming
--
-- /See:/ 'newStreamingQueryData' smart constructor.
data StreamingQueryData = StreamingQueryData
  { endTimestamp :: (Core.Maybe Core.Int64),
    exception :: (Core.Maybe Core.Text),
    isActive :: (Core.Maybe Core.Bool),
    name :: (Core.Maybe Core.Text),
    runId :: (Core.Maybe Core.Text),
    startTimestamp :: (Core.Maybe Core.Int64),
    streamingQueryId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingQueryData' with the minimum fields required to make a request.
newStreamingQueryData ::
  StreamingQueryData
newStreamingQueryData =
  StreamingQueryData
    { endTimestamp = Core.Nothing,
      exception = Core.Nothing,
      isActive = Core.Nothing,
      name = Core.Nothing,
      runId = Core.Nothing,
      startTimestamp = Core.Nothing,
      streamingQueryId = Core.Nothing
    }

instance Core.FromJSON StreamingQueryData where
  parseJSON =
    Core.withObject
      "StreamingQueryData"
      ( \o ->
          StreamingQueryData
            Core.<$> (o Core..:? "endTimestamp" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "exception")
            Core.<*> (o Core..:? "isActive")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "runId")
            Core.<*> (o Core..:? "startTimestamp" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "streamingQueryId")
      )

instance Core.ToJSON StreamingQueryData where
  toJSON StreamingQueryData {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTimestamp" Core..=) Core.. Core.AsText Core.<$> endTimestamp,
            ("exception" Core..=) Core.<$> exception,
            ("isActive" Core..=) Core.<$> isActive,
            ("name" Core..=) Core.<$> name,
            ("runId" Core..=) Core.<$> runId,
            ("startTimestamp" Core..=)
              Core.. Core.AsText
              Core.<$> startTimestamp,
            ("streamingQueryId" Core..=) Core.<$> streamingQueryId
          ]
      )

--
-- /See:/ 'newStreamingQueryProgress' smart constructor.
data StreamingQueryProgress = StreamingQueryProgress
  { batchDuration :: (Core.Maybe Core.Int64),
    batchId :: (Core.Maybe Core.Int64),
    durationMillis :: (Core.Maybe StreamingQueryProgress_DurationMillis),
    eventTime :: (Core.Maybe StreamingQueryProgress_EventTime),
    name :: (Core.Maybe Core.Text),
    observedMetrics :: (Core.Maybe StreamingQueryProgress_ObservedMetrics),
    runId :: (Core.Maybe Core.Text),
    sink :: (Core.Maybe SinkProgress),
    sources :: (Core.Maybe [SourceProgress]),
    stateOperators :: (Core.Maybe [StateOperatorProgress]),
    streamingQueryProgressId :: (Core.Maybe Core.Text),
    timestamp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingQueryProgress' with the minimum fields required to make a request.
newStreamingQueryProgress ::
  StreamingQueryProgress
newStreamingQueryProgress =
  StreamingQueryProgress
    { batchDuration = Core.Nothing,
      batchId = Core.Nothing,
      durationMillis = Core.Nothing,
      eventTime = Core.Nothing,
      name = Core.Nothing,
      observedMetrics = Core.Nothing,
      runId = Core.Nothing,
      sink = Core.Nothing,
      sources = Core.Nothing,
      stateOperators = Core.Nothing,
      streamingQueryProgressId = Core.Nothing,
      timestamp = Core.Nothing
    }

instance Core.FromJSON StreamingQueryProgress where
  parseJSON =
    Core.withObject
      "StreamingQueryProgress"
      ( \o ->
          StreamingQueryProgress
            Core.<$> (o Core..:? "batchDuration" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "batchId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "durationMillis")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "observedMetrics")
            Core.<*> (o Core..:? "runId")
            Core.<*> (o Core..:? "sink")
            Core.<*> (o Core..:? "sources")
            Core.<*> (o Core..:? "stateOperators")
            Core.<*> (o Core..:? "streamingQueryProgressId")
            Core.<*> (o Core..:? "timestamp")
      )

instance Core.ToJSON StreamingQueryProgress where
  toJSON StreamingQueryProgress {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchDuration" Core..=)
              Core.. Core.AsText
              Core.<$> batchDuration,
            ("batchId" Core..=) Core.. Core.AsText Core.<$> batchId,
            ("durationMillis" Core..=) Core.<$> durationMillis,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("name" Core..=) Core.<$> name,
            ("observedMetrics" Core..=) Core.<$> observedMetrics,
            ("runId" Core..=) Core.<$> runId,
            ("sink" Core..=) Core.<$> sink,
            ("sources" Core..=) Core.<$> sources,
            ("stateOperators" Core..=) Core.<$> stateOperators,
            ("streamingQueryProgressId" Core..=)
              Core.<$> streamingQueryProgressId,
            ("timestamp" Core..=) Core.<$> timestamp
          ]
      )

--
-- /See:/ 'newStreamingQueryProgress_DurationMillis' smart constructor.
newtype StreamingQueryProgress_DurationMillis = StreamingQueryProgress_DurationMillis
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingQueryProgress_DurationMillis' with the minimum fields required to make a request.
newStreamingQueryProgress_DurationMillis ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  StreamingQueryProgress_DurationMillis
newStreamingQueryProgress_DurationMillis additional =
  StreamingQueryProgress_DurationMillis {additional = additional}

instance Core.FromJSON StreamingQueryProgress_DurationMillis where
  parseJSON =
    Core.withObject
      "StreamingQueryProgress_DurationMillis"
      ( \o ->
          StreamingQueryProgress_DurationMillis
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StreamingQueryProgress_DurationMillis where
  toJSON StreamingQueryProgress_DurationMillis {..} =
    Core.toJSON additional

--
-- /See:/ 'newStreamingQueryProgress_EventTime' smart constructor.
newtype StreamingQueryProgress_EventTime = StreamingQueryProgress_EventTime
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingQueryProgress_EventTime' with the minimum fields required to make a request.
newStreamingQueryProgress_EventTime ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  StreamingQueryProgress_EventTime
newStreamingQueryProgress_EventTime additional =
  StreamingQueryProgress_EventTime {additional = additional}

instance Core.FromJSON StreamingQueryProgress_EventTime where
  parseJSON =
    Core.withObject
      "StreamingQueryProgress_EventTime"
      ( \o ->
          StreamingQueryProgress_EventTime Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StreamingQueryProgress_EventTime where
  toJSON StreamingQueryProgress_EventTime {..} =
    Core.toJSON additional

--
-- /See:/ 'newStreamingQueryProgress_ObservedMetrics' smart constructor.
newtype StreamingQueryProgress_ObservedMetrics = StreamingQueryProgress_ObservedMetrics
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingQueryProgress_ObservedMetrics' with the minimum fields required to make a request.
newStreamingQueryProgress_ObservedMetrics ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  StreamingQueryProgress_ObservedMetrics
newStreamingQueryProgress_ObservedMetrics additional =
  StreamingQueryProgress_ObservedMetrics {additional = additional}

instance Core.FromJSON StreamingQueryProgress_ObservedMetrics where
  parseJSON =
    Core.withObject
      "StreamingQueryProgress_ObservedMetrics"
      ( \o ->
          StreamingQueryProgress_ObservedMetrics
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON StreamingQueryProgress_ObservedMetrics where
  toJSON StreamingQueryProgress_ObservedMetrics {..} =
    Core.toJSON additional

-- | A request to submit a job.
--
-- /See:/ 'newSubmitJobRequest' smart constructor.
data SubmitJobRequest = SubmitJobRequest
  { -- | Required. The job resource.
    job :: (Core.Maybe Job),
    -- | Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubmitJobRequest' with the minimum fields required to make a request.
newSubmitJobRequest ::
  SubmitJobRequest
newSubmitJobRequest =
  SubmitJobRequest {job = Core.Nothing, requestId = Core.Nothing}

instance Core.FromJSON SubmitJobRequest where
  parseJSON =
    Core.withObject
      "SubmitJobRequest"
      ( \o ->
          SubmitJobRequest
            Core.<$> (o Core..:? "job")
            Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON SubmitJobRequest where
  toJSON SubmitJobRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("job" Core..=) Core.<$> job,
            ("requestId" Core..=) Core.<$> requestId
          ]
      )

-- | Consolidated summary of executors for a Spark Application.
--
-- /See:/ 'newSummarizeSessionSparkApplicationExecutorsResponse' smart constructor.
data SummarizeSessionSparkApplicationExecutorsResponse = SummarizeSessionSparkApplicationExecutorsResponse
  { -- | Consolidated summary for active executors.
    activeExecutorSummary :: (Core.Maybe ConsolidatedExecutorSummary),
    -- | Spark Application Id
    applicationId :: (Core.Maybe Core.Text),
    -- | Consolidated summary for dead executors.
    deadExecutorSummary :: (Core.Maybe ConsolidatedExecutorSummary),
    -- | Overall consolidated summary for all executors.
    totalExecutorSummary :: (Core.Maybe ConsolidatedExecutorSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSessionSparkApplicationExecutorsResponse' with the minimum fields required to make a request.
newSummarizeSessionSparkApplicationExecutorsResponse ::
  SummarizeSessionSparkApplicationExecutorsResponse
newSummarizeSessionSparkApplicationExecutorsResponse =
  SummarizeSessionSparkApplicationExecutorsResponse
    { activeExecutorSummary =
        Core.Nothing,
      applicationId = Core.Nothing,
      deadExecutorSummary = Core.Nothing,
      totalExecutorSummary = Core.Nothing
    }

instance
  Core.FromJSON
    SummarizeSessionSparkApplicationExecutorsResponse
  where
  parseJSON =
    Core.withObject
      "SummarizeSessionSparkApplicationExecutorsResponse"
      ( \o ->
          SummarizeSessionSparkApplicationExecutorsResponse
            Core.<$> (o Core..:? "activeExecutorSummary")
            Core.<*> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "deadExecutorSummary")
            Core.<*> (o Core..:? "totalExecutorSummary")
      )

instance
  Core.ToJSON
    SummarizeSessionSparkApplicationExecutorsResponse
  where
  toJSON SummarizeSessionSparkApplicationExecutorsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeExecutorSummary" Core..=) Core.<$> activeExecutorSummary,
            ("applicationId" Core..=) Core.<$> applicationId,
            ("deadExecutorSummary" Core..=) Core.<$> deadExecutorSummary,
            ("totalExecutorSummary" Core..=) Core.<$> totalExecutorSummary
          ]
      )

-- | Summary of a Spark Application jobs.
--
-- /See:/ 'newSummarizeSessionSparkApplicationJobsResponse' smart constructor.
newtype SummarizeSessionSparkApplicationJobsResponse = SummarizeSessionSparkApplicationJobsResponse
  { -- | Summary of a Spark Application Jobs
    jobsSummary :: (Core.Maybe JobsSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSessionSparkApplicationJobsResponse' with the minimum fields required to make a request.
newSummarizeSessionSparkApplicationJobsResponse ::
  SummarizeSessionSparkApplicationJobsResponse
newSummarizeSessionSparkApplicationJobsResponse =
  SummarizeSessionSparkApplicationJobsResponse
    { jobsSummary =
        Core.Nothing
    }

instance Core.FromJSON SummarizeSessionSparkApplicationJobsResponse where
  parseJSON =
    Core.withObject
      "SummarizeSessionSparkApplicationJobsResponse"
      ( \o ->
          SummarizeSessionSparkApplicationJobsResponse
            Core.<$> (o Core..:? "jobsSummary")
      )

instance Core.ToJSON SummarizeSessionSparkApplicationJobsResponse where
  toJSON SummarizeSessionSparkApplicationJobsResponse {..} =
    Core.object
      (Core.catMaybes [("jobsSummary" Core..=) Core.<$> jobsSummary])

-- | Summary of tasks for a Spark Application stage attempt.
--
-- /See:/ 'newSummarizeSessionSparkApplicationStageAttemptTasksResponse' smart constructor.
newtype SummarizeSessionSparkApplicationStageAttemptTasksResponse = SummarizeSessionSparkApplicationStageAttemptTasksResponse
  { -- | Summary of tasks for a Spark Application Stage Attempt
    stageAttemptTasksSummary :: (Core.Maybe StageAttemptTasksSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSessionSparkApplicationStageAttemptTasksResponse' with the minimum fields required to make a request.
newSummarizeSessionSparkApplicationStageAttemptTasksResponse ::
  SummarizeSessionSparkApplicationStageAttemptTasksResponse
newSummarizeSessionSparkApplicationStageAttemptTasksResponse =
  SummarizeSessionSparkApplicationStageAttemptTasksResponse
    { stageAttemptTasksSummary =
        Core.Nothing
    }

instance
  Core.FromJSON
    SummarizeSessionSparkApplicationStageAttemptTasksResponse
  where
  parseJSON =
    Core.withObject
      "SummarizeSessionSparkApplicationStageAttemptTasksResponse"
      ( \o ->
          SummarizeSessionSparkApplicationStageAttemptTasksResponse
            Core.<$> (o Core..:? "stageAttemptTasksSummary")
      )

instance
  Core.ToJSON
    SummarizeSessionSparkApplicationStageAttemptTasksResponse
  where
  toJSON
    SummarizeSessionSparkApplicationStageAttemptTasksResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("stageAttemptTasksSummary" Core..=)
                Core.<$> stageAttemptTasksSummary
            ]
        )

-- | Summary of a Spark Application stages.
--
-- /See:/ 'newSummarizeSessionSparkApplicationStagesResponse' smart constructor.
newtype SummarizeSessionSparkApplicationStagesResponse = SummarizeSessionSparkApplicationStagesResponse
  { -- | Summary of a Spark Application Stages
    stagesSummary :: (Core.Maybe StagesSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSessionSparkApplicationStagesResponse' with the minimum fields required to make a request.
newSummarizeSessionSparkApplicationStagesResponse ::
  SummarizeSessionSparkApplicationStagesResponse
newSummarizeSessionSparkApplicationStagesResponse =
  SummarizeSessionSparkApplicationStagesResponse
    { stagesSummary =
        Core.Nothing
    }

instance
  Core.FromJSON
    SummarizeSessionSparkApplicationStagesResponse
  where
  parseJSON =
    Core.withObject
      "SummarizeSessionSparkApplicationStagesResponse"
      ( \o ->
          SummarizeSessionSparkApplicationStagesResponse
            Core.<$> (o Core..:? "stagesSummary")
      )

instance Core.ToJSON SummarizeSessionSparkApplicationStagesResponse where
  toJSON SummarizeSessionSparkApplicationStagesResponse {..} =
    Core.object
      (Core.catMaybes [("stagesSummary" Core..=) Core.<$> stagesSummary])

-- | Consolidated summary of executors for a Spark Application.
--
-- /See:/ 'newSummarizeSparkApplicationExecutorsResponse' smart constructor.
data SummarizeSparkApplicationExecutorsResponse = SummarizeSparkApplicationExecutorsResponse
  { -- | Consolidated summary for active executors.
    activeExecutorSummary :: (Core.Maybe ConsolidatedExecutorSummary),
    -- | Spark Application Id
    applicationId :: (Core.Maybe Core.Text),
    -- | Consolidated summary for dead executors.
    deadExecutorSummary :: (Core.Maybe ConsolidatedExecutorSummary),
    -- | Overall consolidated summary for all executors.
    totalExecutorSummary :: (Core.Maybe ConsolidatedExecutorSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSparkApplicationExecutorsResponse' with the minimum fields required to make a request.
newSummarizeSparkApplicationExecutorsResponse ::
  SummarizeSparkApplicationExecutorsResponse
newSummarizeSparkApplicationExecutorsResponse =
  SummarizeSparkApplicationExecutorsResponse
    { activeExecutorSummary =
        Core.Nothing,
      applicationId = Core.Nothing,
      deadExecutorSummary = Core.Nothing,
      totalExecutorSummary = Core.Nothing
    }

instance Core.FromJSON SummarizeSparkApplicationExecutorsResponse where
  parseJSON =
    Core.withObject
      "SummarizeSparkApplicationExecutorsResponse"
      ( \o ->
          SummarizeSparkApplicationExecutorsResponse
            Core.<$> (o Core..:? "activeExecutorSummary")
            Core.<*> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "deadExecutorSummary")
            Core.<*> (o Core..:? "totalExecutorSummary")
      )

instance Core.ToJSON SummarizeSparkApplicationExecutorsResponse where
  toJSON SummarizeSparkApplicationExecutorsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeExecutorSummary" Core..=) Core.<$> activeExecutorSummary,
            ("applicationId" Core..=) Core.<$> applicationId,
            ("deadExecutorSummary" Core..=) Core.<$> deadExecutorSummary,
            ("totalExecutorSummary" Core..=) Core.<$> totalExecutorSummary
          ]
      )

-- | Summary of a Spark Application jobs.
--
-- /See:/ 'newSummarizeSparkApplicationJobsResponse' smart constructor.
newtype SummarizeSparkApplicationJobsResponse = SummarizeSparkApplicationJobsResponse
  { -- | Summary of a Spark Application Jobs
    jobsSummary :: (Core.Maybe JobsSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSparkApplicationJobsResponse' with the minimum fields required to make a request.
newSummarizeSparkApplicationJobsResponse ::
  SummarizeSparkApplicationJobsResponse
newSummarizeSparkApplicationJobsResponse =
  SummarizeSparkApplicationJobsResponse {jobsSummary = Core.Nothing}

instance Core.FromJSON SummarizeSparkApplicationJobsResponse where
  parseJSON =
    Core.withObject
      "SummarizeSparkApplicationJobsResponse"
      ( \o ->
          SummarizeSparkApplicationJobsResponse
            Core.<$> (o Core..:? "jobsSummary")
      )

instance Core.ToJSON SummarizeSparkApplicationJobsResponse where
  toJSON SummarizeSparkApplicationJobsResponse {..} =
    Core.object
      (Core.catMaybes [("jobsSummary" Core..=) Core.<$> jobsSummary])

-- | Summary of tasks for a Spark Application stage attempt.
--
-- /See:/ 'newSummarizeSparkApplicationStageAttemptTasksResponse' smart constructor.
newtype SummarizeSparkApplicationStageAttemptTasksResponse = SummarizeSparkApplicationStageAttemptTasksResponse
  { -- | Summary of tasks for a Spark Application Stage Attempt
    stageAttemptTasksSummary :: (Core.Maybe StageAttemptTasksSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSparkApplicationStageAttemptTasksResponse' with the minimum fields required to make a request.
newSummarizeSparkApplicationStageAttemptTasksResponse ::
  SummarizeSparkApplicationStageAttemptTasksResponse
newSummarizeSparkApplicationStageAttemptTasksResponse =
  SummarizeSparkApplicationStageAttemptTasksResponse
    { stageAttemptTasksSummary =
        Core.Nothing
    }

instance
  Core.FromJSON
    SummarizeSparkApplicationStageAttemptTasksResponse
  where
  parseJSON =
    Core.withObject
      "SummarizeSparkApplicationStageAttemptTasksResponse"
      ( \o ->
          SummarizeSparkApplicationStageAttemptTasksResponse
            Core.<$> (o Core..:? "stageAttemptTasksSummary")
      )

instance
  Core.ToJSON
    SummarizeSparkApplicationStageAttemptTasksResponse
  where
  toJSON SummarizeSparkApplicationStageAttemptTasksResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("stageAttemptTasksSummary" Core..=)
              Core.<$> stageAttemptTasksSummary
          ]
      )

-- | Summary of a Spark Application stages.
--
-- /See:/ 'newSummarizeSparkApplicationStagesResponse' smart constructor.
newtype SummarizeSparkApplicationStagesResponse = SummarizeSparkApplicationStagesResponse
  { -- | Summary of a Spark Application Stages
    stagesSummary :: (Core.Maybe StagesSummary)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SummarizeSparkApplicationStagesResponse' with the minimum fields required to make a request.
newSummarizeSparkApplicationStagesResponse ::
  SummarizeSparkApplicationStagesResponse
newSummarizeSparkApplicationStagesResponse =
  SummarizeSparkApplicationStagesResponse
    { stagesSummary =
        Core.Nothing
    }

instance Core.FromJSON SummarizeSparkApplicationStagesResponse where
  parseJSON =
    Core.withObject
      "SummarizeSparkApplicationStagesResponse"
      ( \o ->
          SummarizeSparkApplicationStagesResponse
            Core.<$> (o Core..:? "stagesSummary")
      )

instance Core.ToJSON SummarizeSparkApplicationStagesResponse where
  toJSON SummarizeSparkApplicationStagesResponse {..} =
    Core.object
      (Core.catMaybes [("stagesSummary" Core..=) Core.<$> stagesSummary])

-- | Data corresponding to tasks created by spark.
--
-- /See:/ 'newTaskData' smart constructor.
data TaskData = TaskData
  { accumulatorUpdates :: (Core.Maybe [AccumulableInfo]),
    attempt :: (Core.Maybe Core.Int32),
    durationMillis :: (Core.Maybe Core.Int64),
    errorMessage :: (Core.Maybe Core.Text),
    executorId :: (Core.Maybe Core.Text),
    executorLogs :: (Core.Maybe TaskData_ExecutorLogs),
    gettingResultTimeMillis :: (Core.Maybe Core.Int64),
    hasMetrics :: (Core.Maybe Core.Bool),
    host :: (Core.Maybe Core.Text),
    index :: (Core.Maybe Core.Int32),
    launchTime :: (Core.Maybe Core.DateTime),
    partitionId :: (Core.Maybe Core.Int32),
    resultFetchStart :: (Core.Maybe Core.DateTime),
    schedulerDelayMillis :: (Core.Maybe Core.Int64),
    speculative :: (Core.Maybe Core.Bool),
    stageAttemptId :: (Core.Maybe Core.Int32),
    stageId :: (Core.Maybe Core.Int64),
    status :: (Core.Maybe Core.Text),
    taskId :: (Core.Maybe Core.Int64),
    taskLocality :: (Core.Maybe Core.Text),
    taskMetrics :: (Core.Maybe TaskMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskData' with the minimum fields required to make a request.
newTaskData ::
  TaskData
newTaskData =
  TaskData
    { accumulatorUpdates = Core.Nothing,
      attempt = Core.Nothing,
      durationMillis = Core.Nothing,
      errorMessage = Core.Nothing,
      executorId = Core.Nothing,
      executorLogs = Core.Nothing,
      gettingResultTimeMillis = Core.Nothing,
      hasMetrics = Core.Nothing,
      host = Core.Nothing,
      index = Core.Nothing,
      launchTime = Core.Nothing,
      partitionId = Core.Nothing,
      resultFetchStart = Core.Nothing,
      schedulerDelayMillis = Core.Nothing,
      speculative = Core.Nothing,
      stageAttemptId = Core.Nothing,
      stageId = Core.Nothing,
      status = Core.Nothing,
      taskId = Core.Nothing,
      taskLocality = Core.Nothing,
      taskMetrics = Core.Nothing
    }

instance Core.FromJSON TaskData where
  parseJSON =
    Core.withObject
      "TaskData"
      ( \o ->
          TaskData
            Core.<$> (o Core..:? "accumulatorUpdates")
            Core.<*> (o Core..:? "attempt")
            Core.<*> (o Core..:? "durationMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "executorId")
            Core.<*> (o Core..:? "executorLogs")
            Core.<*> ( o
                         Core..:? "gettingResultTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "hasMetrics")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "launchTime")
            Core.<*> (o Core..:? "partitionId")
            Core.<*> (o Core..:? "resultFetchStart")
            Core.<*> ( o
                         Core..:? "schedulerDelayMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "speculative")
            Core.<*> (o Core..:? "stageAttemptId")
            Core.<*> (o Core..:? "stageId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "taskId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "taskLocality")
            Core.<*> (o Core..:? "taskMetrics")
      )

instance Core.ToJSON TaskData where
  toJSON TaskData {..} =
    Core.object
      ( Core.catMaybes
          [ ("accumulatorUpdates" Core..=) Core.<$> accumulatorUpdates,
            ("attempt" Core..=) Core.<$> attempt,
            ("durationMillis" Core..=)
              Core.. Core.AsText
              Core.<$> durationMillis,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("executorId" Core..=) Core.<$> executorId,
            ("executorLogs" Core..=) Core.<$> executorLogs,
            ("gettingResultTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> gettingResultTimeMillis,
            ("hasMetrics" Core..=) Core.<$> hasMetrics,
            ("host" Core..=) Core.<$> host,
            ("index" Core..=) Core.<$> index,
            ("launchTime" Core..=) Core.<$> launchTime,
            ("partitionId" Core..=) Core.<$> partitionId,
            ("resultFetchStart" Core..=) Core.<$> resultFetchStart,
            ("schedulerDelayMillis" Core..=)
              Core.. Core.AsText
              Core.<$> schedulerDelayMillis,
            ("speculative" Core..=) Core.<$> speculative,
            ("stageAttemptId" Core..=) Core.<$> stageAttemptId,
            ("stageId" Core..=) Core.. Core.AsText Core.<$> stageId,
            ("status" Core..=) Core.<$> status,
            ("taskId" Core..=) Core.. Core.AsText Core.<$> taskId,
            ("taskLocality" Core..=) Core.<$> taskLocality,
            ("taskMetrics" Core..=) Core.<$> taskMetrics
          ]
      )

--
-- /See:/ 'newTaskData_ExecutorLogs' smart constructor.
newtype TaskData_ExecutorLogs = TaskData_ExecutorLogs
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskData_ExecutorLogs' with the minimum fields required to make a request.
newTaskData_ExecutorLogs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  TaskData_ExecutorLogs
newTaskData_ExecutorLogs additional =
  TaskData_ExecutorLogs {additional = additional}

instance Core.FromJSON TaskData_ExecutorLogs where
  parseJSON =
    Core.withObject
      "TaskData_ExecutorLogs"
      (\o -> TaskData_ExecutorLogs Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON TaskData_ExecutorLogs where
  toJSON TaskData_ExecutorLogs {..} = Core.toJSON additional

-- | Executor Task Metrics
--
-- /See:/ 'newTaskMetrics' smart constructor.
data TaskMetrics = TaskMetrics
  { diskBytesSpilled :: (Core.Maybe Core.Int64),
    executorCpuTimeNanos :: (Core.Maybe Core.Int64),
    executorDeserializeCpuTimeNanos :: (Core.Maybe Core.Int64),
    executorDeserializeTimeMillis :: (Core.Maybe Core.Int64),
    executorRunTimeMillis :: (Core.Maybe Core.Int64),
    inputMetrics :: (Core.Maybe InputMetrics),
    jvmGcTimeMillis :: (Core.Maybe Core.Int64),
    memoryBytesSpilled :: (Core.Maybe Core.Int64),
    outputMetrics :: (Core.Maybe OutputMetrics),
    peakExecutionMemoryBytes :: (Core.Maybe Core.Int64),
    resultSerializationTimeMillis :: (Core.Maybe Core.Int64),
    resultSize :: (Core.Maybe Core.Int64),
    shuffleReadMetrics :: (Core.Maybe ShuffleReadMetrics),
    shuffleWriteMetrics :: (Core.Maybe ShuffleWriteMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskMetrics' with the minimum fields required to make a request.
newTaskMetrics ::
  TaskMetrics
newTaskMetrics =
  TaskMetrics
    { diskBytesSpilled = Core.Nothing,
      executorCpuTimeNanos = Core.Nothing,
      executorDeserializeCpuTimeNanos = Core.Nothing,
      executorDeserializeTimeMillis = Core.Nothing,
      executorRunTimeMillis = Core.Nothing,
      inputMetrics = Core.Nothing,
      jvmGcTimeMillis = Core.Nothing,
      memoryBytesSpilled = Core.Nothing,
      outputMetrics = Core.Nothing,
      peakExecutionMemoryBytes = Core.Nothing,
      resultSerializationTimeMillis = Core.Nothing,
      resultSize = Core.Nothing,
      shuffleReadMetrics = Core.Nothing,
      shuffleWriteMetrics = Core.Nothing
    }

instance Core.FromJSON TaskMetrics where
  parseJSON =
    Core.withObject
      "TaskMetrics"
      ( \o ->
          TaskMetrics
            Core.<$> (o Core..:? "diskBytesSpilled" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "executorCpuTimeNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "executorDeserializeCpuTimeNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "executorDeserializeTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "executorRunTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "inputMetrics")
            Core.<*> (o Core..:? "jvmGcTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "memoryBytesSpilled"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "outputMetrics")
            Core.<*> ( o
                         Core..:? "peakExecutionMemoryBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "resultSerializationTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "resultSize" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "shuffleReadMetrics")
            Core.<*> (o Core..:? "shuffleWriteMetrics")
      )

instance Core.ToJSON TaskMetrics where
  toJSON TaskMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskBytesSpilled" Core..=)
              Core.. Core.AsText
              Core.<$> diskBytesSpilled,
            ("executorCpuTimeNanos" Core..=)
              Core.. Core.AsText
              Core.<$> executorCpuTimeNanos,
            ("executorDeserializeCpuTimeNanos" Core..=)
              Core.. Core.AsText
              Core.<$> executorDeserializeCpuTimeNanos,
            ("executorDeserializeTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> executorDeserializeTimeMillis,
            ("executorRunTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> executorRunTimeMillis,
            ("inputMetrics" Core..=) Core.<$> inputMetrics,
            ("jvmGcTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> jvmGcTimeMillis,
            ("memoryBytesSpilled" Core..=)
              Core.. Core.AsText
              Core.<$> memoryBytesSpilled,
            ("outputMetrics" Core..=) Core.<$> outputMetrics,
            ("peakExecutionMemoryBytes" Core..=)
              Core.. Core.AsText
              Core.<$> peakExecutionMemoryBytes,
            ("resultSerializationTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> resultSerializationTimeMillis,
            ("resultSize" Core..=) Core.. Core.AsText Core.<$> resultSize,
            ("shuffleReadMetrics" Core..=) Core.<$> shuffleReadMetrics,
            ("shuffleWriteMetrics" Core..=) Core.<$> shuffleWriteMetrics
          ]
      )

--
-- /See:/ 'newTaskQuantileMetrics' smart constructor.
data TaskQuantileMetrics = TaskQuantileMetrics
  { diskBytesSpilled :: (Core.Maybe Quantiles),
    durationMillis :: (Core.Maybe Quantiles),
    executorCpuTimeNanos :: (Core.Maybe Quantiles),
    executorDeserializeCpuTimeNanos :: (Core.Maybe Quantiles),
    executorDeserializeTimeMillis :: (Core.Maybe Quantiles),
    executorRunTimeMillis :: (Core.Maybe Quantiles),
    gettingResultTimeMillis :: (Core.Maybe Quantiles),
    inputMetrics :: (Core.Maybe InputQuantileMetrics),
    jvmGcTimeMillis :: (Core.Maybe Quantiles),
    memoryBytesSpilled :: (Core.Maybe Quantiles),
    outputMetrics :: (Core.Maybe OutputQuantileMetrics),
    peakExecutionMemoryBytes :: (Core.Maybe Quantiles),
    resultSerializationTimeMillis :: (Core.Maybe Quantiles),
    resultSize :: (Core.Maybe Quantiles),
    schedulerDelayMillis :: (Core.Maybe Quantiles),
    shuffleReadMetrics :: (Core.Maybe ShuffleReadQuantileMetrics),
    shuffleWriteMetrics :: (Core.Maybe ShuffleWriteQuantileMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskQuantileMetrics' with the minimum fields required to make a request.
newTaskQuantileMetrics ::
  TaskQuantileMetrics
newTaskQuantileMetrics =
  TaskQuantileMetrics
    { diskBytesSpilled = Core.Nothing,
      durationMillis = Core.Nothing,
      executorCpuTimeNanos = Core.Nothing,
      executorDeserializeCpuTimeNanos = Core.Nothing,
      executorDeserializeTimeMillis = Core.Nothing,
      executorRunTimeMillis = Core.Nothing,
      gettingResultTimeMillis = Core.Nothing,
      inputMetrics = Core.Nothing,
      jvmGcTimeMillis = Core.Nothing,
      memoryBytesSpilled = Core.Nothing,
      outputMetrics = Core.Nothing,
      peakExecutionMemoryBytes = Core.Nothing,
      resultSerializationTimeMillis = Core.Nothing,
      resultSize = Core.Nothing,
      schedulerDelayMillis = Core.Nothing,
      shuffleReadMetrics = Core.Nothing,
      shuffleWriteMetrics = Core.Nothing
    }

instance Core.FromJSON TaskQuantileMetrics where
  parseJSON =
    Core.withObject
      "TaskQuantileMetrics"
      ( \o ->
          TaskQuantileMetrics
            Core.<$> (o Core..:? "diskBytesSpilled")
            Core.<*> (o Core..:? "durationMillis")
            Core.<*> (o Core..:? "executorCpuTimeNanos")
            Core.<*> (o Core..:? "executorDeserializeCpuTimeNanos")
            Core.<*> (o Core..:? "executorDeserializeTimeMillis")
            Core.<*> (o Core..:? "executorRunTimeMillis")
            Core.<*> (o Core..:? "gettingResultTimeMillis")
            Core.<*> (o Core..:? "inputMetrics")
            Core.<*> (o Core..:? "jvmGcTimeMillis")
            Core.<*> (o Core..:? "memoryBytesSpilled")
            Core.<*> (o Core..:? "outputMetrics")
            Core.<*> (o Core..:? "peakExecutionMemoryBytes")
            Core.<*> (o Core..:? "resultSerializationTimeMillis")
            Core.<*> (o Core..:? "resultSize")
            Core.<*> (o Core..:? "schedulerDelayMillis")
            Core.<*> (o Core..:? "shuffleReadMetrics")
            Core.<*> (o Core..:? "shuffleWriteMetrics")
      )

instance Core.ToJSON TaskQuantileMetrics where
  toJSON TaskQuantileMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskBytesSpilled" Core..=) Core.<$> diskBytesSpilled,
            ("durationMillis" Core..=) Core.<$> durationMillis,
            ("executorCpuTimeNanos" Core..=) Core.<$> executorCpuTimeNanos,
            ("executorDeserializeCpuTimeNanos" Core..=)
              Core.<$> executorDeserializeCpuTimeNanos,
            ("executorDeserializeTimeMillis" Core..=)
              Core.<$> executorDeserializeTimeMillis,
            ("executorRunTimeMillis" Core..=) Core.<$> executorRunTimeMillis,
            ("gettingResultTimeMillis" Core..=)
              Core.<$> gettingResultTimeMillis,
            ("inputMetrics" Core..=) Core.<$> inputMetrics,
            ("jvmGcTimeMillis" Core..=) Core.<$> jvmGcTimeMillis,
            ("memoryBytesSpilled" Core..=) Core.<$> memoryBytesSpilled,
            ("outputMetrics" Core..=) Core.<$> outputMetrics,
            ("peakExecutionMemoryBytes" Core..=)
              Core.<$> peakExecutionMemoryBytes,
            ("resultSerializationTimeMillis" Core..=)
              Core.<$> resultSerializationTimeMillis,
            ("resultSize" Core..=) Core.<$> resultSize,
            ("schedulerDelayMillis" Core..=) Core.<$> schedulerDelayMillis,
            ("shuffleReadMetrics" Core..=) Core.<$> shuffleReadMetrics,
            ("shuffleWriteMetrics" Core..=) Core.<$> shuffleWriteMetrics
          ]
      )

-- | Resources used per task created by the application.
--
-- /See:/ 'newTaskResourceRequest' smart constructor.
data TaskResourceRequest = TaskResourceRequest
  { amount :: (Core.Maybe Core.Double),
    resourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskResourceRequest' with the minimum fields required to make a request.
newTaskResourceRequest ::
  TaskResourceRequest
newTaskResourceRequest =
  TaskResourceRequest
    { amount = Core.Nothing,
      resourceName = Core.Nothing
    }

instance Core.FromJSON TaskResourceRequest where
  parseJSON =
    Core.withObject
      "TaskResourceRequest"
      ( \o ->
          TaskResourceRequest
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "resourceName")
      )

instance Core.ToJSON TaskResourceRequest where
  toJSON TaskResourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("resourceName" Core..=) Core.<$> resourceName
          ]
      )

-- | A configurable parameter that replaces one or more fields in the template. Parameterizable fields: - Labels - File uris - Job properties - Job arguments - Script variables - Main class (in HadoopJob and SparkJob) - Zone (in ClusterSelector)
--
-- /See:/ 'newTemplateParameter' smart constructor.
data TemplateParameter = TemplateParameter
  { -- | Optional. Brief description of the parameter. Must not exceed 1024 characters.
    description :: (Core.Maybe Core.Text),
    -- | Required. Paths to all fields that the parameter replaces. A field is allowed to appear in at most one parameter\'s list of field paths.A field path is similar in syntax to a google.protobuf.FieldMask. For example, a field path that references the zone field of a workflow template\'s cluster selector would be specified as placement.clusterSelector.zone.Also, field paths can reference fields using the following syntax: Values in maps can be referenced by key: labels\'key\' placement.clusterSelector.clusterLabels\'key\' placement.managedCluster.labels\'key\' placement.clusterSelector.clusterLabels\'key\' jobs\'step-id\'.labels\'key\' Jobs in the jobs list can be referenced by step-id: jobs\'step-id\'.hadoopJob.mainJarFileUri jobs\'step-id\'.hiveJob.queryFileUri jobs\'step-id\'.pySparkJob.mainPythonFileUri jobs\'step-id\'.hadoopJob.jarFileUris0 jobs\'step-id\'.hadoopJob.archiveUris0 jobs\'step-id\'.hadoopJob.fileUris0 jobs\'step-id\'.pySparkJob.pythonFileUris0 Items in repeated fields can be referenced by a
    -- zero-based index: jobs\'step-id\'.sparkJob.args0 Other examples: jobs\'step-id\'.hadoopJob.properties\'key\' jobs\'step-id\'.hadoopJob.args0 jobs\'step-id\'.hiveJob.scriptVariables\'key\' jobs\'step-id\'.hadoopJob.mainJarFileUri placement.clusterSelector.zoneIt may not be possible to parameterize maps and repeated fields in their entirety since only individual map values and individual items in repeated fields can be referenced. For example, the following field paths are invalid: placement.clusterSelector.clusterLabels jobs\'step-id\'.sparkJob.args
    fields :: (Core.Maybe [Core.Text]),
    -- | Required. Parameter name. The parameter name is used as the key, and paired with the parameter value, which are passed to the template when the template is instantiated. The name must contain only capital letters (A-Z), numbers (0-9), and underscores (_), and must not start with a number. The maximum length is 40 characters.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Validation rules to be applied to this parameter\'s value.
    validation :: (Core.Maybe ParameterValidation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TemplateParameter' with the minimum fields required to make a request.
newTemplateParameter ::
  TemplateParameter
newTemplateParameter =
  TemplateParameter
    { description = Core.Nothing,
      fields = Core.Nothing,
      name = Core.Nothing,
      validation = Core.Nothing
    }

instance Core.FromJSON TemplateParameter where
  parseJSON =
    Core.withObject
      "TemplateParameter"
      ( \o ->
          TemplateParameter
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "validation")
      )

instance Core.ToJSON TemplateParameter where
  toJSON TemplateParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("fields" Core..=) Core.<$> fields,
            ("name" Core..=) Core.<$> name,
            ("validation" Core..=) Core.<$> validation
          ]
      )

-- | A request to terminate an interactive session.
--
-- /See:/ 'newTerminateSessionRequest' smart constructor.
newtype TerminateSessionRequest = TerminateSessionRequest
  { -- | Optional. A unique ID used to identify the request. If the service receives two TerminateSessionRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.TerminateSessionRequest)s with the same ID, the second request is ignored.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TerminateSessionRequest' with the minimum fields required to make a request.
newTerminateSessionRequest ::
  TerminateSessionRequest
newTerminateSessionRequest =
  TerminateSessionRequest {requestId = Core.Nothing}

instance Core.FromJSON TerminateSessionRequest where
  parseJSON =
    Core.withObject
      "TerminateSessionRequest"
      (\o -> TerminateSessionRequest Core.<$> (o Core..:? "requestId"))

instance Core.ToJSON TerminateSessionRequest where
  toJSON TerminateSessionRequest {..} =
    Core.object
      (Core.catMaybes [("requestId" Core..=) Core.<$> requestId])

-- | Request message for TestIamPermissions method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the resource. Permissions with wildcards (such as * or storage.*) are not allowed. For more information see IAM Overview (https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest ::
  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestIamPermissionsRequest"
      ( \o ->
          TestIamPermissionsRequest Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

-- | Response message for TestIamPermissions method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of TestPermissionsRequest.permissions that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

-- | A Dataproc job for running Trino (https:\/\/trino.io\/) queries. IMPORTANT: The Dataproc Trino Optional Component (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/components\/trino) must be enabled when the cluster is created to submit a Trino job to the cluster.
--
-- /See:/ 'newTrinoJob' smart constructor.
data TrinoJob = TrinoJob
  { -- | Optional. Trino client tags to attach to this query
    clientTags :: (Core.Maybe [Core.Text]),
    -- | Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
    continueOnFailure :: (Core.Maybe Core.Bool),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | Optional. The format in which query output will be displayed. See the Trino documentation for supported output formats
    outputFormat :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values. Used to set Trino session properties (https:\/\/trino.io\/docs\/current\/sql\/set-session.html) Equivalent to using the --session flag in the Trino CLI
    properties :: (Core.Maybe TrinoJob_Properties),
    -- | The HCFS URI of the script that contains SQL queries.
    queryFileUri :: (Core.Maybe Core.Text),
    -- | A list of queries.
    queryList :: (Core.Maybe QueryList)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrinoJob' with the minimum fields required to make a request.
newTrinoJob ::
  TrinoJob
newTrinoJob =
  TrinoJob
    { clientTags = Core.Nothing,
      continueOnFailure = Core.Nothing,
      loggingConfig = Core.Nothing,
      outputFormat = Core.Nothing,
      properties = Core.Nothing,
      queryFileUri = Core.Nothing,
      queryList = Core.Nothing
    }

instance Core.FromJSON TrinoJob where
  parseJSON =
    Core.withObject
      "TrinoJob"
      ( \o ->
          TrinoJob
            Core.<$> (o Core..:? "clientTags")
            Core.<*> (o Core..:? "continueOnFailure")
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "outputFormat")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "queryFileUri")
            Core.<*> (o Core..:? "queryList")
      )

instance Core.ToJSON TrinoJob where
  toJSON TrinoJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientTags" Core..=) Core.<$> clientTags,
            ("continueOnFailure" Core..=) Core.<$> continueOnFailure,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("outputFormat" Core..=) Core.<$> outputFormat,
            ("properties" Core..=) Core.<$> properties,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryList" Core..=) Core.<$> queryList
          ]
      )

-- | Optional. A mapping of property names to values. Used to set Trino session properties (https:\/\/trino.io\/docs\/current\/sql\/set-session.html) Equivalent to using the --session flag in the Trino CLI
--
-- /See:/ 'newTrinoJob_Properties' smart constructor.
newtype TrinoJob_Properties = TrinoJob_Properties
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrinoJob_Properties' with the minimum fields required to make a request.
newTrinoJob_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  TrinoJob_Properties
newTrinoJob_Properties additional =
  TrinoJob_Properties {additional = additional}

instance Core.FromJSON TrinoJob_Properties where
  parseJSON =
    Core.withObject
      "TrinoJob_Properties"
      (\o -> TrinoJob_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON TrinoJob_Properties where
  toJSON TrinoJob_Properties {..} = Core.toJSON additional

-- | Usage metrics represent approximate total resources consumed by a workload.
--
-- /See:/ 'newUsageMetrics' smart constructor.
data UsageMetrics = UsageMetrics
  { -- | Optional. Accelerator type being used, if any
    acceleratorType :: (Core.Maybe Core.Text),
    -- | Optional. Accelerator usage in (milliAccelerator x seconds) (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing)).
    milliAcceleratorSeconds :: (Core.Maybe Core.Int64),
    -- | Optional. DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing)).
    milliDcuSeconds :: (Core.Maybe Core.Int64),
    -- | Optional. Shuffle storage usage in (GB x seconds) (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing)).
    shuffleStorageGbSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageMetrics' with the minimum fields required to make a request.
newUsageMetrics ::
  UsageMetrics
newUsageMetrics =
  UsageMetrics
    { acceleratorType = Core.Nothing,
      milliAcceleratorSeconds = Core.Nothing,
      milliDcuSeconds = Core.Nothing,
      shuffleStorageGbSeconds = Core.Nothing
    }

instance Core.FromJSON UsageMetrics where
  parseJSON =
    Core.withObject
      "UsageMetrics"
      ( \o ->
          UsageMetrics
            Core.<$> (o Core..:? "acceleratorType")
            Core.<*> ( o
                         Core..:? "milliAcceleratorSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "milliDcuSeconds" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "shuffleStorageGbSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON UsageMetrics where
  toJSON UsageMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorType" Core..=) Core.<$> acceleratorType,
            ("milliAcceleratorSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> milliAcceleratorSeconds,
            ("milliDcuSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> milliDcuSeconds,
            ("shuffleStorageGbSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> shuffleStorageGbSeconds
          ]
      )

-- | The usage snapshot represents the resources consumed by a workload at a specified time.
--
-- /See:/ 'newUsageSnapshot' smart constructor.
data UsageSnapshot = UsageSnapshot
  { -- | Optional. Accelerator type being used, if any
    acceleratorType :: (Core.Maybe Core.Text),
    -- | Optional. Milli (one-thousandth) accelerator. (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing))
    milliAccelerator :: (Core.Maybe Core.Int64),
    -- | Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing)).
    milliDcu :: (Core.Maybe Core.Int64),
    -- | Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing)).
    milliDcuPremium :: (Core.Maybe Core.Int64),
    -- | Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing))
    shuffleStorageGb :: (Core.Maybe Core.Int64),
    -- | Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see Dataproc Serverless pricing (https:\/\/cloud.google.com\/dataproc-serverless\/pricing))
    shuffleStorageGbPremium :: (Core.Maybe Core.Int64),
    -- | Optional. The timestamp of the usage snapshot.
    snapshotTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsageSnapshot' with the minimum fields required to make a request.
newUsageSnapshot ::
  UsageSnapshot
newUsageSnapshot =
  UsageSnapshot
    { acceleratorType = Core.Nothing,
      milliAccelerator = Core.Nothing,
      milliDcu = Core.Nothing,
      milliDcuPremium = Core.Nothing,
      shuffleStorageGb = Core.Nothing,
      shuffleStorageGbPremium = Core.Nothing,
      snapshotTime = Core.Nothing
    }

instance Core.FromJSON UsageSnapshot where
  parseJSON =
    Core.withObject
      "UsageSnapshot"
      ( \o ->
          UsageSnapshot
            Core.<$> (o Core..:? "acceleratorType")
            Core.<*> (o Core..:? "milliAccelerator" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "milliDcu" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "milliDcuPremium" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "shuffleStorageGb" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "shuffleStorageGbPremium"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "snapshotTime")
      )

instance Core.ToJSON UsageSnapshot where
  toJSON UsageSnapshot {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorType" Core..=) Core.<$> acceleratorType,
            ("milliAccelerator" Core..=)
              Core.. Core.AsText
              Core.<$> milliAccelerator,
            ("milliDcu" Core..=) Core.. Core.AsText Core.<$> milliDcu,
            ("milliDcuPremium" Core..=)
              Core.. Core.AsText
              Core.<$> milliDcuPremium,
            ("shuffleStorageGb" Core..=)
              Core.. Core.AsText
              Core.<$> shuffleStorageGb,
            ("shuffleStorageGbPremium" Core..=)
              Core.. Core.AsText
              Core.<$> shuffleStorageGbPremium,
            ("snapshotTime" Core..=) Core.<$> snapshotTime
          ]
      )

-- | Validation based on a list of allowed values.
--
-- /See:/ 'newValueValidation' smart constructor.
newtype ValueValidation = ValueValidation
  { -- | Required. List of allowed values for the parameter.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValueValidation' with the minimum fields required to make a request.
newValueValidation ::
  ValueValidation
newValueValidation = ValueValidation {values = Core.Nothing}

instance Core.FromJSON ValueValidation where
  parseJSON =
    Core.withObject
      "ValueValidation"
      (\o -> ValueValidation Core.<$> (o Core..:? "values"))

instance Core.ToJSON ValueValidation where
  toJSON ValueValidation {..} =
    Core.object (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | The Dataproc cluster config for a cluster that does not directly control the underlying compute resources, such as a Dataproc-on-GKE cluster (https:\/\/cloud.google.com\/dataproc\/docs\/guides\/dpgke\/dataproc-gke-overview).
--
-- /See:/ 'newVirtualClusterConfig' smart constructor.
data VirtualClusterConfig = VirtualClusterConfig
  { -- | Optional. Configuration of auxiliary services used by this cluster.
    auxiliaryServicesConfig :: (Core.Maybe AuxiliaryServicesConfig),
    -- | Required. The configuration for running the Dataproc cluster on Kubernetes.
    kubernetesClusterConfig :: (Core.Maybe KubernetesClusterConfig),
    -- | Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster\'s staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs:\/\/... URI to a Cloud Storage bucket.
    stagingBucket :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VirtualClusterConfig' with the minimum fields required to make a request.
newVirtualClusterConfig ::
  VirtualClusterConfig
newVirtualClusterConfig =
  VirtualClusterConfig
    { auxiliaryServicesConfig = Core.Nothing,
      kubernetesClusterConfig = Core.Nothing,
      stagingBucket = Core.Nothing
    }

instance Core.FromJSON VirtualClusterConfig where
  parseJSON =
    Core.withObject
      "VirtualClusterConfig"
      ( \o ->
          VirtualClusterConfig
            Core.<$> (o Core..:? "auxiliaryServicesConfig")
            Core.<*> (o Core..:? "kubernetesClusterConfig")
            Core.<*> (o Core..:? "stagingBucket")
      )

instance Core.ToJSON VirtualClusterConfig where
  toJSON VirtualClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auxiliaryServicesConfig" Core..=)
              Core.<$> auxiliaryServicesConfig,
            ("kubernetesClusterConfig" Core..=)
              Core.<$> kubernetesClusterConfig,
            ("stagingBucket" Core..=) Core.<$> stagingBucket
          ]
      )

-- | The workflow graph.
--
-- /See:/ 'newWorkflowGraph' smart constructor.
newtype WorkflowGraph = WorkflowGraph
  { -- | Output only. The workflow nodes.
    nodes :: (Core.Maybe [WorkflowNode])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowGraph' with the minimum fields required to make a request.
newWorkflowGraph ::
  WorkflowGraph
newWorkflowGraph = WorkflowGraph {nodes = Core.Nothing}

instance Core.FromJSON WorkflowGraph where
  parseJSON =
    Core.withObject
      "WorkflowGraph"
      (\o -> WorkflowGraph Core.<$> (o Core..:? "nodes"))

instance Core.ToJSON WorkflowGraph where
  toJSON WorkflowGraph {..} =
    Core.object (Core.catMaybes [("nodes" Core..=) Core.<$> nodes])

-- | A Dataproc workflow template resource.
--
-- /See:/ 'newWorkflowMetadata' smart constructor.
data WorkflowMetadata = WorkflowMetadata
  { -- | Output only. The name of the target cluster.
    clusterName :: (Core.Maybe Core.Text),
    -- | Output only. The UUID of target cluster.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Output only. The create cluster operation metadata.
    createCluster :: (Core.Maybe ClusterOperation),
    -- | Output only. DAG end time, only set for workflows with dag_timeout when DAG ends.
    dagEndTime :: (Core.Maybe Core.DateTime),
    -- | Output only. DAG start time, only set for workflows with dag_timeout when DAG begins.
    dagStartTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    dagTimeout :: (Core.Maybe Core.Duration),
    -- | Output only. The delete cluster operation metadata.
    deleteCluster :: (Core.Maybe ClusterOperation),
    -- | Output only. Workflow end time.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The workflow graph.
    graph :: (Core.Maybe WorkflowGraph),
    -- | Map from parameter names to values that were used for those parameters.
    parameters :: (Core.Maybe WorkflowMetadata_Parameters),
    -- | Output only. Workflow start time.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The workflow state.
    state :: (Core.Maybe WorkflowMetadata_State),
    -- | Output only. The resource name of the workflow template as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id}
    template :: (Core.Maybe Core.Text),
    -- | Output only. The version of template at the time of workflow instantiation.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowMetadata' with the minimum fields required to make a request.
newWorkflowMetadata ::
  WorkflowMetadata
newWorkflowMetadata =
  WorkflowMetadata
    { clusterName = Core.Nothing,
      clusterUuid = Core.Nothing,
      createCluster = Core.Nothing,
      dagEndTime = Core.Nothing,
      dagStartTime = Core.Nothing,
      dagTimeout = Core.Nothing,
      deleteCluster = Core.Nothing,
      endTime = Core.Nothing,
      graph = Core.Nothing,
      parameters = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      template = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON WorkflowMetadata where
  parseJSON =
    Core.withObject
      "WorkflowMetadata"
      ( \o ->
          WorkflowMetadata
            Core.<$> (o Core..:? "clusterName")
            Core.<*> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "createCluster")
            Core.<*> (o Core..:? "dagEndTime")
            Core.<*> (o Core..:? "dagStartTime")
            Core.<*> (o Core..:? "dagTimeout")
            Core.<*> (o Core..:? "deleteCluster")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "graph")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "template")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON WorkflowMetadata where
  toJSON WorkflowMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterName" Core..=) Core.<$> clusterName,
            ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("createCluster" Core..=) Core.<$> createCluster,
            ("dagEndTime" Core..=) Core.<$> dagEndTime,
            ("dagStartTime" Core..=) Core.<$> dagStartTime,
            ("dagTimeout" Core..=) Core.<$> dagTimeout,
            ("deleteCluster" Core..=) Core.<$> deleteCluster,
            ("endTime" Core..=) Core.<$> endTime,
            ("graph" Core..=) Core.<$> graph,
            ("parameters" Core..=) Core.<$> parameters,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("template" Core..=) Core.<$> template,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Map from parameter names to values that were used for those parameters.
--
-- /See:/ 'newWorkflowMetadata_Parameters' smart constructor.
newtype WorkflowMetadata_Parameters = WorkflowMetadata_Parameters
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowMetadata_Parameters' with the minimum fields required to make a request.
newWorkflowMetadata_Parameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WorkflowMetadata_Parameters
newWorkflowMetadata_Parameters additional =
  WorkflowMetadata_Parameters {additional = additional}

instance Core.FromJSON WorkflowMetadata_Parameters where
  parseJSON =
    Core.withObject
      "WorkflowMetadata_Parameters"
      ( \o ->
          WorkflowMetadata_Parameters Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkflowMetadata_Parameters where
  toJSON WorkflowMetadata_Parameters {..} = Core.toJSON additional

-- | The workflow node.
--
-- /See:/ 'newWorkflowNode' smart constructor.
data WorkflowNode = WorkflowNode
  { -- | Output only. The error detail.
    error :: (Core.Maybe Core.Text),
    -- | Output only. The job id; populated after the node enters RUNNING state.
    jobId :: (Core.Maybe Core.Text),
    -- | Output only. Node\'s prerequisite nodes.
    prerequisiteStepIds :: (Core.Maybe [Core.Text]),
    -- | Output only. The node state.
    state :: (Core.Maybe WorkflowNode_State),
    -- | Output only. The name of the node.
    stepId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowNode' with the minimum fields required to make a request.
newWorkflowNode ::
  WorkflowNode
newWorkflowNode =
  WorkflowNode
    { error = Core.Nothing,
      jobId = Core.Nothing,
      prerequisiteStepIds = Core.Nothing,
      state = Core.Nothing,
      stepId = Core.Nothing
    }

instance Core.FromJSON WorkflowNode where
  parseJSON =
    Core.withObject
      "WorkflowNode"
      ( \o ->
          WorkflowNode
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "jobId")
            Core.<*> (o Core..:? "prerequisiteStepIds")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stepId")
      )

instance Core.ToJSON WorkflowNode where
  toJSON WorkflowNode {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("jobId" Core..=) Core.<$> jobId,
            ("prerequisiteStepIds" Core..=) Core.<$> prerequisiteStepIds,
            ("state" Core..=) Core.<$> state,
            ("stepId" Core..=) Core.<$> stepId
          ]
      )

-- | A Dataproc workflow template resource.
--
-- /See:/ 'newWorkflowTemplate' smart constructor.
data WorkflowTemplate = WorkflowTemplate
  { -- | Output only. The time template was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)). The timeout duration must be from 10 minutes (\"600s\") to 24 hours (\"86400s\"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
    dagTimeout :: (Core.Maybe Core.Duration),
    -- | Optional. Encryption settings for encrypting workflow template job arguments.
    encryptionConfig :: (Core.Maybe GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig),
    id :: (Core.Maybe Core.Text),
    -- | Required. The Directed Acyclic Graph of Jobs to submit.
    jobs :: (Core.Maybe [OrderedJob]),
    -- | Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).No more than 32 labels can be associated with a template.
    labels :: (Core.Maybe WorkflowTemplate_Labels),
    -- | Output only. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id}
    name :: (Core.Maybe Core.Text),
    -- | Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
    parameters :: (Core.Maybe [TemplateParameter]),
    -- | Required. WorkflowTemplate scheduling information.
    placement :: (Core.Maybe WorkflowTemplatePlacement),
    -- | Output only. The time template was last updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowTemplate' with the minimum fields required to make a request.
newWorkflowTemplate ::
  WorkflowTemplate
newWorkflowTemplate =
  WorkflowTemplate
    { createTime = Core.Nothing,
      dagTimeout = Core.Nothing,
      encryptionConfig = Core.Nothing,
      id = Core.Nothing,
      jobs = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      parameters = Core.Nothing,
      placement = Core.Nothing,
      updateTime = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON WorkflowTemplate where
  parseJSON =
    Core.withObject
      "WorkflowTemplate"
      ( \o ->
          WorkflowTemplate
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "dagTimeout")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "jobs")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "placement")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON WorkflowTemplate where
  toJSON WorkflowTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("dagTimeout" Core..=) Core.<$> dagTimeout,
            ("encryptionConfig" Core..=) Core.<$> encryptionConfig,
            ("id" Core..=) Core.<$> id,
            ("jobs" Core..=) Core.<$> jobs,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("parameters" Core..=) Core.<$> parameters,
            ("placement" Core..=) Core.<$> placement,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).No more than 32 labels can be associated with a template.
--
-- /See:/ 'newWorkflowTemplate_Labels' smart constructor.
newtype WorkflowTemplate_Labels = WorkflowTemplate_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowTemplate_Labels' with the minimum fields required to make a request.
newWorkflowTemplate_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WorkflowTemplate_Labels
newWorkflowTemplate_Labels additional =
  WorkflowTemplate_Labels {additional = additional}

instance Core.FromJSON WorkflowTemplate_Labels where
  parseJSON =
    Core.withObject
      "WorkflowTemplate_Labels"
      (\o -> WorkflowTemplate_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON WorkflowTemplate_Labels where
  toJSON WorkflowTemplate_Labels {..} = Core.toJSON additional

-- | Specifies workflow execution target.Either managed/cluster or cluster/selector is required.
--
-- /See:/ 'newWorkflowTemplatePlacement' smart constructor.
data WorkflowTemplatePlacement = WorkflowTemplatePlacement
  { -- | Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
    clusterSelector :: (Core.Maybe ClusterSelector),
    -- | A cluster that is managed by the workflow.
    managedCluster :: (Core.Maybe ManagedCluster)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowTemplatePlacement' with the minimum fields required to make a request.
newWorkflowTemplatePlacement ::
  WorkflowTemplatePlacement
newWorkflowTemplatePlacement =
  WorkflowTemplatePlacement
    { clusterSelector = Core.Nothing,
      managedCluster = Core.Nothing
    }

instance Core.FromJSON WorkflowTemplatePlacement where
  parseJSON =
    Core.withObject
      "WorkflowTemplatePlacement"
      ( \o ->
          WorkflowTemplatePlacement
            Core.<$> (o Core..:? "clusterSelector")
            Core.<*> (o Core..:? "managedCluster")
      )

instance Core.ToJSON WorkflowTemplatePlacement where
  toJSON WorkflowTemplatePlacement {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterSelector" Core..=) Core.<$> clusterSelector,
            ("managedCluster" Core..=) Core.<$> managedCluster
          ]
      )

-- | Write Spark Application data to internal storage systems
--
-- /See:/ 'newWriteSessionSparkApplicationContextRequest' smart constructor.
data WriteSessionSparkApplicationContextRequest = WriteSessionSparkApplicationContextRequest
  { -- | Required. Parent (Batch) resource reference.
    parent :: (Core.Maybe Core.Text),
    -- | Required. The batch of spark application context objects sent for ingestion.
    sparkWrapperObjects :: (Core.Maybe [SparkWrapperObject])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteSessionSparkApplicationContextRequest' with the minimum fields required to make a request.
newWriteSessionSparkApplicationContextRequest ::
  WriteSessionSparkApplicationContextRequest
newWriteSessionSparkApplicationContextRequest =
  WriteSessionSparkApplicationContextRequest
    { parent = Core.Nothing,
      sparkWrapperObjects = Core.Nothing
    }

instance Core.FromJSON WriteSessionSparkApplicationContextRequest where
  parseJSON =
    Core.withObject
      "WriteSessionSparkApplicationContextRequest"
      ( \o ->
          WriteSessionSparkApplicationContextRequest
            Core.<$> (o Core..:? "parent")
            Core.<*> (o Core..:? "sparkWrapperObjects")
      )

instance Core.ToJSON WriteSessionSparkApplicationContextRequest where
  toJSON WriteSessionSparkApplicationContextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("parent" Core..=) Core.<$> parent,
            ("sparkWrapperObjects" Core..=) Core.<$> sparkWrapperObjects
          ]
      )

-- | Response returned as an acknowledgement of receipt of data.
--
-- /See:/ 'newWriteSessionSparkApplicationContextResponse' smart constructor.
data WriteSessionSparkApplicationContextResponse = WriteSessionSparkApplicationContextResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteSessionSparkApplicationContextResponse' with the minimum fields required to make a request.
newWriteSessionSparkApplicationContextResponse ::
  WriteSessionSparkApplicationContextResponse
newWriteSessionSparkApplicationContextResponse =
  WriteSessionSparkApplicationContextResponse

instance Core.FromJSON WriteSessionSparkApplicationContextResponse where
  parseJSON =
    Core.withObject
      "WriteSessionSparkApplicationContextResponse"
      (\o -> Core.pure WriteSessionSparkApplicationContextResponse)

instance Core.ToJSON WriteSessionSparkApplicationContextResponse where
  toJSON = Core.const Core.emptyObject

-- | Write Spark Application data to internal storage systems
--
-- /See:/ 'newWriteSparkApplicationContextRequest' smart constructor.
data WriteSparkApplicationContextRequest = WriteSparkApplicationContextRequest
  { -- | Required. Parent (Batch) resource reference.
    parent :: (Core.Maybe Core.Text),
    sparkWrapperObjects :: (Core.Maybe [SparkWrapperObject])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteSparkApplicationContextRequest' with the minimum fields required to make a request.
newWriteSparkApplicationContextRequest ::
  WriteSparkApplicationContextRequest
newWriteSparkApplicationContextRequest =
  WriteSparkApplicationContextRequest
    { parent = Core.Nothing,
      sparkWrapperObjects = Core.Nothing
    }

instance Core.FromJSON WriteSparkApplicationContextRequest where
  parseJSON =
    Core.withObject
      "WriteSparkApplicationContextRequest"
      ( \o ->
          WriteSparkApplicationContextRequest
            Core.<$> (o Core..:? "parent")
            Core.<*> (o Core..:? "sparkWrapperObjects")
      )

instance Core.ToJSON WriteSparkApplicationContextRequest where
  toJSON WriteSparkApplicationContextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("parent" Core..=) Core.<$> parent,
            ("sparkWrapperObjects" Core..=) Core.<$> sparkWrapperObjects
          ]
      )

-- | Response returned as an acknowledgement of receipt of data.
--
-- /See:/ 'newWriteSparkApplicationContextResponse' smart constructor.
data WriteSparkApplicationContextResponse = WriteSparkApplicationContextResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteSparkApplicationContextResponse' with the minimum fields required to make a request.
newWriteSparkApplicationContextResponse ::
  WriteSparkApplicationContextResponse
newWriteSparkApplicationContextResponse =
  WriteSparkApplicationContextResponse

instance Core.FromJSON WriteSparkApplicationContextResponse where
  parseJSON =
    Core.withObject
      "WriteSparkApplicationContextResponse"
      (\o -> Core.pure WriteSparkApplicationContextResponse)

instance Core.ToJSON WriteSparkApplicationContextResponse where
  toJSON = Core.const Core.emptyObject

-- | A YARN application created by a job. Application information is a subset of org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
--
-- /See:/ 'newYarnApplication' smart constructor.
data YarnApplication = YarnApplication
  { -- | Required. The application name.
    name :: (Core.Maybe Core.Text),
    -- | Required. The numerical progress of the application, from 1 to 100.
    progress :: (Core.Maybe Core.Double),
    -- | Required. The application state.
    state :: (Core.Maybe YarnApplication_State),
    -- | Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides application-specific information. The URL uses the internal hostname, and requires a proxy server for resolution and, possibly, access.
    trackingUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YarnApplication' with the minimum fields required to make a request.
newYarnApplication ::
  YarnApplication
newYarnApplication =
  YarnApplication
    { name = Core.Nothing,
      progress = Core.Nothing,
      state = Core.Nothing,
      trackingUrl = Core.Nothing
    }

instance Core.FromJSON YarnApplication where
  parseJSON =
    Core.withObject
      "YarnApplication"
      ( \o ->
          YarnApplication
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "trackingUrl")
      )

instance Core.ToJSON YarnApplication where
  toJSON YarnApplication {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("progress" Core..=) Core.<$> progress,
            ("state" Core..=) Core.<$> state,
            ("trackingUrl" Core..=) Core.<$> trackingUrl
          ]
      )
