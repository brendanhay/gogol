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
-- Module      : Gogol.Dataproc.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataproc.Internal.Product
  ( -- * AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- * AutoscalingConfig
    AutoscalingConfig (..),
    newAutoscalingConfig,

    -- * AutoscalingPolicy
    AutoscalingPolicy (..),
    newAutoscalingPolicy,

    -- * AutoscalingPolicy_Labels
    AutoscalingPolicy_Labels (..),
    newAutoscalingPolicy_Labels,

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

    -- * ConfidentialInstanceConfig
    ConfidentialInstanceConfig (..),
    newConfidentialInstanceConfig,

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

    -- * Expr
    Expr (..),
    newExpr,

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

    -- * InstanceGroupAutoscalingPolicyConfig
    InstanceGroupAutoscalingPolicyConfig (..),
    newInstanceGroupAutoscalingPolicyConfig,

    -- * InstanceGroupConfig
    InstanceGroupConfig (..),
    newInstanceGroupConfig,

    -- * InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- * InstantiateWorkflowTemplateRequest
    InstantiateWorkflowTemplateRequest (..),
    newInstantiateWorkflowTemplateRequest,

    -- * InstantiateWorkflowTemplateRequest_Parameters
    InstantiateWorkflowTemplateRequest_Parameters (..),
    newInstantiateWorkflowTemplateRequest_Parameters,

    -- * Job
    Job (..),
    newJob,

    -- * Job_Labels
    Job_Labels (..),
    newJob_Labels,

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

    -- * KerberosConfig
    KerberosConfig (..),
    newKerberosConfig,

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

    -- * MetastoreConfig
    MetastoreConfig (..),
    newMetastoreConfig,

    -- * Metric
    Metric (..),
    newMetric,

    -- * NamespacedGkeDeploymentTarget
    NamespacedGkeDeploymentTarget (..),
    newNamespacedGkeDeploymentTarget,

    -- * NodeGroupAffinity
    NodeGroupAffinity (..),
    newNodeGroupAffinity,

    -- * NodeInitializationAction
    NodeInitializationAction (..),
    newNodeInitializationAction,

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

    -- * PrestoJob
    PrestoJob (..),
    newPrestoJob,

    -- * PrestoJob_Properties
    PrestoJob_Properties (..),
    newPrestoJob_Properties,

    -- * PySparkBatch
    PySparkBatch (..),
    newPySparkBatch,

    -- * PySparkJob
    PySparkJob (..),
    newPySparkJob,

    -- * PySparkJob_Properties
    PySparkJob_Properties (..),
    newPySparkJob_Properties,

    -- * QueryList
    QueryList (..),
    newQueryList,

    -- * RegexValidation
    RegexValidation (..),
    newRegexValidation,

    -- * RepairClusterRequest
    RepairClusterRequest (..),
    newRepairClusterRequest,

    -- * ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

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

    -- * SecurityConfig
    SecurityConfig (..),
    newSecurityConfig,

    -- * SessionOperationMetadata
    SessionOperationMetadata (..),
    newSessionOperationMetadata,

    -- * SessionOperationMetadata_Labels
    SessionOperationMetadata_Labels (..),
    newSessionOperationMetadata_Labels,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- * SoftwareConfig
    SoftwareConfig (..),
    newSoftwareConfig,

    -- * SoftwareConfig_Properties
    SoftwareConfig_Properties (..),
    newSoftwareConfig_Properties,

    -- * SparkBatch
    SparkBatch (..),
    newSparkBatch,

    -- * SparkHistoryServerConfig
    SparkHistoryServerConfig (..),
    newSparkHistoryServerConfig,

    -- * SparkJob
    SparkJob (..),
    newSparkJob,

    -- * SparkJob_Properties
    SparkJob_Properties (..),
    newSparkJob_Properties,

    -- * SparkRBatch
    SparkRBatch (..),
    newSparkRBatch,

    -- * SparkRJob
    SparkRJob (..),
    newSparkRJob,

    -- * SparkRJob_Properties
    SparkRJob_Properties (..),
    newSparkRJob_Properties,

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

    -- * StartClusterRequest
    StartClusterRequest (..),
    newStartClusterRequest,

    -- * StateHistory
    StateHistory (..),
    newStateHistory,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StopClusterRequest
    StopClusterRequest (..),
    newStopClusterRequest,

    -- * SubmitJobRequest
    SubmitJobRequest (..),
    newSubmitJobRequest,

    -- * TemplateParameter
    TemplateParameter (..),
    newTemplateParameter,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * ValueValidation
    ValueValidation (..),
    newValueValidation,

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

    -- * YarnApplication
    YarnApplication (..),
    newYarnApplication,
  )
where

import Gogol.Dataproc.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Specifies the type and number of accelerator cards attached to the instances of an instance. See GPUs on Compute Engine (https:\/\/cloud.google.com\/compute\/docs\/gpus\/).
--
-- /See:/ 'newAcceleratorConfig' smart constructor.
data AcceleratorConfig = AcceleratorConfig
  { -- | The number of the accelerator cards of this type exposed to this instance.
    acceleratorCount :: (Core.Maybe Core.Int32),
    -- | Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https:\/\/cloud.google.com\/compute\/docs\/reference\/beta\/acceleratorTypes).Examples: https:\/\/www.googleapis.com\/compute\/beta\/projects\/[project/id]\/zones\/us-east1-a\/acceleratorTypes\/nvidia-tesla-k80 projects\/[project/id]\/zones\/us-east1-a\/acceleratorTypes\/nvidia-tesla-k80 nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/auto-zone#using/auto/zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
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
          [ ("acceleratorCount" Core..=)
              Core.<$> acceleratorCount,
            ("acceleratorTypeUri" Core..=)
              Core.<$> acceleratorTypeUri
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
      ( \o ->
          AutoscalingConfig Core.<$> (o Core..:? "policyUri")
      )

instance Core.ToJSON AutoscalingConfig where
  toJSON AutoscalingConfig {..} =
    Core.object
      ( Core.catMaybes
          [("policyUri" Core..=) Core.<$> policyUri]
      )

-- | Describes an autoscaling policy for Dataproc cluster autoscaler.
--
-- /See:/ 'newAutoscalingPolicy' smart constructor.
data AutoscalingPolicy = AutoscalingPolicy
  { -- |
    basicAlgorithm :: (Core.Maybe BasicAutoscalingAlgorithm),
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
            ("secondaryWorkerConfig" Core..=)
              Core.<$> secondaryWorkerConfig,
            ("workerConfig" Core..=) Core.<$> workerConfig
          ]
      )

-- | Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
--
-- /See:/ 'newAutoscalingPolicy_Labels' smart constructor.
newtype AutoscalingPolicy_Labels = AutoscalingPolicy_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoscalingPolicy_Labels' with the minimum fields required to make a request.
newAutoscalingPolicy_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  AutoscalingPolicy_Labels
newAutoscalingPolicy_Labels addtional =
  AutoscalingPolicy_Labels {addtional = addtional}

instance Core.FromJSON AutoscalingPolicy_Labels where
  parseJSON =
    Core.withObject
      "AutoscalingPolicy_Labels"
      ( \o ->
          AutoscalingPolicy_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON AutoscalingPolicy_Labels where
  toJSON AutoscalingPolicy_Labels {..} =
    Core.toJSON addtional

-- | Basic algorithm for autoscaling.
--
-- /See:/ 'newBasicAutoscalingAlgorithm' smart constructor.
data BasicAutoscalingAlgorithm = BasicAutoscalingAlgorithm
  { -- | Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
    cooldownPeriod :: (Core.Maybe Core.GDuration),
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
            ("sparkStandaloneConfig" Core..=)
              Core.<$> sparkStandaloneConfig,
            ("yarnConfig" Core..=) Core.<$> yarnConfig
          ]
      )

-- | Basic autoscaling configurations for YARN.
--
-- /See:/ 'newBasicYarnAutoscalingConfig' smart constructor.
data BasicYarnAutoscalingConfig = BasicYarnAutoscalingConfig
  { -- | Required. Timeout for YARN graceful decommissioning of Node Managers. Specifies the duration to wait for jobs to complete before forcefully removing workers (and potentially interrupting jobs). Only applicable to downscaling operations.Bounds: 0s, 1d.
    gracefulDecommissionTimeout :: (Core.Maybe Core.GDuration),
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
    { gracefulDecommissionTimeout = Core.Nothing,
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
    createTime :: (Core.Maybe Core.DateTime'),
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
    stateTime :: (Core.Maybe Core.DateTime'),
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
            Core.<*> (o Core..:? "stateHistory" Core..!= Core.mempty)
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
            ("environmentConfig" Core..=)
              Core.<$> environmentConfig,
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Batch_Labels' with the minimum fields required to make a request.
newBatch_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Batch_Labels
newBatch_Labels addtional = Batch_Labels {addtional = addtional}

instance Core.FromJSON Batch_Labels where
  parseJSON =
    Core.withObject
      "Batch_Labels"
      ( \o ->
          Batch_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Batch_Labels where
  toJSON Batch_Labels {..} = Core.toJSON addtional

-- | Metadata describing the Batch operation.
--
-- /See:/ 'newBatchOperationMetadata' smart constructor.
data BatchOperationMetadata = BatchOperationMetadata
  { -- | Name of the batch for the operation.
    batch :: (Core.Maybe Core.Text),
    -- | Batch UUID for the operation.
    batchUuid :: (Core.Maybe Core.Text),
    -- | The time when the operation was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Short description of the operation.
    description :: (Core.Maybe Core.Text),
    -- | The time when the operation finished.
    doneTime :: (Core.Maybe Core.DateTime'),
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
            Core.<*> (o Core..:? "warnings" Core..!= Core.mempty)
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchOperationMetadata_Labels' with the minimum fields required to make a request.
newBatchOperationMetadata_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  BatchOperationMetadata_Labels
newBatchOperationMetadata_Labels addtional =
  BatchOperationMetadata_Labels {addtional = addtional}

instance Core.FromJSON BatchOperationMetadata_Labels where
  parseJSON =
    Core.withObject
      "BatchOperationMetadata_Labels"
      ( \o ->
          BatchOperationMetadata_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BatchOperationMetadata_Labels where
  toJSON BatchOperationMetadata_Labels {..} =
    Core.toJSON addtional

-- | Associates members, or principals, with a role.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding.If the condition evaluates to true, then this binding applies to the current request.If the condition evaluates to false, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding.To learn which resources support conditions in their IAM policies, see the IAM documentation (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. members can have the following values: allUsers: A special identifier that represents anyone who is on the internet; with or without a Google account. allAuthenticatedUsers: A special identifier that represents anyone who is authenticated with a Google account or a service account. user:{emailid}: An email address that represents a specific Google account. For example, alice\@example.com . serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app\@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group. For example, admins\@example.com. deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a user that has been recently deleted. For example, alice\@example.com?uid=123456789012345678901. If the user is recovered, this value reverts to user:{emailid} and the recovered user retains the role in the binding.
    -- deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901. If the service account is undeleted, this value reverts to serviceAccount:{emailid} and the undeleted service account retains the role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, admins\@example.com?uid=123456789012345678901. If the group is recovered, this value reverts to group:{emailid} and the recovered group retains the role in the binding. domain:{domain}: The G Suite domain (primary) that represents all the users of that domain. For example, google.com or example.com.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of members, or principals. For example, roles\/viewer, roles\/editor, or roles\/owner.
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
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
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
  { -- | Required. The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
    clusterName :: (Core.Maybe Core.Text),
    -- | Output only. A cluster UUID (Unique Universal Identifier). Dataproc generates this value when it creates the cluster.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.
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
    statusHistory :: (Core.Maybe [ClusterStatus])
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
      statusHistory = Core.Nothing
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
            Core.<*> (o Core..:? "statusHistory" Core..!= Core.mempty)
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
            ("statusHistory" Core..=) Core.<$> statusHistory
          ]
      )

-- | Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a cluster.
--
-- /See:/ 'newCluster_Labels' smart constructor.
newtype Cluster_Labels = Cluster_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster_Labels' with the minimum fields required to make a request.
newCluster_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Cluster_Labels
newCluster_Labels addtional = Cluster_Labels {addtional = addtional}

instance Core.FromJSON Cluster_Labels where
  parseJSON =
    Core.withObject
      "Cluster_Labels"
      ( \o ->
          Cluster_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Cluster_Labels where
  toJSON Cluster_Labels {..} = Core.toJSON addtional

-- | The cluster config.
--
-- /See:/ 'newClusterConfig' smart constructor.
data ClusterConfig = ClusterConfig
  { -- | Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
    autoscalingConfig :: (Core.Maybe AutoscalingConfig),
    -- | Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster\'s staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs:\/\/... URI to a Cloud Storage bucket.
    configBucket :: (Core.Maybe Core.Text),
    -- | Optional. The configuration(s) for a dataproc metric(s).
    dataprocMetricConfig :: (Core.Maybe DataprocMetricConfig),
    -- | Optional. Encryption settings for the cluster.
    encryptionConfig :: (Core.Maybe EncryptionConfig),
    -- | Optional. Port\/endpoint configuration for this cluster
    endpointConfig :: (Core.Maybe EndpointConfig),
    -- | Optional. The shared Compute Engine config settings for all instances in a cluster.
    gceClusterConfig :: (Core.Maybe GceClusterConfig),
    -- | Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce/cluster/config, master/config, worker/config, secondary/worker/config, and autoscaling_config.
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
            Core.<*> (o Core..:? "configBucket")
            Core.<*> (o Core..:? "dataprocMetricConfig")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "endpointConfig")
            Core.<*> (o Core..:? "gceClusterConfig")
            Core.<*> (o Core..:? "gkeClusterConfig")
            Core.<*> ( o Core..:? "initializationActions"
                         Core..!= Core.mempty
                     )
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
          [ ("autoscalingConfig" Core..=)
              Core.<$> autoscalingConfig,
            ("configBucket" Core..=) Core.<$> configBucket,
            ("dataprocMetricConfig" Core..=)
              Core.<$> dataprocMetricConfig,
            ("encryptionConfig" Core..=)
              Core.<$> encryptionConfig,
            ("endpointConfig" Core..=) Core.<$> endpointConfig,
            ("gceClusterConfig" Core..=)
              Core.<$> gceClusterConfig,
            ("gkeClusterConfig" Core..=)
              Core.<$> gkeClusterConfig,
            ("initializationActions" Core..=)
              Core.<$> initializationActions,
            ("lifecycleConfig" Core..=) Core.<$> lifecycleConfig,
            ("masterConfig" Core..=) Core.<$> masterConfig,
            ("metastoreConfig" Core..=) Core.<$> metastoreConfig,
            ("secondaryWorkerConfig" Core..=)
              Core.<$> secondaryWorkerConfig,
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
    -- | The YARN metrics.
    yarnMetrics :: (Core.Maybe ClusterMetrics_YarnMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMetrics' with the minimum fields required to make a request.
newClusterMetrics ::
  ClusterMetrics
newClusterMetrics =
  ClusterMetrics {hdfsMetrics = Core.Nothing, yarnMetrics = Core.Nothing}

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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMetrics_HdfsMetrics' with the minimum fields required to make a request.
newClusterMetrics_HdfsMetrics ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int64 ->
  ClusterMetrics_HdfsMetrics
newClusterMetrics_HdfsMetrics addtional =
  ClusterMetrics_HdfsMetrics {addtional = addtional}

instance Core.FromJSON ClusterMetrics_HdfsMetrics where
  parseJSON =
    Core.withObject
      "ClusterMetrics_HdfsMetrics"
      ( \o ->
          ClusterMetrics_HdfsMetrics
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterMetrics_HdfsMetrics where
  toJSON ClusterMetrics_HdfsMetrics {..} =
    Core.toJSON addtional

-- | The YARN metrics.
--
-- /See:/ 'newClusterMetrics_YarnMetrics' smart constructor.
newtype ClusterMetrics_YarnMetrics = ClusterMetrics_YarnMetrics
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterMetrics_YarnMetrics' with the minimum fields required to make a request.
newClusterMetrics_YarnMetrics ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int64 ->
  ClusterMetrics_YarnMetrics
newClusterMetrics_YarnMetrics addtional =
  ClusterMetrics_YarnMetrics {addtional = addtional}

instance Core.FromJSON ClusterMetrics_YarnMetrics where
  parseJSON =
    Core.withObject
      "ClusterMetrics_YarnMetrics"
      ( \o ->
          ClusterMetrics_YarnMetrics
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterMetrics_YarnMetrics where
  toJSON ClusterMetrics_YarnMetrics {..} =
    Core.toJSON addtional

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
  { -- | Output only. Name of the cluster for the operation.
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
    { clusterName = Core.Nothing,
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
            Core.<$> (o Core..:? "clusterName")
            Core.<*> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusHistory" Core..!= Core.mempty)
            Core.<*> (o Core..:? "warnings" Core..!= Core.mempty)
      )

instance Core.ToJSON ClusterOperationMetadata where
  toJSON ClusterOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterName" Core..=) Core.<$> clusterName,
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterOperationMetadata_Labels' with the minimum fields required to make a request.
newClusterOperationMetadata_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  ClusterOperationMetadata_Labels
newClusterOperationMetadata_Labels addtional =
  ClusterOperationMetadata_Labels {addtional = addtional}

instance
  Core.FromJSON
    ClusterOperationMetadata_Labels
  where
  parseJSON =
    Core.withObject
      "ClusterOperationMetadata_Labels"
      ( \o ->
          ClusterOperationMetadata_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterOperationMetadata_Labels where
  toJSON ClusterOperationMetadata_Labels {..} =
    Core.toJSON addtional

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
    stateStartTime :: (Core.Maybe Core.DateTime')
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
  ClusterSelector {clusterLabels = Core.Nothing, zone = Core.Nothing}

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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterSelector_ClusterLabels' with the minimum fields required to make a request.
newClusterSelector_ClusterLabels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  ClusterSelector_ClusterLabels
newClusterSelector_ClusterLabels addtional =
  ClusterSelector_ClusterLabels {addtional = addtional}

instance Core.FromJSON ClusterSelector_ClusterLabels where
  parseJSON =
    Core.withObject
      "ClusterSelector_ClusterLabels"
      ( \o ->
          ClusterSelector_ClusterLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ClusterSelector_ClusterLabels where
  toJSON ClusterSelector_ClusterLabels {..} =
    Core.toJSON addtional

-- | The status of a cluster and its instances.
--
-- /See:/ 'newClusterStatus' smart constructor.
data ClusterStatus = ClusterStatus
  { -- | Optional. Output only. Details of cluster\'s state.
    detail :: (Core.Maybe Core.Text),
    -- | Output only. The cluster\'s state.
    state :: (Core.Maybe ClusterStatus_State),
    -- | Output only. Time when this state was entered (see JSON representation of Timestamp (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    stateStartTime :: (Core.Maybe Core.DateTime'),
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
  ConfidentialInstanceConfig {enableConfidentialCompute = Core.Nothing}

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

-- | Contains dataproc metric config.
--
-- /See:/ 'newDataprocMetricConfig' smart constructor.
newtype DataprocMetricConfig = DataprocMetricConfig
  { -- | Required. Metrics to be enabled.
    metrics :: (Core.Maybe [Metric])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocMetricConfig' with the minimum fields required to make a request.
newDataprocMetricConfig ::
  DataprocMetricConfig
newDataprocMetricConfig = DataprocMetricConfig {metrics = Core.Nothing}

instance Core.FromJSON DataprocMetricConfig where
  parseJSON =
    Core.withObject
      "DataprocMetricConfig"
      ( \o ->
          DataprocMetricConfig
            Core.<$> (o Core..:? "metrics" Core..!= Core.mempty)
      )

instance Core.ToJSON DataprocMetricConfig where
  toJSON DataprocMetricConfig {..} =
    Core.object
      ( Core.catMaybes
          [("metrics" Core..=) Core.<$> metrics]
      )

-- | A request to collect cluster diagnostic information.
--
-- /See:/ 'newDiagnoseClusterRequest' smart constructor.
data DiagnoseClusterRequest = DiagnoseClusterRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiagnoseClusterRequest' with the minimum fields required to make a request.
newDiagnoseClusterRequest ::
  DiagnoseClusterRequest
newDiagnoseClusterRequest = DiagnoseClusterRequest

instance Core.FromJSON DiagnoseClusterRequest where
  parseJSON =
    Core.withObject
      "DiagnoseClusterRequest"
      (\o -> Core.pure DiagnoseClusterRequest)

instance Core.ToJSON DiagnoseClusterRequest where
  toJSON = Core.const Core.emptyObject

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
newDiagnoseClusterResults = DiagnoseClusterResults {outputUri = Core.Nothing}

instance Core.FromJSON DiagnoseClusterResults where
  parseJSON =
    Core.withObject
      "DiagnoseClusterResults"
      ( \o ->
          DiagnoseClusterResults
            Core.<$> (o Core..:? "outputUri")
      )

instance Core.ToJSON DiagnoseClusterResults where
  toJSON DiagnoseClusterResults {..} =
    Core.object
      ( Core.catMaybes
          [("outputUri" Core..=) Core.<$> outputUri]
      )

-- | Specifies the config of disk options for a group of VM instances.
--
-- /See:/ 'newDiskConfig' smart constructor.
data DiskConfig = DiskConfig
  { -- | Optional. Size in GB of the boot disk (default is 500GB).
    bootDiskSizeGb :: (Core.Maybe Core.Int32),
    -- | Optional. Type of the boot disk (default is \"pd-standard\"). Valid values: \"pd-balanced\" (Persistent Disk Balanced Solid State Drive), \"pd-ssd\" (Persistent Disk Solid State Drive), or \"pd-standard\" (Persistent Disk Hard Disk Drive). See Disk types (https:\/\/cloud.google.com\/compute\/docs\/disks#disk-types).
    bootDiskType :: (Core.Maybe Core.Text),
    -- | Optional. Interface type of local SSDs (default is \"scsi\"). Valid values: \"scsi\" (Small Computer System Interface), \"nvme\" (Non-Volatile Memory Express). See local SSD performance (https:\/\/cloud.google.com\/compute\/docs\/disks\/local-ssd#performance).
    localSsdInterface :: (Core.Maybe Core.Text),
    -- | Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and HDFS (https:\/\/hadoop.apache.org\/docs\/r1.2.1\/hdfs/user/guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.
    numLocalSsds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskConfig' with the minimum fields required to make a request.
newDiskConfig ::
  DiskConfig
newDiskConfig =
  DiskConfig
    { bootDiskSizeGb = Core.Nothing,
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
            Core.<$> (o Core..:? "bootDiskSizeGb")
            Core.<*> (o Core..:? "bootDiskType")
            Core.<*> (o Core..:? "localSsdInterface")
            Core.<*> (o Core..:? "numLocalSsds")
      )

instance Core.ToJSON DiskConfig where
  toJSON DiskConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bootDiskSizeGb" Core..=) Core.<$> bootDiskSizeGb,
            ("bootDiskType" Core..=) Core.<$> bootDiskType,
            ("localSsdInterface" Core..=)
              Core.<$> localSsdInterface,
            ("numLocalSsds" Core..=) Core.<$> numLocalSsds
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for Empty is empty JSON object {}.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Encryption settings for the cluster.
--
-- /See:/ 'newEncryptionConfig' smart constructor.
newtype EncryptionConfig = EncryptionConfig
  { -- | Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
    gcePdKmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
newEncryptionConfig ::
  EncryptionConfig
newEncryptionConfig = EncryptionConfig {gcePdKmsKeyName = Core.Nothing}

instance Core.FromJSON EncryptionConfig where
  parseJSON =
    Core.withObject
      "EncryptionConfig"
      ( \o ->
          EncryptionConfig
            Core.<$> (o Core..:? "gcePdKmsKeyName")
      )

instance Core.ToJSON EncryptionConfig where
  toJSON EncryptionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcePdKmsKeyName" Core..=)
              Core.<$> gcePdKmsKeyName
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
  EndpointConfig {enableHttpPortAccess = Core.Nothing, httpPorts = Core.Nothing}

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
          [ ("enableHttpPortAccess" Core..=)
              Core.<$> enableHttpPortAccess,
            ("httpPorts" Core..=) Core.<$> httpPorts
          ]
      )

-- | Output only. The map of port descriptions to URLs. Will only be populated if enable/http/port_access is true.
--
-- /See:/ 'newEndpointConfig_HttpPorts' smart constructor.
newtype EndpointConfig_HttpPorts = EndpointConfig_HttpPorts
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EndpointConfig_HttpPorts' with the minimum fields required to make a request.
newEndpointConfig_HttpPorts ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  EndpointConfig_HttpPorts
newEndpointConfig_HttpPorts addtional =
  EndpointConfig_HttpPorts {addtional = addtional}

instance Core.FromJSON EndpointConfig_HttpPorts where
  parseJSON =
    Core.withObject
      "EndpointConfig_HttpPorts"
      ( \o ->
          EndpointConfig_HttpPorts
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON EndpointConfig_HttpPorts where
  toJSON EndpointConfig_HttpPorts {..} =
    Core.toJSON addtional

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
          [ ("executionConfig" Core..=)
              Core.<$> executionConfig,
            ("peripheralsConfig" Core..=)
              Core.<$> peripheralsConfig
          ]
      )

-- | Execution configuration for a workload.
--
-- /See:/ 'newExecutionConfig' smart constructor.
data ExecutionConfig = ExecutionConfig
  { -- | Optional. The Cloud KMS key to use for encryption.
    kmsKey :: (Core.Maybe Core.Text),
    -- | Optional. Tags used for network traffic control.
    networkTags :: (Core.Maybe [Core.Text]),
    -- | Optional. Network URI to connect workload to.
    networkUri :: (Core.Maybe Core.Text),
    -- | Optional. Service account that used to execute workload.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Optional. Subnetwork URI to connect workload to.
    subnetworkUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecutionConfig' with the minimum fields required to make a request.
newExecutionConfig ::
  ExecutionConfig
newExecutionConfig =
  ExecutionConfig
    { kmsKey = Core.Nothing,
      networkTags = Core.Nothing,
      networkUri = Core.Nothing,
      serviceAccount = Core.Nothing,
      subnetworkUri = Core.Nothing
    }

instance Core.FromJSON ExecutionConfig where
  parseJSON =
    Core.withObject
      "ExecutionConfig"
      ( \o ->
          ExecutionConfig
            Core.<$> (o Core..:? "kmsKey")
            Core.<*> (o Core..:? "networkTags" Core..!= Core.mempty)
            Core.<*> (o Core..:? "networkUri")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "subnetworkUri")
      )

instance Core.ToJSON ExecutionConfig where
  toJSON ExecutionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("kmsKey" Core..=) Core.<$> kmsKey,
            ("networkTags" Core..=) Core.<$> networkTags,
            ("networkUri" Core..=) Core.<$> networkUri,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("subnetworkUri" Core..=) Core.<$> subnetworkUri
          ]
      )

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

-- | Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.
--
-- /See:/ 'newGceClusterConfig' smart constructor.
data GceClusterConfig = GceClusterConfig
  { -- | Optional. Confidential Instance Config for clusters using Confidential VMs (https:\/\/cloud.google.com\/compute\/confidential-vm\/docs).
    confidentialInstanceConfig :: (Core.Maybe ConfidentialInstanceConfig),
    -- | Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal/ip/only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
    internalIpOnly :: (Core.Maybe Core.Bool),
    -- | The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https:\/\/cloud.google.com\/compute\/docs\/storing-retrieving-metadata#project/and/instance_metadata)).
    metadata :: (Core.Maybe GceClusterConfig_Metadata),
    -- | Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork/uri. If neither network/uri nor subnetwork/uri is specified, the \"default\" network of the project is used, if it exists. Cannot be a \"Custom Subnet Network\" (see Using Subnetworks (https:\/\/cloud.google.com\/compute\/docs\/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/regions\/global\/default projects\/[project_id]\/regions\/global\/default default
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
    -- | Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network/uri.A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/regions\/us-east1\/subnetworks\/sub0 projects\/[project_id]\/regions\/us-east1\/subnetworks\/sub0 sub0
    subnetworkUri :: (Core.Maybe Core.Text),
    -- | The Compute Engine tags to add to all instances (see Tagging instances (https:\/\/cloud.google.com\/compute\/docs\/label-or-tag-resources#tags)).
    tags :: (Core.Maybe [Core.Text]),
    -- | Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the \"global\" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/zones\/[zone] projects\/[project/id]\/zones\/[zone] us-central1-f
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
            Core.<*> ( o Core..:? "serviceAccountScopes"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "shieldedInstanceConfig")
            Core.<*> (o Core..:? "subnetworkUri")
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
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
            ("nodeGroupAffinity" Core..=)
              Core.<$> nodeGroupAffinity,
            ("privateIpv6GoogleAccess" Core..=)
              Core.<$> privateIpv6GoogleAccess,
            ("reservationAffinity" Core..=)
              Core.<$> reservationAffinity,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("serviceAccountScopes" Core..=)
              Core.<$> serviceAccountScopes,
            ("shieldedInstanceConfig" Core..=)
              Core.<$> shieldedInstanceConfig,
            ("subnetworkUri" Core..=) Core.<$> subnetworkUri,
            ("tags" Core..=) Core.<$> tags,
            ("zoneUri" Core..=) Core.<$> zoneUri
          ]
      )

-- | The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https:\/\/cloud.google.com\/compute\/docs\/storing-retrieving-metadata#project/and/instance_metadata)).
--
-- /See:/ 'newGceClusterConfig_Metadata' smart constructor.
newtype GceClusterConfig_Metadata = GceClusterConfig_Metadata
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GceClusterConfig_Metadata' with the minimum fields required to make a request.
newGceClusterConfig_Metadata ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  GceClusterConfig_Metadata
newGceClusterConfig_Metadata addtional =
  GceClusterConfig_Metadata {addtional = addtional}

instance Core.FromJSON GceClusterConfig_Metadata where
  parseJSON =
    Core.withObject
      "GceClusterConfig_Metadata"
      ( \o ->
          GceClusterConfig_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GceClusterConfig_Metadata where
  toJSON GceClusterConfig_Metadata {..} =
    Core.toJSON addtional

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
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GetIamPolicyRequest"
      ( \o ->
          GetIamPolicyRequest Core.<$> (o Core..:? "options")
      )

instance Core.ToJSON GetIamPolicyRequest where
  toJSON GetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("options" Core..=) Core.<$> options]
      )

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
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
  parseJSON =
    Core.withObject
      "GetPolicyOptions"
      ( \o ->
          GetPolicyOptions
            Core.<$> (o Core..:? "requestedPolicyVersion")
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
newtype GkeClusterConfig = GkeClusterConfig
  { -- | Optional. A target for the deployment.
    namespacedGkeDeploymentTarget :: (Core.Maybe NamespacedGkeDeploymentTarget)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkeClusterConfig' with the minimum fields required to make a request.
newGkeClusterConfig ::
  GkeClusterConfig
newGkeClusterConfig =
  GkeClusterConfig {namespacedGkeDeploymentTarget = Core.Nothing}

instance Core.FromJSON GkeClusterConfig where
  parseJSON =
    Core.withObject
      "GkeClusterConfig"
      ( \o ->
          GkeClusterConfig
            Core.<$> (o Core..:? "namespacedGkeDeploymentTarget")
      )

instance Core.ToJSON GkeClusterConfig where
  toJSON GkeClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("namespacedGkeDeploymentTarget" Core..=)
              Core.<$> namespacedGkeDeploymentTarget
          ]
      )

-- | A Dataproc job for running Apache Hadoop MapReduce (https:\/\/hadoop.apache.org\/docs\/current\/hadoop-mapreduce-client\/hadoop-mapreduce-client-core\/MapReduceTutorial.html) jobs on Apache Hadoop YARN (https:\/\/hadoop.apache.org\/docs\/r2.7.1\/hadoop-yarn\/hadoop-yarn-site\/YARN.html).
--
-- /See:/ 'newHadoopJob' smart constructor.
data HadoopJob = HadoopJob
  { -- | Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The arguments to pass to the driver. Do not include arguments, such as -libjars or -Dfoo=bar, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
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
    -- | Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site and classes in user code.
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
            Core.<$> (o Core..:? "archiveUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "args" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jarFileUris" Core..!= Core.mempty)
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

-- | Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site and classes in user code.
--
-- /See:/ 'newHadoopJob_Properties' smart constructor.
newtype HadoopJob_Properties = HadoopJob_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HadoopJob_Properties' with the minimum fields required to make a request.
newHadoopJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  HadoopJob_Properties
newHadoopJob_Properties addtional = HadoopJob_Properties {addtional = addtional}

instance Core.FromJSON HadoopJob_Properties where
  parseJSON =
    Core.withObject
      "HadoopJob_Properties"
      ( \o ->
          HadoopJob_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HadoopJob_Properties where
  toJSON HadoopJob_Properties {..} =
    Core.toJSON addtional

-- | A Dataproc job for running Apache Hive (https:\/\/hive.apache.org\/) queries on YARN.
--
-- /See:/ 'newHiveJob' smart constructor.
data HiveJob = HiveJob
  { -- | Optional. Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries.
    continueOnFailure :: (Core.Maybe Core.Bool),
    -- | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/hive\/conf\/hive-site.xml, and classes in user code.
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
            Core.<*> (o Core..:? "jarFileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "queryFileUri")
            Core.<*> (o Core..:? "queryList")
            Core.<*> (o Core..:? "scriptVariables")
      )

instance Core.ToJSON HiveJob where
  toJSON HiveJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("continueOnFailure" Core..=)
              Core.<$> continueOnFailure,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("properties" Core..=) Core.<$> properties,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryList" Core..=) Core.<$> queryList,
            ("scriptVariables" Core..=)
              Core.<$> scriptVariables
          ]
      )

-- | Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/hive\/conf\/hive-site.xml, and classes in user code.
--
-- /See:/ 'newHiveJob_Properties' smart constructor.
newtype HiveJob_Properties = HiveJob_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HiveJob_Properties' with the minimum fields required to make a request.
newHiveJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  HiveJob_Properties
newHiveJob_Properties addtional = HiveJob_Properties {addtional = addtional}

instance Core.FromJSON HiveJob_Properties where
  parseJSON =
    Core.withObject
      "HiveJob_Properties"
      ( \o ->
          HiveJob_Properties Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HiveJob_Properties where
  toJSON HiveJob_Properties {..} = Core.toJSON addtional

-- | Optional. Mapping of query variable names to values (equivalent to the Hive command: SET name=\"value\";).
--
-- /See:/ 'newHiveJob_ScriptVariables' smart constructor.
newtype HiveJob_ScriptVariables = HiveJob_ScriptVariables
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HiveJob_ScriptVariables' with the minimum fields required to make a request.
newHiveJob_ScriptVariables ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  HiveJob_ScriptVariables
newHiveJob_ScriptVariables addtional =
  HiveJob_ScriptVariables {addtional = addtional}

instance Core.FromJSON HiveJob_ScriptVariables where
  parseJSON =
    Core.withObject
      "HiveJob_ScriptVariables"
      ( \o ->
          HiveJob_ScriptVariables
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HiveJob_ScriptVariables where
  toJSON HiveJob_ScriptVariables {..} =
    Core.toJSON addtional

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
newIdentityConfig = IdentityConfig {userServiceAccountMapping = Core.Nothing}

instance Core.FromJSON IdentityConfig where
  parseJSON =
    Core.withObject
      "IdentityConfig"
      ( \o ->
          IdentityConfig
            Core.<$> (o Core..:? "userServiceAccountMapping")
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityConfig_UserServiceAccountMapping' with the minimum fields required to make a request.
newIdentityConfig_UserServiceAccountMapping ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  IdentityConfig_UserServiceAccountMapping
newIdentityConfig_UserServiceAccountMapping addtional =
  IdentityConfig_UserServiceAccountMapping {addtional = addtional}

instance
  Core.FromJSON
    IdentityConfig_UserServiceAccountMapping
  where
  parseJSON =
    Core.withObject
      "IdentityConfig_UserServiceAccountMapping"
      ( \o ->
          IdentityConfig_UserServiceAccountMapping
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    IdentityConfig_UserServiceAccountMapping
  where
  toJSON IdentityConfig_UserServiceAccountMapping {..} =
    Core.toJSON addtional

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
            ("credentialsCiphertext" Core..=)
              Core.<$> credentialsCiphertext
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

instance
  Core.FromJSON
    InstanceGroupAutoscalingPolicyConfig
  where
  parseJSON =
    Core.withObject
      "InstanceGroupAutoscalingPolicyConfig"
      ( \o ->
          InstanceGroupAutoscalingPolicyConfig
            Core.<$> (o Core..:? "maxInstances")
            Core.<*> (o Core..:? "minInstances")
            Core.<*> (o Core..:? "weight")
      )

instance
  Core.ToJSON
    InstanceGroupAutoscalingPolicyConfig
  where
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
    -- | Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https:\/\/www.googleapis.com\/compute\/beta\/projects\/[project/id]\/global\/images\/[image-id] projects\/[project/id]\/global\/images\/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https:\/\/www.googleapis.com\/compute\/beta\/projects\/[project/id]\/global\/images\/family\/[custom-image-family-name] projects\/[project/id]\/global\/images\/family\/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
    imageUri :: (Core.Maybe Core.Text),
    -- | Output only. The list of instance names. Dataproc derives the names from cluster/name, num/instances, and the instance group.
    instanceNames :: (Core.Maybe [Core.Text]),
    -- | Output only. List of references to Compute Engine instances.
    instanceReferences :: (Core.Maybe [InstanceReference]),
    -- | Output only. Specifies that this instance group contains preemptible instances.
    isPreemptible :: (Core.Maybe Core.Bool),
    -- | Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/zones\/us-east1-a\/machineTypes\/n1-standard-2 projects\/[project/id]\/zones\/us-east1-a\/machineTypes\/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/auto-zone#using/auto/zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
    machineTypeUri :: (Core.Maybe Core.Text),
    -- | Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
    managedGroupConfig :: (Core.Maybe ManagedGroupConfig),
    -- | Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/compute\/dataproc-min-cpu).
    minCpuPlatform :: (Core.Maybe Core.Text),
    -- | Optional. The number of VM instances in the instance group. For HA cluster master/config groups, must be set to 3. For standard cluster master/config groups, must be set to 1.
    numInstances :: (Core.Maybe Core.Int32),
    -- | Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
    preemptibility :: (Core.Maybe InstanceGroupConfig_Preemptibility)
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
      instanceNames = Core.Nothing,
      instanceReferences = Core.Nothing,
      isPreemptible = Core.Nothing,
      machineTypeUri = Core.Nothing,
      managedGroupConfig = Core.Nothing,
      minCpuPlatform = Core.Nothing,
      numInstances = Core.Nothing,
      preemptibility = Core.Nothing
    }

instance Core.FromJSON InstanceGroupConfig where
  parseJSON =
    Core.withObject
      "InstanceGroupConfig"
      ( \o ->
          InstanceGroupConfig
            Core.<$> (o Core..:? "accelerators" Core..!= Core.mempty)
            Core.<*> (o Core..:? "diskConfig")
            Core.<*> (o Core..:? "imageUri")
            Core.<*> (o Core..:? "instanceNames" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "instanceReferences"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "isPreemptible")
            Core.<*> (o Core..:? "machineTypeUri")
            Core.<*> (o Core..:? "managedGroupConfig")
            Core.<*> (o Core..:? "minCpuPlatform")
            Core.<*> (o Core..:? "numInstances")
            Core.<*> (o Core..:? "preemptibility")
      )

instance Core.ToJSON InstanceGroupConfig where
  toJSON InstanceGroupConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("accelerators" Core..=) Core.<$> accelerators,
            ("diskConfig" Core..=) Core.<$> diskConfig,
            ("imageUri" Core..=) Core.<$> imageUri,
            ("instanceNames" Core..=) Core.<$> instanceNames,
            ("instanceReferences" Core..=)
              Core.<$> instanceReferences,
            ("isPreemptible" Core..=) Core.<$> isPreemptible,
            ("machineTypeUri" Core..=) Core.<$> machineTypeUri,
            ("managedGroupConfig" Core..=)
              Core.<$> managedGroupConfig,
            ("minCpuPlatform" Core..=) Core.<$> minCpuPlatform,
            ("numInstances" Core..=) Core.<$> numInstances,
            ("preemptibility" Core..=) Core.<$> preemptibility
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

instance
  Core.FromJSON
    InstantiateWorkflowTemplateRequest
  where
  parseJSON =
    Core.withObject
      "InstantiateWorkflowTemplateRequest"
      ( \o ->
          InstantiateWorkflowTemplateRequest
            Core.<$> (o Core..:? "parameters")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    InstantiateWorkflowTemplateRequest
  where
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstantiateWorkflowTemplateRequest_Parameters' with the minimum fields required to make a request.
newInstantiateWorkflowTemplateRequest_Parameters ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  InstantiateWorkflowTemplateRequest_Parameters
newInstantiateWorkflowTemplateRequest_Parameters addtional =
  InstantiateWorkflowTemplateRequest_Parameters {addtional = addtional}

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

instance
  Core.ToJSON
    InstantiateWorkflowTemplateRequest_Parameters
  where
  toJSON
    InstantiateWorkflowTemplateRequest_Parameters {..} =
      Core.toJSON addtional

-- | A Dataproc job resource.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job
  { -- | Output only. Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
    done :: (Core.Maybe Core.Bool),
    -- | Output only. If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver/output/uri.
    driverControlFilesUri :: (Core.Maybe Core.Text),
    -- | Output only. A URI pointing to the location of the stdout of the job\'s driver program.
    driverOutputResourceUri :: (Core.Maybe Core.Text),
    -- | Optional. Job is a Hadoop job.
    hadoopJob :: (Core.Maybe HadoopJob),
    -- | Optional. Job is a Hive job.
    hiveJob :: (Core.Maybe HiveJob),
    -- | Output only. A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.
    jobUuid :: (Core.Maybe Core.Text),
    -- | Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a job.
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
    -- | Output only. The job status. Additional application-specific status information may be contained in the type/job and yarn/applications fields.
    status :: (Core.Maybe JobStatus),
    -- | Output only. The previous job status.
    statusHistory :: (Core.Maybe [JobStatus]),
    -- | Output only. The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
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
            Core.<*> (o Core..:? "statusHistory" Core..!= Core.mempty)
            Core.<*> (o Core..:? "yarnApplications" Core..!= Core.mempty)
      )

instance Core.ToJSON Job where
  toJSON Job {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("driverControlFilesUri" Core..=)
              Core.<$> driverControlFilesUri,
            ("driverOutputResourceUri" Core..=)
              Core.<$> driverOutputResourceUri,
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
            ("yarnApplications" Core..=)
              Core.<$> yarnApplications
          ]
      )

-- | Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32 labels can be associated with a job.
--
-- /See:/ 'newJob_Labels' smart constructor.
newtype Job_Labels = Job_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job_Labels' with the minimum fields required to make a request.
newJob_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Job_Labels
newJob_Labels addtional = Job_Labels {addtional = addtional}

instance Core.FromJSON Job_Labels where
  parseJSON =
    Core.withObject
      "Job_Labels"
      (\o -> Job_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Job_Labels where
  toJSON Job_Labels {..} = Core.toJSON addtional

-- | Job Operation metadata.
--
-- /See:/ 'newJobMetadata' smart constructor.
data JobMetadata = JobMetadata
  { -- | Output only. The job id.
    jobId :: (Core.Maybe Core.Text),
    -- | Output only. Operation type.
    operationType :: (Core.Maybe Core.Text),
    -- | Output only. Job submission time.
    startTime :: (Core.Maybe Core.DateTime'),
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobPlacement_ClusterLabels' with the minimum fields required to make a request.
newJobPlacement_ClusterLabels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  JobPlacement_ClusterLabels
newJobPlacement_ClusterLabels addtional =
  JobPlacement_ClusterLabels {addtional = addtional}

instance Core.FromJSON JobPlacement_ClusterLabels where
  parseJSON =
    Core.withObject
      "JobPlacement_ClusterLabels"
      ( \o ->
          JobPlacement_ClusterLabels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON JobPlacement_ClusterLabels where
  toJSON JobPlacement_ClusterLabels {..} =
    Core.toJSON addtional

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
newJobReference = JobReference {jobId = Core.Nothing, projectId = Core.Nothing}

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
  { -- | Optional. Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window.Maximum value is 10.Note: Currently, this restartable job option is not supported in Dataproc workflow template (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/using-workflows#adding/jobs/to/a/template) jobs.
    maxFailuresPerHour :: (Core.Maybe Core.Int32),
    -- | Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240.Note: Currently, this restartable job option is not supported in Dataproc workflow template (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/using-workflows#adding/jobs/to/a/template) jobs.
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
          [ ("maxFailuresPerHour" Core..=)
              Core.<$> maxFailuresPerHour,
            ("maxFailuresTotal" Core..=)
              Core.<$> maxFailuresTotal
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
    stateStartTime :: (Core.Maybe Core.DateTime'),
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
    -- | Optional. The uri of the KMS key used to encrypt various sensitive files.
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
            ("crossRealmTrustKdc" Core..=)
              Core.<$> crossRealmTrustKdc,
            ("crossRealmTrustRealm" Core..=)
              Core.<$> crossRealmTrustRealm,
            ("crossRealmTrustSharedPasswordUri" Core..=)
              Core.<$> crossRealmTrustSharedPasswordUri,
            ("enableKerberos" Core..=) Core.<$> enableKerberos,
            ("kdcDbKeyUri" Core..=) Core.<$> kdcDbKeyUri,
            ("keyPasswordUri" Core..=) Core.<$> keyPasswordUri,
            ("keystorePasswordUri" Core..=)
              Core.<$> keystorePasswordUri,
            ("keystoreUri" Core..=) Core.<$> keystoreUri,
            ("kmsKeyUri" Core..=) Core.<$> kmsKeyUri,
            ("realm" Core..=) Core.<$> realm,
            ("rootPrincipalPasswordUri" Core..=)
              Core.<$> rootPrincipalPasswordUri,
            ("tgtLifetimeHours" Core..=)
              Core.<$> tgtLifetimeHours,
            ("truststorePasswordUri" Core..=)
              Core.<$> truststorePasswordUri,
            ("truststoreUri" Core..=) Core.<$> truststoreUri
          ]
      )

-- | Specifies the cluster auto-delete schedule configuration.
--
-- /See:/ 'newLifecycleConfig' smart constructor.
data LifecycleConfig = LifecycleConfig
  { -- | Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    autoDeleteTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    autoDeleteTtl :: (Core.Maybe Core.GDuration),
    -- | Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    idleDeleteTtl :: (Core.Maybe Core.GDuration),
    -- | Output only. The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    idleStartTime :: (Core.Maybe Core.DateTime')
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

instance
  Core.FromJSON
    ListAutoscalingPoliciesResponse
  where
  parseJSON =
    Core.withObject
      "ListAutoscalingPoliciesResponse"
      ( \o ->
          ListAutoscalingPoliciesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "policies" Core..!= Core.mempty)
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
  { -- | The batches from the specified collection.
    batches :: (Core.Maybe [Batch]),
    -- | A token, which can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBatchesResponse' with the minimum fields required to make a request.
newListBatchesResponse ::
  ListBatchesResponse
newListBatchesResponse =
  ListBatchesResponse {batches = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListBatchesResponse where
  parseJSON =
    Core.withObject
      "ListBatchesResponse"
      ( \o ->
          ListBatchesResponse
            Core.<$> (o Core..:? "batches" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListBatchesResponse where
  toJSON ListBatchesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("batches" Core..=) Core.<$> batches,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
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
  ListClustersResponse {clusters = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListClustersResponse where
  parseJSON =
    Core.withObject
      "ListClustersResponse"
      ( \o ->
          ListClustersResponse
            Core.<$> (o Core..:? "clusters" Core..!= Core.mempty)
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
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
newListJobsResponse ::
  ListJobsResponse
newListJobsResponse =
  ListJobsResponse {jobs = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListJobsResponse where
  parseJSON =
    Core.withObject
      "ListJobsResponse"
      ( \o ->
          ListJobsResponse
            Core.<$> (o Core..:? "jobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListJobsResponse where
  toJSON ListJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
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
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | A response to a request to list workflow templates in a project.
--
-- /See:/ 'newListWorkflowTemplatesResponse' smart constructor.
data ListWorkflowTemplatesResponse = ListWorkflowTemplatesResponse
  { -- | Output only. This token is included in the response if there are more results to fetch. To fetch additional results, provide this value as the page_token in a subsequent ListWorkflowTemplatesRequest.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. WorkflowTemplates list.
    templates :: (Core.Maybe [WorkflowTemplate])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWorkflowTemplatesResponse' with the minimum fields required to make a request.
newListWorkflowTemplatesResponse ::
  ListWorkflowTemplatesResponse
newListWorkflowTemplatesResponse =
  ListWorkflowTemplatesResponse
    { nextPageToken = Core.Nothing,
      templates = Core.Nothing
    }

instance Core.FromJSON ListWorkflowTemplatesResponse where
  parseJSON =
    Core.withObject
      "ListWorkflowTemplatesResponse"
      ( \o ->
          ListWorkflowTemplatesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "templates" Core..!= Core.mempty)
      )

instance Core.ToJSON ListWorkflowTemplatesResponse where
  toJSON ListWorkflowTemplatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("templates" Core..=) Core.<$> templates
          ]
      )

-- | The runtime logging config of the job.
--
-- /See:/ 'newLoggingConfig' smart constructor.
newtype LoggingConfig = LoggingConfig
  { -- | The per-package log levels for the driver. This may include \"root\" package name to configure rootLogger. Examples: \'com.google = FATAL\', \'root = INFO\', \'org.apache = DEBUG\'
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
      ( \o ->
          LoggingConfig
            Core.<$> (o Core..:? "driverLogLevels")
      )

instance Core.ToJSON LoggingConfig where
  toJSON LoggingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("driverLogLevels" Core..=)
              Core.<$> driverLogLevels
          ]
      )

-- | The per-package log levels for the driver. This may include \"root\" package name to configure rootLogger. Examples: \'com.google = FATAL\', \'root = INFO\', \'org.apache = DEBUG\'
--
-- /See:/ 'newLoggingConfig_DriverLogLevels' smart constructor.
newtype LoggingConfig_DriverLogLevels = LoggingConfig_DriverLogLevels
  { -- |
    addtional :: (Core.HashMap Core.Text LoggingConfig_DriverLogLevelsAdditional)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingConfig_DriverLogLevels' with the minimum fields required to make a request.
newLoggingConfig_DriverLogLevels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text LoggingConfig_DriverLogLevelsAdditional ->
  LoggingConfig_DriverLogLevels
newLoggingConfig_DriverLogLevels addtional =
  LoggingConfig_DriverLogLevels {addtional = addtional}

instance Core.FromJSON LoggingConfig_DriverLogLevels where
  parseJSON =
    Core.withObject
      "LoggingConfig_DriverLogLevels"
      ( \o ->
          LoggingConfig_DriverLogLevels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON LoggingConfig_DriverLogLevels where
  toJSON LoggingConfig_DriverLogLevels {..} =
    Core.toJSON addtional

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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedCluster_Labels' with the minimum fields required to make a request.
newManagedCluster_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  ManagedCluster_Labels
newManagedCluster_Labels addtional =
  ManagedCluster_Labels {addtional = addtional}

instance Core.FromJSON ManagedCluster_Labels where
  parseJSON =
    Core.withObject
      "ManagedCluster_Labels"
      ( \o ->
          ManagedCluster_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ManagedCluster_Labels where
  toJSON ManagedCluster_Labels {..} =
    Core.toJSON addtional

-- | Specifies the resources used to actively manage an instance group.
--
-- /See:/ 'newManagedGroupConfig' smart constructor.
data ManagedGroupConfig = ManagedGroupConfig
  { -- | Output only. The name of the Instance Group Manager for this group.
    instanceGroupManagerName :: (Core.Maybe Core.Text),
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
      instanceTemplateName = Core.Nothing
    }

instance Core.FromJSON ManagedGroupConfig where
  parseJSON =
    Core.withObject
      "ManagedGroupConfig"
      ( \o ->
          ManagedGroupConfig
            Core.<$> (o Core..:? "instanceGroupManagerName")
            Core.<*> (o Core..:? "instanceTemplateName")
      )

instance Core.ToJSON ManagedGroupConfig where
  toJSON ManagedGroupConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("instanceGroupManagerName" Core..=)
              Core.<$> instanceGroupManagerName,
            ("instanceTemplateName" Core..=)
              Core.<$> instanceTemplateName
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
newMetastoreConfig = MetastoreConfig {dataprocMetastoreService = Core.Nothing}

instance Core.FromJSON MetastoreConfig where
  parseJSON =
    Core.withObject
      "MetastoreConfig"
      ( \o ->
          MetastoreConfig
            Core.<$> (o Core..:? "dataprocMetastoreService")
      )

instance Core.ToJSON MetastoreConfig where
  toJSON MetastoreConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataprocMetastoreService" Core..=)
              Core.<$> dataprocMetastoreService
          ]
      )

-- | Metric source to enable along with any optional metrics for this source that override the dataproc defaults
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
  { -- | Optional. Optional Metrics to override the dataproc default metrics configured for the metric source
    metricOverrides :: (Core.Maybe [Core.Text]),
    -- | Required. MetricSource that should be enabled
    metricSource :: (Core.Maybe Metric_MetricSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric ::
  Metric
newMetric = Metric {metricOverrides = Core.Nothing, metricSource = Core.Nothing}

instance Core.FromJSON Metric where
  parseJSON =
    Core.withObject
      "Metric"
      ( \o ->
          Metric
            Core.<$> (o Core..:? "metricOverrides" Core..!= Core.mempty)
            Core.<*> (o Core..:? "metricSource")
      )

instance Core.ToJSON Metric where
  toJSON Metric {..} =
    Core.object
      ( Core.catMaybes
          [ ("metricOverrides" Core..=)
              Core.<$> metricOverrides,
            ("metricSource" Core..=) Core.<$> metricSource
          ]
      )

-- | A full, namespace-isolated deployment target for an existing GKE cluster.
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
          [ ("clusterNamespace" Core..=)
              Core.<$> clusterNamespace,
            ("targetGkeCluster" Core..=)
              Core.<$> targetGkeCluster
          ]
      )

-- | Node Group Affinity for clusters using sole-tenant node groups.
--
-- /See:/ 'newNodeGroupAffinity' smart constructor.
newtype NodeGroupAffinity = NodeGroupAffinity
  { -- | Required. The URI of a sole-tenant node group resource (https:\/\/cloud.google.com\/compute\/docs\/reference\/rest\/v1\/nodeGroups) that the cluster will be created on.A full URL, partial URI, or node group name are valid. Examples: https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project/id]\/zones\/us-central1-a\/nodeGroups\/node-group-1 projects\/[project/id]\/zones\/us-central1-a\/nodeGroups\/node-group-1 node-group-1
    nodeGroupUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeGroupAffinity' with the minimum fields required to make a request.
newNodeGroupAffinity ::
  NodeGroupAffinity
newNodeGroupAffinity = NodeGroupAffinity {nodeGroupUri = Core.Nothing}

instance Core.FromJSON NodeGroupAffinity where
  parseJSON =
    Core.withObject
      "NodeGroupAffinity"
      ( \o ->
          NodeGroupAffinity
            Core.<$> (o Core..:? "nodeGroupUri")
      )

instance Core.ToJSON NodeGroupAffinity where
  toJSON NodeGroupAffinity {..} =
    Core.object
      ( Core.catMaybes
          [("nodeGroupUri" Core..=) Core.<$> nodeGroupUri]
      )

-- | Specifies an executable to run on a fully configured node and a timeout period for executable completion.
--
-- /See:/ 'newNodeInitializationAction' smart constructor.
data NodeInitializationAction = NodeInitializationAction
  { -- | Required. Cloud Storage URI of executable file.
    executableFile :: (Core.Maybe Core.Text),
    -- | Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
    executionTimeout :: (Core.Maybe Core.GDuration)
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
            ("executionTimeout" Core..=)
              Core.<$> executionTimeout
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
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get\/Create\/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | A job executed by the workflow.
--
-- /See:/ 'newOrderedJob' smart constructor.
data OrderedJob = OrderedJob
  { -- | Optional. Job is a Hadoop job.
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
    stepId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderedJob' with the minimum fields required to make a request.
newOrderedJob ::
  OrderedJob
newOrderedJob =
  OrderedJob
    { hadoopJob = Core.Nothing,
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
      stepId = Core.Nothing
    }

instance Core.FromJSON OrderedJob where
  parseJSON =
    Core.withObject
      "OrderedJob"
      ( \o ->
          OrderedJob
            Core.<$> (o Core..:? "hadoopJob")
            Core.<*> (o Core..:? "hiveJob")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "pigJob")
            Core.<*> ( o Core..:? "prerequisiteStepIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "prestoJob")
            Core.<*> (o Core..:? "pysparkJob")
            Core.<*> (o Core..:? "scheduling")
            Core.<*> (o Core..:? "sparkJob")
            Core.<*> (o Core..:? "sparkRJob")
            Core.<*> (o Core..:? "sparkSqlJob")
            Core.<*> (o Core..:? "stepId")
      )

instance Core.ToJSON OrderedJob where
  toJSON OrderedJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("hadoopJob" Core..=) Core.<$> hadoopJob,
            ("hiveJob" Core..=) Core.<$> hiveJob,
            ("labels" Core..=) Core.<$> labels,
            ("pigJob" Core..=) Core.<$> pigJob,
            ("prerequisiteStepIds" Core..=)
              Core.<$> prerequisiteStepIds,
            ("prestoJob" Core..=) Core.<$> prestoJob,
            ("pysparkJob" Core..=) Core.<$> pysparkJob,
            ("scheduling" Core..=) Core.<$> scheduling,
            ("sparkJob" Core..=) Core.<$> sparkJob,
            ("sparkRJob" Core..=) Core.<$> sparkRJob,
            ("sparkSqlJob" Core..=) Core.<$> sparkSqlJob,
            ("stepId" Core..=) Core.<$> stepId
          ]
      )

-- | Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
--
-- /See:/ 'newOrderedJob_Labels' smart constructor.
newtype OrderedJob_Labels = OrderedJob_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderedJob_Labels' with the minimum fields required to make a request.
newOrderedJob_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  OrderedJob_Labels
newOrderedJob_Labels addtional = OrderedJob_Labels {addtional = addtional}

instance Core.FromJSON OrderedJob_Labels where
  parseJSON =
    Core.withObject
      "OrderedJob_Labels"
      ( \o ->
          OrderedJob_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON OrderedJob_Labels where
  toJSON OrderedJob_Labels {..} = Core.toJSON addtional

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
            Core.<$> (o Core..:? "regex") Core.<*> (o Core..:? "values")
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
          [ ("metastoreService" Core..=)
              Core.<$> metastoreService,
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
    -- | Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/pig\/conf\/pig.properties, and classes in user code.
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
            Core.<*> (o Core..:? "jarFileUris" Core..!= Core.mempty)
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
          [ ("continueOnFailure" Core..=)
              Core.<$> continueOnFailure,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("loggingConfig" Core..=) Core.<$> loggingConfig,
            ("properties" Core..=) Core.<$> properties,
            ("queryFileUri" Core..=) Core.<$> queryFileUri,
            ("queryList" Core..=) Core.<$> queryList,
            ("scriptVariables" Core..=)
              Core.<$> scriptVariables
          ]
      )

-- | Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/hadoop\/conf\/*-site.xml, \/etc\/pig\/conf\/pig.properties, and classes in user code.
--
-- /See:/ 'newPigJob_Properties' smart constructor.
newtype PigJob_Properties = PigJob_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PigJob_Properties' with the minimum fields required to make a request.
newPigJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  PigJob_Properties
newPigJob_Properties addtional = PigJob_Properties {addtional = addtional}

instance Core.FromJSON PigJob_Properties where
  parseJSON =
    Core.withObject
      "PigJob_Properties"
      ( \o ->
          PigJob_Properties Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PigJob_Properties where
  toJSON PigJob_Properties {..} = Core.toJSON addtional

-- | Optional. Mapping of query variable names to values (equivalent to the Pig command: name=[value]).
--
-- /See:/ 'newPigJob_ScriptVariables' smart constructor.
newtype PigJob_ScriptVariables = PigJob_ScriptVariables
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PigJob_ScriptVariables' with the minimum fields required to make a request.
newPigJob_ScriptVariables ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  PigJob_ScriptVariables
newPigJob_ScriptVariables addtional =
  PigJob_ScriptVariables {addtional = addtional}

instance Core.FromJSON PigJob_ScriptVariables where
  parseJSON =
    Core.withObject
      "PigJob_ScriptVariables"
      ( \o ->
          PigJob_ScriptVariables
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PigJob_ScriptVariables where
  toJSON PigJob_ScriptVariables {..} =
    Core.toJSON addtional

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
  Policy {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "bindings" Core..!= Core.mempty)
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
            Core.<$> (o Core..:? "clientTags" Core..!= Core.mempty)
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
            ("continueOnFailure" Core..=)
              Core.<$> continueOnFailure,
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrestoJob_Properties' with the minimum fields required to make a request.
newPrestoJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  PrestoJob_Properties
newPrestoJob_Properties addtional = PrestoJob_Properties {addtional = addtional}

instance Core.FromJSON PrestoJob_Properties where
  parseJSON =
    Core.withObject
      "PrestoJob_Properties"
      ( \o ->
          PrestoJob_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PrestoJob_Properties where
  toJSON PrestoJob_Properties {..} =
    Core.toJSON addtional

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
            Core.<$> (o Core..:? "archiveUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "args" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jarFileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "mainPythonFileUri")
            Core.<*> (o Core..:? "pythonFileUris" Core..!= Core.mempty)
      )

instance Core.ToJSON PySparkBatch where
  toJSON PySparkBatch {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("args" Core..=) Core.<$> args,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("jarFileUris" Core..=) Core.<$> jarFileUris,
            ("mainPythonFileUri" Core..=)
              Core.<$> mainPythonFileUri,
            ("pythonFileUris" Core..=) Core.<$> pythonFileUris
          ]
      )

-- | A Dataproc job for running Apache PySpark (https:\/\/spark.apache.org\/docs\/0.9.0\/python-programming-guide.html) applications on YARN.
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
    -- | Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
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
            Core.<$> (o Core..:? "archiveUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "args" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jarFileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "loggingConfig")
            Core.<*> (o Core..:? "mainPythonFileUri")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "pythonFileUris" Core..!= Core.mempty)
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
            ("mainPythonFileUri" Core..=)
              Core.<$> mainPythonFileUri,
            ("properties" Core..=) Core.<$> properties,
            ("pythonFileUris" Core..=) Core.<$> pythonFileUris
          ]
      )

-- | Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'newPySparkJob_Properties' smart constructor.
newtype PySparkJob_Properties = PySparkJob_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PySparkJob_Properties' with the minimum fields required to make a request.
newPySparkJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  PySparkJob_Properties
newPySparkJob_Properties addtional =
  PySparkJob_Properties {addtional = addtional}

instance Core.FromJSON PySparkJob_Properties where
  parseJSON =
    Core.withObject
      "PySparkJob_Properties"
      ( \o ->
          PySparkJob_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PySparkJob_Properties where
  toJSON PySparkJob_Properties {..} =
    Core.toJSON addtional

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
      ( \o ->
          QueryList
            Core.<$> (o Core..:? "queries" Core..!= Core.mempty)
      )

instance Core.ToJSON QueryList where
  toJSON QueryList {..} =
    Core.object
      ( Core.catMaybes
          [("queries" Core..=) Core.<$> queries]
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
      ( \o ->
          RegexValidation
            Core.<$> (o Core..:? "regexes" Core..!= Core.mempty)
      )

instance Core.ToJSON RegexValidation where
  toJSON RegexValidation {..} =
    Core.object
      ( Core.catMaybes
          [("regexes" Core..=) Core.<$> regexes]
      )

-- | A request to repair a cluster.
--
-- /See:/ 'newRepairClusterRequest' smart constructor.
data RepairClusterRequest = RepairClusterRequest
  { -- | Optional. Specifying the cluster/uuid means the RPC will fail (with error NOT/FOUND) if a cluster with the specified UUID does not exist.
    clusterUuid :: (Core.Maybe Core.Text),
    -- | Optional. A unique ID used to identify the request. If the server receives two RepairClusterRequests with the same ID, the second request is ignored, and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepairClusterRequest' with the minimum fields required to make a request.
newRepairClusterRequest ::
  RepairClusterRequest
newRepairClusterRequest =
  RepairClusterRequest {clusterUuid = Core.Nothing, requestId = Core.Nothing}

instance Core.FromJSON RepairClusterRequest where
  parseJSON =
    Core.withObject
      "RepairClusterRequest"
      ( \o ->
          RepairClusterRequest
            Core.<$> (o Core..:? "clusterUuid")
            Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON RepairClusterRequest where
  toJSON RepairClusterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterUuid" Core..=) Core.<$> clusterUuid,
            ("requestId" Core..=) Core.<$> requestId
          ]
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
            Core.<*> (o Core..:? "values" Core..!= Core.mempty)
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

-- | Runtime configuration for a workload.
--
-- /See:/ 'newRuntimeConfig' smart constructor.
data RuntimeConfig = RuntimeConfig
  { -- | Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
    containerImage :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, which are used to configure workload execution.
    properties :: (Core.Maybe RuntimeConfig_Properties),
    -- | Optional. Version of the batch runtime.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeConfig' with the minimum fields required to make a request.
newRuntimeConfig ::
  RuntimeConfig
newRuntimeConfig =
  RuntimeConfig
    { containerImage = Core.Nothing,
      properties = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON RuntimeConfig where
  parseJSON =
    Core.withObject
      "RuntimeConfig"
      ( \o ->
          RuntimeConfig
            Core.<$> (o Core..:? "containerImage")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON RuntimeConfig where
  toJSON RuntimeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("containerImage" Core..=) Core.<$> containerImage,
            ("properties" Core..=) Core.<$> properties,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Optional. A mapping of property names to values, which are used to configure workload execution.
--
-- /See:/ 'newRuntimeConfig_Properties' smart constructor.
newtype RuntimeConfig_Properties = RuntimeConfig_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeConfig_Properties' with the minimum fields required to make a request.
newRuntimeConfig_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  RuntimeConfig_Properties
newRuntimeConfig_Properties addtional =
  RuntimeConfig_Properties {addtional = addtional}

instance Core.FromJSON RuntimeConfig_Properties where
  parseJSON =
    Core.withObject
      "RuntimeConfig_Properties"
      ( \o ->
          RuntimeConfig_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RuntimeConfig_Properties where
  toJSON RuntimeConfig_Properties {..} =
    Core.toJSON addtional

-- | Runtime information about workload execution.
--
-- /See:/ 'newRuntimeInfo' smart constructor.
data RuntimeInfo = RuntimeInfo
  { -- | Output only. A URI pointing to the location of the diagnostics tarball.
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
    { diagnosticOutputUri = Core.Nothing,
      endpoints = Core.Nothing,
      outputUri = Core.Nothing
    }

instance Core.FromJSON RuntimeInfo where
  parseJSON =
    Core.withObject
      "RuntimeInfo"
      ( \o ->
          RuntimeInfo
            Core.<$> (o Core..:? "diagnosticOutputUri")
            Core.<*> (o Core..:? "endpoints")
            Core.<*> (o Core..:? "outputUri")
      )

instance Core.ToJSON RuntimeInfo where
  toJSON RuntimeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("diagnosticOutputUri" Core..=)
              Core.<$> diagnosticOutputUri,
            ("endpoints" Core..=) Core.<$> endpoints,
            ("outputUri" Core..=) Core.<$> outputUri
          ]
      )

-- | Output only. Map of remote access endpoints (such as web interfaces and APIs) to their URIs.
--
-- /See:/ 'newRuntimeInfo_Endpoints' smart constructor.
newtype RuntimeInfo_Endpoints = RuntimeInfo_Endpoints
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeInfo_Endpoints' with the minimum fields required to make a request.
newRuntimeInfo_Endpoints ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  RuntimeInfo_Endpoints
newRuntimeInfo_Endpoints addtional =
  RuntimeInfo_Endpoints {addtional = addtional}

instance Core.FromJSON RuntimeInfo_Endpoints where
  parseJSON =
    Core.withObject
      "RuntimeInfo_Endpoints"
      ( \o ->
          RuntimeInfo_Endpoints
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RuntimeInfo_Endpoints where
  toJSON RuntimeInfo_Endpoints {..} =
    Core.toJSON addtional

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
  SecurityConfig {identityConfig = Core.Nothing, kerberosConfig = Core.Nothing}

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

-- | Metadata describing the Session operation.
--
-- /See:/ 'newSessionOperationMetadata' smart constructor.
data SessionOperationMetadata = SessionOperationMetadata
  { -- | The time when the operation was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Short description of the operation.
    description :: (Core.Maybe Core.Text),
    -- | The time when the operation was finished.
    doneTime :: (Core.Maybe Core.DateTime'),
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
            Core.<*> (o Core..:? "warnings" Core..!= Core.mempty)
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SessionOperationMetadata_Labels' with the minimum fields required to make a request.
newSessionOperationMetadata_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SessionOperationMetadata_Labels
newSessionOperationMetadata_Labels addtional =
  SessionOperationMetadata_Labels {addtional = addtional}

instance
  Core.FromJSON
    SessionOperationMetadata_Labels
  where
  parseJSON =
    Core.withObject
      "SessionOperationMetadata_Labels"
      ( \o ->
          SessionOperationMetadata_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SessionOperationMetadata_Labels where
  toJSON SessionOperationMetadata_Labels {..} =
    Core.toJSON addtional

-- | Request message for SetIamPolicy method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
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
      ( \o ->
          SetIamPolicyRequest Core.<$> (o Core..:? "policy")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      (Core.catMaybes [("policy" Core..=) Core.<$> policy])

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
            ("enableSecureBoot" Core..=)
              Core.<$> enableSecureBoot,
            ("enableVtpm" Core..=) Core.<$> enableVtpm
          ]
      )

-- | Specifies the selection and config of software inside the cluster.
--
-- /See:/ 'newSoftwareConfig' smart constructor.
data SoftwareConfig = SoftwareConfig
  { -- | Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/versioning\/dataproc-versions#supported/dataproc/versions), such as \"1.2\" (including a subminor version, such as \"1.2.29\"), or the \"preview\" version (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/versioning\/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
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
            Core.<*> ( o Core..:? "optionalComponents"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON SoftwareConfig where
  toJSON SoftwareConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageVersion" Core..=) Core.<$> imageVersion,
            ("optionalComponents" Core..=)
              Core.<$> optionalComponents,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/cluster-properties).
--
-- /See:/ 'newSoftwareConfig_Properties' smart constructor.
newtype SoftwareConfig_Properties = SoftwareConfig_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareConfig_Properties' with the minimum fields required to make a request.
newSoftwareConfig_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SoftwareConfig_Properties
newSoftwareConfig_Properties addtional =
  SoftwareConfig_Properties {addtional = addtional}

instance Core.FromJSON SoftwareConfig_Properties where
  parseJSON =
    Core.withObject
      "SoftwareConfig_Properties"
      ( \o ->
          SoftwareConfig_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SoftwareConfig_Properties where
  toJSON SoftwareConfig_Properties {..} =
    Core.toJSON addtional

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
            Core.<$> (o Core..:? "archiveUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "args" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jarFileUris" Core..!= Core.mempty)
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
          SparkHistoryServerConfig
            Core.<$> (o Core..:? "dataprocCluster")
      )

instance Core.ToJSON SparkHistoryServerConfig where
  toJSON SparkHistoryServerConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataprocCluster" Core..=)
              Core.<$> dataprocCluster
          ]
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
    -- | The name of the driver\'s main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar/file/uris.
    mainClass :: (Core.Maybe Core.Text),
    -- | The HCFS URI of the jar file that contains the main class.
    mainJarFileUri :: (Core.Maybe Core.Text),
    -- | Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
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
            Core.<$> (o Core..:? "archiveUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "args" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fileUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "jarFileUris" Core..!= Core.mempty)
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

-- | Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'newSparkJob_Properties' smart constructor.
newtype SparkJob_Properties = SparkJob_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkJob_Properties' with the minimum fields required to make a request.
newSparkJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SparkJob_Properties
newSparkJob_Properties addtional = SparkJob_Properties {addtional = addtional}

instance Core.FromJSON SparkJob_Properties where
  parseJSON =
    Core.withObject
      "SparkJob_Properties"
      ( \o ->
          SparkJob_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkJob_Properties where
  toJSON SparkJob_Properties {..} =
    Core.toJSON addtional

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
            Core.<$> (o Core..:? "archiveUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "args" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fileUris" Core..!= Core.mempty)
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
    -- | Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
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
            Core.<$> (o Core..:? "archiveUris" Core..!= Core.mempty)
            Core.<*> (o Core..:? "args" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fileUris" Core..!= Core.mempty)
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

-- | Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'newSparkRJob_Properties' smart constructor.
newtype SparkRJob_Properties = SparkRJob_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkRJob_Properties' with the minimum fields required to make a request.
newSparkRJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SparkRJob_Properties
newSparkRJob_Properties addtional = SparkRJob_Properties {addtional = addtional}

instance Core.FromJSON SparkRJob_Properties where
  parseJSON =
    Core.withObject
      "SparkRJob_Properties"
      ( \o ->
          SparkRJob_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkRJob_Properties where
  toJSON SparkRJob_Properties {..} =
    Core.toJSON addtional

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
            Core.<$> (o Core..:? "jarFileUris" Core..!= Core.mempty)
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlBatch_QueryVariables' with the minimum fields required to make a request.
newSparkSqlBatch_QueryVariables ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SparkSqlBatch_QueryVariables
newSparkSqlBatch_QueryVariables addtional =
  SparkSqlBatch_QueryVariables {addtional = addtional}

instance Core.FromJSON SparkSqlBatch_QueryVariables where
  parseJSON =
    Core.withObject
      "SparkSqlBatch_QueryVariables"
      ( \o ->
          SparkSqlBatch_QueryVariables
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkSqlBatch_QueryVariables where
  toJSON SparkSqlBatch_QueryVariables {..} =
    Core.toJSON addtional

-- | A Dataproc job for running Apache Spark SQL (https:\/\/spark.apache.org\/sql\/) queries.
--
-- /See:/ 'newSparkSqlJob' smart constructor.
data SparkSqlJob = SparkSqlJob
  { -- | Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
    jarFileUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The runtime log config for job execution.
    loggingConfig :: (Core.Maybe LoggingConfig),
    -- | Optional. A mapping of property names to values, used to configure Spark SQL\'s SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.
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
            Core.<$> (o Core..:? "jarFileUris" Core..!= Core.mempty)
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
            ("scriptVariables" Core..=)
              Core.<$> scriptVariables
          ]
      )

-- | Optional. A mapping of property names to values, used to configure Spark SQL\'s SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten.
--
-- /See:/ 'newSparkSqlJob_Properties' smart constructor.
newtype SparkSqlJob_Properties = SparkSqlJob_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlJob_Properties' with the minimum fields required to make a request.
newSparkSqlJob_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SparkSqlJob_Properties
newSparkSqlJob_Properties addtional =
  SparkSqlJob_Properties {addtional = addtional}

instance Core.FromJSON SparkSqlJob_Properties where
  parseJSON =
    Core.withObject
      "SparkSqlJob_Properties"
      ( \o ->
          SparkSqlJob_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkSqlJob_Properties where
  toJSON SparkSqlJob_Properties {..} =
    Core.toJSON addtional

-- | Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=\"value\";).
--
-- /See:/ 'newSparkSqlJob_ScriptVariables' smart constructor.
newtype SparkSqlJob_ScriptVariables = SparkSqlJob_ScriptVariables
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkSqlJob_ScriptVariables' with the minimum fields required to make a request.
newSparkSqlJob_ScriptVariables ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SparkSqlJob_ScriptVariables
newSparkSqlJob_ScriptVariables addtional =
  SparkSqlJob_ScriptVariables {addtional = addtional}

instance Core.FromJSON SparkSqlJob_ScriptVariables where
  parseJSON =
    Core.withObject
      "SparkSqlJob_ScriptVariables"
      ( \o ->
          SparkSqlJob_ScriptVariables
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkSqlJob_ScriptVariables where
  toJSON SparkSqlJob_ScriptVariables {..} =
    Core.toJSON addtional

-- | Basic autoscaling configurations for Spark Standalone.
--
-- /See:/ 'newSparkStandaloneAutoscalingConfig' smart constructor.
data SparkStandaloneAutoscalingConfig = SparkStandaloneAutoscalingConfig
  { -- | Required. Timeout for Spark graceful decommissioning of spark workers. Specifies the duration to wait for spark worker to complete spark decomissioning tasks before forcefully removing workers. Only applicable to downscaling operations.Bounds: 0s, 1d.
    gracefulDecommissionTimeout :: (Core.Maybe Core.GDuration),
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
    { gracefulDecommissionTimeout = Core.Nothing,
      scaleDownFactor = Core.Nothing,
      scaleDownMinWorkerFraction = Core.Nothing,
      scaleUpFactor = Core.Nothing,
      scaleUpMinWorkerFraction = Core.Nothing
    }

instance
  Core.FromJSON
    SparkStandaloneAutoscalingConfig
  where
  parseJSON =
    Core.withObject
      "SparkStandaloneAutoscalingConfig"
      ( \o ->
          SparkStandaloneAutoscalingConfig
            Core.<$> (o Core..:? "gracefulDecommissionTimeout")
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
            ("scaleDownFactor" Core..=) Core.<$> scaleDownFactor,
            ("scaleDownMinWorkerFraction" Core..=)
              Core.<$> scaleDownMinWorkerFraction,
            ("scaleUpFactor" Core..=) Core.<$> scaleUpFactor,
            ("scaleUpMinWorkerFraction" Core..=)
              Core.<$> scaleUpMinWorkerFraction
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
  StartClusterRequest {clusterUuid = Core.Nothing, requestId = Core.Nothing}

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

-- | Historical state information.
--
-- /See:/ 'newStateHistory' smart constructor.
data StateHistory = StateHistory
  { -- | Output only. The state of the batch at this point in history.
    state :: (Core.Maybe StateHistory_State),
    -- | Output only. Details about the state at this point in history.
    stateMessage :: (Core.Maybe Core.Text),
    -- | Output only. The time when the batch entered the historical state.
    stateStartTime :: (Core.Maybe Core.DateTime')
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
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

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
  StopClusterRequest {clusterUuid = Core.Nothing, requestId = Core.Nothing}

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
            Core.<$> (o Core..:? "job") Core.<*> (o Core..:? "requestId")
      )

instance Core.ToJSON SubmitJobRequest where
  toJSON SubmitJobRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("job" Core..=) Core.<$> job,
            ("requestId" Core..=) Core.<$> requestId
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
            Core.<*> (o Core..:? "fields" Core..!= Core.mempty)
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

-- | Request message for TestIamPermissions method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the resource. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see IAM Overview (https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
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
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

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
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
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
      ( \o ->
          ValueValidation
            Core.<$> (o Core..:? "values" Core..!= Core.mempty)
      )

instance Core.ToJSON ValueValidation where
  toJSON ValueValidation {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

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
      ( \o ->
          WorkflowGraph
            Core.<$> (o Core..:? "nodes" Core..!= Core.mempty)
      )

instance Core.ToJSON WorkflowGraph where
  toJSON WorkflowGraph {..} =
    Core.object
      (Core.catMaybes [("nodes" Core..=) Core.<$> nodes])

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
    dagEndTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. DAG start time, only set for workflows with dag_timeout when DAG begins.
    dagStartTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. The timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
    dagTimeout :: (Core.Maybe Core.GDuration),
    -- | Output only. The delete cluster operation metadata.
    deleteCluster :: (Core.Maybe ClusterOperation),
    -- | Output only. Workflow end time.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. The workflow graph.
    graph :: (Core.Maybe WorkflowGraph),
    -- | Map from parameter names to values that were used for those parameters.
    parameters :: (Core.Maybe WorkflowMetadata_Parameters),
    -- | Output only. Workflow start time.
    startTime :: (Core.Maybe Core.DateTime'),
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowMetadata_Parameters' with the minimum fields required to make a request.
newWorkflowMetadata_Parameters ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  WorkflowMetadata_Parameters
newWorkflowMetadata_Parameters addtional =
  WorkflowMetadata_Parameters {addtional = addtional}

instance Core.FromJSON WorkflowMetadata_Parameters where
  parseJSON =
    Core.withObject
      "WorkflowMetadata_Parameters"
      ( \o ->
          WorkflowMetadata_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkflowMetadata_Parameters where
  toJSON WorkflowMetadata_Parameters {..} =
    Core.toJSON addtional

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
            Core.<*> ( o Core..:? "prerequisiteStepIds"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stepId")
      )

instance Core.ToJSON WorkflowNode where
  toJSON WorkflowNode {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("jobId" Core..=) Core.<$> jobId,
            ("prerequisiteStepIds" Core..=)
              Core.<$> prerequisiteStepIds,
            ("state" Core..=) Core.<$> state,
            ("stepId" Core..=) Core.<$> stepId
          ]
      )

-- | A Dataproc workflow template resource.
--
-- /See:/ 'newWorkflowTemplate' smart constructor.
data WorkflowTemplate = WorkflowTemplate
  { -- | Output only. The time template was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. Timeout duration for the DAG of jobs, expressed in seconds (see JSON representation of duration (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)). The timeout duration must be from 10 minutes (\"600s\") to 24 hours (\"86400s\"). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a managed cluster, the cluster is deleted.
    dagTimeout :: (Core.Maybe Core.GDuration),
    -- |
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
    updateTime :: (Core.Maybe Core.DateTime'),
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
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "jobs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parameters" Core..!= Core.mempty)
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
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkflowTemplate_Labels' with the minimum fields required to make a request.
newWorkflowTemplate_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  WorkflowTemplate_Labels
newWorkflowTemplate_Labels addtional =
  WorkflowTemplate_Labels {addtional = addtional}

instance Core.FromJSON WorkflowTemplate_Labels where
  parseJSON =
    Core.withObject
      "WorkflowTemplate_Labels"
      ( \o ->
          WorkflowTemplate_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkflowTemplate_Labels where
  toJSON WorkflowTemplate_Labels {..} =
    Core.toJSON addtional

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
          [ ("clusterSelector" Core..=)
              Core.<$> clusterSelector,
            ("managedCluster" Core..=) Core.<$> managedCluster
          ]
      )

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
