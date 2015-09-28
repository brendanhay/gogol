{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExchangeSeller
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Gives Ad Exchange seller users access to their inventory and the ability
-- to generate reports
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference>
module Network.Google.AdExchangeSeller
    (
    -- * REST Resources

    -- ** Ad Exchange Seller API
      AdExchangeSeller
    , adExchangeSeller
    , adExchangeSellerURL

    -- ** adexchangeseller.accounts.adclients.list
    , module Network.Google.API.AdExchangeSeller.Accounts.Adclients.List

    -- ** adexchangeseller.accounts.alerts.list
    , module Network.Google.API.AdExchangeSeller.Accounts.Alerts.List

    -- ** adexchangeseller.accounts.customchannels.get
    , module Network.Google.API.AdExchangeSeller.Accounts.Customchannels.Get

    -- ** adexchangeseller.accounts.customchannels.list
    , module Network.Google.API.AdExchangeSeller.Accounts.Customchannels.List

    -- ** adexchangeseller.accounts.metadata.dimensions.list
    , module Network.Google.API.AdExchangeSeller.Accounts.Metadata.Dimensions.List

    -- ** adexchangeseller.accounts.metadata.metrics.list
    , module Network.Google.API.AdExchangeSeller.Accounts.Metadata.Metrics.List

    -- ** adexchangeseller.accounts.preferreddeals.get
    , module Network.Google.API.AdExchangeSeller.Accounts.Preferreddeals.Get

    -- ** adexchangeseller.accounts.preferreddeals.list
    , module Network.Google.API.AdExchangeSeller.Accounts.Preferreddeals.List

    -- ** adexchangeseller.accounts.reports.saved.generate
    , module Network.Google.API.AdExchangeSeller.Accounts.Reports.Saved.Generate

    -- ** adexchangeseller.accounts.reports.saved.list
    , module Network.Google.API.AdExchangeSeller.Accounts.Reports.Saved.List

    -- ** adexchangeseller.accounts.urlchannels.list
    , module Network.Google.API.AdExchangeSeller.Accounts.URLchannels.List

    -- * Types

    -- ** CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- ** ReportItemHeaders
    , ReportItemHeaders
    , reportItemHeaders
    , rihName
    , rihCurrency
    , rihType

    -- ** AdClient
    , AdClient
    , adClient
    , acKind
    , acArcOptIn
    , acSupportsReporting
    , acId
    , acProductCode

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- ** Alt
    , Alt (..)

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** CustomChannel
    , CustomChannel
    , customChannel
    , ccTargetingInfo
    , ccKind
    , ccName
    , ccCode
    , ccId

    -- ** UrlChannel
    , UrlChannel
    , urlChannel
    , ucKind
    , ucId
    , ucUrlPattern

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
    , aleKind
    , aleSeverity
    , aleId
    , aleType
    , aleMessage

    -- ** PreferredDeal
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

    -- ** AdClients
    , AdClients
    , adClients
    , acsEtag
    , acsNextPageToken
    , acsKind
    , acsItems

    -- ** PreferredDeals
    , PreferredDeals
    , preferredDeals
    , pKind
    , pItems

    -- ** Alerts
    , Alerts
    , alerts
    , aaKind
    , aaItems

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

    -- ** UrlChannels
    , UrlChannels
    , urlChannels
    , urlcEtag
    , urlcNextPageToken
    , urlcKind
    , urlcItems

    -- ** CustomChannels
    , CustomChannels
    , customChannels
    , cEtag
    , cNextPageToken
    , cKind
    , cItems

    -- ** Account
    , Account
    , account
    , accKind
    , accName
    , accId
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.API.AdExchangeSeller.Accounts.Adclients.List
import           Network.Google.API.AdExchangeSeller.Accounts.Alerts.List
import           Network.Google.API.AdExchangeSeller.Accounts.Customchannels.Get
import           Network.Google.API.AdExchangeSeller.Accounts.Customchannels.List
import           Network.Google.API.AdExchangeSeller.Accounts.Metadata.Dimensions.List
import           Network.Google.API.AdExchangeSeller.Accounts.Metadata.Metrics.List
import           Network.Google.API.AdExchangeSeller.Accounts.Preferreddeals.Get
import           Network.Google.API.AdExchangeSeller.Accounts.Preferreddeals.List
import           Network.Google.API.AdExchangeSeller.Accounts.Reports.Saved.Generate
import           Network.Google.API.AdExchangeSeller.Accounts.Reports.Saved.List
import           Network.Google.API.AdExchangeSeller.Accounts.URLchannels.List
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdExchangeSeller =
     AccountsMetadataMetricsListAPI :<|>
       AccountsCustomchannelsGetAPI
       :<|> AccountsAdclientsListAPI
       :<|> AccountsPreferreddealsGetAPI
       :<|> AccountsMetadataDimensionsListAPI
       :<|> AccountsReportsSavedGenerateAPI
       :<|> AccountsReportsSavedListAPI
       :<|> AccountsCustomchannelsListAPI
       :<|> AccountsPreferreddealsListAPI
       :<|> AccountsURLchannelsListAPI
       :<|> AccountsAlertsListAPI

adExchangeSeller :: Proxy AdExchangeSeller
adExchangeSeller = Proxy
