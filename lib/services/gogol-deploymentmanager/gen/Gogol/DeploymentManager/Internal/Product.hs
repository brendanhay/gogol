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
-- Module      : Gogol.DeploymentManager.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DeploymentManager.Internal.Product
  ( -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * ConfigFile
    ConfigFile (..),
    newConfigFile,

    -- * Deployment
    Deployment (..),
    newDeployment,

    -- * DeploymentLabelEntry
    DeploymentLabelEntry (..),
    newDeploymentLabelEntry,

    -- * DeploymentUpdate
    DeploymentUpdate (..),
    newDeploymentUpdate,

    -- * DeploymentUpdateLabelEntry
    DeploymentUpdateLabelEntry (..),
    newDeploymentUpdateLabelEntry,

    -- * DeploymentsCancelPreviewRequest
    DeploymentsCancelPreviewRequest (..),
    newDeploymentsCancelPreviewRequest,

    -- * DeploymentsListResponse
    DeploymentsListResponse (..),
    newDeploymentsListResponse,

    -- * DeploymentsStopRequest
    DeploymentsStopRequest (..),
    newDeploymentsStopRequest,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GlobalSetPolicyRequest
    GlobalSetPolicyRequest (..),
    newGlobalSetPolicyRequest,

    -- * ImportFile
    ImportFile (..),
    newImportFile,

    -- * Manifest
    Manifest (..),
    newManifest,

    -- * ManifestsListResponse
    ManifestsListResponse (..),
    newManifestsListResponse,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Error
    Operation_Error (..),
    newOperation_Error,

    -- * Operation_Error_ErrorsItem
    Operation_Error_ErrorsItem (..),
    newOperation_Error_ErrorsItem,

    -- * Operation_WarningsItem
    Operation_WarningsItem (..),
    newOperation_WarningsItem,

    -- * Operation_WarningsItem_DataItem
    Operation_WarningsItem_DataItem (..),
    newOperation_WarningsItem_DataItem,

    -- * OperationsListResponse
    OperationsListResponse (..),
    newOperationsListResponse,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Resource
    Resource (..),
    newResource,

    -- * Resource_WarningsItem
    Resource_WarningsItem (..),
    newResource_WarningsItem,

    -- * Resource_WarningsItem_DataItem
    Resource_WarningsItem_DataItem (..),
    newResource_WarningsItem_DataItem,

    -- * ResourceAccessControl
    ResourceAccessControl (..),
    newResourceAccessControl,

    -- * ResourceUpdate
    ResourceUpdate (..),
    newResourceUpdate,

    -- * ResourceUpdate_Error
    ResourceUpdate_Error (..),
    newResourceUpdate_Error,

    -- * ResourceUpdate_Error_ErrorsItem
    ResourceUpdate_Error_ErrorsItem (..),
    newResourceUpdate_Error_ErrorsItem,

    -- * ResourceUpdate_WarningsItem
    ResourceUpdate_WarningsItem (..),
    newResourceUpdate_WarningsItem,

    -- * ResourceUpdate_WarningsItem_DataItem
    ResourceUpdate_WarningsItem_DataItem (..),
    newResourceUpdate_WarningsItem_DataItem,

    -- * ResourcesListResponse
    ResourcesListResponse (..),
    newResourcesListResponse,

    -- * TargetConfiguration
    TargetConfiguration (..),
    newTargetConfiguration,

    -- * TestPermissionsRequest
    TestPermissionsRequest (..),
    newTestPermissionsRequest,

    -- * TestPermissionsResponse
    TestPermissionsResponse (..),
    newTestPermissionsResponse,

    -- * Type
    Type (..),
    newType,

    -- * TypesListResponse
    TypesListResponse (..),
    newTypesListResponse,
  )
where

import Gogol.DeploymentManager.Internal.Sum
import qualified Gogol.Prelude as Core

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
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

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
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
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
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

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
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
    -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus
    -- unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
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

--
-- /See:/ 'newConfigFile' smart constructor.
newtype ConfigFile = ConfigFile
  { -- | The contents of the file.
    content :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigFile' with the minimum fields required to make a request.
newConfigFile ::
  ConfigFile
newConfigFile = ConfigFile {content = Core.Nothing}

instance Core.FromJSON ConfigFile where
  parseJSON =
    Core.withObject
      "ConfigFile"
      (\o -> ConfigFile Core.<$> (o Core..:? "content"))

instance Core.ToJSON ConfigFile where
  toJSON ConfigFile {..} =
    Core.object
      ( Core.catMaybes
          [("content" Core..=) Core.<$> content]
      )

--
-- /See:/ 'newDeployment' smart constructor.
data Deployment = Deployment
  { -- | An optional user-provided description of the deployment.
    description :: (Core.Maybe Core.Text),
    -- | Provides a fingerprint to use in requests to modify a deployment, such as @update()@, @stop()@, and @cancelPreview()@ requests. A fingerprint is a randomly generated value that must be provided with @update()@, @stop()@, and @cancelPreview()@ requests to perform optimistic locking. This ensures optimistic concurrency so that only one request happens at a time. The fingerprint is initially generated by Deployment Manager and changes after every request to modify data. To get the latest fingerprint value, perform a @get()@ request to a deployment.
    fingerprint :: (Core.Maybe Core.Base64),
    -- |
    id :: (Core.Maybe Core.Word64),
    -- | Output only. Creation timestamp in RFC3339 text format.
    insertTime :: (Core.Maybe Core.Text),
    -- | Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@ Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@.
    labels :: (Core.Maybe [DeploymentLabelEntry]),
    -- | Output only. URL of the manifest representing the last manifest that was successfully deployed. If no manifest has been successfully deployed, this field will be absent.
    manifest :: (Core.Maybe Core.Text),
    -- | Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression @[a-z]([-a-z0-9]*[a-z0-9])?@ which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The Operation that most recently ran, or is currently running, on this deployment.
    operation :: (Core.Maybe Operation),
    -- | Output only. Server defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Input Only] The parameters that define your deployment, including the deployment configuration and relevant templates.
    target :: (Core.Maybe TargetConfiguration),
    -- | Output only. If Deployment Manager is currently updating or previewing an update to this deployment, the updated configuration appears here.
    update :: (Core.Maybe DeploymentUpdate),
    -- | Output only. Update timestamp in RFC3339 text format.
    updateTime :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
newDeployment ::
  Deployment
newDeployment =
  Deployment
    { description = Core.Nothing,
      fingerprint = Core.Nothing,
      id = Core.Nothing,
      insertTime = Core.Nothing,
      labels = Core.Nothing,
      manifest = Core.Nothing,
      name = Core.Nothing,
      operation = Core.Nothing,
      selfLink = Core.Nothing,
      target = Core.Nothing,
      update = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Deployment where
  parseJSON =
    Core.withObject
      "Deployment"
      ( \o ->
          Deployment
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "fingerprint")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "manifest")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "update")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Deployment where
  toJSON Deployment {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("fingerprint" Core..=) Core.<$> fingerprint,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("labels" Core..=) Core.<$> labels,
            ("manifest" Core..=) Core.<$> manifest,
            ("name" Core..=) Core.<$> name,
            ("operation" Core..=) Core.<$> operation,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("target" Core..=) Core.<$> target,
            ("update" Core..=) Core.<$> update,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Label object for Deployments
--
-- /See:/ 'newDeploymentLabelEntry' smart constructor.
data DeploymentLabelEntry = DeploymentLabelEntry
  { -- | Key of the label
    key :: (Core.Maybe Core.Text),
    -- | Value of the label
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentLabelEntry' with the minimum fields required to make a request.
newDeploymentLabelEntry ::
  DeploymentLabelEntry
newDeploymentLabelEntry =
  DeploymentLabelEntry {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON DeploymentLabelEntry where
  parseJSON =
    Core.withObject
      "DeploymentLabelEntry"
      ( \o ->
          DeploymentLabelEntry
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON DeploymentLabelEntry where
  toJSON DeploymentLabelEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newDeploymentUpdate' smart constructor.
data DeploymentUpdate = DeploymentUpdate
  { -- | Output only. An optional user-provided description of the deployment after the current update has been applied.
    description :: (Core.Maybe Core.Text),
    -- | Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: @[a-z]([-a-z0-9]*[a-z0-9])?@ Label values must be between 0 and 63 characters long and must conform to the regular expression @([a-z]([-a-z0-9]*[a-z0-9])?)?@.
    labels :: (Core.Maybe [DeploymentUpdateLabelEntry]),
    -- | Output only. URL of the manifest representing the update configuration of this deployment.
    manifest :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentUpdate' with the minimum fields required to make a request.
newDeploymentUpdate ::
  DeploymentUpdate
newDeploymentUpdate =
  DeploymentUpdate
    { description = Core.Nothing,
      labels = Core.Nothing,
      manifest = Core.Nothing
    }

instance Core.FromJSON DeploymentUpdate where
  parseJSON =
    Core.withObject
      "DeploymentUpdate"
      ( \o ->
          DeploymentUpdate
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "manifest")
      )

instance Core.ToJSON DeploymentUpdate where
  toJSON DeploymentUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("labels" Core..=) Core.<$> labels,
            ("manifest" Core..=) Core.<$> manifest
          ]
      )

-- | Label object for DeploymentUpdate
--
-- /See:/ 'newDeploymentUpdateLabelEntry' smart constructor.
data DeploymentUpdateLabelEntry = DeploymentUpdateLabelEntry
  { -- | Key of the label
    key :: (Core.Maybe Core.Text),
    -- | Value of the label
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentUpdateLabelEntry' with the minimum fields required to make a request.
newDeploymentUpdateLabelEntry ::
  DeploymentUpdateLabelEntry
newDeploymentUpdateLabelEntry =
  DeploymentUpdateLabelEntry {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON DeploymentUpdateLabelEntry where
  parseJSON =
    Core.withObject
      "DeploymentUpdateLabelEntry"
      ( \o ->
          DeploymentUpdateLabelEntry
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON DeploymentUpdateLabelEntry where
  toJSON DeploymentUpdateLabelEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newDeploymentsCancelPreviewRequest' smart constructor.
newtype DeploymentsCancelPreviewRequest = DeploymentsCancelPreviewRequest
  { -- | Specifies a fingerprint for @cancelPreview()@ requests. A fingerprint is a randomly generated value that must be provided in @cancelPreview()@ requests to perform optimistic locking. This ensures optimistic concurrency so that the deployment does not have conflicting requests (e.g. if someone attempts to make a new update request while another user attempts to cancel a preview, this would prevent one of the requests). The fingerprint is initially generated by Deployment Manager and changes after every request to modify a deployment. To get the latest fingerprint value, perform a @get()@ request on the deployment.
    fingerprint :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentsCancelPreviewRequest' with the minimum fields required to make a request.
newDeploymentsCancelPreviewRequest ::
  DeploymentsCancelPreviewRequest
newDeploymentsCancelPreviewRequest =
  DeploymentsCancelPreviewRequest {fingerprint = Core.Nothing}

instance
  Core.FromJSON
    DeploymentsCancelPreviewRequest
  where
  parseJSON =
    Core.withObject
      "DeploymentsCancelPreviewRequest"
      ( \o ->
          DeploymentsCancelPreviewRequest
            Core.<$> (o Core..:? "fingerprint")
      )

instance Core.ToJSON DeploymentsCancelPreviewRequest where
  toJSON DeploymentsCancelPreviewRequest {..} =
    Core.object
      ( Core.catMaybes
          [("fingerprint" Core..=) Core.<$> fingerprint]
      )

-- | A response containing a partial list of deployments and a page token used to build the next request if the request has been truncated.
--
-- /See:/ 'newDeploymentsListResponse' smart constructor.
data DeploymentsListResponse = DeploymentsListResponse
  { -- | Output only. The deployments contained in this response.
    deployments :: (Core.Maybe [Deployment]),
    -- | Output only. A token used to continue a truncated list request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentsListResponse' with the minimum fields required to make a request.
newDeploymentsListResponse ::
  DeploymentsListResponse
newDeploymentsListResponse =
  DeploymentsListResponse
    { deployments = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON DeploymentsListResponse where
  parseJSON =
    Core.withObject
      "DeploymentsListResponse"
      ( \o ->
          DeploymentsListResponse
            Core.<$> (o Core..:? "deployments")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON DeploymentsListResponse where
  toJSON DeploymentsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deployments" Core..=) Core.<$> deployments,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newDeploymentsStopRequest' smart constructor.
newtype DeploymentsStopRequest = DeploymentsStopRequest
  { -- | Specifies a fingerprint for @stop()@ requests. A fingerprint is a randomly generated value that must be provided in @stop()@ requests to perform optimistic locking. This ensures optimistic concurrency so that the deployment does not have conflicting requests (e.g. if someone attempts to make a new update request while another user attempts to stop an ongoing update request, this would prevent a collision). The fingerprint is initially generated by Deployment Manager and changes after every request to modify a deployment. To get the latest fingerprint value, perform a @get()@ request on the deployment.
    fingerprint :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentsStopRequest' with the minimum fields required to make a request.
newDeploymentsStopRequest ::
  DeploymentsStopRequest
newDeploymentsStopRequest = DeploymentsStopRequest {fingerprint = Core.Nothing}

instance Core.FromJSON DeploymentsStopRequest where
  parseJSON =
    Core.withObject
      "DeploymentsStopRequest"
      ( \o ->
          DeploymentsStopRequest
            Core.<$> (o Core..:? "fingerprint")
      )

instance Core.ToJSON DeploymentsStopRequest where
  toJSON DeploymentsStopRequest {..} =
    Core.object
      ( Core.catMaybes
          [("fingerprint" Core..=) Core.<$> fingerprint]
      )

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

--
-- /See:/ 'newGlobalSetPolicyRequest' smart constructor.
data GlobalSetPolicyRequest = GlobalSetPolicyRequest
  { -- | Flatten Policy to create a backward compatible wire-format. Deprecated. Use \'policy\' to specify bindings.
    bindings :: (Core.Maybe [Binding]),
    -- | Flatten Policy to create a backward compatible wire-format. Deprecated. Use \'policy\' to specify the etag.
    etag :: (Core.Maybe Core.Base64),
    -- | REQUIRED: The complete policy to be applied to the \'resource\'. The size of the policy is limited to a few 10s of KB. An empty policy is in general a valid policy but certain services (like Projects) might reject them.
    policy :: (Core.Maybe Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GlobalSetPolicyRequest' with the minimum fields required to make a request.
newGlobalSetPolicyRequest ::
  GlobalSetPolicyRequest
newGlobalSetPolicyRequest =
  GlobalSetPolicyRequest
    { bindings = Core.Nothing,
      etag = Core.Nothing,
      policy = Core.Nothing
    }

instance Core.FromJSON GlobalSetPolicyRequest where
  parseJSON =
    Core.withObject
      "GlobalSetPolicyRequest"
      ( \o ->
          GlobalSetPolicyRequest
            Core.<$> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "policy")
      )

instance Core.ToJSON GlobalSetPolicyRequest where
  toJSON GlobalSetPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("policy" Core..=) Core.<$> policy
          ]
      )

--
-- /See:/ 'newImportFile' smart constructor.
data ImportFile = ImportFile
  { -- | The contents of the file.
    content :: (Core.Maybe Core.Text),
    -- | The name of the file.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportFile' with the minimum fields required to make a request.
newImportFile ::
  ImportFile
newImportFile = ImportFile {content = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ImportFile where
  parseJSON =
    Core.withObject
      "ImportFile"
      ( \o ->
          ImportFile
            Core.<$> (o Core..:? "content") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ImportFile where
  toJSON ImportFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newManifest' smart constructor.
data Manifest = Manifest
  { -- | Output only. The YAML configuration for this manifest.
    config :: (Core.Maybe ConfigFile),
    -- | Output only. The fully-expanded configuration file, including any templates and references.
    expandedConfig :: (Core.Maybe Core.Text),
    -- |
    id :: (Core.Maybe Core.Word64),
    -- | Output only. The imported files for this manifest.
    imports :: (Core.Maybe [ImportFile]),
    -- | Output only. Creation timestamp in RFC3339 text format.
    insertTime :: (Core.Maybe Core.Text),
    -- | Output only. The YAML layout for this manifest.
    layout :: (Core.Maybe Core.Text),
    -- | Output only. The computed size of the fully expanded manifest.
    manifestSizeBytes :: (Core.Maybe Core.Int64),
    -- | Output only. The size limit for expanded manifests in the project.
    manifestSizeLimitBytes :: (Core.Maybe Core.Int64),
    -- | Output only. The name of the manifest.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Self link for the manifest.
    selfLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Manifest' with the minimum fields required to make a request.
newManifest ::
  Manifest
newManifest =
  Manifest
    { config = Core.Nothing,
      expandedConfig = Core.Nothing,
      id = Core.Nothing,
      imports = Core.Nothing,
      insertTime = Core.Nothing,
      layout = Core.Nothing,
      manifestSizeBytes = Core.Nothing,
      manifestSizeLimitBytes = Core.Nothing,
      name = Core.Nothing,
      selfLink = Core.Nothing
    }

instance Core.FromJSON Manifest where
  parseJSON =
    Core.withObject
      "Manifest"
      ( \o ->
          Manifest
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "expandedConfig")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "imports")
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "layout")
            Core.<*> ( o Core..:? "manifestSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "manifestSizeLimitBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "selfLink")
      )

instance Core.ToJSON Manifest where
  toJSON Manifest {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("expandedConfig" Core..=) Core.<$> expandedConfig,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("imports" Core..=) Core.<$> imports,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("layout" Core..=) Core.<$> layout,
            ("manifestSizeBytes" Core..=) Core.. Core.AsText
              Core.<$> manifestSizeBytes,
            ("manifestSizeLimitBytes" Core..=) Core.. Core.AsText
              Core.<$> manifestSizeLimitBytes,
            ("name" Core..=) Core.<$> name,
            ("selfLink" Core..=) Core.<$> selfLink
          ]
      )

-- | A response containing a partial list of manifests and a page token used to build the next request if the request has been truncated.
--
-- /See:/ 'newManifestsListResponse' smart constructor.
data ManifestsListResponse = ManifestsListResponse
  { -- | Output only. Manifests contained in this list response.
    manifests :: (Core.Maybe [Manifest]),
    -- | Output only. A token used to continue a truncated list request.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManifestsListResponse' with the minimum fields required to make a request.
newManifestsListResponse ::
  ManifestsListResponse
newManifestsListResponse =
  ManifestsListResponse {manifests = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ManifestsListResponse where
  parseJSON =
    Core.withObject
      "ManifestsListResponse"
      ( \o ->
          ManifestsListResponse
            Core.<$> (o Core..:? "manifests")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ManifestsListResponse where
  toJSON ManifestsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("manifests" Core..=) Core.<$> manifests,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Represents an Operation resource. Google Compute Engine has three Operation resources: * </compute/docs/reference/rest/%7B$api_version%7D/globalOperations Global> * </compute/docs/reference/rest/%7B$api_version%7D/regionOperations Regional> * </compute/docs/reference/rest/%7B$api_version%7D/zoneOperations Zonal> You can use an operation resource to manage asynchronous API requests. For more information, read Handling API responses. Operations can be global, regional or zonal. - For global operations, use the @globalOperations@ resource. - For regional operations, use the @regionOperations@ resource. - For zonal operations, use the @zonalOperations@ resource. For more information, read Global, Regional, and Zonal Resources.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | [Output Only] The value of @requestId@ if you provided it in the request. Not present otherwise.
    clientOperationId :: (Core.Maybe Core.Text),
    -- | [Deprecated] This field is deprecated.
    creationTimestamp :: (Core.Maybe Core.Text),
    -- | [Output Only] A textual description of the operation, which is set when the operation is created.
    description :: (Core.Maybe Core.Text),
    -- | [Output Only] The time that this operation was completed. This value is in RFC3339 text format.
    endTime :: (Core.Maybe Core.Text),
    -- | [Output Only] If errors are generated during processing of the operation, this field will be populated.
    error :: (Core.Maybe Operation_Error),
    -- | [Output Only] If the operation fails, this field contains the HTTP error message that was returned, such as @NOT FOUND@.
    httpErrorMessage :: (Core.Maybe Core.Text),
    -- | [Output Only] If the operation fails, this field contains the HTTP error status code that was returned. For example, a @404@ means the resource was not found.
    httpErrorStatusCode :: (Core.Maybe Core.Int32),
    -- | [Output Only] The unique identifier for the operation. This identifier is defined by the server.
    id :: (Core.Maybe Core.Word64),
    -- | [Output Only] The time that this operation was requested. This value is in RFC3339 text format.
    insertTime :: (Core.Maybe Core.Text),
    -- | [Output Only] Type of the resource. Always @compute#operation@ for Operation resources.
    kind :: Core.Text,
    -- | [Output Only] Name of the operation.
    name :: (Core.Maybe Core.Text),
    -- | [Output Only] An ID that represents a group of operations, such as when a group of operations results from a @bulkInsert@ API request.
    operationGroupId :: (Core.Maybe Core.Text),
    -- | [Output Only] The type of operation, such as @insert@, @update@, or @delete@, and so on.
    operationType :: (Core.Maybe Core.Text),
    -- | [Output Only] An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses.
    progress :: (Core.Maybe Core.Int32),
    -- | [Output Only] The URL of the region where the operation resides. Only applicable when performing regional operations.
    region :: (Core.Maybe Core.Text),
    -- | [Output Only] Server-defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Output Only] The time that this operation was started by the server. This value is in RFC3339 text format.
    startTime :: (Core.Maybe Core.Text),
    -- | [Output Only] The status of the operation, which can be one of the following: @PENDING@, @RUNNING@, or @DONE@.
    status :: (Core.Maybe Operation_Status),
    -- | [Output Only] An optional textual description of the current status of the operation.
    statusMessage :: (Core.Maybe Core.Text),
    -- | [Output Only] The unique target ID, which identifies a specific incarnation of the target resource.
    targetId :: (Core.Maybe Core.Word64),
    -- | [Output Only] The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from.
    targetLink :: (Core.Maybe Core.Text),
    -- | [Output Only] User who requested the operation, for example: @user\@example.com@.
    user :: (Core.Maybe Core.Text),
    -- | [Output Only] If warning messages are generated during processing of the operation, this field will be populated.
    warnings :: (Core.Maybe [Operation_WarningsItem]),
    -- | [Output Only] The URL of the zone where the operation resides. Only applicable when performing per-zone operations.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { clientOperationId = Core.Nothing,
      creationTimestamp = Core.Nothing,
      description = Core.Nothing,
      endTime = Core.Nothing,
      error = Core.Nothing,
      httpErrorMessage = Core.Nothing,
      httpErrorStatusCode = Core.Nothing,
      id = Core.Nothing,
      insertTime = Core.Nothing,
      kind = "compute#operation",
      name = Core.Nothing,
      operationGroupId = Core.Nothing,
      operationType = Core.Nothing,
      progress = Core.Nothing,
      region = Core.Nothing,
      selfLink = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      statusMessage = Core.Nothing,
      targetId = Core.Nothing,
      targetLink = Core.Nothing,
      user = Core.Nothing,
      warnings = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "clientOperationId")
            Core.<*> (o Core..:? "creationTimestamp")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "httpErrorMessage")
            Core.<*> (o Core..:? "httpErrorStatusCode")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "kind" Core..!= "compute#operation")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operationGroupId")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> ( o Core..:? "targetId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "targetLink")
            Core.<*> (o Core..:? "user")
            Core.<*> (o Core..:? "warnings")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientOperationId" Core..=)
              Core.<$> clientOperationId,
            ("creationTimestamp" Core..=)
              Core.<$> creationTimestamp,
            ("description" Core..=) Core.<$> description,
            ("endTime" Core..=) Core.<$> endTime,
            ("error" Core..=) Core.<$> error,
            ("httpErrorMessage" Core..=)
              Core.<$> httpErrorMessage,
            ("httpErrorStatusCode" Core..=)
              Core.<$> httpErrorStatusCode,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("insertTime" Core..=) Core.<$> insertTime,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("operationGroupId" Core..=)
              Core.<$> operationGroupId,
            ("operationType" Core..=) Core.<$> operationType,
            ("progress" Core..=) Core.<$> progress,
            ("region" Core..=) Core.<$> region,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("targetId" Core..=) Core.. Core.AsText
              Core.<$> targetId,
            ("targetLink" Core..=) Core.<$> targetLink,
            ("user" Core..=) Core.<$> user,
            ("warnings" Core..=) Core.<$> warnings,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | [Output Only] If errors are generated during processing of the operation, this field will be populated.
--
-- /See:/ 'newOperation_Error' smart constructor.
newtype Operation_Error = Operation_Error
  { -- | [Output Only] The array of errors encountered while processing this operation.
    errors :: (Core.Maybe [Operation_Error_ErrorsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Error' with the minimum fields required to make a request.
newOperation_Error ::
  Operation_Error
newOperation_Error = Operation_Error {errors = Core.Nothing}

instance Core.FromJSON Operation_Error where
  parseJSON =
    Core.withObject
      "Operation_Error"
      ( \o ->
          Operation_Error Core.<$> (o Core..:? "errors")
      )

instance Core.ToJSON Operation_Error where
  toJSON Operation_Error {..} =
    Core.object
      (Core.catMaybes [("errors" Core..=) Core.<$> errors])

--
-- /See:/ 'newOperation_Error_ErrorsItem' smart constructor.
data Operation_Error_ErrorsItem = Operation_Error_ErrorsItem
  { -- | [Output Only] The error type identifier for this error.
    code :: (Core.Maybe Core.Text),
    -- | [Output Only] Indicates the field in the request that caused the error. This property is optional.
    location :: (Core.Maybe Core.Text),
    -- | [Output Only] An optional, human-readable error message.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Error_ErrorsItem' with the minimum fields required to make a request.
newOperation_Error_ErrorsItem ::
  Operation_Error_ErrorsItem
newOperation_Error_ErrorsItem =
  Operation_Error_ErrorsItem
    { code = Core.Nothing,
      location = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Operation_Error_ErrorsItem where
  parseJSON =
    Core.withObject
      "Operation_Error_ErrorsItem"
      ( \o ->
          Operation_Error_ErrorsItem
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Operation_Error_ErrorsItem where
  toJSON Operation_Error_ErrorsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("location" Core..=) Core.<$> location,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newOperation_WarningsItem' smart constructor.
data Operation_WarningsItem = Operation_WarningsItem
  { -- | [Output Only] A warning code, if applicable. For example, Compute Engine returns NO/RESULTS/ON_PAGE if there are no results in the response.
    code :: (Core.Maybe Operation_WarningsItem_Code),
    -- | [Output Only] Metadata about this warning in key: value format. For example: \"data\": [ { \"key\": \"scope\", \"value\": \"zones\/us-east1-d\" }
    data' :: (Core.Maybe [Operation_WarningsItem_DataItem]),
    -- | [Output Only] A human-readable description of the warning code.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_WarningsItem' with the minimum fields required to make a request.
newOperation_WarningsItem ::
  Operation_WarningsItem
newOperation_WarningsItem =
  Operation_WarningsItem
    { code = Core.Nothing,
      data' = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Operation_WarningsItem where
  parseJSON =
    Core.withObject
      "Operation_WarningsItem"
      ( \o ->
          Operation_WarningsItem
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Operation_WarningsItem where
  toJSON Operation_WarningsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("data" Core..=) Core.<$> data',
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newOperation_WarningsItem_DataItem' smart constructor.
data Operation_WarningsItem_DataItem = Operation_WarningsItem_DataItem
  { -- | [Output Only] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
    key :: (Core.Maybe Core.Text),
    -- | [Output Only] A warning data value corresponding to the key.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_WarningsItem_DataItem' with the minimum fields required to make a request.
newOperation_WarningsItem_DataItem ::
  Operation_WarningsItem_DataItem
newOperation_WarningsItem_DataItem =
  Operation_WarningsItem_DataItem {key = Core.Nothing, value = Core.Nothing}

instance
  Core.FromJSON
    Operation_WarningsItem_DataItem
  where
  parseJSON =
    Core.withObject
      "Operation_WarningsItem_DataItem"
      ( \o ->
          Operation_WarningsItem_DataItem
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Operation_WarningsItem_DataItem where
  toJSON Operation_WarningsItem_DataItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A response containing a partial list of operations and a page token used to build the next request if the request has been truncated.
--
-- /See:/ 'newOperationsListResponse' smart constructor.
data OperationsListResponse = OperationsListResponse
  { -- | Output only. A token used to continue a truncated list request.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. Operations contained in this list response.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationsListResponse' with the minimum fields required to make a request.
newOperationsListResponse ::
  OperationsListResponse
newOperationsListResponse =
  OperationsListResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON OperationsListResponse where
  parseJSON =
    Core.withObject
      "OperationsListResponse"
      ( \o ->
          OperationsListResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON OperationsListResponse where
  toJSON OperationsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
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

--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource
  { -- | The Access Control Policy set on this resource.
    accessControl :: (Core.Maybe ResourceAccessControl),
    -- | Output only. The evaluated properties of the resource with references expanded. Returned as serialized YAML.
    finalProperties :: (Core.Maybe Core.Text),
    -- |
    id :: (Core.Maybe Core.Word64),
    -- | Output only. Creation timestamp in RFC3339 text format.
    insertTime :: (Core.Maybe Core.Text),
    -- | Output only. URL of the manifest representing the current configuration of this resource.
    manifest :: (Core.Maybe Core.Text),
    -- | Output only. The name of the resource as it appears in the YAML config.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The current properties of the resource before any references have been filled in. Returned as serialized YAML.
    properties :: (Core.Maybe Core.Text),
    -- | Output only. The type of the resource, for example @compute.v1.instance@, or @cloudfunctions.v1beta1.function@.
    type' :: (Core.Maybe Core.Text),
    -- | Output only. If Deployment Manager is currently updating or previewing an update to this resource, the updated configuration appears here.
    update :: (Core.Maybe ResourceUpdate),
    -- | Output only. Update timestamp in RFC3339 text format.
    updateTime :: (Core.Maybe Core.Text),
    -- | Output only. The URL of the actual resource.
    url :: (Core.Maybe Core.Text),
    -- | Output only. If warning messages are generated during processing of this resource, this field will be populated.
    warnings :: (Core.Maybe [Resource_WarningsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
newResource ::
  Resource
newResource =
  Resource
    { accessControl = Core.Nothing,
      finalProperties = Core.Nothing,
      id = Core.Nothing,
      insertTime = Core.Nothing,
      manifest = Core.Nothing,
      name = Core.Nothing,
      properties = Core.Nothing,
      type' = Core.Nothing,
      update = Core.Nothing,
      updateTime = Core.Nothing,
      url = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject
      "Resource"
      ( \o ->
          Resource
            Core.<$> (o Core..:? "accessControl")
            Core.<*> (o Core..:? "finalProperties")
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "manifest")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "update")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON Resource where
  toJSON Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessControl" Core..=) Core.<$> accessControl,
            ("finalProperties" Core..=) Core.<$> finalProperties,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("manifest" Core..=) Core.<$> manifest,
            ("name" Core..=) Core.<$> name,
            ("properties" Core..=) Core.<$> properties,
            ("type" Core..=) Core.<$> type',
            ("update" Core..=) Core.<$> update,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("url" Core..=) Core.<$> url,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

--
-- /See:/ 'newResource_WarningsItem' smart constructor.
data Resource_WarningsItem = Resource_WarningsItem
  { -- | [Output Only] A warning code, if applicable. For example, Compute Engine returns NO/RESULTS/ON_PAGE if there are no results in the response.
    code :: (Core.Maybe Resource_WarningsItem_Code),
    -- | [Output Only] Metadata about this warning in key: value format. For example: \"data\": [ { \"key\": \"scope\", \"value\": \"zones\/us-east1-d\" }
    data' :: (Core.Maybe [Resource_WarningsItem_DataItem]),
    -- | [Output Only] A human-readable description of the warning code.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource_WarningsItem' with the minimum fields required to make a request.
newResource_WarningsItem ::
  Resource_WarningsItem
newResource_WarningsItem =
  Resource_WarningsItem
    { code = Core.Nothing,
      data' = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Resource_WarningsItem where
  parseJSON =
    Core.withObject
      "Resource_WarningsItem"
      ( \o ->
          Resource_WarningsItem
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Resource_WarningsItem where
  toJSON Resource_WarningsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("data" Core..=) Core.<$> data',
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newResource_WarningsItem_DataItem' smart constructor.
data Resource_WarningsItem_DataItem = Resource_WarningsItem_DataItem
  { -- | [Output Only] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
    key :: (Core.Maybe Core.Text),
    -- | [Output Only] A warning data value corresponding to the key.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource_WarningsItem_DataItem' with the minimum fields required to make a request.
newResource_WarningsItem_DataItem ::
  Resource_WarningsItem_DataItem
newResource_WarningsItem_DataItem =
  Resource_WarningsItem_DataItem {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Resource_WarningsItem_DataItem where
  parseJSON =
    Core.withObject
      "Resource_WarningsItem_DataItem"
      ( \o ->
          Resource_WarningsItem_DataItem
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Resource_WarningsItem_DataItem where
  toJSON Resource_WarningsItem_DataItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The access controls set on the resource.
--
-- /See:/ 'newResourceAccessControl' smart constructor.
newtype ResourceAccessControl = ResourceAccessControl
  { -- | The GCP IAM Policy to set on the resource.
    gcpIamPolicy :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceAccessControl' with the minimum fields required to make a request.
newResourceAccessControl ::
  ResourceAccessControl
newResourceAccessControl = ResourceAccessControl {gcpIamPolicy = Core.Nothing}

instance Core.FromJSON ResourceAccessControl where
  parseJSON =
    Core.withObject
      "ResourceAccessControl"
      ( \o ->
          ResourceAccessControl
            Core.<$> (o Core..:? "gcpIamPolicy")
      )

instance Core.ToJSON ResourceAccessControl where
  toJSON ResourceAccessControl {..} =
    Core.object
      ( Core.catMaybes
          [("gcpIamPolicy" Core..=) Core.<$> gcpIamPolicy]
      )

--
-- /See:/ 'newResourceUpdate' smart constructor.
data ResourceUpdate = ResourceUpdate
  { -- | The Access Control Policy to set on this resource after updating the resource itself.
    accessControl :: (Core.Maybe ResourceAccessControl),
    -- | Output only. If errors are generated during update of the resource, this field will be populated.
    error :: (Core.Maybe ResourceUpdate_Error),
    -- | Output only. The expanded properties of the resource with reference values expanded. Returned as serialized YAML.
    finalProperties :: (Core.Maybe Core.Text),
    -- | Output only. The intent of the resource: @PREVIEW@, @UPDATE@, or @CANCEL@.
    intent :: (Core.Maybe ResourceUpdate_Intent),
    -- | Output only. URL of the manifest representing the update configuration of this resource.
    manifest :: (Core.Maybe Core.Text),
    -- | Output only. The set of updated properties for this resource, before references are expanded. Returned as serialized YAML.
    properties :: (Core.Maybe Core.Text),
    -- | Output only. The state of the resource.
    state :: (Core.Maybe ResourceUpdate_State),
    -- | Output only. If warning messages are generated during processing of this resource, this field will be populated.
    warnings :: (Core.Maybe [ResourceUpdate_WarningsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUpdate' with the minimum fields required to make a request.
newResourceUpdate ::
  ResourceUpdate
newResourceUpdate =
  ResourceUpdate
    { accessControl = Core.Nothing,
      error = Core.Nothing,
      finalProperties = Core.Nothing,
      intent = Core.Nothing,
      manifest = Core.Nothing,
      properties = Core.Nothing,
      state = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON ResourceUpdate where
  parseJSON =
    Core.withObject
      "ResourceUpdate"
      ( \o ->
          ResourceUpdate
            Core.<$> (o Core..:? "accessControl")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "finalProperties")
            Core.<*> (o Core..:? "intent")
            Core.<*> (o Core..:? "manifest")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON ResourceUpdate where
  toJSON ResourceUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessControl" Core..=) Core.<$> accessControl,
            ("error" Core..=) Core.<$> error,
            ("finalProperties" Core..=) Core.<$> finalProperties,
            ("intent" Core..=) Core.<$> intent,
            ("manifest" Core..=) Core.<$> manifest,
            ("properties" Core..=) Core.<$> properties,
            ("state" Core..=) Core.<$> state,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Output only. If errors are generated during update of the resource, this field will be populated.
--
-- /See:/ 'newResourceUpdate_Error' smart constructor.
newtype ResourceUpdate_Error = ResourceUpdate_Error
  { -- | [Output Only] The array of errors encountered while processing this operation.
    errors :: (Core.Maybe [ResourceUpdate_Error_ErrorsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUpdate_Error' with the minimum fields required to make a request.
newResourceUpdate_Error ::
  ResourceUpdate_Error
newResourceUpdate_Error = ResourceUpdate_Error {errors = Core.Nothing}

instance Core.FromJSON ResourceUpdate_Error where
  parseJSON =
    Core.withObject
      "ResourceUpdate_Error"
      ( \o ->
          ResourceUpdate_Error Core.<$> (o Core..:? "errors")
      )

instance Core.ToJSON ResourceUpdate_Error where
  toJSON ResourceUpdate_Error {..} =
    Core.object
      (Core.catMaybes [("errors" Core..=) Core.<$> errors])

--
-- /See:/ 'newResourceUpdate_Error_ErrorsItem' smart constructor.
data ResourceUpdate_Error_ErrorsItem = ResourceUpdate_Error_ErrorsItem
  { -- | [Output Only] The error type identifier for this error.
    code :: (Core.Maybe Core.Text),
    -- | [Output Only] Indicates the field in the request that caused the error. This property is optional.
    location :: (Core.Maybe Core.Text),
    -- | [Output Only] An optional, human-readable error message.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUpdate_Error_ErrorsItem' with the minimum fields required to make a request.
newResourceUpdate_Error_ErrorsItem ::
  ResourceUpdate_Error_ErrorsItem
newResourceUpdate_Error_ErrorsItem =
  ResourceUpdate_Error_ErrorsItem
    { code = Core.Nothing,
      location = Core.Nothing,
      message = Core.Nothing
    }

instance
  Core.FromJSON
    ResourceUpdate_Error_ErrorsItem
  where
  parseJSON =
    Core.withObject
      "ResourceUpdate_Error_ErrorsItem"
      ( \o ->
          ResourceUpdate_Error_ErrorsItem
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON ResourceUpdate_Error_ErrorsItem where
  toJSON ResourceUpdate_Error_ErrorsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("location" Core..=) Core.<$> location,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newResourceUpdate_WarningsItem' smart constructor.
data ResourceUpdate_WarningsItem = ResourceUpdate_WarningsItem
  { -- | [Output Only] A warning code, if applicable. For example, Compute Engine returns NO/RESULTS/ON_PAGE if there are no results in the response.
    code :: (Core.Maybe ResourceUpdate_WarningsItem_Code),
    -- | [Output Only] Metadata about this warning in key: value format. For example: \"data\": [ { \"key\": \"scope\", \"value\": \"zones\/us-east1-d\" }
    data' :: (Core.Maybe [ResourceUpdate_WarningsItem_DataItem]),
    -- | [Output Only] A human-readable description of the warning code.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUpdate_WarningsItem' with the minimum fields required to make a request.
newResourceUpdate_WarningsItem ::
  ResourceUpdate_WarningsItem
newResourceUpdate_WarningsItem =
  ResourceUpdate_WarningsItem
    { code = Core.Nothing,
      data' = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON ResourceUpdate_WarningsItem where
  parseJSON =
    Core.withObject
      "ResourceUpdate_WarningsItem"
      ( \o ->
          ResourceUpdate_WarningsItem
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON ResourceUpdate_WarningsItem where
  toJSON ResourceUpdate_WarningsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("data" Core..=) Core.<$> data',
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newResourceUpdate_WarningsItem_DataItem' smart constructor.
data ResourceUpdate_WarningsItem_DataItem = ResourceUpdate_WarningsItem_DataItem
  { -- | [Output Only] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
    key :: (Core.Maybe Core.Text),
    -- | [Output Only] A warning data value corresponding to the key.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceUpdate_WarningsItem_DataItem' with the minimum fields required to make a request.
newResourceUpdate_WarningsItem_DataItem ::
  ResourceUpdate_WarningsItem_DataItem
newResourceUpdate_WarningsItem_DataItem =
  ResourceUpdate_WarningsItem_DataItem
    { key = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    ResourceUpdate_WarningsItem_DataItem
  where
  parseJSON =
    Core.withObject
      "ResourceUpdate_WarningsItem_DataItem"
      ( \o ->
          ResourceUpdate_WarningsItem_DataItem
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    ResourceUpdate_WarningsItem_DataItem
  where
  toJSON ResourceUpdate_WarningsItem_DataItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A response containing a partial list of resources and a page token used to build the next request if the request has been truncated.
--
-- /See:/ 'newResourcesListResponse' smart constructor.
data ResourcesListResponse = ResourcesListResponse
  { -- | A token used to continue a truncated list request.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Resources contained in this list response.
    resources :: (Core.Maybe [Resource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourcesListResponse' with the minimum fields required to make a request.
newResourcesListResponse ::
  ResourcesListResponse
newResourcesListResponse =
  ResourcesListResponse {nextPageToken = Core.Nothing, resources = Core.Nothing}

instance Core.FromJSON ResourcesListResponse where
  parseJSON =
    Core.withObject
      "ResourcesListResponse"
      ( \o ->
          ResourcesListResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources")
      )

instance Core.ToJSON ResourcesListResponse where
  toJSON ResourcesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

--
-- /See:/ 'newTargetConfiguration' smart constructor.
data TargetConfiguration = TargetConfiguration
  { -- | The configuration to use for this deployment.
    config :: (Core.Maybe ConfigFile),
    -- | Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
    imports :: (Core.Maybe [ImportFile])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetConfiguration' with the minimum fields required to make a request.
newTargetConfiguration ::
  TargetConfiguration
newTargetConfiguration =
  TargetConfiguration {config = Core.Nothing, imports = Core.Nothing}

instance Core.FromJSON TargetConfiguration where
  parseJSON =
    Core.withObject
      "TargetConfiguration"
      ( \o ->
          TargetConfiguration
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "imports")
      )

instance Core.ToJSON TargetConfiguration where
  toJSON TargetConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("imports" Core..=) Core.<$> imports
          ]
      )

--
-- /See:/ 'newTestPermissionsRequest' smart constructor.
newtype TestPermissionsRequest = TestPermissionsRequest
  { -- | The set of permissions to check for the \'resource\'. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestPermissionsRequest' with the minimum fields required to make a request.
newTestPermissionsRequest ::
  TestPermissionsRequest
newTestPermissionsRequest = TestPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestPermissionsRequest"
      ( \o ->
          TestPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestPermissionsRequest where
  toJSON TestPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

--
-- /See:/ 'newTestPermissionsResponse' smart constructor.
newtype TestPermissionsResponse = TestPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestPermissionsResponse' with the minimum fields required to make a request.
newTestPermissionsResponse ::
  TestPermissionsResponse
newTestPermissionsResponse =
  TestPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestPermissionsResponse"
      ( \o ->
          TestPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestPermissionsResponse where
  toJSON TestPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | A resource type supported by Deployment Manager.
--
-- /See:/ 'newType' smart constructor.
data Type = Type
  { -- |
    id :: (Core.Maybe Core.Word64),
    -- | Output only. Creation timestamp in RFC3339 text format.
    insertTime :: (Core.Maybe Core.Text),
    -- | Name of the type.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The Operation that most recently ran, or is currently running, on this type.
    operation :: (Core.Maybe Operation),
    -- | Output only. Server defined URL for the resource.
    selfLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
newType ::
  Type
newType =
  Type
    { id = Core.Nothing,
      insertTime = Core.Nothing,
      name = Core.Nothing,
      operation = Core.Nothing,
      selfLink = Core.Nothing
    }

instance Core.FromJSON Type where
  parseJSON =
    Core.withObject
      "Type"
      ( \o ->
          Type
            Core.<$> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "insertTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "operation")
            Core.<*> (o Core..:? "selfLink")
      )

instance Core.ToJSON Type where
  toJSON Type {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("insertTime" Core..=) Core.<$> insertTime,
            ("name" Core..=) Core.<$> name,
            ("operation" Core..=) Core.<$> operation,
            ("selfLink" Core..=) Core.<$> selfLink
          ]
      )

-- | A response that returns all Types supported by Deployment Manager
--
-- /See:/ 'newTypesListResponse' smart constructor.
data TypesListResponse = TypesListResponse
  { -- | A token used to continue a truncated list request.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. A list of resource types supported by Deployment Manager.
    types :: (Core.Maybe [Type])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TypesListResponse' with the minimum fields required to make a request.
newTypesListResponse ::
  TypesListResponse
newTypesListResponse =
  TypesListResponse {nextPageToken = Core.Nothing, types = Core.Nothing}

instance Core.FromJSON TypesListResponse where
  parseJSON =
    Core.withObject
      "TypesListResponse"
      ( \o ->
          TypesListResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "types")
      )

instance Core.ToJSON TypesListResponse where
  toJSON TypesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("types" Core..=) Core.<$> types
          ]
      )
