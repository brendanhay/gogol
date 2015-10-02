{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      adExchangeSellerURL

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

    -- * AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- * Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- * ReportHeaders
    , ReportHeaders
    , reportHeaders
    , rhName
    , rhCurrency
    , rhType

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
    , uRLChannels
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

    -- * Alert
    , Alert
    , alert
    , aaKind
    , aaSeverity
    , aaId
    , aaType
    , aaMessage

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
    , uRLChannel
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

-- | URL referring to version 'v2.0' of the Ad Exchange Seller API.
adExchangeSellerURL :: BaseUrl
adExchangeSellerURL
  = BaseUrl Https
      "https://www.googleapis.com/adexchangeseller/v2.0/"
      443
