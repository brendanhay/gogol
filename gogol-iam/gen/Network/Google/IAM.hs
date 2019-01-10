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

    -- ** iam.projects.serviceAccounts.list
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.List

    -- ** iam.projects.serviceAccounts.setIamPolicy
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.SetIAMPolicy

    -- ** iam.projects.serviceAccounts.signBlob
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.SignBlob

    -- ** iam.projects.serviceAccounts.signJwt
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.SignJwt

    -- ** iam.projects.serviceAccounts.testIamPermissions
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions

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

    -- ** AuditableService
    , AuditableService
    , auditableService
    , asName

    -- ** QueryAuditableServicesRequest
    , QueryAuditableServicesRequest
    , queryAuditableServicesRequest
    , qasrFullResourceName

    -- ** QueryGrantableRolesRequestView
    , QueryGrantableRolesRequestView (..)

    -- ** Empty
    , Empty
    , empty

    -- ** QueryTestablePermissionsResponse
    , QueryTestablePermissionsResponse
    , queryTestablePermissionsResponse
    , qtprNextPageToken
    , qtprPermissions

    -- ** AuditData
    , AuditData
    , auditData
    , adPolicyDelta

    -- ** QueryAuditableServicesResponse
    , QueryAuditableServicesResponse
    , queryAuditableServicesResponse
    , qasrServices

    -- ** ServiceAccountKey
    , ServiceAccountKey
    , serviceAccountKey
    , sakValidAfterTime
    , sakPrivateKeyData
    , sakPublicKeyData
    , sakName
    , sakPrivateKeyType
    , sakValidBeforeTime
    , sakKeyAlgorithm

    -- ** LintResult
    , LintResult
    , lintResult
    , lrValidationUnitName
    , lrDebugMessage
    , lrLocationOffSet
    , lrSeverity
    , lrBindingOrdinal
    , lrFieldName
    , lrLevel

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

    -- ** LintPolicyRequestContext
    , LintPolicyRequestContext
    , lintPolicyRequestContext
    , lprcAddtional

    -- ** SignBlobRequest
    , SignBlobRequest
    , signBlobRequest
    , sbrBytesToSign

    -- ** ListServiceAccountKeysResponse
    , ListServiceAccountKeysResponse
    , listServiceAccountKeysResponse
    , lsakrKeys

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

    -- ** ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saEtag
    , saUniqueId
    , saName
    , saDisplayName
    , saProjectId
    , saOAuth2ClientId

    -- ** QueryTestablePermissionsRequest
    , QueryTestablePermissionsRequest
    , queryTestablePermissionsRequest
    , qtprFullResourceName
    , qtprPageToken
    , qtprPageSize

    -- ** BindingDeltaAction
    , BindingDeltaAction (..)

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

    -- ** LintResultSeverity
    , LintResultSeverity (..)

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

    -- ** SignJwtRequest
    , SignJwtRequest
    , signJwtRequest
    , sjrPayload

    -- ** ServiceAccountKeyKeyAlgorithm
    , ServiceAccountKeyKeyAlgorithm (..)

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** Permission
    , Permission
    , permission
    , pStage
    , pOnlyInPredefinedRoles
    , pCustomRolesSupportLevel
    , pName
    , pTitle
    , pAPIdisabled
    , pDescription

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
    , lprContext
    , lprFullResourceName
    , lprPolicy
    , lprCondition
    , lprBinding

    -- ** ListRolesResponse
    , ListRolesResponse
    , listRolesResponse
    , lrrRoles
    , lrrNextPageToken

    -- ** CreateServiceAccountKeyRequestKeyAlgorithm
    , CreateServiceAccountKeyRequestKeyAlgorithm (..)

    -- ** PermissionCustomRolesSupportLevel
    , PermissionCustomRolesSupportLevel (..)

    -- ** CreateServiceAccountRequest
    , CreateServiceAccountRequest
    , createServiceAccountRequest
    , csarServiceAccount
    , csarAccountId

    -- ** CreateRoleRequest
    , CreateRoleRequest
    , createRoleRequest
    , crrRoleId
    , crrRole

    -- ** ServiceAccountKeyPrivateKeyType
    , ServiceAccountKeyPrivateKeyType (..)

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude
import           Network.Google.Resource.IAM.IAMPolicies.LintPolicy
import           Network.Google.Resource.IAM.IAMPolicies.QueryAuditableServices
import           Network.Google.Resource.IAM.Organizations.Roles.Create
import           Network.Google.Resource.IAM.Organizations.Roles.Delete
import           Network.Google.Resource.IAM.Organizations.Roles.Get
import           Network.Google.Resource.IAM.Organizations.Roles.List
import           Network.Google.Resource.IAM.Organizations.Roles.Patch
import           Network.Google.Resource.IAM.Organizations.Roles.Undelete
import           Network.Google.Resource.IAM.Permissions.QueryTestablePermissions
import           Network.Google.Resource.IAM.Projects.Roles.Create
import           Network.Google.Resource.IAM.Projects.Roles.Delete
import           Network.Google.Resource.IAM.Projects.Roles.Get
import           Network.Google.Resource.IAM.Projects.Roles.List
import           Network.Google.Resource.IAM.Projects.Roles.Patch
import           Network.Google.Resource.IAM.Projects.Roles.Undelete
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Create
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Delete
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Get
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.GetIAMPolicy
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Create
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Delete
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Get
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.List
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.List
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.SetIAMPolicy
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.SignBlob
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.SignJwt
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Update
import           Network.Google.Resource.IAM.Roles.Get
import           Network.Google.Resource.IAM.Roles.List
import           Network.Google.Resource.IAM.Roles.QueryGrantableRoles

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
       :<|> ProjectsServiceAccountsKeysDeleteResource
       :<|> ProjectsServiceAccountsListResource
       :<|> ProjectsServiceAccountsSignJwtResource
       :<|> ProjectsServiceAccountsGetIAMPolicyResource
       :<|> ProjectsServiceAccountsGetResource
       :<|> ProjectsServiceAccountsCreateResource
       :<|> ProjectsServiceAccountsSetIAMPolicyResource
       :<|> ProjectsServiceAccountsSignBlobResource
       :<|>
       ProjectsServiceAccountsTestIAMPermissionsResource
       :<|> ProjectsServiceAccountsDeleteResource
       :<|> ProjectsServiceAccountsUpdateResource
