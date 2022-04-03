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
-- Module      : Gogol.Dataproc
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Hadoop-based clusters and jobs on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference>
module Gogol.Dataproc
  ( -- * Configuration
    dataprocService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** dataproc.projects.locations.autoscalingPolicies.create
    DataprocProjectsLocationsAutoscalingPoliciesCreateResource,
    DataprocProjectsLocationsAutoscalingPoliciesCreate (..),
    newDataprocProjectsLocationsAutoscalingPoliciesCreate,

    -- ** dataproc.projects.locations.autoscalingPolicies.delete
    DataprocProjectsLocationsAutoscalingPoliciesDeleteResource,
    DataprocProjectsLocationsAutoscalingPoliciesDelete (..),
    newDataprocProjectsLocationsAutoscalingPoliciesDelete,

    -- ** dataproc.projects.locations.autoscalingPolicies.get
    DataprocProjectsLocationsAutoscalingPoliciesGetResource,
    DataprocProjectsLocationsAutoscalingPoliciesGet (..),
    newDataprocProjectsLocationsAutoscalingPoliciesGet,

    -- ** dataproc.projects.locations.autoscalingPolicies.getIamPolicy
    DataprocProjectsLocationsAutoscalingPoliciesGetIamPolicyResource,
    DataprocProjectsLocationsAutoscalingPoliciesGetIamPolicy (..),
    newDataprocProjectsLocationsAutoscalingPoliciesGetIamPolicy,

    -- ** dataproc.projects.locations.autoscalingPolicies.list
    DataprocProjectsLocationsAutoscalingPoliciesListResource,
    DataprocProjectsLocationsAutoscalingPoliciesList (..),
    newDataprocProjectsLocationsAutoscalingPoliciesList,

    -- ** dataproc.projects.locations.autoscalingPolicies.setIamPolicy
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicyResource,
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy (..),
    newDataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy,

    -- ** dataproc.projects.locations.autoscalingPolicies.testIamPermissions
    DataprocProjectsLocationsAutoscalingPoliciesTestIamPermissionsResource,
    DataprocProjectsLocationsAutoscalingPoliciesTestIamPermissions (..),
    newDataprocProjectsLocationsAutoscalingPoliciesTestIamPermissions,

    -- ** dataproc.projects.locations.autoscalingPolicies.update
    DataprocProjectsLocationsAutoscalingPoliciesUpdateResource,
    DataprocProjectsLocationsAutoscalingPoliciesUpdate (..),
    newDataprocProjectsLocationsAutoscalingPoliciesUpdate,

    -- ** dataproc.projects.locations.batches.create
    DataprocProjectsLocationsBatchesCreateResource,
    DataprocProjectsLocationsBatchesCreate (..),
    newDataprocProjectsLocationsBatchesCreate,

    -- ** dataproc.projects.locations.batches.delete
    DataprocProjectsLocationsBatchesDeleteResource,
    DataprocProjectsLocationsBatchesDelete (..),
    newDataprocProjectsLocationsBatchesDelete,

    -- ** dataproc.projects.locations.batches.get
    DataprocProjectsLocationsBatchesGetResource,
    DataprocProjectsLocationsBatchesGet (..),
    newDataprocProjectsLocationsBatchesGet,

    -- ** dataproc.projects.locations.batches.list
    DataprocProjectsLocationsBatchesListResource,
    DataprocProjectsLocationsBatchesList (..),
    newDataprocProjectsLocationsBatchesList,

    -- ** dataproc.projects.locations.workflowTemplates.create
    DataprocProjectsLocationsWorkflowTemplatesCreateResource,
    DataprocProjectsLocationsWorkflowTemplatesCreate (..),
    newDataprocProjectsLocationsWorkflowTemplatesCreate,

    -- ** dataproc.projects.locations.workflowTemplates.delete
    DataprocProjectsLocationsWorkflowTemplatesDeleteResource,
    DataprocProjectsLocationsWorkflowTemplatesDelete (..),
    newDataprocProjectsLocationsWorkflowTemplatesDelete,

    -- ** dataproc.projects.locations.workflowTemplates.get
    DataprocProjectsLocationsWorkflowTemplatesGetResource,
    DataprocProjectsLocationsWorkflowTemplatesGet (..),
    newDataprocProjectsLocationsWorkflowTemplatesGet,

    -- ** dataproc.projects.locations.workflowTemplates.getIamPolicy
    DataprocProjectsLocationsWorkflowTemplatesGetIamPolicyResource,
    DataprocProjectsLocationsWorkflowTemplatesGetIamPolicy (..),
    newDataprocProjectsLocationsWorkflowTemplatesGetIamPolicy,

    -- ** dataproc.projects.locations.workflowTemplates.instantiate
    DataprocProjectsLocationsWorkflowTemplatesInstantiateResource,
    DataprocProjectsLocationsWorkflowTemplatesInstantiate (..),
    newDataprocProjectsLocationsWorkflowTemplatesInstantiate,

    -- ** dataproc.projects.locations.workflowTemplates.instantiateInline
    DataprocProjectsLocationsWorkflowTemplatesInstantiateInlineResource,
    DataprocProjectsLocationsWorkflowTemplatesInstantiateInline (..),
    newDataprocProjectsLocationsWorkflowTemplatesInstantiateInline,

    -- ** dataproc.projects.locations.workflowTemplates.list
    DataprocProjectsLocationsWorkflowTemplatesListResource,
    DataprocProjectsLocationsWorkflowTemplatesList (..),
    newDataprocProjectsLocationsWorkflowTemplatesList,

    -- ** dataproc.projects.locations.workflowTemplates.setIamPolicy
    DataprocProjectsLocationsWorkflowTemplatesSetIamPolicyResource,
    DataprocProjectsLocationsWorkflowTemplatesSetIamPolicy (..),
    newDataprocProjectsLocationsWorkflowTemplatesSetIamPolicy,

    -- ** dataproc.projects.locations.workflowTemplates.testIamPermissions
    DataprocProjectsLocationsWorkflowTemplatesTestIamPermissionsResource,
    DataprocProjectsLocationsWorkflowTemplatesTestIamPermissions (..),
    newDataprocProjectsLocationsWorkflowTemplatesTestIamPermissions,

    -- ** dataproc.projects.locations.workflowTemplates.update
    DataprocProjectsLocationsWorkflowTemplatesUpdateResource,
    DataprocProjectsLocationsWorkflowTemplatesUpdate (..),
    newDataprocProjectsLocationsWorkflowTemplatesUpdate,

    -- ** dataproc.projects.regions.autoscalingPolicies.create
    DataprocProjectsRegionsAutoscalingPoliciesCreateResource,
    DataprocProjectsRegionsAutoscalingPoliciesCreate (..),
    newDataprocProjectsRegionsAutoscalingPoliciesCreate,

    -- ** dataproc.projects.regions.autoscalingPolicies.delete
    DataprocProjectsRegionsAutoscalingPoliciesDeleteResource,
    DataprocProjectsRegionsAutoscalingPoliciesDelete (..),
    newDataprocProjectsRegionsAutoscalingPoliciesDelete,

    -- ** dataproc.projects.regions.autoscalingPolicies.get
    DataprocProjectsRegionsAutoscalingPoliciesGetResource,
    DataprocProjectsRegionsAutoscalingPoliciesGet (..),
    newDataprocProjectsRegionsAutoscalingPoliciesGet,

    -- ** dataproc.projects.regions.autoscalingPolicies.getIamPolicy
    DataprocProjectsRegionsAutoscalingPoliciesGetIamPolicyResource,
    DataprocProjectsRegionsAutoscalingPoliciesGetIamPolicy (..),
    newDataprocProjectsRegionsAutoscalingPoliciesGetIamPolicy,

    -- ** dataproc.projects.regions.autoscalingPolicies.list
    DataprocProjectsRegionsAutoscalingPoliciesListResource,
    DataprocProjectsRegionsAutoscalingPoliciesList (..),
    newDataprocProjectsRegionsAutoscalingPoliciesList,

    -- ** dataproc.projects.regions.autoscalingPolicies.setIamPolicy
    DataprocProjectsRegionsAutoscalingPoliciesSetIamPolicyResource,
    DataprocProjectsRegionsAutoscalingPoliciesSetIamPolicy (..),
    newDataprocProjectsRegionsAutoscalingPoliciesSetIamPolicy,

    -- ** dataproc.projects.regions.autoscalingPolicies.testIamPermissions
    DataprocProjectsRegionsAutoscalingPoliciesTestIamPermissionsResource,
    DataprocProjectsRegionsAutoscalingPoliciesTestIamPermissions (..),
    newDataprocProjectsRegionsAutoscalingPoliciesTestIamPermissions,

    -- ** dataproc.projects.regions.autoscalingPolicies.update
    DataprocProjectsRegionsAutoscalingPoliciesUpdateResource,
    DataprocProjectsRegionsAutoscalingPoliciesUpdate (..),
    newDataprocProjectsRegionsAutoscalingPoliciesUpdate,

    -- ** dataproc.projects.regions.clusters.create
    DataprocProjectsRegionsClustersCreateResource,
    DataprocProjectsRegionsClustersCreate (..),
    newDataprocProjectsRegionsClustersCreate,

    -- ** dataproc.projects.regions.clusters.delete
    DataprocProjectsRegionsClustersDeleteResource,
    DataprocProjectsRegionsClustersDelete (..),
    newDataprocProjectsRegionsClustersDelete,

    -- ** dataproc.projects.regions.clusters.diagnose
    DataprocProjectsRegionsClustersDiagnoseResource,
    DataprocProjectsRegionsClustersDiagnose (..),
    newDataprocProjectsRegionsClustersDiagnose,

    -- ** dataproc.projects.regions.clusters.get
    DataprocProjectsRegionsClustersGetResource,
    DataprocProjectsRegionsClustersGet (..),
    newDataprocProjectsRegionsClustersGet,

    -- ** dataproc.projects.regions.clusters.getIamPolicy
    DataprocProjectsRegionsClustersGetIamPolicyResource,
    DataprocProjectsRegionsClustersGetIamPolicy (..),
    newDataprocProjectsRegionsClustersGetIamPolicy,

    -- ** dataproc.projects.regions.clusters.injectCredentials
    DataprocProjectsRegionsClustersInjectCredentialsResource,
    DataprocProjectsRegionsClustersInjectCredentials (..),
    newDataprocProjectsRegionsClustersInjectCredentials,

    -- ** dataproc.projects.regions.clusters.list
    DataprocProjectsRegionsClustersListResource,
    DataprocProjectsRegionsClustersList (..),
    newDataprocProjectsRegionsClustersList,

    -- ** dataproc.projects.regions.clusters.patch
    DataprocProjectsRegionsClustersPatchResource,
    DataprocProjectsRegionsClustersPatch (..),
    newDataprocProjectsRegionsClustersPatch,

    -- ** dataproc.projects.regions.clusters.repair
    DataprocProjectsRegionsClustersRepairResource,
    DataprocProjectsRegionsClustersRepair (..),
    newDataprocProjectsRegionsClustersRepair,

    -- ** dataproc.projects.regions.clusters.setIamPolicy
    DataprocProjectsRegionsClustersSetIamPolicyResource,
    DataprocProjectsRegionsClustersSetIamPolicy (..),
    newDataprocProjectsRegionsClustersSetIamPolicy,

    -- ** dataproc.projects.regions.clusters.start
    DataprocProjectsRegionsClustersStartResource,
    DataprocProjectsRegionsClustersStart (..),
    newDataprocProjectsRegionsClustersStart,

    -- ** dataproc.projects.regions.clusters.stop
    DataprocProjectsRegionsClustersStopResource,
    DataprocProjectsRegionsClustersStop (..),
    newDataprocProjectsRegionsClustersStop,

    -- ** dataproc.projects.regions.clusters.testIamPermissions
    DataprocProjectsRegionsClustersTestIamPermissionsResource,
    DataprocProjectsRegionsClustersTestIamPermissions (..),
    newDataprocProjectsRegionsClustersTestIamPermissions,

    -- ** dataproc.projects.regions.jobs.cancel
    DataprocProjectsRegionsJobsCancelResource,
    DataprocProjectsRegionsJobsCancel (..),
    newDataprocProjectsRegionsJobsCancel,

    -- ** dataproc.projects.regions.jobs.delete
    DataprocProjectsRegionsJobsDeleteResource,
    DataprocProjectsRegionsJobsDelete (..),
    newDataprocProjectsRegionsJobsDelete,

    -- ** dataproc.projects.regions.jobs.get
    DataprocProjectsRegionsJobsGetResource,
    DataprocProjectsRegionsJobsGet (..),
    newDataprocProjectsRegionsJobsGet,

    -- ** dataproc.projects.regions.jobs.getIamPolicy
    DataprocProjectsRegionsJobsGetIamPolicyResource,
    DataprocProjectsRegionsJobsGetIamPolicy (..),
    newDataprocProjectsRegionsJobsGetIamPolicy,

    -- ** dataproc.projects.regions.jobs.list
    DataprocProjectsRegionsJobsListResource,
    DataprocProjectsRegionsJobsList (..),
    newDataprocProjectsRegionsJobsList,

    -- ** dataproc.projects.regions.jobs.patch
    DataprocProjectsRegionsJobsPatchResource,
    DataprocProjectsRegionsJobsPatch (..),
    newDataprocProjectsRegionsJobsPatch,

    -- ** dataproc.projects.regions.jobs.setIamPolicy
    DataprocProjectsRegionsJobsSetIamPolicyResource,
    DataprocProjectsRegionsJobsSetIamPolicy (..),
    newDataprocProjectsRegionsJobsSetIamPolicy,

    -- ** dataproc.projects.regions.jobs.submit
    DataprocProjectsRegionsJobsSubmitResource,
    DataprocProjectsRegionsJobsSubmit (..),
    newDataprocProjectsRegionsJobsSubmit,

    -- ** dataproc.projects.regions.jobs.submitAsOperation
    DataprocProjectsRegionsJobsSubmitAsOperationResource,
    DataprocProjectsRegionsJobsSubmitAsOperation (..),
    newDataprocProjectsRegionsJobsSubmitAsOperation,

    -- ** dataproc.projects.regions.jobs.testIamPermissions
    DataprocProjectsRegionsJobsTestIamPermissionsResource,
    DataprocProjectsRegionsJobsTestIamPermissions (..),
    newDataprocProjectsRegionsJobsTestIamPermissions,

    -- ** dataproc.projects.regions.operations.cancel
    DataprocProjectsRegionsOperationsCancelResource,
    DataprocProjectsRegionsOperationsCancel (..),
    newDataprocProjectsRegionsOperationsCancel,

    -- ** dataproc.projects.regions.operations.delete
    DataprocProjectsRegionsOperationsDeleteResource,
    DataprocProjectsRegionsOperationsDelete (..),
    newDataprocProjectsRegionsOperationsDelete,

    -- ** dataproc.projects.regions.operations.get
    DataprocProjectsRegionsOperationsGetResource,
    DataprocProjectsRegionsOperationsGet (..),
    newDataprocProjectsRegionsOperationsGet,

    -- ** dataproc.projects.regions.operations.getIamPolicy
    DataprocProjectsRegionsOperationsGetIamPolicyResource,
    DataprocProjectsRegionsOperationsGetIamPolicy (..),
    newDataprocProjectsRegionsOperationsGetIamPolicy,

    -- ** dataproc.projects.regions.operations.list
    DataprocProjectsRegionsOperationsListResource,
    DataprocProjectsRegionsOperationsList (..),
    newDataprocProjectsRegionsOperationsList,

    -- ** dataproc.projects.regions.operations.setIamPolicy
    DataprocProjectsRegionsOperationsSetIamPolicyResource,
    DataprocProjectsRegionsOperationsSetIamPolicy (..),
    newDataprocProjectsRegionsOperationsSetIamPolicy,

    -- ** dataproc.projects.regions.operations.testIamPermissions
    DataprocProjectsRegionsOperationsTestIamPermissionsResource,
    DataprocProjectsRegionsOperationsTestIamPermissions (..),
    newDataprocProjectsRegionsOperationsTestIamPermissions,

    -- ** dataproc.projects.regions.workflowTemplates.create
    DataprocProjectsRegionsWorkflowTemplatesCreateResource,
    DataprocProjectsRegionsWorkflowTemplatesCreate (..),
    newDataprocProjectsRegionsWorkflowTemplatesCreate,

    -- ** dataproc.projects.regions.workflowTemplates.delete
    DataprocProjectsRegionsWorkflowTemplatesDeleteResource,
    DataprocProjectsRegionsWorkflowTemplatesDelete (..),
    newDataprocProjectsRegionsWorkflowTemplatesDelete,

    -- ** dataproc.projects.regions.workflowTemplates.get
    DataprocProjectsRegionsWorkflowTemplatesGetResource,
    DataprocProjectsRegionsWorkflowTemplatesGet (..),
    newDataprocProjectsRegionsWorkflowTemplatesGet,

    -- ** dataproc.projects.regions.workflowTemplates.getIamPolicy
    DataprocProjectsRegionsWorkflowTemplatesGetIamPolicyResource,
    DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy (..),
    newDataprocProjectsRegionsWorkflowTemplatesGetIamPolicy,

    -- ** dataproc.projects.regions.workflowTemplates.instantiate
    DataprocProjectsRegionsWorkflowTemplatesInstantiateResource,
    DataprocProjectsRegionsWorkflowTemplatesInstantiate (..),
    newDataprocProjectsRegionsWorkflowTemplatesInstantiate,

    -- ** dataproc.projects.regions.workflowTemplates.instantiateInline
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInlineResource,
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInline (..),
    newDataprocProjectsRegionsWorkflowTemplatesInstantiateInline,

    -- ** dataproc.projects.regions.workflowTemplates.list
    DataprocProjectsRegionsWorkflowTemplatesListResource,
    DataprocProjectsRegionsWorkflowTemplatesList (..),
    newDataprocProjectsRegionsWorkflowTemplatesList,

    -- ** dataproc.projects.regions.workflowTemplates.setIamPolicy
    DataprocProjectsRegionsWorkflowTemplatesSetIamPolicyResource,
    DataprocProjectsRegionsWorkflowTemplatesSetIamPolicy (..),
    newDataprocProjectsRegionsWorkflowTemplatesSetIamPolicy,

    -- ** dataproc.projects.regions.workflowTemplates.testIamPermissions
    DataprocProjectsRegionsWorkflowTemplatesTestIamPermissionsResource,
    DataprocProjectsRegionsWorkflowTemplatesTestIamPermissions (..),
    newDataprocProjectsRegionsWorkflowTemplatesTestIamPermissions,

    -- ** dataproc.projects.regions.workflowTemplates.update
    DataprocProjectsRegionsWorkflowTemplatesUpdateResource,
    DataprocProjectsRegionsWorkflowTemplatesUpdate (..),
    newDataprocProjectsRegionsWorkflowTemplatesUpdate,

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

import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Create
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Delete
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Get
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.GetIamPolicy
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.List
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.SetIamPolicy
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.TestIamPermissions
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Update
import Gogol.Dataproc.Projects.Locations.Batches.Create
import Gogol.Dataproc.Projects.Locations.Batches.Delete
import Gogol.Dataproc.Projects.Locations.Batches.Get
import Gogol.Dataproc.Projects.Locations.Batches.List
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.Create
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.Delete
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.Get
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.GetIamPolicy
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.Instantiate
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.InstantiateInline
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.List
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.SetIamPolicy
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.TestIamPermissions
import Gogol.Dataproc.Projects.Locations.WorkflowTemplates.Update
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Create
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Delete
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Get
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.GetIamPolicy
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.List
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.SetIamPolicy
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.TestIamPermissions
import Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Update
import Gogol.Dataproc.Projects.Regions.Clusters.Create
import Gogol.Dataproc.Projects.Regions.Clusters.Delete
import Gogol.Dataproc.Projects.Regions.Clusters.Diagnose
import Gogol.Dataproc.Projects.Regions.Clusters.Get
import Gogol.Dataproc.Projects.Regions.Clusters.GetIamPolicy
import Gogol.Dataproc.Projects.Regions.Clusters.InjectCredentials
import Gogol.Dataproc.Projects.Regions.Clusters.List
import Gogol.Dataproc.Projects.Regions.Clusters.Patch
import Gogol.Dataproc.Projects.Regions.Clusters.Repair
import Gogol.Dataproc.Projects.Regions.Clusters.SetIamPolicy
import Gogol.Dataproc.Projects.Regions.Clusters.Start
import Gogol.Dataproc.Projects.Regions.Clusters.Stop
import Gogol.Dataproc.Projects.Regions.Clusters.TestIamPermissions
import Gogol.Dataproc.Projects.Regions.Jobs.Cancel
import Gogol.Dataproc.Projects.Regions.Jobs.Delete
import Gogol.Dataproc.Projects.Regions.Jobs.Get
import Gogol.Dataproc.Projects.Regions.Jobs.GetIamPolicy
import Gogol.Dataproc.Projects.Regions.Jobs.List
import Gogol.Dataproc.Projects.Regions.Jobs.Patch
import Gogol.Dataproc.Projects.Regions.Jobs.SetIamPolicy
import Gogol.Dataproc.Projects.Regions.Jobs.Submit
import Gogol.Dataproc.Projects.Regions.Jobs.SubmitAsOperation
import Gogol.Dataproc.Projects.Regions.Jobs.TestIamPermissions
import Gogol.Dataproc.Projects.Regions.Operations.Cancel
import Gogol.Dataproc.Projects.Regions.Operations.Delete
import Gogol.Dataproc.Projects.Regions.Operations.Get
import Gogol.Dataproc.Projects.Regions.Operations.GetIamPolicy
import Gogol.Dataproc.Projects.Regions.Operations.List
import Gogol.Dataproc.Projects.Regions.Operations.SetIamPolicy
import Gogol.Dataproc.Projects.Regions.Operations.TestIamPermissions
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Create
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Delete
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Get
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.GetIamPolicy
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Instantiate
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.InstantiateInline
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.List
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.SetIamPolicy
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.TestIamPermissions
import Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Update
import Gogol.Dataproc.Types
