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
    cloudPlatformScope,

    -- * Resources

    -- ** dataproc.projects.locations.autoscalingPolicies.create
    DataprocProjectsLocationsAutoscalingPoliciesCreateResource,
    newDataprocProjectsLocationsAutoscalingPoliciesCreate,
    DataprocProjectsLocationsAutoscalingPoliciesCreate,

    -- ** dataproc.projects.locations.autoscalingPolicies.delete
    DataprocProjectsLocationsAutoscalingPoliciesDeleteResource,
    newDataprocProjectsLocationsAutoscalingPoliciesDelete,
    DataprocProjectsLocationsAutoscalingPoliciesDelete,

    -- ** dataproc.projects.locations.autoscalingPolicies.get
    DataprocProjectsLocationsAutoscalingPoliciesGetResource,
    newDataprocProjectsLocationsAutoscalingPoliciesGet,
    DataprocProjectsLocationsAutoscalingPoliciesGet,

    -- ** dataproc.projects.locations.autoscalingPolicies.getIamPolicy
    DataprocProjectsLocationsAutoscalingPoliciesGetIamPolicyResource,
    newDataprocProjectsLocationsAutoscalingPoliciesGetIamPolicy,
    DataprocProjectsLocationsAutoscalingPoliciesGetIamPolicy,

    -- ** dataproc.projects.locations.autoscalingPolicies.list
    DataprocProjectsLocationsAutoscalingPoliciesListResource,
    newDataprocProjectsLocationsAutoscalingPoliciesList,
    DataprocProjectsLocationsAutoscalingPoliciesList,

    -- ** dataproc.projects.locations.autoscalingPolicies.setIamPolicy
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicyResource,
    newDataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy,
    DataprocProjectsLocationsAutoscalingPoliciesSetIamPolicy,

    -- ** dataproc.projects.locations.autoscalingPolicies.testIamPermissions
    DataprocProjectsLocationsAutoscalingPoliciesTestIamPermissionsResource,
    newDataprocProjectsLocationsAutoscalingPoliciesTestIamPermissions,
    DataprocProjectsLocationsAutoscalingPoliciesTestIamPermissions,

    -- ** dataproc.projects.locations.autoscalingPolicies.update
    DataprocProjectsLocationsAutoscalingPoliciesUpdateResource,
    newDataprocProjectsLocationsAutoscalingPoliciesUpdate,
    DataprocProjectsLocationsAutoscalingPoliciesUpdate,

    -- ** dataproc.projects.locations.batches.create
    DataprocProjectsLocationsBatchesCreateResource,
    newDataprocProjectsLocationsBatchesCreate,
    DataprocProjectsLocationsBatchesCreate,

    -- ** dataproc.projects.locations.batches.delete
    DataprocProjectsLocationsBatchesDeleteResource,
    newDataprocProjectsLocationsBatchesDelete,
    DataprocProjectsLocationsBatchesDelete,

    -- ** dataproc.projects.locations.batches.get
    DataprocProjectsLocationsBatchesGetResource,
    newDataprocProjectsLocationsBatchesGet,
    DataprocProjectsLocationsBatchesGet,

    -- ** dataproc.projects.locations.batches.list
    DataprocProjectsLocationsBatchesListResource,
    newDataprocProjectsLocationsBatchesList,
    DataprocProjectsLocationsBatchesList,

    -- ** dataproc.projects.locations.workflowTemplates.create
    DataprocProjectsLocationsWorkflowTemplatesCreateResource,
    newDataprocProjectsLocationsWorkflowTemplatesCreate,
    DataprocProjectsLocationsWorkflowTemplatesCreate,

    -- ** dataproc.projects.locations.workflowTemplates.delete
    DataprocProjectsLocationsWorkflowTemplatesDeleteResource,
    newDataprocProjectsLocationsWorkflowTemplatesDelete,
    DataprocProjectsLocationsWorkflowTemplatesDelete,

    -- ** dataproc.projects.locations.workflowTemplates.get
    DataprocProjectsLocationsWorkflowTemplatesGetResource,
    newDataprocProjectsLocationsWorkflowTemplatesGet,
    DataprocProjectsLocationsWorkflowTemplatesGet,

    -- ** dataproc.projects.locations.workflowTemplates.getIamPolicy
    DataprocProjectsLocationsWorkflowTemplatesGetIamPolicyResource,
    newDataprocProjectsLocationsWorkflowTemplatesGetIamPolicy,
    DataprocProjectsLocationsWorkflowTemplatesGetIamPolicy,

    -- ** dataproc.projects.locations.workflowTemplates.instantiate
    DataprocProjectsLocationsWorkflowTemplatesInstantiateResource,
    newDataprocProjectsLocationsWorkflowTemplatesInstantiate,
    DataprocProjectsLocationsWorkflowTemplatesInstantiate,

    -- ** dataproc.projects.locations.workflowTemplates.instantiateInline
    DataprocProjectsLocationsWorkflowTemplatesInstantiateInlineResource,
    newDataprocProjectsLocationsWorkflowTemplatesInstantiateInline,
    DataprocProjectsLocationsWorkflowTemplatesInstantiateInline,

    -- ** dataproc.projects.locations.workflowTemplates.list
    DataprocProjectsLocationsWorkflowTemplatesListResource,
    newDataprocProjectsLocationsWorkflowTemplatesList,
    DataprocProjectsLocationsWorkflowTemplatesList,

    -- ** dataproc.projects.locations.workflowTemplates.setIamPolicy
    DataprocProjectsLocationsWorkflowTemplatesSetIamPolicyResource,
    newDataprocProjectsLocationsWorkflowTemplatesSetIamPolicy,
    DataprocProjectsLocationsWorkflowTemplatesSetIamPolicy,

    -- ** dataproc.projects.locations.workflowTemplates.testIamPermissions
    DataprocProjectsLocationsWorkflowTemplatesTestIamPermissionsResource,
    newDataprocProjectsLocationsWorkflowTemplatesTestIamPermissions,
    DataprocProjectsLocationsWorkflowTemplatesTestIamPermissions,

    -- ** dataproc.projects.locations.workflowTemplates.update
    DataprocProjectsLocationsWorkflowTemplatesUpdateResource,
    newDataprocProjectsLocationsWorkflowTemplatesUpdate,
    DataprocProjectsLocationsWorkflowTemplatesUpdate,

    -- ** dataproc.projects.regions.autoscalingPolicies.create
    DataprocProjectsRegionsAutoscalingPoliciesCreateResource,
    newDataprocProjectsRegionsAutoscalingPoliciesCreate,
    DataprocProjectsRegionsAutoscalingPoliciesCreate,

    -- ** dataproc.projects.regions.autoscalingPolicies.delete
    DataprocProjectsRegionsAutoscalingPoliciesDeleteResource,
    newDataprocProjectsRegionsAutoscalingPoliciesDelete,
    DataprocProjectsRegionsAutoscalingPoliciesDelete,

    -- ** dataproc.projects.regions.autoscalingPolicies.get
    DataprocProjectsRegionsAutoscalingPoliciesGetResource,
    newDataprocProjectsRegionsAutoscalingPoliciesGet,
    DataprocProjectsRegionsAutoscalingPoliciesGet,

    -- ** dataproc.projects.regions.autoscalingPolicies.getIamPolicy
    DataprocProjectsRegionsAutoscalingPoliciesGetIamPolicyResource,
    newDataprocProjectsRegionsAutoscalingPoliciesGetIamPolicy,
    DataprocProjectsRegionsAutoscalingPoliciesGetIamPolicy,

    -- ** dataproc.projects.regions.autoscalingPolicies.list
    DataprocProjectsRegionsAutoscalingPoliciesListResource,
    newDataprocProjectsRegionsAutoscalingPoliciesList,
    DataprocProjectsRegionsAutoscalingPoliciesList,

    -- ** dataproc.projects.regions.autoscalingPolicies.setIamPolicy
    DataprocProjectsRegionsAutoscalingPoliciesSetIamPolicyResource,
    newDataprocProjectsRegionsAutoscalingPoliciesSetIamPolicy,
    DataprocProjectsRegionsAutoscalingPoliciesSetIamPolicy,

    -- ** dataproc.projects.regions.autoscalingPolicies.testIamPermissions
    DataprocProjectsRegionsAutoscalingPoliciesTestIamPermissionsResource,
    newDataprocProjectsRegionsAutoscalingPoliciesTestIamPermissions,
    DataprocProjectsRegionsAutoscalingPoliciesTestIamPermissions,

    -- ** dataproc.projects.regions.autoscalingPolicies.update
    DataprocProjectsRegionsAutoscalingPoliciesUpdateResource,
    newDataprocProjectsRegionsAutoscalingPoliciesUpdate,
    DataprocProjectsRegionsAutoscalingPoliciesUpdate,

    -- ** dataproc.projects.regions.clusters.create
    DataprocProjectsRegionsClustersCreateResource,
    newDataprocProjectsRegionsClustersCreate,
    DataprocProjectsRegionsClustersCreate,

    -- ** dataproc.projects.regions.clusters.delete
    DataprocProjectsRegionsClustersDeleteResource,
    newDataprocProjectsRegionsClustersDelete,
    DataprocProjectsRegionsClustersDelete,

    -- ** dataproc.projects.regions.clusters.diagnose
    DataprocProjectsRegionsClustersDiagnoseResource,
    newDataprocProjectsRegionsClustersDiagnose,
    DataprocProjectsRegionsClustersDiagnose,

    -- ** dataproc.projects.regions.clusters.get
    DataprocProjectsRegionsClustersGetResource,
    newDataprocProjectsRegionsClustersGet,
    DataprocProjectsRegionsClustersGet,

    -- ** dataproc.projects.regions.clusters.getIamPolicy
    DataprocProjectsRegionsClustersGetIamPolicyResource,
    newDataprocProjectsRegionsClustersGetIamPolicy,
    DataprocProjectsRegionsClustersGetIamPolicy,

    -- ** dataproc.projects.regions.clusters.injectCredentials
    DataprocProjectsRegionsClustersInjectCredentialsResource,
    newDataprocProjectsRegionsClustersInjectCredentials,
    DataprocProjectsRegionsClustersInjectCredentials,

    -- ** dataproc.projects.regions.clusters.list
    DataprocProjectsRegionsClustersListResource,
    newDataprocProjectsRegionsClustersList,
    DataprocProjectsRegionsClustersList,

    -- ** dataproc.projects.regions.clusters.patch
    DataprocProjectsRegionsClustersPatchResource,
    newDataprocProjectsRegionsClustersPatch,
    DataprocProjectsRegionsClustersPatch,

    -- ** dataproc.projects.regions.clusters.repair
    DataprocProjectsRegionsClustersRepairResource,
    newDataprocProjectsRegionsClustersRepair,
    DataprocProjectsRegionsClustersRepair,

    -- ** dataproc.projects.regions.clusters.setIamPolicy
    DataprocProjectsRegionsClustersSetIamPolicyResource,
    newDataprocProjectsRegionsClustersSetIamPolicy,
    DataprocProjectsRegionsClustersSetIamPolicy,

    -- ** dataproc.projects.regions.clusters.start
    DataprocProjectsRegionsClustersStartResource,
    newDataprocProjectsRegionsClustersStart,
    DataprocProjectsRegionsClustersStart,

    -- ** dataproc.projects.regions.clusters.stop
    DataprocProjectsRegionsClustersStopResource,
    newDataprocProjectsRegionsClustersStop,
    DataprocProjectsRegionsClustersStop,

    -- ** dataproc.projects.regions.clusters.testIamPermissions
    DataprocProjectsRegionsClustersTestIamPermissionsResource,
    newDataprocProjectsRegionsClustersTestIamPermissions,
    DataprocProjectsRegionsClustersTestIamPermissions,

    -- ** dataproc.projects.regions.jobs.cancel
    DataprocProjectsRegionsJobsCancelResource,
    newDataprocProjectsRegionsJobsCancel,
    DataprocProjectsRegionsJobsCancel,

    -- ** dataproc.projects.regions.jobs.delete
    DataprocProjectsRegionsJobsDeleteResource,
    newDataprocProjectsRegionsJobsDelete,
    DataprocProjectsRegionsJobsDelete,

    -- ** dataproc.projects.regions.jobs.get
    DataprocProjectsRegionsJobsGetResource,
    newDataprocProjectsRegionsJobsGet,
    DataprocProjectsRegionsJobsGet,

    -- ** dataproc.projects.regions.jobs.getIamPolicy
    DataprocProjectsRegionsJobsGetIamPolicyResource,
    newDataprocProjectsRegionsJobsGetIamPolicy,
    DataprocProjectsRegionsJobsGetIamPolicy,

    -- ** dataproc.projects.regions.jobs.list
    DataprocProjectsRegionsJobsListResource,
    newDataprocProjectsRegionsJobsList,
    DataprocProjectsRegionsJobsList,

    -- ** dataproc.projects.regions.jobs.patch
    DataprocProjectsRegionsJobsPatchResource,
    newDataprocProjectsRegionsJobsPatch,
    DataprocProjectsRegionsJobsPatch,

    -- ** dataproc.projects.regions.jobs.setIamPolicy
    DataprocProjectsRegionsJobsSetIamPolicyResource,
    newDataprocProjectsRegionsJobsSetIamPolicy,
    DataprocProjectsRegionsJobsSetIamPolicy,

    -- ** dataproc.projects.regions.jobs.submit
    DataprocProjectsRegionsJobsSubmitResource,
    newDataprocProjectsRegionsJobsSubmit,
    DataprocProjectsRegionsJobsSubmit,

    -- ** dataproc.projects.regions.jobs.submitAsOperation
    DataprocProjectsRegionsJobsSubmitAsOperationResource,
    newDataprocProjectsRegionsJobsSubmitAsOperation,
    DataprocProjectsRegionsJobsSubmitAsOperation,

    -- ** dataproc.projects.regions.jobs.testIamPermissions
    DataprocProjectsRegionsJobsTestIamPermissionsResource,
    newDataprocProjectsRegionsJobsTestIamPermissions,
    DataprocProjectsRegionsJobsTestIamPermissions,

    -- ** dataproc.projects.regions.operations.cancel
    DataprocProjectsRegionsOperationsCancelResource,
    newDataprocProjectsRegionsOperationsCancel,
    DataprocProjectsRegionsOperationsCancel,

    -- ** dataproc.projects.regions.operations.delete
    DataprocProjectsRegionsOperationsDeleteResource,
    newDataprocProjectsRegionsOperationsDelete,
    DataprocProjectsRegionsOperationsDelete,

    -- ** dataproc.projects.regions.operations.get
    DataprocProjectsRegionsOperationsGetResource,
    newDataprocProjectsRegionsOperationsGet,
    DataprocProjectsRegionsOperationsGet,

    -- ** dataproc.projects.regions.operations.getIamPolicy
    DataprocProjectsRegionsOperationsGetIamPolicyResource,
    newDataprocProjectsRegionsOperationsGetIamPolicy,
    DataprocProjectsRegionsOperationsGetIamPolicy,

    -- ** dataproc.projects.regions.operations.list
    DataprocProjectsRegionsOperationsListResource,
    newDataprocProjectsRegionsOperationsList,
    DataprocProjectsRegionsOperationsList,

    -- ** dataproc.projects.regions.operations.setIamPolicy
    DataprocProjectsRegionsOperationsSetIamPolicyResource,
    newDataprocProjectsRegionsOperationsSetIamPolicy,
    DataprocProjectsRegionsOperationsSetIamPolicy,

    -- ** dataproc.projects.regions.operations.testIamPermissions
    DataprocProjectsRegionsOperationsTestIamPermissionsResource,
    newDataprocProjectsRegionsOperationsTestIamPermissions,
    DataprocProjectsRegionsOperationsTestIamPermissions,

    -- ** dataproc.projects.regions.workflowTemplates.create
    DataprocProjectsRegionsWorkflowTemplatesCreateResource,
    newDataprocProjectsRegionsWorkflowTemplatesCreate,
    DataprocProjectsRegionsWorkflowTemplatesCreate,

    -- ** dataproc.projects.regions.workflowTemplates.delete
    DataprocProjectsRegionsWorkflowTemplatesDeleteResource,
    newDataprocProjectsRegionsWorkflowTemplatesDelete,
    DataprocProjectsRegionsWorkflowTemplatesDelete,

    -- ** dataproc.projects.regions.workflowTemplates.get
    DataprocProjectsRegionsWorkflowTemplatesGetResource,
    newDataprocProjectsRegionsWorkflowTemplatesGet,
    DataprocProjectsRegionsWorkflowTemplatesGet,

    -- ** dataproc.projects.regions.workflowTemplates.getIamPolicy
    DataprocProjectsRegionsWorkflowTemplatesGetIamPolicyResource,
    newDataprocProjectsRegionsWorkflowTemplatesGetIamPolicy,
    DataprocProjectsRegionsWorkflowTemplatesGetIamPolicy,

    -- ** dataproc.projects.regions.workflowTemplates.instantiate
    DataprocProjectsRegionsWorkflowTemplatesInstantiateResource,
    newDataprocProjectsRegionsWorkflowTemplatesInstantiate,
    DataprocProjectsRegionsWorkflowTemplatesInstantiate,

    -- ** dataproc.projects.regions.workflowTemplates.instantiateInline
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInlineResource,
    newDataprocProjectsRegionsWorkflowTemplatesInstantiateInline,
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInline,

    -- ** dataproc.projects.regions.workflowTemplates.list
    DataprocProjectsRegionsWorkflowTemplatesListResource,
    newDataprocProjectsRegionsWorkflowTemplatesList,
    DataprocProjectsRegionsWorkflowTemplatesList,

    -- ** dataproc.projects.regions.workflowTemplates.setIamPolicy
    DataprocProjectsRegionsWorkflowTemplatesSetIamPolicyResource,
    newDataprocProjectsRegionsWorkflowTemplatesSetIamPolicy,
    DataprocProjectsRegionsWorkflowTemplatesSetIamPolicy,

    -- ** dataproc.projects.regions.workflowTemplates.testIamPermissions
    DataprocProjectsRegionsWorkflowTemplatesTestIamPermissionsResource,
    newDataprocProjectsRegionsWorkflowTemplatesTestIamPermissions,
    DataprocProjectsRegionsWorkflowTemplatesTestIamPermissions,

    -- ** dataproc.projects.regions.workflowTemplates.update
    DataprocProjectsRegionsWorkflowTemplatesUpdateResource,
    newDataprocProjectsRegionsWorkflowTemplatesUpdate,
    DataprocProjectsRegionsWorkflowTemplatesUpdate,

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
