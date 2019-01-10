{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Manufacturers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Public API for managing Manufacturer Center related data.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference>
module Network.Google.Manufacturers
    (
    -- * Service Configuration
      manufacturersService

    -- * OAuth Scopes
    , manufacturercenterScope

    -- * API Declaration
    , ManufacturersAPI

    -- * Resources

    -- ** manufacturers.accounts.products.delete
    , module Network.Google.Resource.Manufacturers.Accounts.Products.Delete

    -- ** manufacturers.accounts.products.get
    , module Network.Google.Resource.Manufacturers.Accounts.Products.Get

    -- ** manufacturers.accounts.products.list
    , module Network.Google.Resource.Manufacturers.Accounts.Products.List

    -- ** manufacturers.accounts.products.update
    , module Network.Google.Resource.Manufacturers.Accounts.Products.Update

    -- * Types

    -- ** DestinationStatusStatus
    , DestinationStatusStatus (..)

    -- ** IssueResolution
    , IssueResolution (..)

    -- ** Image
    , Image
    , image
    , iStatus
    , iImageURL
    , iType

    -- ** FeatureDescription
    , FeatureDescription
    , featureDescription
    , fdImage
    , fdText
    , fdHeadline

    -- ** ProductDetail
    , ProductDetail
    , productDetail
    , pdAttributeValue
    , pdAttributeName
    , pdSectionName

    -- ** Empty
    , Empty
    , empty

    -- ** DestinationStatus
    , DestinationStatus
    , destinationStatus
    , dsDestination
    , dsStatus

    -- ** ImageStatus
    , ImageStatus (..)

    -- ** Count
    , Count
    , count
    , cValue
    , cUnit

    -- ** Capacity
    , Capacity
    , capacity
    , capValue
    , capUnit

    -- ** ImageType
    , ImageType (..)

    -- ** Attributes
    , Attributes
    , attributes
    , aProductName
    , aScent
    , aImageLink
    , aFeatureDescription
    , aProductDetail
    , aProductLine
    , aColor
    , aSize
    , aFlavor
    , aPattern
    , aSizeSystem
    , aMaterial
    , aFormat
    , aProductType
    , aCount
    , aDisclosureDate
    , aBrand
    , aAdditionalImageLink
    , aExcludedDestination
    , aVideoLink
    , aCapacity
    , aGtin
    , aAgeGroup
    , aIncludedDestination
    , aGender
    , aSuggestedRetailPrice
    , aItemGroupId
    , aTargetClientId
    , aSizeType
    , aReleaseDate
    , aTitle
    , aMpn
    , aProductPageURL
    , aDescription
    , aTheme

    -- ** Xgafv
    , Xgafv (..)

    -- ** IssueSeverity
    , IssueSeverity (..)

    -- ** Price
    , Price
    , price
    , pAmount
    , pCurrency

    -- ** Product
    , Product
    , product
    , pParent
    , pDestinationStatuses
    , pTargetCountry
    , pName
    , pAttributes
    , pIssues
    , pContentLanguage
    , pProductId

    -- ** Issue
    , Issue
    , issue
    , issAttribute
    , issDestination
    , issSeverity
    , issResolution
    , issTitle
    , issType
    , issTimestamp
    , issDescription

    -- ** ListProductsResponse
    , ListProductsResponse
    , listProductsResponse
    , lprNextPageToken
    , lprProducts
    ) where

import           Network.Google.Manufacturers.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Manufacturers.Accounts.Products.Delete
import           Network.Google.Resource.Manufacturers.Accounts.Products.Get
import           Network.Google.Resource.Manufacturers.Accounts.Products.List
import           Network.Google.Resource.Manufacturers.Accounts.Products.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Manufacturer Center API service.
type ManufacturersAPI =
     AccountsProductsListResource :<|>
       AccountsProductsGetResource
       :<|> AccountsProductsDeleteResource
       :<|> AccountsProductsUpdateResource
