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
-- Module      : Gogol.AccessContextManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API for setting attribute based access control to requests to GCP services.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference>
module Gogol.AccessContextManager
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

import Gogol.AccessContextManager.AccessPolicies.AccessLevels.Create
import Gogol.AccessContextManager.AccessPolicies.AccessLevels.Delete
import Gogol.AccessContextManager.AccessPolicies.AccessLevels.Get
import Gogol.AccessContextManager.AccessPolicies.AccessLevels.List
import Gogol.AccessContextManager.AccessPolicies.AccessLevels.Patch
import Gogol.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll
import Gogol.AccessContextManager.AccessPolicies.AccessLevels.TestIamPermissions
import Gogol.AccessContextManager.AccessPolicies.Create
import Gogol.AccessContextManager.AccessPolicies.Delete
import Gogol.AccessContextManager.AccessPolicies.Get
import Gogol.AccessContextManager.AccessPolicies.GetIamPolicy
import Gogol.AccessContextManager.AccessPolicies.List
import Gogol.AccessContextManager.AccessPolicies.Patch
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Commit
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Create
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Get
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.List
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll
import Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.TestIamPermissions
import Gogol.AccessContextManager.AccessPolicies.SetIamPolicy
import Gogol.AccessContextManager.AccessPolicies.TestIamPermissions
import Gogol.AccessContextManager.Operations.Cancel
import Gogol.AccessContextManager.Operations.Delete
import Gogol.AccessContextManager.Operations.Get
import Gogol.AccessContextManager.Operations.List
import Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Create
import Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Delete
import Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Get
import Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.List
import Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Patch
import Gogol.AccessContextManager.Types
