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
-- Module      : Gogol.ContainerBuilder.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ContainerBuilder.Internal.Product
  ( -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * BatchCreateRepositoriesRequest
    BatchCreateRepositoriesRequest (..),
    newBatchCreateRepositoriesRequest,

    -- * BatchCreateRepositoriesResponse
    BatchCreateRepositoriesResponse (..),
    newBatchCreateRepositoriesResponse,

    -- * Binding
    Binding (..),
    newBinding,

    -- * BitbucketCloudConfig
    BitbucketCloudConfig (..),
    newBitbucketCloudConfig,

    -- * BitbucketDataCenterConfig
    BitbucketDataCenterConfig (..),
    newBitbucketDataCenterConfig,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * Capabilities
    Capabilities (..),
    newCapabilities,

    -- * ChildStatusReference
    ChildStatusReference (..),
    newChildStatusReference,

    -- * Connection
    Connection (..),
    newConnection,

    -- * Connection_Annotations
    Connection_Annotations (..),
    newConnection_Annotations,

    -- * CreateRepositoryRequest
    CreateRepositoryRequest (..),
    newCreateRepositoryRequest,

    -- * EmbeddedTask
    EmbeddedTask (..),
    newEmbeddedTask,

    -- * EmbeddedTask_Annotations
    EmbeddedTask_Annotations (..),
    newEmbeddedTask_Annotations,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EmptyDirVolumeSource
    EmptyDirVolumeSource (..),
    newEmptyDirVolumeSource,

    -- * EnvVar
    EnvVar (..),
    newEnvVar,

    -- * ExecAction
    ExecAction (..),
    newExecAction,

    -- * Expr
    Expr (..),
    newExpr,

    -- * FetchGitRefsResponse
    FetchGitRefsResponse (..),
    newFetchGitRefsResponse,

    -- * FetchLinkableRepositoriesResponse
    FetchLinkableRepositoriesResponse (..),
    newFetchLinkableRepositoriesResponse,

    -- * FetchReadTokenRequest
    FetchReadTokenRequest (..),
    newFetchReadTokenRequest,

    -- * FetchReadTokenResponse
    FetchReadTokenResponse (..),
    newFetchReadTokenResponse,

    -- * FetchReadWriteTokenRequest
    FetchReadWriteTokenRequest (..),
    newFetchReadWriteTokenRequest,

    -- * FetchReadWriteTokenResponse
    FetchReadWriteTokenResponse (..),
    newFetchReadWriteTokenResponse,

    -- * GitHubConfig
    GitHubConfig (..),
    newGitHubConfig,

    -- * GoogleDevtoolsCloudbuildV2Condition
    GoogleDevtoolsCloudbuildV2Condition (..),
    newGoogleDevtoolsCloudbuildV2Condition,

    -- * GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
    GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig (..),
    newGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig,

    -- * GoogleDevtoolsCloudbuildV2GitLabConfig
    GoogleDevtoolsCloudbuildV2GitLabConfig (..),
    newGoogleDevtoolsCloudbuildV2GitLabConfig,

    -- * GoogleDevtoolsCloudbuildV2OperationMetadata
    GoogleDevtoolsCloudbuildV2OperationMetadata (..),
    newGoogleDevtoolsCloudbuildV2OperationMetadata,

    -- * GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
    GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig (..),
    newGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig,

    -- * HttpBody
    HttpBody (..),
    newHttpBody,

    -- * HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- * InstallationState
    InstallationState (..),
    newInstallationState,

    -- * ListConnectionsResponse
    ListConnectionsResponse (..),
    newListConnectionsResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListRepositoriesResponse
    ListRepositoriesResponse (..),
    newListRepositoriesResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * OAuthCredential
    OAuthCredential (..),
    newOAuthCredential,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * Param
    Param (..),
    newParam,

    -- * ParamSpec
    ParamSpec (..),
    newParamSpec,

    -- * ParamValue
    ParamValue (..),
    newParamValue,

    -- * ParamValue_ObjectVal
    ParamValue_ObjectVal (..),
    newParamValue_ObjectVal,

    -- * PipelineRef
    PipelineRef (..),
    newPipelineRef,

    -- * PipelineResult
    PipelineResult (..),
    newPipelineResult,

    -- * PipelineRun
    PipelineRun (..),
    newPipelineRun,

    -- * PipelineRun_Annotations
    PipelineRun_Annotations (..),
    newPipelineRun_Annotations,

    -- * PipelineRun_GcbParams
    PipelineRun_GcbParams (..),
    newPipelineRun_GcbParams,

    -- * PipelineRunResult
    PipelineRunResult (..),
    newPipelineRunResult,

    -- * PipelineSpec
    PipelineSpec (..),
    newPipelineSpec,

    -- * PipelineTask
    PipelineTask (..),
    newPipelineTask,

    -- * PipelineWorkspaceDeclaration
    PipelineWorkspaceDeclaration (..),
    newPipelineWorkspaceDeclaration,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Probe
    Probe (..),
    newProbe,

    -- * PropertySpec
    PropertySpec (..),
    newPropertySpec,

    -- * Provenance
    Provenance (..),
    newProvenance,

    -- * Repository
    Repository (..),
    newRepository,

    -- * Repository_Annotations
    Repository_Annotations (..),
    newRepository_Annotations,

    -- * ResultValue
    ResultValue (..),
    newResultValue,

    -- * ResultValue_ObjectVal
    ResultValue_ObjectVal (..),
    newResultValue_ObjectVal,

    -- * RunWorkflowCustomOperationMetadata
    RunWorkflowCustomOperationMetadata (..),
    newRunWorkflowCustomOperationMetadata,

    -- * SecretVolumeSource
    SecretVolumeSource (..),
    newSecretVolumeSource,

    -- * Security
    Security (..),
    newSecurity,

    -- * SecurityContext
    SecurityContext (..),
    newSecurityContext,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Sidecar
    Sidecar (..),
    newSidecar,

    -- * SkippedTask
    SkippedTask (..),
    newSkippedTask,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Step
    Step (..),
    newStep,

    -- * StepRef
    StepRef (..),
    newStepRef,

    -- * StepTemplate
    StepTemplate (..),
    newStepTemplate,

    -- * TaskRef
    TaskRef (..),
    newTaskRef,

    -- * TaskResult
    TaskResult (..),
    newTaskResult,

    -- * TaskResult_Properties
    TaskResult_Properties (..),
    newTaskResult_Properties,

    -- * TaskSpec
    TaskSpec (..),
    newTaskSpec,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TimeoutFields
    TimeoutFields (..),
    newTimeoutFields,

    -- * UserCredential
    UserCredential (..),
    newUserCredential,

    -- * VolumeMount
    VolumeMount (..),
    newVolumeMount,

    -- * VolumeSource
    VolumeSource (..),
    newVolumeSource,

    -- * WhenExpression
    WhenExpression (..),
    newWhenExpression,

    -- * Worker
    Worker (..),
    newWorker,

    -- * WorkspaceBinding
    WorkspaceBinding (..),
    newWorkspaceBinding,

    -- * WorkspaceDeclaration
    WorkspaceDeclaration (..),
    newWorkspaceDeclaration,

    -- * WorkspacePipelineTaskBinding
    WorkspacePipelineTaskBinding (..),
    newWorkspacePipelineTaskBinding,
  )
where

import Gogol.ContainerBuilder.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig ::
  AuditConfig
newAuditConfig =
  AuditConfig
    { auditLogConfigs = Core.Nothing,
      service = Core.Nothing
    }

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=) Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig ::
  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig
    { exemptedMembers = Core.Nothing,
      logType = Core.Nothing
    }

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers")
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=) Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Message for creating repositoritories in batch.
--
-- /See:/ 'newBatchCreateRepositoriesRequest' smart constructor.
newtype BatchCreateRepositoriesRequest = BatchCreateRepositoriesRequest
  { -- | Required. The request messages specifying the repositories to create.
    requests :: (Core.Maybe [CreateRepositoryRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateRepositoriesRequest' with the minimum fields required to make a request.
newBatchCreateRepositoriesRequest ::
  BatchCreateRepositoriesRequest
newBatchCreateRepositoriesRequest =
  BatchCreateRepositoriesRequest {requests = Core.Nothing}

instance Core.FromJSON BatchCreateRepositoriesRequest where
  parseJSON =
    Core.withObject
      "BatchCreateRepositoriesRequest"
      ( \o ->
          BatchCreateRepositoriesRequest Core.<$> (o Core..:? "requests")
      )

instance Core.ToJSON BatchCreateRepositoriesRequest where
  toJSON BatchCreateRepositoriesRequest {..} =
    Core.object
      (Core.catMaybes [("requests" Core..=) Core.<$> requests])

-- | Message for response of creating repositories in batch.
--
-- /See:/ 'newBatchCreateRepositoriesResponse' smart constructor.
newtype BatchCreateRepositoriesResponse = BatchCreateRepositoriesResponse
  { -- | Repository resources created.
    repositories :: (Core.Maybe [Repository])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateRepositoriesResponse' with the minimum fields required to make a request.
newBatchCreateRepositoriesResponse ::
  BatchCreateRepositoriesResponse
newBatchCreateRepositoriesResponse =
  BatchCreateRepositoriesResponse {repositories = Core.Nothing}

instance Core.FromJSON BatchCreateRepositoriesResponse where
  parseJSON =
    Core.withObject
      "BatchCreateRepositoriesResponse"
      ( \o ->
          BatchCreateRepositoriesResponse
            Core.<$> (o Core..:? "repositories")
      )

instance Core.ToJSON BatchCreateRepositoriesResponse where
  toJSON BatchCreateRepositoriesResponse {..} =
    Core.object
      (Core.catMaybes [("repositories" Core..=) Core.<$> repositories])

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
    -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
    -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
    -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
    -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
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

-- | Configuration for connections to Bitbucket Cloud.
--
-- /See:/ 'newBitbucketCloudConfig' smart constructor.
data BitbucketCloudConfig = BitbucketCloudConfig
  { -- | Required. An access token with the @webhook@, @repository@, @repository:admin@ and @pullrequest@ scope access. It can be either a workspace, project or repository access token. It\'s recommended to use a system account to generate these credentials.
    authorizerCredential :: (Core.Maybe UserCredential),
    -- | Required. An access token with the @repository@ access. It can be either a workspace, project or repository access token. It\'s recommended to use a system account to generate the credentials.
    readAuthorizerCredential :: (Core.Maybe UserCredential),
    -- | Required. SecretManager resource containing the webhook secret used to verify webhook events, formatted as @projects\/*\/secrets\/*\/versions\/*@.
    webhookSecretSecretVersion :: (Core.Maybe Core.Text),
    -- | Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
    workspace :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketCloudConfig' with the minimum fields required to make a request.
newBitbucketCloudConfig ::
  BitbucketCloudConfig
newBitbucketCloudConfig =
  BitbucketCloudConfig
    { authorizerCredential = Core.Nothing,
      readAuthorizerCredential = Core.Nothing,
      webhookSecretSecretVersion = Core.Nothing,
      workspace = Core.Nothing
    }

instance Core.FromJSON BitbucketCloudConfig where
  parseJSON =
    Core.withObject
      "BitbucketCloudConfig"
      ( \o ->
          BitbucketCloudConfig
            Core.<$> (o Core..:? "authorizerCredential")
            Core.<*> (o Core..:? "readAuthorizerCredential")
            Core.<*> (o Core..:? "webhookSecretSecretVersion")
            Core.<*> (o Core..:? "workspace")
      )

instance Core.ToJSON BitbucketCloudConfig where
  toJSON BitbucketCloudConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorizerCredential" Core..=) Core.<$> authorizerCredential,
            ("readAuthorizerCredential" Core..=)
              Core.<$> readAuthorizerCredential,
            ("webhookSecretSecretVersion" Core..=)
              Core.<$> webhookSecretSecretVersion,
            ("workspace" Core..=) Core.<$> workspace
          ]
      )

-- | Configuration for connections to Bitbucket Data Center.
--
-- /See:/ 'newBitbucketDataCenterConfig' smart constructor.
data BitbucketDataCenterConfig = BitbucketDataCenterConfig
  { -- | Required. A http access token with the @REPO_ADMIN@ scope access.
    authorizerCredential :: (Core.Maybe UserCredential),
    -- | Required. The URI of the Bitbucket Data Center instance or cluster this connection is for.
    hostUri :: (Core.Maybe Core.Text),
    -- | Required. A http access token with the @REPO_READ@ access.
    readAuthorizerCredential :: (Core.Maybe UserCredential),
    -- | Output only. Version of the Bitbucket Data Center running on the @host_uri@.
    serverVersion :: (Core.Maybe Core.Text),
    -- | Optional. Configuration for using Service Directory to privately connect to a Bitbucket Data Center. This should only be set if the Bitbucket Data Center is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the Bitbucket Data Center will be made over the public internet.
    serviceDirectoryConfig :: (Core.Maybe GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig),
    -- | Optional. SSL certificate to use for requests to the Bitbucket Data Center.
    sslCa :: (Core.Maybe Core.Text),
    -- | Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as @projects\/*\/secrets\/*\/versions\/*@.
    webhookSecretSecretVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketDataCenterConfig' with the minimum fields required to make a request.
newBitbucketDataCenterConfig ::
  BitbucketDataCenterConfig
newBitbucketDataCenterConfig =
  BitbucketDataCenterConfig
    { authorizerCredential = Core.Nothing,
      hostUri = Core.Nothing,
      readAuthorizerCredential = Core.Nothing,
      serverVersion = Core.Nothing,
      serviceDirectoryConfig = Core.Nothing,
      sslCa = Core.Nothing,
      webhookSecretSecretVersion = Core.Nothing
    }

instance Core.FromJSON BitbucketDataCenterConfig where
  parseJSON =
    Core.withObject
      "BitbucketDataCenterConfig"
      ( \o ->
          BitbucketDataCenterConfig
            Core.<$> (o Core..:? "authorizerCredential")
            Core.<*> (o Core..:? "hostUri")
            Core.<*> (o Core..:? "readAuthorizerCredential")
            Core.<*> (o Core..:? "serverVersion")
            Core.<*> (o Core..:? "serviceDirectoryConfig")
            Core.<*> (o Core..:? "sslCa")
            Core.<*> (o Core..:? "webhookSecretSecretVersion")
      )

instance Core.ToJSON BitbucketDataCenterConfig where
  toJSON BitbucketDataCenterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorizerCredential" Core..=) Core.<$> authorizerCredential,
            ("hostUri" Core..=) Core.<$> hostUri,
            ("readAuthorizerCredential" Core..=)
              Core.<$> readAuthorizerCredential,
            ("serverVersion" Core..=) Core.<$> serverVersion,
            ("serviceDirectoryConfig" Core..=) Core.<$> serviceDirectoryConfig,
            ("sslCa" Core..=) Core.<$> sslCa,
            ("webhookSecretSecretVersion" Core..=)
              Core.<$> webhookSecretSecretVersion
          ]
      )

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Capabilities adds and removes POSIX capabilities from running containers.
--
-- /See:/ 'newCapabilities' smart constructor.
data Capabilities = Capabilities
  { -- | Optional. Added capabilities +optional
    add :: (Core.Maybe [Core.Text]),
    -- | Optional. Removed capabilities +optional
    drop :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Capabilities' with the minimum fields required to make a request.
newCapabilities ::
  Capabilities
newCapabilities =
  Capabilities {add = Core.Nothing, drop = Core.Nothing}

instance Core.FromJSON Capabilities where
  parseJSON =
    Core.withObject
      "Capabilities"
      ( \o ->
          Capabilities
            Core.<$> (o Core..:? "add")
            Core.<*> (o Core..:? "drop")
      )

instance Core.ToJSON Capabilities where
  toJSON Capabilities {..} =
    Core.object
      ( Core.catMaybes
          [("add" Core..=) Core.<$> add, ("drop" Core..=) Core.<$> drop]
      )

-- | ChildStatusReference is used to point to the statuses of individual TaskRuns and Runs within this PipelineRun.
--
-- /See:/ 'newChildStatusReference' smart constructor.
data ChildStatusReference = ChildStatusReference
  { -- | Name is the name of the TaskRun or Run this is referencing.
    name :: (Core.Maybe Core.Text),
    -- | PipelineTaskName is the name of the PipelineTask this is referencing.
    pipelineTaskName :: (Core.Maybe Core.Text),
    -- | Output only. Type of the child reference.
    type' :: (Core.Maybe ChildStatusReference_Type),
    -- | WhenExpressions is the list of checks guarding the execution of the PipelineTask
    whenExpressions :: (Core.Maybe [WhenExpression])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChildStatusReference' with the minimum fields required to make a request.
newChildStatusReference ::
  ChildStatusReference
newChildStatusReference =
  ChildStatusReference
    { name = Core.Nothing,
      pipelineTaskName = Core.Nothing,
      type' = Core.Nothing,
      whenExpressions = Core.Nothing
    }

instance Core.FromJSON ChildStatusReference where
  parseJSON =
    Core.withObject
      "ChildStatusReference"
      ( \o ->
          ChildStatusReference
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "pipelineTaskName")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "whenExpressions")
      )

instance Core.ToJSON ChildStatusReference where
  toJSON ChildStatusReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("pipelineTaskName" Core..=) Core.<$> pipelineTaskName,
            ("type" Core..=) Core.<$> type',
            ("whenExpressions" Core..=) Core.<$> whenExpressions
          ]
      )

-- | A connection to a SCM like GitHub, GitHub Enterprise, Bitbucket Data Center, Bitbucket Cloud or GitLab.
--
-- /See:/ 'newConnection' smart constructor.
data Connection = Connection
  { -- | Optional. Allows clients to store small amounts of arbitrary data.
    annotations :: (Core.Maybe Connection_Annotations),
    -- | Configuration for connections to Bitbucket Cloud.
    bitbucketCloudConfig :: (Core.Maybe BitbucketCloudConfig),
    -- | Configuration for connections to Bitbucket Data Center.
    bitbucketDataCenterConfig :: (Core.Maybe BitbucketDataCenterConfig),
    -- | Output only. Server assigned timestamp for when the connection was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
    disabled :: (Core.Maybe Core.Bool),
    -- | This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Configuration for connections to github.com.
    githubConfig :: (Core.Maybe GitHubConfig),
    -- | Configuration for connections to an instance of GitHub Enterprise.
    githubEnterpriseConfig :: (Core.Maybe GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig),
    -- | Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
    gitlabConfig :: (Core.Maybe GoogleDevtoolsCloudbuildV2GitLabConfig),
    -- | Output only. Installation state of the Connection.
    installationState :: (Core.Maybe InstallationState),
    -- | Immutable. The resource name of the connection, in the format @projects\/{project}\/locations\/{location}\/connections\/{connection_id}@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Set to true when the connection is being set up or updated in the background.
    reconciling :: (Core.Maybe Core.Bool),
    -- | Output only. Server assigned timestamp for when the connection was updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Connection' with the minimum fields required to make a request.
newConnection ::
  Connection
newConnection =
  Connection
    { annotations = Core.Nothing,
      bitbucketCloudConfig = Core.Nothing,
      bitbucketDataCenterConfig = Core.Nothing,
      createTime = Core.Nothing,
      disabled = Core.Nothing,
      etag = Core.Nothing,
      githubConfig = Core.Nothing,
      githubEnterpriseConfig = Core.Nothing,
      gitlabConfig = Core.Nothing,
      installationState = Core.Nothing,
      name = Core.Nothing,
      reconciling = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Connection where
  parseJSON =
    Core.withObject
      "Connection"
      ( \o ->
          Connection
            Core.<$> (o Core..:? "annotations")
            Core.<*> (o Core..:? "bitbucketCloudConfig")
            Core.<*> (o Core..:? "bitbucketDataCenterConfig")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "githubConfig")
            Core.<*> (o Core..:? "githubEnterpriseConfig")
            Core.<*> (o Core..:? "gitlabConfig")
            Core.<*> (o Core..:? "installationState")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "reconciling")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Connection where
  toJSON Connection {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotations" Core..=) Core.<$> annotations,
            ("bitbucketCloudConfig" Core..=) Core.<$> bitbucketCloudConfig,
            ("bitbucketDataCenterConfig" Core..=)
              Core.<$> bitbucketDataCenterConfig,
            ("createTime" Core..=) Core.<$> createTime,
            ("disabled" Core..=) Core.<$> disabled,
            ("etag" Core..=) Core.<$> etag,
            ("githubConfig" Core..=) Core.<$> githubConfig,
            ("githubEnterpriseConfig" Core..=) Core.<$> githubEnterpriseConfig,
            ("gitlabConfig" Core..=) Core.<$> gitlabConfig,
            ("installationState" Core..=) Core.<$> installationState,
            ("name" Core..=) Core.<$> name,
            ("reconciling" Core..=) Core.<$> reconciling,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Optional. Allows clients to store small amounts of arbitrary data.
--
-- /See:/ 'newConnection_Annotations' smart constructor.
newtype Connection_Annotations = Connection_Annotations
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Connection_Annotations' with the minimum fields required to make a request.
newConnection_Annotations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Connection_Annotations
newConnection_Annotations additional =
  Connection_Annotations {additional = additional}

instance Core.FromJSON Connection_Annotations where
  parseJSON =
    Core.withObject
      "Connection_Annotations"
      (\o -> Connection_Annotations Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Connection_Annotations where
  toJSON Connection_Annotations {..} = Core.toJSON additional

-- | Message for creating a Repository.
--
-- /See:/ 'newCreateRepositoryRequest' smart constructor.
data CreateRepositoryRequest = CreateRepositoryRequest
  { -- | Required. The connection to contain the repository. If the request is part of a BatchCreateRepositoriesRequest, this field should be empty or match the parent specified there.
    parent :: (Core.Maybe Core.Text),
    -- | Required. The repository to create.
    repository :: (Core.Maybe Repository),
    -- | Required. The ID to use for the repository, which will become the final component of the repository\'s resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&\'()*+,;=\@.
    repositoryId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateRepositoryRequest' with the minimum fields required to make a request.
newCreateRepositoryRequest ::
  CreateRepositoryRequest
newCreateRepositoryRequest =
  CreateRepositoryRequest
    { parent = Core.Nothing,
      repository = Core.Nothing,
      repositoryId = Core.Nothing
    }

instance Core.FromJSON CreateRepositoryRequest where
  parseJSON =
    Core.withObject
      "CreateRepositoryRequest"
      ( \o ->
          CreateRepositoryRequest
            Core.<$> (o Core..:? "parent")
            Core.<*> (o Core..:? "repository")
            Core.<*> (o Core..:? "repositoryId")
      )

instance Core.ToJSON CreateRepositoryRequest where
  toJSON CreateRepositoryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("parent" Core..=) Core.<$> parent,
            ("repository" Core..=) Core.<$> repository,
            ("repositoryId" Core..=) Core.<$> repositoryId
          ]
      )

-- | EmbeddedTask defines a Task that is embedded in a Pipeline.
--
-- /See:/ 'newEmbeddedTask' smart constructor.
data EmbeddedTask = EmbeddedTask
  { -- | User annotations. See https:\/\/google.aip.dev\/128#annotations
    annotations :: (Core.Maybe EmbeddedTask_Annotations),
    -- | Spec to instantiate this TaskRun.
    taskSpec :: (Core.Maybe TaskSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedTask' with the minimum fields required to make a request.
newEmbeddedTask ::
  EmbeddedTask
newEmbeddedTask =
  EmbeddedTask {annotations = Core.Nothing, taskSpec = Core.Nothing}

instance Core.FromJSON EmbeddedTask where
  parseJSON =
    Core.withObject
      "EmbeddedTask"
      ( \o ->
          EmbeddedTask
            Core.<$> (o Core..:? "annotations")
            Core.<*> (o Core..:? "taskSpec")
      )

instance Core.ToJSON EmbeddedTask where
  toJSON EmbeddedTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotations" Core..=) Core.<$> annotations,
            ("taskSpec" Core..=) Core.<$> taskSpec
          ]
      )

-- | User annotations. See https:\/\/google.aip.dev\/128#annotations
--
-- /See:/ 'newEmbeddedTask_Annotations' smart constructor.
newtype EmbeddedTask_Annotations = EmbeddedTask_Annotations
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedTask_Annotations' with the minimum fields required to make a request.
newEmbeddedTask_Annotations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  EmbeddedTask_Annotations
newEmbeddedTask_Annotations additional =
  EmbeddedTask_Annotations {additional = additional}

instance Core.FromJSON EmbeddedTask_Annotations where
  parseJSON =
    Core.withObject
      "EmbeddedTask_Annotations"
      (\o -> EmbeddedTask_Annotations Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON EmbeddedTask_Annotations where
  toJSON EmbeddedTask_Annotations {..} = Core.toJSON additional

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

-- | Represents an empty Volume source.
--
-- /See:/ 'newEmptyDirVolumeSource' smart constructor.
data EmptyDirVolumeSource = EmptyDirVolumeSource
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmptyDirVolumeSource' with the minimum fields required to make a request.
newEmptyDirVolumeSource ::
  EmptyDirVolumeSource
newEmptyDirVolumeSource = EmptyDirVolumeSource

instance Core.FromJSON EmptyDirVolumeSource where
  parseJSON =
    Core.withObject
      "EmptyDirVolumeSource"
      (\o -> Core.pure EmptyDirVolumeSource)

instance Core.ToJSON EmptyDirVolumeSource where
  toJSON = Core.const Core.emptyObject

-- | Environment variable.
--
-- /See:/ 'newEnvVar' smart constructor.
data EnvVar = EnvVar
  { -- | Name of the environment variable.
    name :: (Core.Maybe Core.Text),
    -- | Value of the environment variable.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnvVar' with the minimum fields required to make a request.
newEnvVar ::
  EnvVar
newEnvVar = EnvVar {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON EnvVar where
  parseJSON =
    Core.withObject
      "EnvVar"
      ( \o ->
          EnvVar Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON EnvVar where
  toJSON EnvVar {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("value" Core..=) Core.<$> value]
      )

-- | ExecAction describes a \"run in container\" action.
--
-- /See:/ 'newExecAction' smart constructor.
newtype ExecAction = ExecAction
  { -- | Optional. Command is the command line to execute inside the container, the working directory for the command is root (\'\/\') in the container\'s filesystem. The command is simply exec\'d, it is not run inside a shell, so traditional shell instructions (\'|\', etc) won\'t work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live\/healthy and non-zero is unhealthy. +optional
    command :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecAction' with the minimum fields required to make a request.
newExecAction ::
  ExecAction
newExecAction = ExecAction {command = Core.Nothing}

instance Core.FromJSON ExecAction where
  parseJSON =
    Core.withObject
      "ExecAction"
      (\o -> ExecAction Core.<$> (o Core..:? "command"))

instance Core.ToJSON ExecAction where
  toJSON ExecAction {..} =
    Core.object
      (Core.catMaybes [("command" Core..=) Core.<$> command])

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
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

-- | Response for fetching git refs
--
-- /See:/ 'newFetchGitRefsResponse' smart constructor.
data FetchGitRefsResponse = FetchGitRefsResponse
  { -- | A token identifying a page of results the server should return.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Name of the refs fetched.
    refNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchGitRefsResponse' with the minimum fields required to make a request.
newFetchGitRefsResponse ::
  FetchGitRefsResponse
newFetchGitRefsResponse =
  FetchGitRefsResponse
    { nextPageToken = Core.Nothing,
      refNames = Core.Nothing
    }

instance Core.FromJSON FetchGitRefsResponse where
  parseJSON =
    Core.withObject
      "FetchGitRefsResponse"
      ( \o ->
          FetchGitRefsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "refNames")
      )

instance Core.ToJSON FetchGitRefsResponse where
  toJSON FetchGitRefsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("refNames" Core..=) Core.<$> refNames
          ]
      )

-- | Response message for FetchLinkableRepositories.
--
-- /See:/ 'newFetchLinkableRepositoriesResponse' smart constructor.
data FetchLinkableRepositoriesResponse = FetchLinkableRepositoriesResponse
  { -- | A token identifying a page of results the server should return.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | repositories ready to be created.
    repositories :: (Core.Maybe [Repository])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchLinkableRepositoriesResponse' with the minimum fields required to make a request.
newFetchLinkableRepositoriesResponse ::
  FetchLinkableRepositoriesResponse
newFetchLinkableRepositoriesResponse =
  FetchLinkableRepositoriesResponse
    { nextPageToken = Core.Nothing,
      repositories = Core.Nothing
    }

instance Core.FromJSON FetchLinkableRepositoriesResponse where
  parseJSON =
    Core.withObject
      "FetchLinkableRepositoriesResponse"
      ( \o ->
          FetchLinkableRepositoriesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "repositories")
      )

instance Core.ToJSON FetchLinkableRepositoriesResponse where
  toJSON FetchLinkableRepositoriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("repositories" Core..=) Core.<$> repositories
          ]
      )

-- | Message for fetching SCM read token.
--
-- /See:/ 'newFetchReadTokenRequest' smart constructor.
data FetchReadTokenRequest = FetchReadTokenRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchReadTokenRequest' with the minimum fields required to make a request.
newFetchReadTokenRequest ::
  FetchReadTokenRequest
newFetchReadTokenRequest = FetchReadTokenRequest

instance Core.FromJSON FetchReadTokenRequest where
  parseJSON =
    Core.withObject
      "FetchReadTokenRequest"
      (\o -> Core.pure FetchReadTokenRequest)

instance Core.ToJSON FetchReadTokenRequest where
  toJSON = Core.const Core.emptyObject

-- | Message for responding to get read token.
--
-- /See:/ 'newFetchReadTokenResponse' smart constructor.
data FetchReadTokenResponse = FetchReadTokenResponse
  { -- | Expiration timestamp. Can be empty if unknown or non-expiring.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | The token content.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchReadTokenResponse' with the minimum fields required to make a request.
newFetchReadTokenResponse ::
  FetchReadTokenResponse
newFetchReadTokenResponse =
  FetchReadTokenResponse
    { expirationTime = Core.Nothing,
      token = Core.Nothing
    }

instance Core.FromJSON FetchReadTokenResponse where
  parseJSON =
    Core.withObject
      "FetchReadTokenResponse"
      ( \o ->
          FetchReadTokenResponse
            Core.<$> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "token")
      )

instance Core.ToJSON FetchReadTokenResponse where
  toJSON FetchReadTokenResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("expirationTime" Core..=) Core.<$> expirationTime,
            ("token" Core..=) Core.<$> token
          ]
      )

-- | Message for fetching SCM read\/write token.
--
-- /See:/ 'newFetchReadWriteTokenRequest' smart constructor.
data FetchReadWriteTokenRequest = FetchReadWriteTokenRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchReadWriteTokenRequest' with the minimum fields required to make a request.
newFetchReadWriteTokenRequest ::
  FetchReadWriteTokenRequest
newFetchReadWriteTokenRequest = FetchReadWriteTokenRequest

instance Core.FromJSON FetchReadWriteTokenRequest where
  parseJSON =
    Core.withObject
      "FetchReadWriteTokenRequest"
      (\o -> Core.pure FetchReadWriteTokenRequest)

instance Core.ToJSON FetchReadWriteTokenRequest where
  toJSON = Core.const Core.emptyObject

-- | Message for responding to get read\/write token.
--
-- /See:/ 'newFetchReadWriteTokenResponse' smart constructor.
data FetchReadWriteTokenResponse = FetchReadWriteTokenResponse
  { -- | Expiration timestamp. Can be empty if unknown or non-expiring.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | The token content.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchReadWriteTokenResponse' with the minimum fields required to make a request.
newFetchReadWriteTokenResponse ::
  FetchReadWriteTokenResponse
newFetchReadWriteTokenResponse =
  FetchReadWriteTokenResponse
    { expirationTime = Core.Nothing,
      token = Core.Nothing
    }

instance Core.FromJSON FetchReadWriteTokenResponse where
  parseJSON =
    Core.withObject
      "FetchReadWriteTokenResponse"
      ( \o ->
          FetchReadWriteTokenResponse
            Core.<$> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "token")
      )

instance Core.ToJSON FetchReadWriteTokenResponse where
  toJSON FetchReadWriteTokenResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("expirationTime" Core..=) Core.<$> expirationTime,
            ("token" Core..=) Core.<$> token
          ]
      )

-- | Configuration for connections to github.com.
--
-- /See:/ 'newGitHubConfig' smart constructor.
data GitHubConfig = GitHubConfig
  { -- | Optional. GitHub App installation id.
    appInstallationId :: (Core.Maybe Core.Int64),
    -- | Optional. OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
    authorizerCredential :: (Core.Maybe OAuthCredential)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitHubConfig' with the minimum fields required to make a request.
newGitHubConfig ::
  GitHubConfig
newGitHubConfig =
  GitHubConfig
    { appInstallationId = Core.Nothing,
      authorizerCredential = Core.Nothing
    }

instance Core.FromJSON GitHubConfig where
  parseJSON =
    Core.withObject
      "GitHubConfig"
      ( \o ->
          GitHubConfig
            Core.<$> (o Core..:? "appInstallationId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "authorizerCredential")
      )

instance Core.ToJSON GitHubConfig where
  toJSON GitHubConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("appInstallationId" Core..=)
              Core.. Core.AsText
              Core.<$> appInstallationId,
            ("authorizerCredential" Core..=) Core.<$> authorizerCredential
          ]
      )

-- | Conditions defines a readiness condition for a Knative resource.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV2Condition' smart constructor.
data GoogleDevtoolsCloudbuildV2Condition = GoogleDevtoolsCloudbuildV2Condition
  { -- | LastTransitionTime is the last time the condition transitioned from one status to another.
    lastTransitionTime :: (Core.Maybe Core.DateTime),
    -- | A human readable message indicating details about the transition.
    message :: (Core.Maybe Core.Text),
    -- | The reason for the condition\'s last transition.
    reason :: (Core.Maybe Core.Text),
    -- | Severity with which to treat failures of this type of condition.
    severity :: (Core.Maybe GoogleDevtoolsCloudbuildV2Condition_Severity),
    -- | Status of the condition.
    status :: (Core.Maybe GoogleDevtoolsCloudbuildV2Condition_Status),
    -- | Type of condition.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV2Condition' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV2Condition ::
  GoogleDevtoolsCloudbuildV2Condition
newGoogleDevtoolsCloudbuildV2Condition =
  GoogleDevtoolsCloudbuildV2Condition
    { lastTransitionTime =
        Core.Nothing,
      message = Core.Nothing,
      reason = Core.Nothing,
      severity = Core.Nothing,
      status = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GoogleDevtoolsCloudbuildV2Condition where
  parseJSON =
    Core.withObject
      "GoogleDevtoolsCloudbuildV2Condition"
      ( \o ->
          GoogleDevtoolsCloudbuildV2Condition
            Core.<$> (o Core..:? "lastTransitionTime")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GoogleDevtoolsCloudbuildV2Condition where
  toJSON GoogleDevtoolsCloudbuildV2Condition {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastTransitionTime" Core..=) Core.<$> lastTransitionTime,
            ("message" Core..=) Core.<$> message,
            ("reason" Core..=) Core.<$> reason,
            ("severity" Core..=) Core.<$> severity,
            ("status" Core..=) Core.<$> status,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Configuration for connections to an instance of GitHub Enterprise.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig' smart constructor.
data GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig = GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
  { -- | Required. API Key used for authentication of webhook events.
    apiKey :: (Core.Maybe Core.Text),
    -- | Optional. Id of the GitHub App created from the manifest.
    appId :: (Core.Maybe Core.Int64),
    -- | Optional. ID of the installation of the GitHub App.
    appInstallationId :: (Core.Maybe Core.Int64),
    -- | Optional. The URL-friendly name of the GitHub App.
    appSlug :: (Core.Maybe Core.Text),
    -- | Required. The URI of the GitHub Enterprise host this connection is for.
    hostUri :: (Core.Maybe Core.Text),
    -- | Optional. SecretManager resource containing the private key of the GitHub App, formatted as @projects\/*\/secrets\/*\/versions\/*@.
    privateKeySecretVersion :: (Core.Maybe Core.Text),
    -- | Output only. GitHub Enterprise version installed at the host_uri.
    serverVersion :: (Core.Maybe Core.Text),
    -- | Optional. Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
    serviceDirectoryConfig :: (Core.Maybe GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig),
    -- | Optional. SSL certificate to use for requests to GitHub Enterprise.
    sslCa :: (Core.Maybe Core.Text),
    -- | Optional. SecretManager resource containing the webhook secret of the GitHub App, formatted as @projects\/*\/secrets\/*\/versions\/*@.
    webhookSecretSecretVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig ::
  GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
newGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig =
  GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
    { apiKey =
        Core.Nothing,
      appId = Core.Nothing,
      appInstallationId = Core.Nothing,
      appSlug = Core.Nothing,
      hostUri = Core.Nothing,
      privateKeySecretVersion = Core.Nothing,
      serverVersion = Core.Nothing,
      serviceDirectoryConfig = Core.Nothing,
      sslCa = Core.Nothing,
      webhookSecretSecretVersion = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
  where
  parseJSON =
    Core.withObject
      "GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig"
      ( \o ->
          GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
            Core.<$> (o Core..:? "apiKey")
            Core.<*> (o Core..:? "appId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "appInstallationId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "appSlug")
            Core.<*> (o Core..:? "hostUri")
            Core.<*> (o Core..:? "privateKeySecretVersion")
            Core.<*> (o Core..:? "serverVersion")
            Core.<*> (o Core..:? "serviceDirectoryConfig")
            Core.<*> (o Core..:? "sslCa")
            Core.<*> (o Core..:? "webhookSecretSecretVersion")
      )

instance
  Core.ToJSON
    GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
  where
  toJSON GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiKey" Core..=) Core.<$> apiKey,
            ("appId" Core..=) Core.. Core.AsText Core.<$> appId,
            ("appInstallationId" Core..=)
              Core.. Core.AsText
              Core.<$> appInstallationId,
            ("appSlug" Core..=) Core.<$> appSlug,
            ("hostUri" Core..=) Core.<$> hostUri,
            ("privateKeySecretVersion" Core..=)
              Core.<$> privateKeySecretVersion,
            ("serverVersion" Core..=) Core.<$> serverVersion,
            ("serviceDirectoryConfig" Core..=) Core.<$> serviceDirectoryConfig,
            ("sslCa" Core..=) Core.<$> sslCa,
            ("webhookSecretSecretVersion" Core..=)
              Core.<$> webhookSecretSecretVersion
          ]
      )

-- | Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV2GitLabConfig' smart constructor.
data GoogleDevtoolsCloudbuildV2GitLabConfig = GoogleDevtoolsCloudbuildV2GitLabConfig
  { -- | Required. A GitLab personal access token with the @api@ scope access.
    authorizerCredential :: (Core.Maybe UserCredential),
    -- | Optional. The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https:\/\/gitlab.com.
    hostUri :: (Core.Maybe Core.Text),
    -- | Required. A GitLab personal access token with the minimum @read_api@ scope access.
    readAuthorizerCredential :: (Core.Maybe UserCredential),
    -- | Output only. Version of the GitLab Enterprise server running on the @host_uri@.
    serverVersion :: (Core.Maybe Core.Text),
    -- | Optional. Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
    serviceDirectoryConfig :: (Core.Maybe GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig),
    -- | Optional. SSL certificate to use for requests to GitLab Enterprise.
    sslCa :: (Core.Maybe Core.Text),
    -- | Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as @projects\/*\/secrets\/*\/versions\/*@.
    webhookSecretSecretVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV2GitLabConfig' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV2GitLabConfig ::
  GoogleDevtoolsCloudbuildV2GitLabConfig
newGoogleDevtoolsCloudbuildV2GitLabConfig =
  GoogleDevtoolsCloudbuildV2GitLabConfig
    { authorizerCredential =
        Core.Nothing,
      hostUri = Core.Nothing,
      readAuthorizerCredential = Core.Nothing,
      serverVersion = Core.Nothing,
      serviceDirectoryConfig = Core.Nothing,
      sslCa = Core.Nothing,
      webhookSecretSecretVersion = Core.Nothing
    }

instance Core.FromJSON GoogleDevtoolsCloudbuildV2GitLabConfig where
  parseJSON =
    Core.withObject
      "GoogleDevtoolsCloudbuildV2GitLabConfig"
      ( \o ->
          GoogleDevtoolsCloudbuildV2GitLabConfig
            Core.<$> (o Core..:? "authorizerCredential")
            Core.<*> (o Core..:? "hostUri")
            Core.<*> (o Core..:? "readAuthorizerCredential")
            Core.<*> (o Core..:? "serverVersion")
            Core.<*> (o Core..:? "serviceDirectoryConfig")
            Core.<*> (o Core..:? "sslCa")
            Core.<*> (o Core..:? "webhookSecretSecretVersion")
      )

instance Core.ToJSON GoogleDevtoolsCloudbuildV2GitLabConfig where
  toJSON GoogleDevtoolsCloudbuildV2GitLabConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorizerCredential" Core..=) Core.<$> authorizerCredential,
            ("hostUri" Core..=) Core.<$> hostUri,
            ("readAuthorizerCredential" Core..=)
              Core.<$> readAuthorizerCredential,
            ("serverVersion" Core..=) Core.<$> serverVersion,
            ("serviceDirectoryConfig" Core..=) Core.<$> serviceDirectoryConfig,
            ("sslCa" Core..=) Core.<$> sslCa,
            ("webhookSecretSecretVersion" Core..=)
              Core.<$> webhookSecretSecretVersion
          ]
      )

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV2OperationMetadata' smart constructor.
data GoogleDevtoolsCloudbuildV2OperationMetadata = GoogleDevtoolsCloudbuildV2OperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    requestedCancellation :: (Core.Maybe Core.Bool),
    -- | Output only. Human-readable status of the operation, if any.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV2OperationMetadata' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV2OperationMetadata ::
  GoogleDevtoolsCloudbuildV2OperationMetadata
newGoogleDevtoolsCloudbuildV2OperationMetadata =
  GoogleDevtoolsCloudbuildV2OperationMetadata
    { apiVersion =
        Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      requestedCancellation = Core.Nothing,
      statusMessage = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON GoogleDevtoolsCloudbuildV2OperationMetadata where
  parseJSON =
    Core.withObject
      "GoogleDevtoolsCloudbuildV2OperationMetadata"
      ( \o ->
          GoogleDevtoolsCloudbuildV2OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "requestedCancellation")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON GoogleDevtoolsCloudbuildV2OperationMetadata where
  toJSON GoogleDevtoolsCloudbuildV2OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("requestedCancellation" Core..=) Core.<$> requestedCancellation,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | ServiceDirectoryConfig represents Service Directory configuration for a connection.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig' smart constructor.
newtype GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig = GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
  { -- | Required. The Service Directory service name. Format: projects\/{project}\/locations\/{location}\/namespaces\/{namespace}\/services\/{service}.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig ::
  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
newGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig =
  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
    { service =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
  where
  parseJSON =
    Core.withObject
      "GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig"
      ( \o ->
          GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
            Core.<$> (o Core..:? "service")
      )

instance
  Core.ToJSON
    GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
  where
  toJSON GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig {..} =
    Core.object
      (Core.catMaybes [("service" Core..=) Core.<$> service])

-- | Message that represents an arbitrary HTTP body. It should only be used for payload formats that can\'t be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { \/\/ A unique request id. string request/id = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody http/body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.
--
-- /See:/ 'newHttpBody' smart constructor.
data HttpBody = HttpBody
  { -- | The HTTP Content-Type header value specifying the content type of the body.
    contentType :: (Core.Maybe Core.Text),
    -- | The HTTP request\/response body as raw binary.
    data' :: (Core.Maybe Core.Base64),
    -- | Application specific response metadata. Must be set in the first response for streaming APIs.
    extensions :: (Core.Maybe [HttpBody_ExtensionsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody' with the minimum fields required to make a request.
newHttpBody ::
  HttpBody
newHttpBody =
  HttpBody
    { contentType = Core.Nothing,
      data' = Core.Nothing,
      extensions = Core.Nothing
    }

instance Core.FromJSON HttpBody where
  parseJSON =
    Core.withObject
      "HttpBody"
      ( \o ->
          HttpBody
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "extensions")
      )

instance Core.ToJSON HttpBody where
  toJSON HttpBody {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("data" Core..=) Core.<$> data',
            ("extensions" Core..=) Core.<$> extensions
          ]
      )

--
-- /See:/ 'newHttpBody_ExtensionsItem' smart constructor.
newtype HttpBody_ExtensionsItem = HttpBody_ExtensionsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody_ExtensionsItem' with the minimum fields required to make a request.
newHttpBody_ExtensionsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  HttpBody_ExtensionsItem
newHttpBody_ExtensionsItem additional =
  HttpBody_ExtensionsItem {additional = additional}

instance Core.FromJSON HttpBody_ExtensionsItem where
  parseJSON =
    Core.withObject
      "HttpBody_ExtensionsItem"
      (\o -> HttpBody_ExtensionsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON HttpBody_ExtensionsItem where
  toJSON HttpBody_ExtensionsItem {..} = Core.toJSON additional

-- | Describes stage and necessary actions to be taken by the user to complete the installation. Used for GitHub and GitHub Enterprise based connections.
--
-- /See:/ 'newInstallationState' smart constructor.
data InstallationState = InstallationState
  { -- | Output only. Link to follow for next action. Empty string if the installation is already complete.
    actionUri :: (Core.Maybe Core.Text),
    -- | Output only. Message of what the user should do next to continue the installation. Empty string if the installation is already complete.
    message :: (Core.Maybe Core.Text),
    -- | Output only. Current step of the installation process.
    stage :: (Core.Maybe InstallationState_Stage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstallationState' with the minimum fields required to make a request.
newInstallationState ::
  InstallationState
newInstallationState =
  InstallationState
    { actionUri = Core.Nothing,
      message = Core.Nothing,
      stage = Core.Nothing
    }

instance Core.FromJSON InstallationState where
  parseJSON =
    Core.withObject
      "InstallationState"
      ( \o ->
          InstallationState
            Core.<$> (o Core..:? "actionUri")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "stage")
      )

instance Core.ToJSON InstallationState where
  toJSON InstallationState {..} =
    Core.object
      ( Core.catMaybes
          [ ("actionUri" Core..=) Core.<$> actionUri,
            ("message" Core..=) Core.<$> message,
            ("stage" Core..=) Core.<$> stage
          ]
      )

-- | Message for response to listing Connections.
--
-- /See:/ 'newListConnectionsResponse' smart constructor.
data ListConnectionsResponse = ListConnectionsResponse
  { -- | The list of Connections.
    connections :: (Core.Maybe [Connection]),
    -- | A token identifying a page of results the server should return.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListConnectionsResponse' with the minimum fields required to make a request.
newListConnectionsResponse ::
  ListConnectionsResponse
newListConnectionsResponse =
  ListConnectionsResponse
    { connections = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListConnectionsResponse where
  parseJSON =
    Core.withObject
      "ListConnectionsResponse"
      ( \o ->
          ListConnectionsResponse
            Core.<$> (o Core..:? "connections")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListConnectionsResponse where
  toJSON ListConnectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("connections" Core..=) Core.<$> connections,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse
    { locations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Message for response to listing Repositories.
--
-- /See:/ 'newListRepositoriesResponse' smart constructor.
data ListRepositoriesResponse = ListRepositoriesResponse
  { -- | A token identifying a page of results the server should return.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of Repositories.
    repositories :: (Core.Maybe [Repository])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRepositoriesResponse' with the minimum fields required to make a request.
newListRepositoriesResponse ::
  ListRepositoriesResponse
newListRepositoriesResponse =
  ListRepositoriesResponse
    { nextPageToken = Core.Nothing,
      repositories = Core.Nothing
    }

instance Core.FromJSON ListRepositoriesResponse where
  parseJSON =
    Core.withObject
      "ListRepositoriesResponse"
      ( \o ->
          ListRepositoriesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "repositories")
      )

instance Core.ToJSON ListRepositoriesResponse where
  toJSON ListRepositoriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("repositories" Core..=) Core.<$> repositories
          ]
      )

-- | A resource that represents a Google Cloud location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional =
  Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      (\o -> Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional =
  Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      (\o -> Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Represents an OAuth token of the account that authorized the Connection, and associated metadata.
--
-- /See:/ 'newOAuthCredential' smart constructor.
data OAuthCredential = OAuthCredential
  { -- | Optional. A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: @projects\/*\/secrets\/*\/versions\/*@.
    oauthTokenSecretVersion :: (Core.Maybe Core.Text),
    -- | Output only. The username associated to this token.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuthCredential' with the minimum fields required to make a request.
newOAuthCredential ::
  OAuthCredential
newOAuthCredential =
  OAuthCredential
    { oauthTokenSecretVersion = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON OAuthCredential where
  parseJSON =
    Core.withObject
      "OAuthCredential"
      ( \o ->
          OAuthCredential
            Core.<$> (o Core..:? "oauthTokenSecretVersion")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON OAuthCredential where
  toJSON OAuthCredential {..} =
    Core.object
      ( Core.catMaybes
          [ ("oauthTokenSecretVersion" Core..=)
              Core.<$> oauthTokenSecretVersion,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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

-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have google.longrunning.Operation.error value with a google.rpc.Status.code of @1@, corresponding to @Code.CANCELLED@.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Human-readable status of the operation, if any.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("cancelRequested" Core..=) Core.<$> cancelRequested,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | Param defined with name and value. PipelineRef can be used to refer to a specific instance of a Pipeline.
--
-- /See:/ 'newParam' smart constructor.
data Param = Param
  { -- | Name of the parameter.
    name :: (Core.Maybe Core.Text),
    -- | Value of the parameter.
    value :: (Core.Maybe ParamValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Param' with the minimum fields required to make a request.
newParam ::
  Param
newParam = Param {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Param where
  parseJSON =
    Core.withObject
      "Param"
      ( \o ->
          Param Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Param where
  toJSON Param {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("value" Core..=) Core.<$> value]
      )

-- | ParamSpec defines parameters needed beyond typed inputs (such as resources). Parameter values are provided by users as inputs on a TaskRun or PipelineRun.
--
-- /See:/ 'newParamSpec' smart constructor.
data ParamSpec = ParamSpec
  { -- | The default value a parameter takes if no input value is supplied
    default' :: (Core.Maybe ParamValue),
    -- | Description of the ParamSpec
    description :: (Core.Maybe Core.Text),
    -- | Name of the ParamSpec
    name :: (Core.Maybe Core.Text),
    -- | Type of ParamSpec
    type' :: (Core.Maybe ParamSpec_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParamSpec' with the minimum fields required to make a request.
newParamSpec ::
  ParamSpec
newParamSpec =
  ParamSpec
    { default' = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ParamSpec where
  parseJSON =
    Core.withObject
      "ParamSpec"
      ( \o ->
          ParamSpec
            Core.<$> (o Core..:? "default")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ParamSpec where
  toJSON ParamSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("default" Core..=) Core.<$> default',
            ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Parameter value.
--
-- /See:/ 'newParamValue' smart constructor.
data ParamValue = ParamValue
  { -- | Value of the parameter if type is array.
    arrayVal :: (Core.Maybe [Core.Text]),
    -- | Optional. Value of the parameter if type is object.
    objectVal :: (Core.Maybe ParamValue_ObjectVal),
    -- | Value of the parameter if type is string.
    stringVal :: (Core.Maybe Core.Text),
    -- | Type of parameter.
    type' :: (Core.Maybe ParamValue_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParamValue' with the minimum fields required to make a request.
newParamValue ::
  ParamValue
newParamValue =
  ParamValue
    { arrayVal = Core.Nothing,
      objectVal = Core.Nothing,
      stringVal = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ParamValue where
  parseJSON =
    Core.withObject
      "ParamValue"
      ( \o ->
          ParamValue
            Core.<$> (o Core..:? "arrayVal")
            Core.<*> (o Core..:? "objectVal")
            Core.<*> (o Core..:? "stringVal")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ParamValue where
  toJSON ParamValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayVal" Core..=) Core.<$> arrayVal,
            ("objectVal" Core..=) Core.<$> objectVal,
            ("stringVal" Core..=) Core.<$> stringVal,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Optional. Value of the parameter if type is object.
--
-- /See:/ 'newParamValue_ObjectVal' smart constructor.
newtype ParamValue_ObjectVal = ParamValue_ObjectVal
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParamValue_ObjectVal' with the minimum fields required to make a request.
newParamValue_ObjectVal ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ParamValue_ObjectVal
newParamValue_ObjectVal additional =
  ParamValue_ObjectVal {additional = additional}

instance Core.FromJSON ParamValue_ObjectVal where
  parseJSON =
    Core.withObject
      "ParamValue_ObjectVal"
      (\o -> ParamValue_ObjectVal Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ParamValue_ObjectVal where
  toJSON ParamValue_ObjectVal {..} = Core.toJSON additional

-- | PipelineRef can be used to refer to a specific instance of a Pipeline.
--
-- /See:/ 'newPipelineRef' smart constructor.
data PipelineRef = PipelineRef
  { -- | Optional. Name of the Pipeline.
    name :: (Core.Maybe Core.Text),
    -- | Params contains the parameters used to identify the referenced Tekton resource. Example entries might include \"repo\" or \"path\" but the set of params ultimately depends on the chosen resolver.
    params :: (Core.Maybe [Param]),
    -- | Resolver is the name of the resolver that should perform resolution of the referenced Tekton resource.
    resolver :: (Core.Maybe PipelineRef_Resolver)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineRef' with the minimum fields required to make a request.
newPipelineRef ::
  PipelineRef
newPipelineRef =
  PipelineRef
    { name = Core.Nothing,
      params = Core.Nothing,
      resolver = Core.Nothing
    }

instance Core.FromJSON PipelineRef where
  parseJSON =
    Core.withObject
      "PipelineRef"
      ( \o ->
          PipelineRef
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "resolver")
      )

instance Core.ToJSON PipelineRef where
  toJSON PipelineRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("params" Core..=) Core.<$> params,
            ("resolver" Core..=) Core.<$> resolver
          ]
      )

-- | A value produced by a Pipeline.
--
-- /See:/ 'newPipelineResult' smart constructor.
data PipelineResult = PipelineResult
  { -- | Output only. Description of the result.
    description :: (Core.Maybe Core.Text),
    -- | Output only. Name of the result.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The type of data that the result holds.
    type' :: (Core.Maybe PipelineResult_Type),
    -- | Output only. Value of the result.
    value :: (Core.Maybe ResultValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineResult' with the minimum fields required to make a request.
newPipelineResult ::
  PipelineResult
newPipelineResult =
  PipelineResult
    { description = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON PipelineResult where
  parseJSON =
    Core.withObject
      "PipelineResult"
      ( \o ->
          PipelineResult
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PipelineResult where
  toJSON PipelineResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Message describing PipelineRun object
--
-- /See:/ 'newPipelineRun' smart constructor.
data PipelineRun = PipelineRun
  { -- | User annotations. See https:\/\/google.aip.dev\/128#annotations
    annotations :: (Core.Maybe PipelineRun_Annotations),
    -- | Output only. List of TaskRun and Run names and PipelineTask names for children of this PipelineRun.
    childReferences :: (Core.Maybe [ChildStatusReference]),
    -- | Output only. Time the pipeline completed.
    completionTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Kubernetes Conditions convention for PipelineRun status and error.
    conditions :: (Core.Maybe [GoogleDevtoolsCloudbuildV2Condition]),
    -- | Output only. Time at which the request to create the @PipelineRun@ was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Needed for declarative-friendly resources.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. FinallyStartTime is when all non-finally tasks have been completed and only finally tasks are being executed. +optional
    finallyStartTime :: (Core.Maybe Core.DateTime),
    -- | Output only. GCB default params.
    gcbParams :: (Core.Maybe PipelineRun_GcbParams),
    -- | Output only. The @PipelineRun@ name with format @projects\/{project}\/locations\/{location}\/pipelineRuns\/{pipeline_run}@
    name :: (Core.Maybe Core.Text),
    -- | Params is a list of parameter names and values.
    params :: (Core.Maybe [Param]),
    -- | PipelineRef refer to a specific instance of a Pipeline.
    pipelineRef :: (Core.Maybe PipelineRef),
    -- | Pipelinerun status the user can provide. Used for cancellation.
    pipelineRunStatus :: (Core.Maybe PipelineRun_PipelineRunStatus),
    -- | PipelineSpec defines the desired state of Pipeline.
    pipelineSpec :: (Core.Maybe PipelineSpec),
    -- | Output only. Inline pipelineSpec yaml string, used by workflow run requests.
    pipelineSpecYaml :: (Core.Maybe Core.Text),
    -- | Optional. Provenance configuration.
    provenance :: (Core.Maybe Provenance),
    -- | Output only. The @Record@ of this @PipelineRun@. Format: @projects\/{project}\/locations\/{location}\/results\/{result_id}\/records\/{record_id}@
    record :: (Core.Maybe Core.Text),
    -- | Output only. The exact PipelineSpec used to instantiate the run.
    resolvedPipelineSpec :: (Core.Maybe PipelineSpec),
    -- | Optional. Output only. List of results written out by the pipeline\'s containers
    results :: (Core.Maybe [PipelineRunResult]),
    -- | Optional. Security configuration.
    security :: (Core.Maybe Security),
    -- | Service account used in the Pipeline. Deprecated; please use security.service_account instead.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Output only. List of tasks that were skipped due to when expressions evaluating to false.
    skippedTasks :: (Core.Maybe [SkippedTask]),
    -- | Output only. Time the pipeline is actually started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Time after which the Pipeline times out. Currently three keys are accepted in the map pipeline, tasks and finally with Timeouts.pipeline >= Timeouts.tasks + Timeouts.finally
    timeouts :: (Core.Maybe TimeoutFields),
    -- | Output only. A unique identifier for the @PipelineRun@.
    uid :: (Core.Maybe Core.Text),
    -- | Output only. Time at which the request to update the @PipelineRun@ was received.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Worker configuration.
    worker :: (Core.Maybe Worker),
    -- | Output only. The WorkerPool used to run this PipelineRun.
    workerPool :: (Core.Maybe Core.Text),
    -- | Output only. The Workflow used to create this PipelineRun.
    workflow :: (Core.Maybe Core.Text),
    -- | Workspaces is a list of WorkspaceBindings from volumes to workspaces.
    workspaces :: (Core.Maybe [WorkspaceBinding])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineRun' with the minimum fields required to make a request.
newPipelineRun ::
  PipelineRun
newPipelineRun =
  PipelineRun
    { annotations = Core.Nothing,
      childReferences = Core.Nothing,
      completionTime = Core.Nothing,
      conditions = Core.Nothing,
      createTime = Core.Nothing,
      etag = Core.Nothing,
      finallyStartTime = Core.Nothing,
      gcbParams = Core.Nothing,
      name = Core.Nothing,
      params = Core.Nothing,
      pipelineRef = Core.Nothing,
      pipelineRunStatus = Core.Nothing,
      pipelineSpec = Core.Nothing,
      pipelineSpecYaml = Core.Nothing,
      provenance = Core.Nothing,
      record = Core.Nothing,
      resolvedPipelineSpec = Core.Nothing,
      results = Core.Nothing,
      security = Core.Nothing,
      serviceAccount = Core.Nothing,
      skippedTasks = Core.Nothing,
      startTime = Core.Nothing,
      timeouts = Core.Nothing,
      uid = Core.Nothing,
      updateTime = Core.Nothing,
      worker = Core.Nothing,
      workerPool = Core.Nothing,
      workflow = Core.Nothing,
      workspaces = Core.Nothing
    }

instance Core.FromJSON PipelineRun where
  parseJSON =
    Core.withObject
      "PipelineRun"
      ( \o ->
          PipelineRun
            Core.<$> (o Core..:? "annotations")
            Core.<*> (o Core..:? "childReferences")
            Core.<*> (o Core..:? "completionTime")
            Core.<*> (o Core..:? "conditions")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "finallyStartTime")
            Core.<*> (o Core..:? "gcbParams")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "pipelineRef")
            Core.<*> (o Core..:? "pipelineRunStatus")
            Core.<*> (o Core..:? "pipelineSpec")
            Core.<*> (o Core..:? "pipelineSpecYaml")
            Core.<*> (o Core..:? "provenance")
            Core.<*> (o Core..:? "record")
            Core.<*> (o Core..:? "resolvedPipelineSpec")
            Core.<*> (o Core..:? "results")
            Core.<*> (o Core..:? "security")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "skippedTasks")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "timeouts")
            Core.<*> (o Core..:? "uid")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "worker")
            Core.<*> (o Core..:? "workerPool")
            Core.<*> (o Core..:? "workflow")
            Core.<*> (o Core..:? "workspaces")
      )

instance Core.ToJSON PipelineRun where
  toJSON PipelineRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotations" Core..=) Core.<$> annotations,
            ("childReferences" Core..=) Core.<$> childReferences,
            ("completionTime" Core..=) Core.<$> completionTime,
            ("conditions" Core..=) Core.<$> conditions,
            ("createTime" Core..=) Core.<$> createTime,
            ("etag" Core..=) Core.<$> etag,
            ("finallyStartTime" Core..=) Core.<$> finallyStartTime,
            ("gcbParams" Core..=) Core.<$> gcbParams,
            ("name" Core..=) Core.<$> name,
            ("params" Core..=) Core.<$> params,
            ("pipelineRef" Core..=) Core.<$> pipelineRef,
            ("pipelineRunStatus" Core..=) Core.<$> pipelineRunStatus,
            ("pipelineSpec" Core..=) Core.<$> pipelineSpec,
            ("pipelineSpecYaml" Core..=) Core.<$> pipelineSpecYaml,
            ("provenance" Core..=) Core.<$> provenance,
            ("record" Core..=) Core.<$> record,
            ("resolvedPipelineSpec" Core..=) Core.<$> resolvedPipelineSpec,
            ("results" Core..=) Core.<$> results,
            ("security" Core..=) Core.<$> security,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("skippedTasks" Core..=) Core.<$> skippedTasks,
            ("startTime" Core..=) Core.<$> startTime,
            ("timeouts" Core..=) Core.<$> timeouts,
            ("uid" Core..=) Core.<$> uid,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("worker" Core..=) Core.<$> worker,
            ("workerPool" Core..=) Core.<$> workerPool,
            ("workflow" Core..=) Core.<$> workflow,
            ("workspaces" Core..=) Core.<$> workspaces
          ]
      )

-- | User annotations. See https:\/\/google.aip.dev\/128#annotations
--
-- /See:/ 'newPipelineRun_Annotations' smart constructor.
newtype PipelineRun_Annotations = PipelineRun_Annotations
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineRun_Annotations' with the minimum fields required to make a request.
newPipelineRun_Annotations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PipelineRun_Annotations
newPipelineRun_Annotations additional =
  PipelineRun_Annotations {additional = additional}

instance Core.FromJSON PipelineRun_Annotations where
  parseJSON =
    Core.withObject
      "PipelineRun_Annotations"
      (\o -> PipelineRun_Annotations Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON PipelineRun_Annotations where
  toJSON PipelineRun_Annotations {..} = Core.toJSON additional

-- | Output only. GCB default params.
--
-- /See:/ 'newPipelineRun_GcbParams' smart constructor.
newtype PipelineRun_GcbParams = PipelineRun_GcbParams
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineRun_GcbParams' with the minimum fields required to make a request.
newPipelineRun_GcbParams ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PipelineRun_GcbParams
newPipelineRun_GcbParams additional =
  PipelineRun_GcbParams {additional = additional}

instance Core.FromJSON PipelineRun_GcbParams where
  parseJSON =
    Core.withObject
      "PipelineRun_GcbParams"
      (\o -> PipelineRun_GcbParams Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON PipelineRun_GcbParams where
  toJSON PipelineRun_GcbParams {..} = Core.toJSON additional

-- | PipelineRunResult used to describe the results of a pipeline
--
-- /See:/ 'newPipelineRunResult' smart constructor.
data PipelineRunResult = PipelineRunResult
  { -- | Output only. Name of the TaskRun
    name :: (Core.Maybe Core.Text),
    -- | Output only. Value of the result.
    value :: (Core.Maybe ResultValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineRunResult' with the minimum fields required to make a request.
newPipelineRunResult ::
  PipelineRunResult
newPipelineRunResult =
  PipelineRunResult {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON PipelineRunResult where
  parseJSON =
    Core.withObject
      "PipelineRunResult"
      ( \o ->
          PipelineRunResult
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PipelineRunResult where
  toJSON PipelineRunResult {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("value" Core..=) Core.<$> value]
      )

-- | PipelineSpec defines the desired state of Pipeline.
--
-- /See:/ 'newPipelineSpec' smart constructor.
data PipelineSpec = PipelineSpec
  { -- | List of Tasks that execute just before leaving the Pipeline i.e. either after all Tasks are finished executing successfully or after a failure which would result in ending the Pipeline.
    finallyTasks :: (Core.Maybe [PipelineTask]),
    -- | Output only. auto-generated yaml that is output only for display purpose for workflows using pipeline_spec, used by UI\/gcloud cli for Workflows.
    generatedYaml :: (Core.Maybe Core.Text),
    -- | List of parameters.
    params :: (Core.Maybe [ParamSpec]),
    -- | Optional. Output only. List of results written out by the pipeline\'s containers
    results :: (Core.Maybe [PipelineResult]),
    -- | List of Tasks that execute when this Pipeline is run.
    tasks :: (Core.Maybe [PipelineTask]),
    -- | Workspaces declares a set of named workspaces that are expected to be provided by a PipelineRun.
    workspaces :: (Core.Maybe [PipelineWorkspaceDeclaration])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineSpec' with the minimum fields required to make a request.
newPipelineSpec ::
  PipelineSpec
newPipelineSpec =
  PipelineSpec
    { finallyTasks = Core.Nothing,
      generatedYaml = Core.Nothing,
      params = Core.Nothing,
      results = Core.Nothing,
      tasks = Core.Nothing,
      workspaces = Core.Nothing
    }

instance Core.FromJSON PipelineSpec where
  parseJSON =
    Core.withObject
      "PipelineSpec"
      ( \o ->
          PipelineSpec
            Core.<$> (o Core..:? "finallyTasks")
            Core.<*> (o Core..:? "generatedYaml")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "results")
            Core.<*> (o Core..:? "tasks")
            Core.<*> (o Core..:? "workspaces")
      )

instance Core.ToJSON PipelineSpec where
  toJSON PipelineSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("finallyTasks" Core..=) Core.<$> finallyTasks,
            ("generatedYaml" Core..=) Core.<$> generatedYaml,
            ("params" Core..=) Core.<$> params,
            ("results" Core..=) Core.<$> results,
            ("tasks" Core..=) Core.<$> tasks,
            ("workspaces" Core..=) Core.<$> workspaces
          ]
      )

-- | PipelineTask defines a task in a Pipeline.
--
-- /See:/ 'newPipelineTask' smart constructor.
data PipelineTask = PipelineTask
  { -- | Name of the task.
    name :: (Core.Maybe Core.Text),
    -- | Params is a list of parameter names and values.
    params :: (Core.Maybe [Param]),
    -- | Retries represents how many times this task should be retried in case of task failure.
    retries :: (Core.Maybe Core.Int32),
    -- | RunAfter is the list of PipelineTask names that should be executed before this Task executes. (Used to force a specific ordering in graph execution.)
    runAfter :: (Core.Maybe [Core.Text]),
    -- | Reference to a specific instance of a task.
    taskRef :: (Core.Maybe TaskRef),
    -- | Spec to instantiate this TaskRun.
    taskSpec :: (Core.Maybe EmbeddedTask),
    -- | Time after which the TaskRun times out. Defaults to 1 hour. Specified TaskRun timeout should be less than 24h.
    timeout :: (Core.Maybe Core.Duration),
    -- | Conditions that need to be true for the task to run.
    whenExpressions :: (Core.Maybe [WhenExpression]),
    -- | Workspaces maps workspaces from the pipeline spec to the workspaces declared in the Task.
    workspaces :: (Core.Maybe [WorkspacePipelineTaskBinding])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineTask' with the minimum fields required to make a request.
newPipelineTask ::
  PipelineTask
newPipelineTask =
  PipelineTask
    { name = Core.Nothing,
      params = Core.Nothing,
      retries = Core.Nothing,
      runAfter = Core.Nothing,
      taskRef = Core.Nothing,
      taskSpec = Core.Nothing,
      timeout = Core.Nothing,
      whenExpressions = Core.Nothing,
      workspaces = Core.Nothing
    }

instance Core.FromJSON PipelineTask where
  parseJSON =
    Core.withObject
      "PipelineTask"
      ( \o ->
          PipelineTask
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "retries")
            Core.<*> (o Core..:? "runAfter")
            Core.<*> (o Core..:? "taskRef")
            Core.<*> (o Core..:? "taskSpec")
            Core.<*> (o Core..:? "timeout")
            Core.<*> (o Core..:? "whenExpressions")
            Core.<*> (o Core..:? "workspaces")
      )

instance Core.ToJSON PipelineTask where
  toJSON PipelineTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("params" Core..=) Core.<$> params,
            ("retries" Core..=) Core.<$> retries,
            ("runAfter" Core..=) Core.<$> runAfter,
            ("taskRef" Core..=) Core.<$> taskRef,
            ("taskSpec" Core..=) Core.<$> taskSpec,
            ("timeout" Core..=) Core.<$> timeout,
            ("whenExpressions" Core..=) Core.<$> whenExpressions,
            ("workspaces" Core..=) Core.<$> workspaces
          ]
      )

-- | Workspaces declares a set of named workspaces that are expected to be provided by a PipelineRun.
--
-- /See:/ 'newPipelineWorkspaceDeclaration' smart constructor.
data PipelineWorkspaceDeclaration = PipelineWorkspaceDeclaration
  { -- | Description is a human readable string describing how the workspace will be used in the Pipeline.
    description :: (Core.Maybe Core.Text),
    -- | Name is the name of a workspace to be provided by a PipelineRun.
    name :: (Core.Maybe Core.Text),
    -- | Optional marks a Workspace as not being required in PipelineRuns. By default this field is false and so declared workspaces are required.
    optional :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PipelineWorkspaceDeclaration' with the minimum fields required to make a request.
newPipelineWorkspaceDeclaration ::
  PipelineWorkspaceDeclaration
newPipelineWorkspaceDeclaration =
  PipelineWorkspaceDeclaration
    { description = Core.Nothing,
      name = Core.Nothing,
      optional = Core.Nothing
    }

instance Core.FromJSON PipelineWorkspaceDeclaration where
  parseJSON =
    Core.withObject
      "PipelineWorkspaceDeclaration"
      ( \o ->
          PipelineWorkspaceDeclaration
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "optional")
      )

instance Core.ToJSON PipelineWorkspaceDeclaration where
  toJSON PipelineWorkspaceDeclaration {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("optional" Core..=) Core.<$> optional
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "auditConfigs")
            Core.<*> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
--
-- /See:/ 'newProbe' smart constructor.
data Probe = Probe
  { -- | Optional. Exec specifies the action to take. +optional
    exec :: (Core.Maybe ExecAction),
    -- | Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. +optional
    periodSeconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Probe' with the minimum fields required to make a request.
newProbe ::
  Probe
newProbe = Probe {exec = Core.Nothing, periodSeconds = Core.Nothing}

instance Core.FromJSON Probe where
  parseJSON =
    Core.withObject
      "Probe"
      ( \o ->
          Probe
            Core.<$> (o Core..:? "exec")
            Core.<*> (o Core..:? "periodSeconds")
      )

instance Core.ToJSON Probe where
  toJSON Probe {..} =
    Core.object
      ( Core.catMaybes
          [ ("exec" Core..=) Core.<$> exec,
            ("periodSeconds" Core..=) Core.<$> periodSeconds
          ]
      )

-- | PropertySpec holds information about a property in an object.
--
-- /See:/ 'newPropertySpec' smart constructor.
newtype PropertySpec = PropertySpec
  { -- | A type for the object.
    type' :: (Core.Maybe PropertySpec_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertySpec' with the minimum fields required to make a request.
newPropertySpec ::
  PropertySpec
newPropertySpec = PropertySpec {type' = Core.Nothing}

instance Core.FromJSON PropertySpec where
  parseJSON =
    Core.withObject
      "PropertySpec"
      (\o -> PropertySpec Core.<$> (o Core..:? "type"))

instance Core.ToJSON PropertySpec where
  toJSON PropertySpec {..} =
    Core.object (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | Provenance configuration.
--
-- /See:/ 'newProvenance' smart constructor.
data Provenance = Provenance
  { -- | Optional. Provenance push mode.
    enabled :: (Core.Maybe Provenance_Enabled),
    -- | Optional. Provenance region.
    region :: (Core.Maybe Provenance_Region),
    -- | Optional. Where provenance is stored.
    storage :: (Core.Maybe Provenance_Storage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Provenance' with the minimum fields required to make a request.
newProvenance ::
  Provenance
newProvenance =
  Provenance
    { enabled = Core.Nothing,
      region = Core.Nothing,
      storage = Core.Nothing
    }

instance Core.FromJSON Provenance where
  parseJSON =
    Core.withObject
      "Provenance"
      ( \o ->
          Provenance
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "storage")
      )

instance Core.ToJSON Provenance where
  toJSON Provenance {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("region" Core..=) Core.<$> region,
            ("storage" Core..=) Core.<$> storage
          ]
      )

-- | A repository associated to a parent connection.
--
-- /See:/ 'newRepository' smart constructor.
data Repository = Repository
  { -- | Optional. Allows clients to store small amounts of arbitrary data.
    annotations :: (Core.Maybe Repository_Annotations),
    -- | Output only. Server assigned timestamp for when the connection was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Immutable. Resource name of the repository, in the format @projects\/*\/locations\/*\/connections\/*\/repositories\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Required. Git Clone HTTPS URI.
    remoteUri :: (Core.Maybe Core.Text),
    -- | Output only. Server assigned timestamp for when the connection was updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. External ID of the webhook created for the repository.
    webhookId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Repository' with the minimum fields required to make a request.
newRepository ::
  Repository
newRepository =
  Repository
    { annotations = Core.Nothing,
      createTime = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      remoteUri = Core.Nothing,
      updateTime = Core.Nothing,
      webhookId = Core.Nothing
    }

instance Core.FromJSON Repository where
  parseJSON =
    Core.withObject
      "Repository"
      ( \o ->
          Repository
            Core.<$> (o Core..:? "annotations")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "remoteUri")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "webhookId")
      )

instance Core.ToJSON Repository where
  toJSON Repository {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotations" Core..=) Core.<$> annotations,
            ("createTime" Core..=) Core.<$> createTime,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("remoteUri" Core..=) Core.<$> remoteUri,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("webhookId" Core..=) Core.<$> webhookId
          ]
      )

-- | Optional. Allows clients to store small amounts of arbitrary data.
--
-- /See:/ 'newRepository_Annotations' smart constructor.
newtype Repository_Annotations = Repository_Annotations
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Repository_Annotations' with the minimum fields required to make a request.
newRepository_Annotations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Repository_Annotations
newRepository_Annotations additional =
  Repository_Annotations {additional = additional}

instance Core.FromJSON Repository_Annotations where
  parseJSON =
    Core.withObject
      "Repository_Annotations"
      (\o -> Repository_Annotations Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Repository_Annotations where
  toJSON Repository_Annotations {..} = Core.toJSON additional

-- | ResultValue holds different types of data for a single result.
--
-- /See:/ 'newResultValue' smart constructor.
data ResultValue = ResultValue
  { -- | Value of the result if type is array.
    arrayVal :: (Core.Maybe [Core.Text]),
    -- | Value of the result if type is object.
    objectVal :: (Core.Maybe ResultValue_ObjectVal),
    -- | Value of the result if type is string.
    stringVal :: (Core.Maybe Core.Text),
    -- | Output only. The type of data that the result holds.
    type' :: (Core.Maybe ResultValue_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultValue' with the minimum fields required to make a request.
newResultValue ::
  ResultValue
newResultValue =
  ResultValue
    { arrayVal = Core.Nothing,
      objectVal = Core.Nothing,
      stringVal = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ResultValue where
  parseJSON =
    Core.withObject
      "ResultValue"
      ( \o ->
          ResultValue
            Core.<$> (o Core..:? "arrayVal")
            Core.<*> (o Core..:? "objectVal")
            Core.<*> (o Core..:? "stringVal")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ResultValue where
  toJSON ResultValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayVal" Core..=) Core.<$> arrayVal,
            ("objectVal" Core..=) Core.<$> objectVal,
            ("stringVal" Core..=) Core.<$> stringVal,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Value of the result if type is object.
--
-- /See:/ 'newResultValue_ObjectVal' smart constructor.
newtype ResultValue_ObjectVal = ResultValue_ObjectVal
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResultValue_ObjectVal' with the minimum fields required to make a request.
newResultValue_ObjectVal ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  ResultValue_ObjectVal
newResultValue_ObjectVal additional =
  ResultValue_ObjectVal {additional = additional}

instance Core.FromJSON ResultValue_ObjectVal where
  parseJSON =
    Core.withObject
      "ResultValue_ObjectVal"
      (\o -> ResultValue_ObjectVal Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON ResultValue_ObjectVal where
  toJSON ResultValue_ObjectVal {..} = Core.toJSON additional

-- | Represents the custom metadata of the RunWorkflow long-running operation.
--
-- /See:/ 'newRunWorkflowCustomOperationMetadata' smart constructor.
data RunWorkflowCustomOperationMetadata = RunWorkflowCustomOperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. ID of the pipeline run created by RunWorkflow.
    pipelineRunId :: (Core.Maybe Core.Text),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    requestedCancellation :: (Core.Maybe Core.Bool),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunWorkflowCustomOperationMetadata' with the minimum fields required to make a request.
newRunWorkflowCustomOperationMetadata ::
  RunWorkflowCustomOperationMetadata
newRunWorkflowCustomOperationMetadata =
  RunWorkflowCustomOperationMetadata
    { apiVersion = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      pipelineRunId = Core.Nothing,
      requestedCancellation = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON RunWorkflowCustomOperationMetadata where
  parseJSON =
    Core.withObject
      "RunWorkflowCustomOperationMetadata"
      ( \o ->
          RunWorkflowCustomOperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "pipelineRunId")
            Core.<*> (o Core..:? "requestedCancellation")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON RunWorkflowCustomOperationMetadata where
  toJSON RunWorkflowCustomOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("pipelineRunId" Core..=) Core.<$> pipelineRunId,
            ("requestedCancellation" Core..=) Core.<$> requestedCancellation,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | Secret Volume Source.
--
-- /See:/ 'newSecretVolumeSource' smart constructor.
data SecretVolumeSource = SecretVolumeSource
  { -- | Name of the secret referenced by the WorkspaceBinding.
    secretName :: (Core.Maybe Core.Text),
    -- | Optional. Resource name of the SecretVersion. In format: projects\//\/secrets\//\/versions\/*
    secretVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretVolumeSource' with the minimum fields required to make a request.
newSecretVolumeSource ::
  SecretVolumeSource
newSecretVolumeSource =
  SecretVolumeSource
    { secretName = Core.Nothing,
      secretVersion = Core.Nothing
    }

instance Core.FromJSON SecretVolumeSource where
  parseJSON =
    Core.withObject
      "SecretVolumeSource"
      ( \o ->
          SecretVolumeSource
            Core.<$> (o Core..:? "secretName")
            Core.<*> (o Core..:? "secretVersion")
      )

instance Core.ToJSON SecretVolumeSource where
  toJSON SecretVolumeSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("secretName" Core..=) Core.<$> secretName,
            ("secretVersion" Core..=) Core.<$> secretVersion
          ]
      )

-- | Security configuration.
--
-- /See:/ 'newSecurity' smart constructor.
data Security = Security
  { -- | Optional. Privilege mode.
    privilegeMode :: (Core.Maybe Security_PrivilegeMode),
    -- | IAM service account whose credentials will be used at runtime.
    serviceAccount :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Security' with the minimum fields required to make a request.
newSecurity ::
  Security
newSecurity =
  Security
    { privilegeMode = Core.Nothing,
      serviceAccount = Core.Nothing
    }

instance Core.FromJSON Security where
  parseJSON =
    Core.withObject
      "Security"
      ( \o ->
          Security
            Core.<$> (o Core..:? "privilegeMode")
            Core.<*> (o Core..:? "serviceAccount")
      )

instance Core.ToJSON Security where
  toJSON Security {..} =
    Core.object
      ( Core.catMaybes
          [ ("privilegeMode" Core..=) Core.<$> privilegeMode,
            ("serviceAccount" Core..=) Core.<$> serviceAccount
          ]
      )

-- | Security options the container should be run with.
--
-- /See:/ 'newSecurityContext' smart constructor.
data SecurityContext = SecurityContext
  { -- | Optional. AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no/new/privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP/SYS/ADMIN Note that this field cannot be set when spec.os.name is windows. +optional
    allowPrivilegeEscalation :: (Core.Maybe Core.Bool),
    -- | Optional. Adds and removes POSIX capabilities from running containers.
    capabilities :: (Core.Maybe Capabilities),
    -- | Run container in privileged mode.
    privileged :: (Core.Maybe Core.Bool),
    -- | Optional. The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows. +optional
    runAsGroup :: (Core.Maybe Core.Int64),
    -- | Optional. Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. +optional
    runAsNonRoot :: (Core.Maybe Core.Bool),
    -- | Optional. The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows. +optional
    runAsUser :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityContext' with the minimum fields required to make a request.
newSecurityContext ::
  SecurityContext
newSecurityContext =
  SecurityContext
    { allowPrivilegeEscalation = Core.Nothing,
      capabilities = Core.Nothing,
      privileged = Core.Nothing,
      runAsGroup = Core.Nothing,
      runAsNonRoot = Core.Nothing,
      runAsUser = Core.Nothing
    }

instance Core.FromJSON SecurityContext where
  parseJSON =
    Core.withObject
      "SecurityContext"
      ( \o ->
          SecurityContext
            Core.<$> (o Core..:? "allowPrivilegeEscalation")
            Core.<*> (o Core..:? "capabilities")
            Core.<*> (o Core..:? "privileged")
            Core.<*> (o Core..:? "runAsGroup" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "runAsNonRoot")
            Core.<*> (o Core..:? "runAsUser" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON SecurityContext where
  toJSON SecurityContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowPrivilegeEscalation" Core..=)
              Core.<$> allowPrivilegeEscalation,
            ("capabilities" Core..=) Core.<$> capabilities,
            ("privileged" Core..=) Core.<$> privileged,
            ("runAsGroup" Core..=) Core.. Core.AsText Core.<$> runAsGroup,
            ("runAsNonRoot" Core..=) Core.<$> runAsNonRoot,
            ("runAsUser" Core..=) Core.. Core.AsText Core.<$> runAsUser
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest
    { policy = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Sidecars run alongside the Task\'s step containers.
--
-- /See:/ 'newSidecar' smart constructor.
data Sidecar = Sidecar
  { -- | Arguments to the entrypoint.
    args :: (Core.Maybe [Core.Text]),
    -- | Entrypoint array.
    command :: (Core.Maybe [Core.Text]),
    -- | List of environment variables to set in the container.
    env :: (Core.Maybe [EnvVar]),
    -- | Docker image name.
    image :: (Core.Maybe Core.Text),
    -- | Name of the Sidecar.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Periodic probe of Sidecar service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https:\/\/kubernetes.io\/docs\/concepts\/workloads\/pods\/pod-lifecycle#container-probes +optional
    readinessProbe :: (Core.Maybe Probe),
    -- | The contents of an executable file to execute.
    script :: (Core.Maybe Core.Text),
    -- | Optional. Security options the container should be run with.
    securityContext :: (Core.Maybe SecurityContext),
    -- | Pod volumes to mount into the container\'s filesystem.
    volumeMounts :: (Core.Maybe [VolumeMount]),
    -- | Container\'s working directory.
    workingDir :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sidecar' with the minimum fields required to make a request.
newSidecar ::
  Sidecar
newSidecar =
  Sidecar
    { args = Core.Nothing,
      command = Core.Nothing,
      env = Core.Nothing,
      image = Core.Nothing,
      name = Core.Nothing,
      readinessProbe = Core.Nothing,
      script = Core.Nothing,
      securityContext = Core.Nothing,
      volumeMounts = Core.Nothing,
      workingDir = Core.Nothing
    }

instance Core.FromJSON Sidecar where
  parseJSON =
    Core.withObject
      "Sidecar"
      ( \o ->
          Sidecar
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "command")
            Core.<*> (o Core..:? "env")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "readinessProbe")
            Core.<*> (o Core..:? "script")
            Core.<*> (o Core..:? "securityContext")
            Core.<*> (o Core..:? "volumeMounts")
            Core.<*> (o Core..:? "workingDir")
      )

instance Core.ToJSON Sidecar where
  toJSON Sidecar {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("command" Core..=) Core.<$> command,
            ("env" Core..=) Core.<$> env,
            ("image" Core..=) Core.<$> image,
            ("name" Core..=) Core.<$> name,
            ("readinessProbe" Core..=) Core.<$> readinessProbe,
            ("script" Core..=) Core.<$> script,
            ("securityContext" Core..=) Core.<$> securityContext,
            ("volumeMounts" Core..=) Core.<$> volumeMounts,
            ("workingDir" Core..=) Core.<$> workingDir
          ]
      )

-- | SkippedTask is used to describe the Tasks that were skipped due to their When Expressions evaluating to False.
--
-- /See:/ 'newSkippedTask' smart constructor.
data SkippedTask = SkippedTask
  { -- | Name is the Pipeline Task name
    name :: (Core.Maybe Core.Text),
    -- | Output only. Reason is the cause of the PipelineTask being skipped.
    reason :: (Core.Maybe Core.Text),
    -- | WhenExpressions is the list of checks guarding the execution of the PipelineTask
    whenExpressions :: (Core.Maybe [WhenExpression])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SkippedTask' with the minimum fields required to make a request.
newSkippedTask ::
  SkippedTask
newSkippedTask =
  SkippedTask
    { name = Core.Nothing,
      reason = Core.Nothing,
      whenExpressions = Core.Nothing
    }

instance Core.FromJSON SkippedTask where
  parseJSON =
    Core.withObject
      "SkippedTask"
      ( \o ->
          SkippedTask
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "whenExpressions")
      )

instance Core.ToJSON SkippedTask where
  toJSON SkippedTask {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("reason" Core..=) Core.<$> reason,
            ("whenExpressions" Core..=) Core.<$> whenExpressions
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
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

-- | Step embeds the Container type, which allows it to include fields not provided by Container.
--
-- /See:/ 'newStep' smart constructor.
data Step = Step
  { -- | Arguments to the entrypoint.
    args :: (Core.Maybe [Core.Text]),
    -- | Entrypoint array.
    command :: (Core.Maybe [Core.Text]),
    -- | List of environment variables to set in the container.
    env :: (Core.Maybe [EnvVar]),
    -- | Docker image name.
    image :: (Core.Maybe Core.Text),
    -- | Name of the container specified as a DNS_LABEL.
    name :: (Core.Maybe Core.Text),
    -- | Optional. OnError defines the exiting behavior on error can be set to [ continue | stopAndFail ]
    onError :: (Core.Maybe Step_OnError),
    -- | Optional. Optional parameters passed to the StepAction.
    params :: (Core.Maybe [Param]),
    -- | Optional. Optional reference to a remote StepAction.
    ref :: (Core.Maybe StepRef),
    -- | The contents of an executable file to execute.
    script :: (Core.Maybe Core.Text),
    -- | Optional. SecurityContext defines the security options the Step should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https:\/\/kubernetes.io\/docs\/tasks\/configure-pod-container\/security-context\/ +optional
    securityContext :: (Core.Maybe SecurityContext),
    -- | Time after which the Step times out. Defaults to never.
    timeout :: (Core.Maybe Core.Duration),
    -- | Pod volumes to mount into the container\'s filesystem.
    volumeMounts :: (Core.Maybe [VolumeMount]),
    -- | Container\'s working directory.
    workingDir :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Step' with the minimum fields required to make a request.
newStep ::
  Step
newStep =
  Step
    { args = Core.Nothing,
      command = Core.Nothing,
      env = Core.Nothing,
      image = Core.Nothing,
      name = Core.Nothing,
      onError = Core.Nothing,
      params = Core.Nothing,
      ref = Core.Nothing,
      script = Core.Nothing,
      securityContext = Core.Nothing,
      timeout = Core.Nothing,
      volumeMounts = Core.Nothing,
      workingDir = Core.Nothing
    }

instance Core.FromJSON Step where
  parseJSON =
    Core.withObject
      "Step"
      ( \o ->
          Step
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "command")
            Core.<*> (o Core..:? "env")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onError")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "ref")
            Core.<*> (o Core..:? "script")
            Core.<*> (o Core..:? "securityContext")
            Core.<*> (o Core..:? "timeout")
            Core.<*> (o Core..:? "volumeMounts")
            Core.<*> (o Core..:? "workingDir")
      )

instance Core.ToJSON Step where
  toJSON Step {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("command" Core..=) Core.<$> command,
            ("env" Core..=) Core.<$> env,
            ("image" Core..=) Core.<$> image,
            ("name" Core..=) Core.<$> name,
            ("onError" Core..=) Core.<$> onError,
            ("params" Core..=) Core.<$> params,
            ("ref" Core..=) Core.<$> ref,
            ("script" Core..=) Core.<$> script,
            ("securityContext" Core..=) Core.<$> securityContext,
            ("timeout" Core..=) Core.<$> timeout,
            ("volumeMounts" Core..=) Core.<$> volumeMounts,
            ("workingDir" Core..=) Core.<$> workingDir
          ]
      )

-- | A reference to a remote Step, i.e. a StepAction.
--
-- /See:/ 'newStepRef' smart constructor.
data StepRef = StepRef
  { -- | Optional. Name of the step.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Parameters used to control the resolution.
    params :: (Core.Maybe [Param]),
    -- | Optional. Type of the resolver.
    resolver :: (Core.Maybe StepRef_Resolver)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StepRef' with the minimum fields required to make a request.
newStepRef ::
  StepRef
newStepRef =
  StepRef
    { name = Core.Nothing,
      params = Core.Nothing,
      resolver = Core.Nothing
    }

instance Core.FromJSON StepRef where
  parseJSON =
    Core.withObject
      "StepRef"
      ( \o ->
          StepRef
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "resolver")
      )

instance Core.ToJSON StepRef where
  toJSON StepRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("params" Core..=) Core.<$> params,
            ("resolver" Core..=) Core.<$> resolver
          ]
      )

-- | StepTemplate can be used as the basis for all step containers within the Task, so that the steps inherit settings on the base container.
--
-- /See:/ 'newStepTemplate' smart constructor.
data StepTemplate = StepTemplate
  { -- | Optional. List of environment variables to set in the Step. Cannot be updated.
    env :: (Core.Maybe [EnvVar]),
    -- | Optional. Pod volumes to mount into the container\'s filesystem.
    volumeMounts :: (Core.Maybe [VolumeMount])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StepTemplate' with the minimum fields required to make a request.
newStepTemplate ::
  StepTemplate
newStepTemplate =
  StepTemplate {env = Core.Nothing, volumeMounts = Core.Nothing}

instance Core.FromJSON StepTemplate where
  parseJSON =
    Core.withObject
      "StepTemplate"
      ( \o ->
          StepTemplate
            Core.<$> (o Core..:? "env")
            Core.<*> (o Core..:? "volumeMounts")
      )

instance Core.ToJSON StepTemplate where
  toJSON StepTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("env" Core..=) Core.<$> env,
            ("volumeMounts" Core..=) Core.<$> volumeMounts
          ]
      )

-- | TaskRef can be used to refer to a specific instance of a task. PipelineRef can be used to refer to a specific instance of a Pipeline.
--
-- /See:/ 'newTaskRef' smart constructor.
data TaskRef = TaskRef
  { -- | Optional. Name of the task.
    name :: (Core.Maybe Core.Text),
    -- | Params contains the parameters used to identify the referenced Tekton resource. Example entries might include \"repo\" or \"path\" but the set of params ultimately depends on the chosen resolver.
    params :: (Core.Maybe [Param]),
    -- | Resolver is the name of the resolver that should perform resolution of the referenced Tekton resource.
    resolver :: (Core.Maybe TaskRef_Resolver)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskRef' with the minimum fields required to make a request.
newTaskRef ::
  TaskRef
newTaskRef =
  TaskRef
    { name = Core.Nothing,
      params = Core.Nothing,
      resolver = Core.Nothing
    }

instance Core.FromJSON TaskRef where
  parseJSON =
    Core.withObject
      "TaskRef"
      ( \o ->
          TaskRef
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "resolver")
      )

instance Core.ToJSON TaskRef where
  toJSON TaskRef {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("params" Core..=) Core.<$> params,
            ("resolver" Core..=) Core.<$> resolver
          ]
      )

-- | TaskResult is used to describe the results of a task.
--
-- /See:/ 'newTaskResult' smart constructor.
data TaskResult = TaskResult
  { -- | Description of the result.
    description :: (Core.Maybe Core.Text),
    -- | Name of the result.
    name :: (Core.Maybe Core.Text),
    -- | When type is OBJECT, this map holds the names of fields inside that object along with the type of data each field holds.
    properties :: (Core.Maybe TaskResult_Properties),
    -- | The type of data that the result holds.
    type' :: (Core.Maybe TaskResult_Type),
    -- | Optional. Optionally used to initialize a Task\'s result with a Step\'s result.
    value :: (Core.Maybe ParamValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskResult' with the minimum fields required to make a request.
newTaskResult ::
  TaskResult
newTaskResult =
  TaskResult
    { description = Core.Nothing,
      name = Core.Nothing,
      properties = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON TaskResult where
  parseJSON =
    Core.withObject
      "TaskResult"
      ( \o ->
          TaskResult
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON TaskResult where
  toJSON TaskResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("properties" Core..=) Core.<$> properties,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | When type is OBJECT, this map holds the names of fields inside that object along with the type of data each field holds.
--
-- /See:/ 'newTaskResult_Properties' smart constructor.
newtype TaskResult_Properties = TaskResult_Properties
  { additional :: (Core.HashMap Core.Text PropertySpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskResult_Properties' with the minimum fields required to make a request.
newTaskResult_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text PropertySpec ->
  TaskResult_Properties
newTaskResult_Properties additional =
  TaskResult_Properties {additional = additional}

instance Core.FromJSON TaskResult_Properties where
  parseJSON =
    Core.withObject
      "TaskResult_Properties"
      (\o -> TaskResult_Properties Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON TaskResult_Properties where
  toJSON TaskResult_Properties {..} = Core.toJSON additional

-- | TaskSpec contains the Spec to instantiate a TaskRun.
--
-- /See:/ 'newTaskSpec' smart constructor.
data TaskSpec = TaskSpec
  { -- | Description of the task.
    description :: (Core.Maybe Core.Text),
    -- | Sidecars that run alongside the Task’s step containers that should be added to this Task.
    managedSidecars :: (Core.Maybe [TaskSpec_ManagedSidecarsItem]),
    -- | List of parameters.
    params :: (Core.Maybe [ParamSpec]),
    -- | Values that this Task can output.
    results :: (Core.Maybe [TaskResult]),
    -- | Sidecars that run alongside the Task\'s step containers.
    sidecars :: (Core.Maybe [Sidecar]),
    -- | Optional. StepTemplate can be used as the basis for all step containers within the Task, so that the steps inherit settings on the base container.
    stepTemplate :: (Core.Maybe StepTemplate),
    -- | Steps of the task.
    steps :: (Core.Maybe [Step]),
    -- | A collection of volumes that are available to mount into steps.
    volumes :: (Core.Maybe [VolumeSource]),
    -- | The volumes that this Task requires.
    workspaces :: (Core.Maybe [WorkspaceDeclaration])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskSpec' with the minimum fields required to make a request.
newTaskSpec ::
  TaskSpec
newTaskSpec =
  TaskSpec
    { description = Core.Nothing,
      managedSidecars = Core.Nothing,
      params = Core.Nothing,
      results = Core.Nothing,
      sidecars = Core.Nothing,
      stepTemplate = Core.Nothing,
      steps = Core.Nothing,
      volumes = Core.Nothing,
      workspaces = Core.Nothing
    }

instance Core.FromJSON TaskSpec where
  parseJSON =
    Core.withObject
      "TaskSpec"
      ( \o ->
          TaskSpec
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "managedSidecars")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "results")
            Core.<*> (o Core..:? "sidecars")
            Core.<*> (o Core..:? "stepTemplate")
            Core.<*> (o Core..:? "steps")
            Core.<*> (o Core..:? "volumes")
            Core.<*> (o Core..:? "workspaces")
      )

instance Core.ToJSON TaskSpec where
  toJSON TaskSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("managedSidecars" Core..=) Core.<$> managedSidecars,
            ("params" Core..=) Core.<$> params,
            ("results" Core..=) Core.<$> results,
            ("sidecars" Core..=) Core.<$> sidecars,
            ("stepTemplate" Core..=) Core.<$> stepTemplate,
            ("steps" Core..=) Core.<$> steps,
            ("volumes" Core..=) Core.<$> volumes,
            ("workspaces" Core..=) Core.<$> workspaces
          ]
      )

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
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

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
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

-- | TimeoutFields allows granular specification of pipeline, task, and finally timeouts
--
-- /See:/ 'newTimeoutFields' smart constructor.
data TimeoutFields = TimeoutFields
  { -- | Finally sets the maximum allowed duration of this pipeline\'s finally
    finally :: (Core.Maybe Core.Duration),
    -- | Pipeline sets the maximum allowed duration for execution of the entire pipeline. The sum of individual timeouts for tasks and finally must not exceed this value.
    pipeline :: (Core.Maybe Core.Duration),
    -- | Tasks sets the maximum allowed duration of this pipeline\'s tasks
    tasks :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeoutFields' with the minimum fields required to make a request.
newTimeoutFields ::
  TimeoutFields
newTimeoutFields =
  TimeoutFields
    { finally = Core.Nothing,
      pipeline = Core.Nothing,
      tasks = Core.Nothing
    }

instance Core.FromJSON TimeoutFields where
  parseJSON =
    Core.withObject
      "TimeoutFields"
      ( \o ->
          TimeoutFields
            Core.<$> (o Core..:? "finally")
            Core.<*> (o Core..:? "pipeline")
            Core.<*> (o Core..:? "tasks")
      )

instance Core.ToJSON TimeoutFields where
  toJSON TimeoutFields {..} =
    Core.object
      ( Core.catMaybes
          [ ("finally" Core..=) Core.<$> finally,
            ("pipeline" Core..=) Core.<$> pipeline,
            ("tasks" Core..=) Core.<$> tasks
          ]
      )

-- | Represents a personal access token that authorized the Connection, and associated metadata.
--
-- /See:/ 'newUserCredential' smart constructor.
data UserCredential = UserCredential
  { -- | Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: @projects\/*\/secrets\/*\/versions\/*@.
    userTokenSecretVersion :: (Core.Maybe Core.Text),
    -- | Output only. The username associated to this token.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserCredential' with the minimum fields required to make a request.
newUserCredential ::
  UserCredential
newUserCredential =
  UserCredential
    { userTokenSecretVersion = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON UserCredential where
  parseJSON =
    Core.withObject
      "UserCredential"
      ( \o ->
          UserCredential
            Core.<$> (o Core..:? "userTokenSecretVersion")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON UserCredential where
  toJSON UserCredential {..} =
    Core.object
      ( Core.catMaybes
          [ ("userTokenSecretVersion" Core..=)
              Core.<$> userTokenSecretVersion,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | Pod volumes to mount into the container\'s filesystem.
--
-- /See:/ 'newVolumeMount' smart constructor.
data VolumeMount = VolumeMount
  { -- | Path within the container at which the volume should be mounted. Must not contain \':\'.
    mountPath :: (Core.Maybe Core.Text),
    -- | Name of the volume.
    name :: (Core.Maybe Core.Text),
    -- | Mounted read-only if true, read-write otherwise (false or unspecified).
    readOnly :: (Core.Maybe Core.Bool),
    -- | Path within the volume from which the container\'s volume should be mounted. Defaults to \"\" (volume\'s root).
    subPath :: (Core.Maybe Core.Text),
    -- | Expanded path within the volume from which the container\'s volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container\'s environment. Defaults to \"\" (volume\'s root).
    subPathExpr :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VolumeMount' with the minimum fields required to make a request.
newVolumeMount ::
  VolumeMount
newVolumeMount =
  VolumeMount
    { mountPath = Core.Nothing,
      name = Core.Nothing,
      readOnly = Core.Nothing,
      subPath = Core.Nothing,
      subPathExpr = Core.Nothing
    }

instance Core.FromJSON VolumeMount where
  parseJSON =
    Core.withObject
      "VolumeMount"
      ( \o ->
          VolumeMount
            Core.<$> (o Core..:? "mountPath")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "readOnly")
            Core.<*> (o Core..:? "subPath")
            Core.<*> (o Core..:? "subPathExpr")
      )

instance Core.ToJSON VolumeMount where
  toJSON VolumeMount {..} =
    Core.object
      ( Core.catMaybes
          [ ("mountPath" Core..=) Core.<$> mountPath,
            ("name" Core..=) Core.<$> name,
            ("readOnly" Core..=) Core.<$> readOnly,
            ("subPath" Core..=) Core.<$> subPath,
            ("subPathExpr" Core..=) Core.<$> subPathExpr
          ]
      )

-- | Volumes available to mount.
--
-- /See:/ 'newVolumeSource' smart constructor.
data VolumeSource = VolumeSource
  { -- | A temporary directory that shares a pod\'s lifetime.
    emptyDir :: (Core.Maybe EmptyDirVolumeSource),
    -- | Name of the Volume. Must be a DNS_LABEL and unique within the pod. More info: https:\/\/kubernetes.io\/docs\/concepts\/overview\/working-with-objects\/names\/#names
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VolumeSource' with the minimum fields required to make a request.
newVolumeSource ::
  VolumeSource
newVolumeSource =
  VolumeSource {emptyDir = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON VolumeSource where
  parseJSON =
    Core.withObject
      "VolumeSource"
      ( \o ->
          VolumeSource
            Core.<$> (o Core..:? "emptyDir")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON VolumeSource where
  toJSON VolumeSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("emptyDir" Core..=) Core.<$> emptyDir,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Conditions that need to be true for the task to run.
--
-- /See:/ 'newWhenExpression' smart constructor.
data WhenExpression = WhenExpression
  { -- | Operator that represents an Input\'s relationship to the values
    expressionOperator :: (Core.Maybe WhenExpression_ExpressionOperator),
    -- | Input is the string for guard checking which can be a static input or an output from a parent Task.
    input :: (Core.Maybe Core.Text),
    -- | Values is an array of strings, which is compared against the input, for guard checking.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WhenExpression' with the minimum fields required to make a request.
newWhenExpression ::
  WhenExpression
newWhenExpression =
  WhenExpression
    { expressionOperator = Core.Nothing,
      input = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON WhenExpression where
  parseJSON =
    Core.withObject
      "WhenExpression"
      ( \o ->
          WhenExpression
            Core.<$> (o Core..:? "expressionOperator")
            Core.<*> (o Core..:? "input")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON WhenExpression where
  toJSON WhenExpression {..} =
    Core.object
      ( Core.catMaybes
          [ ("expressionOperator" Core..=) Core.<$> expressionOperator,
            ("input" Core..=) Core.<$> input,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Configuration for the worker.
--
-- /See:/ 'newWorker' smart constructor.
newtype Worker = Worker
  { -- | Optional. Machine type of a worker, default is \"e2-standard-2\".
    machineType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Worker' with the minimum fields required to make a request.
newWorker ::
  Worker
newWorker = Worker {machineType = Core.Nothing}

instance Core.FromJSON Worker where
  parseJSON =
    Core.withObject
      "Worker"
      (\o -> Worker Core.<$> (o Core..:? "machineType"))

instance Core.ToJSON Worker where
  toJSON Worker {..} =
    Core.object
      (Core.catMaybes [("machineType" Core..=) Core.<$> machineType])

-- | WorkspaceBinding maps a workspace to a Volume. PipelineRef can be used to refer to a specific instance of a Pipeline.
--
-- /See:/ 'newWorkspaceBinding' smart constructor.
data WorkspaceBinding = WorkspaceBinding
  { -- | Name of the workspace.
    name :: (Core.Maybe Core.Text),
    -- | Secret Volume Source.
    secret :: (Core.Maybe SecretVolumeSource),
    -- | Optional. SubPath is optionally a directory on the volume which should be used for this binding (i.e. the volume will be mounted at this sub directory). +optional
    subPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkspaceBinding' with the minimum fields required to make a request.
newWorkspaceBinding ::
  WorkspaceBinding
newWorkspaceBinding =
  WorkspaceBinding
    { name = Core.Nothing,
      secret = Core.Nothing,
      subPath = Core.Nothing
    }

instance Core.FromJSON WorkspaceBinding where
  parseJSON =
    Core.withObject
      "WorkspaceBinding"
      ( \o ->
          WorkspaceBinding
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "secret")
            Core.<*> (o Core..:? "subPath")
      )

instance Core.ToJSON WorkspaceBinding where
  toJSON WorkspaceBinding {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("secret" Core..=) Core.<$> secret,
            ("subPath" Core..=) Core.<$> subPath
          ]
      )

-- | WorkspaceDeclaration is a declaration of a volume that a Task requires.
--
-- /See:/ 'newWorkspaceDeclaration' smart constructor.
data WorkspaceDeclaration = WorkspaceDeclaration
  { -- | Description is a human readable description of this volume.
    description :: (Core.Maybe Core.Text),
    -- | MountPath overrides the directory that the volume will be made available at.
    mountPath :: (Core.Maybe Core.Text),
    -- | Name is the name by which you can bind the volume at runtime.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Optional marks a Workspace as not being required in TaskRuns. By default this field is false and so declared workspaces are required.
    optional :: (Core.Maybe Core.Bool),
    -- | ReadOnly dictates whether a mounted volume is writable.
    readOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkspaceDeclaration' with the minimum fields required to make a request.
newWorkspaceDeclaration ::
  WorkspaceDeclaration
newWorkspaceDeclaration =
  WorkspaceDeclaration
    { description = Core.Nothing,
      mountPath = Core.Nothing,
      name = Core.Nothing,
      optional = Core.Nothing,
      readOnly = Core.Nothing
    }

instance Core.FromJSON WorkspaceDeclaration where
  parseJSON =
    Core.withObject
      "WorkspaceDeclaration"
      ( \o ->
          WorkspaceDeclaration
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "mountPath")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "optional")
            Core.<*> (o Core..:? "readOnly")
      )

instance Core.ToJSON WorkspaceDeclaration where
  toJSON WorkspaceDeclaration {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("mountPath" Core..=) Core.<$> mountPath,
            ("name" Core..=) Core.<$> name,
            ("optional" Core..=) Core.<$> optional,
            ("readOnly" Core..=) Core.<$> readOnly
          ]
      )

-- | WorkspacePipelineTaskBinding maps workspaces from the PipelineSpec to the workspaces declared in the Task.
--
-- /See:/ 'newWorkspacePipelineTaskBinding' smart constructor.
data WorkspacePipelineTaskBinding = WorkspacePipelineTaskBinding
  { -- | Name of the workspace as declared by the task.
    name :: (Core.Maybe Core.Text),
    -- | Optional. SubPath is optionally a directory on the volume which should be used for this binding (i.e. the volume will be mounted at this sub directory). +optional
    subPath :: (Core.Maybe Core.Text),
    -- | Name of the workspace declared by the pipeline.
    workspace :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkspacePipelineTaskBinding' with the minimum fields required to make a request.
newWorkspacePipelineTaskBinding ::
  WorkspacePipelineTaskBinding
newWorkspacePipelineTaskBinding =
  WorkspacePipelineTaskBinding
    { name = Core.Nothing,
      subPath = Core.Nothing,
      workspace = Core.Nothing
    }

instance Core.FromJSON WorkspacePipelineTaskBinding where
  parseJSON =
    Core.withObject
      "WorkspacePipelineTaskBinding"
      ( \o ->
          WorkspacePipelineTaskBinding
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "subPath")
            Core.<*> (o Core..:? "workspace")
      )

instance Core.ToJSON WorkspacePipelineTaskBinding where
  toJSON WorkspacePipelineTaskBinding {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("subPath" Core..=) Core.<$> subPath,
            ("workspace" Core..=) Core.<$> workspace
          ]
      )
