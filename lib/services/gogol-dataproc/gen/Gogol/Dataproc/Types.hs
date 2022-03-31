{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataproc.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- ** AutoscalingConfig
    AutoscalingConfig (..),
    newAutoscalingConfig,

    -- ** AutoscalingPolicy
    AutoscalingPolicy (..),
    newAutoscalingPolicy,

    -- ** AutoscalingPolicy_Labels
    AutoscalingPolicy_Labels (..),
    newAutoscalingPolicy_Labels,

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

    -- ** ConfidentialInstanceConfig
    ConfidentialInstanceConfig (..),
    newConfidentialInstanceConfig,

    -- ** DataprocMetricConfig
    DataprocMetricConfig (..),
    newDataprocMetricConfig,

    -- ** DiagnoseClusterRequest
    DiagnoseClusterRequest (..),
    newDiagnoseClusterRequest,

    -- ** DiagnoseClusterResults
    DiagnoseClusterResults (..),
    newDiagnoseClusterResults,

    -- ** DiskConfig
    DiskConfig (..),
    newDiskConfig,

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

    -- ** Expr
    Expr (..),
    newExpr,

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

    -- ** InstantiateWorkflowTemplateRequest
    InstantiateWorkflowTemplateRequest (..),
    newInstantiateWorkflowTemplateRequest,

    -- ** InstantiateWorkflowTemplateRequest_Parameters
    InstantiateWorkflowTemplateRequest_Parameters (..),
    newInstantiateWorkflowTemplateRequest_Parameters,

    -- ** Job
    Job (..),
    newJob,

    -- ** Job_Labels
    Job_Labels (..),
    newJob_Labels,

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

    -- ** KerberosConfig
    KerberosConfig (..),
    newKerberosConfig,

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

    -- ** NodeGroupAffinity
    NodeGroupAffinity (..),
    newNodeGroupAffinity,

    -- ** NodeInitializationAction
    NodeInitializationAction (..),
    newNodeInitializationAction,

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

    -- ** PrestoJob
    PrestoJob (..),
    newPrestoJob,

    -- ** PrestoJob_Properties
    PrestoJob_Properties (..),
    newPrestoJob_Properties,

    -- ** PySparkBatch
    PySparkBatch (..),
    newPySparkBatch,

    -- ** PySparkJob
    PySparkJob (..),
    newPySparkJob,

    -- ** PySparkJob_Properties
    PySparkJob_Properties (..),
    newPySparkJob_Properties,

    -- ** QueryList
    QueryList (..),
    newQueryList,

    -- ** RegexValidation
    RegexValidation (..),
    newRegexValidation,

    -- ** RepairClusterRequest
    RepairClusterRequest (..),
    newRepairClusterRequest,

    -- ** ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

    -- ** ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType (..),

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

    -- ** SecurityConfig
    SecurityConfig (..),
    newSecurityConfig,

    -- ** SessionOperationMetadata
    SessionOperationMetadata (..),
    newSessionOperationMetadata,

    -- ** SessionOperationMetadata_Labels
    SessionOperationMetadata_Labels (..),
    newSessionOperationMetadata_Labels,

    -- ** SessionOperationMetadata_OperationType
    SessionOperationMetadata_OperationType (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- ** SoftwareConfig
    SoftwareConfig (..),
    newSoftwareConfig,

    -- ** SoftwareConfig_OptionalComponentsItem
    SoftwareConfig_OptionalComponentsItem (..),

    -- ** SoftwareConfig_Properties
    SoftwareConfig_Properties (..),
    newSoftwareConfig_Properties,

    -- ** SparkBatch
    SparkBatch (..),
    newSparkBatch,

    -- ** SparkHistoryServerConfig
    SparkHistoryServerConfig (..),
    newSparkHistoryServerConfig,

    -- ** SparkJob
    SparkJob (..),
    newSparkJob,

    -- ** SparkJob_Properties
    SparkJob_Properties (..),
    newSparkJob_Properties,

    -- ** SparkRBatch
    SparkRBatch (..),
    newSparkRBatch,

    -- ** SparkRJob
    SparkRJob (..),
    newSparkRJob,

    -- ** SparkRJob_Properties
    SparkRJob_Properties (..),
    newSparkRJob_Properties,

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

    -- ** StartClusterRequest
    StartClusterRequest (..),
    newStartClusterRequest,

    -- ** StateHistory
    StateHistory (..),
    newStateHistory,

    -- ** StateHistory_State
    StateHistory_State (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StopClusterRequest
    StopClusterRequest (..),
    newStopClusterRequest,

    -- ** SubmitJobRequest
    SubmitJobRequest (..),
    newSubmitJobRequest,

    -- ** TemplateParameter
    TemplateParameter (..),
    newTemplateParameter,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** ValueValidation
    ValueValidation (..),
    newValueValidation,

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

    -- ** YarnApplication
    YarnApplication (..),
    newYarnApplication,

    -- ** YarnApplication_State
    YarnApplication_State (..),

    -- ** ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
    ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers (..),

    -- ** ProjectsRegionsJobsListJobStateMatcher
    ProjectsRegionsJobsListJobStateMatcher (..),
  )
where

import Gogol.Dataproc.Internal.Product
import Gogol.Dataproc.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Dataproc API. This contains the host and root path used as a starting point for constructing service requests.
dataprocService :: Core.ServiceConfig
dataprocService =
  Core.defaultService
    (Core.ServiceId "dataproc:v1")
    "dataproc.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
