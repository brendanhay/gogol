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

    -- ** manufacturers.accounts.products.get
    , module Network.Google.Resource.Manufacturers.Accounts.Products.Get

    -- ** manufacturers.accounts.products.list
    , module Network.Google.Resource.Manufacturers.Accounts.Products.List

    -- * Types

    -- ** Attributes
    , Attributes
    , attributes
    , aProductName
    , aProductLine
    , aProductType
    , aBrand
    , aGtin
    , aTitle
    , aMpn
    , aProductPageURL

    -- ** Xgafv
    , Xgafv (..)

    -- ** IssueSeverity
    , IssueSeverity (..)

    -- ** Product
    , Product
    , product
    , pParent
    , pManuallyDeletedAttributes
    , pTargetCountry
    , pManuallyProvidedAttributes
    , pName
    , pIssues
    , pUploadedAttributes
    , pContentLanguage
    , pFinalAttributes
    , pProductId

    -- ** Issue
    , Issue
    , issue
    , iAttribute
    , iSeverity
    , iType
    , iDescription

    -- ** ListProductsResponse
    , ListProductsResponse
    , listProductsResponse
    , lprNextPageToken
    , lprProducts
    ) where

import           Network.Google.Manufacturers.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Manufacturers.Accounts.Products.Get
import           Network.Google.Resource.Manufacturers.Accounts.Products.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Manufacturer Center API service.
type ManufacturersAPI =
     AccountsProductsListResource :<|>
       AccountsProductsGetResource
