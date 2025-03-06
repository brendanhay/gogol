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
-- Module      : Gogol.AccessContextManager
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API for setting attribute based access control to requests to Google Cloud services. /Warning:/ Do not mix /v1alpha/ and /v1/ API usage in the same access policy. The v1alpha API supports new Access Context Manager features, which may have different attributes or behaviors that are not supported by v1. The practice of mixed API usage within a policy may result in the inability to update that policy, including any access levels or service perimeters belonging to it. It is not recommended to use both v1 and v1alpha for modifying policies with critical service perimeters. Modifications using v1alpha should be limited to policies with non-production\/non-critical service perimeters.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference>
module Gogol.AccessContextManager
  ( -- * Configuration
    accessContextManagerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** accesscontextmanager.accessPolicies.accessLevels.create
    AccessContextManagerAccessPoliciesAccessLevelsCreateResource,
    AccessContextManagerAccessPoliciesAccessLevelsCreate (..),
    newAccessContextManagerAccessPoliciesAccessLevelsCreate,

    -- ** accesscontextmanager.accessPolicies.accessLevels.delete
    AccessContextManagerAccessPoliciesAccessLevelsDeleteResource,
    AccessContextManagerAccessPoliciesAccessLevelsDelete (..),
    newAccessContextManagerAccessPoliciesAccessLevelsDelete,

    -- ** accesscontextmanager.accessPolicies.accessLevels.get
    AccessContextManagerAccessPoliciesAccessLevelsGetResource,
    AccessContextManagerAccessPoliciesAccessLevelsGet (..),
    newAccessContextManagerAccessPoliciesAccessLevelsGet,

    -- ** accesscontextmanager.accessPolicies.accessLevels.list
    AccessContextManagerAccessPoliciesAccessLevelsListResource,
    AccessContextManagerAccessPoliciesAccessLevelsList (..),
    newAccessContextManagerAccessPoliciesAccessLevelsList,

    -- ** accesscontextmanager.accessPolicies.accessLevels.patch
    AccessContextManagerAccessPoliciesAccessLevelsPatchResource,
    AccessContextManagerAccessPoliciesAccessLevelsPatch (..),
    newAccessContextManagerAccessPoliciesAccessLevelsPatch,

    -- ** accesscontextmanager.accessPolicies.accessLevels.replaceAll
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAllResource,
    AccessContextManagerAccessPoliciesAccessLevelsReplaceAll (..),
    newAccessContextManagerAccessPoliciesAccessLevelsReplaceAll,

    -- ** accesscontextmanager.accessPolicies.accessLevels.testIamPermissions
    AccessContextManagerAccessPoliciesAccessLevelsTestIamPermissionsResource,
    AccessContextManagerAccessPoliciesAccessLevelsTestIamPermissions (..),
    newAccessContextManagerAccessPoliciesAccessLevelsTestIamPermissions,

    -- ** accesscontextmanager.accessPolicies.authorizedOrgsDescs.create
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreateResource,
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate (..),
    newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsCreate,

    -- ** accesscontextmanager.accessPolicies.authorizedOrgsDescs.delete
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDeleteResource,
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete (..),
    newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete,

    -- ** accesscontextmanager.accessPolicies.authorizedOrgsDescs.get
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGetResource,
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet (..),
    newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsGet,

    -- ** accesscontextmanager.accessPolicies.authorizedOrgsDescs.list
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsListResource,
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsList (..),
    newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsList,

    -- ** accesscontextmanager.accessPolicies.authorizedOrgsDescs.patch
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatchResource,
    AccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch (..),
    newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsPatch,

    -- ** accesscontextmanager.accessPolicies.create
    AccessContextManagerAccessPoliciesCreateResource,
    AccessContextManagerAccessPoliciesCreate (..),
    newAccessContextManagerAccessPoliciesCreate,

    -- ** accesscontextmanager.accessPolicies.delete
    AccessContextManagerAccessPoliciesDeleteResource,
    AccessContextManagerAccessPoliciesDelete (..),
    newAccessContextManagerAccessPoliciesDelete,

    -- ** accesscontextmanager.accessPolicies.get
    AccessContextManagerAccessPoliciesGetResource,
    AccessContextManagerAccessPoliciesGet (..),
    newAccessContextManagerAccessPoliciesGet,

    -- ** accesscontextmanager.accessPolicies.getIamPolicy
    AccessContextManagerAccessPoliciesGetIamPolicyResource,
    AccessContextManagerAccessPoliciesGetIamPolicy (..),
    newAccessContextManagerAccessPoliciesGetIamPolicy,

    -- ** accesscontextmanager.accessPolicies.list
    AccessContextManagerAccessPoliciesListResource,
    AccessContextManagerAccessPoliciesList (..),
    newAccessContextManagerAccessPoliciesList,

    -- ** accesscontextmanager.accessPolicies.patch
    AccessContextManagerAccessPoliciesPatchResource,
    AccessContextManagerAccessPoliciesPatch (..),
    newAccessContextManagerAccessPoliciesPatch,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.commit
    AccessContextManagerAccessPoliciesServicePerimetersCommitResource,
    AccessContextManagerAccessPoliciesServicePerimetersCommit (..),
    newAccessContextManagerAccessPoliciesServicePerimetersCommit,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.create
    AccessContextManagerAccessPoliciesServicePerimetersCreateResource,
    AccessContextManagerAccessPoliciesServicePerimetersCreate (..),
    newAccessContextManagerAccessPoliciesServicePerimetersCreate,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.delete
    AccessContextManagerAccessPoliciesServicePerimetersDeleteResource,
    AccessContextManagerAccessPoliciesServicePerimetersDelete (..),
    newAccessContextManagerAccessPoliciesServicePerimetersDelete,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.get
    AccessContextManagerAccessPoliciesServicePerimetersGetResource,
    AccessContextManagerAccessPoliciesServicePerimetersGet (..),
    newAccessContextManagerAccessPoliciesServicePerimetersGet,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.list
    AccessContextManagerAccessPoliciesServicePerimetersListResource,
    AccessContextManagerAccessPoliciesServicePerimetersList (..),
    newAccessContextManagerAccessPoliciesServicePerimetersList,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.patch
    AccessContextManagerAccessPoliciesServicePerimetersPatchResource,
    AccessContextManagerAccessPoliciesServicePerimetersPatch (..),
    newAccessContextManagerAccessPoliciesServicePerimetersPatch,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.replaceAll
    AccessContextManagerAccessPoliciesServicePerimetersReplaceAllResource,
    AccessContextManagerAccessPoliciesServicePerimetersReplaceAll (..),
    newAccessContextManagerAccessPoliciesServicePerimetersReplaceAll,

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.testIamPermissions
    AccessContextManagerAccessPoliciesServicePerimetersTestIamPermissionsResource,
    AccessContextManagerAccessPoliciesServicePerimetersTestIamPermissions (..),
    newAccessContextManagerAccessPoliciesServicePerimetersTestIamPermissions,

    -- ** accesscontextmanager.accessPolicies.setIamPolicy
    AccessContextManagerAccessPoliciesSetIamPolicyResource,
    AccessContextManagerAccessPoliciesSetIamPolicy (..),
    newAccessContextManagerAccessPoliciesSetIamPolicy,

    -- ** accesscontextmanager.accessPolicies.testIamPermissions
    AccessContextManagerAccessPoliciesTestIamPermissionsResource,
    AccessContextManagerAccessPoliciesTestIamPermissions (..),
    newAccessContextManagerAccessPoliciesTestIamPermissions,

    -- ** accesscontextmanager.operations.cancel
    AccessContextManagerOperationsCancelResource,
    AccessContextManagerOperationsCancel (..),
    newAccessContextManagerOperationsCancel,

    -- ** accesscontextmanager.operations.delete
    AccessContextManagerOperationsDeleteResource,
    AccessContextManagerOperationsDelete (..),
    newAccessContextManagerOperationsDelete,

    -- ** accesscontextmanager.operations.get
    AccessContextManagerOperationsGetResource,
    AccessContextManagerOperationsGet (..),
    newAccessContextManagerOperationsGet,

    -- ** accesscontextmanager.operations.list
    AccessContextManagerOperationsListResource,
    AccessContextManagerOperationsList (..),
    newAccessContextManagerOperationsList,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.create
    AccessContextManagerOrganizationsGcpUserAccessBindingsCreateResource,
    AccessContextManagerOrganizationsGcpUserAccessBindingsCreate (..),
    newAccessContextManagerOrganizationsGcpUserAccessBindingsCreate,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.delete
    AccessContextManagerOrganizationsGcpUserAccessBindingsDeleteResource,
    AccessContextManagerOrganizationsGcpUserAccessBindingsDelete (..),
    newAccessContextManagerOrganizationsGcpUserAccessBindingsDelete,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.get
    AccessContextManagerOrganizationsGcpUserAccessBindingsGetResource,
    AccessContextManagerOrganizationsGcpUserAccessBindingsGet (..),
    newAccessContextManagerOrganizationsGcpUserAccessBindingsGet,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.list
    AccessContextManagerOrganizationsGcpUserAccessBindingsListResource,
    AccessContextManagerOrganizationsGcpUserAccessBindingsList (..),
    newAccessContextManagerOrganizationsGcpUserAccessBindingsList,

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.patch
    AccessContextManagerOrganizationsGcpUserAccessBindingsPatchResource,
    AccessContextManagerOrganizationsGcpUserAccessBindingsPatch (..),
    newAccessContextManagerOrganizationsGcpUserAccessBindingsPatch,

    -- ** accesscontextmanager.services.get
    AccessContextManagerServicesGetResource,
    AccessContextManagerServicesGet (..),
    newAccessContextManagerServicesGet,

    -- ** accesscontextmanager.services.list
    AccessContextManagerServicesListResource,
    AccessContextManagerServicesList (..),
    newAccessContextManagerServicesList,

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

    -- ** AccessScope
    AccessScope (..),
    newAccessScope,

    -- ** AccessSettings
    AccessSettings (..),
    newAccessSettings,

    -- ** ApiOperation
    ApiOperation (..),
    newApiOperation,

    -- ** Application
    Application (..),
    newApplication,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AuthorizedOrgsDesc
    AuthorizedOrgsDesc (..),
    newAuthorizedOrgsDesc,

    -- ** AuthorizedOrgsDesc_AssetType
    AuthorizedOrgsDesc_AssetType (..),

    -- ** AuthorizedOrgsDesc_AuthorizationDirection
    AuthorizedOrgsDesc_AuthorizationDirection (..),

    -- ** AuthorizedOrgsDesc_AuthorizationType
    AuthorizedOrgsDesc_AuthorizationType (..),

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

    -- ** ClientScope
    ClientScope (..),
    newClientScope,

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

    -- ** EgressFrom_SourceRestriction
    EgressFrom_SourceRestriction (..),

    -- ** EgressPolicy
    EgressPolicy (..),
    newEgressPolicy,

    -- ** EgressSource
    EgressSource (..),
    newEgressSource,

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

    -- ** ListAuthorizedOrgsDescsResponse
    ListAuthorizedOrgsDescsResponse (..),
    newListAuthorizedOrgsDescsResponse,

    -- ** ListGcpUserAccessBindingsResponse
    ListGcpUserAccessBindingsResponse (..),
    newListGcpUserAccessBindingsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListServicePerimetersResponse
    ListServicePerimetersResponse (..),
    newListServicePerimetersResponse,

    -- ** ListSupportedServicesResponse
    ListSupportedServicesResponse (..),
    newListSupportedServicesResponse,

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

    -- ** ScopedAccessSettings
    ScopedAccessSettings (..),
    newScopedAccessSettings,

    -- ** ServicePerimeter
    ServicePerimeter (..),
    newServicePerimeter,

    -- ** ServicePerimeter_PerimeterType
    ServicePerimeter_PerimeterType (..),

    -- ** ServicePerimeterConfig
    ServicePerimeterConfig (..),
    newServicePerimeterConfig,

    -- ** SessionSettings
    SessionSettings (..),
    newSessionSettings,

    -- ** SessionSettings_SessionReauthMethod
    SessionSettings_SessionReauthMethod (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SupportedService
    SupportedService (..),
    newSupportedService,

    -- ** SupportedService_ServiceSupportStage
    SupportedService_ServiceSupportStage (..),

    -- ** SupportedService_SupportStage
    SupportedService_SupportStage (..),

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** VpcAccessibleServices
    VpcAccessibleServices (..),
    newVpcAccessibleServices,

    -- ** VpcNetworkSource
    VpcNetworkSource (..),
    newVpcNetworkSource,

    -- ** VpcSubNetwork
    VpcSubNetwork (..),
    newVpcSubNetwork,

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
import Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Create
import Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Delete
import Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Get
import Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.List
import Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Patch
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
import Gogol.AccessContextManager.Services.Get
import Gogol.AccessContextManager.Services.List
import Gogol.AccessContextManager.Types
