{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ContainerBuilder.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ContainerBuilder.Types
    (
    -- * Configuration
      containerBuilderService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** BatchCreateRepositoriesRequest
    , BatchCreateRepositoriesRequest (..)
    , newBatchCreateRepositoriesRequest

    -- ** BatchCreateRepositoriesResponse
    , BatchCreateRepositoriesResponse (..)
    , newBatchCreateRepositoriesResponse

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** BitbucketCloudConfig
    , BitbucketCloudConfig (..)
    , newBitbucketCloudConfig

    -- ** BitbucketDataCenterConfig
    , BitbucketDataCenterConfig (..)
    , newBitbucketDataCenterConfig

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** Capabilities
    , Capabilities (..)
    , newCapabilities

    -- ** ChildStatusReference
    , ChildStatusReference (..)
    , newChildStatusReference

    -- ** ChildStatusReference_Type
    , ChildStatusReference_Type (..)

    -- ** Connection
    , Connection (..)
    , newConnection

    -- ** Connection_Annotations
    , Connection_Annotations (..)
    , newConnection_Annotations

    -- ** CreateRepositoryRequest
    , CreateRepositoryRequest (..)
    , newCreateRepositoryRequest

    -- ** EmbeddedTask
    , EmbeddedTask (..)
    , newEmbeddedTask

    -- ** EmbeddedTask_Annotations
    , EmbeddedTask_Annotations (..)
    , newEmbeddedTask_Annotations

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EmptyDirVolumeSource
    , EmptyDirVolumeSource (..)
    , newEmptyDirVolumeSource

    -- ** EnvVar
    , EnvVar (..)
    , newEnvVar

    -- ** ExecAction
    , ExecAction (..)
    , newExecAction

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** FetchGitRefsResponse
    , FetchGitRefsResponse (..)
    , newFetchGitRefsResponse

    -- ** FetchLinkableRepositoriesResponse
    , FetchLinkableRepositoriesResponse (..)
    , newFetchLinkableRepositoriesResponse

    -- ** FetchReadTokenRequest
    , FetchReadTokenRequest (..)
    , newFetchReadTokenRequest

    -- ** FetchReadTokenResponse
    , FetchReadTokenResponse (..)
    , newFetchReadTokenResponse

    -- ** FetchReadWriteTokenRequest
    , FetchReadWriteTokenRequest (..)
    , newFetchReadWriteTokenRequest

    -- ** FetchReadWriteTokenResponse
    , FetchReadWriteTokenResponse (..)
    , newFetchReadWriteTokenResponse

    -- ** GitHubConfig
    , GitHubConfig (..)
    , newGitHubConfig

    -- ** GoogleDevtoolsCloudbuildV2Condition
    , GoogleDevtoolsCloudbuildV2Condition (..)
    , newGoogleDevtoolsCloudbuildV2Condition

    -- ** GoogleDevtoolsCloudbuildV2Condition_Severity
    , GoogleDevtoolsCloudbuildV2Condition_Severity (..)

    -- ** GoogleDevtoolsCloudbuildV2Condition_Status
    , GoogleDevtoolsCloudbuildV2Condition_Status (..)

    -- ** GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
    , GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig (..)
    , newGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig

    -- ** GoogleDevtoolsCloudbuildV2GitLabConfig
    , GoogleDevtoolsCloudbuildV2GitLabConfig (..)
    , newGoogleDevtoolsCloudbuildV2GitLabConfig

    -- ** GoogleDevtoolsCloudbuildV2OperationMetadata
    , GoogleDevtoolsCloudbuildV2OperationMetadata (..)
    , newGoogleDevtoolsCloudbuildV2OperationMetadata

    -- ** GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
    , GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig (..)
    , newGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig

    -- ** HttpBody
    , HttpBody (..)
    , newHttpBody

    -- ** HttpBody_ExtensionsItem
    , HttpBody_ExtensionsItem (..)
    , newHttpBody_ExtensionsItem

    -- ** InstallationState
    , InstallationState (..)
    , newInstallationState

    -- ** InstallationState_Stage
    , InstallationState_Stage (..)

    -- ** ListConnectionsResponse
    , ListConnectionsResponse (..)
    , newListConnectionsResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListRepositoriesResponse
    , ListRepositoriesResponse (..)
    , newListRepositoriesResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** OAuthCredential
    , OAuthCredential (..)
    , newOAuthCredential

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** Param
    , Param (..)
    , newParam

    -- ** ParamSpec
    , ParamSpec (..)
    , newParamSpec

    -- ** ParamSpec_Type
    , ParamSpec_Type (..)

    -- ** ParamValue
    , ParamValue (..)
    , newParamValue

    -- ** ParamValue_ObjectVal
    , ParamValue_ObjectVal (..)
    , newParamValue_ObjectVal

    -- ** ParamValue_Type
    , ParamValue_Type (..)

    -- ** PipelineRef
    , PipelineRef (..)
    , newPipelineRef

    -- ** PipelineRef_Resolver
    , PipelineRef_Resolver (..)

    -- ** PipelineResult
    , PipelineResult (..)
    , newPipelineResult

    -- ** PipelineResult_Type
    , PipelineResult_Type (..)

    -- ** PipelineRun
    , PipelineRun (..)
    , newPipelineRun

    -- ** PipelineRun_Annotations
    , PipelineRun_Annotations (..)
    , newPipelineRun_Annotations

    -- ** PipelineRun_GcbParams
    , PipelineRun_GcbParams (..)
    , newPipelineRun_GcbParams

    -- ** PipelineRun_PipelineRunStatus
    , PipelineRun_PipelineRunStatus (..)

    -- ** PipelineRunResult
    , PipelineRunResult (..)
    , newPipelineRunResult

    -- ** PipelineSpec
    , PipelineSpec (..)
    , newPipelineSpec

    -- ** PipelineTask
    , PipelineTask (..)
    , newPipelineTask

    -- ** PipelineWorkspaceDeclaration
    , PipelineWorkspaceDeclaration (..)
    , newPipelineWorkspaceDeclaration

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Probe
    , Probe (..)
    , newProbe

    -- ** PropertySpec
    , PropertySpec (..)
    , newPropertySpec

    -- ** PropertySpec_Type
    , PropertySpec_Type (..)

    -- ** Provenance
    , Provenance (..)
    , newProvenance

    -- ** Provenance_Enabled
    , Provenance_Enabled (..)

    -- ** Provenance_Region
    , Provenance_Region (..)

    -- ** Provenance_Storage
    , Provenance_Storage (..)

    -- ** Repository
    , Repository (..)
    , newRepository

    -- ** Repository_Annotations
    , Repository_Annotations (..)
    , newRepository_Annotations

    -- ** ResultValue
    , ResultValue (..)
    , newResultValue

    -- ** ResultValue_ObjectVal
    , ResultValue_ObjectVal (..)
    , newResultValue_ObjectVal

    -- ** ResultValue_Type
    , ResultValue_Type (..)

    -- ** RunWorkflowCustomOperationMetadata
    , RunWorkflowCustomOperationMetadata (..)
    , newRunWorkflowCustomOperationMetadata

    -- ** SecretVolumeSource
    , SecretVolumeSource (..)
    , newSecretVolumeSource

    -- ** Security
    , Security (..)
    , newSecurity

    -- ** Security_PrivilegeMode
    , Security_PrivilegeMode (..)

    -- ** SecurityContext
    , SecurityContext (..)
    , newSecurityContext

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Sidecar
    , Sidecar (..)
    , newSidecar

    -- ** SkippedTask
    , SkippedTask (..)
    , newSkippedTask

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** Step
    , Step (..)
    , newStep

    -- ** Step_OnError
    , Step_OnError (..)

    -- ** StepRef
    , StepRef (..)
    , newStepRef

    -- ** StepRef_Resolver
    , StepRef_Resolver (..)

    -- ** StepTemplate
    , StepTemplate (..)
    , newStepTemplate

    -- ** TaskRef
    , TaskRef (..)
    , newTaskRef

    -- ** TaskRef_Resolver
    , TaskRef_Resolver (..)

    -- ** TaskResult
    , TaskResult (..)
    , newTaskResult

    -- ** TaskResult_Properties
    , TaskResult_Properties (..)
    , newTaskResult_Properties

    -- ** TaskResult_Type
    , TaskResult_Type (..)

    -- ** TaskSpec
    , TaskSpec (..)
    , newTaskSpec

    -- ** TaskSpec_ManagedSidecarsItem
    , TaskSpec_ManagedSidecarsItem (..)

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** TimeoutFields
    , TimeoutFields (..)
    , newTimeoutFields

    -- ** UserCredential
    , UserCredential (..)
    , newUserCredential

    -- ** VolumeMount
    , VolumeMount (..)
    , newVolumeMount

    -- ** VolumeSource
    , VolumeSource (..)
    , newVolumeSource

    -- ** WhenExpression
    , WhenExpression (..)
    , newWhenExpression

    -- ** WhenExpression_ExpressionOperator
    , WhenExpression_ExpressionOperator (..)

    -- ** Worker
    , Worker (..)
    , newWorker

    -- ** WorkspaceBinding
    , WorkspaceBinding (..)
    , newWorkspaceBinding

    -- ** WorkspaceDeclaration
    , WorkspaceDeclaration (..)
    , newWorkspaceDeclaration

    -- ** WorkspacePipelineTaskBinding
    , WorkspacePipelineTaskBinding (..)
    , newWorkspacePipelineTaskBinding

    -- ** ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
    , ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Internal.Product
import Gogol.ContainerBuilder.Internal.Sum

-- | Default request referring to version @v2@ of the Cloud Build API. This contains the host and root path used as a starting point for constructing service requests.
containerBuilderService :: Core.ServiceConfig
containerBuilderService
  = Core.defaultService
      (Core.ServiceId "cloudbuild:v2")
      "cloudbuild.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
