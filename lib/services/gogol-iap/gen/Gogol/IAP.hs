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
-- Module      : Gogol.IAP
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    newIAPGetIamPolicy,
    IAPGetIamPolicy,

    -- ** iap.getIapSettings
    IAPGetIapSettingsResource,
    newIAPGetIapSettings,
    IAPGetIapSettings,

    -- ** iap.projects.brands.create
    IAPProjectsBrandsCreateResource,
    newIAPProjectsBrandsCreate,
    IAPProjectsBrandsCreate,

    -- ** iap.projects.brands.get
    IAPProjectsBrandsGetResource,
    newIAPProjectsBrandsGet,
    IAPProjectsBrandsGet,

    -- ** iap.projects.brands.identityAwareProxyClients.create
    IAPProjectsBrandsIdentityAwareProxyClientsCreateResource,
    newIAPProjectsBrandsIdentityAwareProxyClientsCreate,
    IAPProjectsBrandsIdentityAwareProxyClientsCreate,

    -- ** iap.projects.brands.identityAwareProxyClients.delete
    IAPProjectsBrandsIdentityAwareProxyClientsDeleteResource,
    newIAPProjectsBrandsIdentityAwareProxyClientsDelete,
    IAPProjectsBrandsIdentityAwareProxyClientsDelete,

    -- ** iap.projects.brands.identityAwareProxyClients.get
    IAPProjectsBrandsIdentityAwareProxyClientsGetResource,
    newIAPProjectsBrandsIdentityAwareProxyClientsGet,
    IAPProjectsBrandsIdentityAwareProxyClientsGet,

    -- ** iap.projects.brands.identityAwareProxyClients.list
    IAPProjectsBrandsIdentityAwareProxyClientsListResource,
    newIAPProjectsBrandsIdentityAwareProxyClientsList,
    IAPProjectsBrandsIdentityAwareProxyClientsList,

    -- ** iap.projects.brands.identityAwareProxyClients.resetSecret
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecretResource,
    newIAPProjectsBrandsIdentityAwareProxyClientsResetSecret,
    IAPProjectsBrandsIdentityAwareProxyClientsResetSecret,

    -- ** iap.projects.brands.list
    IAPProjectsBrandsListResource,
    newIAPProjectsBrandsList,
    IAPProjectsBrandsList,

    -- ** iap.setIamPolicy
    IAPSetIamPolicyResource,
    newIAPSetIamPolicy,
    IAPSetIamPolicy,

    -- ** iap.testIamPermissions
    IAPTestIamPermissionsResource,
    newIAPTestIamPermissions,
    IAPTestIamPermissions,

    -- ** iap.updateIapSettings
    IAPUpdateIapSettingsResource,
    newIAPUpdateIapSettings,
    IAPUpdateIapSettings,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccessDeniedPageSettings
    AccessDeniedPageSettings (..),
    newAccessDeniedPageSettings,

    -- ** AccessSettings
    AccessSettings (..),
    newAccessSettings,

    -- ** ApplicationSettings
    ApplicationSettings (..),
    newApplicationSettings,

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

    -- ** Resource_Labels
    Resource_Labels (..),
    newResource_Labels,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,
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
import Gogol.IAP.SetIamPolicy
import Gogol.IAP.TestIamPermissions
import Gogol.IAP.Types
import Gogol.IAP.UpdateIapSettings
