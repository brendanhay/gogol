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
    -- * REST Resources

    -- ** AdSense Management API
      AdSense
    , adSense
    , adSenseURL

    -- ** adsense.accounts.adclients.list
    , module Network.Google.API.AdSense.Accounts.Adclients.List

    -- ** adsense.accounts.adunits.customchannels.list
    , module Network.Google.API.AdSense.Accounts.Adunits.Customchannels.List

    -- ** adsense.accounts.alerts.delete
    , module Network.Google.API.AdSense.Accounts.Alerts.Delete

    -- ** adsense.accounts.alerts.list
    , module Network.Google.API.AdSense.Accounts.Alerts.List

    -- ** adsense.accounts.customchannels.adunits.list
    , module Network.Google.API.AdSense.Accounts.Customchannels.Adunits.List

    -- ** adsense.accounts.payments.list
    , module Network.Google.API.AdSense.Accounts.Payments.List

    -- ** adsense.accounts.reports.saved.generate
    , module Network.Google.API.AdSense.Accounts.Reports.Saved.Generate

    -- ** adsense.accounts.reports.saved.list
    , module Network.Google.API.AdSense.Accounts.Reports.Saved.List

    -- ** adsense.accounts.savedadstyles.get
    , module Network.Google.API.AdSense.Accounts.Savedadstyles.Get

    -- ** adsense.accounts.savedadstyles.list
    , module Network.Google.API.AdSense.Accounts.Savedadstyles.List

    -- ** adsense.accounts.urlchannels.list
    , module Network.Google.API.AdSense.Accounts.URLchannels.List

    -- ** adsense.adclients.list
    , module Network.Google.API.AdSense.Adclients.List

    -- ** adsense.adunits.customchannels.list
    , module Network.Google.API.AdSense.Adunits.Customchannels.List

    -- ** adsense.alerts.delete
    , module Network.Google.API.AdSense.Alerts.Delete

    -- ** adsense.alerts.list
    , module Network.Google.API.AdSense.Alerts.List

    -- ** adsense.customchannels.adunits.list
    , module Network.Google.API.AdSense.Customchannels.Adunits.List

    -- ** adsense.metadata.dimensions.list
    , module Network.Google.API.AdSense.Metadata.Dimensions.List

    -- ** adsense.metadata.metrics.list
    , module Network.Google.API.AdSense.Metadata.Metrics.List

    -- ** adsense.payments.list
    , module Network.Google.API.AdSense.Payments.List

    -- ** adsense.reports.saved.generate
    , module Network.Google.API.AdSense.Reports.Saved.Generate

    -- ** adsense.reports.saved.list
    , module Network.Google.API.AdSense.Reports.Saved.List

    -- ** adsense.savedadstyles.get
    , module Network.Google.API.AdSense.Savedadstyles.Get

    -- ** adsense.savedadstyles.list
    , module Network.Google.API.AdSense.Savedadstyles.List

    -- ** adsense.urlchannels.list
    , module Network.Google.API.AdSense.URLchannels.List

    -- * Types

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

    -- ** AdClient
    , AdClient
    , adClient
    , acKind
    , acArcOptIn
    , acSupportsReporting
    , acId
    , acProductCode
    , acArcReviewMode

    -- ** SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , sKind
    , sName
    , sAdStyle
    , sId

    -- ** AdUnitBackupOptionContentAdsSettings
    , AdUnitBackupOptionContentAdsSettings
    , adUnitBackupOptionContentAdsSettings
    , aubocasColor
    , aubocasUrl
    , aubocasType

    -- ** Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** Payment
    , Payment
    , payment
    , pPaymentAmountCurrencyCode
    , pKind
    , pPaymentDate
    , pId
    , pPaymentAmount

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

    -- ** AdCode
    , AdCode
    , adCode
    , adKind
    , adAdCode

    -- ** UrlChannel
    , UrlChannel
    , urlChannel
    , ucKind
    , ucId
    , ucUrlPattern

    -- ** Alert
    , Alert
    , alert
    , aleIsDismissible
    , aleKind
    , aleSeverity
    , aleId
    , aleType
    , aleMessage

    -- ** Payments
    , Payments
    , payments
    , payKind
    , payItems

    -- ** AdsenseReportsGenerateResponseItemHeaders
    , AdsenseReportsGenerateResponseItemHeaders
    , adsenseReportsGenerateResponseItemHeaders
    , argrihName
    , argrihCurrency
    , argrihType

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

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascUrl
    , ascBorder
    , ascTitle
    , ascBackground

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType

    -- ** AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- ** AdStyle
    , AdStyle
    , adStyle
    , asCorners
    , asKind
    , asFont
    , asColors

    -- ** Alerts
    , Alerts
    , alerts
    , aaKind
    , aaItems

    -- ** AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

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
    , savKind
    , savName
    , savId

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

    -- ** Account
    , Account
    , account
    , accKind
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

    -- ** AdUnitFeedAdsSettings
    , AdUnitFeedAdsSettings
    , adUnitFeedAdsSettings
    , aufasFrequency
    , aufasAdPosition
    , aufasType
    , aufasMinimumWordCount
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.API.AdSense.Accounts.Adclients.List
import           Network.Google.API.AdSense.Accounts.Adunits.Customchannels.List
import           Network.Google.API.AdSense.Accounts.Alerts.Delete
import           Network.Google.API.AdSense.Accounts.Alerts.List
import           Network.Google.API.AdSense.Accounts.Customchannels.Adunits.List
import           Network.Google.API.AdSense.Accounts.Payments.List
import           Network.Google.API.AdSense.Accounts.Reports.Saved.Generate
import           Network.Google.API.AdSense.Accounts.Reports.Saved.List
import           Network.Google.API.AdSense.Accounts.Savedadstyles.Get
import           Network.Google.API.AdSense.Accounts.Savedadstyles.List
import           Network.Google.API.AdSense.Accounts.URLchannels.List
import           Network.Google.API.AdSense.Adclients.List
import           Network.Google.API.AdSense.Adunits.Customchannels.List
import           Network.Google.API.AdSense.Alerts.Delete
import           Network.Google.API.AdSense.Alerts.List
import           Network.Google.API.AdSense.Customchannels.Adunits.List
import           Network.Google.API.AdSense.Metadata.Dimensions.List
import           Network.Google.API.AdSense.Metadata.Metrics.List
import           Network.Google.API.AdSense.Payments.List
import           Network.Google.API.AdSense.Reports.Saved.Generate
import           Network.Google.API.AdSense.Reports.Saved.List
import           Network.Google.API.AdSense.Savedadstyles.Get
import           Network.Google.API.AdSense.Savedadstyles.List
import           Network.Google.API.AdSense.URLchannels.List
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdSense =
     AccountsSavedadstylesListAPI :<|> SavedadstylesGetAPI
       :<|> CustomchannelsAdunitsListAPI
       :<|> AdunitsCustomchannelsListAPI
       :<|> MetadataDimensionsListAPI
       :<|> SavedadstylesListAPI
       :<|> AccountsCustomchannelsAdunitsListAPI
       :<|> AccountsPaymentsListAPI
       :<|> AccountsAdclientsListAPI
       :<|> AccountsAdunitsCustomchannelsListAPI
       :<|> AlertsDeleteAPI
       :<|> AccountsReportsSavedGenerateAPI
       :<|> URLchannelsListAPI
       :<|> AccountsReportsSavedListAPI
       :<|> AlertsListAPI
       :<|> AdclientsListAPI
       :<|> PaymentsListAPI
       :<|> AccountsSavedadstylesGetAPI
       :<|> AccountsAlertsDeleteAPI
       :<|> AccountsURLchannelsListAPI
       :<|> ReportsSavedGenerateAPI
       :<|> MetadataMetricsListAPI
       :<|> ReportsSavedListAPI
       :<|> AccountsAlertsListAPI

adSense :: Proxy AdSense
adSense = Proxy
