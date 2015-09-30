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
    -- * API
      AdExchangeSellerAPI
    , adExchangeSellerAPI
    , adExchangeSellerURL

    -- * Service Methods

    -- * REST Resources

    -- ** AdexchangesellerAccountsAdclientsList
    , module AdExchangeSeller.Accounts.Adclients.List

    -- ** AdexchangesellerAccountsAlertsList
    , module AdExchangeSeller.Accounts.Alerts.List

    -- ** AdexchangesellerAccountsCustomchannelsGet
    , module AdExchangeSeller.Accounts.Customchannels.Get

    -- ** AdexchangesellerAccountsCustomchannelsList
    , module AdExchangeSeller.Accounts.Customchannels.List

    -- ** AdexchangesellerAccountsGet
    , module AdExchangeSeller.Accounts.Get

    -- ** AdexchangesellerAccountsList
    , module AdExchangeSeller.Accounts.List

    -- ** AdexchangesellerAccountsMetadataDimensionsList
    , module AdExchangeSeller.Accounts.Metadata.Dimensions.List

    -- ** AdexchangesellerAccountsMetadataMetricsList
    , module AdExchangeSeller.Accounts.Metadata.Metrics.List

    -- ** AdexchangesellerAccountsPreferreddealsGet
    , module AdExchangeSeller.Accounts.Preferreddeals.Get

    -- ** AdexchangesellerAccountsPreferreddealsList
    , module AdExchangeSeller.Accounts.Preferreddeals.List

    -- ** AdexchangesellerAccountsReportsGenerate
    , module AdExchangeSeller.Accounts.Reports.Generate

    -- ** AdexchangesellerAccountsReportsSavedGenerate
    , module AdExchangeSeller.Accounts.Reports.Saved.Generate

    -- ** AdexchangesellerAccountsReportsSavedList
    , module AdExchangeSeller.Accounts.Reports.Saved.List

    -- ** AdexchangesellerAccountsURLchannelsList
    , module AdExchangeSeller.Accounts.URLchannels.List

    -- * Types

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
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

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
    , uRLChannels
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

    -- ** Alert
    , Alert
    , alert
    , aaKind
    , aaSeverity
    , aaId
    , aaType
    , aaMessage

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
    , uRLChannel
    , urlcKind
    , urlcId
    , urlcUrlPattern

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

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AdExchangeSeller.Accounts.Adclients.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.Alerts.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.Customchannels.Get
import           Network.Google.Resource.AdExchangeSeller.Accounts.Customchannels.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.Get
import           Network.Google.Resource.AdExchangeSeller.Accounts.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Dimensions.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Metrics.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.Preferreddeals.Get
import           Network.Google.Resource.AdExchangeSeller.Accounts.Preferreddeals.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Generate
import           Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.Generate
import           Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List
import           Network.Google.Resource.AdExchangeSeller.Accounts.URLchannels.List

{- $resources
TODO
-}

type AdExchangeSellerAPI = Accounts

adExchangeSellerAPI :: Proxy AdExchangeSellerAPI
adExchangeSellerAPI = Proxy
