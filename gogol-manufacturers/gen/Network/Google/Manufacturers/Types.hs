{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Manufacturers.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Manufacturers.Types
    (
    -- * Service Configuration
      manufacturersService

    -- * OAuth Scopes
    , manufacturercenterScope

    -- * Attributes
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

    -- * Xgafv
    , Xgafv (..)

    -- * IssueSeverity
    , IssueSeverity (..)

    -- * Product
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

    -- * Issue
    , Issue
    , issue
    , iAttribute
    , iSeverity
    , iType
    , iDescription

    -- * ListProductsResponse
    , ListProductsResponse
    , listProductsResponse
    , lprNextPageToken
    , lprProducts
    ) where

import           Network.Google.Manufacturers.Types.Product
import           Network.Google.Manufacturers.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Manufacturer Center API. This contains the host and root path used as a starting point for constructing service requests.
manufacturersService :: ServiceConfig
manufacturersService
  = defaultService (ServiceId "manufacturers:v1")
      "manufacturers.googleapis.com"

-- | Manage your product listings for Google Manufacturer Center
manufacturercenterScope :: Proxy '["https://www.googleapis.com/auth/manufacturercenter"]
manufacturercenterScope = Proxy;
