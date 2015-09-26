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
    -- * Resources
      AdExchangeSeller
    , AccountsAPI
    , AdclientsAPI
    , AdclientsList
    , ReportsAPI
    , SavedAPI
    , SavedList
    , SavedGenerate
    , AlertsAPI
    , AlertsList
    , UrlchannelsAPI
    , UrlchannelsList
    , CustomchannelsAPI
    , CustomchannelsList
    , CustomchannelsGet
    , PreferreddealsAPI
    , PreferreddealsList
    , PreferreddealsGet
    , MetadataAPI
    , MetricsAPI
    , MetricsList
    , DimensionsAPI
    , DimensionsList

    -- * Types

    -- ** Account
    , Account
    , account
    , accKind
    , accName
    , accId

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- ** AdClient
    , AdClient
    , adClient
    , acKind
    , acArcOptIn
    , acSupportsReporting
    , acId
    , acProductCode

    -- ** AdClients
    , AdClients
    , adClients
    , acsEtag
    , acsNextPageToken
    , acsKind
    , acsItems

    -- ** Alert
    , Alert
    , alert
    , aleKind
    , aleSeverity
    , aleId
    , aleType
    , aleMessage

    -- ** Alerts
    , Alerts
    , alerts
    , aaKind
    , aaItems

    -- ** CustomChannel
    , CustomChannel
    , customChannel
    , ccTargetingInfo
    , ccKind
    , ccName
    , ccCode
    , ccId

    -- ** CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- ** CustomChannels
    , CustomChannels
    , customChannels
    , cEtag
    , cNextPageToken
    , cKind
    , cItems

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

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

    -- ** PreferredDeals
    , PreferredDeals
    , preferredDeals
    , pKind
    , pItems

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

    -- ** ReportItemHeaders
    , ReportItemHeaders
    , reportItemHeaders
    , rihName
    , rihCurrency
    , rihType

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

    -- ** SavedReport
    , SavedReport
    , savedReport
    , sKind
    , sName
    , sId

    -- ** SavedReports
    , SavedReports
    , savedReports
    , srEtag
    , srNextPageToken
    , srKind
    , srItems

    -- ** UrlChannel
    , UrlChannel
    , urlChannel
    , ucKind
    , ucId
    , ucUrlPattern

    -- ** UrlChannels
    , UrlChannels
    , urlChannels
    , urlcEtag
    , urlcNextPageToken
    , urlcKind
    , urlcItems
    ) where

import           Network.Google.AdExchangeSeller.Types

{- $resources
TODO
-}

type AdExchangeSeller = AccountsAPI

type AccountsAPI =
     ReportsAPI :<|>
       AlertsAPI :<|>
         UrlchannelsAPI :<|>
           CustomchannelsAPI :<|>
             PreferreddealsAPI :<|> MetadataAPI :<|> AdclientsAPI

type AdclientsAPI = AdclientsList

-- | List all ad clients in this Ad Exchange account.
type AdclientsList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReportsAPI = SavedAPI

type SavedAPI = SavedGenerate :<|> SavedList

-- | List all saved reports in this Ad Exchange account.
type SavedList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "reports"
       :> "saved"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Generate an Ad Exchange report based on the saved report ID sent in the
-- query parameters.
type SavedGenerate =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "reports"
       :> Capture "savedReportId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Int32
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AlertsAPI = AlertsList

-- | List the alerts for this Ad Exchange account.
type AlertsList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "alerts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UrlchannelsAPI = UrlchannelsList

-- | List all URL channels in the specified ad client for this Ad Exchange
-- account.
type UrlchannelsList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "urlchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomchannelsAPI =
     CustomchannelsGet :<|> CustomchannelsList

-- | List all custom channels in the specified ad client for this Ad Exchange
-- account.
type CustomchannelsList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "customchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get the specified custom channel from the specified ad client.
type CustomchannelsGet =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "customchannels"
       :> Capture "customChannelId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PreferreddealsAPI =
     PreferreddealsGet :<|> PreferreddealsList

-- | List the preferred deals for this Ad Exchange account.
type PreferreddealsList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "preferreddeals"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get information about the selected Ad Exchange Preferred Deal.
type PreferreddealsGet =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "preferreddeals"
       :> Capture "dealId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MetadataAPI = DimensionsAPI :<|> MetricsAPI

type MetricsAPI = MetricsList

-- | List the metadata for the metrics available to this AdExchange account.
type MetricsList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "metadata"
       :> "metrics"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DimensionsAPI = DimensionsList

-- | List the metadata for the dimensions available to this AdExchange
-- account.
type DimensionsList =
     "adexchangeseller" :> "v2.0" :> "accounts" :>
       Capture "accountId" Text
       :> "metadata"
       :> "dimensions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
