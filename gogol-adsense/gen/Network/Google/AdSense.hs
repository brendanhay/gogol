{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdSense
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses AdSense publishers\' inventory and generates performance
-- reports.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference>
module Network.Google.AdSense
    (
    -- * Service Configuration
      adSenseService

    -- * OAuth Scopes
    , authAdsenseReadonlyScope
    , authAdsenseScope

    -- * API Declaration
    , AdSenseAPI

    -- * Resources

    -- ** adsense.accounts.adclients.list
    , module Network.Google.Resource.AdSense.Accounts.AdClients.List

    -- ** adsense.accounts.adunits.customchannels.list
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.CustomChannels.List

    -- ** adsense.accounts.adunits.get
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.Get

    -- ** adsense.accounts.adunits.getAdCode
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.GetAdCode

    -- ** adsense.accounts.adunits.list
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.List

    -- ** adsense.accounts.alerts.delete
    , module Network.Google.Resource.AdSense.Accounts.Alerts.Delete

    -- ** adsense.accounts.alerts.list
    , module Network.Google.Resource.AdSense.Accounts.Alerts.List

    -- ** adsense.accounts.customchannels.adunits.list
    , module Network.Google.Resource.AdSense.Accounts.CustomChannels.AdUnits.List

    -- ** adsense.accounts.customchannels.get
    , module Network.Google.Resource.AdSense.Accounts.CustomChannels.Get

    -- ** adsense.accounts.customchannels.list
    , module Network.Google.Resource.AdSense.Accounts.CustomChannels.List

    -- ** adsense.accounts.get
    , module Network.Google.Resource.AdSense.Accounts.Get

    -- ** adsense.accounts.list
    , module Network.Google.Resource.AdSense.Accounts.List

    -- ** adsense.accounts.payments.list
    , module Network.Google.Resource.AdSense.Accounts.Payments.List

    -- ** adsense.accounts.reports.generate
    , module Network.Google.Resource.AdSense.Accounts.Reports.Generate

    -- ** adsense.accounts.reports.saved.generate
    , module Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate

    -- ** adsense.accounts.reports.saved.list
    , module Network.Google.Resource.AdSense.Accounts.Reports.Saved.List

    -- ** adsense.accounts.savedadstyles.get
    , module Network.Google.Resource.AdSense.Accounts.Savedadstyles.Get

    -- ** adsense.accounts.savedadstyles.list
    , module Network.Google.Resource.AdSense.Accounts.Savedadstyles.List

    -- ** adsense.accounts.urlchannels.list
    , module Network.Google.Resource.AdSense.Accounts.URLChannels.List

    -- ** adsense.adclients.list
    , module Network.Google.Resource.AdSense.AdClients.List

    -- ** adsense.adunits.customchannels.list
    , module Network.Google.Resource.AdSense.AdUnits.CustomChannels.List

    -- ** adsense.adunits.get
    , module Network.Google.Resource.AdSense.AdUnits.Get

    -- ** adsense.adunits.getAdCode
    , module Network.Google.Resource.AdSense.AdUnits.GetAdCode

    -- ** adsense.adunits.list
    , module Network.Google.Resource.AdSense.AdUnits.List

    -- ** adsense.alerts.delete
    , module Network.Google.Resource.AdSense.Alerts.Delete

    -- ** adsense.alerts.list
    , module Network.Google.Resource.AdSense.Alerts.List

    -- ** adsense.customchannels.adunits.list
    , module Network.Google.Resource.AdSense.CustomChannels.AdUnits.List

    -- ** adsense.customchannels.get
    , module Network.Google.Resource.AdSense.CustomChannels.Get

    -- ** adsense.customchannels.list
    , module Network.Google.Resource.AdSense.CustomChannels.List

    -- ** adsense.metadata.dimensions.list
    , module Network.Google.Resource.AdSense.Metadata.Dimensions.List

    -- ** adsense.metadata.metrics.list
    , module Network.Google.Resource.AdSense.Metadata.Metrics.List

    -- ** adsense.payments.list
    , module Network.Google.Resource.AdSense.Payments.List

    -- ** adsense.reports.generate
    , module Network.Google.Resource.AdSense.Reports.Generate

    -- ** adsense.reports.saved.generate
    , module Network.Google.Resource.AdSense.Reports.Saved.Generate

    -- ** adsense.reports.saved.list
    , module Network.Google.Resource.AdSense.Reports.Saved.List

    -- ** adsense.savedadstyles.get
    , module Network.Google.Resource.AdSense.Savedadstyles.Get

    -- ** adsense.savedadstyles.list
    , module Network.Google.Resource.AdSense.Savedadstyles.List

    -- ** adsense.urlchannels.list
    , module Network.Google.Resource.AdSense.URLChannels.List

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

    -- ** AdsenseReportsGenerateResponseHeadersItem
    , AdsenseReportsGenerateResponseHeadersItem
    , adsenseReportsGenerateResponseHeadersItem
    , argrhiName
    , argrhiCurrency
    , argrhiType

    -- ** Payment
    , Payment
    , payment
    , pPaymentAmountCurrencyCode
    , pKind
    , pPaymentDate
    , pId
    , pPaymentAmount

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

    -- ** AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

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

    -- ** AdUnit
    , AdUnit
    , adUnit
    , auuStatus
    , auuMobileContentAdsSettings
    , auuKind
    , auuFeedAdsSettings
    , auuCustomStyle
    , auuSavedStyleId
    , auuName
    , auuContentAdsSettings
    , auuCode
    , auuId

    -- ** Alert
    , Alert
    , alert
    , aaIsDismissible
    , aaKind
    , aaSeverity
    , aaId
    , aaType
    , aaMessage

    -- ** AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- ** Account
    , Account
    , account
    , accKind
    , accCreationTime
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** SavedAdStyles
    , SavedAdStyles
    , savedAdStyles
    , sasEtag
    , sasNextPageToken
    , sasKind
    , sasItems

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascURL
    , ascBOrder
    , ascTitle
    , ascBackgRound

    -- ** AdUnitContentAdsSettingsBackupOption
    , AdUnitContentAdsSettingsBackupOption
    , adUnitContentAdsSettingsBackupOption
    , aucasboColor
    , aucasboURL
    , aucasboType

    -- ** AdClient
    , AdClient
    , adClient
    , adKind
    , adArcOptIn
    , adSupportsReporting
    , adId
    , adProductCode

    -- ** SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , savKind
    , savName
    , savAdStyle
    , savId

    -- ** CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- ** AdStyle
    , AdStyle
    , adStyle
    , asCorners
    , asKind
    , asFont
    , asColors

    -- ** AdUnitFeedAdsSettings
    , AdUnitFeedAdsSettings
    , adUnitFeedAdsSettings
    , aufasFrequency
    , aufasAdPosition
    , aufasType
    , aufasMinimumWordCount

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

    -- ** AdCode
    , AdCode
    , adCode
    , addKind
    , addAdCode

    -- ** AdsenseReportsGenerateResponse
    , AdsenseReportsGenerateResponse
    , adsenseReportsGenerateResponse
    , argrKind
    , argrAverages
    , argrEndDate
    , argrWarnings
    , argrRows
    , argrTotals
    , argrStartDate
    , argrHeaders
    , argrTotalMatchedRows

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType

    -- ** Payments
    , Payments
    , payments
    , payKind
    , payItems
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AdSense.Accounts.AdClients.List
import           Network.Google.Resource.AdSense.Accounts.AdUnits.CustomChannels.List
import           Network.Google.Resource.AdSense.Accounts.AdUnits.Get
import           Network.Google.Resource.AdSense.Accounts.AdUnits.GetAdCode
import           Network.Google.Resource.AdSense.Accounts.AdUnits.List
import           Network.Google.Resource.AdSense.Accounts.Alerts.Delete
import           Network.Google.Resource.AdSense.Accounts.Alerts.List
import           Network.Google.Resource.AdSense.Accounts.CustomChannels.AdUnits.List
import           Network.Google.Resource.AdSense.Accounts.CustomChannels.Get
import           Network.Google.Resource.AdSense.Accounts.CustomChannels.List
import           Network.Google.Resource.AdSense.Accounts.Get
import           Network.Google.Resource.AdSense.Accounts.List
import           Network.Google.Resource.AdSense.Accounts.Payments.List
import           Network.Google.Resource.AdSense.Accounts.Reports.Generate
import           Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate
import           Network.Google.Resource.AdSense.Accounts.Reports.Saved.List
import           Network.Google.Resource.AdSense.Accounts.Savedadstyles.Get
import           Network.Google.Resource.AdSense.Accounts.Savedadstyles.List
import           Network.Google.Resource.AdSense.Accounts.URLChannels.List
import           Network.Google.Resource.AdSense.AdClients.List
import           Network.Google.Resource.AdSense.AdUnits.CustomChannels.List
import           Network.Google.Resource.AdSense.AdUnits.Get
import           Network.Google.Resource.AdSense.AdUnits.GetAdCode
import           Network.Google.Resource.AdSense.AdUnits.List
import           Network.Google.Resource.AdSense.Alerts.Delete
import           Network.Google.Resource.AdSense.Alerts.List
import           Network.Google.Resource.AdSense.CustomChannels.AdUnits.List
import           Network.Google.Resource.AdSense.CustomChannels.Get
import           Network.Google.Resource.AdSense.CustomChannels.List
import           Network.Google.Resource.AdSense.Metadata.Dimensions.List
import           Network.Google.Resource.AdSense.Metadata.Metrics.List
import           Network.Google.Resource.AdSense.Payments.List
import           Network.Google.Resource.AdSense.Reports.Generate
import           Network.Google.Resource.AdSense.Reports.Saved.Generate
import           Network.Google.Resource.AdSense.Reports.Saved.List
import           Network.Google.Resource.AdSense.Savedadstyles.Get
import           Network.Google.Resource.AdSense.Savedadstyles.List
import           Network.Google.Resource.AdSense.URLChannels.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the AdSense Management API service.
type AdSenseAPI =
     AdClientsListResource :<|>
       AccountsAdClientsListResource
       :<|> AccountsReportsSavedListResource
       :<|> AccountsReportsSavedGenerateResource
       :<|> AccountsReportsGenerateResource
       :<|> AccountsAlertsListResource
       :<|> AccountsAlertsDeleteResource
       :<|> AccountsAdUnitsCustomChannelsListResource
       :<|> AccountsAdUnitsListResource
       :<|> AccountsAdUnitsGetResource
       :<|> AccountsAdUnitsGetAdCodeResource
       :<|> AccountsURLChannelsListResource
       :<|> AccountsCustomChannelsAdUnitsListResource
       :<|> AccountsCustomChannelsListResource
       :<|> AccountsCustomChannelsGetResource
       :<|> AccountsSavedadstylesListResource
       :<|> AccountsSavedadstylesGetResource
       :<|> AccountsPaymentsListResource
       :<|> AccountsListResource
       :<|> AccountsGetResource
       :<|> ReportsSavedListResource
       :<|> ReportsSavedGenerateResource
       :<|> ReportsGenerateResource
       :<|> AlertsListResource
       :<|> AlertsDeleteResource
       :<|> AdUnitsCustomChannelsListResource
       :<|> AdUnitsListResource
       :<|> AdUnitsGetResource
       :<|> AdUnitsGetAdCodeResource
       :<|> URLChannelsListResource
       :<|> CustomChannelsAdUnitsListResource
       :<|> CustomChannelsListResource
       :<|> CustomChannelsGetResource
       :<|> SavedadstylesListResource
       :<|> SavedadstylesGetResource
       :<|> MetadataMetricsListResource
       :<|> MetadataDimensionsListResource
       :<|> PaymentsListResource
