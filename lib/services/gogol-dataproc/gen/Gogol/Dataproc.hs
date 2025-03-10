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
-- Module      : Gogol.Dataproc
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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

    -- ** dataproc.projects.locations.batches.analyze
    DataprocProjectsLocationsBatchesAnalyzeResource,
    DataprocProjectsLocationsBatchesAnalyze (..),
    newDataprocProjectsLocationsBatchesAnalyze,

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

    -- ** dataproc.projects.locations.batches.sparkApplications.access
    DataprocProjectsLocationsBatchesSparkApplicationsAccessResource,
    DataprocProjectsLocationsBatchesSparkApplicationsAccess (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccess,

    -- ** dataproc.projects.locations.batches.sparkApplications.accessEnvironmentInfo
    DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfoResource,
    DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo,

    -- ** dataproc.projects.locations.batches.sparkApplications.accessJob
    DataprocProjectsLocationsBatchesSparkApplicationsAccessJobResource,
    DataprocProjectsLocationsBatchesSparkApplicationsAccessJob (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccessJob,

    -- ** dataproc.projects.locations.batches.sparkApplications.accessSqlPlan
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlPlanResource,
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlPlan (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccessSqlPlan,

    -- ** dataproc.projects.locations.batches.sparkApplications.accessSqlQuery
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQueryResource,
    DataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccessSqlQuery,

    -- ** dataproc.projects.locations.batches.sparkApplications.accessStageAttempt
    DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttemptResource,
    DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt,

    -- ** dataproc.projects.locations.batches.sparkApplications.accessStageRddGraph
    DataprocProjectsLocationsBatchesSparkApplicationsAccessStageRddGraphResource,
    DataprocProjectsLocationsBatchesSparkApplicationsAccessStageRddGraph (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsAccessStageRddGraph,

    -- ** dataproc.projects.locations.batches.sparkApplications.search
    DataprocProjectsLocationsBatchesSparkApplicationsSearchResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearch (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearch,

    -- ** dataproc.projects.locations.batches.sparkApplications.searchExecutorStageSummary
    DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummaryResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary,

    -- ** dataproc.projects.locations.batches.sparkApplications.searchExecutors
    DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorsResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors,

    -- ** dataproc.projects.locations.batches.sparkApplications.searchJobs
    DataprocProjectsLocationsBatchesSparkApplicationsSearchJobsResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearchJobs (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchJobs,

    -- ** dataproc.projects.locations.batches.sparkApplications.searchSqlQueries
    DataprocProjectsLocationsBatchesSparkApplicationsSearchSqlQueriesResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearchSqlQueries (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchSqlQueries,

    -- ** dataproc.projects.locations.batches.sparkApplications.searchStageAttemptTasks
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasksResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasks (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttemptTasks,

    -- ** dataproc.projects.locations.batches.sparkApplications.searchStageAttempts
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttemptsResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchStageAttempts,

    -- ** dataproc.projects.locations.batches.sparkApplications.searchStages
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStagesResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSearchStages (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSearchStages,

    -- ** dataproc.projects.locations.batches.sparkApplications.summarizeExecutors
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutorsResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeExecutors,

    -- ** dataproc.projects.locations.batches.sparkApplications.summarizeJobs
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobsResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeJobs,

    -- ** dataproc.projects.locations.batches.sparkApplications.summarizeStageAttemptTasks
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeStageAttemptTasksResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeStageAttemptTasks (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeStageAttemptTasks,

    -- ** dataproc.projects.locations.batches.sparkApplications.summarizeStages
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeStagesResource,
    DataprocProjectsLocationsBatchesSparkApplicationsSummarizeStages (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsSummarizeStages,

    -- ** dataproc.projects.locations.batches.sparkApplications.write
    DataprocProjectsLocationsBatchesSparkApplicationsWriteResource,
    DataprocProjectsLocationsBatchesSparkApplicationsWrite (..),
    newDataprocProjectsLocationsBatchesSparkApplicationsWrite,

    -- ** dataproc.projects.locations.operations.cancel
    DataprocProjectsLocationsOperationsCancelResource,
    DataprocProjectsLocationsOperationsCancel (..),
    newDataprocProjectsLocationsOperationsCancel,

    -- ** dataproc.projects.locations.operations.delete
    DataprocProjectsLocationsOperationsDeleteResource,
    DataprocProjectsLocationsOperationsDelete (..),
    newDataprocProjectsLocationsOperationsDelete,

    -- ** dataproc.projects.locations.operations.get
    DataprocProjectsLocationsOperationsGetResource,
    DataprocProjectsLocationsOperationsGet (..),
    newDataprocProjectsLocationsOperationsGet,

    -- ** dataproc.projects.locations.operations.list
    DataprocProjectsLocationsOperationsListResource,
    DataprocProjectsLocationsOperationsList (..),
    newDataprocProjectsLocationsOperationsList,

    -- ** dataproc.projects.locations.sessionTemplates.create
    DataprocProjectsLocationsSessionTemplatesCreateResource,
    DataprocProjectsLocationsSessionTemplatesCreate (..),
    newDataprocProjectsLocationsSessionTemplatesCreate,

    -- ** dataproc.projects.locations.sessionTemplates.delete
    DataprocProjectsLocationsSessionTemplatesDeleteResource,
    DataprocProjectsLocationsSessionTemplatesDelete (..),
    newDataprocProjectsLocationsSessionTemplatesDelete,

    -- ** dataproc.projects.locations.sessionTemplates.get
    DataprocProjectsLocationsSessionTemplatesGetResource,
    DataprocProjectsLocationsSessionTemplatesGet (..),
    newDataprocProjectsLocationsSessionTemplatesGet,

    -- ** dataproc.projects.locations.sessionTemplates.list
    DataprocProjectsLocationsSessionTemplatesListResource,
    DataprocProjectsLocationsSessionTemplatesList (..),
    newDataprocProjectsLocationsSessionTemplatesList,

    -- ** dataproc.projects.locations.sessionTemplates.patch
    DataprocProjectsLocationsSessionTemplatesPatchResource,
    DataprocProjectsLocationsSessionTemplatesPatch (..),
    newDataprocProjectsLocationsSessionTemplatesPatch,

    -- ** dataproc.projects.locations.sessions.create
    DataprocProjectsLocationsSessionsCreateResource,
    DataprocProjectsLocationsSessionsCreate (..),
    newDataprocProjectsLocationsSessionsCreate,

    -- ** dataproc.projects.locations.sessions.delete
    DataprocProjectsLocationsSessionsDeleteResource,
    DataprocProjectsLocationsSessionsDelete (..),
    newDataprocProjectsLocationsSessionsDelete,

    -- ** dataproc.projects.locations.sessions.get
    DataprocProjectsLocationsSessionsGetResource,
    DataprocProjectsLocationsSessionsGet (..),
    newDataprocProjectsLocationsSessionsGet,

    -- ** dataproc.projects.locations.sessions.list
    DataprocProjectsLocationsSessionsListResource,
    DataprocProjectsLocationsSessionsList (..),
    newDataprocProjectsLocationsSessionsList,

    -- ** dataproc.projects.locations.sessions.sparkApplications.access
    DataprocProjectsLocationsSessionsSparkApplicationsAccessResource,
    DataprocProjectsLocationsSessionsSparkApplicationsAccess (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccess,

    -- ** dataproc.projects.locations.sessions.sparkApplications.accessEnvironmentInfo
    DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfoResource,
    DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo,

    -- ** dataproc.projects.locations.sessions.sparkApplications.accessJob
    DataprocProjectsLocationsSessionsSparkApplicationsAccessJobResource,
    DataprocProjectsLocationsSessionsSparkApplicationsAccessJob (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessJob,

    -- ** dataproc.projects.locations.sessions.sparkApplications.accessSqlPlan
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlanResource,
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlPlan,

    -- ** dataproc.projects.locations.sessions.sparkApplications.accessSqlQuery
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQueryResource,
    DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery,

    -- ** dataproc.projects.locations.sessions.sparkApplications.accessStageAttempt
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageAttemptResource,
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageAttempt (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessStageAttempt,

    -- ** dataproc.projects.locations.sessions.sparkApplications.accessStageRddGraph
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraphResource,
    DataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsAccessStageRddGraph,

    -- ** dataproc.projects.locations.sessions.sparkApplications.search
    DataprocProjectsLocationsSessionsSparkApplicationsSearchResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearch (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearch,

    -- ** dataproc.projects.locations.sessions.sparkApplications.searchExecutorStageSummary
    DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutorStageSummaryResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutorStageSummary (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchExecutorStageSummary,

    -- ** dataproc.projects.locations.sessions.sparkApplications.searchExecutors
    DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutorsResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors,

    -- ** dataproc.projects.locations.sessions.sparkApplications.searchJobs
    DataprocProjectsLocationsSessionsSparkApplicationsSearchJobsResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearchJobs (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchJobs,

    -- ** dataproc.projects.locations.sessions.sparkApplications.searchSqlQueries
    DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueriesResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchSqlQueries,

    -- ** dataproc.projects.locations.sessions.sparkApplications.searchStageAttemptTasks
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasksResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptTasks,

    -- ** dataproc.projects.locations.sessions.sparkApplications.searchStageAttempts
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttemptsResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttempts (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchStageAttempts,

    -- ** dataproc.projects.locations.sessions.sparkApplications.searchStages
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStagesResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSearchStages (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSearchStages,

    -- ** dataproc.projects.locations.sessions.sparkApplications.summarizeExecutors
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeExecutorsResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeExecutors (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSummarizeExecutors,

    -- ** dataproc.projects.locations.sessions.sparkApplications.summarizeJobs
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeJobsResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeJobs (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSummarizeJobs,

    -- ** dataproc.projects.locations.sessions.sparkApplications.summarizeStageAttemptTasks
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeStageAttemptTasksResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeStageAttemptTasks (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSummarizeStageAttemptTasks,

    -- ** dataproc.projects.locations.sessions.sparkApplications.summarizeStages
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeStagesResource,
    DataprocProjectsLocationsSessionsSparkApplicationsSummarizeStages (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsSummarizeStages,

    -- ** dataproc.projects.locations.sessions.sparkApplications.write
    DataprocProjectsLocationsSessionsSparkApplicationsWriteResource,
    DataprocProjectsLocationsSessionsSparkApplicationsWrite (..),
    newDataprocProjectsLocationsSessionsSparkApplicationsWrite,

    -- ** dataproc.projects.locations.sessions.terminate
    DataprocProjectsLocationsSessionsTerminateResource,
    DataprocProjectsLocationsSessionsTerminate (..),
    newDataprocProjectsLocationsSessionsTerminate,

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

    -- ** dataproc.projects.regions.clusters.nodeGroups.create
    DataprocProjectsRegionsClustersNodeGroupsCreateResource,
    DataprocProjectsRegionsClustersNodeGroupsCreate (..),
    newDataprocProjectsRegionsClustersNodeGroupsCreate,

    -- ** dataproc.projects.regions.clusters.nodeGroups.get
    DataprocProjectsRegionsClustersNodeGroupsGetResource,
    DataprocProjectsRegionsClustersNodeGroupsGet (..),
    newDataprocProjectsRegionsClustersNodeGroupsGet,

    -- ** dataproc.projects.regions.clusters.nodeGroups.repair
    DataprocProjectsRegionsClustersNodeGroupsRepairResource,
    DataprocProjectsRegionsClustersNodeGroupsRepair (..),
    newDataprocProjectsRegionsClustersNodeGroupsRepair,

    -- ** dataproc.projects.regions.clusters.nodeGroups.resize
    DataprocProjectsRegionsClustersNodeGroupsResizeResource,
    DataprocProjectsRegionsClustersNodeGroupsResize (..),
    newDataprocProjectsRegionsClustersNodeGroupsResize,

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

    -- ** BuildInfo
    BuildInfo (..),
    newBuildInfo,

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

    -- ** FallbackReason
    FallbackReason (..),
    newFallbackReason,

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

    -- ** GceClusterConfig_ResourceManagerTags
    GceClusterConfig_ResourceManagerTags (..),
    newGceClusterConfig_ResourceManagerTags,

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

    -- ** NativeBuildInfoUiData
    NativeBuildInfoUiData (..),
    newNativeBuildInfoUiData,

    -- ** NativeSqlExecutionUiData
    NativeSqlExecutionUiData (..),
    newNativeSqlExecutionUiData,

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

import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Create
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Delete
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Get
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.GetIamPolicy
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.List
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.SetIamPolicy
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.TestIamPermissions
import Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Update
import Gogol.Dataproc.Projects.Locations.Batches.Analyze
import Gogol.Dataproc.Projects.Locations.Batches.Create
import Gogol.Dataproc.Projects.Locations.Batches.Delete
import Gogol.Dataproc.Projects.Locations.Batches.Get
import Gogol.Dataproc.Projects.Locations.Batches.List
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.Access
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessEnvironmentInfo
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessJob
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessSqlPlan
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessSqlQuery
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessStageAttempt
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessStageRddGraph
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.Search
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchExecutorStageSummary
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchExecutors
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchJobs
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchSqlQueries
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchStageAttemptTasks
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchStageAttempts
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchStages
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeExecutors
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeJobs
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeStageAttemptTasks
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SummarizeStages
import Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.Write
import Gogol.Dataproc.Projects.Locations.Operations.Cancel
import Gogol.Dataproc.Projects.Locations.Operations.Delete
import Gogol.Dataproc.Projects.Locations.Operations.Get
import Gogol.Dataproc.Projects.Locations.Operations.List
import Gogol.Dataproc.Projects.Locations.SessionTemplates.Create
import Gogol.Dataproc.Projects.Locations.SessionTemplates.Delete
import Gogol.Dataproc.Projects.Locations.SessionTemplates.Get
import Gogol.Dataproc.Projects.Locations.SessionTemplates.List
import Gogol.Dataproc.Projects.Locations.SessionTemplates.Patch
import Gogol.Dataproc.Projects.Locations.Sessions.Create
import Gogol.Dataproc.Projects.Locations.Sessions.Delete
import Gogol.Dataproc.Projects.Locations.Sessions.Get
import Gogol.Dataproc.Projects.Locations.Sessions.List
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.Access
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessEnvironmentInfo
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessJob
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessSqlPlan
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessSqlQuery
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessStageAttempt
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessStageRddGraph
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.Search
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchExecutorStageSummary
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchExecutors
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchJobs
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchSqlQueries
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchStageAttemptTasks
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchStageAttempts
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchStages
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SummarizeExecutors
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SummarizeJobs
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SummarizeStageAttemptTasks
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SummarizeStages
import Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.Write
import Gogol.Dataproc.Projects.Locations.Sessions.Terminate
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
import Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Create
import Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Get
import Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Repair
import Gogol.Dataproc.Projects.Regions.Clusters.NodeGroups.Resize
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
