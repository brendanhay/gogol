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
-- Module      : Gogol.ContainerBuilder
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages builds on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference>
module Gogol.ContainerBuilder
  ( -- * Configuration
    containerBuilderService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudbuild.projects.locations.connections.create
    CloudbuildProjectsLocationsConnectionsCreateResource,
    CloudbuildProjectsLocationsConnectionsCreate (..),
    newCloudbuildProjectsLocationsConnectionsCreate,

    -- ** cloudbuild.projects.locations.connections.delete
    CloudbuildProjectsLocationsConnectionsDeleteResource,
    CloudbuildProjectsLocationsConnectionsDelete (..),
    newCloudbuildProjectsLocationsConnectionsDelete,

    -- ** cloudbuild.projects.locations.connections.fetchLinkableRepositories
    CloudbuildProjectsLocationsConnectionsFetchLinkableRepositoriesResource,
    CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories (..),
    newCloudbuildProjectsLocationsConnectionsFetchLinkableRepositories,

    -- ** cloudbuild.projects.locations.connections.get
    CloudbuildProjectsLocationsConnectionsGetResource,
    CloudbuildProjectsLocationsConnectionsGet (..),
    newCloudbuildProjectsLocationsConnectionsGet,

    -- ** cloudbuild.projects.locations.connections.getIamPolicy
    CloudbuildProjectsLocationsConnectionsGetIamPolicyResource,
    CloudbuildProjectsLocationsConnectionsGetIamPolicy (..),
    newCloudbuildProjectsLocationsConnectionsGetIamPolicy,

    -- ** cloudbuild.projects.locations.connections.list
    CloudbuildProjectsLocationsConnectionsListResource,
    CloudbuildProjectsLocationsConnectionsList (..),
    newCloudbuildProjectsLocationsConnectionsList,

    -- ** cloudbuild.projects.locations.connections.patch
    CloudbuildProjectsLocationsConnectionsPatchResource,
    CloudbuildProjectsLocationsConnectionsPatch (..),
    newCloudbuildProjectsLocationsConnectionsPatch,

    -- ** cloudbuild.projects.locations.connections.processWebhook
    CloudbuildProjectsLocationsConnectionsProcessWebhookResource,
    CloudbuildProjectsLocationsConnectionsProcessWebhook (..),
    newCloudbuildProjectsLocationsConnectionsProcessWebhook,

    -- ** cloudbuild.projects.locations.connections.repositories.accessReadToken
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadTokenResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken,

    -- ** cloudbuild.projects.locations.connections.repositories.accessReadWriteToken
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteTokenResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken,

    -- ** cloudbuild.projects.locations.connections.repositories.batchCreate
    CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreateResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate,

    -- ** cloudbuild.projects.locations.connections.repositories.create
    CloudbuildProjectsLocationsConnectionsRepositoriesCreateResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesCreate (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesCreate,

    -- ** cloudbuild.projects.locations.connections.repositories.delete
    CloudbuildProjectsLocationsConnectionsRepositoriesDeleteResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesDelete (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesDelete,

    -- ** cloudbuild.projects.locations.connections.repositories.fetchGitRefs
    CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefsResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs,

    -- ** cloudbuild.projects.locations.connections.repositories.get
    CloudbuildProjectsLocationsConnectionsRepositoriesGetResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesGet (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesGet,

    -- ** cloudbuild.projects.locations.connections.repositories.list
    CloudbuildProjectsLocationsConnectionsRepositoriesListResource,
    CloudbuildProjectsLocationsConnectionsRepositoriesList (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesList,

    -- ** cloudbuild.projects.locations.connections.setIamPolicy
    CloudbuildProjectsLocationsConnectionsSetIamPolicyResource,
    CloudbuildProjectsLocationsConnectionsSetIamPolicy (..),
    newCloudbuildProjectsLocationsConnectionsSetIamPolicy,

    -- ** cloudbuild.projects.locations.connections.testIamPermissions
    CloudbuildProjectsLocationsConnectionsTestIamPermissionsResource,
    CloudbuildProjectsLocationsConnectionsTestIamPermissions (..),
    newCloudbuildProjectsLocationsConnectionsTestIamPermissions,

    -- ** cloudbuild.projects.locations.get
    CloudbuildProjectsLocationsGetResource,
    CloudbuildProjectsLocationsGet (..),
    newCloudbuildProjectsLocationsGet,

    -- ** cloudbuild.projects.locations.list
    CloudbuildProjectsLocationsListResource,
    CloudbuildProjectsLocationsList (..),
    newCloudbuildProjectsLocationsList,

    -- ** cloudbuild.projects.locations.operations.cancel
    CloudbuildProjectsLocationsOperationsCancelResource,
    CloudbuildProjectsLocationsOperationsCancel (..),
    newCloudbuildProjectsLocationsOperationsCancel,

    -- ** cloudbuild.projects.locations.operations.get
    CloudbuildProjectsLocationsOperationsGetResource,
    CloudbuildProjectsLocationsOperationsGet (..),
    newCloudbuildProjectsLocationsOperationsGet,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** BatchCreateRepositoriesRequest
    BatchCreateRepositoriesRequest (..),
    newBatchCreateRepositoriesRequest,

    -- ** BatchCreateRepositoriesResponse
    BatchCreateRepositoriesResponse (..),
    newBatchCreateRepositoriesResponse,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BitbucketCloudConfig
    BitbucketCloudConfig (..),
    newBitbucketCloudConfig,

    -- ** BitbucketDataCenterConfig
    BitbucketDataCenterConfig (..),
    newBitbucketDataCenterConfig,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** Capabilities
    Capabilities (..),
    newCapabilities,

    -- ** ChildStatusReference
    ChildStatusReference (..),
    newChildStatusReference,

    -- ** ChildStatusReference_Type
    ChildStatusReference_Type (..),

    -- ** Connection
    Connection (..),
    newConnection,

    -- ** Connection_Annotations
    Connection_Annotations (..),
    newConnection_Annotations,

    -- ** CreateRepositoryRequest
    CreateRepositoryRequest (..),
    newCreateRepositoryRequest,

    -- ** EmbeddedTask
    EmbeddedTask (..),
    newEmbeddedTask,

    -- ** EmbeddedTask_Annotations
    EmbeddedTask_Annotations (..),
    newEmbeddedTask_Annotations,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EmptyDirVolumeSource
    EmptyDirVolumeSource (..),
    newEmptyDirVolumeSource,

    -- ** EnvVar
    EnvVar (..),
    newEnvVar,

    -- ** ExecAction
    ExecAction (..),
    newExecAction,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** FetchGitRefsResponse
    FetchGitRefsResponse (..),
    newFetchGitRefsResponse,

    -- ** FetchLinkableRepositoriesResponse
    FetchLinkableRepositoriesResponse (..),
    newFetchLinkableRepositoriesResponse,

    -- ** FetchReadTokenRequest
    FetchReadTokenRequest (..),
    newFetchReadTokenRequest,

    -- ** FetchReadTokenResponse
    FetchReadTokenResponse (..),
    newFetchReadTokenResponse,

    -- ** FetchReadWriteTokenRequest
    FetchReadWriteTokenRequest (..),
    newFetchReadWriteTokenRequest,

    -- ** FetchReadWriteTokenResponse
    FetchReadWriteTokenResponse (..),
    newFetchReadWriteTokenResponse,

    -- ** GitHubConfig
    GitHubConfig (..),
    newGitHubConfig,

    -- ** GoogleDevtoolsCloudbuildV2Condition
    GoogleDevtoolsCloudbuildV2Condition (..),
    newGoogleDevtoolsCloudbuildV2Condition,

    -- ** GoogleDevtoolsCloudbuildV2Condition_Severity
    GoogleDevtoolsCloudbuildV2Condition_Severity (..),

    -- ** GoogleDevtoolsCloudbuildV2Condition_Status
    GoogleDevtoolsCloudbuildV2Condition_Status (..),

    -- ** GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
    GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig (..),
    newGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig,

    -- ** GoogleDevtoolsCloudbuildV2GitLabConfig
    GoogleDevtoolsCloudbuildV2GitLabConfig (..),
    newGoogleDevtoolsCloudbuildV2GitLabConfig,

    -- ** GoogleDevtoolsCloudbuildV2OperationMetadata
    GoogleDevtoolsCloudbuildV2OperationMetadata (..),
    newGoogleDevtoolsCloudbuildV2OperationMetadata,

    -- ** GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
    GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig (..),
    newGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig,

    -- ** HttpBody
    HttpBody (..),
    newHttpBody,

    -- ** HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- ** InstallationState
    InstallationState (..),
    newInstallationState,

    -- ** InstallationState_Stage
    InstallationState_Stage (..),

    -- ** ListConnectionsResponse
    ListConnectionsResponse (..),
    newListConnectionsResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListRepositoriesResponse
    ListRepositoriesResponse (..),
    newListRepositoriesResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** OAuthCredential
    OAuthCredential (..),
    newOAuthCredential,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** Param
    Param (..),
    newParam,

    -- ** ParamSpec
    ParamSpec (..),
    newParamSpec,

    -- ** ParamSpec_Type
    ParamSpec_Type (..),

    -- ** ParamValue
    ParamValue (..),
    newParamValue,

    -- ** ParamValue_ObjectVal
    ParamValue_ObjectVal (..),
    newParamValue_ObjectVal,

    -- ** ParamValue_Type
    ParamValue_Type (..),

    -- ** PipelineRef
    PipelineRef (..),
    newPipelineRef,

    -- ** PipelineRef_Resolver
    PipelineRef_Resolver (..),

    -- ** PipelineResult
    PipelineResult (..),
    newPipelineResult,

    -- ** PipelineResult_Type
    PipelineResult_Type (..),

    -- ** PipelineRun
    PipelineRun (..),
    newPipelineRun,

    -- ** PipelineRun_Annotations
    PipelineRun_Annotations (..),
    newPipelineRun_Annotations,

    -- ** PipelineRun_GcbParams
    PipelineRun_GcbParams (..),
    newPipelineRun_GcbParams,

    -- ** PipelineRun_PipelineRunStatus
    PipelineRun_PipelineRunStatus (..),

    -- ** PipelineRunResult
    PipelineRunResult (..),
    newPipelineRunResult,

    -- ** PipelineSpec
    PipelineSpec (..),
    newPipelineSpec,

    -- ** PipelineTask
    PipelineTask (..),
    newPipelineTask,

    -- ** PipelineWorkspaceDeclaration
    PipelineWorkspaceDeclaration (..),
    newPipelineWorkspaceDeclaration,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Probe
    Probe (..),
    newProbe,

    -- ** PropertySpec
    PropertySpec (..),
    newPropertySpec,

    -- ** PropertySpec_Type
    PropertySpec_Type (..),

    -- ** Provenance
    Provenance (..),
    newProvenance,

    -- ** Provenance_Enabled
    Provenance_Enabled (..),

    -- ** Provenance_Region
    Provenance_Region (..),

    -- ** Provenance_Storage
    Provenance_Storage (..),

    -- ** Repository
    Repository (..),
    newRepository,

    -- ** Repository_Annotations
    Repository_Annotations (..),
    newRepository_Annotations,

    -- ** ResultValue
    ResultValue (..),
    newResultValue,

    -- ** ResultValue_ObjectVal
    ResultValue_ObjectVal (..),
    newResultValue_ObjectVal,

    -- ** ResultValue_Type
    ResultValue_Type (..),

    -- ** RunWorkflowCustomOperationMetadata
    RunWorkflowCustomOperationMetadata (..),
    newRunWorkflowCustomOperationMetadata,

    -- ** SecretVolumeSource
    SecretVolumeSource (..),
    newSecretVolumeSource,

    -- ** Security
    Security (..),
    newSecurity,

    -- ** Security_PrivilegeMode
    Security_PrivilegeMode (..),

    -- ** SecurityContext
    SecurityContext (..),
    newSecurityContext,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Sidecar
    Sidecar (..),
    newSidecar,

    -- ** SkippedTask
    SkippedTask (..),
    newSkippedTask,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Step
    Step (..),
    newStep,

    -- ** Step_OnError
    Step_OnError (..),

    -- ** StepRef
    StepRef (..),
    newStepRef,

    -- ** StepRef_Resolver
    StepRef_Resolver (..),

    -- ** StepTemplate
    StepTemplate (..),
    newStepTemplate,

    -- ** TaskRef
    TaskRef (..),
    newTaskRef,

    -- ** TaskRef_Resolver
    TaskRef_Resolver (..),

    -- ** TaskResult
    TaskResult (..),
    newTaskResult,

    -- ** TaskResult_Properties
    TaskResult_Properties (..),
    newTaskResult_Properties,

    -- ** TaskResult_Type
    TaskResult_Type (..),

    -- ** TaskSpec
    TaskSpec (..),
    newTaskSpec,

    -- ** TaskSpec_ManagedSidecarsItem
    TaskSpec_ManagedSidecarsItem (..),

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TimeoutFields
    TimeoutFields (..),
    newTimeoutFields,

    -- ** UserCredential
    UserCredential (..),
    newUserCredential,

    -- ** VolumeMount
    VolumeMount (..),
    newVolumeMount,

    -- ** VolumeSource
    VolumeSource (..),
    newVolumeSource,

    -- ** WhenExpression
    WhenExpression (..),
    newWhenExpression,

    -- ** WhenExpression_ExpressionOperator
    WhenExpression_ExpressionOperator (..),

    -- ** Worker
    Worker (..),
    newWorker,

    -- ** WorkspaceBinding
    WorkspaceBinding (..),
    newWorkspaceBinding,

    -- ** WorkspaceDeclaration
    WorkspaceDeclaration (..),
    newWorkspaceDeclaration,

    -- ** WorkspacePipelineTaskBinding
    WorkspacePipelineTaskBinding (..),
    newWorkspacePipelineTaskBinding,

    -- ** ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
    ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType (..),
  )
where

import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.FetchLinkableRepositories
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.GetIamPolicy
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Patch
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.ProcessWebhook
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.AccessReadToken
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.AccessReadWriteToken
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.BatchCreate
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.FetchGitRefs
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.SetIamPolicy
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.TestIamPermissions
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Operations.Cancel
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Operations.Get
import Gogol.ContainerBuilder.Types
