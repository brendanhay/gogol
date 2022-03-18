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
-- Module      : Gogol.CloudAsset.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudAsset.Internal.Product
  ( -- * AnalyzeIamPolicyLongrunningMetadata
    AnalyzeIamPolicyLongrunningMetadata (..),
    newAnalyzeIamPolicyLongrunningMetadata,

    -- * AnalyzeIamPolicyLongrunningResponse
    AnalyzeIamPolicyLongrunningResponse (..),
    newAnalyzeIamPolicyLongrunningResponse,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GoogleCloudAssetV1p7beta1Asset
    GoogleCloudAssetV1p7beta1Asset (..),
    newGoogleCloudAssetV1p7beta1Asset,

    -- * GoogleCloudAssetV1p7beta1BigQueryDestination
    GoogleCloudAssetV1p7beta1BigQueryDestination (..),
    newGoogleCloudAssetV1p7beta1BigQueryDestination,

    -- * GoogleCloudAssetV1p7beta1ExportAssetsRequest
    GoogleCloudAssetV1p7beta1ExportAssetsRequest (..),
    newGoogleCloudAssetV1p7beta1ExportAssetsRequest,

    -- * GoogleCloudAssetV1p7beta1GcsDestination
    GoogleCloudAssetV1p7beta1GcsDestination (..),
    newGoogleCloudAssetV1p7beta1GcsDestination,

    -- * GoogleCloudAssetV1p7beta1OutputConfig
    GoogleCloudAssetV1p7beta1OutputConfig (..),
    newGoogleCloudAssetV1p7beta1OutputConfig,

    -- * GoogleCloudAssetV1p7beta1PartitionSpec
    GoogleCloudAssetV1p7beta1PartitionSpec (..),
    newGoogleCloudAssetV1p7beta1PartitionSpec,

    -- * GoogleCloudAssetV1p7beta1RelatedAsset
    GoogleCloudAssetV1p7beta1RelatedAsset (..),
    newGoogleCloudAssetV1p7beta1RelatedAsset,

    -- * GoogleCloudAssetV1p7beta1RelatedAssets
    GoogleCloudAssetV1p7beta1RelatedAssets (..),
    newGoogleCloudAssetV1p7beta1RelatedAssets,

    -- * GoogleCloudAssetV1p7beta1RelationshipAttributes
    GoogleCloudAssetV1p7beta1RelationshipAttributes (..),
    newGoogleCloudAssetV1p7beta1RelationshipAttributes,

    -- * GoogleCloudAssetV1p7beta1Resource
    GoogleCloudAssetV1p7beta1Resource (..),
    newGoogleCloudAssetV1p7beta1Resource,

    -- * GoogleCloudAssetV1p7beta1Resource_Data
    GoogleCloudAssetV1p7beta1Resource_Data (..),
    newGoogleCloudAssetV1p7beta1Resource_Data,

    -- * GoogleCloudOrgpolicyV1BooleanPolicy
    GoogleCloudOrgpolicyV1BooleanPolicy (..),
    newGoogleCloudOrgpolicyV1BooleanPolicy,

    -- * GoogleCloudOrgpolicyV1ListPolicy
    GoogleCloudOrgpolicyV1ListPolicy (..),
    newGoogleCloudOrgpolicyV1ListPolicy,

    -- * GoogleCloudOrgpolicyV1Policy
    GoogleCloudOrgpolicyV1Policy (..),
    newGoogleCloudOrgpolicyV1Policy,

    -- * GoogleCloudOrgpolicyV1RestoreDefault
    GoogleCloudOrgpolicyV1RestoreDefault (..),
    newGoogleCloudOrgpolicyV1RestoreDefault,

    -- * GoogleIdentityAccesscontextmanagerV1AccessLevel
    GoogleIdentityAccesscontextmanagerV1AccessLevel (..),
    newGoogleIdentityAccesscontextmanagerV1AccessLevel,

    -- * GoogleIdentityAccesscontextmanagerV1AccessPolicy
    GoogleIdentityAccesscontextmanagerV1AccessPolicy (..),
    newGoogleIdentityAccesscontextmanagerV1AccessPolicy,

    -- * GoogleIdentityAccesscontextmanagerV1ApiOperation
    GoogleIdentityAccesscontextmanagerV1ApiOperation (..),
    newGoogleIdentityAccesscontextmanagerV1ApiOperation,

    -- * GoogleIdentityAccesscontextmanagerV1BasicLevel
    GoogleIdentityAccesscontextmanagerV1BasicLevel (..),
    newGoogleIdentityAccesscontextmanagerV1BasicLevel,

    -- * GoogleIdentityAccesscontextmanagerV1Condition
    GoogleIdentityAccesscontextmanagerV1Condition (..),
    newGoogleIdentityAccesscontextmanagerV1Condition,

    -- * GoogleIdentityAccesscontextmanagerV1CustomLevel
    GoogleIdentityAccesscontextmanagerV1CustomLevel (..),
    newGoogleIdentityAccesscontextmanagerV1CustomLevel,

    -- * GoogleIdentityAccesscontextmanagerV1DevicePolicy
    GoogleIdentityAccesscontextmanagerV1DevicePolicy (..),
    newGoogleIdentityAccesscontextmanagerV1DevicePolicy,

    -- * GoogleIdentityAccesscontextmanagerV1EgressFrom
    GoogleIdentityAccesscontextmanagerV1EgressFrom (..),
    newGoogleIdentityAccesscontextmanagerV1EgressFrom,

    -- * GoogleIdentityAccesscontextmanagerV1EgressPolicy
    GoogleIdentityAccesscontextmanagerV1EgressPolicy (..),
    newGoogleIdentityAccesscontextmanagerV1EgressPolicy,

    -- * GoogleIdentityAccesscontextmanagerV1EgressTo
    GoogleIdentityAccesscontextmanagerV1EgressTo (..),
    newGoogleIdentityAccesscontextmanagerV1EgressTo,

    -- * GoogleIdentityAccesscontextmanagerV1IngressFrom
    GoogleIdentityAccesscontextmanagerV1IngressFrom (..),
    newGoogleIdentityAccesscontextmanagerV1IngressFrom,

    -- * GoogleIdentityAccesscontextmanagerV1IngressPolicy
    GoogleIdentityAccesscontextmanagerV1IngressPolicy (..),
    newGoogleIdentityAccesscontextmanagerV1IngressPolicy,

    -- * GoogleIdentityAccesscontextmanagerV1IngressSource
    GoogleIdentityAccesscontextmanagerV1IngressSource (..),
    newGoogleIdentityAccesscontextmanagerV1IngressSource,

    -- * GoogleIdentityAccesscontextmanagerV1IngressTo
    GoogleIdentityAccesscontextmanagerV1IngressTo (..),
    newGoogleIdentityAccesscontextmanagerV1IngressTo,

    -- * GoogleIdentityAccesscontextmanagerV1MethodSelector
    GoogleIdentityAccesscontextmanagerV1MethodSelector (..),
    newGoogleIdentityAccesscontextmanagerV1MethodSelector,

    -- * GoogleIdentityAccesscontextmanagerV1OsConstraint
    GoogleIdentityAccesscontextmanagerV1OsConstraint (..),
    newGoogleIdentityAccesscontextmanagerV1OsConstraint,

    -- * GoogleIdentityAccesscontextmanagerV1ServicePerimeter
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter (..),
    newGoogleIdentityAccesscontextmanagerV1ServicePerimeter,

    -- * GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
    GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig (..),
    newGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig,

    -- * GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
    GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices (..),
    newGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  )
where

import Gogol.CloudAsset.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Represents the metadata of the longrunning operation for the AnalyzeIamPolicyLongrunning rpc.
--
-- /See:/ 'newAnalyzeIamPolicyLongrunningMetadata' smart constructor.
newtype AnalyzeIamPolicyLongrunningMetadata = AnalyzeIamPolicyLongrunningMetadata
  { -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeIamPolicyLongrunningMetadata' with the minimum fields required to make a request.
newAnalyzeIamPolicyLongrunningMetadata ::
  AnalyzeIamPolicyLongrunningMetadata
newAnalyzeIamPolicyLongrunningMetadata =
  AnalyzeIamPolicyLongrunningMetadata {createTime = Core.Nothing}

instance
  Core.FromJSON
    AnalyzeIamPolicyLongrunningMetadata
  where
  parseJSON =
    Core.withObject
      "AnalyzeIamPolicyLongrunningMetadata"
      ( \o ->
          AnalyzeIamPolicyLongrunningMetadata
            Core.<$> (o Core..:? "createTime")
      )

instance
  Core.ToJSON
    AnalyzeIamPolicyLongrunningMetadata
  where
  toJSON AnalyzeIamPolicyLongrunningMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("createTime" Core..=) Core.<$> createTime]
      )

-- | A response message for AssetService.AnalyzeIamPolicyLongrunning.
--
-- /See:/ 'newAnalyzeIamPolicyLongrunningResponse' smart constructor.
data AnalyzeIamPolicyLongrunningResponse = AnalyzeIamPolicyLongrunningResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeIamPolicyLongrunningResponse' with the minimum fields required to make a request.
newAnalyzeIamPolicyLongrunningResponse ::
  AnalyzeIamPolicyLongrunningResponse
newAnalyzeIamPolicyLongrunningResponse = AnalyzeIamPolicyLongrunningResponse

instance
  Core.FromJSON
    AnalyzeIamPolicyLongrunningResponse
  where
  parseJSON =
    Core.withObject
      "AnalyzeIamPolicyLongrunningResponse"
      ( \o ->
          Core.pure AnalyzeIamPolicyLongrunningResponse
      )

instance
  Core.ToJSON
    AnalyzeIamPolicyLongrunningResponse
  where
  toJSON = Core.const Core.emptyObject

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

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
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

-- | An asset in Google Cloud. An asset can be any resource in the Google Cloud <https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy resource hierarchy>, a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM policy). See <https://cloud.google.com/asset-inventory/docs/supported-asset-types Supported asset types> for more information.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1Asset' smart constructor.
data GoogleCloudAssetV1p7beta1Asset = GoogleCloudAssetV1p7beta1Asset
  { -- | Please also refer to the <https://cloud.google.com/access-context-manager/docs/overview#access-levels access level user guide>.
    accessLevel :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1AccessLevel),
    -- | Please also refer to the <https://cloud.google.com/access-context-manager/docs/overview#access-policies access policy user guide>.
    accessPolicy :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1AccessPolicy),
    -- | The ancestry path of an asset in Google Cloud <https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy resource hierarchy>, represented as a list of relative resource names. An ancestry path starts with the closest ancestor in the hierarchy and ends at root. If the asset is a project, folder, or organization, the ancestry path starts from the asset itself. Example: @[\"projects\/123456789\", \"folders\/5432\", \"organizations\/1234\"]@
    ancestors :: (Core.Maybe [Core.Text]),
    -- | The type of the asset. Example: @compute.googleapis.com\/Disk@ See <https://cloud.google.com/asset-inventory/docs/supported-asset-types Supported asset types> for more information.
    assetType :: (Core.Maybe Core.Text),
    -- | A representation of the Cloud IAM policy set on a Google Cloud resource. There can be a maximum of one Cloud IAM policy set on any given resource. In addition, Cloud IAM policies inherit their granted access scope from any policies set on parent resources in the resource hierarchy. Therefore, the effectively policy is the union of both the policy set on this resource and each policy set on all of the resource\'s ancestry resource levels in the hierarchy. See <https://cloud.google.com/iam/docs/policies#inheritance this topic> for more information.
    iamPolicy :: (Core.Maybe Policy),
    -- | The full name of the asset. Example: @\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1@ See <https://cloud.google.com/apis/design/resource_names#full_resource_name Resource names> for more information.
    name :: (Core.Maybe Core.Text),
    -- | A representation of an <https://cloud.google.com/resource-manager/docs/organization-policy/overview#organization_policy organization policy>. There can be more than one organization policy with different constraints set on a given resource.
    orgPolicy :: (Core.Maybe [GoogleCloudOrgpolicyV1Policy]),
    -- | The related assets of the asset of one relationship type. One asset only represents one type of relationship.
    relatedAssets :: (Core.Maybe GoogleCloudAssetV1p7beta1RelatedAssets),
    -- | A representation of the resource.
    resource :: (Core.Maybe GoogleCloudAssetV1p7beta1Resource),
    -- | Please also refer to the <https://cloud.google.com/vpc-service-controls/docs/overview service perimeter user guide>.
    servicePerimeter :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1ServicePerimeter),
    -- | The last update timestamp of an asset. update_time is updated when create\/update\/delete operation is performed.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1Asset' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1Asset ::
  GoogleCloudAssetV1p7beta1Asset
newGoogleCloudAssetV1p7beta1Asset =
  GoogleCloudAssetV1p7beta1Asset
    { accessLevel = Core.Nothing,
      accessPolicy = Core.Nothing,
      ancestors = Core.Nothing,
      assetType = Core.Nothing,
      iamPolicy = Core.Nothing,
      name = Core.Nothing,
      orgPolicy = Core.Nothing,
      relatedAssets = Core.Nothing,
      resource = Core.Nothing,
      servicePerimeter = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudAssetV1p7beta1Asset where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1Asset"
      ( \o ->
          GoogleCloudAssetV1p7beta1Asset
            Core.<$> (o Core..:? "accessLevel")
            Core.<*> (o Core..:? "accessPolicy")
            Core.<*> (o Core..:? "ancestors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "assetType")
            Core.<*> (o Core..:? "iamPolicy")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgPolicy" Core..!= Core.mempty)
            Core.<*> (o Core..:? "relatedAssets")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "servicePerimeter")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GoogleCloudAssetV1p7beta1Asset where
  toJSON GoogleCloudAssetV1p7beta1Asset {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessLevel" Core..=) Core.<$> accessLevel,
            ("accessPolicy" Core..=) Core.<$> accessPolicy,
            ("ancestors" Core..=) Core.<$> ancestors,
            ("assetType" Core..=) Core.<$> assetType,
            ("iamPolicy" Core..=) Core.<$> iamPolicy,
            ("name" Core..=) Core.<$> name,
            ("orgPolicy" Core..=) Core.<$> orgPolicy,
            ("relatedAssets" Core..=) Core.<$> relatedAssets,
            ("resource" Core..=) Core.<$> resource,
            ("servicePerimeter" Core..=)
              Core.<$> servicePerimeter,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | A BigQuery destination for exporting assets to.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1BigQueryDestination' smart constructor.
data GoogleCloudAssetV1p7beta1BigQueryDestination = GoogleCloudAssetV1p7beta1BigQueryDestination
  { -- | Required. The BigQuery dataset in format \"projects\/projectId\/datasets\/datasetId\", to which the snapshot result should be exported. If this dataset does not exist, the export call returns an INVALID_ARGUMENT error.
    dataset :: (Core.Maybe Core.Text),
    -- | If the destination table already exists and this flag is @TRUE@, the table will be overwritten by the contents of assets snapshot. If the flag is @FALSE@ or unset and the destination table already exists, the export call returns an INVALID_ARGUMEMT error.
    force :: (Core.Maybe Core.Bool),
    -- | [partition/spec] determines whether to export to partitioned table(s) and how to partition the data. If [partition/spec] is unset or [partition/spec.partition/key] is unset or @PARTITION_KEY_UNSPECIFIED@, the snapshot results will be exported to non-partitioned table(s). [force] will decide whether to overwrite existing table(s). If [partition_spec] is specified. First, the snapshot results will be written to partitioned table(s) with two additional timestamp columns, readTime and requestTime, one of which will be the partition key. Secondly, in the case when any destination table already exists, it will first try to update existing table\'s schema as necessary by appending additional columns. Then, if [force] is @TRUE@, the corresponding partition will be overwritten by the snapshot results (data in different partitions will remain intact); if [force] is unset or @FALSE@, it will append the data. An error will be returned if the schema update or data appension fails.
    partitionSpec :: (Core.Maybe GoogleCloudAssetV1p7beta1PartitionSpec),
    -- | If this flag is @TRUE@, the snapshot results will be written to one or multiple tables, each of which contains results of one asset type. The [force] and [partition/spec] fields will apply to each of them. Field [table] will be concatenated with \"/\" and the asset type names (see https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types for supported asset types) to construct per-asset-type table names, in which all non-alphanumeric characters like \".\" and \"\/\" will be substituted by \"/\". Example: if field [table] is \"mytable\" and snapshot results contain \"storage.googleapis.com\/Bucket\" assets, the corresponding table name will be \"mytable/storage/googleapis/com/Bucket\". If any of these tables does not exist, a new table with the concatenated name will be created. When [content/type] in the ExportAssetsRequest is @RESOURCE@, the schema of each table will include RECORD-type columns mapped to the nested fields in the Asset.resource.data field of that asset type (up to the 15 nested
    -- level BigQuery supports (https:\/\/cloud.google.com\/bigquery\/docs\/nested-repeated#limitations)). The fields in >15 nested levels will be stored in JSON format string as a child column of its parent RECORD column. If error occurs when exporting to any table, the whole export call will return an error but the export results that already succeed will persist. Example: if exporting to table/type/A succeeds when exporting to table/type/B fails during one export call, the results in table/type/A will persist and there will not be partial results persisting in a table.
    separateTablesPerAssetType :: (Core.Maybe Core.Bool),
    -- | Required. The BigQuery table to which the snapshot result should be written. If this table does not exist, a new table with the given name will be created.
    table :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1BigQueryDestination' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1BigQueryDestination ::
  GoogleCloudAssetV1p7beta1BigQueryDestination
newGoogleCloudAssetV1p7beta1BigQueryDestination =
  GoogleCloudAssetV1p7beta1BigQueryDestination
    { dataset = Core.Nothing,
      force = Core.Nothing,
      partitionSpec = Core.Nothing,
      separateTablesPerAssetType = Core.Nothing,
      table = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1BigQueryDestination
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1BigQueryDestination"
      ( \o ->
          GoogleCloudAssetV1p7beta1BigQueryDestination
            Core.<$> (o Core..:? "dataset")
            Core.<*> (o Core..:? "force")
            Core.<*> (o Core..:? "partitionSpec")
            Core.<*> (o Core..:? "separateTablesPerAssetType")
            Core.<*> (o Core..:? "table")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1BigQueryDestination
  where
  toJSON
    GoogleCloudAssetV1p7beta1BigQueryDestination {..} =
      Core.object
        ( Core.catMaybes
            [ ("dataset" Core..=) Core.<$> dataset,
              ("force" Core..=) Core.<$> force,
              ("partitionSpec" Core..=) Core.<$> partitionSpec,
              ("separateTablesPerAssetType" Core..=)
                Core.<$> separateTablesPerAssetType,
              ("table" Core..=) Core.<$> table
            ]
        )

-- | Export asset request.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1ExportAssetsRequest' smart constructor.
data GoogleCloudAssetV1p7beta1ExportAssetsRequest = GoogleCloudAssetV1p7beta1ExportAssetsRequest
  { -- | A list of asset types to take a snapshot for. For example: \"compute.googleapis.com\/Disk\". Regular expressions are also supported. For example: * \"compute.googleapis.com./\" snapshots resources whose asset type starts with \"compute.googleapis.com\". / \"./Instance\" snapshots resources whose asset type ends with \"Instance\". / \"./Instance./\" snapshots resources whose asset type contains \"Instance\". See <https://github.com/google/re2/wiki/Syntax RE2> for all supported regular expression syntax. If the regular expression does not match any supported asset type, an INVALID_ARGUMENT error will be returned. If specified, only matching assets will be returned, otherwise, it will snapshot all asset types. See <https://cloud.google.com/asset-inventory/docs/overview Introduction to Cloud Asset Inventory> for all supported asset types.
    assetTypes :: (Core.Maybe [Core.Text]),
    -- | Asset content type. If not specified, no content but the asset name will be returned.
    contentType ::
      ( Core.Maybe
          GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
      ),
    -- | Required. Output configuration indicating where the results will be output to.
    outputConfig :: (Core.Maybe GoogleCloudAssetV1p7beta1OutputConfig),
    -- | Timestamp to take an asset snapshot. This can only be set to a timestamp between the current time and the current time minus 35 days (inclusive). If not specified, the current time will be used. Due to delays in resource data collection and indexing, there is a volatile window during which running the same query may get different results.
    readTime :: (Core.Maybe Core.DateTime'),
    -- | A list of relationship types to export, for example: @INSTANCE_TO_INSTANCEGROUP@. This field should only be specified if content/type=RELATIONSHIP. If specified, it will snapshot [asset/types]\' specified relationships, or give errors if any relationship/types\' supported types are not in [asset/types]. If not specified, it will snapshot all [asset/types]\' supported relationships. An unspecified [asset/types] field means all supported asset_types. See <https://cloud.google.com/asset-inventory/docs/overview Introduction to Cloud Asset Inventory> for all supported asset types and relationship types.
    relationshipTypes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1ExportAssetsRequest' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1ExportAssetsRequest ::
  GoogleCloudAssetV1p7beta1ExportAssetsRequest
newGoogleCloudAssetV1p7beta1ExportAssetsRequest =
  GoogleCloudAssetV1p7beta1ExportAssetsRequest
    { assetTypes = Core.Nothing,
      contentType = Core.Nothing,
      outputConfig = Core.Nothing,
      readTime = Core.Nothing,
      relationshipTypes = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1ExportAssetsRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1ExportAssetsRequest"
      ( \o ->
          GoogleCloudAssetV1p7beta1ExportAssetsRequest
            Core.<$> (o Core..:? "assetTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "contentType")
            Core.<*> (o Core..:? "outputConfig")
            Core.<*> (o Core..:? "readTime")
            Core.<*> ( o Core..:? "relationshipTypes"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1ExportAssetsRequest
  where
  toJSON
    GoogleCloudAssetV1p7beta1ExportAssetsRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("assetTypes" Core..=) Core.<$> assetTypes,
              ("contentType" Core..=) Core.<$> contentType,
              ("outputConfig" Core..=) Core.<$> outputConfig,
              ("readTime" Core..=) Core.<$> readTime,
              ("relationshipTypes" Core..=)
                Core.<$> relationshipTypes
            ]
        )

-- | A Cloud Storage location.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1GcsDestination' smart constructor.
data GoogleCloudAssetV1p7beta1GcsDestination = GoogleCloudAssetV1p7beta1GcsDestination
  { -- | The uri of the Cloud Storage object. It\'s the same uri that is used by gsutil. Example: \"gs:\/\/bucket/name\/object/name\". See <https://cloud.google.com/storage/docs/viewing-editing-metadata Viewing and Editing Object Metadata> for more information.
    uri :: (Core.Maybe Core.Text),
    -- | The uri prefix of all generated Cloud Storage objects. Example: \"gs:\/\/bucket/name\/object/name/prefix\". Each object uri is in format: \"gs:\/\/bucket/name\/object/name/prefix\/{ASSET/TYPE}\/{SHARD/NUMBER} and only contains assets for that type. starts from 0. Example: \"gs:\/\/bucket/name\/object/name/prefix\/compute.googleapis.com\/Disk\/0\" is the first shard of output objects containing all compute.googleapis.com\/Disk assets. An INVALID/ARGUMENT error will be returned if file with the same name \"gs:\/\/bucket/name\/object/name_prefix\" already exists.
    uriPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1GcsDestination' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1GcsDestination ::
  GoogleCloudAssetV1p7beta1GcsDestination
newGoogleCloudAssetV1p7beta1GcsDestination =
  GoogleCloudAssetV1p7beta1GcsDestination
    { uri = Core.Nothing,
      uriPrefix = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1GcsDestination
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1GcsDestination"
      ( \o ->
          GoogleCloudAssetV1p7beta1GcsDestination
            Core.<$> (o Core..:? "uri") Core.<*> (o Core..:? "uriPrefix")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1GcsDestination
  where
  toJSON GoogleCloudAssetV1p7beta1GcsDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("uri" Core..=) Core.<$> uri,
            ("uriPrefix" Core..=) Core.<$> uriPrefix
          ]
      )

-- | Output configuration for export assets destination.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1OutputConfig' smart constructor.
data GoogleCloudAssetV1p7beta1OutputConfig = GoogleCloudAssetV1p7beta1OutputConfig
  { -- | Destination on BigQuery. The output table stores the fields in asset proto as columns in BigQuery.
    bigqueryDestination :: (Core.Maybe GoogleCloudAssetV1p7beta1BigQueryDestination),
    -- | Destination on Cloud Storage.
    gcsDestination :: (Core.Maybe GoogleCloudAssetV1p7beta1GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1OutputConfig' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1OutputConfig ::
  GoogleCloudAssetV1p7beta1OutputConfig
newGoogleCloudAssetV1p7beta1OutputConfig =
  GoogleCloudAssetV1p7beta1OutputConfig
    { bigqueryDestination = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1OutputConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1OutputConfig"
      ( \o ->
          GoogleCloudAssetV1p7beta1OutputConfig
            Core.<$> (o Core..:? "bigqueryDestination")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1OutputConfig
  where
  toJSON GoogleCloudAssetV1p7beta1OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigqueryDestination" Core..=)
              Core.<$> bigqueryDestination,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Specifications of BigQuery partitioned table as export destination.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1PartitionSpec' smart constructor.
newtype GoogleCloudAssetV1p7beta1PartitionSpec = GoogleCloudAssetV1p7beta1PartitionSpec
  { -- | The partition key for BigQuery partitioned table.
    partitionKey :: (Core.Maybe GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1PartitionSpec' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1PartitionSpec ::
  GoogleCloudAssetV1p7beta1PartitionSpec
newGoogleCloudAssetV1p7beta1PartitionSpec =
  GoogleCloudAssetV1p7beta1PartitionSpec {partitionKey = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1PartitionSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1PartitionSpec"
      ( \o ->
          GoogleCloudAssetV1p7beta1PartitionSpec
            Core.<$> (o Core..:? "partitionKey")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1PartitionSpec
  where
  toJSON GoogleCloudAssetV1p7beta1PartitionSpec {..} =
    Core.object
      ( Core.catMaybes
          [("partitionKey" Core..=) Core.<$> partitionKey]
      )

-- | An asset identify in Google Cloud which contains its name, type and ancestors. An asset can be any resource in the Google Cloud <https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy resource hierarchy>, a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM policy). See <https://cloud.google.com/asset-inventory/docs/supported-asset-types Supported asset types> for more information.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1RelatedAsset' smart constructor.
data GoogleCloudAssetV1p7beta1RelatedAsset = GoogleCloudAssetV1p7beta1RelatedAsset
  { -- | The ancestors of an asset in Google Cloud <https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy resource hierarchy>, represented as a list of relative resource names. An ancestry path starts with the closest ancestor in the hierarchy and ends at root. Example: @[\"projects\/123456789\", \"folders\/5432\", \"organizations\/1234\"]@
    ancestors :: (Core.Maybe [Core.Text]),
    -- | The full name of the asset. Example: @\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1@ See <https://cloud.google.com/apis/design/resource_names#full_resource_name Resource names> for more information.
    asset :: (Core.Maybe Core.Text),
    -- | The type of the asset. Example: @compute.googleapis.com\/Disk@ See <https://cloud.google.com/asset-inventory/docs/supported-asset-types Supported asset types> for more information.
    assetType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1RelatedAsset' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1RelatedAsset ::
  GoogleCloudAssetV1p7beta1RelatedAsset
newGoogleCloudAssetV1p7beta1RelatedAsset =
  GoogleCloudAssetV1p7beta1RelatedAsset
    { ancestors = Core.Nothing,
      asset = Core.Nothing,
      assetType = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1RelatedAsset
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1RelatedAsset"
      ( \o ->
          GoogleCloudAssetV1p7beta1RelatedAsset
            Core.<$> (o Core..:? "ancestors" Core..!= Core.mempty)
            Core.<*> (o Core..:? "asset")
            Core.<*> (o Core..:? "assetType")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1RelatedAsset
  where
  toJSON GoogleCloudAssetV1p7beta1RelatedAsset {..} =
    Core.object
      ( Core.catMaybes
          [ ("ancestors" Core..=) Core.<$> ancestors,
            ("asset" Core..=) Core.<$> asset,
            ("assetType" Core..=) Core.<$> assetType
          ]
      )

-- | The detailed related assets with the @relationship_type@.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1RelatedAssets' smart constructor.
data GoogleCloudAssetV1p7beta1RelatedAssets = GoogleCloudAssetV1p7beta1RelatedAssets
  { -- | The peer resources of the relationship.
    assets :: (Core.Maybe [GoogleCloudAssetV1p7beta1RelatedAsset]),
    -- | The detailed relation attributes.
    relationshipAttributes :: (Core.Maybe GoogleCloudAssetV1p7beta1RelationshipAttributes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1RelatedAssets' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1RelatedAssets ::
  GoogleCloudAssetV1p7beta1RelatedAssets
newGoogleCloudAssetV1p7beta1RelatedAssets =
  GoogleCloudAssetV1p7beta1RelatedAssets
    { assets = Core.Nothing,
      relationshipAttributes = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1RelatedAssets
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1RelatedAssets"
      ( \o ->
          GoogleCloudAssetV1p7beta1RelatedAssets
            Core.<$> (o Core..:? "assets" Core..!= Core.mempty)
            Core.<*> (o Core..:? "relationshipAttributes")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1RelatedAssets
  where
  toJSON GoogleCloudAssetV1p7beta1RelatedAssets {..} =
    Core.object
      ( Core.catMaybes
          [ ("assets" Core..=) Core.<$> assets,
            ("relationshipAttributes" Core..=)
              Core.<$> relationshipAttributes
          ]
      )

-- | The relationship attributes which include @type@, @source_resource_type@, @target_resource_type@ and @action@.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1RelationshipAttributes' smart constructor.
data GoogleCloudAssetV1p7beta1RelationshipAttributes = GoogleCloudAssetV1p7beta1RelationshipAttributes
  { -- | The detail of the relationship, e.g. @contains@, @attaches@
    action :: (Core.Maybe Core.Text),
    -- | The source asset type. Example: @compute.googleapis.com\/Instance@
    sourceResourceType :: (Core.Maybe Core.Text),
    -- | The target asset type. Example: @compute.googleapis.com\/Disk@
    targetResourceType :: (Core.Maybe Core.Text),
    -- | The unique identifier of the relationship type. Example: @INSTANCE_TO_INSTANCEGROUP@
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1RelationshipAttributes' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1RelationshipAttributes ::
  GoogleCloudAssetV1p7beta1RelationshipAttributes
newGoogleCloudAssetV1p7beta1RelationshipAttributes =
  GoogleCloudAssetV1p7beta1RelationshipAttributes
    { action = Core.Nothing,
      sourceResourceType = Core.Nothing,
      targetResourceType = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1RelationshipAttributes
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1RelationshipAttributes"
      ( \o ->
          GoogleCloudAssetV1p7beta1RelationshipAttributes
            Core.<$> (o Core..:? "action")
              Core.<*> (o Core..:? "sourceResourceType")
              Core.<*> (o Core..:? "targetResourceType")
              Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1RelationshipAttributes
  where
  toJSON
    GoogleCloudAssetV1p7beta1RelationshipAttributes {..} =
      Core.object
        ( Core.catMaybes
            [ ("action" Core..=) Core.<$> action,
              ("sourceResourceType" Core..=)
                Core.<$> sourceResourceType,
              ("targetResourceType" Core..=)
                Core.<$> targetResourceType,
              ("type" Core..=) Core.<$> type'
            ]
        )

-- | A representation of a Google Cloud resource.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1Resource' smart constructor.
data GoogleCloudAssetV1p7beta1Resource = GoogleCloudAssetV1p7beta1Resource
  { -- | The content of the resource, in which some sensitive fields are removed and may not be present.
    data' :: (Core.Maybe GoogleCloudAssetV1p7beta1Resource_Data),
    -- | The URL of the discovery document containing the resource\'s JSON schema. Example: @https:\/\/www.googleapis.com\/discovery\/v1\/apis\/compute\/v1\/rest@ This value is unspecified for resources that do not have an API based on a discovery document, such as Cloud Bigtable.
    discoveryDocumentUri :: (Core.Maybe Core.Text),
    -- | The JSON schema name listed in the discovery document. Example: @Project@ This value is unspecified for resources that do not have an API based on a discovery document, such as Cloud Bigtable.
    discoveryName :: (Core.Maybe Core.Text),
    -- | The location of the resource in Google Cloud, such as its zone and region. For more information, see https:\/\/cloud.google.com\/about\/locations\/.
    location :: (Core.Maybe Core.Text),
    -- | The full name of the immediate parent of this resource. See <https://cloud.google.com/apis/design/resource_names#full_resource_name Resource Names> for more information. For Google Cloud assets, this value is the parent resource defined in the <https://cloud.google.com/iam/docs/overview#policy_hierarchy Cloud IAM policy hierarchy>. Example: @\/\/cloudresourcemanager.googleapis.com\/projects\/my_project_123@ For third-party assets, this field may be set differently.
    parent :: (Core.Maybe Core.Text),
    -- | The REST URL for accessing the resource. An HTTP @GET@ request using this URL returns the resource itself. Example: @https:\/\/cloudresourcemanager.googleapis.com\/v1\/projects\/my-project-123@ This value is unspecified for resources without a REST API.
    resourceUrl :: (Core.Maybe Core.Text),
    -- | The API version. Example: @v1@
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1Resource' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1Resource ::
  GoogleCloudAssetV1p7beta1Resource
newGoogleCloudAssetV1p7beta1Resource =
  GoogleCloudAssetV1p7beta1Resource
    { data' = Core.Nothing,
      discoveryDocumentUri = Core.Nothing,
      discoveryName = Core.Nothing,
      location = Core.Nothing,
      parent = Core.Nothing,
      resourceUrl = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1Resource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1Resource"
      ( \o ->
          GoogleCloudAssetV1p7beta1Resource
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "discoveryDocumentUri")
            Core.<*> (o Core..:? "discoveryName")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "resourceUrl")
            Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1Resource
  where
  toJSON GoogleCloudAssetV1p7beta1Resource {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("discoveryDocumentUri" Core..=)
              Core.<$> discoveryDocumentUri,
            ("discoveryName" Core..=) Core.<$> discoveryName,
            ("location" Core..=) Core.<$> location,
            ("parent" Core..=) Core.<$> parent,
            ("resourceUrl" Core..=) Core.<$> resourceUrl,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | The content of the resource, in which some sensitive fields are removed and may not be present.
--
-- /See:/ 'newGoogleCloudAssetV1p7beta1Resource_Data' smart constructor.
newtype GoogleCloudAssetV1p7beta1Resource_Data = GoogleCloudAssetV1p7beta1Resource_Data
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudAssetV1p7beta1Resource_Data' with the minimum fields required to make a request.
newGoogleCloudAssetV1p7beta1Resource_Data ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudAssetV1p7beta1Resource_Data
newGoogleCloudAssetV1p7beta1Resource_Data addtional =
  GoogleCloudAssetV1p7beta1Resource_Data {addtional = addtional}

instance
  Core.FromJSON
    GoogleCloudAssetV1p7beta1Resource_Data
  where
  parseJSON =
    Core.withObject
      "GoogleCloudAssetV1p7beta1Resource_Data"
      ( \o ->
          GoogleCloudAssetV1p7beta1Resource_Data
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudAssetV1p7beta1Resource_Data
  where
  toJSON GoogleCloudAssetV1p7beta1Resource_Data {..} =
    Core.toJSON addtional

-- | Used in @policy_type@ to specify how @boolean_policy@ will behave at this resource.
--
-- /See:/ 'newGoogleCloudOrgpolicyV1BooleanPolicy' smart constructor.
newtype GoogleCloudOrgpolicyV1BooleanPolicy = GoogleCloudOrgpolicyV1BooleanPolicy
  { -- | If @true@, then the @Policy@ is enforced. If @false@, then any configuration is acceptable. Suppose you have a @Constraint@ @constraints\/compute.disableSerialPortAccess@ with @constraint_default@ set to @ALLOW@. A @Policy@ for that @Constraint@ exhibits the following behavior: - If the @Policy@ at this resource has enforced set to @false@, serial port connection attempts will be allowed. - If the @Policy@ at this resource has enforced set to @true@, serial port connection attempts will be refused. - If the @Policy@ at this resource is @RestoreDefault@, serial port connection attempts will be allowed. - If no @Policy@ is set at this resource or anywhere higher in the resource hierarchy, serial port connection attempts will be allowed. - If no @Policy@ is set at this resource, but one exists higher in the resource hierarchy, the behavior is as if the@Policy@ were set at this resource. The following examples demonstrate the different possible layerings: Example 1 (nearest @Constraint@ wins):
    -- @organizations\/foo@ has a @Policy@ with: {enforced: false} @projects\/bar@ has no @Policy@ set. The constraint at @projects\/bar@ and @organizations\/foo@ will not be enforced. Example 2 (enforcement gets replaced): @organizations\/foo@ has a @Policy@ with: {enforced: false} @projects\/bar@ has a @Policy@ with: {enforced: true} The constraint at @organizations\/foo@ is not enforced. The constraint at @projects\/bar@ is enforced. Example 3 (RestoreDefault): @organizations\/foo@ has a @Policy@ with: {enforced: true} @projects\/bar@ has a @Policy@ with: {RestoreDefault: {}} The constraint at @organizations\/foo@ is enforced. The constraint at @projects\/bar@ is not enforced, because @constraint_default@ for the @Constraint@ is @ALLOW@.
    enforced :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudOrgpolicyV1BooleanPolicy' with the minimum fields required to make a request.
newGoogleCloudOrgpolicyV1BooleanPolicy ::
  GoogleCloudOrgpolicyV1BooleanPolicy
newGoogleCloudOrgpolicyV1BooleanPolicy =
  GoogleCloudOrgpolicyV1BooleanPolicy {enforced = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudOrgpolicyV1BooleanPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleCloudOrgpolicyV1BooleanPolicy"
      ( \o ->
          GoogleCloudOrgpolicyV1BooleanPolicy
            Core.<$> (o Core..:? "enforced")
      )

instance
  Core.ToJSON
    GoogleCloudOrgpolicyV1BooleanPolicy
  where
  toJSON GoogleCloudOrgpolicyV1BooleanPolicy {..} =
    Core.object
      ( Core.catMaybes
          [("enforced" Core..=) Core.<$> enforced]
      )

-- | Used in @policy_type@ to specify how @list_policy@ behaves at this resource. @ListPolicy@ can define specific values and subtrees of Cloud Resource Manager resource hierarchy (@Organizations@, @Folders@, @Projects@) that are allowed or denied by setting the @allowed_values@ and @denied_values@ fields. This is achieved by using the @under:@ and optional @is:@ prefixes. The @under:@ prefix is used to denote resource subtree values. The @is:@ prefix is used to denote specific values, and is required only if the value contains a \":\". Values prefixed with \"is:\" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - \"projects\/\", e.g. \"projects\/tokyo-rain-123\" - \"folders\/\", e.g. \"folders\/1234\" - \"organizations\/\", e.g. \"organizations\/1234\" The @supports_under@ field of the associated @Constraint@ defines whether ancestry prefixes can be used. You can set @allowed_values@ and @denied_values@ in the same @Policy@ if @all_values@ is
-- @ALL_VALUES_UNSPECIFIED@. @ALLOW@ or @DENY@ are used to allow or deny all values. If @all_values@ is set to either @ALLOW@ or @DENY@, @allowed_values@ and @denied_values@ must be unset.
--
-- /See:/ 'newGoogleCloudOrgpolicyV1ListPolicy' smart constructor.
data GoogleCloudOrgpolicyV1ListPolicy = GoogleCloudOrgpolicyV1ListPolicy
  { -- | The policy all_values state.
    allValues :: (Core.Maybe GoogleCloudOrgpolicyV1ListPolicy_AllValues),
    -- | List of values allowed at this resource. Can only be set if @all_values@ is set to @ALL_VALUES_UNSPECIFIED@.
    allowedValues :: (Core.Maybe [Core.Text]),
    -- | List of values denied at this resource. Can only be set if @all_values@ is set to @ALL_VALUES_UNSPECIFIED@.
    deniedValues :: (Core.Maybe [Core.Text]),
    -- | Determines the inheritance behavior for this @Policy@. By default, a @ListPolicy@ set at a resource supersedes any @Policy@ set anywhere up the resource hierarchy. However, if @inherit_from_parent@ is set to @true@, then the values from the effective @Policy@ of the parent resource are inherited, meaning the values set in this @Policy@ are added to the values inherited up the hierarchy. Setting @Policy@ hierarchies that inherit both allowed values and denied values isn\'t recommended in most circumstances to keep the configuration simple and understandable. However, it is possible to set a @Policy@ with @allowed_values@ set that inherits a @Policy@ with @denied_values@ set. In this case, the values that are allowed must be in @allowed_values@ and not present in @denied_values@. For example, suppose you have a @Constraint@ @constraints\/serviceuser.services@, which has a @constraint_type@ of @list_constraint@, and with @constraint_default@ set to @ALLOW@. Suppose that at the Organization level, a @Policy@ is
    -- applied that restricts the allowed API activations to {@E1@, @E2@}. Then, if a @Policy@ is applied to a project below the Organization that has @inherit_from_parent@ set to @false@ and field all/values set to DENY, then an attempt to activate any API will be denied. The following examples demonstrate different possible layerings for @projects\/bar@ parented by @organizations\/foo@: Example 1 (no inherited values): @organizations\/foo@ has a @Policy@ with values: {allowed/values: \"E1\" allowed/values:\"E2\"} @projects\/bar@ has @inherit_from_parent@ @false@ and values: {allowed/values: \"E3\" allowed/values: \"E4\"} The accepted values at @organizations\/foo@ are @E1@, @E2@. The accepted values at @projects\/bar@ are @E3@, and @E4@. Example 2 (inherited values): @organizations\/foo@ has a @Policy@ with values: {allowed/values: \"E1\" allowed/values:\"E2\"} @projects\/bar@ has a @Policy@ with values: {value: \"E3\" value: \"E4\" inherit/from/parent: true} The accepted values at @organizations\/foo@ are @E1@,
    -- @E2@. The accepted values at @projects\/bar@ are @E1@, @E2@, @E3@, and @E4@. Example 3 (inheriting both allowed and denied values): @organizations\/foo@ has a @Policy@ with values: {allowed/values: \"E1\" allowed/values: \"E2\"} @projects\/bar@ has a @Policy@ with: {denied/values: \"E1\"} The accepted values at @organizations\/foo@ are @E1@, @E2@. The value accepted at @projects\/bar@ is @E2@. Example 4 (RestoreDefault): @organizations\/foo@ has a @Policy@ with values: {allowed/values: \"E1\" allowed/values:\"E2\"} @projects\/bar@ has a @Policy@ with values: {RestoreDefault: {}} The accepted values at @organizations\/foo@ are @E1@, @E2@. The accepted values at @projects\/bar@ are either all or none depending on the value of @constraint_default@ (if @ALLOW@, all; if @DENY@, none). Example 5 (no policy inherits parent policy): @organizations\/foo@ has no @Policy@ set. @projects\/bar@ has no @Policy@ set. The accepted values at both levels are either all or none depending on the value of @constraint_default@ (if
    -- @ALLOW@, all; if @DENY@, none). Example 6 (ListConstraint allowing all): @organizations\/foo@ has a @Policy@ with values: {allowed/values: \"E1\" allowed/values: \"E2\"} @projects\/bar@ has a @Policy@ with: {all: ALLOW} The accepted values at @organizations\/foo@ are @E1@, E2@. Any value is accepted at@projects\/bar@. Example 7 (ListConstraint allowing none):@organizations\/foo@has a@Policy@with values: {allowed_values: \"E1\" allowed_values: \"E2\"}@projects\/bar@has a@Policy@with: {all: DENY} The accepted values at@organizations\/foo@are@E1@, E2@. No value is accepted at @projects\/bar@. Example 10 (allowed and denied subtrees of Resource Manager hierarchy): Given the following resource hierarchy O1->{F1, F2}; F1->{P1}; F2->{P2, P3}, @organizations\/foo@ has a @Policy@ with values: {allowed/values: \"under:organizations\/O1\"} @projects\/bar@ has a @Policy@ with: {allowed/values: \"under:projects\/P3\"} {denied_values: \"under:folders\/F2\"} The accepted values at @organizations\/foo@ are
    -- @organizations\/O1@, @folders\/F1@, @folders\/F2@, @projects\/P1@, @projects\/P2@, @projects\/P3@. The accepted values at @projects\/bar@ are @organizations\/O1@, @folders\/F1@, @projects\/P1@.
    inheritFromParent :: (Core.Maybe Core.Bool),
    -- | Optional. The Google Cloud Console will try to default to a configuration that matches the value specified in this @Policy@. If @suggested_value@ is not set, it will inherit the value specified higher in the hierarchy, unless @inherit_from_parent@ is @false@.
    suggestedValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudOrgpolicyV1ListPolicy' with the minimum fields required to make a request.
newGoogleCloudOrgpolicyV1ListPolicy ::
  GoogleCloudOrgpolicyV1ListPolicy
newGoogleCloudOrgpolicyV1ListPolicy =
  GoogleCloudOrgpolicyV1ListPolicy
    { allValues = Core.Nothing,
      allowedValues = Core.Nothing,
      deniedValues = Core.Nothing,
      inheritFromParent = Core.Nothing,
      suggestedValue = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudOrgpolicyV1ListPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleCloudOrgpolicyV1ListPolicy"
      ( \o ->
          GoogleCloudOrgpolicyV1ListPolicy
            Core.<$> (o Core..:? "allValues")
            Core.<*> (o Core..:? "allowedValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "deniedValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "inheritFromParent")
            Core.<*> (o Core..:? "suggestedValue")
      )

instance Core.ToJSON GoogleCloudOrgpolicyV1ListPolicy where
  toJSON GoogleCloudOrgpolicyV1ListPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("allValues" Core..=) Core.<$> allValues,
            ("allowedValues" Core..=) Core.<$> allowedValues,
            ("deniedValues" Core..=) Core.<$> deniedValues,
            ("inheritFromParent" Core..=)
              Core.<$> inheritFromParent,
            ("suggestedValue" Core..=) Core.<$> suggestedValue
          ]
      )

-- | Defines a Cloud Organization @Policy@ which is used to specify @Constraints@ for configurations of Cloud Platform resources.
--
-- /See:/ 'newGoogleCloudOrgpolicyV1Policy' smart constructor.
data GoogleCloudOrgpolicyV1Policy = GoogleCloudOrgpolicyV1Policy
  { -- | For boolean @Constraints@, whether to enforce the @Constraint@ or not.
    booleanPolicy :: (Core.Maybe GoogleCloudOrgpolicyV1BooleanPolicy),
    -- | The name of the @Constraint@ the @Policy@ is configuring, for example, @constraints\/serviceuser.services@. A </resource-manager/docs/organization-policy/org-policy-constraints list of available constraints> is available. Immutable after creation.
    constraint :: (Core.Maybe Core.Text),
    -- | An opaque tag indicating the current version of the @Policy@, used for concurrency control. When the @Policy@ is returned from either a @GetPolicy@ or a @ListOrgPolicy@ request, this @etag@ indicates the version of the current @Policy@ to use when executing a read-modify-write loop. When the @Policy@ is returned from a @GetEffectivePolicy@ request, the @etag@ will be unset. When the @Policy@ is used in a @SetOrgPolicy@ method, use the @etag@ value that was returned from a @GetOrgPolicy@ request as part of a read-modify-write loop for concurrency control. Not setting the @etag@in a @SetOrgPolicy@ request will result in an unconditional write of the @Policy@.
    etag :: (Core.Maybe Core.Base64),
    -- | List of values either allowed or disallowed.
    listPolicy :: (Core.Maybe GoogleCloudOrgpolicyV1ListPolicy),
    -- | Restores the default behavior of the constraint; independent of @Constraint@ type.
    restoreDefault :: (Core.Maybe GoogleCloudOrgpolicyV1RestoreDefault),
    -- | The time stamp the @Policy@ was previously updated. This is set by the server, not specified by the caller, and represents the last time a call to @SetOrgPolicy@ was made for that @Policy@. Any value set by the client will be ignored.
    updateTime :: (Core.Maybe Core.DateTime'),
    -- | Version of the @Policy@. Default version is 0;
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudOrgpolicyV1Policy' with the minimum fields required to make a request.
newGoogleCloudOrgpolicyV1Policy ::
  GoogleCloudOrgpolicyV1Policy
newGoogleCloudOrgpolicyV1Policy =
  GoogleCloudOrgpolicyV1Policy
    { booleanPolicy = Core.Nothing,
      constraint = Core.Nothing,
      etag = Core.Nothing,
      listPolicy = Core.Nothing,
      restoreDefault = Core.Nothing,
      updateTime = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GoogleCloudOrgpolicyV1Policy where
  parseJSON =
    Core.withObject
      "GoogleCloudOrgpolicyV1Policy"
      ( \o ->
          GoogleCloudOrgpolicyV1Policy
            Core.<$> (o Core..:? "booleanPolicy")
            Core.<*> (o Core..:? "constraint")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "listPolicy")
            Core.<*> (o Core..:? "restoreDefault")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GoogleCloudOrgpolicyV1Policy where
  toJSON GoogleCloudOrgpolicyV1Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("booleanPolicy" Core..=) Core.<$> booleanPolicy,
            ("constraint" Core..=) Core.<$> constraint,
            ("etag" Core..=) Core.<$> etag,
            ("listPolicy" Core..=) Core.<$> listPolicy,
            ("restoreDefault" Core..=) Core.<$> restoreDefault,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Ignores policies set above this resource and restores the @constraint_default@ enforcement behavior of the specific @Constraint@ at this resource. Suppose that @constraint_default@ is set to @ALLOW@ for the @Constraint@ @constraints\/serviceuser.services@. Suppose that organization foo.com sets a @Policy@ at their Organization resource node that restricts the allowed service activations to deny all service activations. They could then set a @Policy@ with the @policy_type@ @restore_default@ on several experimental projects, restoring the @constraint_default@ enforcement of the @Constraint@ for only those projects, allowing those projects to have all services activated.
--
-- /See:/ 'newGoogleCloudOrgpolicyV1RestoreDefault' smart constructor.
data GoogleCloudOrgpolicyV1RestoreDefault = GoogleCloudOrgpolicyV1RestoreDefault
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudOrgpolicyV1RestoreDefault' with the minimum fields required to make a request.
newGoogleCloudOrgpolicyV1RestoreDefault ::
  GoogleCloudOrgpolicyV1RestoreDefault
newGoogleCloudOrgpolicyV1RestoreDefault = GoogleCloudOrgpolicyV1RestoreDefault

instance
  Core.FromJSON
    GoogleCloudOrgpolicyV1RestoreDefault
  where
  parseJSON =
    Core.withObject
      "GoogleCloudOrgpolicyV1RestoreDefault"
      ( \o ->
          Core.pure GoogleCloudOrgpolicyV1RestoreDefault
      )

instance
  Core.ToJSON
    GoogleCloudOrgpolicyV1RestoreDefault
  where
  toJSON = Core.const Core.emptyObject

-- | An @AccessLevel@ is a label that can be applied to requests to Google Cloud services, along with a list of requirements necessary for the label to be applied.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1AccessLevel' smart constructor.
data GoogleIdentityAccesscontextmanagerV1AccessLevel = GoogleIdentityAccesscontextmanagerV1AccessLevel
  { -- | A @BasicLevel@ composed of @Conditions@.
    basic :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1BasicLevel),
    -- | A @CustomLevel@ written in the Common Expression Language.
    custom :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1CustomLevel),
    -- | Description of the @AccessLevel@ and its use. Does not affect behavior.
    description :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the Access Level. The @short_name@ component must begin with a letter and only include alphanumeric and \'_\'. Format: @accessPolicies\/{access_policy}\/accessLevels\/{access_level}@. The maximum length of the @access_level@ component is 50 characters.
    name :: (Core.Maybe Core.Text),
    -- | Human readable title. Must be unique within the Policy.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1AccessLevel' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1AccessLevel ::
  GoogleIdentityAccesscontextmanagerV1AccessLevel
newGoogleIdentityAccesscontextmanagerV1AccessLevel =
  GoogleIdentityAccesscontextmanagerV1AccessLevel
    { basic = Core.Nothing,
      custom = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      title = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1AccessLevel
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1AccessLevel"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1AccessLevel
            Core.<$> (o Core..:? "basic") Core.<*> (o Core..:? "custom")
              Core.<*> (o Core..:? "description")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "title")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1AccessLevel
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1AccessLevel {..} =
      Core.object
        ( Core.catMaybes
            [ ("basic" Core..=) Core.<$> basic,
              ("custom" Core..=) Core.<$> custom,
              ("description" Core..=) Core.<$> description,
              ("name" Core..=) Core.<$> name,
              ("title" Core..=) Core.<$> title
            ]
        )

-- | @AccessPolicy@ is a container for @AccessLevels@ (which define the necessary attributes to use Google Cloud services) and @ServicePerimeters@ (which define regions of services able to freely pass data within a perimeter). An access policy is globally visible within an organization, and the restrictions it specifies apply to all projects within an organization.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1AccessPolicy' smart constructor.
data GoogleIdentityAccesscontextmanagerV1AccessPolicy = GoogleIdentityAccesscontextmanagerV1AccessPolicy
  { -- | Output only. An opaque identifier for the current version of the @AccessPolicy@. This will always be a strongly validated etag, meaning that two Access Polices will be identical if and only if their etags are identical. Clients should not expect this to be in any specific format.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. Resource name of the @AccessPolicy@. Format: @accessPolicies\/{access_policy}@
    name :: (Core.Maybe Core.Text),
    -- | Required. The parent of this @AccessPolicy@ in the Cloud Resource Hierarchy. Currently immutable once created. Format: @organizations\/{organization_id}@
    parent :: (Core.Maybe Core.Text),
    -- | The scopes of a policy define which resources an ACM policy can restrict, and where ACM resources can be referenced. For example, a policy with scopes=[\"folders\/123\"] has the following behavior: - vpcsc perimeters can only restrict projects within folders\/123 - access levels can only be referenced by resources within folders\/123. If empty, there are no limitations on which resources can be restricted by an ACM policy, and there are no limitations on where ACM resources can be referenced. Only one policy can include a given scope (attempting to create a second policy which includes \"folders\/123\" will result in an error). Currently, scopes cannot be modified after a policy is created. Currently, policies can only have a single scope. Format: list of @folders\/{folder_number}@ or @projects\/{project_number}@
    scopes :: (Core.Maybe [Core.Text]),
    -- | Required. Human readable title. Does not affect behavior.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1AccessPolicy' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1AccessPolicy ::
  GoogleIdentityAccesscontextmanagerV1AccessPolicy
newGoogleIdentityAccesscontextmanagerV1AccessPolicy =
  GoogleIdentityAccesscontextmanagerV1AccessPolicy
    { etag = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      scopes = Core.Nothing,
      title = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1AccessPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1AccessPolicy"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1AccessPolicy
            Core.<$> (o Core..:? "etag") Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "parent")
              Core.<*> (o Core..:? "scopes" Core..!= Core.mempty)
              Core.<*> (o Core..:? "title")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1AccessPolicy
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1AccessPolicy {..} =
      Core.object
        ( Core.catMaybes
            [ ("etag" Core..=) Core.<$> etag,
              ("name" Core..=) Core.<$> name,
              ("parent" Core..=) Core.<$> parent,
              ("scopes" Core..=) Core.<$> scopes,
              ("title" Core..=) Core.<$> title
            ]
        )

-- | Identification for an API Operation.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1ApiOperation' smart constructor.
data GoogleIdentityAccesscontextmanagerV1ApiOperation = GoogleIdentityAccesscontextmanagerV1ApiOperation
  { -- | API methods or permissions to allow. Method or permission must belong to the service specified by @service_name@ field. A single MethodSelector entry with @*@ specified for the @method@ field will allow all methods AND permissions for the service specified in @service_name@.
    methodSelectors :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1MethodSelector]),
    -- | The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with @service_name@ field set to @*@ will allow all methods AND permissions for all services.
    serviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1ApiOperation' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1ApiOperation ::
  GoogleIdentityAccesscontextmanagerV1ApiOperation
newGoogleIdentityAccesscontextmanagerV1ApiOperation =
  GoogleIdentityAccesscontextmanagerV1ApiOperation
    { methodSelectors = Core.Nothing,
      serviceName = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1ApiOperation
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1ApiOperation"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1ApiOperation
            Core.<$> (o Core..:? "methodSelectors" Core..!= Core.mempty)
              Core.<*> (o Core..:? "serviceName")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1ApiOperation
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1ApiOperation {..} =
      Core.object
        ( Core.catMaybes
            [ ("methodSelectors" Core..=)
                Core.<$> methodSelectors,
              ("serviceName" Core..=) Core.<$> serviceName
            ]
        )

-- | @BasicLevel@ is an @AccessLevel@ using a set of recommended features.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1BasicLevel' smart constructor.
data GoogleIdentityAccesscontextmanagerV1BasicLevel = GoogleIdentityAccesscontextmanagerV1BasicLevel
  { -- | How the @conditions@ list should be combined to determine if a request is granted this @AccessLevel@. If AND is used, each @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. If OR is used, at least one @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. Default behavior is AND.
    combiningFunction ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction
      ),
    -- | Required. A list of requirements for the @AccessLevel@ to be granted.
    conditions :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1Condition])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1BasicLevel' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1BasicLevel ::
  GoogleIdentityAccesscontextmanagerV1BasicLevel
newGoogleIdentityAccesscontextmanagerV1BasicLevel =
  GoogleIdentityAccesscontextmanagerV1BasicLevel
    { combiningFunction = Core.Nothing,
      conditions = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1BasicLevel
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1BasicLevel"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1BasicLevel
            Core.<$> (o Core..:? "combiningFunction")
              Core.<*> (o Core..:? "conditions" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1BasicLevel
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1BasicLevel {..} =
      Core.object
        ( Core.catMaybes
            [ ("combiningFunction" Core..=)
                Core.<$> combiningFunction,
              ("conditions" Core..=) Core.<$> conditions
            ]
        )

-- | A condition necessary for an @AccessLevel@ to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1Condition' smart constructor.
data GoogleIdentityAccesscontextmanagerV1Condition = GoogleIdentityAccesscontextmanagerV1Condition
  { -- | Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.
    devicePolicy :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1DevicePolicy),
    -- | CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, \"192.0.2.0\/24\" is accepted but \"192.0.2.1\/24\" is not. Similarly, for IPv6, \"2001:db8::\/32\" is accepted whereas \"2001:db8::1\/32\" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.
    ipSubnetworks :: (Core.Maybe [Core.Text]),
    -- | The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: @user:{emailid}@ @serviceAccount:{emailid}@ If not specified, a request may come from any user.
    members :: (Core.Maybe [Core.Text]),
    -- | Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields, each field must be false for the Condition overall to be satisfied. Defaults to false.
    negate :: (Core.Maybe Core.Bool),
    -- | The request must originate from one of the provided countries\/regions. Must be valid ISO 3166-1 alpha-2 codes.
    regions :: (Core.Maybe [Core.Text]),
    -- | A list of other access levels defined in the same @Policy@, referenced by resource name. Referencing an @AccessLevel@ which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: \"@accessPolicies\/MY_POLICY\/accessLevels\/LEVEL_NAME\"@
    requiredAccessLevels :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1Condition' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1Condition ::
  GoogleIdentityAccesscontextmanagerV1Condition
newGoogleIdentityAccesscontextmanagerV1Condition =
  GoogleIdentityAccesscontextmanagerV1Condition
    { devicePolicy = Core.Nothing,
      ipSubnetworks = Core.Nothing,
      members = Core.Nothing,
      negate = Core.Nothing,
      regions = Core.Nothing,
      requiredAccessLevels = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1Condition
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1Condition"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1Condition
            Core.<$> (o Core..:? "devicePolicy")
              Core.<*> (o Core..:? "ipSubnetworks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "members" Core..!= Core.mempty)
              Core.<*> (o Core..:? "negate")
              Core.<*> (o Core..:? "regions" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "requiredAccessLevels"
                           Core..!= Core.mempty
                       )
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1Condition
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1Condition {..} =
      Core.object
        ( Core.catMaybes
            [ ("devicePolicy" Core..=) Core.<$> devicePolicy,
              ("ipSubnetworks" Core..=) Core.<$> ipSubnetworks,
              ("members" Core..=) Core.<$> members,
              ("negate" Core..=) Core.<$> negate,
              ("regions" Core..=) Core.<$> regions,
              ("requiredAccessLevels" Core..=)
                Core.<$> requiredAccessLevels
            ]
        )

-- | @CustomLevel@ is an @AccessLevel@ using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https:\/\/github.com\/google\/cel-spec
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1CustomLevel' smart constructor.
newtype GoogleIdentityAccesscontextmanagerV1CustomLevel = GoogleIdentityAccesscontextmanagerV1CustomLevel
  { -- | Required. A Cloud CEL expression evaluating to a boolean.
    expr :: (Core.Maybe Expr)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1CustomLevel' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1CustomLevel ::
  GoogleIdentityAccesscontextmanagerV1CustomLevel
newGoogleIdentityAccesscontextmanagerV1CustomLevel =
  GoogleIdentityAccesscontextmanagerV1CustomLevel {expr = Core.Nothing}

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1CustomLevel
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1CustomLevel"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1CustomLevel
            Core.<$> (o Core..:? "expr")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1CustomLevel
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1CustomLevel {..} =
      Core.object
        (Core.catMaybes [("expr" Core..=) Core.<$> expr])

-- | @DevicePolicy@ specifies device specific restrictions necessary to acquire a given access level. A @DevicePolicy@ specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. @DevicePolicy@ acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os/type : DESKTOP/WINDOWS, os/type : DESKTOP/LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1DevicePolicy' smart constructor.
data GoogleIdentityAccesscontextmanagerV1DevicePolicy = GoogleIdentityAccesscontextmanagerV1DevicePolicy
  { -- | Allowed device management levels, an empty list allows all management levels.
    allowedDeviceManagementLevels ::
      ( Core.Maybe
          [GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem]
      ),
    -- | Allowed encryptions statuses, an empty list allows all statuses.
    allowedEncryptionStatuses ::
      ( Core.Maybe
          [GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem]
      ),
    -- | Allowed OS versions, an empty list allows all types and all versions.
    osConstraints :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1OsConstraint]),
    -- | Whether the device needs to be approved by the customer admin.
    requireAdminApproval :: (Core.Maybe Core.Bool),
    -- | Whether the device needs to be corp owned.
    requireCorpOwned :: (Core.Maybe Core.Bool),
    -- | Whether or not screenlock is required for the DevicePolicy to be true. Defaults to @false@.
    requireScreenlock :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1DevicePolicy' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1DevicePolicy ::
  GoogleIdentityAccesscontextmanagerV1DevicePolicy
newGoogleIdentityAccesscontextmanagerV1DevicePolicy =
  GoogleIdentityAccesscontextmanagerV1DevicePolicy
    { allowedDeviceManagementLevels = Core.Nothing,
      allowedEncryptionStatuses = Core.Nothing,
      osConstraints = Core.Nothing,
      requireAdminApproval = Core.Nothing,
      requireCorpOwned = Core.Nothing,
      requireScreenlock = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1DevicePolicy
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1DevicePolicy"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1DevicePolicy
            Core.<$> ( o Core..:? "allowedDeviceManagementLevels"
                         Core..!= Core.mempty
                     )
              Core.<*> ( o Core..:? "allowedEncryptionStatuses"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "osConstraints" Core..!= Core.mempty)
              Core.<*> (o Core..:? "requireAdminApproval")
              Core.<*> (o Core..:? "requireCorpOwned")
              Core.<*> (o Core..:? "requireScreenlock")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1DevicePolicy
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1DevicePolicy {..} =
      Core.object
        ( Core.catMaybes
            [ ("allowedDeviceManagementLevels" Core..=)
                Core.<$> allowedDeviceManagementLevels,
              ("allowedEncryptionStatuses" Core..=)
                Core.<$> allowedEncryptionStatuses,
              ("osConstraints" Core..=) Core.<$> osConstraints,
              ("requireAdminApproval" Core..=)
                Core.<$> requireAdminApproval,
              ("requireCorpOwned" Core..=)
                Core.<$> requireCorpOwned,
              ("requireScreenlock" Core..=)
                Core.<$> requireScreenlock
            ]
        )

-- | Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1EgressFrom' smart constructor.
data GoogleIdentityAccesscontextmanagerV1EgressFrom = GoogleIdentityAccesscontextmanagerV1EgressFrom
  { -- | A list of identities that are allowed access through this [EgressPolicy]. Should be in the format of email address. The email address should represent individual user or service account only.
    identities :: (Core.Maybe [Core.Text]),
    -- | Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
    identityType ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1EgressFrom' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1EgressFrom ::
  GoogleIdentityAccesscontextmanagerV1EgressFrom
newGoogleIdentityAccesscontextmanagerV1EgressFrom =
  GoogleIdentityAccesscontextmanagerV1EgressFrom
    { identities = Core.Nothing,
      identityType = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1EgressFrom
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1EgressFrom"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1EgressFrom
            Core.<$> (o Core..:? "identities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "identityType")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1EgressFrom
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1EgressFrom {..} =
      Core.object
        ( Core.catMaybes
            [ ("identities" Core..=) Core.<$> identities,
              ("identityType" Core..=) Core.<$> identityType
            ]
        )

-- | Policy for egress from perimeter. EgressPolicies match requests based on @egress_from@ and @egress_to@ stanzas. For an EgressPolicy to match, both @egress_from@ and @egress_to@ stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the /resources/ that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1EgressPolicy' smart constructor.
data GoogleIdentityAccesscontextmanagerV1EgressPolicy = GoogleIdentityAccesscontextmanagerV1EgressPolicy
  { -- | Defines conditions on the source of a request causing this EgressPolicy to apply.
    egressFrom :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1EgressFrom),
    -- | Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.
    egressTo :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1EgressTo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1EgressPolicy' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1EgressPolicy ::
  GoogleIdentityAccesscontextmanagerV1EgressPolicy
newGoogleIdentityAccesscontextmanagerV1EgressPolicy =
  GoogleIdentityAccesscontextmanagerV1EgressPolicy
    { egressFrom = Core.Nothing,
      egressTo = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1EgressPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1EgressPolicy"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1EgressPolicy
            Core.<$> (o Core..:? "egressFrom")
              Core.<*> (o Core..:? "egressTo")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1EgressPolicy
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1EgressPolicy {..} =
      Core.object
        ( Core.catMaybes
            [ ("egressFrom" Core..=) Core.<$> egressFrom,
              ("egressTo" Core..=) Core.<$> egressTo
            ]
        )

-- | Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the @resources@ specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match @operations@ AND @resources@ fields in order to be allowed egress out of the perimeter.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1EgressTo' smart constructor.
data GoogleIdentityAccesscontextmanagerV1EgressTo = GoogleIdentityAccesscontextmanagerV1EgressTo
  { -- | A list of ApiOperations allowed to be performed by the sources specified in the corresponding EgressFrom. A request matches if it uses an operation\/service in this list.
    operations :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1ApiOperation]),
    -- | A list of resources, currently only projects in the form @projects\/@, that are allowed to be accessed by sources defined in the corresponding EgressFrom. A request matches if it contains a resource in this list. If @*@ is specified for @resources@, then this EgressTo rule will authorize access to all resources outside the perimeter.
    resources :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1EgressTo' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1EgressTo ::
  GoogleIdentityAccesscontextmanagerV1EgressTo
newGoogleIdentityAccesscontextmanagerV1EgressTo =
  GoogleIdentityAccesscontextmanagerV1EgressTo
    { operations = Core.Nothing,
      resources = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1EgressTo
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1EgressTo"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1EgressTo
            Core.<$> (o Core..:? "operations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1EgressTo
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1EgressTo {..} =
      Core.object
        ( Core.catMaybes
            [ ("operations" Core..=) Core.<$> operations,
              ("resources" Core..=) Core.<$> resources
            ]
        )

-- | Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in @sources@ AND identity related fields in order to match.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1IngressFrom' smart constructor.
data GoogleIdentityAccesscontextmanagerV1IngressFrom = GoogleIdentityAccesscontextmanagerV1IngressFrom
  { -- | A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.
    identities :: (Core.Maybe [Core.Text]),
    -- | Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
    identityType ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
      ),
    -- | Sources that this IngressPolicy authorizes access from.
    sources :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1IngressSource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1IngressFrom' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1IngressFrom ::
  GoogleIdentityAccesscontextmanagerV1IngressFrom
newGoogleIdentityAccesscontextmanagerV1IngressFrom =
  GoogleIdentityAccesscontextmanagerV1IngressFrom
    { identities = Core.Nothing,
      identityType = Core.Nothing,
      sources = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1IngressFrom
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1IngressFrom"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1IngressFrom
            Core.<$> (o Core..:? "identities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "identityType")
              Core.<*> (o Core..:? "sources" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1IngressFrom
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1IngressFrom {..} =
      Core.object
        ( Core.catMaybes
            [ ("identities" Core..=) Core.<$> identities,
              ("identityType" Core..=) Core.<$> identityType,
              ("sources" Core..=) Core.<$> sources
            ]
        )

-- | Policy for ingress into ServicePerimeter. IngressPolicies match requests based on @ingress_from@ and @ingress_to@ stanzas. For an ingress policy to match, both the @ingress_from@ and @ingress_to@ stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and\/or actions they match using the @ingress_to@ field.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1IngressPolicy' smart constructor.
data GoogleIdentityAccesscontextmanagerV1IngressPolicy = GoogleIdentityAccesscontextmanagerV1IngressPolicy
  { -- | Defines the conditions on the source of a request causing this IngressPolicy to apply.
    ingressFrom :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1IngressFrom),
    -- | Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.
    ingressTo :: (Core.Maybe GoogleIdentityAccesscontextmanagerV1IngressTo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1IngressPolicy' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1IngressPolicy ::
  GoogleIdentityAccesscontextmanagerV1IngressPolicy
newGoogleIdentityAccesscontextmanagerV1IngressPolicy =
  GoogleIdentityAccesscontextmanagerV1IngressPolicy
    { ingressFrom = Core.Nothing,
      ingressTo = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1IngressPolicy
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1IngressPolicy"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1IngressPolicy
            Core.<$> (o Core..:? "ingressFrom")
              Core.<*> (o Core..:? "ingressTo")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1IngressPolicy
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1IngressPolicy {..} =
      Core.object
        ( Core.catMaybes
            [ ("ingressFrom" Core..=) Core.<$> ingressFrom,
              ("ingressTo" Core..=) Core.<$> ingressTo
            ]
        )

-- | The source that IngressPolicy authorizes access from.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1IngressSource' smart constructor.
data GoogleIdentityAccesscontextmanagerV1IngressSource = GoogleIdentityAccesscontextmanagerV1IngressSource
  { -- | An AccessLevel resource name that allow resources within the ServicePerimeters to be accessed from the internet. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will cause an error. If no AccessLevel names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: @accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL@. If a single @*@ is specified for @access_level@, then all IngressSources will be allowed.
    accessLevel :: (Core.Maybe Core.Text),
    -- | A Google Cloud resource that is allowed to ingress the perimeter. Requests from these resources will be allowed to access perimeter data. Currently only projects are allowed. Format: @projects\/{project_number}@ The project may be in any Google Cloud organization, not just the organization that the perimeter is defined in. @*@ is not allowed, the case of allowing all Google Cloud resources only is not supported.
    resource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1IngressSource' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1IngressSource ::
  GoogleIdentityAccesscontextmanagerV1IngressSource
newGoogleIdentityAccesscontextmanagerV1IngressSource =
  GoogleIdentityAccesscontextmanagerV1IngressSource
    { accessLevel = Core.Nothing,
      resource = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1IngressSource
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1IngressSource"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1IngressSource
            Core.<$> (o Core..:? "accessLevel")
              Core.<*> (o Core..:? "resource")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1IngressSource
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1IngressSource {..} =
      Core.object
        ( Core.catMaybes
            [ ("accessLevel" Core..=) Core.<$> accessLevel,
              ("resource" Core..=) Core.<$> resource
            ]
        )

-- | Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in @operations@ AND @resources@ in order to match.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1IngressTo' smart constructor.
data GoogleIdentityAccesscontextmanagerV1IngressTo = GoogleIdentityAccesscontextmanagerV1IngressTo
  { -- | A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.
    operations :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1ApiOperation]),
    -- | A list of resources, currently only projects in the form @projects\/@, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single @*@ is specified, then access to all resources inside the perimeter are allowed.
    resources :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1IngressTo' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1IngressTo ::
  GoogleIdentityAccesscontextmanagerV1IngressTo
newGoogleIdentityAccesscontextmanagerV1IngressTo =
  GoogleIdentityAccesscontextmanagerV1IngressTo
    { operations = Core.Nothing,
      resources = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1IngressTo
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1IngressTo"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1IngressTo
            Core.<$> (o Core..:? "operations" Core..!= Core.mempty)
              Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1IngressTo
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1IngressTo {..} =
      Core.object
        ( Core.catMaybes
            [ ("operations" Core..=) Core.<$> operations,
              ("resources" Core..=) Core.<$> resources
            ]
        )

-- | An allowed method or permission of a service specified in ApiOperation.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1MethodSelector' smart constructor.
data GoogleIdentityAccesscontextmanagerV1MethodSelector = GoogleIdentityAccesscontextmanagerV1MethodSelector
  { -- | Value for @method@ should be a valid method name for the corresponding @service_name@ in ApiOperation. If @*@ used as value for @method@, then ALL methods and permissions are allowed.
    method :: (Core.Maybe Core.Text),
    -- | Value for @permission@ should be a valid Cloud IAM permission for the corresponding @service_name@ in ApiOperation.
    permission :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1MethodSelector' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1MethodSelector ::
  GoogleIdentityAccesscontextmanagerV1MethodSelector
newGoogleIdentityAccesscontextmanagerV1MethodSelector =
  GoogleIdentityAccesscontextmanagerV1MethodSelector
    { method = Core.Nothing,
      permission = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1MethodSelector
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1MethodSelector"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1MethodSelector
            Core.<$> (o Core..:? "method")
              Core.<*> (o Core..:? "permission")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1MethodSelector
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1MethodSelector {..} =
      Core.object
        ( Core.catMaybes
            [ ("method" Core..=) Core.<$> method,
              ("permission" Core..=) Core.<$> permission
            ]
        )

-- | A restriction on the OS type and version of devices making requests.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1OsConstraint' smart constructor.
data GoogleIdentityAccesscontextmanagerV1OsConstraint = GoogleIdentityAccesscontextmanagerV1OsConstraint
  { -- | The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: @\"major.minor.patch\"@. Examples: @\"10.5.301\"@, @\"9.2.1\"@.
    minimumVersion :: (Core.Maybe Core.Text),
    -- | Required. The allowed OS type.
    osType ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
      ),
    -- | Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
    requireVerifiedChromeOs :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1OsConstraint' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1OsConstraint ::
  GoogleIdentityAccesscontextmanagerV1OsConstraint
newGoogleIdentityAccesscontextmanagerV1OsConstraint =
  GoogleIdentityAccesscontextmanagerV1OsConstraint
    { minimumVersion = Core.Nothing,
      osType = Core.Nothing,
      requireVerifiedChromeOs = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1OsConstraint
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1OsConstraint"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1OsConstraint
            Core.<$> (o Core..:? "minimumVersion")
              Core.<*> (o Core..:? "osType")
              Core.<*> (o Core..:? "requireVerifiedChromeOs")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1OsConstraint
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1OsConstraint {..} =
      Core.object
        ( Core.catMaybes
            [ ("minimumVersion" Core..=) Core.<$> minimumVersion,
              ("osType" Core..=) Core.<$> osType,
              ("requireVerifiedChromeOs" Core..=)
                Core.<$> requireVerifiedChromeOs
            ]
        )

-- | @ServicePerimeter@ describes a set of Google Cloud resources which can freely import and export data amongst themselves, but not export outside of the @ServicePerimeter@. If a request with a source within this @ServicePerimeter@ has a target outside of the @ServicePerimeter@, the request will be blocked. Otherwise the request is allowed. There are two types of Service Perimeter - Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud project can only belong to a single regular Service Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as members, a single Google Cloud project may belong to multiple Service Perimeter Bridges.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1ServicePerimeter' smart constructor.
data GoogleIdentityAccesscontextmanagerV1ServicePerimeter = GoogleIdentityAccesscontextmanagerV1ServicePerimeter
  { -- | Description of the @ServicePerimeter@ and its use. Does not affect behavior.
    description :: (Core.Maybe Core.Text),
    -- | Required. Resource name for the ServicePerimeter. The @short_name@ component must begin with a letter and only include alphanumeric and \'_\'. Format: @accessPolicies\/{access_policy}\/servicePerimeters\/{service_perimeter}@
    name :: (Core.Maybe Core.Text),
    -- | Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
    perimeterType ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType
      ),
    -- | Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the \"use/explicit/dry/run/spec\" flag is set.
    spec ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
      ),
    -- | Current ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.
    status ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
      ),
    -- | Human readable title. Must be unique within the Policy.
    title :: (Core.Maybe Core.Text),
    -- | Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration (\"spec\") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config (\"status\") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use/explicit/dry/run/spec must bet set to True if any of the fields in the spec are set to non-default values.
    useExplicitDryRunSpec :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1ServicePerimeter' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1ServicePerimeter ::
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter
newGoogleIdentityAccesscontextmanagerV1ServicePerimeter =
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter
    { description = Core.Nothing,
      name = Core.Nothing,
      perimeterType = Core.Nothing,
      spec = Core.Nothing,
      status = Core.Nothing,
      title = Core.Nothing,
      useExplicitDryRunSpec = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1ServicePerimeter"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1ServicePerimeter
            Core.<$> (o Core..:? "description")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "perimeterType")
              Core.<*> (o Core..:? "spec")
              Core.<*> (o Core..:? "status")
              Core.<*> (o Core..:? "title")
              Core.<*> (o Core..:? "useExplicitDryRunSpec")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter {..} =
      Core.object
        ( Core.catMaybes
            [ ("description" Core..=) Core.<$> description,
              ("name" Core..=) Core.<$> name,
              ("perimeterType" Core..=) Core.<$> perimeterType,
              ("spec" Core..=) Core.<$> spec,
              ("status" Core..=) Core.<$> status,
              ("title" Core..=) Core.<$> title,
              ("useExplicitDryRunSpec" Core..=)
                Core.<$> useExplicitDryRunSpec
            ]
        )

-- | @ServicePerimeterConfig@ specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig' smart constructor.
data GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig = GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
  { -- | A list of @AccessLevel@ resource names that allow resources within the @ServicePerimeter@ to be accessed from the internet. @AccessLevels@ listed must be in the same policy as this @ServicePerimeter@. Referencing a nonexistent @AccessLevel@ is a syntax error. If no @AccessLevel@ names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: @\"accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\"@. For Service Perimeter Bridge, must be empty.
    accessLevels :: (Core.Maybe [Core.Text]),
    -- | List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
    egressPolicies :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1EgressPolicy]),
    -- | List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
    ingressPolicies :: (Core.Maybe [GoogleIdentityAccesscontextmanagerV1IngressPolicy]),
    -- | A list of Google Cloud resources that are inside of the service perimeter. Currently only projects are allowed. Format: @projects\/{project_number}@
    resources :: (Core.Maybe [Core.Text]),
    -- | Google Cloud services that are subject to the Service Perimeter restrictions. For example, if @storage.googleapis.com@ is specified, access to the storage buckets inside the perimeter must meet the perimeter\'s access restrictions.
    restrictedServices :: (Core.Maybe [Core.Text]),
    -- | Configuration for APIs allowed within Perimeter.
    vpcAccessibleServices ::
      ( Core.Maybe
          GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig ::
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
newGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig =
  GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
    { accessLevels = Core.Nothing,
      egressPolicies = Core.Nothing,
      ingressPolicies = Core.Nothing,
      resources = Core.Nothing,
      restrictedServices = Core.Nothing,
      vpcAccessibleServices = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
            Core.<$> (o Core..:? "accessLevels" Core..!= Core.mempty)
              Core.<*> (o Core..:? "egressPolicies" Core..!= Core.mempty)
              Core.<*> (o Core..:? "ingressPolicies" Core..!= Core.mempty)
              Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "restrictedServices"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "vpcAccessibleServices")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("accessLevels" Core..=) Core.<$> accessLevels,
              ("egressPolicies" Core..=) Core.<$> egressPolicies,
              ("ingressPolicies" Core..=) Core.<$> ingressPolicies,
              ("resources" Core..=) Core.<$> resources,
              ("restrictedServices" Core..=)
                Core.<$> restrictedServices,
              ("vpcAccessibleServices" Core..=)
                Core.<$> vpcAccessibleServices
            ]
        )

-- | Specifies how APIs are allowed to communicate within the Service Perimeter.
--
-- /See:/ 'newGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices' smart constructor.
data GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices = GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
  { -- | The list of APIs usable within the Service Perimeter. Must be empty unless \'enable_restriction\' is True. You can specify a list of individual services, as well as include the \'RESTRICTED-SERVICES\' value, which automatically includes all of the services protected by the perimeter.
    allowedServices :: (Core.Maybe [Core.Text]),
    -- | Whether to restrict API calls within the Service Perimeter to the list of APIs specified in \'allowed_services\'.
    enableRestriction :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices' with the minimum fields required to make a request.
newGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices ::
  GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
newGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices =
  GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
    { allowedServices = Core.Nothing,
      enableRestriction = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
  where
  parseJSON =
    Core.withObject
      "GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices"
      ( \o ->
          GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
            Core.<$> (o Core..:? "allowedServices" Core..!= Core.mempty)
              Core.<*> (o Core..:? "enableRestriction")
      )

instance
  Core.ToJSON
    GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
  where
  toJSON
    GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices {..} =
      Core.object
        ( Core.catMaybes
            [ ("allowedServices" Core..=)
                Core.<$> allowedServices,
              ("enableRestriction" Core..=)
                Core.<$> enableRestriction
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
