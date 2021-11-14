{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IAP
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Controls access to cloud applications running on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference>
module Network.Google.IAP
    (
    -- * Service Configuration
      iAPService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , IAPAPI

    -- * Resources

    -- ** iap.getIamPolicy
    , module Network.Google.Resource.IAP.GetIAMPolicy

    -- ** iap.getIapSettings
    , module Network.Google.Resource.IAP.GetIapSettings

    -- ** iap.projects.brands.create
    , module Network.Google.Resource.IAP.Projects.Brands.Create

    -- ** iap.projects.brands.get
    , module Network.Google.Resource.IAP.Projects.Brands.Get

    -- ** iap.projects.brands.identityAwareProxyClients.create
    , module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Create

    -- ** iap.projects.brands.identityAwareProxyClients.delete
    , module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Delete

    -- ** iap.projects.brands.identityAwareProxyClients.get
    , module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Get

    -- ** iap.projects.brands.identityAwareProxyClients.list
    , module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.List

    -- ** iap.projects.brands.identityAwareProxyClients.resetSecret
    , module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.ResetSecret

    -- ** iap.projects.brands.list
    , module Network.Google.Resource.IAP.Projects.Brands.List

    -- ** iap.setIamPolicy
    , module Network.Google.Resource.IAP.SetIAMPolicy

    -- ** iap.testIamPermissions
    , module Network.Google.Resource.IAP.TestIAMPermissions

    -- ** iap.updateIapSettings
    , module Network.Google.Resource.IAP.UpdateIapSettings

    -- * Types

    -- ** ResourceLabels
    , ResourceLabels
    , resourceLabels
    , rlAddtional

    -- ** PolicyDelegationSettings
    , PolicyDelegationSettings
    , policyDelegationSettings
    , pdsIAMServiceName
    , pdsPolicyName
    , pdsIAMPermission
    , pdsResource

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** PolicyName
    , PolicyName
    , policyName
    , pnId
    , pnRegion
    , pnType

    -- ** ApplicationSettings
    , ApplicationSettings
    , applicationSettings
    , asCookieDomain
    , asAccessDeniedPageSettings
    , asCsmSettings

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** IapSettings
    , IapSettings
    , iapSettings
    , isApplicationSettings
    , isAccessSettings
    , isName

    -- ** Empty
    , Empty
    , empty

    -- ** GcipSettings
    , GcipSettings
    , gcipSettings
    , gsTenantIds
    , gsLoginPageURI

    -- ** IdentityAwareProxyClient
    , IdentityAwareProxyClient
    , identityAwareProxyClient
    , iapcSecret
    , iapcName
    , iapcDisplayName

    -- ** Brand
    , Brand
    , brand
    , bOrgInternalOnly
    , bName
    , bApplicationTitle
    , bSupportEmail

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** AccessSettings
    , AccessSettings
    , accessSettings
    , asPolicyDelegationSettings
    , asGcipSettings
    , asOAuthSettings
    , asCORSSettings

    -- ** ListBrandsResponse
    , ListBrandsResponse
    , listBrandsResponse
    , lbrBrands

    -- ** ListIdentityAwareProxyClientsResponse
    , ListIdentityAwareProxyClientsResponse
    , listIdentityAwareProxyClientsResponse
    , liapcrNextPageToken
    , liapcrIdentityAwareProxyClients

    -- ** Resource
    , Resource
    , resource
    , rService
    , rName
    , rLabels
    , rType

    -- ** Xgafv
    , Xgafv (..)

    -- ** OAuthSettings
    , OAuthSettings
    , oAuthSettings
    , oasLoginHint

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** AccessDeniedPageSettings
    , AccessDeniedPageSettings
    , accessDeniedPageSettings
    , adpsGenerateTroubleshootingURI
    , adpsAccessDeniedPageURI

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

    -- ** CsmSettings
    , CsmSettings
    , csmSettings
    , csRctokenAud

    -- ** CORSSettings
    , CORSSettings
    , corsSettings
    , csAllowHTTPOptions

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** ResetIdentityAwareProxyClientSecretRequest
    , ResetIdentityAwareProxyClientSecretRequest
    , resetIdentityAwareProxyClientSecretRequest
    ) where

import Network.Google.Prelude
import Network.Google.IAP.Types
import Network.Google.Resource.IAP.GetIAMPolicy
import Network.Google.Resource.IAP.GetIapSettings
import Network.Google.Resource.IAP.Projects.Brands.Create
import Network.Google.Resource.IAP.Projects.Brands.Get
import Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Create
import Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Delete
import Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Get
import Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.List
import Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.ResetSecret
import Network.Google.Resource.IAP.Projects.Brands.List
import Network.Google.Resource.IAP.SetIAMPolicy
import Network.Google.Resource.IAP.TestIAMPermissions
import Network.Google.Resource.IAP.UpdateIapSettings

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Identity-Aware Proxy API service.
type IAPAPI =
     UpdateIapSettingsResource :<|> GetIAMPolicyResource
       :<|> SetIAMPolicyResource
       :<|> GetIapSettingsResource
       :<|> TestIAMPermissionsResource
       :<|>
       ProjectsBrandsIdentityAwareProxyClientsListResource
       :<|>
       ProjectsBrandsIdentityAwareProxyClientsResetSecretResource
       :<|>
       ProjectsBrandsIdentityAwareProxyClientsGetResource
       :<|>
       ProjectsBrandsIdentityAwareProxyClientsCreateResource
       :<|>
       ProjectsBrandsIdentityAwareProxyClientsDeleteResource
       :<|> ProjectsBrandsListResource
       :<|> ProjectsBrandsGetResource
       :<|> ProjectsBrandsCreateResource
