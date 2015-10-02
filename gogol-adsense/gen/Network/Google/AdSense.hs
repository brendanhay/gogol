{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdSense
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Gives AdSense publishers access to their inventory and the ability to
-- generate reports
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference>
module Network.Google.AdSense
    (
    -- * API
      AdSenseAPI
    , adSenseAPI
    , adSenseURL

    -- * Service Methods

    -- * REST Resources

    -- ** AdsenseAccountsAdClientsList
    , module Network.Google.Resource.AdSense.Accounts.AdClients.List

    -- ** AdsenseAccountsAdUnitsCustomChannelsList
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.CustomChannels.List

    -- ** AdsenseAccountsAdUnitsGet
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.Get

    -- ** AdsenseAccountsAdUnitsGetAdCode
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.GetAdCode

    -- ** AdsenseAccountsAdUnitsList
    , module Network.Google.Resource.AdSense.Accounts.AdUnits.List

    -- ** AdsenseAccountsAlertsDelete
    , module Network.Google.Resource.AdSense.Accounts.Alerts.Delete

    -- ** AdsenseAccountsAlertsList
    , module Network.Google.Resource.AdSense.Accounts.Alerts.List

    -- ** AdsenseAccountsCustomChannelsAdUnitsList
    , module Network.Google.Resource.AdSense.Accounts.CustomChannels.AdUnits.List

    -- ** AdsenseAccountsCustomChannelsGet
    , module Network.Google.Resource.AdSense.Accounts.CustomChannels.Get

    -- ** AdsenseAccountsCustomChannelsList
    , module Network.Google.Resource.AdSense.Accounts.CustomChannels.List

    -- ** AdsenseAccountsGet
    , module Network.Google.Resource.AdSense.Accounts.Get

    -- ** AdsenseAccountsList
    , module Network.Google.Resource.AdSense.Accounts.List

    -- ** AdsenseAccountsPaymentsList
    , module Network.Google.Resource.AdSense.Accounts.Payments.List

    -- ** AdsenseAccountsReportsGenerate
    , module Network.Google.Resource.AdSense.Accounts.Reports.Generate

    -- ** AdsenseAccountsReportsSavedGenerate
    , module Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate

    -- ** AdsenseAccountsReportsSavedList
    , module Network.Google.Resource.AdSense.Accounts.Reports.Saved.List

    -- ** AdsenseAccountsSavedadstylesGet
    , module Network.Google.Resource.AdSense.Accounts.Savedadstyles.Get

    -- ** AdsenseAccountsSavedadstylesList
    , module Network.Google.Resource.AdSense.Accounts.Savedadstyles.List

    -- ** AdsenseAccountsURLChannelsList
    , module Network.Google.Resource.AdSense.Accounts.URLChannels.List

    -- ** AdsenseAdClientsList
    , module Network.Google.Resource.AdSense.AdClients.List

    -- ** AdsenseAdUnitsCustomChannelsList
    , module Network.Google.Resource.AdSense.AdUnits.CustomChannels.List

    -- ** AdsenseAdUnitsGet
    , module Network.Google.Resource.AdSense.AdUnits.Get

    -- ** AdsenseAdUnitsGetAdCode
    , module Network.Google.Resource.AdSense.AdUnits.GetAdCode

    -- ** AdsenseAdUnitsList
    , module Network.Google.Resource.AdSense.AdUnits.List

    -- ** AdsenseAlertsDelete
    , module Network.Google.Resource.AdSense.Alerts.Delete

    -- ** AdsenseAlertsList
    , module Network.Google.Resource.AdSense.Alerts.List

    -- ** AdsenseCustomChannelsAdUnitsList
    , module Network.Google.Resource.AdSense.CustomChannels.AdUnits.List

    -- ** AdsenseCustomChannelsGet
    , module Network.Google.Resource.AdSense.CustomChannels.Get

    -- ** AdsenseCustomChannelsList
    , module Network.Google.Resource.AdSense.CustomChannels.List

    -- ** AdsenseMetadataDimensionsList
    , module Network.Google.Resource.AdSense.Metadata.Dimensions.List

    -- ** AdsenseMetadataMetricsList
    , module Network.Google.Resource.AdSense.Metadata.Metrics.List

    -- ** AdsensePaymentsList
    , module Network.Google.Resource.AdSense.Payments.List

    -- ** AdsenseReportsGenerate
    , module Network.Google.Resource.AdSense.Reports.Generate

    -- ** AdsenseReportsSavedGenerate
    , module Network.Google.Resource.AdSense.Reports.Saved.Generate

    -- ** AdsenseReportsSavedList
    , module Network.Google.Resource.AdSense.Reports.Saved.List

    -- ** AdsenseSavedadstylesGet
    , module Network.Google.Resource.AdSense.Savedadstyles.Get

    -- ** AdsenseSavedadstylesList
    , module Network.Google.Resource.AdSense.Savedadstyles.List

    -- ** AdsenseURLChannelsList
    , module Network.Google.Resource.AdSense.URLChannels.List

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

    -- ** Payment
    , Payment
    , payment
    , pPaymentAmountCurrencyCode
    , pKind
    , pPaymentDate
    , pId
    , pPaymentAmount

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

    -- ** AdUnit
    , AdUnit
    , adUnit
    , adStatus
    , adMobileContentAdsSettings
    , adKind
    , adFeedAdsSettings
    , adCustomStyle
    , adSavedStyleId
    , adName
    , adContentAdsSettings
    , adCode
    , adId

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

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** Account
    , Account
    , account
    , accKind
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascURL
    , ascBOrder
    , ascTitle
    , ascBackgRound

    -- ** AdClient
    , AdClient
    , adClient
    , addKind
    , addArcOptIn
    , addSupportsReporting
    , addId
    , addProductCode
    , addArcReviewMode

    -- ** AdUnitContentAdsSettingsBackupOption
    , AdUnitContentAdsSettingsBackupOption
    , adUnitContentAdsSettingsBackupOption
    , aucasboColor
    , aucasboURL
    , aucasboType

    -- ** SavedAdStyles
    , SavedAdStyles
    , savedAdStyles
    , sasEtag
    , sasNextPageToken
    , sasKind
    , sasItems

    -- ** CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- ** SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , savKind
    , savName
    , savAdStyle
    , savId

    -- ** AdsenseReportsGenerateResponseHeaders
    , AdsenseReportsGenerateResponseHeaders
    , adsenseReportsGenerateResponseHeaders
    , argrhName
    , argrhCurrency
    , argrhType

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
    , uRLChannel
    , urlcKind
    , urlcId
    , urlcURLPattern

    -- ** AdCode
    , AdCode
    , adCode
    , ac1Kind
    , ac1AdCode

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

    -- ** Payments
    , Payments
    , payments
    , payKind
    , payItems

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType
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
       :<|> AccountsUrlChannelsListResource
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
       :<|> UrlChannelsListResource
       :<|> CustomChannelsAdUnitsListResource
       :<|> CustomChannelsListResource
       :<|> CustomChannelsGetResource
       :<|> SavedadstylesListResource
       :<|> SavedadstylesGetResource
       :<|> MetadataMetricsListResource
       :<|> MetadataDimensionsListResource
       :<|> PaymentsListResource

adSenseAPI :: Proxy AdSenseAPI
adSenseAPI = Proxy
