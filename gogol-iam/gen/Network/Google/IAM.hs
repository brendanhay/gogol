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
-- Module      : Network.Google.IAM
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages identity and access control for Google Cloud Platform resources, including the creation of service accounts, which you can use to authenticate to Google and make API calls.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference>
module Network.Google.IAM
  ( -- * Configuration
    iAMService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** iam.iamPolicies.lintPolicy
    IAMIamPoliciesLintPolicyResource,
    newIAMIamPoliciesLintPolicy,
    IAMIamPoliciesLintPolicy,

    -- ** iam.iamPolicies.queryAuditableServices
    IAMIamPoliciesQueryAuditableServicesResource,
    newIAMIamPoliciesQueryAuditableServices,
    IAMIamPoliciesQueryAuditableServices,

    -- ** iam.locations.workforcePools.operations.get
    IAMLocationsWorkforcePoolsOperationsGetResource,
    newIAMLocationsWorkforcePoolsOperationsGet,
    IAMLocationsWorkforcePoolsOperationsGet,

    -- ** iam.locations.workforcePools.providers.keys.operations.get
    IAMLocationsWorkforcePoolsProvidersKeysOperationsGetResource,
    newIAMLocationsWorkforcePoolsProvidersKeysOperationsGet,
    IAMLocationsWorkforcePoolsProvidersKeysOperationsGet,

    -- ** iam.locations.workforcePools.providers.operations.get
    IAMLocationsWorkforcePoolsProvidersOperationsGetResource,
    newIAMLocationsWorkforcePoolsProvidersOperationsGet,
    IAMLocationsWorkforcePoolsProvidersOperationsGet,

    -- ** iam.locations.workforcePools.subjects.operations.get
    IAMLocationsWorkforcePoolsSubjectsOperationsGetResource,
    newIAMLocationsWorkforcePoolsSubjectsOperationsGet,
    IAMLocationsWorkforcePoolsSubjectsOperationsGet,

    -- ** iam.organizations.roles.create
    IAMOrganizationsRolesCreateResource,
    newIAMOrganizationsRolesCreate,
    IAMOrganizationsRolesCreate,

    -- ** iam.organizations.roles.delete
    IAMOrganizationsRolesDeleteResource,
    newIAMOrganizationsRolesDelete,
    IAMOrganizationsRolesDelete,

    -- ** iam.organizations.roles.get
    IAMOrganizationsRolesGetResource,
    newIAMOrganizationsRolesGet,
    IAMOrganizationsRolesGet,

    -- ** iam.organizations.roles.list
    IAMOrganizationsRolesListResource,
    newIAMOrganizationsRolesList,
    IAMOrganizationsRolesList,

    -- ** iam.organizations.roles.patch
    IAMOrganizationsRolesPatchResource,
    newIAMOrganizationsRolesPatch,
    IAMOrganizationsRolesPatch,

    -- ** iam.organizations.roles.undelete
    IAMOrganizationsRolesUndeleteResource,
    newIAMOrganizationsRolesUndelete,
    IAMOrganizationsRolesUndelete,

    -- ** iam.permissions.queryTestablePermissions
    IAMPermissionsQueryTestablePermissionsResource,
    newIAMPermissionsQueryTestablePermissions,
    IAMPermissionsQueryTestablePermissions,

    -- ** iam.projects.locations.workloadIdentityPools.create
    IAMProjectsLocationsWorkloadIdentityPoolsCreateResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsCreate,
    IAMProjectsLocationsWorkloadIdentityPoolsCreate,

    -- ** iam.projects.locations.workloadIdentityPools.delete
    IAMProjectsLocationsWorkloadIdentityPoolsDeleteResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsDelete,
    IAMProjectsLocationsWorkloadIdentityPoolsDelete,

    -- ** iam.projects.locations.workloadIdentityPools.get
    IAMProjectsLocationsWorkloadIdentityPoolsGetResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsGet,
    IAMProjectsLocationsWorkloadIdentityPoolsGet,

    -- ** iam.projects.locations.workloadIdentityPools.list
    IAMProjectsLocationsWorkloadIdentityPoolsListResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsList,
    IAMProjectsLocationsWorkloadIdentityPoolsList,

    -- ** iam.projects.locations.workloadIdentityPools.operations.get
    IAMProjectsLocationsWorkloadIdentityPoolsOperationsGetResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsOperationsGet,
    IAMProjectsLocationsWorkloadIdentityPoolsOperationsGet,

    -- ** iam.projects.locations.workloadIdentityPools.patch
    IAMProjectsLocationsWorkloadIdentityPoolsPatchResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsPatch,
    IAMProjectsLocationsWorkloadIdentityPoolsPatch,

    -- ** iam.projects.locations.workloadIdentityPools.providers.create
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreateResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate,

    -- ** iam.projects.locations.workloadIdentityPools.providers.delete
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersDeleteResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersDelete,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersDelete,

    -- ** iam.projects.locations.workloadIdentityPools.providers.get
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGetResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersGet,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet,

    -- ** iam.projects.locations.workloadIdentityPools.providers.keys.operations.get
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsGetResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsGet,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsGet,

    -- ** iam.projects.locations.workloadIdentityPools.providers.list
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersListResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersList,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersList,

    -- ** iam.projects.locations.workloadIdentityPools.providers.operations.get
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersOperationsGetResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersOperationsGet,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersOperationsGet,

    -- ** iam.projects.locations.workloadIdentityPools.providers.patch
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatchResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch,

    -- ** iam.projects.locations.workloadIdentityPools.providers.undelete
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersUndeleteResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersUndelete,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersUndelete,

    -- ** iam.projects.locations.workloadIdentityPools.undelete
    IAMProjectsLocationsWorkloadIdentityPoolsUndeleteResource,
    newIAMProjectsLocationsWorkloadIdentityPoolsUndelete,
    IAMProjectsLocationsWorkloadIdentityPoolsUndelete,

    -- ** iam.projects.roles.create
    IAMProjectsRolesCreateResource,
    newIAMProjectsRolesCreate,
    IAMProjectsRolesCreate,

    -- ** iam.projects.roles.delete
    IAMProjectsRolesDeleteResource,
    newIAMProjectsRolesDelete,
    IAMProjectsRolesDelete,

    -- ** iam.projects.roles.get
    IAMProjectsRolesGetResource,
    newIAMProjectsRolesGet,
    IAMProjectsRolesGet,

    -- ** iam.projects.roles.list
    IAMProjectsRolesListResource,
    newIAMProjectsRolesList,
    IAMProjectsRolesList,

    -- ** iam.projects.roles.patch
    IAMProjectsRolesPatchResource,
    newIAMProjectsRolesPatch,
    IAMProjectsRolesPatch,

    -- ** iam.projects.roles.undelete
    IAMProjectsRolesUndeleteResource,
    newIAMProjectsRolesUndelete,
    IAMProjectsRolesUndelete,

    -- ** iam.projects.serviceAccounts.create
    IAMProjectsServiceAccountsCreateResource,
    newIAMProjectsServiceAccountsCreate,
    IAMProjectsServiceAccountsCreate,

    -- ** iam.projects.serviceAccounts.delete
    IAMProjectsServiceAccountsDeleteResource,
    newIAMProjectsServiceAccountsDelete,
    IAMProjectsServiceAccountsDelete,

    -- ** iam.projects.serviceAccounts.disable
    IAMProjectsServiceAccountsDisableResource,
    newIAMProjectsServiceAccountsDisable,
    IAMProjectsServiceAccountsDisable,

    -- ** iam.projects.serviceAccounts.enable
    IAMProjectsServiceAccountsEnableResource,
    newIAMProjectsServiceAccountsEnable,
    IAMProjectsServiceAccountsEnable,

    -- ** iam.projects.serviceAccounts.get
    IAMProjectsServiceAccountsGetResource,
    newIAMProjectsServiceAccountsGet,
    IAMProjectsServiceAccountsGet,

    -- ** iam.projects.serviceAccounts.getIamPolicy
    IAMProjectsServiceAccountsGetIamPolicyResource,
    newIAMProjectsServiceAccountsGetIamPolicy,
    IAMProjectsServiceAccountsGetIamPolicy,

    -- ** iam.projects.serviceAccounts.keys.create
    IAMProjectsServiceAccountsKeysCreateResource,
    newIAMProjectsServiceAccountsKeysCreate,
    IAMProjectsServiceAccountsKeysCreate,

    -- ** iam.projects.serviceAccounts.keys.delete
    IAMProjectsServiceAccountsKeysDeleteResource,
    newIAMProjectsServiceAccountsKeysDelete,
    IAMProjectsServiceAccountsKeysDelete,

    -- ** iam.projects.serviceAccounts.keys.disable
    IAMProjectsServiceAccountsKeysDisableResource,
    newIAMProjectsServiceAccountsKeysDisable,
    IAMProjectsServiceAccountsKeysDisable,

    -- ** iam.projects.serviceAccounts.keys.enable
    IAMProjectsServiceAccountsKeysEnableResource,
    newIAMProjectsServiceAccountsKeysEnable,
    IAMProjectsServiceAccountsKeysEnable,

    -- ** iam.projects.serviceAccounts.keys.get
    IAMProjectsServiceAccountsKeysGetResource,
    newIAMProjectsServiceAccountsKeysGet,
    IAMProjectsServiceAccountsKeysGet,

    -- ** iam.projects.serviceAccounts.keys.list
    IAMProjectsServiceAccountsKeysListResource,
    newIAMProjectsServiceAccountsKeysList,
    IAMProjectsServiceAccountsKeysList,

    -- ** iam.projects.serviceAccounts.keys.upload
    IAMProjectsServiceAccountsKeysUploadResource,
    newIAMProjectsServiceAccountsKeysUpload,
    IAMProjectsServiceAccountsKeysUpload,

    -- ** iam.projects.serviceAccounts.list
    IAMProjectsServiceAccountsListResource,
    newIAMProjectsServiceAccountsList,
    IAMProjectsServiceAccountsList,

    -- ** iam.projects.serviceAccounts.patch
    IAMProjectsServiceAccountsPatchResource,
    newIAMProjectsServiceAccountsPatch,
    IAMProjectsServiceAccountsPatch,

    -- ** iam.projects.serviceAccounts.setIamPolicy
    IAMProjectsServiceAccountsSetIamPolicyResource,
    newIAMProjectsServiceAccountsSetIamPolicy,
    IAMProjectsServiceAccountsSetIamPolicy,

    -- ** iam.projects.serviceAccounts.signBlob
    IAMProjectsServiceAccountsSignBlobResource,
    newIAMProjectsServiceAccountsSignBlob,
    IAMProjectsServiceAccountsSignBlob,

    -- ** iam.projects.serviceAccounts.signJwt
    IAMProjectsServiceAccountsSignJwtResource,
    newIAMProjectsServiceAccountsSignJwt,
    IAMProjectsServiceAccountsSignJwt,

    -- ** iam.projects.serviceAccounts.testIamPermissions
    IAMProjectsServiceAccountsTestIamPermissionsResource,
    newIAMProjectsServiceAccountsTestIamPermissions,
    IAMProjectsServiceAccountsTestIamPermissions,

    -- ** iam.projects.serviceAccounts.undelete
    IAMProjectsServiceAccountsUndeleteResource,
    newIAMProjectsServiceAccountsUndelete,
    IAMProjectsServiceAccountsUndelete,

    -- ** iam.projects.serviceAccounts.update
    IAMProjectsServiceAccountsUpdateResource,
    newIAMProjectsServiceAccountsUpdate,
    IAMProjectsServiceAccountsUpdate,

    -- ** iam.roles.get
    IAMRolesGetResource,
    newIAMRolesGet,
    IAMRolesGet,

    -- ** iam.roles.list
    IAMRolesListResource,
    newIAMRolesList,
    IAMRolesList,

    -- ** iam.roles.queryGrantableRoles
    IAMRolesQueryGrantableRolesResource,
    newIAMRolesQueryGrantableRoles,
    IAMRolesQueryGrantableRoles,

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

import Network.Google.IAM.IamPolicies.LintPolicy
import Network.Google.IAM.IamPolicies.QueryAuditableServices
import Network.Google.IAM.Locations.WorkforcePools.Operations.Get
import Network.Google.IAM.Locations.WorkforcePools.Providers.Keys.Operations.Get
import Network.Google.IAM.Locations.WorkforcePools.Providers.Operations.Get
import Network.Google.IAM.Locations.WorkforcePools.Subjects.Operations.Get
import Network.Google.IAM.Organizations.Roles.Create
import Network.Google.IAM.Organizations.Roles.Delete
import Network.Google.IAM.Organizations.Roles.Get
import Network.Google.IAM.Organizations.Roles.List
import Network.Google.IAM.Organizations.Roles.Patch
import Network.Google.IAM.Organizations.Roles.Undelete
import Network.Google.IAM.Permissions.QueryTestablePermissions
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Create
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Delete
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Get
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.List
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Operations.Get
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Patch
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Create
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Delete
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Get
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Keys.Operations.Get
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.List
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Operations.Get
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Patch
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Undelete
import Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Undelete
import Network.Google.IAM.Projects.Roles.Create
import Network.Google.IAM.Projects.Roles.Delete
import Network.Google.IAM.Projects.Roles.Get
import Network.Google.IAM.Projects.Roles.List
import Network.Google.IAM.Projects.Roles.Patch
import Network.Google.IAM.Projects.Roles.Undelete
import Network.Google.IAM.Projects.ServiceAccounts.Create
import Network.Google.IAM.Projects.ServiceAccounts.Delete
import Network.Google.IAM.Projects.ServiceAccounts.Disable
import Network.Google.IAM.Projects.ServiceAccounts.Enable
import Network.Google.IAM.Projects.ServiceAccounts.Get
import Network.Google.IAM.Projects.ServiceAccounts.GetIamPolicy
import Network.Google.IAM.Projects.ServiceAccounts.Keys.Create
import Network.Google.IAM.Projects.ServiceAccounts.Keys.Delete
import Network.Google.IAM.Projects.ServiceAccounts.Keys.Disable
import Network.Google.IAM.Projects.ServiceAccounts.Keys.Enable
import Network.Google.IAM.Projects.ServiceAccounts.Keys.Get
import Network.Google.IAM.Projects.ServiceAccounts.Keys.List
import Network.Google.IAM.Projects.ServiceAccounts.Keys.Upload
import Network.Google.IAM.Projects.ServiceAccounts.List
import Network.Google.IAM.Projects.ServiceAccounts.Patch
import Network.Google.IAM.Projects.ServiceAccounts.SetIamPolicy
import Network.Google.IAM.Projects.ServiceAccounts.SignBlob
import Network.Google.IAM.Projects.ServiceAccounts.SignJwt
import Network.Google.IAM.Projects.ServiceAccounts.TestIamPermissions
import Network.Google.IAM.Projects.ServiceAccounts.Undelete
import Network.Google.IAM.Projects.ServiceAccounts.Update
import Network.Google.IAM.Roles.Get
import Network.Google.IAM.Roles.List
import Network.Google.IAM.Roles.QueryGrantableRoles
import Network.Google.IAM.Types
