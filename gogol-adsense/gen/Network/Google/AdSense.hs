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

    -- ** AdsenseAccountsAdclientsList
    , module Network.Google.Resource.AdSense.Accounts.Adclients.List

    -- ** AdsenseAccountsAdunitsCustomchannelsList
    , module Network.Google.Resource.AdSense.Accounts.Adunits.Customchannels.List

    -- ** AdsenseAccountsAdunitsGet
    , module Network.Google.Resource.AdSense.Accounts.Adunits.Get

    -- ** AdsenseAccountsAdunitsGetAdCode
    , module Network.Google.Resource.AdSense.Accounts.Adunits.GetAdCode

    -- ** AdsenseAccountsAdunitsList
    , module Network.Google.Resource.AdSense.Accounts.Adunits.List

    -- ** AdsenseAccountsAlertsDelete
    , module Network.Google.Resource.AdSense.Accounts.Alerts.Delete

    -- ** AdsenseAccountsAlertsList
    , module Network.Google.Resource.AdSense.Accounts.Alerts.List

    -- ** AdsenseAccountsCustomchannelsAdunitsList
    , module Network.Google.Resource.AdSense.Accounts.Customchannels.Adunits.List

    -- ** AdsenseAccountsCustomchannelsGet
    , module Network.Google.Resource.AdSense.Accounts.Customchannels.Get

    -- ** AdsenseAccountsCustomchannelsList
    , module Network.Google.Resource.AdSense.Accounts.Customchannels.List

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

    -- ** AdsenseAccountsURLchannelsList
    , module Network.Google.Resource.AdSense.Accounts.URLchannels.List

    -- ** AdsenseAdclientsList
    , module Network.Google.Resource.AdSense.Adclients.List

    -- ** AdsenseAdunitsCustomchannelsList
    , module Network.Google.Resource.AdSense.Adunits.Customchannels.List

    -- ** AdsenseAdunitsGet
    , module Network.Google.Resource.AdSense.Adunits.Get

    -- ** AdsenseAdunitsGetAdCode
    , module Network.Google.Resource.AdSense.Adunits.GetAdCode

    -- ** AdsenseAdunitsList
    , module Network.Google.Resource.AdSense.Adunits.List

    -- ** AdsenseAlertsDelete
    , module Network.Google.Resource.AdSense.Alerts.Delete

    -- ** AdsenseAlertsList
    , module Network.Google.Resource.AdSense.Alerts.List

    -- ** AdsenseCustomchannelsAdunitsList
    , module Network.Google.Resource.AdSense.Customchannels.Adunits.List

    -- ** AdsenseCustomchannelsGet
    , module Network.Google.Resource.AdSense.Customchannels.Get

    -- ** AdsenseCustomchannelsList
    , module Network.Google.Resource.AdSense.Customchannels.List

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

    -- ** AdsenseURLchannelsList
    , module Network.Google.Resource.AdSense.URLchannels.List

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
    , ascUrl
    , ascBorder
    , ascTitle
    , ascBackground

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
    , aucasboUrl
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
    , urlcUrlPattern

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

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AdSense.Accounts.Adclients.List
import           Network.Google.Resource.AdSense.Accounts.Adunits.Customchannels.List
import           Network.Google.Resource.AdSense.Accounts.Adunits.Get
import           Network.Google.Resource.AdSense.Accounts.Adunits.GetAdCode
import           Network.Google.Resource.AdSense.Accounts.Adunits.List
import           Network.Google.Resource.AdSense.Accounts.Alerts.Delete
import           Network.Google.Resource.AdSense.Accounts.Alerts.List
import           Network.Google.Resource.AdSense.Accounts.Customchannels.Adunits.List
import           Network.Google.Resource.AdSense.Accounts.Customchannels.Get
import           Network.Google.Resource.AdSense.Accounts.Customchannels.List
import           Network.Google.Resource.AdSense.Accounts.Get
import           Network.Google.Resource.AdSense.Accounts.List
import           Network.Google.Resource.AdSense.Accounts.Payments.List
import           Network.Google.Resource.AdSense.Accounts.Reports.Generate
import           Network.Google.Resource.AdSense.Accounts.Reports.Saved.Generate
import           Network.Google.Resource.AdSense.Accounts.Reports.Saved.List
import           Network.Google.Resource.AdSense.Accounts.Savedadstyles.Get
import           Network.Google.Resource.AdSense.Accounts.Savedadstyles.List
import           Network.Google.Resource.AdSense.Accounts.URLchannels.List
import           Network.Google.Resource.AdSense.Adclients.List
import           Network.Google.Resource.AdSense.Adunits.Customchannels.List
import           Network.Google.Resource.AdSense.Adunits.Get
import           Network.Google.Resource.AdSense.Adunits.GetAdCode
import           Network.Google.Resource.AdSense.Adunits.List
import           Network.Google.Resource.AdSense.Alerts.Delete
import           Network.Google.Resource.AdSense.Alerts.List
import           Network.Google.Resource.AdSense.Customchannels.Adunits.List
import           Network.Google.Resource.AdSense.Customchannels.Get
import           Network.Google.Resource.AdSense.Customchannels.List
import           Network.Google.Resource.AdSense.Metadata.Dimensions.List
import           Network.Google.Resource.AdSense.Metadata.Metrics.List
import           Network.Google.Resource.AdSense.Payments.List
import           Network.Google.Resource.AdSense.Reports.Generate
import           Network.Google.Resource.AdSense.Reports.Saved.Generate
import           Network.Google.Resource.AdSense.Reports.Saved.List
import           Network.Google.Resource.AdSense.Savedadstyles.Get
import           Network.Google.Resource.AdSense.Savedadstyles.List
import           Network.Google.Resource.AdSense.URLchannels.List

{- $resources
TODO
-}

type AdSenseAPI =
     AdclientsListResource :<|>
       AccountsAdclientsListResource
       :<|> AccountsReportsSavedListResource
       :<|> AccountsReportsSavedGenerateResource
       :<|> AccountsReportsGenerateResource
       :<|> AccountsAlertsListResource
       :<|> AccountsAlertsDeleteResource
       :<|> AccountsAdunitsCustomchannelsListResource
       :<|> AccountsAdunitsListResource
       :<|> AccountsAdunitsGetResource
       :<|> AccountsAdunitsGetAdCodeResource
       :<|> AccountsUrlchannelsListResource
       :<|> AccountsCustomchannelsAdunitsListResource
       :<|> AccountsCustomchannelsListResource
       :<|> AccountsCustomchannelsGetResource
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
       :<|> AdunitsCustomchannelsListResource
       :<|> AdunitsListResource
       :<|> AdunitsGetResource
       :<|> AdunitsGetAdCodeResource
       :<|> UrlchannelsListResource
       :<|> CustomchannelsAdunitsListResource
       :<|> CustomchannelsListResource
       :<|> CustomchannelsGetResource
       :<|> SavedadstylesListResource
       :<|> SavedadstylesGetResource
       :<|> MetadataMetricsListResource
       :<|> MetadataDimensionsListResource
       :<|> PaymentsListResource

adSenseAPI :: Proxy AdSenseAPI
adSenseAPI = Proxy
