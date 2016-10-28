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
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management (IAM) API Reference>
module Network.Google.IAM
    (
    -- * Service Configuration
      iAMService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , IAMAPI

    -- * Resources

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

    -- ** iam.projects.serviceAccounts.testIamPermissions
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions

    -- ** iam.projects.serviceAccounts.update
    , module Network.Google.Resource.IAM.Projects.ServiceAccounts.Update

    -- ** iam.roles.queryGrantableRoles
    , module Network.Google.Resource.IAM.Roles.QueryGrantableRoles

    -- * Types

    -- ** Empty
    , Empty
    , empty

    -- ** AuditData
    , AuditData
    , auditData
    , adPolicyDelta

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

    -- ** CreateServiceAccountKeyRequest
    , CreateServiceAccountKeyRequest
    , createServiceAccountKeyRequest
    , csakrPrivateKeyType
    , csakrKeyAlgorithm

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** BindingDelta
    , BindingDelta
    , bindingDelta
    , bdAction
    , bdRole
    , bdMember

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
    , rName
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

    -- ** QueryGrantableRolesResponse
    , QueryGrantableRolesResponse
    , queryGrantableRolesResponse
    , qgrrRoles

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** PolicyDelta
    , PolicyDelta
    , policyDelta
    , pdBindingDeltas

    -- ** QueryGrantableRolesRequest
    , QueryGrantableRolesRequest
    , queryGrantableRolesRequest
    , qgrrFullResourceName

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

    -- ** CreateServiceAccountRequest
    , CreateServiceAccountRequest
    , createServiceAccountRequest
    , csarServiceAccount
    , csarAccountId

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude
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
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions
import           Network.Google.Resource.IAM.Projects.ServiceAccounts.Update
import           Network.Google.Resource.IAM.Roles.QueryGrantableRoles

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Identity and Access Management (IAM) API service.
type IAMAPI =
     RolesQueryGrantableRolesResource :<|>
       ProjectsServiceAccountsKeysListResource
       :<|> ProjectsServiceAccountsKeysGetResource
       :<|> ProjectsServiceAccountsKeysCreateResource
       :<|> ProjectsServiceAccountsKeysDeleteResource
       :<|> ProjectsServiceAccountsListResource
       :<|> ProjectsServiceAccountsGetIAMPolicyResource
       :<|> ProjectsServiceAccountsGetResource
       :<|> ProjectsServiceAccountsCreateResource
       :<|> ProjectsServiceAccountsSetIAMPolicyResource
       :<|> ProjectsServiceAccountsSignBlobResource
       :<|>
       ProjectsServiceAccountsTestIAMPermissionsResource
       :<|> ProjectsServiceAccountsDeleteResource
       :<|> ProjectsServiceAccountsUpdateResource
