{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAP
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Controls access to cloud applications running on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference>
module Gogol.IAP
  ( -- * Configuration
    iAPService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** iap.getIamPolicy
    IAPGetIamPolicyResource,
    IAPGetIamPolicy (..),
    newIAPGetIamPolicy,

    -- ** iap.getIapSettings
    IAPGetIapSettingsResource,
    IAPGetIapSettings (..),
    newIAPGetIapSettings,

    -- ** iap.projects.brands.create
    IAPProjectsBrandsCreateResource,
    IAPProjectsBrandsCreate (..),
    newIAPProjectsBrandsCreate,

    -- ** iap.projects.brands.get
    IAPProjectsBrandsGetResource,
    IAPProjectsBrandsGet (..),
    newIAPProjectsBrandsGet,

    -- ** iap.projects.brands.identityAwareProxyClients.create
    IAPProjectsBrandsIdentityAwareProxyClientsCreateResource,
    IAPProjectsBrandsIdentityAwareProxyClientsCreate (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsCreate,

    -- ** iap.projects.brands.identityAwareProxyClients.delete
    IAPProjectsBrandsIdentityAwareProxyClientsDeleteResource,
    IAPProjectsBrandsIdentityAwareProxyClientsDelete (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsDelete,

    -- ** iap.projects.brands.identityAwareProxyClients.get
    IAPProjectsBrandsIdentityAwareProxyClientsGetResource,
    IAPProjectsBrandsIdentityAwareProxyClientsGet (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsGet,

    -- ** iap.projects.brands.identityAwareProxyClients.list
    IAPProjectsBrandsIdentityAwareProxyClientsListResource,
    IAPProjectsBrandsIdentityAwareProxyClientsList (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsList,

    -- ** iap.projects.brands.identityAwareProxyClients.resetSecret
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecretResource,
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecret (..),
    newIAPProjectsBrandsIdentityAwareProxyClientsResetSecret,

    -- ** iap.projects.brands.list
    IAPProjectsBrandsListResource,
    IAPProjectsBrandsList (..),
    newIAPProjectsBrandsList,

    -- ** iap.projects.iap_tunnel.locations.destGroups.create
    IAPProjectsIap_tunnelLocationsDestGroupsCreateResource,
    IAPProjectsIap_tunnelLocationsDestGroupsCreate (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsCreate,

    -- ** iap.projects.iap_tunnel.locations.destGroups.delete
    IAPProjectsIap_tunnelLocationsDestGroupsDeleteResource,
    IAPProjectsIap_tunnelLocationsDestGroupsDelete (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsDelete,

    -- ** iap.projects.iap_tunnel.locations.destGroups.get
    IAPProjectsIap_tunnelLocationsDestGroupsGetResource,
    IAPProjectsIap_tunnelLocationsDestGroupsGet (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsGet,

    -- ** iap.projects.iap_tunnel.locations.destGroups.list
    IAPProjectsIap_tunnelLocationsDestGroupsListResource,
    IAPProjectsIap_tunnelLocationsDestGroupsList (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsList,

    -- ** iap.projects.iap_tunnel.locations.destGroups.patch
    IAPProjectsIap_tunnelLocationsDestGroupsPatchResource,
    IAPProjectsIap_tunnelLocationsDestGroupsPatch (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsPatch,

    -- ** iap.setIamPolicy
    IAPSetIamPolicyResource,
    IAPSetIamPolicy (..),
    newIAPSetIamPolicy,

    -- ** iap.testIamPermissions
    IAPTestIamPermissionsResource,
    IAPTestIamPermissions (..),
    newIAPTestIamPermissions,

    -- ** iap.updateIapSettings
    IAPUpdateIapSettingsResource,
    IAPUpdateIapSettings (..),
    newIAPUpdateIapSettings,

    -- ** iap.validateAttributeExpression
    IAPValidateAttributeExpressionResource,
    IAPValidateAttributeExpression (..),
    newIAPValidateAttributeExpression,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccessDeniedPageSettings
    AccessDeniedPageSettings (..),
    newAccessDeniedPageSettings,

    -- ** AccessSettings
    AccessSettings (..),
    newAccessSettings,

    -- ** AccessSettings_IdentitySourcesItem
    AccessSettings_IdentitySourcesItem (..),

    -- ** AllowedDomainsSettings
    AllowedDomainsSettings (..),
    newAllowedDomainsSettings,

    -- ** ApplicationSettings
    ApplicationSettings (..),
    newApplicationSettings,

    -- ** AttributePropagationSettings
    AttributePropagationSettings (..),
    newAttributePropagationSettings,

    -- ** AttributePropagationSettings_OutputCredentialsItem
    AttributePropagationSettings_OutputCredentialsItem (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Brand
    Brand (..),
    newBrand,

    -- ** CorsSettings
    CorsSettings (..),
    newCorsSettings,

    -- ** CsmSettings
    CsmSettings (..),
    newCsmSettings,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GcipSettings
    GcipSettings (..),
    newGcipSettings,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** IapSettings
    IapSettings (..),
    newIapSettings,

    -- ** IdentityAwareProxyClient
    IdentityAwareProxyClient (..),
    newIdentityAwareProxyClient,

    -- ** ListBrandsResponse
    ListBrandsResponse (..),
    newListBrandsResponse,

    -- ** ListIdentityAwareProxyClientsResponse
    ListIdentityAwareProxyClientsResponse (..),
    newListIdentityAwareProxyClientsResponse,

    -- ** ListTunnelDestGroupsResponse
    ListTunnelDestGroupsResponse (..),
    newListTunnelDestGroupsResponse,

    -- ** NextStateOfTags
    NextStateOfTags (..),
    newNextStateOfTags,

    -- ** OAuth2
    OAuth2 (..),
    newOAuth2,

    -- ** OAuthSettings
    OAuthSettings (..),
    newOAuthSettings,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PolicyDelegationSettings
    PolicyDelegationSettings (..),
    newPolicyDelegationSettings,

    -- ** PolicyName
    PolicyName (..),
    newPolicyName,

    -- ** ReauthSettings
    ReauthSettings (..),
    newReauthSettings,

    -- ** ReauthSettings_Method
    ReauthSettings_Method (..),

    -- ** ReauthSettings_PolicyType
    ReauthSettings_PolicyType (..),

    -- ** ResetIdentityAwareProxyClientSecretRequest
    ResetIdentityAwareProxyClientSecretRequest (..),
    newResetIdentityAwareProxyClientSecretRequest,

    -- ** Resource
    Resource (..),
    newResource,

    -- ** Resource_ExpectedNextState
    Resource_ExpectedNextState (..),
    newResource_ExpectedNextState,

    -- ** Resource_Labels
    Resource_Labels (..),
    newResource_Labels,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** TagsFullState
    TagsFullState (..),
    newTagsFullState,

    -- ** TagsFullState_Tags
    TagsFullState_Tags (..),
    newTagsFullState_Tags,

    -- ** TagsFullStateForChildResource
    TagsFullStateForChildResource (..),
    newTagsFullStateForChildResource,

    -- ** TagsFullStateForChildResource_Tags
    TagsFullStateForChildResource_Tags (..),
    newTagsFullStateForChildResource_Tags,

    -- ** TagsPartialState
    TagsPartialState (..),
    newTagsPartialState,

    -- ** TagsPartialState_TagsToUpsert
    TagsPartialState_TagsToUpsert (..),
    newTagsPartialState_TagsToUpsert,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TunnelDestGroup
    TunnelDestGroup (..),
    newTunnelDestGroup,

    -- ** ValidateIapAttributeExpressionResponse
    ValidateIapAttributeExpressionResponse (..),
    newValidateIapAttributeExpressionResponse,

    -- ** WorkforceIdentitySettings
    WorkforceIdentitySettings (..),
    newWorkforceIdentitySettings,
  )
where

import Gogol.IAP.GetIamPolicy
import Gogol.IAP.GetIapSettings
import Gogol.IAP.Projects.Brands.Create
import Gogol.IAP.Projects.Brands.Get
import Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Create
import Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Delete
import Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.Get
import Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.List
import Gogol.IAP.Projects.Brands.IdentityAwareProxyClients.ResetSecret
import Gogol.IAP.Projects.Brands.List
import Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Create
import Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Delete
import Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Get
import Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.List
import Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Patch
import Gogol.IAP.SetIamPolicy
import Gogol.IAP.TestIamPermissions
import Gogol.IAP.Types
import Gogol.IAP.UpdateIapSettings
import Gogol.IAP.ValidateAttributeExpression
