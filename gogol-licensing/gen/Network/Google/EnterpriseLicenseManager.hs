{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.EnterpriseLicenseManager
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Licensing API to view and manage license for your domain.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference>
module Network.Google.EnterpriseLicenseManager
    (
    -- * Resources
      EnterpriseLicenseManager
    , LicenseAssignmentsAPI
    , LicenseAssignmentsInsert
    , LicenseAssignmentsPatch
    , LicenseAssignmentsGet
    , LicenseAssignmentsListForProductAndSku
    , LicenseAssignmentsListForProduct
    , LicenseAssignmentsDelete
    , LicenseAssignmentsUpdate

    -- * Types

    -- ** LicenseAssignment
    , LicenseAssignment
    , licenseAssignment
    , laEtags
    , laKind
    , laSkuId
    , laUserId
    , laSelfLink
    , laProductId

    -- ** LicenseAssignmentInsert
    , LicenseAssignmentInsert
    , licenseAssignmentInsert
    , laiUserId

    -- ** LicenseAssignmentList
    , LicenseAssignmentList
    , licenseAssignmentList
    , lalEtag
    , lalNextPageToken
    , lalKind
    , lalItems
    ) where

import           Network.Google.EnterpriseLicenseManager.Types

{- $resources
TODO
-}

type EnterpriseLicenseManager = LicenseAssignmentsAPI

type LicenseAssignmentsAPI =
     LicenseAssignmentsPatch :<|>
       LicenseAssignmentsGet :<|>
         LicenseAssignmentsListForProductAndSku :<|>
           LicenseAssignmentsListForProduct :<|>
             LicenseAssignmentsDelete :<|>
               LicenseAssignmentsUpdate :<|>
                 LicenseAssignmentsInsert

-- | Assign License.
type LicenseAssignmentsInsert =
     "apps" :> "licensing" :> "v1" :> "product" :>
       Capture "productId" Text
       :> "sku"
       :> Capture "skuId" Text
       :> "user"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Assign License. This method supports patch semantics.
type LicenseAssignmentsPatch =
     "apps" :> "licensing" :> "v1" :> "product" :>
       Capture "productId" Text
       :> "sku"
       :> Capture "skuId" Text
       :> "user"
       :> Capture "userId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get license assignment of a particular product and sku for a user
type LicenseAssignmentsGet =
     "apps" :> "licensing" :> "v1" :> "product" :>
       Capture "productId" Text
       :> "sku"
       :> Capture "skuId" Text
       :> "user"
       :> Capture "userId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List license assignments for given product and sku of the customer.
type LicenseAssignmentsListForProductAndSku =
     "apps" :> "licensing" :> "v1" :> "product" :>
       Capture "productId" Text
       :> "sku"
       :> Capture "skuId" Text
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "customerId" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List license assignments for given product of the customer.
type LicenseAssignmentsListForProduct =
     "apps" :> "licensing" :> "v1" :> "product" :>
       Capture "productId" Text
       :> "users"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "customerId" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Revoke License.
type LicenseAssignmentsDelete =
     "apps" :> "licensing" :> "v1" :> "product" :>
       Capture "productId" Text
       :> "sku"
       :> Capture "skuId" Text
       :> "user"
       :> Capture "userId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Assign License.
type LicenseAssignmentsUpdate =
     "apps" :> "licensing" :> "v1" :> "product" :>
       Capture "productId" Text
       :> "sku"
       :> Capture "skuId" Text
       :> "user"
       :> Capture "userId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
