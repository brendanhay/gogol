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
  ( -- * AdminAuditData
    AdminAuditData (..),
    newAdminAuditData,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditData
    AuditData (..),
    newAuditData,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * AuditableService
    AuditableService (..),
    newAuditableService,

    -- * Aws
    Aws (..),
    newAws,

    -- * Binding
    Binding (..),
    newBinding,

    -- * BindingDelta
    BindingDelta (..),
    newBindingDelta,

    -- * CreateRoleRequest
    CreateRoleRequest (..),
    newCreateRoleRequest,

    -- * CreateServiceAccountKeyRequest
    CreateServiceAccountKeyRequest (..),
    newCreateServiceAccountKeyRequest,

    -- * CreateServiceAccountRequest
    CreateServiceAccountRequest (..),
    newCreateServiceAccountRequest,

    -- * DisableServiceAccountKeyRequest
    DisableServiceAccountKeyRequest (..),
    newDisableServiceAccountKeyRequest,

    -- * DisableServiceAccountRequest
    DisableServiceAccountRequest (..),
    newDisableServiceAccountRequest,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EnableServiceAccountKeyRequest
    EnableServiceAccountKeyRequest (..),
    newEnableServiceAccountKeyRequest,

    -- * EnableServiceAccountRequest
    EnableServiceAccountRequest (..),
    newEnableServiceAccountRequest,

    -- * Expr
    Expr (..),
    newExpr,

    -- * LintPolicyRequest
    LintPolicyRequest (..),
    newLintPolicyRequest,

    -- * LintPolicyResponse
    LintPolicyResponse (..),
    newLintPolicyResponse,

    -- * LintResult
    LintResult (..),
    newLintResult,

    -- * ListRolesResponse
    ListRolesResponse (..),
    newListRolesResponse,

    -- * ListServiceAccountKeysResponse
    ListServiceAccountKeysResponse (..),
    newListServiceAccountKeysResponse,

    -- * ListServiceAccountsResponse
    ListServiceAccountsResponse (..),
    newListServiceAccountsResponse,

    -- * ListWorkloadIdentityPoolProvidersResponse
    ListWorkloadIdentityPoolProvidersResponse (..),
    newListWorkloadIdentityPoolProvidersResponse,

    -- * ListWorkloadIdentityPoolsResponse
    ListWorkloadIdentityPoolsResponse (..),
    newListWorkloadIdentityPoolsResponse,

    -- * Oidc
    Oidc (..),
    newOidc,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * PatchServiceAccountRequest
    PatchServiceAccountRequest (..),
    newPatchServiceAccountRequest,

    -- * Permission
    Permission (..),
    newPermission,

    -- * PermissionDelta
    PermissionDelta (..),
    newPermissionDelta,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PolicyDelta
    PolicyDelta (..),
    newPolicyDelta,

    -- * QueryAuditableServicesRequest
    QueryAuditableServicesRequest (..),
    newQueryAuditableServicesRequest,

    -- * QueryAuditableServicesResponse
    QueryAuditableServicesResponse (..),
    newQueryAuditableServicesResponse,

    -- * QueryGrantableRolesRequest
    QueryGrantableRolesRequest (..),
    newQueryGrantableRolesRequest,

    -- * QueryGrantableRolesResponse
    QueryGrantableRolesResponse (..),
    newQueryGrantableRolesResponse,

    -- * QueryTestablePermissionsRequest
    QueryTestablePermissionsRequest (..),
    newQueryTestablePermissionsRequest,

    -- * QueryTestablePermissionsResponse
    QueryTestablePermissionsResponse (..),
    newQueryTestablePermissionsResponse,

    -- * Role
    Role (..),
    newRole,

    -- * ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- * ServiceAccountKey
    ServiceAccountKey (..),
    newServiceAccountKey,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * SignBlobRequest
    SignBlobRequest (..),
    newSignBlobRequest,

    -- * SignBlobResponse
    SignBlobResponse (..),
    newSignBlobResponse,

    -- * SignJwtRequest
    SignJwtRequest (..),
    newSignJwtRequest,

    -- * SignJwtResponse
    SignJwtResponse (..),
    newSignJwtResponse,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * UndeleteRoleRequest
    UndeleteRoleRequest (..),
    newUndeleteRoleRequest,

    -- * UndeleteServiceAccountRequest
    UndeleteServiceAccountRequest (..),
    newUndeleteServiceAccountRequest,

    -- * UndeleteServiceAccountResponse
    UndeleteServiceAccountResponse (..),
    newUndeleteServiceAccountResponse,

    -- * UndeleteWorkloadIdentityPoolProviderRequest
    UndeleteWorkloadIdentityPoolProviderRequest (..),
    newUndeleteWorkloadIdentityPoolProviderRequest,

    -- * UndeleteWorkloadIdentityPoolRequest
    UndeleteWorkloadIdentityPoolRequest (..),
    newUndeleteWorkloadIdentityPoolRequest,

    -- * UploadServiceAccountKeyRequest
    UploadServiceAccountKeyRequest (..),
    newUploadServiceAccountKeyRequest,

    -- * WorkloadIdentityPool
    WorkloadIdentityPool (..),
    newWorkloadIdentityPool,

    -- * WorkloadIdentityPoolProvider
    WorkloadIdentityPoolProvider (..),
    newWorkloadIdentityPoolProvider,

    -- * WorkloadIdentityPoolProvider_AttributeMapping
    WorkloadIdentityPoolProvider_AttributeMapping (..),
    newWorkloadIdentityPoolProvider_AttributeMapping,
  )
where

import Gogol.IAM.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Audit log information specific to Cloud IAM admin APIs. This message is serialized as an @Any@ type in the @ServiceData@ message of an @AuditLog@ message.
--
-- /See:/ 'newAdminAuditData' smart constructor.
newtype AdminAuditData = AdminAuditData
  { -- | The permission_delta when when creating or updating a Role.
    permissionDelta :: (Core.Maybe PermissionDelta)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminAuditData' with the minimum fields required to make a request.
newAdminAuditData ::
  AdminAuditData
newAdminAuditData = AdminAuditData {permissionDelta = Core.Nothing}

instance Core.FromJSON AdminAuditData where
  parseJSON =
    Core.withObject
      "AdminAuditData"
      ( \o ->
          AdminAuditData
            Core.<$> (o Core..:? "permissionDelta")
      )

instance Core.ToJSON AdminAuditData where
  toJSON AdminAuditData {..} =
    Core.object
      ( Core.catMaybes
          [ ("permissionDelta" Core..=)
              Core.<$> permissionDelta
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

-- | Audit log information specific to Cloud IAM. This message is serialized as an @Any@ type in the @ServiceData@ message of an @AuditLog@ message.
--
-- /See:/ 'newAuditData' smart constructor.
newtype AuditData = AuditData
  { -- | Policy delta between the original policy and the newly set policy.
    policyDelta :: (Core.Maybe PolicyDelta)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditData' with the minimum fields required to make a request.
newAuditData ::
  AuditData
newAuditData = AuditData {policyDelta = Core.Nothing}

instance Core.FromJSON AuditData where
  parseJSON =
    Core.withObject
      "AuditData"
      ( \o ->
          AuditData Core.<$> (o Core..:? "policyDelta")
      )

instance Core.ToJSON AuditData where
  toJSON AuditData {..} =
    Core.object
      ( Core.catMaybes
          [("policyDelta" Core..=) Core.<$> policyDelta]
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

-- | Contains information about an auditable service.
--
-- /See:/ 'newAuditableService' smart constructor.
newtype AuditableService = AuditableService
  { -- | Public name of the service. For example, the service name for Cloud IAM is \'iam.googleapis.com\'.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditableService' with the minimum fields required to make a request.
newAuditableService ::
  AuditableService
newAuditableService = AuditableService {name = Core.Nothing}

instance Core.FromJSON AuditableService where
  parseJSON =
    Core.withObject
      "AuditableService"
      ( \o ->
          AuditableService Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON AuditableService where
  toJSON AuditableService {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Represents an Amazon Web Services identity provider.
--
-- /See:/ 'newAws' smart constructor.
newtype Aws = Aws
  { -- | Required. The AWS account ID.
    accountId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Aws' with the minimum fields required to make a request.
newAws ::
  Aws
newAws = Aws {accountId = Core.Nothing}

instance Core.FromJSON Aws where
  parseJSON =
    Core.withObject
      "Aws"
      (\o -> Aws Core.<$> (o Core..:? "accountId"))

instance Core.ToJSON Aws where
  toJSON Aws {..} =
    Core.object
      ( Core.catMaybes
          [("accountId" Core..=) Core.<$> accountId]
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

-- | One delta entry for Binding. Each individual change (only one member in each entry) to a binding will be a separate entry.
--
-- /See:/ 'newBindingDelta' smart constructor.
data BindingDelta = BindingDelta
  { -- | The action that was performed on a Binding. Required
    action :: (Core.Maybe BindingDelta_Action),
    -- | The condition that is associated with this binding.
    condition :: (Core.Maybe Expr),
    -- | A single identity requesting access for a Cloud Platform resource. Follows the same format of Binding.members. Required
    member :: (Core.Maybe Core.Text),
    -- | Role that is assigned to @members@. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. Required
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BindingDelta' with the minimum fields required to make a request.
newBindingDelta ::
  BindingDelta
newBindingDelta =
  BindingDelta
    { action = Core.Nothing,
      condition = Core.Nothing,
      member = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON BindingDelta where
  parseJSON =
    Core.withObject
      "BindingDelta"
      ( \o ->
          BindingDelta
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "condition")
            Core.<*> (o Core..:? "member")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON BindingDelta where
  toJSON BindingDelta {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("condition" Core..=) Core.<$> condition,
            ("member" Core..=) Core.<$> member,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | The request to create a new role.
--
-- /See:/ 'newCreateRoleRequest' smart constructor.
data CreateRoleRequest = CreateRoleRequest
  { -- | The Role resource to create.
    role' :: (Core.Maybe Role),
    -- | The role ID to use for this role. A role ID may contain alphanumeric characters, underscores (@_@), and periods (@.@). It must contain a minimum of 3 characters and a maximum of 64 characters.
    roleId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateRoleRequest' with the minimum fields required to make a request.
newCreateRoleRequest ::
  CreateRoleRequest
newCreateRoleRequest =
  CreateRoleRequest {role' = Core.Nothing, roleId = Core.Nothing}

instance Core.FromJSON CreateRoleRequest where
  parseJSON =
    Core.withObject
      "CreateRoleRequest"
      ( \o ->
          CreateRoleRequest
            Core.<$> (o Core..:? "role") Core.<*> (o Core..:? "roleId")
      )

instance Core.ToJSON CreateRoleRequest where
  toJSON CreateRoleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("role" Core..=) Core.<$> role',
            ("roleId" Core..=) Core.<$> roleId
          ]
      )

-- | The service account key create request.
--
-- /See:/ 'newCreateServiceAccountKeyRequest' smart constructor.
data CreateServiceAccountKeyRequest = CreateServiceAccountKeyRequest
  { -- | Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
    keyAlgorithm :: (Core.Maybe CreateServiceAccountKeyRequest_KeyAlgorithm),
    -- | The output format of the private key. The default value is @TYPE_GOOGLE_CREDENTIALS_FILE@, which is the Google Credentials File format.
    privateKeyType :: (Core.Maybe CreateServiceAccountKeyRequest_PrivateKeyType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateServiceAccountKeyRequest' with the minimum fields required to make a request.
newCreateServiceAccountKeyRequest ::
  CreateServiceAccountKeyRequest
newCreateServiceAccountKeyRequest =
  CreateServiceAccountKeyRequest
    { keyAlgorithm = Core.Nothing,
      privateKeyType = Core.Nothing
    }

instance Core.FromJSON CreateServiceAccountKeyRequest where
  parseJSON =
    Core.withObject
      "CreateServiceAccountKeyRequest"
      ( \o ->
          CreateServiceAccountKeyRequest
            Core.<$> (o Core..:? "keyAlgorithm")
            Core.<*> (o Core..:? "privateKeyType")
      )

instance Core.ToJSON CreateServiceAccountKeyRequest where
  toJSON CreateServiceAccountKeyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyAlgorithm" Core..=) Core.<$> keyAlgorithm,
            ("privateKeyType" Core..=) Core.<$> privateKeyType
          ]
      )

-- | The service account create request.
--
-- /See:/ 'newCreateServiceAccountRequest' smart constructor.
data CreateServiceAccountRequest = CreateServiceAccountRequest
  { -- | Required. The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression @[a-z]([-a-z0-9]*[a-z0-9])@ to comply with RFC1035.
    accountId :: (Core.Maybe Core.Text),
    -- | The ServiceAccount resource to create. Currently, only the following values are user assignable: @display_name@ and @description@.
    serviceAccount :: (Core.Maybe ServiceAccount)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateServiceAccountRequest' with the minimum fields required to make a request.
newCreateServiceAccountRequest ::
  CreateServiceAccountRequest
newCreateServiceAccountRequest =
  CreateServiceAccountRequest
    { accountId = Core.Nothing,
      serviceAccount = Core.Nothing
    }

instance Core.FromJSON CreateServiceAccountRequest where
  parseJSON =
    Core.withObject
      "CreateServiceAccountRequest"
      ( \o ->
          CreateServiceAccountRequest
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "serviceAccount")
      )

instance Core.ToJSON CreateServiceAccountRequest where
  toJSON CreateServiceAccountRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("serviceAccount" Core..=) Core.<$> serviceAccount
          ]
      )

-- | The service account key disable request.
--
-- /See:/ 'newDisableServiceAccountKeyRequest' smart constructor.
data DisableServiceAccountKeyRequest = DisableServiceAccountKeyRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DisableServiceAccountKeyRequest' with the minimum fields required to make a request.
newDisableServiceAccountKeyRequest ::
  DisableServiceAccountKeyRequest
newDisableServiceAccountKeyRequest = DisableServiceAccountKeyRequest

instance
  Core.FromJSON
    DisableServiceAccountKeyRequest
  where
  parseJSON =
    Core.withObject
      "DisableServiceAccountKeyRequest"
      (\o -> Core.pure DisableServiceAccountKeyRequest)

instance Core.ToJSON DisableServiceAccountKeyRequest where
  toJSON = Core.const Core.emptyObject

-- | The service account disable request.
--
-- /See:/ 'newDisableServiceAccountRequest' smart constructor.
data DisableServiceAccountRequest = DisableServiceAccountRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DisableServiceAccountRequest' with the minimum fields required to make a request.
newDisableServiceAccountRequest ::
  DisableServiceAccountRequest
newDisableServiceAccountRequest = DisableServiceAccountRequest

instance Core.FromJSON DisableServiceAccountRequest where
  parseJSON =
    Core.withObject
      "DisableServiceAccountRequest"
      (\o -> Core.pure DisableServiceAccountRequest)

instance Core.ToJSON DisableServiceAccountRequest where
  toJSON = Core.const Core.emptyObject

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

-- | The service account key enable request.
--
-- /See:/ 'newEnableServiceAccountKeyRequest' smart constructor.
data EnableServiceAccountKeyRequest = EnableServiceAccountKeyRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnableServiceAccountKeyRequest' with the minimum fields required to make a request.
newEnableServiceAccountKeyRequest ::
  EnableServiceAccountKeyRequest
newEnableServiceAccountKeyRequest = EnableServiceAccountKeyRequest

instance Core.FromJSON EnableServiceAccountKeyRequest where
  parseJSON =
    Core.withObject
      "EnableServiceAccountKeyRequest"
      (\o -> Core.pure EnableServiceAccountKeyRequest)

instance Core.ToJSON EnableServiceAccountKeyRequest where
  toJSON = Core.const Core.emptyObject

-- | The service account enable request.
--
-- /See:/ 'newEnableServiceAccountRequest' smart constructor.
data EnableServiceAccountRequest = EnableServiceAccountRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnableServiceAccountRequest' with the minimum fields required to make a request.
newEnableServiceAccountRequest ::
  EnableServiceAccountRequest
newEnableServiceAccountRequest = EnableServiceAccountRequest

instance Core.FromJSON EnableServiceAccountRequest where
  parseJSON =
    Core.withObject
      "EnableServiceAccountRequest"
      (\o -> Core.pure EnableServiceAccountRequest)

instance Core.ToJSON EnableServiceAccountRequest where
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

-- | The request to lint a Cloud IAM policy object.
--
-- /See:/ 'newLintPolicyRequest' smart constructor.
data LintPolicyRequest = LintPolicyRequest
  { -- | google.iam.v1.Binding.condition object to be linted.
    condition :: (Core.Maybe Expr),
    -- | The full resource name of the policy this lint request is about. The name follows the Google Cloud Platform (GCP) resource format. For example, a GCP project with ID @my-project@ will be named @\/\/cloudresourcemanager.googleapis.com\/projects\/my-project@. The resource name is not used to read the policy instance from the Cloud IAM database. The candidate policy for lint has to be provided in the same request object.
    fullResourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LintPolicyRequest' with the minimum fields required to make a request.
newLintPolicyRequest ::
  LintPolicyRequest
newLintPolicyRequest =
  LintPolicyRequest {condition = Core.Nothing, fullResourceName = Core.Nothing}

instance Core.FromJSON LintPolicyRequest where
  parseJSON =
    Core.withObject
      "LintPolicyRequest"
      ( \o ->
          LintPolicyRequest
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "fullResourceName")
      )

instance Core.ToJSON LintPolicyRequest where
  toJSON LintPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("fullResourceName" Core..=)
              Core.<$> fullResourceName
          ]
      )

-- | The response of a lint operation. An empty response indicates the operation was able to fully execute and no lint issue was found.
--
-- /See:/ 'newLintPolicyResponse' smart constructor.
newtype LintPolicyResponse = LintPolicyResponse
  { -- | List of lint results sorted by @severity@ in descending order.
    lintResults :: (Core.Maybe [LintResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LintPolicyResponse' with the minimum fields required to make a request.
newLintPolicyResponse ::
  LintPolicyResponse
newLintPolicyResponse = LintPolicyResponse {lintResults = Core.Nothing}

instance Core.FromJSON LintPolicyResponse where
  parseJSON =
    Core.withObject
      "LintPolicyResponse"
      ( \o ->
          LintPolicyResponse
            Core.<$> (o Core..:? "lintResults" Core..!= Core.mempty)
      )

instance Core.ToJSON LintPolicyResponse where
  toJSON LintPolicyResponse {..} =
    Core.object
      ( Core.catMaybes
          [("lintResults" Core..=) Core.<$> lintResults]
      )

-- | Structured response of a single validation unit.
--
-- /See:/ 'newLintResult' smart constructor.
data LintResult = LintResult
  { -- | Human readable debug message associated with the issue.
    debugMessage :: (Core.Maybe Core.Text),
    -- | The name of the field for which this lint result is about. For nested messages @field_name@ consists of names of the embedded fields separated by period character. The top-level qualifier is the input object to lint in the request. For example, the @field_name@ value @condition.expression@ identifies a lint result for the @expression@ field of the provided condition.
    fieldName :: (Core.Maybe Core.Text),
    -- | The validation unit level.
    level :: (Core.Maybe LintResult_Level),
    -- | 0-based character position of problematic construct within the object identified by @field_name@. Currently, this is populated only for condition expression.
    locationOffset :: (Core.Maybe Core.Int32),
    -- | The validation unit severity.
    severity :: (Core.Maybe LintResult_Severity),
    -- | The validation unit name, for instance \"lintValidationUnits\/ConditionComplexityCheck\".
    validationUnitName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LintResult' with the minimum fields required to make a request.
newLintResult ::
  LintResult
newLintResult =
  LintResult
    { debugMessage = Core.Nothing,
      fieldName = Core.Nothing,
      level = Core.Nothing,
      locationOffset = Core.Nothing,
      severity = Core.Nothing,
      validationUnitName = Core.Nothing
    }

instance Core.FromJSON LintResult where
  parseJSON =
    Core.withObject
      "LintResult"
      ( \o ->
          LintResult
            Core.<$> (o Core..:? "debugMessage")
            Core.<*> (o Core..:? "fieldName")
            Core.<*> (o Core..:? "level")
            Core.<*> (o Core..:? "locationOffset")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "validationUnitName")
      )

instance Core.ToJSON LintResult where
  toJSON LintResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugMessage" Core..=) Core.<$> debugMessage,
            ("fieldName" Core..=) Core.<$> fieldName,
            ("level" Core..=) Core.<$> level,
            ("locationOffset" Core..=) Core.<$> locationOffset,
            ("severity" Core..=) Core.<$> severity,
            ("validationUnitName" Core..=)
              Core.<$> validationUnitName
          ]
      )

-- | The response containing the roles defined under a resource.
--
-- /See:/ 'newListRolesResponse' smart constructor.
data ListRolesResponse = ListRolesResponse
  { -- | To retrieve the next page of results, set @ListRolesRequest.page_token@ to this value.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The Roles defined on this resource.
    roles :: (Core.Maybe [Role])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRolesResponse' with the minimum fields required to make a request.
newListRolesResponse ::
  ListRolesResponse
newListRolesResponse =
  ListRolesResponse {nextPageToken = Core.Nothing, roles = Core.Nothing}

instance Core.FromJSON ListRolesResponse where
  parseJSON =
    Core.withObject
      "ListRolesResponse"
      ( \o ->
          ListRolesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "roles" Core..!= Core.mempty)
      )

instance Core.ToJSON ListRolesResponse where
  toJSON ListRolesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("roles" Core..=) Core.<$> roles
          ]
      )

-- | The service account keys list response.
--
-- /See:/ 'newListServiceAccountKeysResponse' smart constructor.
newtype ListServiceAccountKeysResponse = ListServiceAccountKeysResponse
  { -- | The public keys for the service account.
    keys :: (Core.Maybe [ServiceAccountKey])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServiceAccountKeysResponse' with the minimum fields required to make a request.
newListServiceAccountKeysResponse ::
  ListServiceAccountKeysResponse
newListServiceAccountKeysResponse =
  ListServiceAccountKeysResponse {keys = Core.Nothing}

instance Core.FromJSON ListServiceAccountKeysResponse where
  parseJSON =
    Core.withObject
      "ListServiceAccountKeysResponse"
      ( \o ->
          ListServiceAccountKeysResponse
            Core.<$> (o Core..:? "keys" Core..!= Core.mempty)
      )

instance Core.ToJSON ListServiceAccountKeysResponse where
  toJSON ListServiceAccountKeysResponse {..} =
    Core.object
      (Core.catMaybes [("keys" Core..=) Core.<$> keys])

-- | The service account list response.
--
-- /See:/ 'newListServiceAccountsResponse' smart constructor.
data ListServiceAccountsResponse = ListServiceAccountsResponse
  { -- | The list of matching service accounts.
    accounts :: (Core.Maybe [ServiceAccount]),
    -- | To retrieve the next page of results, set ListServiceAccountsRequest.page_token to this value.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServiceAccountsResponse' with the minimum fields required to make a request.
newListServiceAccountsResponse ::
  ListServiceAccountsResponse
newListServiceAccountsResponse =
  ListServiceAccountsResponse
    { accounts = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListServiceAccountsResponse where
  parseJSON =
    Core.withObject
      "ListServiceAccountsResponse"
      ( \o ->
          ListServiceAccountsResponse
            Core.<$> (o Core..:? "accounts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListServiceAccountsResponse where
  toJSON ListServiceAccountsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accounts" Core..=) Core.<$> accounts,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for ListWorkloadIdentityPoolProviders.
--
-- /See:/ 'newListWorkloadIdentityPoolProvidersResponse' smart constructor.
data ListWorkloadIdentityPoolProvidersResponse = ListWorkloadIdentityPoolProvidersResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of providers.
    workloadIdentityPoolProviders :: (Core.Maybe [WorkloadIdentityPoolProvider])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWorkloadIdentityPoolProvidersResponse' with the minimum fields required to make a request.
newListWorkloadIdentityPoolProvidersResponse ::
  ListWorkloadIdentityPoolProvidersResponse
newListWorkloadIdentityPoolProvidersResponse =
  ListWorkloadIdentityPoolProvidersResponse
    { nextPageToken = Core.Nothing,
      workloadIdentityPoolProviders = Core.Nothing
    }

instance
  Core.FromJSON
    ListWorkloadIdentityPoolProvidersResponse
  where
  parseJSON =
    Core.withObject
      "ListWorkloadIdentityPoolProvidersResponse"
      ( \o ->
          ListWorkloadIdentityPoolProvidersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "workloadIdentityPoolProviders"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ListWorkloadIdentityPoolProvidersResponse
  where
  toJSON ListWorkloadIdentityPoolProvidersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("workloadIdentityPoolProviders" Core..=)
              Core.<$> workloadIdentityPoolProviders
          ]
      )

-- | Response message for ListWorkloadIdentityPools.
--
-- /See:/ 'newListWorkloadIdentityPoolsResponse' smart constructor.
data ListWorkloadIdentityPoolsResponse = ListWorkloadIdentityPoolsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of pools.
    workloadIdentityPools :: (Core.Maybe [WorkloadIdentityPool])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWorkloadIdentityPoolsResponse' with the minimum fields required to make a request.
newListWorkloadIdentityPoolsResponse ::
  ListWorkloadIdentityPoolsResponse
newListWorkloadIdentityPoolsResponse =
  ListWorkloadIdentityPoolsResponse
    { nextPageToken = Core.Nothing,
      workloadIdentityPools = Core.Nothing
    }

instance
  Core.FromJSON
    ListWorkloadIdentityPoolsResponse
  where
  parseJSON =
    Core.withObject
      "ListWorkloadIdentityPoolsResponse"
      ( \o ->
          ListWorkloadIdentityPoolsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "workloadIdentityPools"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ListWorkloadIdentityPoolsResponse
  where
  toJSON ListWorkloadIdentityPoolsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("workloadIdentityPools" Core..=)
              Core.<$> workloadIdentityPools
          ]
      )

-- | Represents an OpenId Connect 1.0 identity provider.
--
-- /See:/ 'newOidc' smart constructor.
data Oidc = Oidc
  { -- | Acceptable values for the @aud@ field (audience) in the OIDC token. Token exchange requests are rejected if the token audience does not match one of the configured values. Each audience may be at most 256 characters. A maximum of 10 audiences may be configured. If this list is empty, the OIDC token audience must be equal to the full canonical resource name of the WorkloadIdentityPoolProvider, with or without the HTTPS prefix. For example: @\/\/iam.googleapis.com\/projects\/\/locations\/\/workloadIdentityPools\/\/providers\/ https:\/\/iam.googleapis.com\/projects\/\/locations\/\/workloadIdentityPools\/\/providers\/@
    allowedAudiences :: (Core.Maybe [Core.Text]),
    -- | Required. The OIDC issuer URL. Must be an HTTPS endpoint.
    issuerUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Oidc' with the minimum fields required to make a request.
newOidc ::
  Oidc
newOidc = Oidc {allowedAudiences = Core.Nothing, issuerUri = Core.Nothing}

instance Core.FromJSON Oidc where
  parseJSON =
    Core.withObject
      "Oidc"
      ( \o ->
          Oidc
            Core.<$> (o Core..:? "allowedAudiences" Core..!= Core.mempty)
            Core.<*> (o Core..:? "issuerUri")
      )

instance Core.ToJSON Oidc where
  toJSON Oidc {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedAudiences" Core..=)
              Core.<$> allowedAudiences,
            ("issuerUri" Core..=) Core.<$> issuerUri
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
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | The request for PatchServiceAccount. You can patch only the @display_name@ and @description@ fields. You must use the @update_mask@ field to specify which of these fields you want to patch. Only the fields specified in the request are guaranteed to be returned in the response. Other fields may be empty in the response.
--
-- /See:/ 'newPatchServiceAccountRequest' smart constructor.
data PatchServiceAccountRequest = PatchServiceAccountRequest
  { -- |
    serviceAccount :: (Core.Maybe ServiceAccount),
    -- |
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PatchServiceAccountRequest' with the minimum fields required to make a request.
newPatchServiceAccountRequest ::
  PatchServiceAccountRequest
newPatchServiceAccountRequest =
  PatchServiceAccountRequest
    { serviceAccount = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON PatchServiceAccountRequest where
  parseJSON =
    Core.withObject
      "PatchServiceAccountRequest"
      ( \o ->
          PatchServiceAccountRequest
            Core.<$> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON PatchServiceAccountRequest where
  toJSON PatchServiceAccountRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | A permission which can be included by a role.
--
-- /See:/ 'newPermission' smart constructor.
data Permission = Permission
  { -- | The service API associated with the permission is not enabled.
    apiDisabled :: (Core.Maybe Core.Bool),
    -- | The current custom role support level.
    customRolesSupportLevel :: (Core.Maybe Permission_CustomRolesSupportLevel),
    -- | A brief description of what this Permission is used for. This permission can ONLY be used in predefined roles.
    description :: (Core.Maybe Core.Text),
    -- | The name of this Permission.
    name :: (Core.Maybe Core.Text),
    -- |
    onlyInPredefinedRoles :: (Core.Maybe Core.Bool),
    -- | The preferred name for this permission. If present, then this permission is an alias of, and equivalent to, the listed primary_permission.
    primaryPermission :: (Core.Maybe Core.Text),
    -- | The current launch stage of the permission.
    stage :: (Core.Maybe Permission_Stage),
    -- | The title of this Permission.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
newPermission ::
  Permission
newPermission =
  Permission
    { apiDisabled = Core.Nothing,
      customRolesSupportLevel = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      onlyInPredefinedRoles = Core.Nothing,
      primaryPermission = Core.Nothing,
      stage = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Permission where
  parseJSON =
    Core.withObject
      "Permission"
      ( \o ->
          Permission
            Core.<$> (o Core..:? "apiDisabled")
            Core.<*> (o Core..:? "customRolesSupportLevel")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onlyInPredefinedRoles")
            Core.<*> (o Core..:? "primaryPermission")
            Core.<*> (o Core..:? "stage")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Permission where
  toJSON Permission {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiDisabled" Core..=) Core.<$> apiDisabled,
            ("customRolesSupportLevel" Core..=)
              Core.<$> customRolesSupportLevel,
            ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("onlyInPredefinedRoles" Core..=)
              Core.<$> onlyInPredefinedRoles,
            ("primaryPermission" Core..=)
              Core.<$> primaryPermission,
            ("stage" Core..=) Core.<$> stage,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A PermissionDelta message to record the added/permissions and removed/permissions inside a role.
--
-- /See:/ 'newPermissionDelta' smart constructor.
data PermissionDelta = PermissionDelta
  { -- | Added permissions.
    addedPermissions :: (Core.Maybe [Core.Text]),
    -- | Removed permissions.
    removedPermissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PermissionDelta' with the minimum fields required to make a request.
newPermissionDelta ::
  PermissionDelta
newPermissionDelta =
  PermissionDelta
    { addedPermissions = Core.Nothing,
      removedPermissions = Core.Nothing
    }

instance Core.FromJSON PermissionDelta where
  parseJSON =
    Core.withObject
      "PermissionDelta"
      ( \o ->
          PermissionDelta
            Core.<$> (o Core..:? "addedPermissions" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "removedPermissions"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON PermissionDelta where
  toJSON PermissionDelta {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedPermissions" Core..=)
              Core.<$> addedPermissions,
            ("removedPermissions" Core..=)
              Core.<$> removedPermissions
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

-- | The difference delta between two policies.
--
-- /See:/ 'newPolicyDelta' smart constructor.
newtype PolicyDelta = PolicyDelta
  { -- | The delta for Bindings between two policies.
    bindingDeltas :: (Core.Maybe [BindingDelta])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolicyDelta' with the minimum fields required to make a request.
newPolicyDelta ::
  PolicyDelta
newPolicyDelta = PolicyDelta {bindingDeltas = Core.Nothing}

instance Core.FromJSON PolicyDelta where
  parseJSON =
    Core.withObject
      "PolicyDelta"
      ( \o ->
          PolicyDelta
            Core.<$> (o Core..:? "bindingDeltas" Core..!= Core.mempty)
      )

instance Core.ToJSON PolicyDelta where
  toJSON PolicyDelta {..} =
    Core.object
      ( Core.catMaybes
          [("bindingDeltas" Core..=) Core.<$> bindingDeltas]
      )

-- | A request to get the list of auditable services for a resource.
--
-- /See:/ 'newQueryAuditableServicesRequest' smart constructor.
newtype QueryAuditableServicesRequest = QueryAuditableServicesRequest
  { -- | Required. The full resource name to query from the list of auditable services. The name follows the Google Cloud Platform resource format. For example, a Cloud Platform project with id @my-project@ will be named @\/\/cloudresourcemanager.googleapis.com\/projects\/my-project@.
    fullResourceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryAuditableServicesRequest' with the minimum fields required to make a request.
newQueryAuditableServicesRequest ::
  QueryAuditableServicesRequest
newQueryAuditableServicesRequest =
  QueryAuditableServicesRequest {fullResourceName = Core.Nothing}

instance Core.FromJSON QueryAuditableServicesRequest where
  parseJSON =
    Core.withObject
      "QueryAuditableServicesRequest"
      ( \o ->
          QueryAuditableServicesRequest
            Core.<$> (o Core..:? "fullResourceName")
      )

instance Core.ToJSON QueryAuditableServicesRequest where
  toJSON QueryAuditableServicesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullResourceName" Core..=)
              Core.<$> fullResourceName
          ]
      )

-- | A response containing a list of auditable services for a resource.
--
-- /See:/ 'newQueryAuditableServicesResponse' smart constructor.
newtype QueryAuditableServicesResponse = QueryAuditableServicesResponse
  { -- | The auditable services for a resource.
    services :: (Core.Maybe [AuditableService])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryAuditableServicesResponse' with the minimum fields required to make a request.
newQueryAuditableServicesResponse ::
  QueryAuditableServicesResponse
newQueryAuditableServicesResponse =
  QueryAuditableServicesResponse {services = Core.Nothing}

instance Core.FromJSON QueryAuditableServicesResponse where
  parseJSON =
    Core.withObject
      "QueryAuditableServicesResponse"
      ( \o ->
          QueryAuditableServicesResponse
            Core.<$> (o Core..:? "services" Core..!= Core.mempty)
      )

instance Core.ToJSON QueryAuditableServicesResponse where
  toJSON QueryAuditableServicesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("services" Core..=) Core.<$> services]
      )

-- | The grantable role query request.
--
-- /See:/ 'newQueryGrantableRolesRequest' smart constructor.
data QueryGrantableRolesRequest = QueryGrantableRolesRequest
  { -- | Required. The full resource name to query from the list of grantable roles. The name follows the Google Cloud Platform resource format. For example, a Cloud Platform project with id @my-project@ will be named @\/\/cloudresourcemanager.googleapis.com\/projects\/my-project@.
    fullResourceName :: (Core.Maybe Core.Text),
    -- | Optional limit on the number of roles to include in the response. The default is 300, and the maximum is 1,000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional pagination token returned in an earlier QueryGrantableRolesResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- |
    view :: (Core.Maybe QueryGrantableRolesRequest_View)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryGrantableRolesRequest' with the minimum fields required to make a request.
newQueryGrantableRolesRequest ::
  QueryGrantableRolesRequest
newQueryGrantableRolesRequest =
  QueryGrantableRolesRequest
    { fullResourceName = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      view = Core.Nothing
    }

instance Core.FromJSON QueryGrantableRolesRequest where
  parseJSON =
    Core.withObject
      "QueryGrantableRolesRequest"
      ( \o ->
          QueryGrantableRolesRequest
            Core.<$> (o Core..:? "fullResourceName")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON QueryGrantableRolesRequest where
  toJSON QueryGrantableRolesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullResourceName" Core..=)
              Core.<$> fullResourceName,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("view" Core..=) Core.<$> view
          ]
      )

-- | The grantable role query response.
--
-- /See:/ 'newQueryGrantableRolesResponse' smart constructor.
data QueryGrantableRolesResponse = QueryGrantableRolesResponse
  { -- | To retrieve the next page of results, set @QueryGrantableRolesRequest.page_token@ to this value.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of matching roles.
    roles :: (Core.Maybe [Role])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryGrantableRolesResponse' with the minimum fields required to make a request.
newQueryGrantableRolesResponse ::
  QueryGrantableRolesResponse
newQueryGrantableRolesResponse =
  QueryGrantableRolesResponse
    { nextPageToken = Core.Nothing,
      roles = Core.Nothing
    }

instance Core.FromJSON QueryGrantableRolesResponse where
  parseJSON =
    Core.withObject
      "QueryGrantableRolesResponse"
      ( \o ->
          QueryGrantableRolesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "roles" Core..!= Core.mempty)
      )

instance Core.ToJSON QueryGrantableRolesResponse where
  toJSON QueryGrantableRolesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("roles" Core..=) Core.<$> roles
          ]
      )

-- | A request to get permissions which can be tested on a resource.
--
-- /See:/ 'newQueryTestablePermissionsRequest' smart constructor.
data QueryTestablePermissionsRequest = QueryTestablePermissionsRequest
  { -- | Required. The full resource name to query from the list of testable permissions. The name follows the Google Cloud Platform resource format. For example, a Cloud Platform project with id @my-project@ will be named @\/\/cloudresourcemanager.googleapis.com\/projects\/my-project@.
    fullResourceName :: (Core.Maybe Core.Text),
    -- | Optional limit on the number of permissions to include in the response. The default is 100, and the maximum is 1,000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional pagination token returned in an earlier QueryTestablePermissionsRequest.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryTestablePermissionsRequest' with the minimum fields required to make a request.
newQueryTestablePermissionsRequest ::
  QueryTestablePermissionsRequest
newQueryTestablePermissionsRequest =
  QueryTestablePermissionsRequest
    { fullResourceName = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing
    }

instance
  Core.FromJSON
    QueryTestablePermissionsRequest
  where
  parseJSON =
    Core.withObject
      "QueryTestablePermissionsRequest"
      ( \o ->
          QueryTestablePermissionsRequest
            Core.<$> (o Core..:? "fullResourceName")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "pageToken")
      )

instance Core.ToJSON QueryTestablePermissionsRequest where
  toJSON QueryTestablePermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullResourceName" Core..=)
              Core.<$> fullResourceName,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("pageToken" Core..=) Core.<$> pageToken
          ]
      )

-- | The response containing permissions which can be tested on a resource.
--
-- /See:/ 'newQueryTestablePermissionsResponse' smart constructor.
data QueryTestablePermissionsResponse = QueryTestablePermissionsResponse
  { -- | To retrieve the next page of results, set @QueryTestableRolesRequest.page_token@ to this value.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The Permissions testable on the requested resource.
    permissions :: (Core.Maybe [Permission])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryTestablePermissionsResponse' with the minimum fields required to make a request.
newQueryTestablePermissionsResponse ::
  QueryTestablePermissionsResponse
newQueryTestablePermissionsResponse =
  QueryTestablePermissionsResponse
    { nextPageToken = Core.Nothing,
      permissions = Core.Nothing
    }

instance
  Core.FromJSON
    QueryTestablePermissionsResponse
  where
  parseJSON =
    Core.withObject
      "QueryTestablePermissionsResponse"
      ( \o ->
          QueryTestablePermissionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON QueryTestablePermissionsResponse where
  toJSON QueryTestablePermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("permissions" Core..=) Core.<$> permissions
          ]
      )

-- | A role in the Identity and Access Management API.
--
-- /See:/ 'newRole' smart constructor.
data Role = Role
  { -- | The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
    deleted :: (Core.Maybe Core.Bool),
    -- | Optional. A human-readable description for the role.
    description :: (Core.Maybe Core.Text),
    -- | Used to perform a consistent read-modify-write.
    etag :: (Core.Maybe Core.Base64),
    -- | The names of the permissions this role grants when bound in an IAM policy.
    includedPermissions :: (Core.Maybe [Core.Text]),
    -- | The name of the role. When Role is used in CreateRole, the role name must not be set. When Role is used in output and other input such as UpdateRole, the role name is the complete path, e.g., roles\/logging.viewer for predefined roles and organizations\/{ORGANIZATION_ID}\/roles\/logging.viewer for custom roles.
    name :: (Core.Maybe Core.Text),
    -- | The current launch stage of the role. If the @ALPHA@ launch stage has been selected for a role, the @stage@ field will not be included in the returned definition for the role.
    stage :: (Core.Maybe Role_Stage),
    -- | Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Role' with the minimum fields required to make a request.
newRole ::
  Role
newRole =
  Role
    { deleted = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      includedPermissions = Core.Nothing,
      name = Core.Nothing,
      stage = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Role where
  parseJSON =
    Core.withObject
      "Role"
      ( \o ->
          Role
            Core.<$> (o Core..:? "deleted")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "includedPermissions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stage")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Role where
  toJSON Role {..} =
    Core.object
      ( Core.catMaybes
          [ ("deleted" Core..=) Core.<$> deleted,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("includedPermissions" Core..=)
              Core.<$> includedPermissions,
            ("name" Core..=) Core.<$> name,
            ("stage" Core..=) Core.<$> stage,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | An IAM service account. A service account is an account for an application or a virtual machine (VM) instance, not a person. You can use a service account to call Google APIs. To learn more, read the <https://cloud.google.com/iam/help/service-accounts/overview overview of service accounts>. When you create a service account, you specify the project ID that owns the service account, as well as a name that must be unique within the project. IAM uses these values to create an email address that identifies the service account.
--
-- /See:/ 'newServiceAccount' smart constructor.
data ServiceAccount = ServiceAccount
  { -- | Optional. A user-specified, human-readable description of the service account. The maximum length is 256 UTF-8 bytes.
    description :: (Core.Maybe Core.Text),
    -- | Output only. Whether the service account is disabled.
    disabled :: (Core.Maybe Core.Bool),
    -- | Optional. A user-specified, human-readable name for the service account. The maximum length is 100 UTF-8 bytes.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The email address of the service account.
    email :: (Core.Maybe Core.Text),
    -- | Deprecated. Do not use.
    etag :: (Core.Maybe Core.Base64),
    -- | The resource name of the service account. Use one of the following formats: * @projects\/{PROJECT_ID}\/serviceAccounts\/{EMAIL_ADDRESS}@ * @projects\/{PROJECT_ID}\/serviceAccounts\/{UNIQUE_ID}@ As an alternative, you can use the @-@ wildcard character instead of the project ID: * @projects\/-\/serviceAccounts\/{EMAIL_ADDRESS}@ * @projects\/-\/serviceAccounts\/{UNIQUE_ID}@ When possible, avoid using the @-@ wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to get the service account @projects\/-\/serviceAccounts\/fake\@example.com@, which does not exist, the response contains an HTTP @403 Forbidden@ error instead of a @404 Not Found@ error.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The OAuth 2.0 client ID for the service account.
    oauth2ClientId :: (Core.Maybe Core.Text),
    -- | Output only. The ID of the project that owns the service account.
    projectId :: (Core.Maybe Core.Text),
    -- | Output only. The unique, stable numeric ID for the service account. Each service account retains its unique ID even if you delete the service account. For example, if you delete a service account, then create a new service account with the same name, the new service account has a different unique ID than the deleted service account.
    uniqueId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
newServiceAccount ::
  ServiceAccount
newServiceAccount =
  ServiceAccount
    { description = Core.Nothing,
      disabled = Core.Nothing,
      displayName = Core.Nothing,
      email = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      oauth2ClientId = Core.Nothing,
      projectId = Core.Nothing,
      uniqueId = Core.Nothing
    }

instance Core.FromJSON ServiceAccount where
  parseJSON =
    Core.withObject
      "ServiceAccount"
      ( \o ->
          ServiceAccount
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "oauth2ClientId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "uniqueId")
      )

instance Core.ToJSON ServiceAccount where
  toJSON ServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("disabled" Core..=) Core.<$> disabled,
            ("displayName" Core..=) Core.<$> displayName,
            ("email" Core..=) Core.<$> email,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("oauth2ClientId" Core..=) Core.<$> oauth2ClientId,
            ("projectId" Core..=) Core.<$> projectId,
            ("uniqueId" Core..=) Core.<$> uniqueId
          ]
      )

-- | Represents a service account key. A service account has two sets of key-pairs: user-managed, and system-managed. User-managed key-pairs can be created and deleted by users. Users are responsible for rotating these keys periodically to ensure security of their service accounts. Users retain the private key of these key-pairs, and Google retains ONLY the public key. System-managed keys are automatically rotated by Google, and are used for signing for a maximum of two weeks. The rotation process is probabilistic, and usage of the new key will gradually ramp up and down over the key\'s lifetime. If you cache the public key set for a service account, we recommend that you update the cache every 15 minutes. User-managed keys can be added and removed at any time, so it is important to update the cache frequently. For Google-managed keys, Google will publish a key at least 6 hours before it is first used for signing and will keep publishing it for at least 6 hours after it was last used for signing. Public keys for
-- all service accounts are also published at the OAuth2 Service Account API.
--
-- /See:/ 'newServiceAccountKey' smart constructor.
data ServiceAccountKey = ServiceAccountKey
  { -- | The key status.
    disabled :: (Core.Maybe Core.Bool),
    -- | Specifies the algorithm (and possibly key size) for the key.
    keyAlgorithm :: (Core.Maybe ServiceAccountKey_KeyAlgorithm),
    -- | The key origin.
    keyOrigin :: (Core.Maybe ServiceAccountKey_KeyOrigin),
    -- | The key type.
    keyType :: (Core.Maybe ServiceAccountKey_KeyType),
    -- | The resource name of the service account key in the following format @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}@.
    name :: (Core.Maybe Core.Text),
    -- | The private key data. Only provided in @CreateServiceAccountKey@ responses. Make sure to keep the private key data secure because it allows for the assertion of the service account identity. When base64 decoded, the private key data can be used to authenticate with Google API client libraries and with gcloud auth activate-service-account.
    privateKeyData :: (Core.Maybe Core.Base64),
    -- | The output format for the private key. Only provided in @CreateServiceAccountKey@ responses, not in @GetServiceAccountKey@ or @ListServiceAccountKey@ responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
    privateKeyType :: (Core.Maybe ServiceAccountKey_PrivateKeyType),
    -- | The public key data. Only provided in @GetServiceAccountKey@ responses.
    publicKeyData :: (Core.Maybe Core.Base64),
    -- | The key can be used after this timestamp.
    validAfterTime :: (Core.Maybe Core.DateTime),
    -- | The key can be used before this timestamp. For system-managed key pairs, this timestamp is the end time for the private key signing operation. The public key could still be used for verification for a few hours after this time.
    validBeforeTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccountKey' with the minimum fields required to make a request.
newServiceAccountKey ::
  ServiceAccountKey
newServiceAccountKey =
  ServiceAccountKey
    { disabled = Core.Nothing,
      keyAlgorithm = Core.Nothing,
      keyOrigin = Core.Nothing,
      keyType = Core.Nothing,
      name = Core.Nothing,
      privateKeyData = Core.Nothing,
      privateKeyType = Core.Nothing,
      publicKeyData = Core.Nothing,
      validAfterTime = Core.Nothing,
      validBeforeTime = Core.Nothing
    }

instance Core.FromJSON ServiceAccountKey where
  parseJSON =
    Core.withObject
      "ServiceAccountKey"
      ( \o ->
          ServiceAccountKey
            Core.<$> (o Core..:? "disabled")
            Core.<*> (o Core..:? "keyAlgorithm")
            Core.<*> (o Core..:? "keyOrigin")
            Core.<*> (o Core..:? "keyType")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "privateKeyData")
            Core.<*> (o Core..:? "privateKeyType")
            Core.<*> (o Core..:? "publicKeyData")
            Core.<*> (o Core..:? "validAfterTime")
            Core.<*> (o Core..:? "validBeforeTime")
      )

instance Core.ToJSON ServiceAccountKey where
  toJSON ServiceAccountKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("disabled" Core..=) Core.<$> disabled,
            ("keyAlgorithm" Core..=) Core.<$> keyAlgorithm,
            ("keyOrigin" Core..=) Core.<$> keyOrigin,
            ("keyType" Core..=) Core.<$> keyType,
            ("name" Core..=) Core.<$> name,
            ("privateKeyData" Core..=) Core.<$> privateKeyData,
            ("privateKeyType" Core..=) Core.<$> privateKeyType,
            ("publicKeyData" Core..=) Core.<$> publicKeyData,
            ("validAfterTime" Core..=) Core.<$> validAfterTime,
            ("validBeforeTime" Core..=)
              Core.<$> validBeforeTime
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
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

-- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The service account sign blob request.
--
-- /See:/ 'newSignBlobRequest' smart constructor.
newtype SignBlobRequest = SignBlobRequest
  { -- | Required. Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The bytes to sign.
    bytesToSign :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignBlobRequest' with the minimum fields required to make a request.
newSignBlobRequest ::
  SignBlobRequest
newSignBlobRequest = SignBlobRequest {bytesToSign = Core.Nothing}

instance Core.FromJSON SignBlobRequest where
  parseJSON =
    Core.withObject
      "SignBlobRequest"
      ( \o ->
          SignBlobRequest Core.<$> (o Core..:? "bytesToSign")
      )

instance Core.ToJSON SignBlobRequest where
  toJSON SignBlobRequest {..} =
    Core.object
      ( Core.catMaybes
          [("bytesToSign" Core..=) Core.<$> bytesToSign]
      )

-- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The service account sign blob response.
--
-- /See:/ 'newSignBlobResponse' smart constructor.
data SignBlobResponse = SignBlobResponse
  { -- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The id of the key used to sign the blob.
    keyId :: (Core.Maybe Core.Text),
    -- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The signed blob.
    signature :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignBlobResponse' with the minimum fields required to make a request.
newSignBlobResponse ::
  SignBlobResponse
newSignBlobResponse =
  SignBlobResponse {keyId = Core.Nothing, signature = Core.Nothing}

instance Core.FromJSON SignBlobResponse where
  parseJSON =
    Core.withObject
      "SignBlobResponse"
      ( \o ->
          SignBlobResponse
            Core.<$> (o Core..:? "keyId")
            Core.<*> (o Core..:? "signature")
      )

instance Core.ToJSON SignBlobResponse where
  toJSON SignBlobResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyId" Core..=) Core.<$> keyId,
            ("signature" Core..=) Core.<$> signature
          ]
      )

-- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The service account sign JWT request.
--
-- /See:/ 'newSignJwtRequest' smart constructor.
newtype SignJwtRequest = SignJwtRequest
  { -- | Required. Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The JWT payload to sign. Must be a serialized JSON object that contains a JWT Claims Set. For example: @{\"sub\": \"user\@example.com\", \"iat\": 313435}@ If the JWT Claims Set contains an expiration time (@exp@) claim, it must be an integer timestamp that is not in the past and no more than 12 hours in the future. If the JWT Claims Set does not contain an expiration time (@exp@) claim, this claim is added automatically, with a timestamp that is 1 hour in the future.
    payload :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignJwtRequest' with the minimum fields required to make a request.
newSignJwtRequest ::
  SignJwtRequest
newSignJwtRequest = SignJwtRequest {payload = Core.Nothing}

instance Core.FromJSON SignJwtRequest where
  parseJSON =
    Core.withObject
      "SignJwtRequest"
      ( \o ->
          SignJwtRequest Core.<$> (o Core..:? "payload")
      )

instance Core.ToJSON SignJwtRequest where
  toJSON SignJwtRequest {..} =
    Core.object
      ( Core.catMaybes
          [("payload" Core..=) Core.<$> payload]
      )

-- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The service account sign JWT response.
--
-- /See:/ 'newSignJwtResponse' smart constructor.
data SignJwtResponse = SignJwtResponse
  { -- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The id of the key used to sign the JWT.
    keyId :: (Core.Maybe Core.Text),
    -- | Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The signed JWT.
    signedJwt :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignJwtResponse' with the minimum fields required to make a request.
newSignJwtResponse ::
  SignJwtResponse
newSignJwtResponse =
  SignJwtResponse {keyId = Core.Nothing, signedJwt = Core.Nothing}

instance Core.FromJSON SignJwtResponse where
  parseJSON =
    Core.withObject
      "SignJwtResponse"
      ( \o ->
          SignJwtResponse
            Core.<$> (o Core..:? "keyId")
            Core.<*> (o Core..:? "signedJwt")
      )

instance Core.ToJSON SignJwtResponse where
  toJSON SignJwtResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyId" Core..=) Core.<$> keyId,
            ("signedJwt" Core..=) Core.<$> signedJwt
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
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

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

-- | The request to undelete an existing role.
--
-- /See:/ 'newUndeleteRoleRequest' smart constructor.
newtype UndeleteRoleRequest = UndeleteRoleRequest
  { -- | Used to perform a consistent read-modify-write.
    etag :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteRoleRequest' with the minimum fields required to make a request.
newUndeleteRoleRequest ::
  UndeleteRoleRequest
newUndeleteRoleRequest = UndeleteRoleRequest {etag = Core.Nothing}

instance Core.FromJSON UndeleteRoleRequest where
  parseJSON =
    Core.withObject
      "UndeleteRoleRequest"
      ( \o ->
          UndeleteRoleRequest Core.<$> (o Core..:? "etag")
      )

instance Core.ToJSON UndeleteRoleRequest where
  toJSON UndeleteRoleRequest {..} =
    Core.object
      (Core.catMaybes [("etag" Core..=) Core.<$> etag])

-- | The service account undelete request.
--
-- /See:/ 'newUndeleteServiceAccountRequest' smart constructor.
data UndeleteServiceAccountRequest = UndeleteServiceAccountRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteServiceAccountRequest' with the minimum fields required to make a request.
newUndeleteServiceAccountRequest ::
  UndeleteServiceAccountRequest
newUndeleteServiceAccountRequest = UndeleteServiceAccountRequest

instance Core.FromJSON UndeleteServiceAccountRequest where
  parseJSON =
    Core.withObject
      "UndeleteServiceAccountRequest"
      (\o -> Core.pure UndeleteServiceAccountRequest)

instance Core.ToJSON UndeleteServiceAccountRequest where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newUndeleteServiceAccountResponse' smart constructor.
newtype UndeleteServiceAccountResponse = UndeleteServiceAccountResponse
  { -- | Metadata for the restored service account.
    restoredAccount :: (Core.Maybe ServiceAccount)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteServiceAccountResponse' with the minimum fields required to make a request.
newUndeleteServiceAccountResponse ::
  UndeleteServiceAccountResponse
newUndeleteServiceAccountResponse =
  UndeleteServiceAccountResponse {restoredAccount = Core.Nothing}

instance Core.FromJSON UndeleteServiceAccountResponse where
  parseJSON =
    Core.withObject
      "UndeleteServiceAccountResponse"
      ( \o ->
          UndeleteServiceAccountResponse
            Core.<$> (o Core..:? "restoredAccount")
      )

instance Core.ToJSON UndeleteServiceAccountResponse where
  toJSON UndeleteServiceAccountResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("restoredAccount" Core..=)
              Core.<$> restoredAccount
          ]
      )

-- | Request message for UndeleteWorkloadIdentityPoolProvider.
--
-- /See:/ 'newUndeleteWorkloadIdentityPoolProviderRequest' smart constructor.
data UndeleteWorkloadIdentityPoolProviderRequest = UndeleteWorkloadIdentityPoolProviderRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteWorkloadIdentityPoolProviderRequest' with the minimum fields required to make a request.
newUndeleteWorkloadIdentityPoolProviderRequest ::
  UndeleteWorkloadIdentityPoolProviderRequest
newUndeleteWorkloadIdentityPoolProviderRequest =
  UndeleteWorkloadIdentityPoolProviderRequest

instance
  Core.FromJSON
    UndeleteWorkloadIdentityPoolProviderRequest
  where
  parseJSON =
    Core.withObject
      "UndeleteWorkloadIdentityPoolProviderRequest"
      ( \o ->
          Core.pure
            UndeleteWorkloadIdentityPoolProviderRequest
      )

instance
  Core.ToJSON
    UndeleteWorkloadIdentityPoolProviderRequest
  where
  toJSON = Core.const Core.emptyObject

-- | Request message for UndeleteWorkloadIdentityPool.
--
-- /See:/ 'newUndeleteWorkloadIdentityPoolRequest' smart constructor.
data UndeleteWorkloadIdentityPoolRequest = UndeleteWorkloadIdentityPoolRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UndeleteWorkloadIdentityPoolRequest' with the minimum fields required to make a request.
newUndeleteWorkloadIdentityPoolRequest ::
  UndeleteWorkloadIdentityPoolRequest
newUndeleteWorkloadIdentityPoolRequest = UndeleteWorkloadIdentityPoolRequest

instance
  Core.FromJSON
    UndeleteWorkloadIdentityPoolRequest
  where
  parseJSON =
    Core.withObject
      "UndeleteWorkloadIdentityPoolRequest"
      ( \o ->
          Core.pure UndeleteWorkloadIdentityPoolRequest
      )

instance
  Core.ToJSON
    UndeleteWorkloadIdentityPoolRequest
  where
  toJSON = Core.const Core.emptyObject

-- | The service account key upload request.
--
-- /See:/ 'newUploadServiceAccountKeyRequest' smart constructor.
newtype UploadServiceAccountKeyRequest = UploadServiceAccountKeyRequest
  { -- | A field that allows clients to upload their own public key. If set, use this public key data to create a service account key for given service account. Please note, the expected format for this field is X509_PEM.
    publicKeyData :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadServiceAccountKeyRequest' with the minimum fields required to make a request.
newUploadServiceAccountKeyRequest ::
  UploadServiceAccountKeyRequest
newUploadServiceAccountKeyRequest =
  UploadServiceAccountKeyRequest {publicKeyData = Core.Nothing}

instance Core.FromJSON UploadServiceAccountKeyRequest where
  parseJSON =
    Core.withObject
      "UploadServiceAccountKeyRequest"
      ( \o ->
          UploadServiceAccountKeyRequest
            Core.<$> (o Core..:? "publicKeyData")
      )

instance Core.ToJSON UploadServiceAccountKeyRequest where
  toJSON UploadServiceAccountKeyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("publicKeyData" Core..=) Core.<$> publicKeyData]
      )

-- | Represents a collection of external workload identities. You can define IAM policies to grant these identities access to Google Cloud resources.
--
-- /See:/ 'newWorkloadIdentityPool' smart constructor.
data WorkloadIdentityPool = WorkloadIdentityPool
  { -- | A description of the pool. Cannot exceed 256 characters.
    description :: (Core.Maybe Core.Text),
    -- | Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
    disabled :: (Core.Maybe Core.Bool),
    -- | A display name for the pool. Cannot exceed 32 characters.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the pool.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The state of the pool.
    state :: (Core.Maybe WorkloadIdentityPool_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkloadIdentityPool' with the minimum fields required to make a request.
newWorkloadIdentityPool ::
  WorkloadIdentityPool
newWorkloadIdentityPool =
  WorkloadIdentityPool
    { description = Core.Nothing,
      disabled = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON WorkloadIdentityPool where
  parseJSON =
    Core.withObject
      "WorkloadIdentityPool"
      ( \o ->
          WorkloadIdentityPool
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON WorkloadIdentityPool where
  toJSON WorkloadIdentityPool {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("disabled" Core..=) Core.<$> disabled,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | A configuration for an external identity provider.
--
-- /See:/ 'newWorkloadIdentityPoolProvider' smart constructor.
data WorkloadIdentityPoolProvider = WorkloadIdentityPoolProvider
  { -- | <https://opensource.google/projects/cel A Common Expression Language> expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * @assertion@: JSON representing the authentication credential issued by the provider. * @google@: The Google attributes mapped from the assertion in the @attribute_mappings@. * @attribute@: The custom attributes mapped from the assertion in the @attribute_mappings@. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credential are accepted. The following example shows how to only allow credentials with a mapped @google.groups@ value of @admins@: @\"\'admins\' in google.groups\"@
    attributeCondition :: (Core.Maybe Core.Text),
    -- | Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes, such as @subject@ and @segment@. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * @google.subject@: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. Cannot exceed 127 bytes. * @google.groups@: Groups the external identity belongs to. You can grant groups access to resources using an IAM @principalSet@ binding; access applies to all members of the group. You can also provide custom attributes by specifying @attribute.{custom_attribute}@, where @{custom_attribute}@ is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define
    -- fine-grained access for a workload to Google Cloud resources. For example: * @google.subject@: @principal:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/subject\/{value}@ * @google.groups@: @principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/group\/{value}@ * @attribute.{custom_attribute}@: @principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/attribute.{custom_attribute}\/{value}@ Each value must be a [Common Expression Language] (https:\/\/opensource.google\/projects\/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the @assertion@ keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of
    -- all mapped attributes must not exceed 8KB. For AWS providers, if no attribute mapping is defined, the following default mapping applies: @{ \"google.subject\":\"assertion.arn\", \"attribute.aws_role\": \"assertion.arn.contains(\'assumed-role\')\" \" ? assertion.arn.extract(\'{account_arn}assumed-role\/\')\" \" + \'assumed-role\/\'\" \" + assertion.arn.extract(\'assumed-role\/{role_name}\/\')\" \" : assertion.arn\", }@ If any custom attribute mappings are defined, they must include a mapping to the @google.subject@ attribute. For OIDC providers, you must supply a custom mapping, which must include the @google.subject@ attribute. For example, the following maps the @sub@ claim of the incoming credential to the @subject@ attribute on a Google token: @{\"google.subject\": \"assertion.sub\"}@
    attributeMapping :: (Core.Maybe WorkloadIdentityPoolProvider_AttributeMapping),
    -- | An Amazon Web Services identity provider.
    aws :: (Core.Maybe Aws),
    -- | A description for the provider. Cannot exceed 256 characters.
    description :: (Core.Maybe Core.Text),
    -- | Whether the provider is disabled. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
    disabled :: (Core.Maybe Core.Bool),
    -- | A display name for the provider. Cannot exceed 32 characters.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the provider.
    name :: (Core.Maybe Core.Text),
    -- | An OpenId Connect 1.0 identity provider.
    oidc :: (Core.Maybe Oidc),
    -- | Output only. The state of the provider.
    state :: (Core.Maybe WorkloadIdentityPoolProvider_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkloadIdentityPoolProvider' with the minimum fields required to make a request.
newWorkloadIdentityPoolProvider ::
  WorkloadIdentityPoolProvider
newWorkloadIdentityPoolProvider =
  WorkloadIdentityPoolProvider
    { attributeCondition = Core.Nothing,
      attributeMapping = Core.Nothing,
      aws = Core.Nothing,
      description = Core.Nothing,
      disabled = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      oidc = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON WorkloadIdentityPoolProvider where
  parseJSON =
    Core.withObject
      "WorkloadIdentityPoolProvider"
      ( \o ->
          WorkloadIdentityPoolProvider
            Core.<$> (o Core..:? "attributeCondition")
            Core.<*> (o Core..:? "attributeMapping")
            Core.<*> (o Core..:? "aws")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "oidc")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON WorkloadIdentityPoolProvider where
  toJSON WorkloadIdentityPoolProvider {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeCondition" Core..=)
              Core.<$> attributeCondition,
            ("attributeMapping" Core..=)
              Core.<$> attributeMapping,
            ("aws" Core..=) Core.<$> aws,
            ("description" Core..=) Core.<$> description,
            ("disabled" Core..=) Core.<$> disabled,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("oidc" Core..=) Core.<$> oidc,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes, such as @subject@ and @segment@. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * @google.subject@: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. Cannot exceed 127 bytes. * @google.groups@: Groups the external identity belongs to. You can grant groups access to resources using an IAM @principalSet@ binding; access applies to all members of the group. You can also provide custom attributes by specifying @attribute.{custom_attribute}@, where @{custom_attribute}@ is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define
-- fine-grained access for a workload to Google Cloud resources. For example: * @google.subject@: @principal:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/subject\/{value}@ * @google.groups@: @principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/group\/{value}@ * @attribute.{custom_attribute}@: @principalSet:\/\/iam.googleapis.com\/projects\/{project}\/locations\/{location}\/workloadIdentityPools\/{pool}\/attribute.{custom_attribute}\/{value}@ Each value must be a [Common Expression Language] (https:\/\/opensource.google\/projects\/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the @assertion@ keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of
-- all mapped attributes must not exceed 8KB. For AWS providers, if no attribute mapping is defined, the following default mapping applies: @{ \"google.subject\":\"assertion.arn\", \"attribute.aws_role\": \"assertion.arn.contains(\'assumed-role\')\" \" ? assertion.arn.extract(\'{account_arn}assumed-role\/\')\" \" + \'assumed-role\/\'\" \" + assertion.arn.extract(\'assumed-role\/{role_name}\/\')\" \" : assertion.arn\", }@ If any custom attribute mappings are defined, they must include a mapping to the @google.subject@ attribute. For OIDC providers, you must supply a custom mapping, which must include the @google.subject@ attribute. For example, the following maps the @sub@ claim of the incoming credential to the @subject@ attribute on a Google token: @{\"google.subject\": \"assertion.sub\"}@
--
-- /See:/ 'newWorkloadIdentityPoolProvider_AttributeMapping' smart constructor.
newtype WorkloadIdentityPoolProvider_AttributeMapping = WorkloadIdentityPoolProvider_AttributeMapping
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkloadIdentityPoolProvider_AttributeMapping' with the minimum fields required to make a request.
newWorkloadIdentityPoolProvider_AttributeMapping ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WorkloadIdentityPoolProvider_AttributeMapping
newWorkloadIdentityPoolProvider_AttributeMapping additional =
  WorkloadIdentityPoolProvider_AttributeMapping {additional = additional}

instance
  Core.FromJSON
    WorkloadIdentityPoolProvider_AttributeMapping
  where
  parseJSON =
    Core.withObject
      "WorkloadIdentityPoolProvider_AttributeMapping"
      ( \o ->
          WorkloadIdentityPoolProvider_AttributeMapping
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    WorkloadIdentityPoolProvider_AttributeMapping
  where
  toJSON
    WorkloadIdentityPoolProvider_AttributeMapping {..} =
      Core.toJSON additional
