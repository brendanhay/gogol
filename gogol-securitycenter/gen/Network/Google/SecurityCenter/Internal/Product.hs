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
-- Module      : Network.Google.SecurityCenter.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.SecurityCenter.Internal.Product
  ( -- * AssetDiscoveryConfig
    AssetDiscoveryConfig (..),
    newAssetDiscoveryConfig,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Expr
    Expr (..),
    newExpr,

    -- * Finding
    Finding (..),
    newFinding,

    -- * Finding_SourceProperties
    Finding_SourceProperties (..),
    newFinding_SourceProperties,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * GoogleCloudSecuritycenterV1NotificationMessage
    GoogleCloudSecuritycenterV1NotificationMessage (..),
    newGoogleCloudSecuritycenterV1NotificationMessage,

    -- * GoogleCloudSecuritycenterV1Resource
    GoogleCloudSecuritycenterV1Resource (..),
    newGoogleCloudSecuritycenterV1Resource,

    -- * GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse (..),
    newGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse,

    -- * GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse (..),
    newGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse,

    -- * GoogleCloudSecuritycenterV1p1beta1Asset
    GoogleCloudSecuritycenterV1p1beta1Asset (..),
    newGoogleCloudSecuritycenterV1p1beta1Asset,

    -- * GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
    GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties (..),
    newGoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties,

    -- * GoogleCloudSecuritycenterV1p1beta1Finding
    GoogleCloudSecuritycenterV1p1beta1Finding (..),
    newGoogleCloudSecuritycenterV1p1beta1Finding,

    -- * GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
    GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties (..),
    newGoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties,

    -- * GoogleCloudSecuritycenterV1p1beta1IamPolicy
    GoogleCloudSecuritycenterV1p1beta1IamPolicy (..),
    newGoogleCloudSecuritycenterV1p1beta1IamPolicy,

    -- * GoogleCloudSecuritycenterV1p1beta1NotificationMessage
    GoogleCloudSecuritycenterV1p1beta1NotificationMessage (..),
    newGoogleCloudSecuritycenterV1p1beta1NotificationMessage,

    -- * GoogleCloudSecuritycenterV1p1beta1Resource
    GoogleCloudSecuritycenterV1p1beta1Resource (..),
    newGoogleCloudSecuritycenterV1p1beta1Resource,

    -- * GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse (..),
    newGoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse,

    -- * GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
    GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties (..),
    newGoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties,

    -- * GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks (..),
    newGoogleCloudSecuritycenterV1p1beta1SecurityMarks,

    -- * GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks (..),
    newGoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks,

    -- * GoogleCloudSecuritycenterV1p1beta1TemporalAsset
    GoogleCloudSecuritycenterV1p1beta1TemporalAsset (..),
    newGoogleCloudSecuritycenterV1p1beta1TemporalAsset,

    -- * GroupAssetsRequest
    GroupAssetsRequest (..),
    newGroupAssetsRequest,

    -- * GroupAssetsResponse
    GroupAssetsResponse (..),
    newGroupAssetsResponse,

    -- * GroupFindingsRequest
    GroupFindingsRequest (..),
    newGroupFindingsRequest,

    -- * GroupFindingsResponse
    GroupFindingsResponse (..),
    newGroupFindingsResponse,

    -- * GroupResult
    GroupResult (..),
    newGroupResult,

    -- * GroupResult_Properties
    GroupResult_Properties (..),
    newGroupResult_Properties,

    -- * ListAssetsResponse
    ListAssetsResponse (..),
    newListAssetsResponse,

    -- * ListAssetsResult
    ListAssetsResult (..),
    newListAssetsResult,

    -- * ListFindingsResponse
    ListFindingsResponse (..),
    newListFindingsResponse,

    -- * ListFindingsResult
    ListFindingsResult (..),
    newListFindingsResult,

    -- * ListNotificationConfigsResponse
    ListNotificationConfigsResponse (..),
    newListNotificationConfigsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListSourcesResponse
    ListSourcesResponse (..),
    newListSourcesResponse,

    -- * NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OrganizationSettings
    OrganizationSettings (..),
    newOrganizationSettings,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Resource
    Resource (..),
    newResource,

    -- * RunAssetDiscoveryRequest
    RunAssetDiscoveryRequest (..),
    newRunAssetDiscoveryRequest,

    -- * SecurityMarks
    SecurityMarks (..),
    newSecurityMarks,

    -- * SecurityMarks_Marks
    SecurityMarks_Marks (..),
    newSecurityMarks_Marks,

    -- * SetFindingStateRequest
    SetFindingStateRequest (..),
    newSetFindingStateRequest,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Source
    Source (..),
    newSource,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StreamingConfig
    StreamingConfig (..),
    newStreamingConfig,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SecurityCenter.Internal.Sum

-- | The configuration used for Asset Discovery runs.
--
-- /See:/ 'newAssetDiscoveryConfig' smart constructor.
data AssetDiscoveryConfig = AssetDiscoveryConfig
  { -- | The mode to use for filtering asset discovery.
    inclusionMode :: (Core.Maybe AssetDiscoveryConfig_InclusionMode),
    -- | The project ids to use for filtering asset discovery.
    projectIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AssetDiscoveryConfig' with the minimum fields required to make a request.
newAssetDiscoveryConfig ::
  AssetDiscoveryConfig
newAssetDiscoveryConfig =
  AssetDiscoveryConfig {inclusionMode = Core.Nothing, projectIds = Core.Nothing}

instance Core.FromJSON AssetDiscoveryConfig where
  parseJSON =
    Core.withObject
      "AssetDiscoveryConfig"
      ( \o ->
          AssetDiscoveryConfig
            Core.<$> (o Core..:? "inclusionMode")
            Core.<*> (o Core..:? "projectIds" Core..!= Core.mempty)
      )

instance Core.ToJSON AssetDiscoveryConfig where
  toJSON AssetDiscoveryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("inclusionMode" Core..=) Core.<$> inclusionMode,
            ("projectIds" Core..=) Core.<$> projectIds
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts jose\@example.com from DATA/READ logging, and aliya\@example.com from DATA/WRITE logging.
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
            Core.<$> (o Core..:? "auditLogConfigs" Core..!= Core.mempty)
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
            Core.<$> (o Core..:? "exemptedMembers" Core..!= Core.mempty)
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

-- | Associates @members@ with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the members in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the identities requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to @members@. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
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

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
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

-- | Security Command Center finding. A finding is a record of assessment data like security, risk, health, or privacy, that is ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, a cross-site scripting (XSS) vulnerability in an App Engine application is a finding.
--
-- /See:/ 'newFinding' smart constructor.
data Finding = Finding
  { -- | The additional taxonomy group within findings from a given source. This field is immutable after creation time. Example: \"XSS/FLASH/INJECTION\"
    category :: (Core.Maybe Core.Text),
    -- | The time at which the finding was created in Security Command Center.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The time at which the event took place, or when an update to the finding occurred. For example, if the finding represents an open firewall it would capture the time the detector believes the firewall became open. The accuracy is determined by the detector. If the finding were to be resolved afterward, this time would reflect when the finding was resolved.
    eventTime :: (Core.Maybe Core.DateTime'),
    -- | The URI that, if available, points to a web page outside of Security Command Center where additional information about the finding can be found. This field is guaranteed to be either empty or a well formed URL.
    externalUri :: (Core.Maybe Core.Text),
    -- | The relative resource name of this finding. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\"
    name :: (Core.Maybe Core.Text),
    -- | The relative resource name of the source the finding belongs to. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name This field is immutable after creation time. For example: \"organizations\/{organization/id}\/sources\/{source_id}\"
    parent :: (Core.Maybe Core.Text),
    -- | For findings on Google Cloud resources, the full resource name of the Google Cloud resource this finding is for. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name When the finding is for a non-Google Cloud resource, the resourceName can be a customer or partner defined string. This field is immutable after creation time.
    resourceName :: (Core.Maybe Core.Text),
    -- | Output only. User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the finding.
    securityMarks :: (Core.Maybe SecurityMarks),
    -- | Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.
    sourceProperties :: (Core.Maybe Finding_SourceProperties),
    -- | The state of the finding.
    state :: (Core.Maybe Finding_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Finding' with the minimum fields required to make a request.
newFinding ::
  Finding
newFinding =
  Finding
    { category = Core.Nothing,
      createTime = Core.Nothing,
      eventTime = Core.Nothing,
      externalUri = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      resourceName = Core.Nothing,
      securityMarks = Core.Nothing,
      sourceProperties = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON Finding where
  parseJSON =
    Core.withObject
      "Finding"
      ( \o ->
          Finding
            Core.<$> (o Core..:? "category")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "externalUri")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "securityMarks")
            Core.<*> (o Core..:? "sourceProperties")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Finding where
  toJSON Finding {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("createTime" Core..=) Core.<$> createTime,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("externalUri" Core..=) Core.<$> externalUri,
            ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("securityMarks" Core..=) Core.<$> securityMarks,
            ("sourceProperties" Core..=)
              Core.<$> sourceProperties,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.
--
-- /See:/ 'newFinding_SourceProperties' smart constructor.
newtype Finding_SourceProperties = Finding_SourceProperties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Finding_SourceProperties' with the minimum fields required to make a request.
newFinding_SourceProperties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Finding_SourceProperties
newFinding_SourceProperties addtional =
  Finding_SourceProperties {addtional = addtional}

instance Core.FromJSON Finding_SourceProperties where
  parseJSON =
    Core.withObject
      "Finding_SourceProperties"
      ( \o ->
          Finding_SourceProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Finding_SourceProperties where
  toJSON Finding_SourceProperties {..} =
    Core.toJSON addtional

-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
  { -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
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
  { -- | Optional. The policy format version to be returned. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional bindings must specify version 3. Policies without any conditional bindings may specify any valid value or leave the field unset. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
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

-- | Cloud SCC\'s Notification
--
-- /See:/ 'newGoogleCloudSecuritycenterV1NotificationMessage' smart constructor.
data GoogleCloudSecuritycenterV1NotificationMessage = GoogleCloudSecuritycenterV1NotificationMessage
  { -- | If it\'s a Finding based notification config, this field will be populated.
    finding :: (Core.Maybe Finding),
    -- | Name of the notification config that generated current notification.
    notificationConfigName :: (Core.Maybe Core.Text),
    -- | The Cloud resource tied to this notification\'s Finding.
    resource :: (Core.Maybe GoogleCloudSecuritycenterV1Resource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1NotificationMessage' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1NotificationMessage ::
  GoogleCloudSecuritycenterV1NotificationMessage
newGoogleCloudSecuritycenterV1NotificationMessage =
  GoogleCloudSecuritycenterV1NotificationMessage
    { finding = Core.Nothing,
      notificationConfigName = Core.Nothing,
      resource = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1NotificationMessage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1NotificationMessage"
      ( \o ->
          GoogleCloudSecuritycenterV1NotificationMessage
            Core.<$> (o Core..:? "finding")
              Core.<*> (o Core..:? "notificationConfigName")
              Core.<*> (o Core..:? "resource")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1NotificationMessage
  where
  toJSON
    GoogleCloudSecuritycenterV1NotificationMessage {..} =
      Core.object
        ( Core.catMaybes
            [ ("finding" Core..=) Core.<$> finding,
              ("notificationConfigName" Core..=)
                Core.<$> notificationConfigName,
              ("resource" Core..=) Core.<$> resource
            ]
        )

-- | Information related to the Google Cloud resource.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1Resource' smart constructor.
data GoogleCloudSecuritycenterV1Resource = GoogleCloudSecuritycenterV1Resource
  { -- | The full resource name of the resource. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
    name :: (Core.Maybe Core.Text),
    -- | The full resource name of resource\'s parent.
    parent :: (Core.Maybe Core.Text),
    -- | The human readable name of resource\'s parent.
    parentDisplayName :: (Core.Maybe Core.Text),
    -- | The full resource name of project that the resource belongs to.
    project :: (Core.Maybe Core.Text),
    -- | The human readable name of project that the resource belongs to.
    projectDisplayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1Resource' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1Resource ::
  GoogleCloudSecuritycenterV1Resource
newGoogleCloudSecuritycenterV1Resource =
  GoogleCloudSecuritycenterV1Resource
    { name = Core.Nothing,
      parent = Core.Nothing,
      parentDisplayName = Core.Nothing,
      project = Core.Nothing,
      projectDisplayName = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1Resource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1Resource"
      ( \o ->
          GoogleCloudSecuritycenterV1Resource
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "parentDisplayName")
            Core.<*> (o Core..:? "project")
            Core.<*> (o Core..:? "projectDisplayName")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1Resource
  where
  toJSON GoogleCloudSecuritycenterV1Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("parentDisplayName" Core..=)
              Core.<$> parentDisplayName,
            ("project" Core..=) Core.<$> project,
            ("projectDisplayName" Core..=)
              Core.<$> projectDisplayName
          ]
      )

-- | Response of asset discovery run
--
-- /See:/ 'newGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse' smart constructor.
data GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse = GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
  { -- | The duration between asset discovery run start and end
    duration :: (Core.Maybe Core.GDuration),
    -- | The state of an asset discovery run.
    state ::
      ( Core.Maybe
          GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse ::
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
newGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse =
  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
    { duration = Core.Nothing,
      state = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse"
      ( \o ->
          GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
            Core.<$> (o Core..:? "duration")
              Core.<*> (o Core..:? "state")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
  where
  toJSON
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("duration" Core..=) Core.<$> duration,
              ("state" Core..=) Core.<$> state
            ]
        )

-- | Response of asset discovery run
--
-- /See:/ 'newGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse' smart constructor.
data GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse = GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
  { -- | The duration between asset discovery run start and end
    duration :: (Core.Maybe Core.GDuration),
    -- | The state of an asset discovery run.
    state ::
      ( Core.Maybe
          GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse ::
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
newGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse =
  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    { duration = Core.Nothing,
      state = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse"
      ( \o ->
          GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
            Core.<$> (o Core..:? "duration")
              Core.<*> (o Core..:? "state")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
  where
  toJSON
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("duration" Core..=) Core.<$> duration,
              ("state" Core..=) Core.<$> state
            ]
        )

-- | Security Command Center representation of a Google Cloud resource. The Asset is a Security Command Center resource that captures information about a single Google Cloud resource. All modifications to an Asset are only within the context of Security Command Center and don\'t affect the referenced Google Cloud resource.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1Asset' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1Asset = GoogleCloudSecuritycenterV1p1beta1Asset
  { -- | The time at which the asset was created in Security Command Center.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Cloud IAM Policy information associated with the Google Cloud resource described by the Security Command Center asset. This information is managed and defined by the Google Cloud resource and cannot be modified by the user.
    iamPolicy :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1IamPolicy),
    -- | The relative resource name of this asset. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/assets\/{asset_id}\".
    name :: (Core.Maybe Core.Text),
    -- | Resource managed properties. These properties are managed and defined by the Google Cloud resource and cannot be modified by the user.
    resourceProperties ::
      ( Core.Maybe
          GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
      ),
    -- | Security Command Center managed properties. These properties are managed by Security Command Center and cannot be modified by the user.
    securityCenterProperties ::
      ( Core.Maybe
          GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
      ),
    -- | User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the asset.
    securityMarks :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1SecurityMarks),
    -- | The time at which the asset was last updated, added, or deleted in Cloud SCC.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1Asset' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1Asset ::
  GoogleCloudSecuritycenterV1p1beta1Asset
newGoogleCloudSecuritycenterV1p1beta1Asset =
  GoogleCloudSecuritycenterV1p1beta1Asset
    { createTime = Core.Nothing,
      iamPolicy = Core.Nothing,
      name = Core.Nothing,
      resourceProperties = Core.Nothing,
      securityCenterProperties = Core.Nothing,
      securityMarks = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1Asset
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1Asset"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1Asset
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "iamPolicy")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "resourceProperties")
            Core.<*> (o Core..:? "securityCenterProperties")
            Core.<*> (o Core..:? "securityMarks")
            Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1Asset
  where
  toJSON GoogleCloudSecuritycenterV1p1beta1Asset {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("iamPolicy" Core..=) Core.<$> iamPolicy,
            ("name" Core..=) Core.<$> name,
            ("resourceProperties" Core..=)
              Core.<$> resourceProperties,
            ("securityCenterProperties" Core..=)
              Core.<$> securityCenterProperties,
            ("securityMarks" Core..=) Core.<$> securityMarks,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Resource managed properties. These properties are managed and defined by the Google Cloud resource and cannot be modified by the user.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties' smart constructor.
newtype GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties = GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
newGoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties addtional =
  GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
    { addtional = addtional
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties {..} =
      Core.toJSON addtional

-- | Security Command Center finding. A finding is a record of assessment data (security, risk, health or privacy) ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, an XSS vulnerability in an App Engine application is a finding.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1Finding' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1Finding = GoogleCloudSecuritycenterV1p1beta1Finding
  { -- | The additional taxonomy group within findings from a given source. This field is immutable after creation time. Example: \"XSS/FLASH/INJECTION\"
    category :: (Core.Maybe Core.Text),
    -- | The time at which the finding was created in Security Command Center.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The time at which the event took place, or when an update to the finding occurred. For example, if the finding represents an open firewall it would capture the time the detector believes the firewall became open. The accuracy is determined by the detector. If the finding were to be resolved afterward, this time would reflect when the finding was resolved.
    eventTime :: (Core.Maybe Core.DateTime'),
    -- | The URI that, if available, points to a web page outside of Security Command Center where additional information about the finding can be found. This field is guaranteed to be either empty or a well formed URL.
    externalUri :: (Core.Maybe Core.Text),
    -- | The relative resource name of this finding. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\"
    name :: (Core.Maybe Core.Text),
    -- | The relative resource name of the source the finding belongs to. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name This field is immutable after creation time. For example: \"organizations\/{organization/id}\/sources\/{source_id}\"
    parent :: (Core.Maybe Core.Text),
    -- | For findings on Google Cloud resources, the full resource name of the Google Cloud resource this finding is for. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name When the finding is for a non-Google Cloud resource, the resourceName can be a customer or partner defined string. This field is immutable after creation time.
    resourceName :: (Core.Maybe Core.Text),
    -- | Output only. User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the finding.
    securityMarks :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1SecurityMarks),
    -- | The severity of the finding.
    severity :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1Finding_Severity),
    -- | Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.
    sourceProperties ::
      ( Core.Maybe
          GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
      ),
    -- | The state of the finding.
    state :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1Finding_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1Finding' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1Finding ::
  GoogleCloudSecuritycenterV1p1beta1Finding
newGoogleCloudSecuritycenterV1p1beta1Finding =
  GoogleCloudSecuritycenterV1p1beta1Finding
    { category = Core.Nothing,
      createTime = Core.Nothing,
      eventTime = Core.Nothing,
      externalUri = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      resourceName = Core.Nothing,
      securityMarks = Core.Nothing,
      severity = Core.Nothing,
      sourceProperties = Core.Nothing,
      state = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1Finding
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1Finding"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1Finding
            Core.<$> (o Core..:? "category")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "eventTime")
            Core.<*> (o Core..:? "externalUri")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "securityMarks")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "sourceProperties")
            Core.<*> (o Core..:? "state")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1Finding
  where
  toJSON GoogleCloudSecuritycenterV1p1beta1Finding {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("createTime" Core..=) Core.<$> createTime,
            ("eventTime" Core..=) Core.<$> eventTime,
            ("externalUri" Core..=) Core.<$> externalUri,
            ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("securityMarks" Core..=) Core.<$> securityMarks,
            ("severity" Core..=) Core.<$> severity,
            ("sourceProperties" Core..=)
              Core.<$> sourceProperties,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties' smart constructor.
newtype GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties = GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
newGoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties addtional =
  GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
    { addtional = addtional
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties {..} =
      Core.toJSON addtional

-- | Cloud IAM Policy information associated with the Google Cloud resource described by the Security Command Center asset. This information is managed and defined by the Google Cloud resource and cannot be modified by the user.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1IamPolicy' smart constructor.
newtype GoogleCloudSecuritycenterV1p1beta1IamPolicy = GoogleCloudSecuritycenterV1p1beta1IamPolicy
  { -- | The JSON representation of the Policy associated with the asset. See https:\/\/cloud.google.com\/iam\/docs\/reference\/rest\/v1\/Policy for format details.
    policyBlob :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1IamPolicy' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1IamPolicy ::
  GoogleCloudSecuritycenterV1p1beta1IamPolicy
newGoogleCloudSecuritycenterV1p1beta1IamPolicy =
  GoogleCloudSecuritycenterV1p1beta1IamPolicy {policyBlob = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1IamPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1IamPolicy"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1IamPolicy
            Core.<$> (o Core..:? "policyBlob")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1IamPolicy
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1IamPolicy {..} =
      Core.object
        ( Core.catMaybes
            [("policyBlob" Core..=) Core.<$> policyBlob]
        )

-- | Security Command Center\'s Notification
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1NotificationMessage' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1NotificationMessage = GoogleCloudSecuritycenterV1p1beta1NotificationMessage
  { -- | If it\'s a Finding based notification config, this field will be populated.
    finding :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1Finding),
    -- | Name of the notification config that generated current notification.
    notificationConfigName :: (Core.Maybe Core.Text),
    -- | The Cloud resource tied to the notification.
    resource :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1Resource),
    -- | If it\'s an asset based notification config, this field will be populated.
    temporalAsset :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1TemporalAsset)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1NotificationMessage' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1NotificationMessage ::
  GoogleCloudSecuritycenterV1p1beta1NotificationMessage
newGoogleCloudSecuritycenterV1p1beta1NotificationMessage =
  GoogleCloudSecuritycenterV1p1beta1NotificationMessage
    { finding = Core.Nothing,
      notificationConfigName = Core.Nothing,
      resource = Core.Nothing,
      temporalAsset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1NotificationMessage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1NotificationMessage"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1NotificationMessage
            Core.<$> (o Core..:? "finding")
              Core.<*> (o Core..:? "notificationConfigName")
              Core.<*> (o Core..:? "resource")
              Core.<*> (o Core..:? "temporalAsset")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1NotificationMessage
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1NotificationMessage {..} =
      Core.object
        ( Core.catMaybes
            [ ("finding" Core..=) Core.<$> finding,
              ("notificationConfigName" Core..=)
                Core.<$> notificationConfigName,
              ("resource" Core..=) Core.<$> resource,
              ("temporalAsset" Core..=) Core.<$> temporalAsset
            ]
        )

-- | Information related to the Google Cloud resource.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1Resource' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1Resource = GoogleCloudSecuritycenterV1p1beta1Resource
  { -- | The full resource name of the resource. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
    name :: (Core.Maybe Core.Text),
    -- | The full resource name of resource\'s parent.
    parent :: (Core.Maybe Core.Text),
    -- | The human readable name of resource\'s parent.
    parentDisplayName :: (Core.Maybe Core.Text),
    -- | The full resource name of project that the resource belongs to.
    project :: (Core.Maybe Core.Text),
    -- | The human readable name of project that the resource belongs to.
    projectDisplayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1Resource' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1Resource ::
  GoogleCloudSecuritycenterV1p1beta1Resource
newGoogleCloudSecuritycenterV1p1beta1Resource =
  GoogleCloudSecuritycenterV1p1beta1Resource
    { name = Core.Nothing,
      parent = Core.Nothing,
      parentDisplayName = Core.Nothing,
      project = Core.Nothing,
      projectDisplayName = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1Resource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1Resource"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1Resource
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "parentDisplayName")
            Core.<*> (o Core..:? "project")
            Core.<*> (o Core..:? "projectDisplayName")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1Resource
  where
  toJSON GoogleCloudSecuritycenterV1p1beta1Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("parentDisplayName" Core..=)
              Core.<$> parentDisplayName,
            ("project" Core..=) Core.<$> project,
            ("projectDisplayName" Core..=)
              Core.<$> projectDisplayName
          ]
      )

-- | Response of asset discovery run
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse = GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
  { -- | The duration between asset discovery run start and end
    duration :: (Core.Maybe Core.GDuration),
    -- | The state of an asset discovery run.
    state ::
      ( Core.Maybe
          GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse ::
  GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
newGoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse =
  GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    { duration = Core.Nothing,
      state = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
            Core.<$> (o Core..:? "duration")
              Core.<*> (o Core..:? "state")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("duration" Core..=) Core.<$> duration,
              ("state" Core..=) Core.<$> state
            ]
        )

-- | Security Command Center managed properties. These properties are managed by Security Command Center and cannot be modified by the user.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties = GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
  { -- | The user defined display name for this resource.
    resourceDisplayName :: (Core.Maybe Core.Text),
    -- | The full resource name of the Google Cloud resource this asset represents. This field is immutable after create time. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
    resourceName :: (Core.Maybe Core.Text),
    -- | Owners of the Google Cloud resource.
    resourceOwners :: (Core.Maybe [Core.Text]),
    -- | The full resource name of the immediate parent of the resource. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
    resourceParent :: (Core.Maybe Core.Text),
    -- | The user defined display name for the parent of this resource.
    resourceParentDisplayName :: (Core.Maybe Core.Text),
    -- | The full resource name of the project the resource belongs to. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
    resourceProject :: (Core.Maybe Core.Text),
    -- | The user defined display name for the project of this resource.
    resourceProjectDisplayName :: (Core.Maybe Core.Text),
    -- | The type of the Google Cloud resource. Examples include: APPLICATION, PROJECT, and ORGANIZATION. This is a case insensitive field defined by Security Command Center and\/or the producer of the resource and is immutable after create time.
    resourceType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties ::
  GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
newGoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties =
  GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
    { resourceDisplayName = Core.Nothing,
      resourceName = Core.Nothing,
      resourceOwners = Core.Nothing,
      resourceParent = Core.Nothing,
      resourceParentDisplayName = Core.Nothing,
      resourceProject = Core.Nothing,
      resourceProjectDisplayName = Core.Nothing,
      resourceType = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
            Core.<$> (o Core..:? "resourceDisplayName")
              Core.<*> (o Core..:? "resourceName")
              Core.<*> (o Core..:? "resourceOwners" Core..!= Core.mempty)
              Core.<*> (o Core..:? "resourceParent")
              Core.<*> (o Core..:? "resourceParentDisplayName")
              Core.<*> (o Core..:? "resourceProject")
              Core.<*> (o Core..:? "resourceProjectDisplayName")
              Core.<*> (o Core..:? "resourceType")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties {..} =
      Core.object
        ( Core.catMaybes
            [ ("resourceDisplayName" Core..=)
                Core.<$> resourceDisplayName,
              ("resourceName" Core..=) Core.<$> resourceName,
              ("resourceOwners" Core..=) Core.<$> resourceOwners,
              ("resourceParent" Core..=) Core.<$> resourceParent,
              ("resourceParentDisplayName" Core..=)
                Core.<$> resourceParentDisplayName,
              ("resourceProject" Core..=) Core.<$> resourceProject,
              ("resourceProjectDisplayName" Core..=)
                Core.<$> resourceProjectDisplayName,
              ("resourceType" Core..=) Core.<$> resourceType
            ]
        )

-- | User specified security marks that are attached to the parent Security Command Center resource. Security marks are scoped within a Security Command Center organization -- they can be modified and viewed by all users who have proper permissions on the organization.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1SecurityMarks' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1SecurityMarks = GoogleCloudSecuritycenterV1p1beta1SecurityMarks
  { -- | Mutable user specified security marks belonging to the parent resource. Constraints are as follows: * Keys and values are treated as case insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys must be letters, numbers, underscores, or dashes * Values have leading and trailing whitespace trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
    marks :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks),
    -- | The relative resource name of the SecurityMarks. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Examples: \"organizations\/{organization/id}\/assets\/{asset/id}\/securityMarks\" \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\/securityMarks\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1SecurityMarks' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1SecurityMarks ::
  GoogleCloudSecuritycenterV1p1beta1SecurityMarks
newGoogleCloudSecuritycenterV1p1beta1SecurityMarks =
  GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    { marks = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1SecurityMarks"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1SecurityMarks
            Core.<$> (o Core..:? "marks") Core.<*> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks {..} =
      Core.object
        ( Core.catMaybes
            [ ("marks" Core..=) Core.<$> marks,
              ("name" Core..=) Core.<$> name
            ]
        )

-- | Mutable user specified security marks belonging to the parent resource. Constraints are as follows: * Keys and values are treated as case insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys must be letters, numbers, underscores, or dashes * Values have leading and trailing whitespace trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks' smart constructor.
newtype GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks = GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks
newGoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks addtional =
  GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks {addtional = addtional}

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks {..} =
      Core.toJSON addtional

-- | Wrapper over asset object that also captures the state change for the asset e.g. if it was a newly created asset vs updated or deleted asset.
--
-- /See:/ 'newGoogleCloudSecuritycenterV1p1beta1TemporalAsset' smart constructor.
data GoogleCloudSecuritycenterV1p1beta1TemporalAsset = GoogleCloudSecuritycenterV1p1beta1TemporalAsset
  { -- | Asset data that includes attributes, properties and marks about the asset.
    asset :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1Asset),
    -- | Represents if the asset was created\/updated\/deleted.
    changeType ::
      ( Core.Maybe
          GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudSecuritycenterV1p1beta1TemporalAsset' with the minimum fields required to make a request.
newGoogleCloudSecuritycenterV1p1beta1TemporalAsset ::
  GoogleCloudSecuritycenterV1p1beta1TemporalAsset
newGoogleCloudSecuritycenterV1p1beta1TemporalAsset =
  GoogleCloudSecuritycenterV1p1beta1TemporalAsset
    { asset = Core.Nothing,
      changeType = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudSecuritycenterV1p1beta1TemporalAsset
  where
  parseJSON =
    Core.withObject
      "GoogleCloudSecuritycenterV1p1beta1TemporalAsset"
      ( \o ->
          GoogleCloudSecuritycenterV1p1beta1TemporalAsset
            Core.<$> (o Core..:? "asset")
              Core.<*> (o Core..:? "changeType")
      )

instance
  Core.ToJSON
    GoogleCloudSecuritycenterV1p1beta1TemporalAsset
  where
  toJSON
    GoogleCloudSecuritycenterV1p1beta1TemporalAsset {..} =
      Core.object
        ( Core.catMaybes
            [ ("asset" Core..=) Core.<$> asset,
              ("changeType" Core..=) Core.<$> changeType
            ]
        )

-- | Request message for grouping by assets.
--
-- /See:/ 'newGroupAssetsRequest' smart constructor.
data GroupAssetsRequest = GroupAssetsRequest
  { -- | When compare/duration is set, the GroupResult\'s \"state/change\" property is updated to indicate whether the asset was added, removed, or remained present during the compare/duration period of time that precedes the read/time. This is the time between (read/time - compare/duration) and read/time. The state change value is derived based on the presence of the asset at the two points in time. Intermediate state changes between the two times don\'t affect the result. For example, the results aren\'t affected if the asset is removed and re-created again. Possible \"state/change\" values when compare/duration is specified: * \"ADDED\": indicates that the asset was not present at the start of compare/duration, but present at reference/time. * \"REMOVED\": indicates that the asset was present at the start of compare/duration, but not present at reference/time. * \"ACTIVE\": indicates that the asset was present at both the start and the end of the time period defined by compare/duration and reference/time. If
    -- compare/duration is not specified, then the only possible state/change is \"UNUSED\", which will be the state/change set for all assets present at read_time. If this field is set then @state_change@ must be a specified field in @group_by@.
    compareDuration :: (Core.Maybe Core.GDuration),
    -- | Expression that defines the filter to apply across assets. The expression is a list of zero or more restrictions combined via logical operators @AND@ and @OR@. Parentheses are supported, and @OR@ has higher precedence than @AND@. Restrictions have the form @@ and may have a @-@ character in front of them to indicate negation. The fields map to those defined in the Asset resource. Examples include: * name * security/center/properties.resource/name * resource/properties.a/property * security/marks.marks.marka The supported operators are: * @=@ for all value types. * @>@, @\<@, @>=@, @\<=@ for integer values. * @:@, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals @true@ and @false@ without quotes. The following field and operator combinations are supported: * name: @=@ * update/time: @=@, @>@, @\<@, @>=@, @\<=@ Usage: This should be milliseconds since epoch or an RFC3339 string. Examples:
    -- @update_time = \"2019-06-10T16:07:18-07:00\"@ @update_time = 1560208038000@ * create/time: @=@, @>@, @\<@, @>=@, @\<=@ Usage: This should be milliseconds since epoch or an RFC3339 string. Examples: @create_time = \"2019-06-10T16:07:18-07:00\"@ @create_time = 1560208038000@ * iam/policy.policy/blob: @=@, @:@ * resource/properties: @=@, @:@, @>@, @\<@, @>=@, @\<=@ * security/marks.marks: @=@, @:@ * security/center/properties.resource/name: @=@, @:@ * security/center/properties.resource/name/display/name: @=@, @:@ * security/center/properties.resource/type: @=@, @:@ * security/center/properties.resource/parent: @=@, @:@ * security/center/properties.resource/parent/display/name: @=@, @:@ * security/center/properties.resource/project: @=@, @:@ * security/center/properties.resource/project/display/name: @=@, @:@ * security/center/properties.resource/owners: @=@, @:@ For example, @resource_properties.size = 100@ is a valid filter string. Use a partial match on the empty string to filter based on a property existing:
    -- @resource_properties.my_property : \"\"@ Use a negated partial match on the empty string to filter based on a property not existing: @-resource_properties.my_property : \"\"@
    filter :: (Core.Maybe Core.Text),
    -- | Required. Expression that defines what assets fields to use for grouping. The string value should follow SQL syntax: comma separated list of fields. For example: \"security/center/properties.resource/project,security/center/properties.project\". The following fields are supported when compare/duration is not set: * security/center/properties.resource/project * security/center/properties.resource/project/display/name * security/center/properties.resource/type * security/center/properties.resource/parent * security/center/properties.resource/parent/display/name The following fields are supported when compare/duration is set: * security/center/properties.resource/type * security/center/properties.resource/project/display/name * security/center/properties.resource/parent/display_name
    groupBy :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @GroupAssetsResponse@; indicates that this is a continuation of a prior @GroupAssets@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Time used as a reference point when filtering assets. The filter is limited to assets existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API\'s version of NOW.
    readTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupAssetsRequest' with the minimum fields required to make a request.
newGroupAssetsRequest ::
  GroupAssetsRequest
newGroupAssetsRequest =
  GroupAssetsRequest
    { compareDuration = Core.Nothing,
      filter = Core.Nothing,
      groupBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      readTime = Core.Nothing
    }

instance Core.FromJSON GroupAssetsRequest where
  parseJSON =
    Core.withObject
      "GroupAssetsRequest"
      ( \o ->
          GroupAssetsRequest
            Core.<$> (o Core..:? "compareDuration")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "groupBy")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "readTime")
      )

instance Core.ToJSON GroupAssetsRequest where
  toJSON GroupAssetsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("compareDuration" Core..=)
              Core.<$> compareDuration,
            ("filter" Core..=) Core.<$> filter,
            ("groupBy" Core..=) Core.<$> groupBy,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("readTime" Core..=) Core.<$> readTime
          ]
      )

-- | Response message for grouping by assets.
--
-- /See:/ 'newGroupAssetsResponse' smart constructor.
data GroupAssetsResponse = GroupAssetsResponse
  { -- | Group results. There exists an element for each existing unique combination of property\/values. The element contains a count for the number of times those specific property\/values appear.
    groupByResults :: (Core.Maybe [GroupResult]),
    -- | Token to retrieve the next page of results, or empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Time used for executing the groupBy request.
    readTime :: (Core.Maybe Core.DateTime'),
    -- | The total number of results matching the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupAssetsResponse' with the minimum fields required to make a request.
newGroupAssetsResponse ::
  GroupAssetsResponse
newGroupAssetsResponse =
  GroupAssetsResponse
    { groupByResults = Core.Nothing,
      nextPageToken = Core.Nothing,
      readTime = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON GroupAssetsResponse where
  parseJSON =
    Core.withObject
      "GroupAssetsResponse"
      ( \o ->
          GroupAssetsResponse
            Core.<$> (o Core..:? "groupByResults" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "readTime")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON GroupAssetsResponse where
  toJSON GroupAssetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupByResults" Core..=) Core.<$> groupByResults,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("readTime" Core..=) Core.<$> readTime,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Request message for grouping by findings.
--
-- /See:/ 'newGroupFindingsRequest' smart constructor.
data GroupFindingsRequest = GroupFindingsRequest
  { -- | When compare/duration is set, the GroupResult\'s \"state/change\" attribute is updated to indicate whether the finding had its state changed, the finding\'s state remained unchanged, or if the finding was added during the compare/duration period of time that precedes the read/time. This is the time between (read/time - compare/duration) and read/time. The state/change value is derived based on the presence and state of the finding at the two points in time. Intermediate state changes between the two times don\'t affect the result. For example, the results aren\'t affected if the finding is made inactive and then active again. Possible \"state/change\" values when compare/duration is specified: * \"CHANGED\": indicates that the finding was present and matched the given filter at the start of compare/duration, but changed its state at read/time. * \"UNCHANGED\": indicates that the finding was present and matched the given filter at the start of compare/duration and did not change state at read/time. *
    -- \"ADDED\": indicates that the finding did not match the given filter or was not present at the start of compare/duration, but was present at read/time. * \"REMOVED\": indicates that the finding was present and matched the filter at the start of compare/duration, but did not match the filter at read/time. If compare/duration is not specified, then the only possible state/change is \"UNUSED\", which will be the state/change set for all findings present at read/time. If this field is set then @state_change@ must be a specified field in @group_by@.
    compareDuration :: (Core.Maybe Core.GDuration),
    -- | Expression that defines the filter to apply across findings. The expression is a list of one or more restrictions combined via logical operators @AND@ and @OR@. Parentheses are supported, and @OR@ has higher precedence than @AND@. Restrictions have the form @@ and may have a @-@ character in front of them to indicate negation. Examples include: * name * source/properties.a/property * security/marks.marks.marka The supported operators are: * @=@ for all value types. * @>@, @\<@, @>=@, @\<=@ for integer values. * @:@, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals @true@ and @false@ without quotes. The following field and operator combinations are supported: * name: @=@ * parent: @=@, @:@ * resource/name: @=@, @:@ * state: @=@, @:@ * category: @=@, @:@ * external/uri: @=@, @:@ * event/time: @=@, @>@, @\<@, @>=@, @\<=@ Usage: This should be milliseconds since epoch or an RFC3339 string. Examples:
    -- @event_time = \"2019-06-10T16:07:18-07:00\"@ @event_time = 1560208038000@ * security/marks.marks: @=@, @:@ * source/properties: @=@, @:@, @>@, @\<@, @>=@, @\<=@ For example, @source_properties.size = 100@ is a valid filter string. Use a partial match on the empty string to filter based on a property existing: @source_properties.my_property : \"\"@ Use a negated partial match on the empty string to filter based on a property not existing: @-source_properties.my_property : \"\"@
    filter :: (Core.Maybe Core.Text),
    -- | Required. Expression that defines what assets fields to use for grouping (including @state_change@). The string value should follow SQL syntax: comma separated list of fields. For example: \"parent,resource/name\". The following fields are supported: * resource/name * category * state * parent The following fields are supported when compare/duration is set: * state/change
    groupBy :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @GroupFindingsResponse@; indicates that this is a continuation of a prior @GroupFindings@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Time used as a reference point when filtering findings. The filter is limited to findings existing at the supplied time and their values are those at that specific time. Absence of this field will default to the API\'s version of NOW.
    readTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupFindingsRequest' with the minimum fields required to make a request.
newGroupFindingsRequest ::
  GroupFindingsRequest
newGroupFindingsRequest =
  GroupFindingsRequest
    { compareDuration = Core.Nothing,
      filter = Core.Nothing,
      groupBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      readTime = Core.Nothing
    }

instance Core.FromJSON GroupFindingsRequest where
  parseJSON =
    Core.withObject
      "GroupFindingsRequest"
      ( \o ->
          GroupFindingsRequest
            Core.<$> (o Core..:? "compareDuration")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "groupBy")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "readTime")
      )

instance Core.ToJSON GroupFindingsRequest where
  toJSON GroupFindingsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("compareDuration" Core..=)
              Core.<$> compareDuration,
            ("filter" Core..=) Core.<$> filter,
            ("groupBy" Core..=) Core.<$> groupBy,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("readTime" Core..=) Core.<$> readTime
          ]
      )

-- | Response message for group by findings.
--
-- /See:/ 'newGroupFindingsResponse' smart constructor.
data GroupFindingsResponse = GroupFindingsResponse
  { -- | Group results. There exists an element for each existing unique combination of property\/values. The element contains a count for the number of times those specific property\/values appear.
    groupByResults :: (Core.Maybe [GroupResult]),
    -- | Token to retrieve the next page of results, or empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Time used for executing the groupBy request.
    readTime :: (Core.Maybe Core.DateTime'),
    -- | The total number of results matching the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupFindingsResponse' with the minimum fields required to make a request.
newGroupFindingsResponse ::
  GroupFindingsResponse
newGroupFindingsResponse =
  GroupFindingsResponse
    { groupByResults = Core.Nothing,
      nextPageToken = Core.Nothing,
      readTime = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON GroupFindingsResponse where
  parseJSON =
    Core.withObject
      "GroupFindingsResponse"
      ( \o ->
          GroupFindingsResponse
            Core.<$> (o Core..:? "groupByResults" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "readTime")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON GroupFindingsResponse where
  toJSON GroupFindingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupByResults" Core..=) Core.<$> groupByResults,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("readTime" Core..=) Core.<$> readTime,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Result containing the properties and count of a groupBy request.
--
-- /See:/ 'newGroupResult' smart constructor.
data GroupResult = GroupResult
  { -- | Total count of resources for the given properties.
    count :: (Core.Maybe Core.Int64),
    -- | Properties matching the groupBy fields in the request.
    properties :: (Core.Maybe GroupResult_Properties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupResult' with the minimum fields required to make a request.
newGroupResult ::
  GroupResult
newGroupResult = GroupResult {count = Core.Nothing, properties = Core.Nothing}

instance Core.FromJSON GroupResult where
  parseJSON =
    Core.withObject
      "GroupResult"
      ( \o ->
          GroupResult
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON GroupResult where
  toJSON GroupResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Properties matching the groupBy fields in the request.
--
-- /See:/ 'newGroupResult_Properties' smart constructor.
newtype GroupResult_Properties = GroupResult_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupResult_Properties' with the minimum fields required to make a request.
newGroupResult_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GroupResult_Properties
newGroupResult_Properties addtional =
  GroupResult_Properties {addtional = addtional}

instance Core.FromJSON GroupResult_Properties where
  parseJSON =
    Core.withObject
      "GroupResult_Properties"
      ( \o ->
          GroupResult_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GroupResult_Properties where
  toJSON GroupResult_Properties {..} =
    Core.toJSON addtional

-- | Response message for listing assets.
--
-- /See:/ 'newListAssetsResponse' smart constructor.
data ListAssetsResponse = ListAssetsResponse
  { -- | Assets matching the list request.
    listAssetsResults :: (Core.Maybe [ListAssetsResult]),
    -- | Token to retrieve the next page of results, or empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Time used for executing the list request.
    readTime :: (Core.Maybe Core.DateTime'),
    -- | The total number of assets matching the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAssetsResponse' with the minimum fields required to make a request.
newListAssetsResponse ::
  ListAssetsResponse
newListAssetsResponse =
  ListAssetsResponse
    { listAssetsResults = Core.Nothing,
      nextPageToken = Core.Nothing,
      readTime = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListAssetsResponse where
  parseJSON =
    Core.withObject
      "ListAssetsResponse"
      ( \o ->
          ListAssetsResponse
            Core.<$> (o Core..:? "listAssetsResults" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "readTime")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListAssetsResponse where
  toJSON ListAssetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("listAssetsResults" Core..=)
              Core.<$> listAssetsResults,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("readTime" Core..=) Core.<$> readTime,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Result containing the Asset and its State.
--
-- /See:/ 'newListAssetsResult' smart constructor.
data ListAssetsResult = ListAssetsResult
  { -- | Asset matching the search request.
    asset :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1Asset),
    -- | State change of the asset between the points in time.
    stateChange :: (Core.Maybe ListAssetsResult_StateChange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAssetsResult' with the minimum fields required to make a request.
newListAssetsResult ::
  ListAssetsResult
newListAssetsResult =
  ListAssetsResult {asset = Core.Nothing, stateChange = Core.Nothing}

instance Core.FromJSON ListAssetsResult where
  parseJSON =
    Core.withObject
      "ListAssetsResult"
      ( \o ->
          ListAssetsResult
            Core.<$> (o Core..:? "asset")
            Core.<*> (o Core..:? "stateChange")
      )

instance Core.ToJSON ListAssetsResult where
  toJSON ListAssetsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("asset" Core..=) Core.<$> asset,
            ("stateChange" Core..=) Core.<$> stateChange
          ]
      )

-- | Response message for listing findings.
--
-- /See:/ 'newListFindingsResponse' smart constructor.
data ListFindingsResponse = ListFindingsResponse
  { -- | Findings matching the list request.
    listFindingsResults :: (Core.Maybe [ListFindingsResult]),
    -- | Token to retrieve the next page of results, or empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Time used for executing the list request.
    readTime :: (Core.Maybe Core.DateTime'),
    -- | The total number of findings matching the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFindingsResponse' with the minimum fields required to make a request.
newListFindingsResponse ::
  ListFindingsResponse
newListFindingsResponse =
  ListFindingsResponse
    { listFindingsResults = Core.Nothing,
      nextPageToken = Core.Nothing,
      readTime = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListFindingsResponse where
  parseJSON =
    Core.withObject
      "ListFindingsResponse"
      ( \o ->
          ListFindingsResponse
            Core.<$> ( o Core..:? "listFindingsResults"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "readTime")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListFindingsResponse where
  toJSON ListFindingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("listFindingsResults" Core..=)
              Core.<$> listFindingsResults,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("readTime" Core..=) Core.<$> readTime,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Result containing the Finding and its StateChange.
--
-- /See:/ 'newListFindingsResult' smart constructor.
data ListFindingsResult = ListFindingsResult
  { -- | Finding matching the search request.
    finding :: (Core.Maybe GoogleCloudSecuritycenterV1p1beta1Finding),
    -- | Output only. Resource that is associated with this finding.
    resource :: (Core.Maybe Resource),
    -- | State change of the finding between the points in time.
    stateChange :: (Core.Maybe ListFindingsResult_StateChange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFindingsResult' with the minimum fields required to make a request.
newListFindingsResult ::
  ListFindingsResult
newListFindingsResult =
  ListFindingsResult
    { finding = Core.Nothing,
      resource = Core.Nothing,
      stateChange = Core.Nothing
    }

instance Core.FromJSON ListFindingsResult where
  parseJSON =
    Core.withObject
      "ListFindingsResult"
      ( \o ->
          ListFindingsResult
            Core.<$> (o Core..:? "finding")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "stateChange")
      )

instance Core.ToJSON ListFindingsResult where
  toJSON ListFindingsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("finding" Core..=) Core.<$> finding,
            ("resource" Core..=) Core.<$> resource,
            ("stateChange" Core..=) Core.<$> stateChange
          ]
      )

-- | Response message for listing notification configs.
--
-- /See:/ 'newListNotificationConfigsResponse' smart constructor.
data ListNotificationConfigsResponse = ListNotificationConfigsResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Notification configs belonging to the requested parent.
    notificationConfigs :: (Core.Maybe [NotificationConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNotificationConfigsResponse' with the minimum fields required to make a request.
newListNotificationConfigsResponse ::
  ListNotificationConfigsResponse
newListNotificationConfigsResponse =
  ListNotificationConfigsResponse
    { nextPageToken = Core.Nothing,
      notificationConfigs = Core.Nothing
    }

instance
  Core.FromJSON
    ListNotificationConfigsResponse
  where
  parseJSON =
    Core.withObject
      "ListNotificationConfigsResponse"
      ( \o ->
          ListNotificationConfigsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "notificationConfigs"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ListNotificationConfigsResponse where
  toJSON ListNotificationConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("notificationConfigs" Core..=)
              Core.<$> notificationConfigs
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

-- | Response message for listing sources.
--
-- /See:/ 'newListSourcesResponse' smart constructor.
data ListSourcesResponse = ListSourcesResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Sources belonging to the requested parent.
    sources :: (Core.Maybe [Source])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSourcesResponse' with the minimum fields required to make a request.
newListSourcesResponse ::
  ListSourcesResponse
newListSourcesResponse =
  ListSourcesResponse {nextPageToken = Core.Nothing, sources = Core.Nothing}

instance Core.FromJSON ListSourcesResponse where
  parseJSON =
    Core.withObject
      "ListSourcesResponse"
      ( \o ->
          ListSourcesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "sources" Core..!= Core.mempty)
      )

instance Core.ToJSON ListSourcesResponse where
  toJSON ListSourcesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | Security Command Center notification configs. A notification config is a Security Command Center resource that contains the configuration to send notifications for create\/update events of findings, assets and etc.
--
-- /See:/ 'newNotificationConfig' smart constructor.
data NotificationConfig = NotificationConfig
  { -- | The description of the notification config (max of 1024 characters).
    description :: (Core.Maybe Core.Text),
    -- | The type of events the config is for, e.g. FINDING.
    eventType :: (Core.Maybe NotificationConfig_EventType),
    -- | The relative resource name of this notification config. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/notificationConfigs\/notify/public/bucket\".
    name :: (Core.Maybe Core.Text),
    -- | The Pub\/Sub topic to send notifications to. Its format is \"projects\/[project_id]\/topics\/[topic]\".
    pubsubTopic :: (Core.Maybe Core.Text),
    -- | Output only. The service account that needs \"pubsub.topics.publish\" permission to publish to the Pub\/Sub topic.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | The config for triggering streaming-based notifications.
    streamingConfig :: (Core.Maybe StreamingConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationConfig' with the minimum fields required to make a request.
newNotificationConfig ::
  NotificationConfig
newNotificationConfig =
  NotificationConfig
    { description = Core.Nothing,
      eventType = Core.Nothing,
      name = Core.Nothing,
      pubsubTopic = Core.Nothing,
      serviceAccount = Core.Nothing,
      streamingConfig = Core.Nothing
    }

instance Core.FromJSON NotificationConfig where
  parseJSON =
    Core.withObject
      "NotificationConfig"
      ( \o ->
          NotificationConfig
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "eventType")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pubsubTopic")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "streamingConfig")
      )

instance Core.ToJSON NotificationConfig where
  toJSON NotificationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("eventType" Core..=) Core.<$> eventType,
            ("name" Core..=) Core.<$> name,
            ("pubsubTopic" Core..=) Core.<$> pubsubTopic,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("streamingConfig" Core..=)
              Core.<$> streamingConfig
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
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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

-- | User specified settings that are attached to the Security Command Center organization.
--
-- /See:/ 'newOrganizationSettings' smart constructor.
data OrganizationSettings = OrganizationSettings
  { -- | The configuration used for Asset Discovery runs.
    assetDiscoveryConfig :: (Core.Maybe AssetDiscoveryConfig),
    -- | A flag that indicates if Asset Discovery should be enabled. If the flag is set to @true@, then discovery of assets will occur. If it is set to \`false, all historical assets will remain, but discovery of future assets will not occur.
    enableAssetDiscovery :: (Core.Maybe Core.Bool),
    -- | The relative resource name of the settings. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/organizationSettings\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrganizationSettings' with the minimum fields required to make a request.
newOrganizationSettings ::
  OrganizationSettings
newOrganizationSettings =
  OrganizationSettings
    { assetDiscoveryConfig = Core.Nothing,
      enableAssetDiscovery = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON OrganizationSettings where
  parseJSON =
    Core.withObject
      "OrganizationSettings"
      ( \o ->
          OrganizationSettings
            Core.<$> (o Core..:? "assetDiscoveryConfig")
            Core.<*> (o Core..:? "enableAssetDiscovery")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON OrganizationSettings where
  toJSON OrganizationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("assetDiscoveryConfig" Core..=)
              Core.<$> assetDiscoveryConfig,
            ("enableAssetDiscovery" Core..=)
              Core.<$> enableAssetDiscovery,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@ to a single @role@. Members can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@ to a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one member.
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
            Core.<$> (o Core..:? "auditConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bindings" Core..!= Core.mempty)
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

-- | Information related to the Google Cloud resource that is associated with this finding.
--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource
  { -- | The full resource name of the resource. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#full/resource_name
    name :: (Core.Maybe Core.Text),
    -- | The human readable name of resource\'s parent.
    parentDisplayName :: (Core.Maybe Core.Text),
    -- | The full resource name of resource\'s parent.
    parentName :: (Core.Maybe Core.Text),
    -- | The human readable name of project that the resource belongs to.
    projectDisplayName :: (Core.Maybe Core.Text),
    -- | The full resource name of project that the resource belongs to.
    projectName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
newResource ::
  Resource
newResource =
  Resource
    { name = Core.Nothing,
      parentDisplayName = Core.Nothing,
      parentName = Core.Nothing,
      projectDisplayName = Core.Nothing,
      projectName = Core.Nothing
    }

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject
      "Resource"
      ( \o ->
          Resource
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "parentDisplayName")
            Core.<*> (o Core..:? "parentName")
            Core.<*> (o Core..:? "projectDisplayName")
            Core.<*> (o Core..:? "projectName")
      )

instance Core.ToJSON Resource where
  toJSON Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("parentDisplayName" Core..=)
              Core.<$> parentDisplayName,
            ("parentName" Core..=) Core.<$> parentName,
            ("projectDisplayName" Core..=)
              Core.<$> projectDisplayName,
            ("projectName" Core..=) Core.<$> projectName
          ]
      )

-- | Request message for running asset discovery for an organization.
--
-- /See:/ 'newRunAssetDiscoveryRequest' smart constructor.
data RunAssetDiscoveryRequest = RunAssetDiscoveryRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunAssetDiscoveryRequest' with the minimum fields required to make a request.
newRunAssetDiscoveryRequest ::
  RunAssetDiscoveryRequest
newRunAssetDiscoveryRequest = RunAssetDiscoveryRequest

instance Core.FromJSON RunAssetDiscoveryRequest where
  parseJSON =
    Core.withObject
      "RunAssetDiscoveryRequest"
      (\o -> Core.pure RunAssetDiscoveryRequest)

instance Core.ToJSON RunAssetDiscoveryRequest where
  toJSON = Core.const Core.emptyObject

-- | User specified security marks that are attached to the parent Security Command Center resource. Security marks are scoped within a Security Command Center organization -- they can be modified and viewed by all users who have proper permissions on the organization.
--
-- /See:/ 'newSecurityMarks' smart constructor.
data SecurityMarks = SecurityMarks
  { -- | Mutable user specified security marks belonging to the parent resource. Constraints are as follows: * Keys and values are treated as case insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys must be letters, numbers, underscores, or dashes * Values have leading and trailing whitespace trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
    marks :: (Core.Maybe SecurityMarks_Marks),
    -- | The relative resource name of the SecurityMarks. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Examples: \"organizations\/{organization/id}\/assets\/{asset/id}\/securityMarks\" \"organizations\/{organization/id}\/sources\/{source/id}\/findings\/{finding/id}\/securityMarks\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityMarks' with the minimum fields required to make a request.
newSecurityMarks ::
  SecurityMarks
newSecurityMarks = SecurityMarks {marks = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON SecurityMarks where
  parseJSON =
    Core.withObject
      "SecurityMarks"
      ( \o ->
          SecurityMarks
            Core.<$> (o Core..:? "marks") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON SecurityMarks where
  toJSON SecurityMarks {..} =
    Core.object
      ( Core.catMaybes
          [ ("marks" Core..=) Core.<$> marks,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Mutable user specified security marks belonging to the parent resource. Constraints are as follows: * Keys and values are treated as case insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys must be letters, numbers, underscores, or dashes * Values have leading and trailing whitespace trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
--
-- /See:/ 'newSecurityMarks_Marks' smart constructor.
newtype SecurityMarks_Marks = SecurityMarks_Marks
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityMarks_Marks' with the minimum fields required to make a request.
newSecurityMarks_Marks ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  SecurityMarks_Marks
newSecurityMarks_Marks addtional = SecurityMarks_Marks {addtional = addtional}

instance Core.FromJSON SecurityMarks_Marks where
  parseJSON =
    Core.withObject
      "SecurityMarks_Marks"
      ( \o ->
          SecurityMarks_Marks
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SecurityMarks_Marks where
  toJSON SecurityMarks_Marks {..} =
    Core.toJSON addtional

-- | Request message for updating a finding\'s state.
--
-- /See:/ 'newSetFindingStateRequest' smart constructor.
data SetFindingStateRequest = SetFindingStateRequest
  { -- | Required. The time at which the updated state takes effect.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Required. The desired State of the finding.
    state :: (Core.Maybe SetFindingStateRequest_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetFindingStateRequest' with the minimum fields required to make a request.
newSetFindingStateRequest ::
  SetFindingStateRequest
newSetFindingStateRequest =
  SetFindingStateRequest {startTime = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON SetFindingStateRequest where
  parseJSON =
    Core.withObject
      "SetFindingStateRequest"
      ( \o ->
          SetFindingStateRequest
            Core.<$> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON SetFindingStateRequest where
  toJSON SetFindingStateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

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

-- | Security Command Center finding source. A finding source is an entity or a mechanism that can produce a finding. A source is like a container of findings that come from the same scanner, logger, monitor, etc.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
  { -- | The description of the source (max of 1024 characters). Example: \"Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated\/insecure libraries.\"
    description :: (Core.Maybe Core.Text),
    -- | The source\'s display name. A source\'s display name must be unique amongst its siblings, for example, two sources with the same parent can\'t share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
    displayName :: (Core.Maybe Core.Text),
    -- | The relative resource name of this source. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/sources\/{source_id}\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource =
  Source
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \o ->
          Source
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name
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

-- | The config for streaming-based notifications, which send each event as soon as it is detected.
--
-- /See:/ 'newStreamingConfig' smart constructor.
newtype StreamingConfig = StreamingConfig
  { -- | Expression that defines the filter to apply across create\/update events of assets or findings as specified by the event type. The expression is a list of zero or more restrictions combined via logical operators @AND@ and @OR@. Parentheses are supported, and @OR@ has higher precedence than @AND@. Restrictions have the form @@ and may have a @-@ character in front of them to indicate negation. The fields map to those defined in the corresponding resource. The supported operators are: * @=@ for all value types. * @>@, @\<@, @>=@, @\<=@ for integer values. * @:@, meaning substring matching, for strings. The supported value types are: * string literals in quotes. * integer literals without quotes. * boolean literals @true@ and @false@ without quotes.
    filter :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreamingConfig' with the minimum fields required to make a request.
newStreamingConfig ::
  StreamingConfig
newStreamingConfig = StreamingConfig {filter = Core.Nothing}

instance Core.FromJSON StreamingConfig where
  parseJSON =
    Core.withObject
      "StreamingConfig"
      ( \o ->
          StreamingConfig Core.<$> (o Core..:? "filter")
      )

instance Core.ToJSON StreamingConfig where
  toJSON StreamingConfig {..} =
    Core.object
      (Core.catMaybes [("filter" Core..=) Core.<$> filter])

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
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
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )
