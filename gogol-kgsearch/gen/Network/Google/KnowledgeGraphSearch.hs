{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.KnowledgeGraphSearch
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
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management API Reference>
module Network.Google.KnowledgeGraphSearch
    (
    -- * Service Configuration
      knowledgeGraphSearchService

    -- * OAuth Scopes
    , authCloudPlatformScope

    -- * API Declaration
    , KnowledgeGraphSearchAPI

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

    -- * Types

    -- ** CounterOptions
    , CounterOptions
    , counterOptions
    , coField
    , coMetric

    -- ** Empty
    , Empty
    , empty

    -- ** ServiceAccountKey
    , ServiceAccountKey
    , serviceAccountKey
    , sakValidAfterTime
    , sakPrivateKeyData
    , sakName
    , sakPrivateKeyType
    , sakValidBeforeTime

    -- ** Rule
    , Rule
    , rule
    , rAction
    , rIn
    , rNotIn
    , rConditions
    , rPermissions
    , rLogConfig
    , rDescription

    -- ** CreateServiceAccountKeyRequest
    , CreateServiceAccountKeyRequest
    , createServiceAccountKeyRequest
    , csakrPrivateKeyType

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** SignBlobRequest
    , SignBlobRequest
    , signBlobRequest
    , sbrBytesToSign

    -- ** ListServiceAccountKeysResponse
    , ListServiceAccountKeysResponse
    , listServiceAccountKeysResponse
    , lsakrKeys

    -- ** CloudAuditOptions
    , CloudAuditOptions
    , cloudAuditOptions

    -- ** DataAccessOptions
    , DataAccessOptions
    , dataAccessOptions

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
    , pRules
    , pVersion
    , pBindings

    -- ** Condition
    , Condition
    , condition
    , cOp
    , cIAM
    , cValues
    , cValue
    , cSys
    , cSvc

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

    -- ** LogConfig
    , LogConfig
    , logConfig
    , lcCloudAudit
    , lcDataAccess
    , lcCounter

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

import           Network.Google.KnowledgeGraphSearch.Types
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

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Identity and Access Management API service.
type KnowledgeGraphSearchAPI =
     ProjectsServiceAccountsKeysListResource :<|>
       ProjectsServiceAccountsKeysGetResource
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
