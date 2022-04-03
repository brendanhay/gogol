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
-- Module      : Gogol.IAM
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages identity and access control for Google Cloud Platform resources, including the creation of service accounts, which you can use to authenticate to Google and make API calls.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference>
module Gogol.IAM
  ( -- * Configuration
    iAMService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** iam.iamPolicies.lintPolicy
    IAMIamPoliciesLintPolicyResource,
    IAMIamPoliciesLintPolicy (..),
    newIAMIamPoliciesLintPolicy,

    -- ** iam.iamPolicies.queryAuditableServices
    IAMIamPoliciesQueryAuditableServicesResource,
    IAMIamPoliciesQueryAuditableServices (..),
    newIAMIamPoliciesQueryAuditableServices,

    -- ** iam.locations.workforcePools.operations.get
    IAMLocationsWorkforcePoolsOperationsGetResource,
    IAMLocationsWorkforcePoolsOperationsGet (..),
    newIAMLocationsWorkforcePoolsOperationsGet,

    -- ** iam.locations.workforcePools.providers.keys.operations.get
    IAMLocationsWorkforcePoolsProvidersKeysOperationsGetResource,
    IAMLocationsWorkforcePoolsProvidersKeysOperationsGet (..),
    newIAMLocationsWorkforcePoolsProvidersKeysOperationsGet,

    -- ** iam.locations.workforcePools.providers.operations.get
    IAMLocationsWorkforcePoolsProvidersOperationsGetResource,
    IAMLocationsWorkforcePoolsProvidersOperationsGet (..),
    newIAMLocationsWorkforcePoolsProvidersOperationsGet,

    -- ** iam.locations.workforcePools.subjects.operations.get
    IAMLocationsWorkforcePoolsSubjectsOperationsGetResource,
    IAMLocationsWorkforcePoolsSubjectsOperationsGet (..),
    newIAMLocationsWorkforcePoolsSubjectsOperationsGet,

    -- ** iam.organizations.roles.create
    IAMOrganizationsRolesCreateResource,
    IAMOrganizationsRolesCreate (..),
    newIAMOrganizationsRolesCreate,

    -- ** iam.organizations.roles.delete
    IAMOrganizationsRolesDeleteResource,
    IAMOrganizationsRolesDelete (..),
    newIAMOrganizationsRolesDelete,

    -- ** iam.organizations.roles.get
    IAMOrganizationsRolesGetResource,
    IAMOrganizationsRolesGet (..),
    newIAMOrganizationsRolesGet,

    -- ** iam.organizations.roles.list
    IAMOrganizationsRolesListResource,
    IAMOrganizationsRolesList (..),
    newIAMOrganizationsRolesList,

    -- ** iam.organizations.roles.patch
    IAMOrganizationsRolesPatchResource,
    IAMOrganizationsRolesPatch (..),
    newIAMOrganizationsRolesPatch,

    -- ** iam.organizations.roles.undelete
    IAMOrganizationsRolesUndeleteResource,
    IAMOrganizationsRolesUndelete (..),
    newIAMOrganizationsRolesUndelete,

    -- ** iam.permissions.queryTestablePermissions
    IAMPermissionsQueryTestablePermissionsResource,
    IAMPermissionsQueryTestablePermissions (..),
    newIAMPermissionsQueryTestablePermissions,

    -- ** iam.projects.locations.workloadIdentityPools.create
    IAMProjectsLocationsWorkloadIdentityPoolsCreateResource,
    IAMProjectsLocationsWorkloadIdentityPoolsCreate (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsCreate,

    -- ** iam.projects.locations.workloadIdentityPools.delete
    IAMProjectsLocationsWorkloadIdentityPoolsDeleteResource,
    IAMProjectsLocationsWorkloadIdentityPoolsDelete (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsDelete,

    -- ** iam.projects.locations.workloadIdentityPools.get
    IAMProjectsLocationsWorkloadIdentityPoolsGetResource,
    IAMProjectsLocationsWorkloadIdentityPoolsGet (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsGet,

    -- ** iam.projects.locations.workloadIdentityPools.list
    IAMProjectsLocationsWorkloadIdentityPoolsListResource,
    IAMProjectsLocationsWorkloadIdentityPoolsList (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsList,

    -- ** iam.projects.locations.workloadIdentityPools.operations.get
    IAMProjectsLocationsWorkloadIdentityPoolsOperationsGetResource,
    IAMProjectsLocationsWorkloadIdentityPoolsOperationsGet (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsOperationsGet,

    -- ** iam.projects.locations.workloadIdentityPools.patch
    IAMProjectsLocationsWorkloadIdentityPoolsPatchResource,
    IAMProjectsLocationsWorkloadIdentityPoolsPatch (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsPatch,

    -- ** iam.projects.locations.workloadIdentityPools.providers.create
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreateResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate,

    -- ** iam.projects.locations.workloadIdentityPools.providers.delete
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersDeleteResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersDelete (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersDelete,

    -- ** iam.projects.locations.workloadIdentityPools.providers.get
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGetResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersGet,

    -- ** iam.projects.locations.workloadIdentityPools.providers.keys.operations.get
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsGetResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsGet (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsGet,

    -- ** iam.projects.locations.workloadIdentityPools.providers.list
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersListResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersList (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersList,

    -- ** iam.projects.locations.workloadIdentityPools.providers.operations.get
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersOperationsGetResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersOperationsGet (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersOperationsGet,

    -- ** iam.projects.locations.workloadIdentityPools.providers.patch
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatchResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch,

    -- ** iam.projects.locations.workloadIdentityPools.providers.undelete
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersUndeleteResource,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersUndelete (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersUndelete,

    -- ** iam.projects.locations.workloadIdentityPools.undelete
    IAMProjectsLocationsWorkloadIdentityPoolsUndeleteResource,
    IAMProjectsLocationsWorkloadIdentityPoolsUndelete (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsUndelete,

    -- ** iam.projects.roles.create
    IAMProjectsRolesCreateResource,
    IAMProjectsRolesCreate (..),
    newIAMProjectsRolesCreate,

    -- ** iam.projects.roles.delete
    IAMProjectsRolesDeleteResource,
    IAMProjectsRolesDelete (..),
    newIAMProjectsRolesDelete,

    -- ** iam.projects.roles.get
    IAMProjectsRolesGetResource,
    IAMProjectsRolesGet (..),
    newIAMProjectsRolesGet,

    -- ** iam.projects.roles.list
    IAMProjectsRolesListResource,
    IAMProjectsRolesList (..),
    newIAMProjectsRolesList,

    -- ** iam.projects.roles.patch
    IAMProjectsRolesPatchResource,
    IAMProjectsRolesPatch (..),
    newIAMProjectsRolesPatch,

    -- ** iam.projects.roles.undelete
    IAMProjectsRolesUndeleteResource,
    IAMProjectsRolesUndelete (..),
    newIAMProjectsRolesUndelete,

    -- ** iam.projects.serviceAccounts.create
    IAMProjectsServiceAccountsCreateResource,
    IAMProjectsServiceAccountsCreate (..),
    newIAMProjectsServiceAccountsCreate,

    -- ** iam.projects.serviceAccounts.delete
    IAMProjectsServiceAccountsDeleteResource,
    IAMProjectsServiceAccountsDelete (..),
    newIAMProjectsServiceAccountsDelete,

    -- ** iam.projects.serviceAccounts.disable
    IAMProjectsServiceAccountsDisableResource,
    IAMProjectsServiceAccountsDisable (..),
    newIAMProjectsServiceAccountsDisable,

    -- ** iam.projects.serviceAccounts.enable
    IAMProjectsServiceAccountsEnableResource,
    IAMProjectsServiceAccountsEnable (..),
    newIAMProjectsServiceAccountsEnable,

    -- ** iam.projects.serviceAccounts.get
    IAMProjectsServiceAccountsGetResource,
    IAMProjectsServiceAccountsGet (..),
    newIAMProjectsServiceAccountsGet,

    -- ** iam.projects.serviceAccounts.getIamPolicy
    IAMProjectsServiceAccountsGetIamPolicyResource,
    IAMProjectsServiceAccountsGetIamPolicy (..),
    newIAMProjectsServiceAccountsGetIamPolicy,

    -- ** iam.projects.serviceAccounts.keys.create
    IAMProjectsServiceAccountsKeysCreateResource,
    IAMProjectsServiceAccountsKeysCreate (..),
    newIAMProjectsServiceAccountsKeysCreate,

    -- ** iam.projects.serviceAccounts.keys.delete
    IAMProjectsServiceAccountsKeysDeleteResource,
    IAMProjectsServiceAccountsKeysDelete (..),
    newIAMProjectsServiceAccountsKeysDelete,

    -- ** iam.projects.serviceAccounts.keys.disable
    IAMProjectsServiceAccountsKeysDisableResource,
    IAMProjectsServiceAccountsKeysDisable (..),
    newIAMProjectsServiceAccountsKeysDisable,

    -- ** iam.projects.serviceAccounts.keys.enable
    IAMProjectsServiceAccountsKeysEnableResource,
    IAMProjectsServiceAccountsKeysEnable (..),
    newIAMProjectsServiceAccountsKeysEnable,

    -- ** iam.projects.serviceAccounts.keys.get
    IAMProjectsServiceAccountsKeysGetResource,
    IAMProjectsServiceAccountsKeysGet (..),
    newIAMProjectsServiceAccountsKeysGet,

    -- ** iam.projects.serviceAccounts.keys.list
    IAMProjectsServiceAccountsKeysListResource,
    IAMProjectsServiceAccountsKeysList (..),
    newIAMProjectsServiceAccountsKeysList,

    -- ** iam.projects.serviceAccounts.keys.upload
    IAMProjectsServiceAccountsKeysUploadResource,
    IAMProjectsServiceAccountsKeysUpload (..),
    newIAMProjectsServiceAccountsKeysUpload,

    -- ** iam.projects.serviceAccounts.list
    IAMProjectsServiceAccountsListResource,
    IAMProjectsServiceAccountsList (..),
    newIAMProjectsServiceAccountsList,

    -- ** iam.projects.serviceAccounts.patch
    IAMProjectsServiceAccountsPatchResource,
    IAMProjectsServiceAccountsPatch (..),
    newIAMProjectsServiceAccountsPatch,

    -- ** iam.projects.serviceAccounts.setIamPolicy
    IAMProjectsServiceAccountsSetIamPolicyResource,
    IAMProjectsServiceAccountsSetIamPolicy (..),
    newIAMProjectsServiceAccountsSetIamPolicy,

    -- ** iam.projects.serviceAccounts.signBlob
    IAMProjectsServiceAccountsSignBlobResource,
    IAMProjectsServiceAccountsSignBlob (..),
    newIAMProjectsServiceAccountsSignBlob,

    -- ** iam.projects.serviceAccounts.signJwt
    IAMProjectsServiceAccountsSignJwtResource,
    IAMProjectsServiceAccountsSignJwt (..),
    newIAMProjectsServiceAccountsSignJwt,

    -- ** iam.projects.serviceAccounts.testIamPermissions
    IAMProjectsServiceAccountsTestIamPermissionsResource,
    IAMProjectsServiceAccountsTestIamPermissions (..),
    newIAMProjectsServiceAccountsTestIamPermissions,

    -- ** iam.projects.serviceAccounts.undelete
    IAMProjectsServiceAccountsUndeleteResource,
    IAMProjectsServiceAccountsUndelete (..),
    newIAMProjectsServiceAccountsUndelete,

    -- ** iam.projects.serviceAccounts.update
    IAMProjectsServiceAccountsUpdateResource,
    IAMProjectsServiceAccountsUpdate (..),
    newIAMProjectsServiceAccountsUpdate,

    -- ** iam.roles.get
    IAMRolesGetResource,
    IAMRolesGet (..),
    newIAMRolesGet,

    -- ** iam.roles.list
    IAMRolesListResource,
    IAMRolesList (..),
    newIAMRolesList,

    -- ** iam.roles.queryGrantableRoles
    IAMRolesQueryGrantableRolesResource,
    IAMRolesQueryGrantableRoles (..),
    newIAMRolesQueryGrantableRoles,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdminAuditData
    AdminAuditData (..),
    newAdminAuditData,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditData
    AuditData (..),
    newAuditData,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AuditableService
    AuditableService (..),
    newAuditableService,

    -- ** Aws
    Aws (..),
    newAws,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BindingDelta
    BindingDelta (..),
    newBindingDelta,

    -- ** BindingDelta_Action
    BindingDelta_Action (..),

    -- ** CreateRoleRequest
    CreateRoleRequest (..),
    newCreateRoleRequest,

    -- ** CreateServiceAccountKeyRequest
    CreateServiceAccountKeyRequest (..),
    newCreateServiceAccountKeyRequest,

    -- ** CreateServiceAccountKeyRequest_KeyAlgorithm
    CreateServiceAccountKeyRequest_KeyAlgorithm (..),

    -- ** CreateServiceAccountKeyRequest_PrivateKeyType
    CreateServiceAccountKeyRequest_PrivateKeyType (..),

    -- ** CreateServiceAccountRequest
    CreateServiceAccountRequest (..),
    newCreateServiceAccountRequest,

    -- ** DisableServiceAccountKeyRequest
    DisableServiceAccountKeyRequest (..),
    newDisableServiceAccountKeyRequest,

    -- ** DisableServiceAccountRequest
    DisableServiceAccountRequest (..),
    newDisableServiceAccountRequest,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EnableServiceAccountKeyRequest
    EnableServiceAccountKeyRequest (..),
    newEnableServiceAccountKeyRequest,

    -- ** EnableServiceAccountRequest
    EnableServiceAccountRequest (..),
    newEnableServiceAccountRequest,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** LintPolicyRequest
    LintPolicyRequest (..),
    newLintPolicyRequest,

    -- ** LintPolicyResponse
    LintPolicyResponse (..),
    newLintPolicyResponse,

    -- ** LintResult
    LintResult (..),
    newLintResult,

    -- ** LintResult_Level
    LintResult_Level (..),

    -- ** LintResult_Severity
    LintResult_Severity (..),

    -- ** ListRolesResponse
    ListRolesResponse (..),
    newListRolesResponse,

    -- ** ListServiceAccountKeysResponse
    ListServiceAccountKeysResponse (..),
    newListServiceAccountKeysResponse,

    -- ** ListServiceAccountsResponse
    ListServiceAccountsResponse (..),
    newListServiceAccountsResponse,

    -- ** ListWorkloadIdentityPoolProvidersResponse
    ListWorkloadIdentityPoolProvidersResponse (..),
    newListWorkloadIdentityPoolProvidersResponse,

    -- ** ListWorkloadIdentityPoolsResponse
    ListWorkloadIdentityPoolsResponse (..),
    newListWorkloadIdentityPoolsResponse,

    -- ** Oidc
    Oidc (..),
    newOidc,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** PatchServiceAccountRequest
    PatchServiceAccountRequest (..),
    newPatchServiceAccountRequest,

    -- ** Permission
    Permission (..),
    newPermission,

    -- ** Permission_CustomRolesSupportLevel
    Permission_CustomRolesSupportLevel (..),

    -- ** Permission_Stage
    Permission_Stage (..),

    -- ** PermissionDelta
    PermissionDelta (..),
    newPermissionDelta,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PolicyDelta
    PolicyDelta (..),
    newPolicyDelta,

    -- ** QueryAuditableServicesRequest
    QueryAuditableServicesRequest (..),
    newQueryAuditableServicesRequest,

    -- ** QueryAuditableServicesResponse
    QueryAuditableServicesResponse (..),
    newQueryAuditableServicesResponse,

    -- ** QueryGrantableRolesRequest
    QueryGrantableRolesRequest (..),
    newQueryGrantableRolesRequest,

    -- ** QueryGrantableRolesRequest_View
    QueryGrantableRolesRequest_View (..),

    -- ** QueryGrantableRolesResponse
    QueryGrantableRolesResponse (..),
    newQueryGrantableRolesResponse,

    -- ** QueryTestablePermissionsRequest
    QueryTestablePermissionsRequest (..),
    newQueryTestablePermissionsRequest,

    -- ** QueryTestablePermissionsResponse
    QueryTestablePermissionsResponse (..),
    newQueryTestablePermissionsResponse,

    -- ** Role
    Role (..),
    newRole,

    -- ** Role_Stage
    Role_Stage (..),

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** ServiceAccountKey
    ServiceAccountKey (..),
    newServiceAccountKey,

    -- ** ServiceAccountKey_KeyAlgorithm
    ServiceAccountKey_KeyAlgorithm (..),

    -- ** ServiceAccountKey_KeyOrigin
    ServiceAccountKey_KeyOrigin (..),

    -- ** ServiceAccountKey_KeyType
    ServiceAccountKey_KeyType (..),

    -- ** ServiceAccountKey_PrivateKeyType
    ServiceAccountKey_PrivateKeyType (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** SignBlobRequest
    SignBlobRequest (..),
    newSignBlobRequest,

    -- ** SignBlobResponse
    SignBlobResponse (..),
    newSignBlobResponse,

    -- ** SignJwtRequest
    SignJwtRequest (..),
    newSignJwtRequest,

    -- ** SignJwtResponse
    SignJwtResponse (..),
    newSignJwtResponse,

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

    -- ** UndeleteRoleRequest
    UndeleteRoleRequest (..),
    newUndeleteRoleRequest,

    -- ** UndeleteServiceAccountRequest
    UndeleteServiceAccountRequest (..),
    newUndeleteServiceAccountRequest,

    -- ** UndeleteServiceAccountResponse
    UndeleteServiceAccountResponse (..),
    newUndeleteServiceAccountResponse,

    -- ** UndeleteWorkloadIdentityPoolProviderRequest
    UndeleteWorkloadIdentityPoolProviderRequest (..),
    newUndeleteWorkloadIdentityPoolProviderRequest,

    -- ** UndeleteWorkloadIdentityPoolRequest
    UndeleteWorkloadIdentityPoolRequest (..),
    newUndeleteWorkloadIdentityPoolRequest,

    -- ** UploadServiceAccountKeyRequest
    UploadServiceAccountKeyRequest (..),
    newUploadServiceAccountKeyRequest,

    -- ** WorkloadIdentityPool
    WorkloadIdentityPool (..),
    newWorkloadIdentityPool,

    -- ** WorkloadIdentityPool_State
    WorkloadIdentityPool_State (..),

    -- ** WorkloadIdentityPoolProvider
    WorkloadIdentityPoolProvider (..),
    newWorkloadIdentityPoolProvider,

    -- ** WorkloadIdentityPoolProvider_AttributeMapping
    WorkloadIdentityPoolProvider_AttributeMapping (..),
    newWorkloadIdentityPoolProvider_AttributeMapping,

    -- ** WorkloadIdentityPoolProvider_State
    WorkloadIdentityPoolProvider_State (..),

    -- ** OrganizationsRolesListView
    OrganizationsRolesListView (..),

    -- ** ProjectsRolesListView
    ProjectsRolesListView (..),

    -- ** ProjectsServiceAccountsKeysGetPublicKeyType
    ProjectsServiceAccountsKeysGetPublicKeyType (..),

    -- ** ProjectsServiceAccountsKeysListKeyTypes
    ProjectsServiceAccountsKeysListKeyTypes (..),

    -- ** RolesListView
    RolesListView (..),
  )
where

import Gogol.IAM.IamPolicies.LintPolicy
import Gogol.IAM.IamPolicies.QueryAuditableServices
import Gogol.IAM.Locations.WorkforcePools.Operations.Get
import Gogol.IAM.Locations.WorkforcePools.Providers.Keys.Operations.Get
import Gogol.IAM.Locations.WorkforcePools.Providers.Operations.Get
import Gogol.IAM.Locations.WorkforcePools.Subjects.Operations.Get
import Gogol.IAM.Organizations.Roles.Create
import Gogol.IAM.Organizations.Roles.Delete
import Gogol.IAM.Organizations.Roles.Get
import Gogol.IAM.Organizations.Roles.List
import Gogol.IAM.Organizations.Roles.Patch
import Gogol.IAM.Organizations.Roles.Undelete
import Gogol.IAM.Permissions.QueryTestablePermissions
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Create
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Delete
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Get
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.List
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Operations.Get
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Patch
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Create
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Delete
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Get
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Keys.Operations.Get
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.List
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Operations.Get
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Patch
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Undelete
import Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Undelete
import Gogol.IAM.Projects.Roles.Create
import Gogol.IAM.Projects.Roles.Delete
import Gogol.IAM.Projects.Roles.Get
import Gogol.IAM.Projects.Roles.List
import Gogol.IAM.Projects.Roles.Patch
import Gogol.IAM.Projects.Roles.Undelete
import Gogol.IAM.Projects.ServiceAccounts.Create
import Gogol.IAM.Projects.ServiceAccounts.Delete
import Gogol.IAM.Projects.ServiceAccounts.Disable
import Gogol.IAM.Projects.ServiceAccounts.Enable
import Gogol.IAM.Projects.ServiceAccounts.Get
import Gogol.IAM.Projects.ServiceAccounts.GetIamPolicy
import Gogol.IAM.Projects.ServiceAccounts.Keys.Create
import Gogol.IAM.Projects.ServiceAccounts.Keys.Delete
import Gogol.IAM.Projects.ServiceAccounts.Keys.Disable
import Gogol.IAM.Projects.ServiceAccounts.Keys.Enable
import Gogol.IAM.Projects.ServiceAccounts.Keys.Get
import Gogol.IAM.Projects.ServiceAccounts.Keys.List
import Gogol.IAM.Projects.ServiceAccounts.Keys.Upload
import Gogol.IAM.Projects.ServiceAccounts.List
import Gogol.IAM.Projects.ServiceAccounts.Patch
import Gogol.IAM.Projects.ServiceAccounts.SetIamPolicy
import Gogol.IAM.Projects.ServiceAccounts.SignBlob
import Gogol.IAM.Projects.ServiceAccounts.SignJwt
import Gogol.IAM.Projects.ServiceAccounts.TestIamPermissions
import Gogol.IAM.Projects.ServiceAccounts.Undelete
import Gogol.IAM.Projects.ServiceAccounts.Update
import Gogol.IAM.Roles.Get
import Gogol.IAM.Roles.List
import Gogol.IAM.Roles.QueryGrantableRoles
import Gogol.IAM.Types
