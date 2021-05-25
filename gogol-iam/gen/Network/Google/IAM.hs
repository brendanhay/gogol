{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IAM
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages identity and access control for Google Cloud Platform resources,
-- including the creation of service accounts, which you can use to
-- authenticate to Google and make API calls.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference>
module Network.Google.IAM
    (
    -- * Service Configuration
      iAMService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , IAMAPI

    -- * Resources

    -- ** iam.iamPolicies.lintPolicy
    , module Network.Google.Resource.IAM.IAMPolicies.LintPolicy

    -- ** iam.iamPolicies.queryAuditableServices
    , module Network.Google.Resource.IAM.IAMPolicies.QueryAuditableServices

    -- ** iam.organizations.roles.create
    , module Network.Google.Resource.IAM.Organizations.Roles.Create

    -- ** iam.organizations.roles.delete
    , module Network.Google.Resource.IAM.Organizations.Roles.Delete

    -- ** iam.organizations.roles.get
    , module Network.Google.Resource.IAM.Organizations.Roles.Get

    -- ** iam.organizations.roles.list
    , module Network.Google.Resource.IAM.Organizations.Roles.List

    -- ** iam.organizations.roles.patch
    , module Network.Google.Resource.IAM.Organizations.Roles.Patch

    -- ** iam.organizations.roles.undelete
    , module Network.Google.Resource.IAM.Organizations.Roles.Undelete

    -- ** iam.permissions.queryTestablePermissions
    , module Network.Google.Resource.IAM.Permissions.QueryTestablePermissions

    -- ** iam.projects.locations.workloadIdentityPools.create
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Create

    -- ** iam.projects.locations.workloadIdentityPools.delete
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Delete

    -- ** iam.projects.locations.workloadIdentityPools.get
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Get

    -- ** iam.projects.locations.workloadIdentityPools.list
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.List

    -- ** iam.projects.locations.workloadIdentityPools.operations.get
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Operations.Get

    -- ** iam.projects.locations.workloadIdentityPools.patch
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Patch

    -- ** iam.projects.locations.workloadIdentityPools.providers.create
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Create

    -- ** iam.projects.locations.workloadIdentityPools.providers.delete
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Delete

    -- ** iam.projects.locations.workloadIdentityPools.providers.get
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Get

    -- ** iam.projects.locations.workloadIdentityPools.providers.list
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.List

    -- ** iam.projects.locations.workloadIdentityPools.providers.operations.get
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Operations.Get

    -- ** iam.projects.locations.workloadIdentityPools.providers.patch
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Patch

    -- ** iam.projects.locations.workloadIdentityPools.providers.undelete
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Undelete

    -- ** iam.projects.locations.workloadIdentityPools.undelete
    , module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Undelete

    -- ** iam.projects.roles.create
    , module Network.Google.Resource.IAM.Projects.Roles.Create

    -- ** iam.projects.roles.delete
    , module Network.Google.Resource.IAM.Projects.Roles.Delete

    -- ** iam.projects.roles.get
    , module Network.Google.Resource.IAM.Projects.Roles.Get

    -- ** iam.projects.roles.list
    , module Network.Google.Resource.IAM.Projects.Roles.List

    -- ** iam.projects.roles.patch
    , module Network.Google.Resource.IAM.Projects.Roles.Patch

    -- ** iam.projects.roles.undelete
    , module Network.Google.Resource.IAM.Projects.Roles.Undelete

    -- ** iam.projects.serviceAccounts.create
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Create

    -- ** iam.projects.serviceAccounts.delete
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Delete

    -- ** iam.projects.serviceAccounts.disable
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Disable

    -- ** iam.projects.serviceAccounts.enable
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Enable

    -- ** iam.projects.serviceAccounts.get
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Get

    -- ** iam.projects.serviceAccounts.getIamPolicy
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.GetIAMPolicy

    -- ** iam.projects.serviceAccounts.keys.create
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Create

    -- ** iam.projects.serviceAccounts.keys.delete
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Delete

    -- ** iam.projects.serviceAccounts.keys.get
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Get

    -- ** iam.projects.serviceAccounts.keys.list
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.List

    -- ** iam.projects.serviceAccounts.keys.upload
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Upload

    -- ** iam.projects.serviceAccounts.list
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.List

    -- ** iam.projects.serviceAccounts.patch
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Patch

    -- ** iam.projects.serviceAccounts.setIamPolicy
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.SetIAMPolicy

    -- ** iam.projects.serviceAccounts.signBlob
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.SignBlob

    -- ** iam.projects.serviceAccounts.signJwt
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.SignJwt

    -- ** iam.projects.serviceAccounts.testIamPermissions
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions

    -- ** iam.projects.serviceAccounts.undelete
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Undelete

    -- ** iam.projects.serviceAccounts.update
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Update

    -- ** iam.roles.get
    , module Network.Google.Resource.IAM.Roles.Get

    -- ** iam.roles.list
    , module Network.Google.Resource.IAM.Roles.List

    -- ** iam.roles.queryGrantableRoles
    , module Network.Google.Resource.IAM.Roles.QueryGrantableRoles

    -- * Types

    -- ** LintPolicyResponse
    , LintPolicyResponse
    , lintPolicyResponse
    , lprLintResults

    -- ** CreateServiceAccountKeyRequestPrivateKeyType
    , CreateServiceAccountKeyRequestPrivateKeyType (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** WorkLoadIdentityPoolProvider
    , WorkLoadIdentityPoolProvider
    , workLoadIdentityPoolProvider
    , wlippState
    , wlippAws
    , wlippDisabled
    , wlippAttributeCondition
    , wlippName
    , wlippDisplayName
    , wlippAttributeMApping
    , wlippDescription
    , wlippOidc

    -- ** UndeleteRoleRequest
    , UndeleteRoleRequest
    , undeleteRoleRequest
    , urrEtag

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** PermissionStage
    , PermissionStage (..)

    -- ** UndeleteServiceAccountRequest
    , UndeleteServiceAccountRequest
    , undeleteServiceAccountRequest

    -- ** AuditableService
    , AuditableService
    , auditableService
    , asName

    -- ** WorkLoadIdentityPoolState
    , WorkLoadIdentityPoolState (..)

    -- ** QueryAuditableServicesRequest
    , QueryAuditableServicesRequest
    , queryAuditableServicesRequest
    , qasrFullResourceName

    -- ** ProjectsServiceAccountsKeysGetPublicKeyType
    , ProjectsServiceAccountsKeysGetPublicKeyType (..)

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** QueryGrantableRolesRequestView
    , QueryGrantableRolesRequestView (..)

    -- ** Empty
    , Empty
    , empty

    -- ** Aws
    , Aws
    , aws
    , aAccountId

    -- ** QueryTestablePermissionsResponse
    , QueryTestablePermissionsResponse
    , queryTestablePermissionsResponse
    , qtprNextPageToken
    , qtprPermissions

    -- ** AuditData
    , AuditData
    , auditData
    , adPolicyDelta

    -- ** OrganizationsRolesListView
    , OrganizationsRolesListView (..)

    -- ** QueryAuditableServicesResponse
    , QueryAuditableServicesResponse
    , queryAuditableServicesResponse
    , qasrServices

    -- ** ServiceAccountKeyKeyOrigin
    , ServiceAccountKeyKeyOrigin (..)

    -- ** ServiceAccountKey
    , ServiceAccountKey
    , serviceAccountKey
    , sakValidAfterTime
    , sakKeyType
    , sakPrivateKeyData
    , sakPublicKeyData
    , sakName
    , sakPrivateKeyType
    , sakValidBeforeTime
    , sakKeyAlgorithm
    , sakKeyOrigin

    -- ** WorkLoadIdentityPoolProviderState
    , WorkLoadIdentityPoolProviderState (..)

    -- ** PermissionDelta
    , PermissionDelta
    , permissionDelta
    , pdAddedPermissions
    , pdRemovedPermissions

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ProjectsRolesListView
    , ProjectsRolesListView (..)

    -- ** LintResult
    , LintResult
    , lintResult
    , lrValidationUnitName
    , lrDebugMessage
    , lrLocationOffSet
    , lrSeverity
    , lrFieldName
    , lrLevel

    -- ** UndeleteWorkLoadIdentityPoolRequest
    , UndeleteWorkLoadIdentityPoolRequest
    , undeleteWorkLoadIdentityPoolRequest

    -- ** ListWorkLoadIdentityPoolProvidersResponse
    , ListWorkLoadIdentityPoolProvidersResponse
    , listWorkLoadIdentityPoolProvidersResponse
    , lwlipprNextPageToken
    , lwlipprWorkLoadIdentityPoolProviders

    -- ** CreateServiceAccountKeyRequest
    , CreateServiceAccountKeyRequest
    , createServiceAccountKeyRequest
    , csakrPrivateKeyType
    , csakrKeyAlgorithm

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** SignJwtResponse
    , SignJwtResponse
    , signJwtResponse
    , sjrKeyId
    , sjrSignedJwt

    -- ** BindingDelta
    , BindingDelta
    , bindingDelta
    , bdAction
    , bdRole
    , bdMember
    , bdCondition

    -- ** SignBlobRequest
    , SignBlobRequest
    , signBlobRequest
    , sbrBytesToSign

    -- ** ListServiceAccountKeysResponse
    , ListServiceAccountKeysResponse
    , listServiceAccountKeysResponse
    , lsakrKeys

    -- ** EnableServiceAccountRequest
    , EnableServiceAccountRequest
    , enableServiceAccountRequest

    -- ** Role
    , Role
    , role'
    , rStage
    , rEtag
    , rIncludedPermissions
    , rName
    , rDeleted
    , rTitle
    , rDescription

    -- ** ServiceAccountKeyKeyType
    , ServiceAccountKeyKeyType (..)

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saEtag
    , saDisabled
    , saUniqueId
    , saName
    , saDisplayName
    , saProjectId
    , saDescription
    , saOAuth2ClientId

    -- ** WorkLoadIdentityPoolProviderAttributeMApping
    , WorkLoadIdentityPoolProviderAttributeMApping
    , workLoadIdentityPoolProviderAttributeMApping
    , wlippamaAddtional

    -- ** ListWorkLoadIdentityPoolsResponse
    , ListWorkLoadIdentityPoolsResponse
    , listWorkLoadIdentityPoolsResponse
    , lwliprNextPageToken
    , lwliprWorkLoadIdentityPools

    -- ** QueryTestablePermissionsRequest
    , QueryTestablePermissionsRequest
    , queryTestablePermissionsRequest
    , qtprFullResourceName
    , qtprPageToken
    , qtprPageSize

    -- ** BindingDeltaAction
    , BindingDeltaAction (..)

    -- ** UndeleteWorkLoadIdentityPoolProviderRequest
    , UndeleteWorkLoadIdentityPoolProviderRequest
    , undeleteWorkLoadIdentityPoolProviderRequest

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** QueryGrantableRolesResponse
    , QueryGrantableRolesResponse
    , queryGrantableRolesResponse
    , qgrrRoles
    , qgrrNextPageToken

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** AdminAuditData
    , AdminAuditData
    , adminAuditData
    , aadPermissionDelta

    -- ** LintResultSeverity
    , LintResultSeverity (..)

    -- ** UndeleteServiceAccountResponse
    , UndeleteServiceAccountResponse
    , undeleteServiceAccountResponse
    , usarRestoredAccount

    -- ** WorkLoadIdentityPool
    , WorkLoadIdentityPool
    , workLoadIdentityPool
    , wlipState
    , wlipDisabled
    , wlipName
    , wlipDisplayName
    , wlipDescription

    -- ** RolesListView
    , RolesListView (..)

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** LintResultLevel
    , LintResultLevel (..)

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** RoleStage
    , RoleStage (..)

    -- ** PolicyDelta
    , PolicyDelta
    , policyDelta
    , pdBindingDeltas

    -- ** QueryGrantableRolesRequest
    , QueryGrantableRolesRequest
    , queryGrantableRolesRequest
    , qgrrFullResourceName
    , qgrrView
    , qgrrPageToken
    , qgrrPageSize

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** SignJwtRequest
    , SignJwtRequest
    , signJwtRequest
    , sjrPayload

    -- ** PatchServiceAccountRequest
    , PatchServiceAccountRequest
    , patchServiceAccountRequest
    , psarUpdateMask
    , psarServiceAccount

    -- ** ServiceAccountKeyKeyAlgorithm
    , ServiceAccountKeyKeyAlgorithm (..)

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** ProjectsServiceAccountsKeysListKeyTypes
    , ProjectsServiceAccountsKeysListKeyTypes (..)

    -- ** Permission
    , Permission
    , permission
    , perStage
    , perPrimaryPermission
    , perOnlyInPredefinedRoles
    , perCustomRolesSupportLevel
    , perName
    , perTitle
    , perAPIdisabled
    , perDescription

    -- ** SignBlobResponse
    , SignBlobResponse
    , signBlobResponse
    , sbrSignature
    , sbrKeyId

    -- ** ListServiceAccountsResponse
    , ListServiceAccountsResponse
    , listServiceAccountsResponse
    , lsarNextPageToken
    , lsarAccounts

    -- ** LintPolicyRequest
    , LintPolicyRequest
    , lintPolicyRequest
    , lprFullResourceName
    , lprCondition

    -- ** ListRolesResponse
    , ListRolesResponse
    , listRolesResponse
    , lrrRoles
    , lrrNextPageToken

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** CreateServiceAccountKeyRequestKeyAlgorithm
    , CreateServiceAccountKeyRequestKeyAlgorithm (..)

    -- ** PermissionCustomRolesSupportLevel
    , PermissionCustomRolesSupportLevel (..)

    -- ** CreateServiceAccountRequest
    , CreateServiceAccountRequest
    , createServiceAccountRequest
    , csarServiceAccount
    , csarAccountId

    -- ** Oidc
    , Oidc
    , oidc
    , oAllowedAudiences
    , oIssuerURI

    -- ** CreateRoleRequest
    , CreateRoleRequest
    , createRoleRequest
    , crrRoleId
    , crrRole

    -- ** ServiceAccountKeyPrivateKeyType
    , ServiceAccountKeyPrivateKeyType (..)

    -- ** UploadServiceAccountKeyRequest
    , UploadServiceAccountKeyRequest
    , uploadServiceAccountKeyRequest
    , usakrPublicKeyData

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** DisableServiceAccountRequest
    , DisableServiceAccountRequest
    , disableServiceAccountRequest
    ) where

import Network.Google.Prelude
import Network.Google.IAM.Types
import Network.Google.Resource.IAM.IAMPolicies.LintPolicy
import Network.Google.Resource.IAM.IAMPolicies.QueryAuditableServices
import Network.Google.Resource.IAM.Organizations.Roles.Create
import Network.Google.Resource.IAM.Organizations.Roles.Delete
import Network.Google.Resource.IAM.Organizations.Roles.Get
import Network.Google.Resource.IAM.Organizations.Roles.List
import Network.Google.Resource.IAM.Organizations.Roles.Patch
import Network.Google.Resource.IAM.Organizations.Roles.Undelete
import Network.Google.Resource.IAM.Permissions.QueryTestablePermissions
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Create
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Delete
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Get
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.List
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Operations.Get
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Patch
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Create
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Delete
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Get
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.List
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Operations.Get
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Patch
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Undelete
import Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Undelete
import Network.Google.Resource.IAM.Projects.Roles.Create
import Network.Google.Resource.IAM.Projects.Roles.Delete
import Network.Google.Resource.IAM.Projects.Roles.Get
import Network.Google.Resource.IAM.Projects.Roles.List
import Network.Google.Resource.IAM.Projects.Roles.Patch
import Network.Google.Resource.IAM.Projects.Roles.Undelete
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Create
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Delete
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Disable
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Enable
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Get
import Network.Google.Resource.IAM.Projects.ServiceAccounts.GetIAMPolicy
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Create
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Delete
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Get
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.List
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Upload
import Network.Google.Resource.IAM.Projects.ServiceAccounts.List
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Patch
import Network.Google.Resource.IAM.Projects.ServiceAccounts.SetIAMPolicy
import Network.Google.Resource.IAM.Projects.ServiceAccounts.SignBlob
import Network.Google.Resource.IAM.Projects.ServiceAccounts.SignJwt
import Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Undelete
import Network.Google.Resource.IAM.Projects.ServiceAccounts.Update
import Network.Google.Resource.IAM.Roles.Get
import Network.Google.Resource.IAM.Roles.List
import Network.Google.Resource.IAM.Roles.QueryGrantableRoles

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Identity and Access Management (IAM) API service.
type IAMAPI =
     RolesListResource :<|> RolesGetResource :<|>
       RolesQueryGrantableRolesResource
       :<|> IAMPoliciesLintPolicyResource
       :<|> IAMPoliciesQueryAuditableServicesResource
       :<|> PermissionsQueryTestablePermissionsResource
       :<|> OrganizationsRolesListResource
       :<|> OrganizationsRolesUndeleteResource
       :<|> OrganizationsRolesPatchResource
       :<|> OrganizationsRolesGetResource
       :<|> OrganizationsRolesCreateResource
       :<|> OrganizationsRolesDeleteResource
       :<|> ProjectsRolesListResource
       :<|> ProjectsRolesUndeleteResource
       :<|> ProjectsRolesPatchResource
       :<|> ProjectsRolesGetResource
       :<|> ProjectsRolesCreateResource
       :<|> ProjectsRolesDeleteResource
       :<|> ProjectsServiceAccountsKeysListResource
       :<|> ProjectsServiceAccountsKeysGetResource
       :<|> ProjectsServiceAccountsKeysCreateResource
       :<|> ProjectsServiceAccountsKeysUploadResource
       :<|> ProjectsServiceAccountsKeysDeleteResource
       :<|> ProjectsServiceAccountsListResource
       :<|> ProjectsServiceAccountsSignJwtResource
       :<|> ProjectsServiceAccountsUndeleteResource
       :<|> ProjectsServiceAccountsGetIAMPolicyResource
       :<|> ProjectsServiceAccountsPatchResource
       :<|> ProjectsServiceAccountsGetResource
       :<|> ProjectsServiceAccountsEnableResource
       :<|> ProjectsServiceAccountsCreateResource
       :<|> ProjectsServiceAccountsDisableResource
       :<|> ProjectsServiceAccountsSetIAMPolicyResource
       :<|> ProjectsServiceAccountsSignBlobResource
       :<|>
       ProjectsServiceAccountsTestIAMPermissionsResource
       :<|> ProjectsServiceAccountsDeleteResource
       :<|> ProjectsServiceAccountsUpdateResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGetResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsProvidersListResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsProvidersUndeleteResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsProvidersPatchResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsProvidersGetResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsProvidersCreateResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsProvidersDeleteResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsOperationsGetResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsListResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsUndeleteResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsPatchResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsGetResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsCreateResource
       :<|>
       ProjectsLocationsWorkLoadIdentityPoolsDeleteResource
