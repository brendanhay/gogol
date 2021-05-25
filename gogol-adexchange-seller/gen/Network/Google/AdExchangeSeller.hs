{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExchangeSeller
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses the inventory of Ad Exchange seller users and generates
-- reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference>
module Network.Google.AdExchangeSeller
    (
    -- * Service Configuration
      adExchangeSellerService

    -- * OAuth Scopes
    , adExchangeSellerReadOnlyScope
    , adExchangeSellerScope

    -- * API Declaration
    , AdExchangeSellerAPI

    -- * Resources

    -- ** adexchangeseller.accounts.adclients.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.AdClients.List

    -- ** adexchangeseller.accounts.alerts.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.Alerts.List

    -- ** adexchangeseller.accounts.customchannels.get
    , module Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.Get

    -- ** adexchangeseller.accounts.customchannels.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.List

    -- ** adexchangeseller.accounts.get
    , module Network.Google.Resource.AdExchangeSeller.Accounts.Get

    -- ** adexchangeseller.accounts.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.List

    -- ** adexchangeseller.accounts.metadata.dimensions.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Dimensions.List

    -- ** adexchangeseller.accounts.metadata.metrics.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Metrics.List

    -- ** adexchangeseller.accounts.preferreddeals.get
    , module Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.Get

    -- ** adexchangeseller.accounts.preferreddeals.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.List

    -- ** adexchangeseller.accounts.reports.generate
    , module Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Generate

    -- ** adexchangeseller.accounts.reports.saved.generate
    , module Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.Generate

    -- ** adexchangeseller.accounts.reports.saved.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List

    -- ** adexchangeseller.accounts.urlchannels.list
    , module Network.Google.Resource.AdExchangeSeller.Accounts.URLChannels.List

    -- * Types

    -- ** AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- ** ReportingMetadataEntry
    , ReportingMetadataEntry
    , reportingMetadataEntry
    , rmeKind
    , rmeRequiredMetrics
    , rmeCompatibleMetrics
    , rmeRequiredDimensions
    , rmeId
    , rmeCompatibleDimensions
    , rmeSupportedProducts

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- ** Alerts
    , Alerts
    , alerts
    , aleKind
    , aleItems

    -- ** SavedReports
    , SavedReports
    , savedReports
    , srEtag
    , srNextPageToken
    , srKind
    , srItems

    -- ** SavedReport
    , SavedReport
    , savedReport
    , sKind
    , sName
    , sId

    -- ** URLChannels
    , URLChannels
    , urlChannels
    , ucEtag
    , ucNextPageToken
    , ucKind
    , ucItems

    -- ** CustomChannels
    , CustomChannels
    , customChannels
    , ccEtag
    , ccNextPageToken
    , ccKind
    , ccItems

    -- ** Report
    , Report
    , report
    , rKind
    , rAverages
    , rWarnings
    , rRows
    , rTotals
    , rHeaders
    , rTotalMatchedRows

    -- ** Alert
    , Alert
    , alert
    , aaKind
    , aaSeverity
    , aaId
    , aaType
    , aaMessage

    -- ** Account
    , Account
    , account
    , accKind
    , accName
    , accId

    -- ** AdClient
    , AdClient
    , adClient
    , adKind
    , adArcOptIn
    , adSupportsReporting
    , adId
    , adProductCode

    -- ** ReportHeadersItem
    , ReportHeadersItem
    , reportHeadersItem
    , rhiName
    , rhiCurrency
    , rhiType

    -- ** CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- ** PreferredDeals
    , PreferredDeals
    , preferredDeals
    , pdKind
    , pdItems

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** CustomChannel
    , CustomChannel
    , customChannel
    , cTargetingInfo
    , cKind
    , cName
    , cCode
    , cId

    -- ** URLChannel
    , URLChannel
    , urlChannel
    , urlcKind
    , urlcId
    , urlcURLPattern

    -- ** PreferredDeal
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

import Network.Google.Prelude
import Network.Google.AdExchangeSeller.Types
import Network.Google.Resource.AdExchangeSeller.Accounts.AdClients.List
import Network.Google.Resource.AdExchangeSeller.Accounts.Alerts.List
import Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.Get
import Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.List
import Network.Google.Resource.AdExchangeSeller.Accounts.Get
import Network.Google.Resource.AdExchangeSeller.Accounts.List
import Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Dimensions.List
import Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Metrics.List
import Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.Get
import Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.List
import Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Generate
import Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.Generate
import Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List
import Network.Google.Resource.AdExchangeSeller.Accounts.URLChannels.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Ad Exchange Seller API service.
type AdExchangeSellerAPI =
     AccountsAdClientsListResource :<|>
       AccountsReportsSavedListResource
       :<|> AccountsReportsSavedGenerateResource
       :<|> AccountsReportsGenerateResource
       :<|> AccountsAlertsListResource
       :<|> AccountsURLChannelsListResource
       :<|> AccountsCustomChannelsListResource
       :<|> AccountsCustomChannelsGetResource
       :<|> AccountsPreferredDealsListResource
       :<|> AccountsPreferredDealsGetResource
       :<|> AccountsMetadataMetricsListResource
       :<|> AccountsMetadataDimensionsListResource
       :<|> AccountsListResource
       :<|> AccountsGetResource
