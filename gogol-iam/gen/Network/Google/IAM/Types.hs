{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAM.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAM.Types
    (
    -- * Service Configuration
      iAMService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * LintPolicyResponse
    , LintPolicyResponse
    , lintPolicyResponse
    , lprLintResults

    -- * CreateServiceAccountKeyRequestPrivateKeyType
    , CreateServiceAccountKeyRequestPrivateKeyType (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * WorkLoadIdentityPoolProvider
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

    -- * UndeleteRoleRequest
    , UndeleteRoleRequest
    , undeleteRoleRequest
    , urrEtag

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * PermissionStage
    , PermissionStage (..)

    -- * UndeleteServiceAccountRequest
    , UndeleteServiceAccountRequest
    , undeleteServiceAccountRequest

    -- * AuditableService
    , AuditableService
    , auditableService
    , asName

    -- * WorkLoadIdentityPoolState
    , WorkLoadIdentityPoolState (..)

    -- * QueryAuditableServicesRequest
    , QueryAuditableServicesRequest
    , queryAuditableServicesRequest
    , qasrFullResourceName

    -- * ProjectsServiceAccountsKeysGetPublicKeyType
    , ProjectsServiceAccountsKeysGetPublicKeyType (..)

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * QueryGrantableRolesRequestView
    , QueryGrantableRolesRequestView (..)

    -- * Empty
    , Empty
    , empty

    -- * Aws
    , Aws
    , aws
    , aAccountId

    -- * QueryTestablePermissionsResponse
    , QueryTestablePermissionsResponse
    , queryTestablePermissionsResponse
    , qtprNextPageToken
    , qtprPermissions

    -- * AuditData
    , AuditData
    , auditData
    , adPolicyDelta

    -- * OrganizationsRolesListView
    , OrganizationsRolesListView (..)

    -- * QueryAuditableServicesResponse
    , QueryAuditableServicesResponse
    , queryAuditableServicesResponse
    , qasrServices

    -- * ServiceAccountKeyKeyOrigin
    , ServiceAccountKeyKeyOrigin (..)

    -- * ServiceAccountKey
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

    -- * WorkLoadIdentityPoolProviderState
    , WorkLoadIdentityPoolProviderState (..)

    -- * PermissionDelta
    , PermissionDelta
    , permissionDelta
    , pdAddedPermissions
    , pdRemovedPermissions

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ProjectsRolesListView
    , ProjectsRolesListView (..)

    -- * LintResult
    , LintResult
    , lintResult
    , lrValidationUnitName
    , lrDebugMessage
    , lrLocationOffSet
    , lrSeverity
    , lrFieldName
    , lrLevel

    -- * UndeleteWorkLoadIdentityPoolRequest
    , UndeleteWorkLoadIdentityPoolRequest
    , undeleteWorkLoadIdentityPoolRequest

    -- * ListWorkLoadIdentityPoolProvidersResponse
    , ListWorkLoadIdentityPoolProvidersResponse
    , listWorkLoadIdentityPoolProvidersResponse
    , lwlipprNextPageToken
    , lwlipprWorkLoadIdentityPoolProviders

    -- * CreateServiceAccountKeyRequest
    , CreateServiceAccountKeyRequest
    , createServiceAccountKeyRequest
    , csakrPrivateKeyType
    , csakrKeyAlgorithm

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * SignJwtResponse
    , SignJwtResponse
    , signJwtResponse
    , sjrKeyId
    , sjrSignedJwt

    -- * BindingDelta
    , BindingDelta
    , bindingDelta
    , bdAction
    , bdRole
    , bdMember
    , bdCondition

    -- * SignBlobRequest
    , SignBlobRequest
    , signBlobRequest
    , sbrBytesToSign

    -- * ListServiceAccountKeysResponse
    , ListServiceAccountKeysResponse
    , listServiceAccountKeysResponse
    , lsakrKeys

    -- * EnableServiceAccountRequest
    , EnableServiceAccountRequest
    , enableServiceAccountRequest

    -- * Role
    , Role
    , role'
    , rStage
    , rEtag
    , rIncludedPermissions
    , rName
    , rDeleted
    , rTitle
    , rDescription

    -- * ServiceAccountKeyKeyType
    , ServiceAccountKeyKeyType (..)

    -- * ServiceAccount
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

    -- * WorkLoadIdentityPoolProviderAttributeMApping
    , WorkLoadIdentityPoolProviderAttributeMApping
    , workLoadIdentityPoolProviderAttributeMApping
    , wlippamaAddtional

    -- * ListWorkLoadIdentityPoolsResponse
    , ListWorkLoadIdentityPoolsResponse
    , listWorkLoadIdentityPoolsResponse
    , lwliprNextPageToken
    , lwliprWorkLoadIdentityPools

    -- * QueryTestablePermissionsRequest
    , QueryTestablePermissionsRequest
    , queryTestablePermissionsRequest
    , qtprFullResourceName
    , qtprPageToken
    , qtprPageSize

    -- * BindingDeltaAction
    , BindingDeltaAction (..)

    -- * UndeleteWorkLoadIdentityPoolProviderRequest
    , UndeleteWorkLoadIdentityPoolProviderRequest
    , undeleteWorkLoadIdentityPoolProviderRequest

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * QueryGrantableRolesResponse
    , QueryGrantableRolesResponse
    , queryGrantableRolesResponse
    , qgrrRoles
    , qgrrNextPageToken

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * AdminAuditData
    , AdminAuditData
    , adminAuditData
    , aadPermissionDelta

    -- * LintResultSeverity
    , LintResultSeverity (..)

    -- * UndeleteServiceAccountResponse
    , UndeleteServiceAccountResponse
    , undeleteServiceAccountResponse
    , usarRestoredAccount

    -- * WorkLoadIdentityPool
    , WorkLoadIdentityPool
    , workLoadIdentityPool
    , wlipState
    , wlipDisabled
    , wlipName
    , wlipDisplayName
    , wlipDescription

    -- * RolesListView
    , RolesListView (..)

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * LintResultLevel
    , LintResultLevel (..)

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * RoleStage
    , RoleStage (..)

    -- * PolicyDelta
    , PolicyDelta
    , policyDelta
    , pdBindingDeltas

    -- * QueryGrantableRolesRequest
    , QueryGrantableRolesRequest
    , queryGrantableRolesRequest
    , qgrrFullResourceName
    , qgrrView
    , qgrrPageToken
    , qgrrPageSize

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * SignJwtRequest
    , SignJwtRequest
    , signJwtRequest
    , sjrPayload

    -- * PatchServiceAccountRequest
    , PatchServiceAccountRequest
    , patchServiceAccountRequest
    , psarUpdateMask
    , psarServiceAccount

    -- * ServiceAccountKeyKeyAlgorithm
    , ServiceAccountKeyKeyAlgorithm (..)

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * ProjectsServiceAccountsKeysListKeyTypes
    , ProjectsServiceAccountsKeysListKeyTypes (..)

    -- * Permission
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

    -- * SignBlobResponse
    , SignBlobResponse
    , signBlobResponse
    , sbrSignature
    , sbrKeyId

    -- * ListServiceAccountsResponse
    , ListServiceAccountsResponse
    , listServiceAccountsResponse
    , lsarNextPageToken
    , lsarAccounts

    -- * LintPolicyRequest
    , LintPolicyRequest
    , lintPolicyRequest
    , lprFullResourceName
    , lprCondition

    -- * ListRolesResponse
    , ListRolesResponse
    , listRolesResponse
    , lrrRoles
    , lrrNextPageToken

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CreateServiceAccountKeyRequestKeyAlgorithm
    , CreateServiceAccountKeyRequestKeyAlgorithm (..)

    -- * PermissionCustomRolesSupportLevel
    , PermissionCustomRolesSupportLevel (..)

    -- * CreateServiceAccountRequest
    , CreateServiceAccountRequest
    , createServiceAccountRequest
    , csarServiceAccount
    , csarAccountId

    -- * Oidc
    , Oidc
    , oidc
    , oAllowedAudiences
    , oIssuerURI

    -- * CreateRoleRequest
    , CreateRoleRequest
    , createRoleRequest
    , crrRoleId
    , crrRole

    -- * ServiceAccountKeyPrivateKeyType
    , ServiceAccountKeyPrivateKeyType (..)

    -- * UploadServiceAccountKeyRequest
    , UploadServiceAccountKeyRequest
    , uploadServiceAccountKeyRequest
    , usakrPublicKeyData

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * DisableServiceAccountRequest
    , DisableServiceAccountRequest
    , disableServiceAccountRequest
    ) where

import Network.Google.IAM.Types.Product
import Network.Google.IAM.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Identity and Access Management (IAM) API. This contains the host and root path used as a starting point for constructing service requests.
iAMService :: ServiceConfig
iAMService
  = defaultService (ServiceId "iam:v1")
      "iam.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
