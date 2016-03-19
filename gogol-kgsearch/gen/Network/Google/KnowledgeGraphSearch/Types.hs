{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.KnowledgeGraphSearch.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.KnowledgeGraphSearch.Types
    (
    -- * Service Configuration
      knowledgeGraphSearchService

    -- * OAuth Scopes
    , authCloudPlatformScope

    -- * CounterOptions
    , CounterOptions
    , counterOptions
    , coField
    , coMetric

    -- * Empty
    , Empty
    , empty

    -- * ServiceAccountKey
    , ServiceAccountKey
    , serviceAccountKey
    , sakValidAfterTime
    , sakPrivateKeyData
    , sakName
    , sakPrivateKeyType
    , sakValidBeforeTime

    -- * Rule
    , Rule
    , rule
    , rAction
    , rIn
    , rNotIn
    , rConditions
    , rPermissions
    , rLogConfig
    , rDescription

    -- * CreateServiceAccountKeyRequest
    , CreateServiceAccountKeyRequest
    , createServiceAccountKeyRequest
    , csakrPrivateKeyType

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * SignBlobRequest
    , SignBlobRequest
    , signBlobRequest
    , sbrBytesToSign

    -- * ListServiceAccountKeysResponse
    , ListServiceAccountKeysResponse
    , listServiceAccountKeysResponse
    , lsakrKeys

    -- * CloudAuditOptions
    , CloudAuditOptions
    , cloudAuditOptions

    -- * DataAccessOptions
    , DataAccessOptions
    , dataAccessOptions

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saEtag
    , saUniqueId
    , saName
    , saDisplayName
    , saProjectId
    , saOAuth2ClientId

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pRules
    , pVersion
    , pBindings

    -- * Condition
    , Condition
    , condition
    , cOp
    , cIAM
    , cValues
    , cValue
    , cSys
    , cSvc

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

    -- * LogConfig
    , LogConfig
    , logConfig
    , lcCloudAudit
    , lcDataAccess
    , lcCounter

    -- * CreateServiceAccountRequest
    , CreateServiceAccountRequest
    , createServiceAccountRequest
    , csarServiceAccount
    , csarAccountId

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    ) where

import           Network.Google.KnowledgeGraphSearch.Types.Product
import           Network.Google.KnowledgeGraphSearch.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Identity and Access Management API. This contains the host and root path used as a starting point for constructing service requests.
knowledgeGraphSearchService :: ServiceConfig
knowledgeGraphSearchService
  = defaultService (ServiceId "iam:v1")
      "iam.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
authCloudPlatformScope :: OAuthScope
authCloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";
