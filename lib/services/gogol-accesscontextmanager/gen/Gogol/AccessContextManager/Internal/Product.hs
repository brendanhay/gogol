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
-- Module      : Gogol.AccessContextManager.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AccessContextManager.Internal.Product
  ( -- * AccessContextManagerOperationMetadata
    AccessContextManagerOperationMetadata (..),
    newAccessContextManagerOperationMetadata,

    -- * AccessLevel
    AccessLevel (..),
    newAccessLevel,

    -- * AccessPolicy
    AccessPolicy (..),
    newAccessPolicy,

    -- * ApiOperation
    ApiOperation (..),
    newApiOperation,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * AuthorizedOrgsDesc
    AuthorizedOrgsDesc (..),
    newAuthorizedOrgsDesc,

    -- * BasicLevel
    BasicLevel (..),
    newBasicLevel,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CommitServicePerimetersRequest
    CommitServicePerimetersRequest (..),
    newCommitServicePerimetersRequest,

    -- * CommitServicePerimetersResponse
    CommitServicePerimetersResponse (..),
    newCommitServicePerimetersResponse,

    -- * Condition
    Condition (..),
    newCondition,

    -- * CustomLevel
    CustomLevel (..),
    newCustomLevel,

    -- * DevicePolicy
    DevicePolicy (..),
    newDevicePolicy,

    -- * EgressFrom
    EgressFrom (..),
    newEgressFrom,

    -- * EgressPolicy
    EgressPolicy (..),
    newEgressPolicy,

    -- * EgressTo
    EgressTo (..),
    newEgressTo,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GcpUserAccessBinding
    GcpUserAccessBinding (..),
    newGcpUserAccessBinding,

    -- * GcpUserAccessBindingOperationMetadata
    GcpUserAccessBindingOperationMetadata (..),
    newGcpUserAccessBindingOperationMetadata,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * IngressFrom
    IngressFrom (..),
    newIngressFrom,

    -- * IngressPolicy
    IngressPolicy (..),
    newIngressPolicy,

    -- * IngressSource
    IngressSource (..),
    newIngressSource,

    -- * IngressTo
    IngressTo (..),
    newIngressTo,

    -- * ListAccessLevelsResponse
    ListAccessLevelsResponse (..),
    newListAccessLevelsResponse,

    -- * ListAccessPoliciesResponse
    ListAccessPoliciesResponse (..),
    newListAccessPoliciesResponse,

    -- * ListAuthorizedOrgsDescsResponse
    ListAuthorizedOrgsDescsResponse (..),
    newListAuthorizedOrgsDescsResponse,

    -- * ListGcpUserAccessBindingsResponse
    ListGcpUserAccessBindingsResponse (..),
    newListGcpUserAccessBindingsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListServicePerimetersResponse
    ListServicePerimetersResponse (..),
    newListServicePerimetersResponse,

    -- * MethodSelector
    MethodSelector (..),
    newMethodSelector,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OsConstraint
    OsConstraint (..),
    newOsConstraint,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * ReplaceAccessLevelsRequest
    ReplaceAccessLevelsRequest (..),
    newReplaceAccessLevelsRequest,

    -- * ReplaceAccessLevelsResponse
    ReplaceAccessLevelsResponse (..),
    newReplaceAccessLevelsResponse,

    -- * ReplaceServicePerimetersRequest
    ReplaceServicePerimetersRequest (..),
    newReplaceServicePerimetersRequest,

    -- * ReplaceServicePerimetersResponse
    ReplaceServicePerimetersResponse (..),
    newReplaceServicePerimetersResponse,

    -- * ServicePerimeter
    ServicePerimeter (..),
    newServicePerimeter,

    -- * ServicePerimeterConfig
    ServicePerimeterConfig (..),
    newServicePerimeterConfig,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

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

    -- * VpcAccessibleServices
    VpcAccessibleServices (..),
    newVpcAccessibleServices,
  )
where

import Gogol.AccessContextManager.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Metadata of Access Context Manager\'s Long Running Operations.
--
-- /See:/ 'newAccessContextManagerOperationMetadata' smart constructor.
data AccessContextManagerOperationMetadata = AccessContextManagerOperationMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerOperationMetadata' with the minimum fields required to make a request.
newAccessContextManagerOperationMetadata ::
  AccessContextManagerOperationMetadata
newAccessContextManagerOperationMetadata = AccessContextManagerOperationMetadata

instance
  Core.FromJSON
    AccessContextManagerOperationMetadata
  where
  parseJSON =
    Core.withObject
      "AccessContextManagerOperationMetadata"
      ( \o ->
          Core.pure AccessContextManagerOperationMetadata
      )

instance
  Core.ToJSON
    AccessContextManagerOperationMetadata
  where
  toJSON = Core.const Core.emptyObject

-- | An @AccessLevel@ is a label that can be applied to requests to Google Cloud services, along with a list of requirements necessary for the label to be applied.
--
-- /See:/ 'newAccessLevel' smart constructor.
data AccessLevel = AccessLevel
  { -- | A @BasicLevel@ composed of @Conditions@.
    basic :: (Core.Maybe BasicLevel),
    -- | A @CustomLevel@ written in the Common Expression Language.
    custom :: (Core.Maybe CustomLevel),
    -- | Description of the @AccessLevel@ and its use. Does not affect behavior.
    description :: (Core.Maybe Core.Text),
    -- | Resource name for the @AccessLevel@. Format: @accessPolicies\/{access_policy}\/accessLevels\/{access_level}@. The @access_level@ component must begin with a letter, followed by alphanumeric characters or @_@. Its maximum length is 50 characters. After you create an @AccessLevel@, you cannot change its @name@.
    name :: (Core.Maybe Core.Text),
    -- | Human readable title. Must be unique within the Policy.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessLevel' with the minimum fields required to make a request.
newAccessLevel ::
  AccessLevel
newAccessLevel =
  AccessLevel
    { basic = Core.Nothing,
      custom = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON AccessLevel where
  parseJSON =
    Core.withObject
      "AccessLevel"
      ( \o ->
          AccessLevel
            Core.<$> (o Core..:? "basic")
            Core.<*> (o Core..:? "custom")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON AccessLevel where
  toJSON AccessLevel {..} =
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
-- /See:/ 'newAccessPolicy' smart constructor.
data AccessPolicy = AccessPolicy
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

-- | Creates a value of 'AccessPolicy' with the minimum fields required to make a request.
newAccessPolicy ::
  AccessPolicy
newAccessPolicy =
  AccessPolicy
    { etag = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      scopes = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON AccessPolicy where
  parseJSON =
    Core.withObject
      "AccessPolicy"
      ( \o ->
          AccessPolicy
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "scopes")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON AccessPolicy where
  toJSON AccessPolicy {..} =
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
-- /See:/ 'newApiOperation' smart constructor.
data ApiOperation = ApiOperation
  { -- | API methods or permissions to allow. Method or permission must belong to the service specified by @service_name@ field. A single MethodSelector entry with @*@ specified for the @method@ field will allow all methods AND permissions for the service specified in @service_name@.
    methodSelectors :: (Core.Maybe [MethodSelector]),
    -- | The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with @service_name@ field set to @*@ will allow all methods AND permissions for all services.
    serviceName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiOperation' with the minimum fields required to make a request.
newApiOperation ::
  ApiOperation
newApiOperation =
  ApiOperation {methodSelectors = Core.Nothing, serviceName = Core.Nothing}

instance Core.FromJSON ApiOperation where
  parseJSON =
    Core.withObject
      "ApiOperation"
      ( \o ->
          ApiOperation
            Core.<$> (o Core..:? "methodSelectors")
            Core.<*> (o Core..:? "serviceName")
      )

instance Core.ToJSON ApiOperation where
  toJSON ApiOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("methodSelectors" Core..=)
              Core.<$> methodSelectors,
            ("serviceName" Core..=) Core.<$> serviceName
          ]
      )

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

-- | @AuthorizedOrgsDesc@ contains data for an organization\'s authorization policy.
--
-- /See:/ 'newAuthorizedOrgsDesc' smart constructor.
data AuthorizedOrgsDesc = AuthorizedOrgsDesc
  { -- | The asset type of this authorized orgs desc. Valid values are @ASSET_TYPE_DEVICE@, and @ASSET_TYPE_CREDENTIAL_STRENGTH@.
    assetType :: (Core.Maybe AuthorizedOrgsDesc_AssetType),
    -- | The direction of the authorization relationship between this organization and the organizations listed in the @orgs@ field. The valid values for this field include the following: @AUTHORIZATION_DIRECTION_FROM@: Allows this organization to evaluate traffic in the organizations listed in the @orgs@ field. @AUTHORIZATION_DIRECTION_TO@: Allows the organizations listed in the @orgs@ field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying @AUTHORIZATION_DIRECTION_TO@ as the authorization direction, organizations B and C must specify @AUTHORIZATION_DIRECTION_FROM@ as the authorization direction in their @AuthorizedOrgsDesc@ resource.
    authorizationDirection :: (Core.Maybe AuthorizedOrgsDesc_AuthorizationDirection),
    -- | A granular control type for authorization levels. Valid value is @AUTHORIZATION_TYPE_TRUST@.
    authorizationType :: (Core.Maybe AuthorizedOrgsDesc_AuthorizationType),
    -- | Resource name for the @AuthorizedOrgsDesc@. Format: @accessPolicies\/{access_policy}\/authorizedOrgsDescs\/{authorized_orgs_desc}@. The @authorized_orgs_desc@ component must begin with a letter, followed by alphanumeric characters or @_@. After you create an @AuthorizedOrgsDesc@, you cannot change its @name@.
    name :: (Core.Maybe Core.Text),
    -- | The list of organization ids in this AuthorizedOrgsDesc. Format: @organizations\/@ Example: @organizations\/123456@
    orgs :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthorizedOrgsDesc' with the minimum fields required to make a request.
newAuthorizedOrgsDesc ::
  AuthorizedOrgsDesc
newAuthorizedOrgsDesc =
  AuthorizedOrgsDesc
    { assetType = Core.Nothing,
      authorizationDirection = Core.Nothing,
      authorizationType = Core.Nothing,
      name = Core.Nothing,
      orgs = Core.Nothing
    }

instance Core.FromJSON AuthorizedOrgsDesc where
  parseJSON =
    Core.withObject
      "AuthorizedOrgsDesc"
      ( \o ->
          AuthorizedOrgsDesc
            Core.<$> (o Core..:? "assetType")
            Core.<*> (o Core..:? "authorizationDirection")
            Core.<*> (o Core..:? "authorizationType")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgs")
      )

instance Core.ToJSON AuthorizedOrgsDesc where
  toJSON AuthorizedOrgsDesc {..} =
    Core.object
      ( Core.catMaybes
          [ ("assetType" Core..=) Core.<$> assetType,
            ("authorizationDirection" Core..=)
              Core.<$> authorizationDirection,
            ("authorizationType" Core..=)
              Core.<$> authorizationType,
            ("name" Core..=) Core.<$> name,
            ("orgs" Core..=) Core.<$> orgs
          ]
      )

-- | @BasicLevel@ is an @AccessLevel@ using a set of recommended features.
--
-- /See:/ 'newBasicLevel' smart constructor.
data BasicLevel = BasicLevel
  { -- | How the @conditions@ list should be combined to determine if a request is granted this @AccessLevel@. If AND is used, each @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. If OR is used, at least one @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. Default behavior is AND.
    combiningFunction :: (Core.Maybe BasicLevel_CombiningFunction),
    -- | Required. A list of requirements for the @AccessLevel@ to be granted.
    conditions :: (Core.Maybe [Condition])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicLevel' with the minimum fields required to make a request.
newBasicLevel ::
  BasicLevel
newBasicLevel =
  BasicLevel {combiningFunction = Core.Nothing, conditions = Core.Nothing}

instance Core.FromJSON BasicLevel where
  parseJSON =
    Core.withObject
      "BasicLevel"
      ( \o ->
          BasicLevel
            Core.<$> (o Core..:? "combiningFunction")
            Core.<*> (o Core..:? "conditions")
      )

instance Core.ToJSON BasicLevel where
  toJSON BasicLevel {..} =
    Core.object
      ( Core.catMaybes
          [ ("combiningFunction" Core..=)
              Core.<$> combiningFunction,
            ("conditions" Core..=) Core.<$> conditions
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

-- | A request to commit dry-run specs in all Service Perimeters belonging to an Access Policy.
--
-- /See:/ 'newCommitServicePerimetersRequest' smart constructor.
newtype CommitServicePerimetersRequest = CommitServicePerimetersRequest
  { -- | Optional. The etag for the version of the Access Policy that this commit operation is to be performed on. If, at the time of commit, the etag for the Access Policy stored in Access Context Manager is different from the specified etag, then the commit operation will not be performed and the call will fail. This field is not required. If etag is not provided, the operation will be performed as if a valid etag is provided.
    etag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitServicePerimetersRequest' with the minimum fields required to make a request.
newCommitServicePerimetersRequest ::
  CommitServicePerimetersRequest
newCommitServicePerimetersRequest =
  CommitServicePerimetersRequest {etag = Core.Nothing}

instance Core.FromJSON CommitServicePerimetersRequest where
  parseJSON =
    Core.withObject
      "CommitServicePerimetersRequest"
      ( \o ->
          CommitServicePerimetersRequest
            Core.<$> (o Core..:? "etag")
      )

instance Core.ToJSON CommitServicePerimetersRequest where
  toJSON CommitServicePerimetersRequest {..} =
    Core.object
      (Core.catMaybes [("etag" Core..=) Core.<$> etag])

-- | A response to CommitServicePerimetersRequest. This will be put inside of Operation.response field.
--
-- /See:/ 'newCommitServicePerimetersResponse' smart constructor.
newtype CommitServicePerimetersResponse = CommitServicePerimetersResponse
  { -- | List of all the Service Perimeter instances in the Access Policy.
    servicePerimeters :: (Core.Maybe [ServicePerimeter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitServicePerimetersResponse' with the minimum fields required to make a request.
newCommitServicePerimetersResponse ::
  CommitServicePerimetersResponse
newCommitServicePerimetersResponse =
  CommitServicePerimetersResponse {servicePerimeters = Core.Nothing}

instance
  Core.FromJSON
    CommitServicePerimetersResponse
  where
  parseJSON =
    Core.withObject
      "CommitServicePerimetersResponse"
      ( \o ->
          CommitServicePerimetersResponse
            Core.<$> (o Core..:? "servicePerimeters")
      )

instance Core.ToJSON CommitServicePerimetersResponse where
  toJSON CommitServicePerimetersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("servicePerimeters" Core..=)
              Core.<$> servicePerimeters
          ]
      )

-- | A condition necessary for an @AccessLevel@ to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.
--
-- /See:/ 'newCondition' smart constructor.
data Condition = Condition
  { -- | Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.
    devicePolicy :: (Core.Maybe DevicePolicy),
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

-- | Creates a value of 'Condition' with the minimum fields required to make a request.
newCondition ::
  Condition
newCondition =
  Condition
    { devicePolicy = Core.Nothing,
      ipSubnetworks = Core.Nothing,
      members = Core.Nothing,
      negate = Core.Nothing,
      regions = Core.Nothing,
      requiredAccessLevels = Core.Nothing
    }

instance Core.FromJSON Condition where
  parseJSON =
    Core.withObject
      "Condition"
      ( \o ->
          Condition
            Core.<$> (o Core..:? "devicePolicy")
            Core.<*> (o Core..:? "ipSubnetworks")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "negate")
            Core.<*> (o Core..:? "regions")
            Core.<*> (o Core..:? "requiredAccessLevels")
      )

instance Core.ToJSON Condition where
  toJSON Condition {..} =
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
-- /See:/ 'newCustomLevel' smart constructor.
newtype CustomLevel = CustomLevel
  { -- | Required. A Cloud CEL expression evaluating to a boolean.
    expr :: (Core.Maybe Expr)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomLevel' with the minimum fields required to make a request.
newCustomLevel ::
  CustomLevel
newCustomLevel = CustomLevel {expr = Core.Nothing}

instance Core.FromJSON CustomLevel where
  parseJSON =
    Core.withObject
      "CustomLevel"
      (\o -> CustomLevel Core.<$> (o Core..:? "expr"))

instance Core.ToJSON CustomLevel where
  toJSON CustomLevel {..} =
    Core.object
      (Core.catMaybes [("expr" Core..=) Core.<$> expr])

-- | @DevicePolicy@ specifies device specific restrictions necessary to acquire a given access level. A @DevicePolicy@ specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. @DevicePolicy@ acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os/type : DESKTOP/WINDOWS, os/type : DESKTOP/LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.
--
-- /See:/ 'newDevicePolicy' smart constructor.
data DevicePolicy = DevicePolicy
  { -- | Allowed device management levels, an empty list allows all management levels.
    allowedDeviceManagementLevels :: (Core.Maybe [DevicePolicy_AllowedDeviceManagementLevelsItem]),
    -- | Allowed encryptions statuses, an empty list allows all statuses.
    allowedEncryptionStatuses :: (Core.Maybe [DevicePolicy_AllowedEncryptionStatusesItem]),
    -- | Allowed OS versions, an empty list allows all types and all versions.
    osConstraints :: (Core.Maybe [OsConstraint]),
    -- | Whether the device needs to be approved by the customer admin.
    requireAdminApproval :: (Core.Maybe Core.Bool),
    -- | Whether the device needs to be corp owned.
    requireCorpOwned :: (Core.Maybe Core.Bool),
    -- | Whether or not screenlock is required for the DevicePolicy to be true. Defaults to @false@.
    requireScreenlock :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DevicePolicy' with the minimum fields required to make a request.
newDevicePolicy ::
  DevicePolicy
newDevicePolicy =
  DevicePolicy
    { allowedDeviceManagementLevels = Core.Nothing,
      allowedEncryptionStatuses = Core.Nothing,
      osConstraints = Core.Nothing,
      requireAdminApproval = Core.Nothing,
      requireCorpOwned = Core.Nothing,
      requireScreenlock = Core.Nothing
    }

instance Core.FromJSON DevicePolicy where
  parseJSON =
    Core.withObject
      "DevicePolicy"
      ( \o ->
          DevicePolicy
            Core.<$> (o Core..:? "allowedDeviceManagementLevels")
            Core.<*> (o Core..:? "allowedEncryptionStatuses")
            Core.<*> (o Core..:? "osConstraints")
            Core.<*> (o Core..:? "requireAdminApproval")
            Core.<*> (o Core..:? "requireCorpOwned")
            Core.<*> (o Core..:? "requireScreenlock")
      )

instance Core.ToJSON DevicePolicy where
  toJSON DevicePolicy {..} =
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
-- /See:/ 'newEgressFrom' smart constructor.
data EgressFrom = EgressFrom
  { -- | A list of identities that are allowed access through this [EgressPolicy]. Should be in the format of email address. The email address should represent individual user or service account only.
    identities :: (Core.Maybe [Core.Text]),
    -- | Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
    identityType :: (Core.Maybe EgressFrom_IdentityType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EgressFrom' with the minimum fields required to make a request.
newEgressFrom ::
  EgressFrom
newEgressFrom =
  EgressFrom {identities = Core.Nothing, identityType = Core.Nothing}

instance Core.FromJSON EgressFrom where
  parseJSON =
    Core.withObject
      "EgressFrom"
      ( \o ->
          EgressFrom
            Core.<$> (o Core..:? "identities")
            Core.<*> (o Core..:? "identityType")
      )

instance Core.ToJSON EgressFrom where
  toJSON EgressFrom {..} =
    Core.object
      ( Core.catMaybes
          [ ("identities" Core..=) Core.<$> identities,
            ("identityType" Core..=) Core.<$> identityType
          ]
      )

-- | Policy for egress from perimeter. EgressPolicies match requests based on @egress_from@ and @egress_to@ stanzas. For an EgressPolicy to match, both @egress_from@ and @egress_to@ stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the /resources/ that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.
--
-- /See:/ 'newEgressPolicy' smart constructor.
data EgressPolicy = EgressPolicy
  { -- | Defines conditions on the source of a request causing this EgressPolicy to apply.
    egressFrom :: (Core.Maybe EgressFrom),
    -- | Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.
    egressTo :: (Core.Maybe EgressTo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EgressPolicy' with the minimum fields required to make a request.
newEgressPolicy ::
  EgressPolicy
newEgressPolicy =
  EgressPolicy {egressFrom = Core.Nothing, egressTo = Core.Nothing}

instance Core.FromJSON EgressPolicy where
  parseJSON =
    Core.withObject
      "EgressPolicy"
      ( \o ->
          EgressPolicy
            Core.<$> (o Core..:? "egressFrom")
            Core.<*> (o Core..:? "egressTo")
      )

instance Core.ToJSON EgressPolicy where
  toJSON EgressPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("egressFrom" Core..=) Core.<$> egressFrom,
            ("egressTo" Core..=) Core.<$> egressTo
          ]
      )

-- | Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the @resources@ specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match @operations@ AND @resources@ fields in order to be allowed egress out of the perimeter.
--
-- /See:/ 'newEgressTo' smart constructor.
data EgressTo = EgressTo
  { -- | A list of external resources that are allowed to be accessed. Only AWS and Azure resources are supported. For Amazon S3, the supported format is s3:\/\/BUCKET/NAME. For Azure Storage, the supported format is azure:\/\/myaccount.blob.core.windows.net\/CONTAINER/NAME. A request matches if it contains an external resource in this list (Example: s3:\/\/bucket\/path). Currently \'*\' is not allowed.
    externalResources :: (Core.Maybe [Core.Text]),
    -- | A list of ApiOperations allowed to be performed by the sources specified in the corresponding EgressFrom. A request matches if it uses an operation\/service in this list.
    operations :: (Core.Maybe [ApiOperation]),
    -- | A list of resources, currently only projects in the form @projects\/@, that are allowed to be accessed by sources defined in the corresponding EgressFrom. A request matches if it contains a resource in this list. If @*@ is specified for @resources@, then this EgressTo rule will authorize access to all resources outside the perimeter.
    resources :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EgressTo' with the minimum fields required to make a request.
newEgressTo ::
  EgressTo
newEgressTo =
  EgressTo
    { externalResources = Core.Nothing,
      operations = Core.Nothing,
      resources = Core.Nothing
    }

instance Core.FromJSON EgressTo where
  parseJSON =
    Core.withObject
      "EgressTo"
      ( \o ->
          EgressTo
            Core.<$> (o Core..:? "externalResources")
            Core.<*> (o Core..:? "operations")
            Core.<*> (o Core..:? "resources")
      )

instance Core.ToJSON EgressTo where
  toJSON EgressTo {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalResources" Core..=)
              Core.<$> externalResources,
            ("operations" Core..=) Core.<$> operations,
            ("resources" Core..=) Core.<$> resources
          ]
      )

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

-- | Restricts access to Cloud Console and Google Cloud APIs for a set of users using Context-Aware Access.
--
-- /See:/ 'newGcpUserAccessBinding' smart constructor.
data GcpUserAccessBinding = GcpUserAccessBinding
  { -- | Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: \"accessPolicies\/9522\/accessLevels\/device_trusted\"
    accessLevels :: (Core.Maybe [Core.Text]),
    -- | Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: \"accessPolicies\/9522\/accessLevels\/device_trusted\"
    dryRunAccessLevels :: (Core.Maybe [Core.Text]),
    -- | Required. Immutable. Google Group id whose members are subject to this binding\'s restrictions. See \"id\" in the [G Suite Directory API\'s Groups resource] (https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/reference\/groups#resource). If a group\'s email address\/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: \"01d520gv4vjcrht\"
    groupKey :: (Core.Maybe Core.Text),
    -- | Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by <https://tools.ietf.org/html/rfc3986#section-2.3 RFC 3986 Section 2.3>). Should not be specified by the client during creation. Example: \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcpUserAccessBinding' with the minimum fields required to make a request.
newGcpUserAccessBinding ::
  GcpUserAccessBinding
newGcpUserAccessBinding =
  GcpUserAccessBinding
    { accessLevels = Core.Nothing,
      dryRunAccessLevels = Core.Nothing,
      groupKey = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON GcpUserAccessBinding where
  parseJSON =
    Core.withObject
      "GcpUserAccessBinding"
      ( \o ->
          GcpUserAccessBinding
            Core.<$> (o Core..:? "accessLevels")
            Core.<*> (o Core..:? "dryRunAccessLevels")
            Core.<*> (o Core..:? "groupKey")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON GcpUserAccessBinding where
  toJSON GcpUserAccessBinding {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessLevels" Core..=) Core.<$> accessLevels,
            ("dryRunAccessLevels" Core..=)
              Core.<$> dryRunAccessLevels,
            ("groupKey" Core..=) Core.<$> groupKey,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Currently, a completed operation means nothing. In the future, this metadata and a completed operation may indicate that the binding has taken effect and is affecting access decisions for all users.
--
-- /See:/ 'newGcpUserAccessBindingOperationMetadata' smart constructor.
data GcpUserAccessBindingOperationMetadata = GcpUserAccessBindingOperationMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcpUserAccessBindingOperationMetadata' with the minimum fields required to make a request.
newGcpUserAccessBindingOperationMetadata ::
  GcpUserAccessBindingOperationMetadata
newGcpUserAccessBindingOperationMetadata = GcpUserAccessBindingOperationMetadata

instance
  Core.FromJSON
    GcpUserAccessBindingOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GcpUserAccessBindingOperationMetadata"
      ( \o ->
          Core.pure GcpUserAccessBindingOperationMetadata
      )

instance
  Core.ToJSON
    GcpUserAccessBindingOperationMetadata
  where
  toJSON = Core.const Core.emptyObject

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
  { -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
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

-- | Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in @sources@ AND identity related fields in order to match.
--
-- /See:/ 'newIngressFrom' smart constructor.
data IngressFrom = IngressFrom
  { -- | A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.
    identities :: (Core.Maybe [Core.Text]),
    -- | Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
    identityType :: (Core.Maybe IngressFrom_IdentityType),
    -- | Sources that this IngressPolicy authorizes access from.
    sources :: (Core.Maybe [IngressSource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IngressFrom' with the minimum fields required to make a request.
newIngressFrom ::
  IngressFrom
newIngressFrom =
  IngressFrom
    { identities = Core.Nothing,
      identityType = Core.Nothing,
      sources = Core.Nothing
    }

instance Core.FromJSON IngressFrom where
  parseJSON =
    Core.withObject
      "IngressFrom"
      ( \o ->
          IngressFrom
            Core.<$> (o Core..:? "identities")
            Core.<*> (o Core..:? "identityType")
            Core.<*> (o Core..:? "sources")
      )

instance Core.ToJSON IngressFrom where
  toJSON IngressFrom {..} =
    Core.object
      ( Core.catMaybes
          [ ("identities" Core..=) Core.<$> identities,
            ("identityType" Core..=) Core.<$> identityType,
            ("sources" Core..=) Core.<$> sources
          ]
      )

-- | Policy for ingress into ServicePerimeter. IngressPolicies match requests based on @ingress_from@ and @ingress_to@ stanzas. For an ingress policy to match, both the @ingress_from@ and @ingress_to@ stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and\/or actions they match using the @ingress_to@ field.
--
-- /See:/ 'newIngressPolicy' smart constructor.
data IngressPolicy = IngressPolicy
  { -- | Defines the conditions on the source of a request causing this IngressPolicy to apply.
    ingressFrom :: (Core.Maybe IngressFrom),
    -- | Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.
    ingressTo :: (Core.Maybe IngressTo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IngressPolicy' with the minimum fields required to make a request.
newIngressPolicy ::
  IngressPolicy
newIngressPolicy =
  IngressPolicy {ingressFrom = Core.Nothing, ingressTo = Core.Nothing}

instance Core.FromJSON IngressPolicy where
  parseJSON =
    Core.withObject
      "IngressPolicy"
      ( \o ->
          IngressPolicy
            Core.<$> (o Core..:? "ingressFrom")
            Core.<*> (o Core..:? "ingressTo")
      )

instance Core.ToJSON IngressPolicy where
  toJSON IngressPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("ingressFrom" Core..=) Core.<$> ingressFrom,
            ("ingressTo" Core..=) Core.<$> ingressTo
          ]
      )

-- | The source that IngressPolicy authorizes access from.
--
-- /See:/ 'newIngressSource' smart constructor.
data IngressSource = IngressSource
  { -- | An AccessLevel resource name that allow resources within the ServicePerimeters to be accessed from the internet. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will cause an error. If no AccessLevel names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: @accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL@. If a single @*@ is specified for @access_level@, then all IngressSources will be allowed.
    accessLevel :: (Core.Maybe Core.Text),
    -- | A Google Cloud resource that is allowed to ingress the perimeter. Requests from these resources will be allowed to access perimeter data. Currently only projects and VPCs are allowed. Project format: @projects\/{project_number}@ VPC network format: @\/\/compute.googleapis.com\/projects\/{PROJECT_ID}\/global\/networks\/{NAME}@. The project may be in any Google Cloud organization, not just the organization that the perimeter is defined in. @*@ is not allowed, the case of allowing all Google Cloud resources only is not supported.
    resource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IngressSource' with the minimum fields required to make a request.
newIngressSource ::
  IngressSource
newIngressSource =
  IngressSource {accessLevel = Core.Nothing, resource = Core.Nothing}

instance Core.FromJSON IngressSource where
  parseJSON =
    Core.withObject
      "IngressSource"
      ( \o ->
          IngressSource
            Core.<$> (o Core..:? "accessLevel")
            Core.<*> (o Core..:? "resource")
      )

instance Core.ToJSON IngressSource where
  toJSON IngressSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessLevel" Core..=) Core.<$> accessLevel,
            ("resource" Core..=) Core.<$> resource
          ]
      )

-- | Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in @operations@ AND @resources@ in order to match.
--
-- /See:/ 'newIngressTo' smart constructor.
data IngressTo = IngressTo
  { -- | A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.
    operations :: (Core.Maybe [ApiOperation]),
    -- | A list of resources, currently only projects in the form @projects\/@, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single @*@ is specified, then access to all resources inside the perimeter are allowed.
    resources :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IngressTo' with the minimum fields required to make a request.
newIngressTo ::
  IngressTo
newIngressTo = IngressTo {operations = Core.Nothing, resources = Core.Nothing}

instance Core.FromJSON IngressTo where
  parseJSON =
    Core.withObject
      "IngressTo"
      ( \o ->
          IngressTo
            Core.<$> (o Core..:? "operations")
            Core.<*> (o Core..:? "resources")
      )

instance Core.ToJSON IngressTo where
  toJSON IngressTo {..} =
    Core.object
      ( Core.catMaybes
          [ ("operations" Core..=) Core.<$> operations,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | A response to @ListAccessLevelsRequest@.
--
-- /See:/ 'newListAccessLevelsResponse' smart constructor.
data ListAccessLevelsResponse = ListAccessLevelsResponse
  { -- | List of the Access Level instances.
    accessLevels :: (Core.Maybe [AccessLevel]),
    -- | The pagination token to retrieve the next page of results. If the value is empty, no further results remain.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccessLevelsResponse' with the minimum fields required to make a request.
newListAccessLevelsResponse ::
  ListAccessLevelsResponse
newListAccessLevelsResponse =
  ListAccessLevelsResponse
    { accessLevels = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAccessLevelsResponse where
  parseJSON =
    Core.withObject
      "ListAccessLevelsResponse"
      ( \o ->
          ListAccessLevelsResponse
            Core.<$> (o Core..:? "accessLevels")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAccessLevelsResponse where
  toJSON ListAccessLevelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessLevels" Core..=) Core.<$> accessLevels,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A response to @ListAccessPoliciesRequest@.
--
-- /See:/ 'newListAccessPoliciesResponse' smart constructor.
data ListAccessPoliciesResponse = ListAccessPoliciesResponse
  { -- | List of the AccessPolicy instances.
    accessPolicies :: (Core.Maybe [AccessPolicy]),
    -- | The pagination token to retrieve the next page of results. If the value is empty, no further results remain.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAccessPoliciesResponse' with the minimum fields required to make a request.
newListAccessPoliciesResponse ::
  ListAccessPoliciesResponse
newListAccessPoliciesResponse =
  ListAccessPoliciesResponse
    { accessPolicies = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListAccessPoliciesResponse where
  parseJSON =
    Core.withObject
      "ListAccessPoliciesResponse"
      ( \o ->
          ListAccessPoliciesResponse
            Core.<$> (o Core..:? "accessPolicies")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAccessPoliciesResponse where
  toJSON ListAccessPoliciesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessPolicies" Core..=) Core.<$> accessPolicies,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A response to @ListAuthorizedOrgsDescsRequest@.
--
-- /See:/ 'newListAuthorizedOrgsDescsResponse' smart constructor.
data ListAuthorizedOrgsDescsResponse = ListAuthorizedOrgsDescsResponse
  { -- | List of all the Authorized Orgs Desc instances.
    authorizedOrgsDescs :: (Core.Maybe [AuthorizedOrgsDesc]),
    -- | The pagination token to retrieve the next page of results. If the value is empty, no further results remain.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAuthorizedOrgsDescsResponse' with the minimum fields required to make a request.
newListAuthorizedOrgsDescsResponse ::
  ListAuthorizedOrgsDescsResponse
newListAuthorizedOrgsDescsResponse =
  ListAuthorizedOrgsDescsResponse
    { authorizedOrgsDescs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListAuthorizedOrgsDescsResponse
  where
  parseJSON =
    Core.withObject
      "ListAuthorizedOrgsDescsResponse"
      ( \o ->
          ListAuthorizedOrgsDescsResponse
            Core.<$> (o Core..:? "authorizedOrgsDescs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListAuthorizedOrgsDescsResponse where
  toJSON ListAuthorizedOrgsDescsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorizedOrgsDescs" Core..=)
              Core.<$> authorizedOrgsDescs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response of ListGcpUserAccessBindings.
--
-- /See:/ 'newListGcpUserAccessBindingsResponse' smart constructor.
data ListGcpUserAccessBindingsResponse = ListGcpUserAccessBindingsResponse
  { -- | GcpUserAccessBinding
    gcpUserAccessBindings :: (Core.Maybe [GcpUserAccessBinding]),
    -- | Token to get the next page of items. If blank, there are no more items.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGcpUserAccessBindingsResponse' with the minimum fields required to make a request.
newListGcpUserAccessBindingsResponse ::
  ListGcpUserAccessBindingsResponse
newListGcpUserAccessBindingsResponse =
  ListGcpUserAccessBindingsResponse
    { gcpUserAccessBindings = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListGcpUserAccessBindingsResponse
  where
  parseJSON =
    Core.withObject
      "ListGcpUserAccessBindingsResponse"
      ( \o ->
          ListGcpUserAccessBindingsResponse
            Core.<$> (o Core..:? "gcpUserAccessBindings")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListGcpUserAccessBindingsResponse
  where
  toJSON ListGcpUserAccessBindingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcpUserAccessBindings" Core..=)
              Core.<$> gcpUserAccessBindings,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
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
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | A response to @ListServicePerimetersRequest@.
--
-- /See:/ 'newListServicePerimetersResponse' smart constructor.
data ListServicePerimetersResponse = ListServicePerimetersResponse
  { -- | The pagination token to retrieve the next page of results. If the value is empty, no further results remain.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of the Service Perimeter instances.
    servicePerimeters :: (Core.Maybe [ServicePerimeter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListServicePerimetersResponse' with the minimum fields required to make a request.
newListServicePerimetersResponse ::
  ListServicePerimetersResponse
newListServicePerimetersResponse =
  ListServicePerimetersResponse
    { nextPageToken = Core.Nothing,
      servicePerimeters = Core.Nothing
    }

instance Core.FromJSON ListServicePerimetersResponse where
  parseJSON =
    Core.withObject
      "ListServicePerimetersResponse"
      ( \o ->
          ListServicePerimetersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "servicePerimeters")
      )

instance Core.ToJSON ListServicePerimetersResponse where
  toJSON ListServicePerimetersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("servicePerimeters" Core..=)
              Core.<$> servicePerimeters
          ]
      )

-- | An allowed method or permission of a service specified in ApiOperation.
--
-- /See:/ 'newMethodSelector' smart constructor.
data MethodSelector = MethodSelector
  { -- | Value for @method@ should be a valid method name for the corresponding @service_name@ in ApiOperation. If @*@ used as value for @method@, then ALL methods and permissions are allowed.
    method :: (Core.Maybe Core.Text),
    -- | Value for @permission@ should be a valid Cloud IAM permission for the corresponding @service_name@ in ApiOperation.
    permission :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MethodSelector' with the minimum fields required to make a request.
newMethodSelector ::
  MethodSelector
newMethodSelector =
  MethodSelector {method = Core.Nothing, permission = Core.Nothing}

instance Core.FromJSON MethodSelector where
  parseJSON =
    Core.withObject
      "MethodSelector"
      ( \o ->
          MethodSelector
            Core.<$> (o Core..:? "method")
            Core.<*> (o Core..:? "permission")
      )

instance Core.ToJSON MethodSelector where
  toJSON MethodSelector {..} =
    Core.object
      ( Core.catMaybes
          [ ("method" Core..=) Core.<$> method,
            ("permission" Core..=) Core.<$> permission
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

-- | A restriction on the OS type and version of devices making requests.
--
-- /See:/ 'newOsConstraint' smart constructor.
data OsConstraint = OsConstraint
  { -- | The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: @\"major.minor.patch\"@. Examples: @\"10.5.301\"@, @\"9.2.1\"@.
    minimumVersion :: (Core.Maybe Core.Text),
    -- | Required. The allowed OS type.
    osType :: (Core.Maybe OsConstraint_OsType),
    -- | Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
    requireVerifiedChromeOs :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OsConstraint' with the minimum fields required to make a request.
newOsConstraint ::
  OsConstraint
newOsConstraint =
  OsConstraint
    { minimumVersion = Core.Nothing,
      osType = Core.Nothing,
      requireVerifiedChromeOs = Core.Nothing
    }

instance Core.FromJSON OsConstraint where
  parseJSON =
    Core.withObject
      "OsConstraint"
      ( \o ->
          OsConstraint
            Core.<$> (o Core..:? "minimumVersion")
            Core.<*> (o Core..:? "osType")
            Core.<*> (o Core..:? "requireVerifiedChromeOs")
      )

instance Core.ToJSON OsConstraint where
  toJSON OsConstraint {..} =
    Core.object
      ( Core.catMaybes
          [ ("minimumVersion" Core..=) Core.<$> minimumVersion,
            ("osType" Core..=) Core.<$> osType,
            ("requireVerifiedChromeOs" Core..=)
              Core.<$> requireVerifiedChromeOs
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

-- | A request to replace all existing Access Levels in an Access Policy with the Access Levels provided. This is done atomically.
--
-- /See:/ 'newReplaceAccessLevelsRequest' smart constructor.
data ReplaceAccessLevelsRequest = ReplaceAccessLevelsRequest
  { -- | Required. The desired Access Levels that should replace all existing Access Levels in the Access Policy.
    accessLevels :: (Core.Maybe [AccessLevel]),
    -- | Optional. The etag for the version of the Access Policy that this replace operation is to be performed on. If, at the time of replace, the etag for the Access Policy stored in Access Context Manager is different from the specified etag, then the replace operation will not be performed and the call will fail. This field is not required. If etag is not provided, the operation will be performed as if a valid etag is provided.
    etag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAccessLevelsRequest' with the minimum fields required to make a request.
newReplaceAccessLevelsRequest ::
  ReplaceAccessLevelsRequest
newReplaceAccessLevelsRequest =
  ReplaceAccessLevelsRequest {accessLevels = Core.Nothing, etag = Core.Nothing}

instance Core.FromJSON ReplaceAccessLevelsRequest where
  parseJSON =
    Core.withObject
      "ReplaceAccessLevelsRequest"
      ( \o ->
          ReplaceAccessLevelsRequest
            Core.<$> (o Core..:? "accessLevels")
            Core.<*> (o Core..:? "etag")
      )

instance Core.ToJSON ReplaceAccessLevelsRequest where
  toJSON ReplaceAccessLevelsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessLevels" Core..=) Core.<$> accessLevels,
            ("etag" Core..=) Core.<$> etag
          ]
      )

-- | A response to ReplaceAccessLevelsRequest. This will be put inside of Operation.response field.
--
-- /See:/ 'newReplaceAccessLevelsResponse' smart constructor.
newtype ReplaceAccessLevelsResponse = ReplaceAccessLevelsResponse
  { -- | List of the Access Level instances.
    accessLevels :: (Core.Maybe [AccessLevel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAccessLevelsResponse' with the minimum fields required to make a request.
newReplaceAccessLevelsResponse ::
  ReplaceAccessLevelsResponse
newReplaceAccessLevelsResponse =
  ReplaceAccessLevelsResponse {accessLevels = Core.Nothing}

instance Core.FromJSON ReplaceAccessLevelsResponse where
  parseJSON =
    Core.withObject
      "ReplaceAccessLevelsResponse"
      ( \o ->
          ReplaceAccessLevelsResponse
            Core.<$> (o Core..:? "accessLevels")
      )

instance Core.ToJSON ReplaceAccessLevelsResponse where
  toJSON ReplaceAccessLevelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("accessLevels" Core..=) Core.<$> accessLevels]
      )

-- | A request to replace all existing Service Perimeters in an Access Policy with the Service Perimeters provided. This is done atomically.
--
-- /See:/ 'newReplaceServicePerimetersRequest' smart constructor.
data ReplaceServicePerimetersRequest = ReplaceServicePerimetersRequest
  { -- | Optional. The etag for the version of the Access Policy that this replace operation is to be performed on. If, at the time of replace, the etag for the Access Policy stored in Access Context Manager is different from the specified etag, then the replace operation will not be performed and the call will fail. This field is not required. If etag is not provided, the operation will be performed as if a valid etag is provided.
    etag :: (Core.Maybe Core.Text),
    -- | Required. The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
    servicePerimeters :: (Core.Maybe [ServicePerimeter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceServicePerimetersRequest' with the minimum fields required to make a request.
newReplaceServicePerimetersRequest ::
  ReplaceServicePerimetersRequest
newReplaceServicePerimetersRequest =
  ReplaceServicePerimetersRequest
    { etag = Core.Nothing,
      servicePerimeters = Core.Nothing
    }

instance
  Core.FromJSON
    ReplaceServicePerimetersRequest
  where
  parseJSON =
    Core.withObject
      "ReplaceServicePerimetersRequest"
      ( \o ->
          ReplaceServicePerimetersRequest
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "servicePerimeters")
      )

instance Core.ToJSON ReplaceServicePerimetersRequest where
  toJSON ReplaceServicePerimetersRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("servicePerimeters" Core..=)
              Core.<$> servicePerimeters
          ]
      )

-- | A response to ReplaceServicePerimetersRequest. This will be put inside of Operation.response field.
--
-- /See:/ 'newReplaceServicePerimetersResponse' smart constructor.
newtype ReplaceServicePerimetersResponse = ReplaceServicePerimetersResponse
  { -- | List of the Service Perimeter instances.
    servicePerimeters :: (Core.Maybe [ServicePerimeter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceServicePerimetersResponse' with the minimum fields required to make a request.
newReplaceServicePerimetersResponse ::
  ReplaceServicePerimetersResponse
newReplaceServicePerimetersResponse =
  ReplaceServicePerimetersResponse {servicePerimeters = Core.Nothing}

instance
  Core.FromJSON
    ReplaceServicePerimetersResponse
  where
  parseJSON =
    Core.withObject
      "ReplaceServicePerimetersResponse"
      ( \o ->
          ReplaceServicePerimetersResponse
            Core.<$> (o Core..:? "servicePerimeters")
      )

instance Core.ToJSON ReplaceServicePerimetersResponse where
  toJSON ReplaceServicePerimetersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("servicePerimeters" Core..=)
              Core.<$> servicePerimeters
          ]
      )

-- | @ServicePerimeter@ describes a set of Google Cloud resources which can freely import and export data amongst themselves, but not export outside of the @ServicePerimeter@. If a request with a source within this @ServicePerimeter@ has a target outside of the @ServicePerimeter@, the request will be blocked. Otherwise the request is allowed. There are two types of Service Perimeter - Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud project or VPC network can only belong to a single regular Service Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as members, a single Google Cloud project may belong to multiple Service Perimeter Bridges.
--
-- /See:/ 'newServicePerimeter' smart constructor.
data ServicePerimeter = ServicePerimeter
  { -- | Description of the @ServicePerimeter@ and its use. Does not affect behavior.
    description :: (Core.Maybe Core.Text),
    -- | Resource name for the @ServicePerimeter@. Format: @accessPolicies\/{access_policy}\/servicePerimeters\/{service_perimeter}@. The @service_perimeter@ component must begin with a letter, followed by alphanumeric characters or @_@. After you create a @ServicePerimeter@, you cannot change its @name@.
    name :: (Core.Maybe Core.Text),
    -- | Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
    perimeterType :: (Core.Maybe ServicePerimeter_PerimeterType),
    -- | Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the \"use/explicit/dry/run/spec\" flag is set.
    spec :: (Core.Maybe ServicePerimeterConfig),
    -- | Current ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.
    status :: (Core.Maybe ServicePerimeterConfig),
    -- | Human readable title. Must be unique within the Policy.
    title :: (Core.Maybe Core.Text),
    -- | Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration (\"spec\") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config (\"status\") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use/explicit/dry/run/spec must bet set to True if any of the fields in the spec are set to non-default values.
    useExplicitDryRunSpec :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServicePerimeter' with the minimum fields required to make a request.
newServicePerimeter ::
  ServicePerimeter
newServicePerimeter =
  ServicePerimeter
    { description = Core.Nothing,
      name = Core.Nothing,
      perimeterType = Core.Nothing,
      spec = Core.Nothing,
      status = Core.Nothing,
      title = Core.Nothing,
      useExplicitDryRunSpec = Core.Nothing
    }

instance Core.FromJSON ServicePerimeter where
  parseJSON =
    Core.withObject
      "ServicePerimeter"
      ( \o ->
          ServicePerimeter
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "perimeterType")
            Core.<*> (o Core..:? "spec")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "useExplicitDryRunSpec")
      )

instance Core.ToJSON ServicePerimeter where
  toJSON ServicePerimeter {..} =
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
-- /See:/ 'newServicePerimeterConfig' smart constructor.
data ServicePerimeterConfig = ServicePerimeterConfig
  { -- | A list of @AccessLevel@ resource names that allow resources within the @ServicePerimeter@ to be accessed from the internet. @AccessLevels@ listed must be in the same policy as this @ServicePerimeter@. Referencing a nonexistent @AccessLevel@ is a syntax error. If no @AccessLevel@ names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: @\"accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\"@. For Service Perimeter Bridge, must be empty.
    accessLevels :: (Core.Maybe [Core.Text]),
    -- | List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
    egressPolicies :: (Core.Maybe [EgressPolicy]),
    -- | List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
    ingressPolicies :: (Core.Maybe [IngressPolicy]),
    -- | A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: @projects\/{project_number}@ VPC network format: @\/\/compute.googleapis.com\/projects\/{PROJECT_ID}\/global\/networks\/{NAME}@.
    resources :: (Core.Maybe [Core.Text]),
    -- | Google Cloud services that are subject to the Service Perimeter restrictions. For example, if @storage.googleapis.com@ is specified, access to the storage buckets inside the perimeter must meet the perimeter\'s access restrictions.
    restrictedServices :: (Core.Maybe [Core.Text]),
    -- | Configuration for APIs allowed within Perimeter.
    vpcAccessibleServices :: (Core.Maybe VpcAccessibleServices)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServicePerimeterConfig' with the minimum fields required to make a request.
newServicePerimeterConfig ::
  ServicePerimeterConfig
newServicePerimeterConfig =
  ServicePerimeterConfig
    { accessLevels = Core.Nothing,
      egressPolicies = Core.Nothing,
      ingressPolicies = Core.Nothing,
      resources = Core.Nothing,
      restrictedServices = Core.Nothing,
      vpcAccessibleServices = Core.Nothing
    }

instance Core.FromJSON ServicePerimeterConfig where
  parseJSON =
    Core.withObject
      "ServicePerimeterConfig"
      ( \o ->
          ServicePerimeterConfig
            Core.<$> (o Core..:? "accessLevels")
            Core.<*> (o Core..:? "egressPolicies")
            Core.<*> (o Core..:? "ingressPolicies")
            Core.<*> (o Core..:? "resources")
            Core.<*> (o Core..:? "restrictedServices")
            Core.<*> (o Core..:? "vpcAccessibleServices")
      )

instance Core.ToJSON ServicePerimeterConfig where
  toJSON ServicePerimeterConfig {..} =
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
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
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
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Specifies how APIs are allowed to communicate within the Service Perimeter.
--
-- /See:/ 'newVpcAccessibleServices' smart constructor.
data VpcAccessibleServices = VpcAccessibleServices
  { -- | The list of APIs usable within the Service Perimeter. Must be empty unless \'enable_restriction\' is True. You can specify a list of individual services, as well as include the \'RESTRICTED-SERVICES\' value, which automatically includes all of the services protected by the perimeter.
    allowedServices :: (Core.Maybe [Core.Text]),
    -- | Whether to restrict API calls within the Service Perimeter to the list of APIs specified in \'allowed_services\'.
    enableRestriction :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VpcAccessibleServices' with the minimum fields required to make a request.
newVpcAccessibleServices ::
  VpcAccessibleServices
newVpcAccessibleServices =
  VpcAccessibleServices
    { allowedServices = Core.Nothing,
      enableRestriction = Core.Nothing
    }

instance Core.FromJSON VpcAccessibleServices where
  parseJSON =
    Core.withObject
      "VpcAccessibleServices"
      ( \o ->
          VpcAccessibleServices
            Core.<$> (o Core..:? "allowedServices")
            Core.<*> (o Core..:? "enableRestriction")
      )

instance Core.ToJSON VpcAccessibleServices where
  toJSON VpcAccessibleServices {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedServices" Core..=)
              Core.<$> allowedServices,
            ("enableRestriction" Core..=)
              Core.<$> enableRestriction
          ]
      )
