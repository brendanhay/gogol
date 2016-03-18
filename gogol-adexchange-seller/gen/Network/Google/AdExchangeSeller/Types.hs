{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeSeller.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeSeller.Types
    (
    -- * Service Configuration
      adExchangeSellerService

    -- * OAuth Scopes
    , adexchangeSellerReadonlyScope
    , adexchangeSellerScope

    -- * AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- * ReportingMetadataEntry
    , ReportingMetadataEntry
    , reportingMetadataEntry
    , rmeKind
    , rmeRequiredMetrics
    , rmeCompatibleMetrics
    , rmeRequiredDimensions
    , rmeId
    , rmeCompatibleDimensions
    , rmeSupportedProducts

    -- * Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- * Alerts
    , Alerts
    , alerts
    , aleKind
    , aleItems

    -- * SavedReports
    , SavedReports
    , savedReports
    , srEtag
    , srNextPageToken
    , srKind
    , srItems

    -- * SavedReport
    , SavedReport
    , savedReport
    , sKind
    , sName
    , sId

    -- * URLChannels
    , URLChannels
    , urlChannels
    , ucEtag
    , ucNextPageToken
    , ucKind
    , ucItems

    -- * CustomChannels
    , CustomChannels
    , customChannels
    , ccEtag
    , ccNextPageToken
    , ccKind
    , ccItems

    -- * Report
    , Report
    , report
    , rKind
    , rAverages
    , rWarnings
    , rRows
    , rTotals
    , rHeaders
    , rTotalMatchedRows

    -- * Alert
    , Alert
    , alert
    , aaKind
    , aaSeverity
    , aaId
    , aaType
    , aaMessage

    -- * Account
    , Account
    , account
    , accKind
    , accName
    , accId

    -- * AdClient
    , AdClient
    , adClient
    , adKind
    , adArcOptIn
    , adSupportsReporting
    , adId
    , adProductCode

    -- * ReportHeadersItem
    , ReportHeadersItem
    , reportHeadersItem
    , rhiName
    , rhiCurrency
    , rhiType

    -- * CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- * PreferredDeals
    , PreferredDeals
    , preferredDeals
    , pdKind
    , pdItems

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * CustomChannel
    , CustomChannel
    , customChannel
    , cTargetingInfo
    , cKind
    , cName
    , cCode
    , cId

    -- * URLChannel
    , URLChannel
    , urlChannel
    , urlcKind
    , urlcId
    , urlcURLPattern

    -- * PreferredDeal
    , PreferredDeal
    , preferredDeal
    , pAdvertiserName
    , pCurrencyCode
    , pStartTime
    , pKind
    , pBuyerNetworkName
    , pEndTime
    , pId
    , pFixedCpm
    ) where

import           Network.Google.AdExchangeSeller.Types.Product
import           Network.Google.AdExchangeSeller.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2.0' of the Ad Exchange Seller API. This contains the host and root path used as a starting point for constructing service requests.
adExchangeSellerService :: ServiceConfig
adExchangeSellerService
  = defaultService (ServiceId "adexchangeseller:v2.0")
      "www.googleapis.com"

-- | View your Ad Exchange data
adexchangeSellerReadonlyScope :: OAuthScope
adexchangeSellerReadonlyScope = "https://www.googleapis.com/auth/adexchange.seller.readonly";

-- | View and manage your Ad Exchange data
adexchangeSellerScope :: OAuthScope
adexchangeSellerScope = "https://www.googleapis.com/auth/adexchange.seller";
