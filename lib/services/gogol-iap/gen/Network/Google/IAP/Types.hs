{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAP.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAP.Types
    (
    -- * Service Configuration
      iAPService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ResourceLabels
    , ResourceLabels
    , resourceLabels
    , rlAddtional

    -- * PolicyDelegationSettings
    , PolicyDelegationSettings
    , policyDelegationSettings
    , pdsIAMServiceName
    , pdsPolicyName
    , pdsIAMPermission
    , pdsResource

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * PolicyName
    , PolicyName
    , policyName
    , pnId
    , pnRegion
    , pnType

    -- * ApplicationSettings
    , ApplicationSettings
    , applicationSettings
    , asCookieDomain
    , asAccessDeniedPageSettings
    , asCsmSettings

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * IapSettings
    , IapSettings
    , iapSettings
    , isApplicationSettings
    , isAccessSettings
    , isName

    -- * Empty
    , Empty
    , empty

    -- * GcipSettings
    , GcipSettings
    , gcipSettings
    , gsTenantIds
    , gsLoginPageURI

    -- * IdentityAwareProxyClient
    , IdentityAwareProxyClient
    , identityAwareProxyClient
    , iapcSecret
    , iapcName
    , iapcDisplayName

    -- * Brand
    , Brand
    , brand
    , bOrgInternalOnly
    , bName
    , bApplicationTitle
    , bSupportEmail

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * AccessSettings
    , AccessSettings
    , accessSettings
    , asPolicyDelegationSettings
    , asGcipSettings
    , asOAuthSettings
    , asCORSSettings

    -- * ListBrandsResponse
    , ListBrandsResponse
    , listBrandsResponse
    , lbrBrands

    -- * ListIdentityAwareProxyClientsResponse
    , ListIdentityAwareProxyClientsResponse
    , listIdentityAwareProxyClientsResponse
    , liapcrNextPageToken
    , liapcrIdentityAwareProxyClients

    -- * Resource
    , Resource
    , resource
    , rService
    , rName
    , rLabels
    , rType

    -- * Xgafv
    , Xgafv (..)

    -- * OAuthSettings
    , OAuthSettings
    , oAuthSettings
    , oasLoginHint

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * AccessDeniedPageSettings
    , AccessDeniedPageSettings
    , accessDeniedPageSettings
    , adpsGenerateTroubleshootingURI
    , adpsAccessDeniedPageURI

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * CsmSettings
    , CsmSettings
    , csmSettings
    , csRctokenAud

    -- * CORSSettings
    , CORSSettings
    , corsSettings
    , csAllowHTTPOptions

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * ResetIdentityAwareProxyClientSecretRequest
    , ResetIdentityAwareProxyClientSecretRequest
    , resetIdentityAwareProxyClientSecretRequest
    ) where

import Network.Google.IAP.Types.Product
import Network.Google.IAP.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Identity-Aware Proxy API. This contains the host and root path used as a starting point for constructing service requests.
iAPService :: ServiceConfig
iAPService
  = defaultService (ServiceId "iap:v1")
      "iap.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
