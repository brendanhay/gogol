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
-- Module      : Network.Google.AccessContextManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API for setting attribute based access control to requests to GCP services.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference>
module Network.Google.AccessContextManager
  ( -- * Configuration
    accessContextManagerService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** accesscontextmanager.accessPolicies.accessLevels.create
    AccessContextManagerAccessPoliciesAccessLevelsCreateResource,
    newAccessContextManagerAccessPoliciesAccessLevelsCreate,
    AccessContextManagerAccessPoliciesAccessLevelsCreate,

    -- ** accesscontextmanager.accessPolicies.accessLevels.delete
    AccessContextManagerAccessPoliciesAccessLevelsDeleteResource,
    newAccessContextManagerAccessPoliciesAccessLevelsDelete,
    AccessContextManagerAccessPoliciesAccessLevelsDelete,

    -- ** accesscontextmanager.accessPolicies.accessLevels.get
    AccessContextManagerAccessPoliciesAccessLevelsGetResource,
    newAccessContextManagerAccessPoliciesAccessLevelsGet,
    AccessContextManagerAccessPoliciesAccessLevelsGet,

    -- ** accesscontextmanager.accessPolicies.accessLevels.list
    AccessContextManagerAccessPoliciesAccessLevelsListResource,
    newAccessContextManagerAccessPoliciesAccessLevelsList,
    AccessContextManagerAccessPoliciesAccessLevelsList,

    -- ** accesscontextmanager.accessPolicies.accessLevels.patch
    AccessContextManagerAccessPoliciesAccessLevelsPatchResource,
    newAccessContextManagerAccessPoliciesAccessLevelsPatch,
    AccessContextManagerAccessPoliciesAccessLevelsPatch,

    -- ** accesscontextmanager.accessPolicies.accessLevels.replaceAll
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAllResource,
    newAccessContextManagerAccessPoliciesAccessLevelsReplaceAll,
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAll,

    -- ** accesscontextmanager.accessPolicies.accessLevels.testIamPermissions
    AccessContextManagerAccessPoliciesAccessLevelsTestIamPermissionsResource,
    newAccessContextManagerAccessPoliciesAccessLevelsTestIamPermissions,
    AccessContextManagerAccessPoliciesAccessLevelsTestIamPermissions,

    -- ** accesscontextmanager.accessPolicies.create
    AccessContextManagerAccessPoliciesCreateResource,
    newAccessContextManagerAccessPoliciesCreate,
    AccessContextManagerAccessPoliciesCreate,

    -- ** accesscontextmanager.accessPolicies.delete
    AccessContextManagerAccessPoliciesDeleteResource,
    newAccessContextManagerAccessPoliciesDelete,
    AccessContextManagerAccessPoliciesDelete,

    -- ** accesscontextmanager.accessPolicies.get
    AccessContextManagerAccessPoliciesGetResource,
    newAccessContextManagerAccessPoliciesGet,
    AccessContextManagerAccessPoliciesGet,

    -- ** accesscontextmanager.accessPolicies.getIamPolicy
    AccessContextManagerAccessPoliciesGetIamPolicyResource,
    newAccessContextManagerAccessPoliciesGetIamPolicy,
    AccessContextManagerAccessPoliciesGetIamPolicy,

    -- ** accesscontextmanager.accessPolicies.list
    AccessContextManagerAccessPoliciesListResource,
    newAccessContextManagerAccessPoliciesList,
    AccessContextManagerAccessPoliciesList,

    -- ** accesscontextmanager.accessPolicies.patch
    AccessContextManagerAccessPoliciesPatchResource,
    newAccessContextManagerAccessPoliciesPatch,
    AccessContextManagerAccessPoliciesPatch,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.commit
    AccessContextManagerAccessPoliciesServicePerimetersCommitResource,
    newAccessContextManagerAccessPoliciesServicePerimetersCommit,
    AccessContextManagerAccessPoliciesServicePerimetersCommit,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.create
    AccessContextManagerAccessPoliciesServicePerimetersCreateResource,
    newAccessContextManagerAccessPoliciesServicePerimetersCreate,
    AccessContextManagerAccessPoliciesServicePerimetersCreate,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.delete
    AccessContextManagerAccessPoliciesServicePerimetersDeleteResource,
    newAccessContextManagerAccessPoliciesServicePerimetersDelete,
    AccessContextManagerAccessPoliciesServicePerimetersDelete,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.get
    AccessContextManagerAccessPoliciesServicePerimetersGetResource,
    newAccessContextManagerAccessPoliciesServicePerimetersGet,
    AccessContextManagerAccessPoliciesServicePerimetersGet,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.list
    AccessContextManagerAccessPoliciesServicePerimetersListResource,
    newAccessContextManagerAccessPoliciesServicePerimetersList,
    AccessContextManagerAccessPoliciesServicePerimetersList,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.patch
    AccessContextManagerAccessPoliciesServicePerimetersPatchResource,
    newAccessContextManagerAccessPoliciesServicePerimetersPatch,
    AccessContextManagerAccessPoliciesServicePerimetersPatch,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.replaceAll
    AccessContextManagerAccessPoliciesServicePerimetersReplaceAllResource,
    newAccessContextManagerAccessPoliciesServicePerimetersReplaceAll,
    AccessContextManagerAccessPoliciesServicePerimetersReplaceAll,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.testIamPermissions
    AccessContextManagerAccessPoliciesServicePerimetersTestIamPermissionsResource,
    newAccessContextManagerAccessPoliciesServicePerimetersTestIamPermissions,
    AccessContextManagerAccessPoliciesServicePerimetersTestIamPermissions,

    -- ** accesscontextmanager.accessPolicies.setIamPolicy
    AccessContextManagerAccessPoliciesSetIamPolicyResource,
    newAccessContextManagerAccessPoliciesSetIamPolicy,
    AccessContextManagerAccessPoliciesSetIamPolicy,

    -- ** accesscontextmanager.accessPolicies.testIamPermissions
    AccessContextManagerAccessPoliciesTestIamPermissionsResource,
    newAccessContextManagerAccessPoliciesTestIamPermissions,
    AccessContextManagerAccessPoliciesTestIamPermissions,

    -- ** accesscontextmanager.operations.cancel
    AccessContextManagerOperationsCancelResource,
    newAccessContextManagerOperationsCancel,
    AccessContextManagerOperationsCancel,

    -- ** accesscontextmanager.operations.delete
    AccessContextManagerOperationsDeleteResource,
    newAccessContextManagerOperationsDelete,
    AccessContextManagerOperationsDelete,

    -- ** accesscontextmanager.operations.get
    AccessContextManagerOperationsGetResource,
    newAccessContextManagerOperationsGet,
    AccessContextManagerOperationsGet,

    -- ** accesscontextmanager.operations.list
    AccessContextManagerOperationsListResource,
    newAccessContextManagerOperationsList,
    AccessContextManagerOperationsList,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.create
    AccessContextManagerOrganizationsGcpUserAccessBindingsCreateResource,
    newAccessContextManagerOrganizationsGcpUserAccessBindingsCreate,
    AccessContextManagerOrganizationsGcpUserAccessBindingsCreate,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.delete
    AccessContextManagerOrganizationsGcpUserAccessBindingsDeleteResource,
    newAccessContextManagerOrganizationsGcpUserAccessBindingsDelete,
    AccessContextManagerOrganizationsGcpUserAccessBindingsDelete,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.get
    AccessContextManagerOrganizationsGcpUserAccessBindingsGetResource,
    newAccessContextManagerOrganizationsGcpUserAccessBindingsGet,
    AccessContextManagerOrganizationsGcpUserAccessBindingsGet,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.list
    AccessContextManagerOrganizationsGcpUserAccessBindingsListResource,
    newAccessContextManagerOrganizationsGcpUserAccessBindingsList,
    AccessContextManagerOrganizationsGcpUserAccessBindingsList,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.patch
    AccessContextManagerOrganizationsGcpUserAccessBindingsPatchResource,
    newAccessContextManagerOrganizationsGcpUserAccessBindingsPatch,
    AccessContextManagerOrganizationsGcpUserAccessBindingsPatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccessContextManagerOperationMetadata
    AccessContextManagerOperationMetadata (..),
    newAccessContextManagerOperationMetadata,

    -- ** AccessLevel
    AccessLevel (..),
    newAccessLevel,

    -- ** AccessPolicy
    AccessPolicy (..),
    newAccessPolicy,

    -- ** ApiOperation
    ApiOperation (..),
    newApiOperation,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** BasicLevel
    BasicLevel (..),
    newBasicLevel,

    -- ** BasicLevel_CombiningFunction
    BasicLevel_CombiningFunction (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CommitServicePerimetersRequest
    CommitServicePerimetersRequest (..),
    newCommitServicePerimetersRequest,

    -- ** CommitServicePerimetersResponse
    CommitServicePerimetersResponse (..),
    newCommitServicePerimetersResponse,

    -- ** Condition
    Condition (..),
    newCondition,

    -- ** CustomLevel
    CustomLevel (..),
    newCustomLevel,

    -- ** DevicePolicy
    DevicePolicy (..),
    newDevicePolicy,

    -- ** DevicePolicy_AllowedDeviceManagementLevelsItem
    DevicePolicy_AllowedDeviceManagementLevelsItem (..),

    -- ** DevicePolicy_AllowedEncryptionStatusesItem
    DevicePolicy_AllowedEncryptionStatusesItem (..),

    -- ** EgressFrom
    EgressFrom (..),
    newEgressFrom,

    -- ** EgressFrom_IdentityType
    EgressFrom_IdentityType (..),

    -- ** EgressPolicy
    EgressPolicy (..),
    newEgressPolicy,

    -- ** EgressTo
    EgressTo (..),
    newEgressTo,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GcpUserAccessBinding
    GcpUserAccessBinding (..),
    newGcpUserAccessBinding,

    -- ** GcpUserAccessBindingOperationMetadata
    GcpUserAccessBindingOperationMetadata (..),
    newGcpUserAccessBindingOperationMetadata,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** IngressFrom
    IngressFrom (..),
    newIngressFrom,

    -- ** IngressFrom_IdentityType
    IngressFrom_IdentityType (..),

    -- ** IngressPolicy
    IngressPolicy (..),
    newIngressPolicy,

    -- ** IngressSource
    IngressSource (..),
    newIngressSource,

    -- ** IngressTo
    IngressTo (..),
    newIngressTo,

    -- ** ListAccessLevelsResponse
    ListAccessLevelsResponse (..),
    newListAccessLevelsResponse,

    -- ** ListAccessPoliciesResponse
    ListAccessPoliciesResponse (..),
    newListAccessPoliciesResponse,

    -- ** ListGcpUserAccessBindingsResponse
    ListGcpUserAccessBindingsResponse (..),
    newListGcpUserAccessBindingsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListServicePerimetersResponse
    ListServicePerimetersResponse (..),
    newListServicePerimetersResponse,

    -- ** MethodSelector
    MethodSelector (..),
    newMethodSelector,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OsConstraint
    OsConstraint (..),
    newOsConstraint,

    -- ** OsConstraint_OsType
    OsConstraint_OsType (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** ReplaceAccessLevelsRequest
    ReplaceAccessLevelsRequest (..),
    newReplaceAccessLevelsRequest,

    -- ** ReplaceAccessLevelsResponse
    ReplaceAccessLevelsResponse (..),
    newReplaceAccessLevelsResponse,

    -- ** ReplaceServicePerimetersRequest
    ReplaceServicePerimetersRequest (..),
    newReplaceServicePerimetersRequest,

    -- ** ReplaceServicePerimetersResponse
    ReplaceServicePerimetersResponse (..),
    newReplaceServicePerimetersResponse,

    -- ** ServicePerimeter
    ServicePerimeter (..),
    newServicePerimeter,

    -- ** ServicePerimeter_PerimeterType
    ServicePerimeter_PerimeterType (..),

    -- ** ServicePerimeterConfig
    ServicePerimeterConfig (..),
    newServicePerimeterConfig,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** VpcAccessibleServices
    VpcAccessibleServices (..),
    newVpcAccessibleServices,

    -- ** AccessPoliciesAccessLevelsGetAccessLevelFormat
    AccessPoliciesAccessLevelsGetAccessLevelFormat (..),

    -- ** AccessPoliciesAccessLevelsListAccessLevelFormat
    AccessPoliciesAccessLevelsListAccessLevelFormat (..),
  )
where

import Network.Google.AccessContextManager.AccessPolicies.AccessLevels.Create
import Network.Google.AccessContextManager.AccessPolicies.AccessLevels.Delete
import Network.Google.AccessContextManager.AccessPolicies.AccessLevels.Get
import Network.Google.AccessContextManager.AccessPolicies.AccessLevels.List
import Network.Google.AccessContextManager.AccessPolicies.AccessLevels.Patch
import Network.Google.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll
import Network.Google.AccessContextManager.AccessPolicies.AccessLevels.TestIamPermissions
import Network.Google.AccessContextManager.AccessPolicies.Create
import Network.Google.AccessContextManager.AccessPolicies.Delete
import Network.Google.AccessContextManager.AccessPolicies.Get
import Network.Google.AccessContextManager.AccessPolicies.GetIamPolicy
import Network.Google.AccessContextManager.AccessPolicies.List
import Network.Google.AccessContextManager.AccessPolicies.Patch
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.Commit
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.Create
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.Get
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.List
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll
import Network.Google.AccessContextManager.AccessPolicies.ServicePerimeters.TestIamPermissions
import Network.Google.AccessContextManager.AccessPolicies.SetIamPolicy
import Network.Google.AccessContextManager.AccessPolicies.TestIamPermissions
import Network.Google.AccessContextManager.Operations.Cancel
import Network.Google.AccessContextManager.Operations.Delete
import Network.Google.AccessContextManager.Operations.Get
import Network.Google.AccessContextManager.Operations.List
import Network.Google.AccessContextManager.Organizations.GcpUserAccessBindings.Create
import Network.Google.AccessContextManager.Organizations.GcpUserAccessBindings.Delete
import Network.Google.AccessContextManager.Organizations.GcpUserAccessBindings.Get
import Network.Google.AccessContextManager.Organizations.GcpUserAccessBindings.List
import Network.Google.AccessContextManager.Organizations.GcpUserAccessBindings.Patch
import Network.Google.AccessContextManager.Types
