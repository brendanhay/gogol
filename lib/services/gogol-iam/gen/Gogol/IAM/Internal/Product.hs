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
-- Module      : Gogol.IAM.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IAM.Internal.Product
  ( -- * GoogleIamAdminV1AuditData
    GoogleIamAdminV1AuditData (..),
    newGoogleIamAdminV1AuditData,

    -- * GoogleIamAdminV1AuditDataPermissionDelta
    GoogleIamAdminV1AuditDataPermissionDelta (..),
    newGoogleIamAdminV1AuditDataPermissionDelta,

    -- * GoogleIamV1BindingDelta
    GoogleIamV1BindingDelta (..),
    newGoogleIamV1BindingDelta,

    -- * GoogleIamV1LoggingAuditData
    GoogleIamV1LoggingAuditData (..),
    newGoogleIamV1LoggingAuditData,

    -- * GoogleIamV1PolicyDelta
    GoogleIamV1PolicyDelta (..),
    newGoogleIamV1PolicyDelta,

    -- * GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
    GoogleIamV1betaWorkloadIdentityPoolOperationMetadata (..),
    newGoogleIamV1betaWorkloadIdentityPoolOperationMetadata,

    -- * GoogleIamV2DenyRule
    GoogleIamV2DenyRule (..),
    newGoogleIamV2DenyRule,

    -- * GoogleIamV2ListPoliciesResponse
    GoogleIamV2ListPoliciesResponse (..),
    newGoogleIamV2ListPoliciesResponse,

    -- * GoogleIamV2Policy
    GoogleIamV2Policy (..),
    newGoogleIamV2Policy,

    -- * GoogleIamV2Policy_Annotations
    GoogleIamV2Policy_Annotations (..),
    newGoogleIamV2Policy_Annotations,

    -- * GoogleIamV2PolicyOperationMetadata
    GoogleIamV2PolicyOperationMetadata (..),
    newGoogleIamV2PolicyOperationMetadata,

    -- * GoogleIamV2PolicyRule
    GoogleIamV2PolicyRule (..),
    newGoogleIamV2PolicyRule,

    -- * GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- * GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- * GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- * GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- * GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- * GoogleTypeExpr
    GoogleTypeExpr (..),
    newGoogleTypeExpr,
  )
where

import Gogol.IAM.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Audit log information specific to Cloud IAM admin APIs. This message is serialized as an @Any@ type in the @ServiceData@ message of an @AuditLog@ message.
--
-- /See:/ 'newGoogleIamAdminV1AuditData' smart constructor.
newtype GoogleIamAdminV1AuditData = GoogleIamAdminV1AuditData
  { -- | The permission_delta when when creating or updating a Role.
    permissionDelta :: (Core.Maybe GoogleIamAdminV1AuditDataPermissionDelta)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamAdminV1AuditData' with the minimum fields required to make a request.
newGoogleIamAdminV1AuditData ::
  GoogleIamAdminV1AuditData
newGoogleIamAdminV1AuditData =
  GoogleIamAdminV1AuditData {permissionDelta = Core.Nothing}

instance Core.FromJSON GoogleIamAdminV1AuditData where
  parseJSON =
    Core.withObject
      "GoogleIamAdminV1AuditData"
      ( \o ->
          GoogleIamAdminV1AuditData
            Core.<$> (o Core..:? "permissionDelta")
      )

instance Core.ToJSON GoogleIamAdminV1AuditData where
  toJSON GoogleIamAdminV1AuditData {..} =
    Core.object
      ( Core.catMaybes
          [ ("permissionDelta" Core..=)
              Core.<$> permissionDelta
          ]
      )

-- | A PermissionDelta message to record the added/permissions and removed/permissions inside a role.
--
-- /See:/ 'newGoogleIamAdminV1AuditDataPermissionDelta' smart constructor.
data GoogleIamAdminV1AuditDataPermissionDelta = GoogleIamAdminV1AuditDataPermissionDelta
  { -- | Added permissions.
    addedPermissions :: (Core.Maybe [Core.Text]),
    -- | Removed permissions.
    removedPermissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamAdminV1AuditDataPermissionDelta' with the minimum fields required to make a request.
newGoogleIamAdminV1AuditDataPermissionDelta ::
  GoogleIamAdminV1AuditDataPermissionDelta
newGoogleIamAdminV1AuditDataPermissionDelta =
  GoogleIamAdminV1AuditDataPermissionDelta
    { addedPermissions = Core.Nothing,
      removedPermissions = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIamAdminV1AuditDataPermissionDelta
  where
  parseJSON =
    Core.withObject
      "GoogleIamAdminV1AuditDataPermissionDelta"
      ( \o ->
          GoogleIamAdminV1AuditDataPermissionDelta
            Core.<$> (o Core..:? "addedPermissions")
            Core.<*> (o Core..:? "removedPermissions")
      )

instance
  Core.ToJSON
    GoogleIamAdminV1AuditDataPermissionDelta
  where
  toJSON GoogleIamAdminV1AuditDataPermissionDelta {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedPermissions" Core..=)
              Core.<$> addedPermissions,
            ("removedPermissions" Core..=)
              Core.<$> removedPermissions
          ]
      )

-- | One delta entry for Binding. Each individual change (only one member in each entry) to a binding will be a separate entry.
--
-- /See:/ 'newGoogleIamV1BindingDelta' smart constructor.
data GoogleIamV1BindingDelta = GoogleIamV1BindingDelta
  { -- | The action that was performed on a Binding. Required
    action :: (Core.Maybe GoogleIamV1BindingDelta_Action),
    -- | The condition that is associated with this binding.
    condition :: (Core.Maybe GoogleTypeExpr),
    -- | A single identity requesting access for a Google Cloud resource. Follows the same format of Binding.members. Required
    member :: (Core.Maybe Core.Text),
    -- | Role that is assigned to @members@. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. Required
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1BindingDelta' with the minimum fields required to make a request.
newGoogleIamV1BindingDelta ::
  GoogleIamV1BindingDelta
newGoogleIamV1BindingDelta =
  GoogleIamV1BindingDelta
    { action = Core.Nothing,
      condition = Core.Nothing,
      member = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1BindingDelta where
  parseJSON =
    Core.withObject
      "GoogleIamV1BindingDelta"
      ( \o ->
          GoogleIamV1BindingDelta
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "member")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON GoogleIamV1BindingDelta where
  toJSON GoogleIamV1BindingDelta {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("condition" Core..=) Core.<$> condition,
            ("member" Core..=) Core.<$> member,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | Audit log information specific to Cloud IAM. This message is serialized as an @Any@ type in the @ServiceData@ message of an @AuditLog@ message.
--
-- /See:/ 'newGoogleIamV1LoggingAuditData' smart constructor.
newtype GoogleIamV1LoggingAuditData = GoogleIamV1LoggingAuditData
  { -- | Policy delta between the original policy and the newly set policy.
    policyDelta :: (Core.Maybe GoogleIamV1PolicyDelta)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1LoggingAuditData' with the minimum fields required to make a request.
newGoogleIamV1LoggingAuditData ::
  GoogleIamV1LoggingAuditData
newGoogleIamV1LoggingAuditData =
  GoogleIamV1LoggingAuditData {policyDelta = Core.Nothing}

instance Core.FromJSON GoogleIamV1LoggingAuditData where
  parseJSON =
    Core.withObject
      "GoogleIamV1LoggingAuditData"
      ( \o ->
          GoogleIamV1LoggingAuditData
            Core.<$> (o Core..:? "policyDelta")
      )

instance Core.ToJSON GoogleIamV1LoggingAuditData where
  toJSON GoogleIamV1LoggingAuditData {..} =
    Core.object
      ( Core.catMaybes
          [("policyDelta" Core..=) Core.<$> policyDelta]
      )

-- | The difference delta between two policies.
--
-- /See:/ 'newGoogleIamV1PolicyDelta' smart constructor.
newtype GoogleIamV1PolicyDelta = GoogleIamV1PolicyDelta
  { -- | The delta for Bindings between two policies.
    bindingDeltas :: (Core.Maybe [GoogleIamV1BindingDelta])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1PolicyDelta' with the minimum fields required to make a request.
newGoogleIamV1PolicyDelta ::
  GoogleIamV1PolicyDelta
newGoogleIamV1PolicyDelta =
  GoogleIamV1PolicyDelta {bindingDeltas = Core.Nothing}

instance Core.FromJSON GoogleIamV1PolicyDelta where
  parseJSON =
    Core.withObject
      "GoogleIamV1PolicyDelta"
      ( \o ->
          GoogleIamV1PolicyDelta
            Core.<$> (o Core..:? "bindingDeltas")
      )

instance Core.ToJSON GoogleIamV1PolicyDelta where
  toJSON GoogleIamV1PolicyDelta {..} =
    Core.object
      ( Core.catMaybes
          [("bindingDeltas" Core..=) Core.<$> bindingDeltas]
      )

-- | Metadata for long-running WorkloadIdentityPool operations.
--
-- /See:/ 'newGoogleIamV1betaWorkloadIdentityPoolOperationMetadata' smart constructor.
data GoogleIamV1betaWorkloadIdentityPoolOperationMetadata = GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1betaWorkloadIdentityPoolOperationMetadata' with the minimum fields required to make a request.
newGoogleIamV1betaWorkloadIdentityPoolOperationMetadata ::
  GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
newGoogleIamV1betaWorkloadIdentityPoolOperationMetadata =
  GoogleIamV1betaWorkloadIdentityPoolOperationMetadata

instance
  Core.FromJSON
    GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleIamV1betaWorkloadIdentityPoolOperationMetadata"
      ( \o ->
          Core.pure
            GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
      )

instance
  Core.ToJSON
    GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | A deny rule in an IAM deny policy.
--
-- /See:/ 'newGoogleIamV2DenyRule' smart constructor.
data GoogleIamV2DenyRule = GoogleIamV2DenyRule
  { -- | The condition that determines whether this deny rule applies to a request. If the condition expression evaluates to @true@, then the deny rule is applied; otherwise, the deny rule is not applied. Each deny rule is evaluated independently. If this deny rule does not apply to a request, other deny rules might still apply. The condition can use CEL functions that evaluate <https://cloud.google.com/iam/help/conditions/resource-tags resource tags>. Other functions and operators are not supported.
    denialCondition :: (Core.Maybe GoogleTypeExpr),
    -- | The permissions that are explicitly denied by this rule. Each permission uses the format @{service_fqdn}\/{resource}.{verb}@, where @{service_fqdn}@ is the fully qualified domain name for the service. For example, @iam.googleapis.com\/roles.list@.
    deniedPermissions :: (Core.Maybe [Core.Text]),
    -- | The identities that are prevented from using one or more permissions on Google Cloud resources. This field can contain the following values: * @principalSet:\/\/goog\/public:all@: A special identifier that represents any principal that is on the internet, even if they do not have a Google Account or are not logged in. * @principal:\/\/goog\/subject\/{email_id}@: A specific Google Account. Includes Gmail, Cloud Identity, and Google Workspace user accounts. For example, @principal:\/\/goog\/subject\/alice\@example.com@. * @deleted:principal:\/\/goog\/subject\/{email_id}?uid={uid}@: A specific Google Account that was deleted recently. For example, @deleted:principal:\/\/goog\/subject\/alice\@example.com?uid=1234567890@. If the Google Account is recovered, this identifier reverts to the standard identifier for a Google Account. * @principalSet:\/\/goog\/group\/{group_id}@: A Google group. For example, @principalSet:\/\/goog\/group\/admins\@example.com@. *
    -- @deleted:principalSet:\/\/goog\/group\/{group_id}?uid={uid}@: A Google group that was deleted recently. For example, @deleted:principalSet:\/\/goog\/group\/admins\@example.com?uid=1234567890@. If the Google group is restored, this identifier reverts to the standard identifier for a Google group. * @principal:\/\/iam.googleapis.com\/projects\/-\/serviceAccounts\/{service_account_id}@: A Google Cloud service account. For example, @principal:\/\/iam.googleapis.com\/projects\/-\/serviceAccounts\/my-service-account\@iam.gserviceaccount.com@. * @deleted:principal:\/\/iam.googleapis.com\/projects\/-\/serviceAccounts\/{service_account_id}?uid={uid}@: A Google Cloud service account that was deleted recently. For example, @deleted:principal:\/\/iam.googleapis.com\/projects\/-\/serviceAccounts\/my-service-account\@iam.gserviceaccount.com?uid=1234567890@. If the service account is undeleted, this identifier reverts to the standard identifier for a service account. *
    -- @principalSet:\/\/goog\/cloudIdentityCustomerId\/{customer_id}@: All of the principals associated with the specified Google Workspace or Cloud Identity customer ID. For example, @principalSet:\/\/goog\/cloudIdentityCustomerId\/C01Abc35@.
    deniedPrincipals :: (Core.Maybe [Core.Text]),
    -- | Specifies the permissions that this rule excludes from the set of denied permissions given by @denied_permissions@. If a permission appears in @denied_permissions@ /and/ in @exception_permissions@ then it will /not/ be denied. The excluded permissions can be specified using the same syntax as @denied_permissions@.
    exceptionPermissions :: (Core.Maybe [Core.Text]),
    -- | The identities that are excluded from the deny rule, even if they are listed in the @denied_principals@. For example, you could add a Google group to the @denied_principals@, then exclude specific users who belong to that group. This field can contain the same values as the @denied_principals@ field, excluding @principalSet:\/\/goog\/public:all@, which represents all users on the internet.
    exceptionPrincipals :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV2DenyRule' with the minimum fields required to make a request.
newGoogleIamV2DenyRule ::
  GoogleIamV2DenyRule
newGoogleIamV2DenyRule =
  GoogleIamV2DenyRule
    { denialCondition = Core.Nothing,
      deniedPermissions = Core.Nothing,
      deniedPrincipals = Core.Nothing,
      exceptionPermissions = Core.Nothing,
      exceptionPrincipals = Core.Nothing
    }

instance Core.FromJSON GoogleIamV2DenyRule where
  parseJSON =
    Core.withObject
      "GoogleIamV2DenyRule"
      ( \o ->
          GoogleIamV2DenyRule
            Core.<$> (o Core..:? "denialCondition")
            Core.<*> (o Core..:? "deniedPermissions")
            Core.<*> (o Core..:? "deniedPrincipals")
            Core.<*> (o Core..:? "exceptionPermissions")
            Core.<*> (o Core..:? "exceptionPrincipals")
      )

instance Core.ToJSON GoogleIamV2DenyRule where
  toJSON GoogleIamV2DenyRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("denialCondition" Core..=)
              Core.<$> denialCondition,
            ("deniedPermissions" Core..=)
              Core.<$> deniedPermissions,
            ("deniedPrincipals" Core..=)
              Core.<$> deniedPrincipals,
            ("exceptionPermissions" Core..=)
              Core.<$> exceptionPermissions,
            ("exceptionPrincipals" Core..=)
              Core.<$> exceptionPrincipals
          ]
      )

-- | Response message for @ListPolicies@.
--
-- /See:/ 'newGoogleIamV2ListPoliciesResponse' smart constructor.
data GoogleIamV2ListPoliciesResponse = GoogleIamV2ListPoliciesResponse
  { -- | A page token that you can use in a ListPoliciesRequest to retrieve the next page. If this field is omitted, there are no additional pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Metadata for the policies that are attached to the resource.
    policies :: (Core.Maybe [GoogleIamV2Policy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV2ListPoliciesResponse' with the minimum fields required to make a request.
newGoogleIamV2ListPoliciesResponse ::
  GoogleIamV2ListPoliciesResponse
newGoogleIamV2ListPoliciesResponse =
  GoogleIamV2ListPoliciesResponse
    { nextPageToken = Core.Nothing,
      policies = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIamV2ListPoliciesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleIamV2ListPoliciesResponse"
      ( \o ->
          GoogleIamV2ListPoliciesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "policies")
      )

instance Core.ToJSON GoogleIamV2ListPoliciesResponse where
  toJSON GoogleIamV2ListPoliciesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("policies" Core..=) Core.<$> policies
          ]
      )

-- | Data for an IAM policy.
--
-- /See:/ 'newGoogleIamV2Policy' smart constructor.
data GoogleIamV2Policy = GoogleIamV2Policy
  { -- | A key-value map to store arbitrary metadata for the @Policy@. Keys can be up to 63 characters. Values can be up to 255 characters.
    annotations :: (Core.Maybe GoogleIamV2Policy_Annotations),
    -- | Output only. The time when the @Policy@ was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time when the @Policy@ was deleted. Empty if the policy is not deleted.
    deleteTime :: (Core.Maybe Core.DateTime),
    -- | A user-specified description of the @Policy@. This value can be up to 63 characters.
    displayName :: (Core.Maybe Core.Text),
    -- | An opaque tag that identifies the current version of the @Policy@. IAM uses this value to help manage concurrent updates, so they do not cause one update to be overwritten by another. If this field is present in a CreatePolicy request, the value is ignored.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The kind of the @Policy@. Always contains the value @DenyPolicy@.
    kind :: (Core.Maybe Core.Text),
    -- | Immutable. The resource name of the @Policy@, which must be unique. Format: @policies\/{attachment_point}\/denypolicies\/{policy_id}@ The attachment point is identified by its URL-encoded full resource name, which means that the forward-slash character, @\/@, must be written as @%2F@. For example, @policies\/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project\/denypolicies\/my-deny-policy@. For organizations and folders, use the numeric ID in the full resource name. For projects, requests can use the alphanumeric or the numeric ID. Responses always contain the numeric ID.
    name :: (Core.Maybe Core.Text),
    -- | A list of rules that specify the behavior of the @Policy@. All of the rules should be of the @kind@ specified in the @Policy@.
    rules :: (Core.Maybe [GoogleIamV2PolicyRule]),
    -- | Immutable. The globally unique ID of the @Policy@. Assigned automatically when the @Policy@ is created.
    uid :: (Core.Maybe Core.Text),
    -- | Output only. The time when the @Policy@ was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV2Policy' with the minimum fields required to make a request.
newGoogleIamV2Policy ::
  GoogleIamV2Policy
newGoogleIamV2Policy =
  GoogleIamV2Policy
    { annotations = Core.Nothing,
      createTime = Core.Nothing,
      deleteTime = Core.Nothing,
      displayName = Core.Nothing,
      etag = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      rules = Core.Nothing,
      uid = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleIamV2Policy where
  parseJSON =
    Core.withObject
      "GoogleIamV2Policy"
      ( \o ->
          GoogleIamV2Policy
            Core.<$> (o Core..:? "annotations")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deleteTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "rules")
            Core.<*> (o Core..:? "uid")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GoogleIamV2Policy where
  toJSON GoogleIamV2Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotations" Core..=) Core.<$> annotations,
            ("createTime" Core..=) Core.<$> createTime,
            ("deleteTime" Core..=) Core.<$> deleteTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("etag" Core..=) Core.<$> etag,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("rules" Core..=) Core.<$> rules,
            ("uid" Core..=) Core.<$> uid,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | A key-value map to store arbitrary metadata for the @Policy@. Keys can be up to 63 characters. Values can be up to 255 characters.
--
-- /See:/ 'newGoogleIamV2Policy_Annotations' smart constructor.
newtype GoogleIamV2Policy_Annotations = GoogleIamV2Policy_Annotations
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV2Policy_Annotations' with the minimum fields required to make a request.
newGoogleIamV2Policy_Annotations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleIamV2Policy_Annotations
newGoogleIamV2Policy_Annotations additional =
  GoogleIamV2Policy_Annotations {additional = additional}

instance Core.FromJSON GoogleIamV2Policy_Annotations where
  parseJSON =
    Core.withObject
      "GoogleIamV2Policy_Annotations"
      ( \o ->
          GoogleIamV2Policy_Annotations
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleIamV2Policy_Annotations where
  toJSON GoogleIamV2Policy_Annotations {..} =
    Core.toJSON additional

-- | Metadata for long-running @Policy@ operations.
--
-- /See:/ 'newGoogleIamV2PolicyOperationMetadata' smart constructor.
newtype GoogleIamV2PolicyOperationMetadata = GoogleIamV2PolicyOperationMetadata
  { -- | Timestamp when the @google.longrunning.Operation@ was created.
    createTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV2PolicyOperationMetadata' with the minimum fields required to make a request.
newGoogleIamV2PolicyOperationMetadata ::
  GoogleIamV2PolicyOperationMetadata
newGoogleIamV2PolicyOperationMetadata =
  GoogleIamV2PolicyOperationMetadata {createTime = Core.Nothing}

instance
  Core.FromJSON
    GoogleIamV2PolicyOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleIamV2PolicyOperationMetadata"
      ( \o ->
          GoogleIamV2PolicyOperationMetadata
            Core.<$> (o Core..:? "createTime")
      )

instance
  Core.ToJSON
    GoogleIamV2PolicyOperationMetadata
  where
  toJSON GoogleIamV2PolicyOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("createTime" Core..=) Core.<$> createTime]
      )

-- | A single rule in a @Policy@.
--
-- /See:/ 'newGoogleIamV2PolicyRule' smart constructor.
data GoogleIamV2PolicyRule = GoogleIamV2PolicyRule
  { -- | A rule for a deny policy.
    denyRule :: (Core.Maybe GoogleIamV2DenyRule),
    -- | A user-specified description of the rule. This value can be up to 256 characters.
    description :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV2PolicyRule' with the minimum fields required to make a request.
newGoogleIamV2PolicyRule ::
  GoogleIamV2PolicyRule
newGoogleIamV2PolicyRule =
  GoogleIamV2PolicyRule {denyRule = Core.Nothing, description = Core.Nothing}

instance Core.FromJSON GoogleIamV2PolicyRule where
  parseJSON =
    Core.withObject
      "GoogleIamV2PolicyRule"
      ( \o ->
          GoogleIamV2PolicyRule
            Core.<$> (o Core..:? "denyRule")
            Core.<*> (o Core..:? "description")
      )

instance Core.ToJSON GoogleIamV2PolicyRule where
  toJSON GoogleIamV2PolicyRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("denyRule" Core..=) Core.<$> denyRule,
            ("description" Core..=) Core.<$> description
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation = GoogleLongrunningOperation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe GoogleRpcStatus),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe GoogleLongrunningOperation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe GoogleLongrunningOperation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
newGoogleLongrunningOperation ::
  GoogleLongrunningOperation
newGoogleLongrunningOperation =
  GoogleLongrunningOperation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunningOperation where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation"
      ( \o ->
          GoogleLongrunningOperation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON GoogleLongrunningOperation where
  toJSON GoogleLongrunningOperation {..} =
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
-- /See:/ 'newGoogleLongrunningOperation_Metadata' smart constructor.
newtype GoogleLongrunningOperation_Metadata = GoogleLongrunningOperation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunningOperation_Metadata
newGoogleLongrunningOperation_Metadata additional =
  GoogleLongrunningOperation_Metadata {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunningOperation_Metadata
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation_Metadata"
      ( \o ->
          GoogleLongrunningOperation_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunningOperation_Metadata
  where
  toJSON GoogleLongrunningOperation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunningOperation_Response' smart constructor.
newtype GoogleLongrunningOperation_Response = GoogleLongrunningOperation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Response' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunningOperation_Response
newGoogleLongrunningOperation_Response additional =
  GoogleLongrunningOperation_Response {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunningOperation_Response
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation_Response"
      ( \o ->
          GoogleLongrunningOperation_Response
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunningOperation_Response
  where
  toJSON GoogleLongrunningOperation_Response {..} =
    Core.toJSON additional

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpcStatus' smart constructor.
data GoogleRpcStatus = GoogleRpcStatus
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [GoogleRpcStatus_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
newGoogleRpcStatus ::
  GoogleRpcStatus
newGoogleRpcStatus =
  GoogleRpcStatus
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON GoogleRpcStatus where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus"
      ( \o ->
          GoogleRpcStatus
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON GoogleRpcStatus where
  toJSON GoogleRpcStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newGoogleRpcStatus_DetailsItem' smart constructor.
newtype GoogleRpcStatus_DetailsItem = GoogleRpcStatus_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem additional =
  GoogleRpcStatus_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus_DetailsItem"
      ( \o ->
          GoogleRpcStatus_DetailsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleRpcStatus_DetailsItem where
  toJSON GoogleRpcStatus_DetailsItem {..} =
    Core.toJSON additional

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newGoogleTypeExpr' smart constructor.
data GoogleTypeExpr = GoogleTypeExpr
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

-- | Creates a value of 'GoogleTypeExpr' with the minimum fields required to make a request.
newGoogleTypeExpr ::
  GoogleTypeExpr
newGoogleTypeExpr =
  GoogleTypeExpr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleTypeExpr where
  parseJSON =
    Core.withObject
      "GoogleTypeExpr"
      ( \o ->
          GoogleTypeExpr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleTypeExpr where
  toJSON GoogleTypeExpr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )
