{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchange.Seller.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchange.Seller.Types
    (

    -- * Account
      Account
    , account
    , accKind
    , accName
    , accId

    -- * Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- * AdClient
    , AdClient
    , adClient
    , acKind
    , acArcOptIn
    , acSupportsReporting
    , acId
    , acProductCode

    -- * AdClients
    , AdClients
    , adClients
    , acsEtag
    , acsNextPageToken
    , acsKind
    , acsItems

    -- * Alert
    , Alert
    , alert
    , aleKind
    , aleSeverity
    , aleId
    , aleType
    , aleMessage

    -- * Alerts
    , Alerts
    , alerts
    , aaKind
    , aaItems

    -- * CustomChannel
    , CustomChannel
    , customChannel
    , ccTargetingInfo
    , ccKind
    , ccName
    , ccCode
    , ccId

    -- * CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- * CustomChannels
    , CustomChannels
    , customChannels
    , cEtag
    , cNextPageToken
    , cKind
    , cItems

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * PreferredDeal
    , PreferredDeal
    , preferredDeal
    , pdAdvertiserName
    , pdCurrencyCode
    , pdStartTime
    , pdKind
    , pdBuyerNetworkName
    , pdEndTime
    , pdId
    , pdFixedCpm

    -- * PreferredDeals
    , PreferredDeals
    , preferredDeals
    , pKind
    , pItems

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

    -- * ReportItemHeaders
    , ReportItemHeaders
    , reportItemHeaders
    , rihName
    , rihCurrency
    , rihType

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

    -- * SavedReport
    , SavedReport
    , savedReport
    , sKind
    , sName
    , sId

    -- * SavedReports
    , SavedReports
    , savedReports
    , srEtag
    , srNextPageToken
    , srKind
    , srItems

    -- * UrlChannel
    , UrlChannel
    , urlChannel
    , ucKind
    , ucId
    , ucUrlPattern

    -- * UrlChannels
    , UrlChannels
    , urlChannels
    , urlcEtag
    , urlcNextPageToken
    , urlcKind
    , urlcItems
    ) where

import           Network.Google.AdExchange.Seller.Types.Product
import           Network.Google.AdExchange.Seller.Types.Sum
import           Network.Google.Prelude
