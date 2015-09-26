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
    -- * Resources
      AdSense
    , AdclientsAPI
    , AdclientsList
    , AccountsAPI
    , AdclientsAPI
    , AdclientsList
    , ReportsAPI
    , SavedAPI
    , SavedList
    , SavedGenerate
    , AlertsAPI
    , AlertsList
    , AlertsDelete
    , AdunitsAPI
    , CustomchannelsAPI
    , CustomchannelsList
    , UrlchannelsAPI
    , UrlchannelsList
    , CustomchannelsAPI
    , AdunitsAPI
    , AdunitsList
    , SavedadstylesAPI
    , SavedadstylesList
    , SavedadstylesGet
    , PaymentsAPI
    , PaymentsList
    , ReportsAPI
    , SavedAPI
    , SavedList
    , SavedGenerate
    , AlertsAPI
    , AlertsList
    , AlertsDelete
    , AdunitsAPI
    , CustomchannelsAPI
    , CustomchannelsList
    , UrlchannelsAPI
    , UrlchannelsList
    , CustomchannelsAPI
    , AdunitsAPI
    , AdunitsList
    , SavedadstylesAPI
    , SavedadstylesList
    , SavedadstylesGet
    , MetadataAPI
    , MetricsAPI
    , MetricsList
    , DimensionsAPI
    , DimensionsList
    , PaymentsAPI
    , PaymentsList

    -- * Types

    -- ** Account
    , Account
    , account
    , accKind
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

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
    , acArcReviewMode

    -- ** AdClients
    , AdClients
    , adClients
    , acsEtag
    , acsNextPageToken
    , acsKind
    , acsItems

    -- ** AdCode
    , AdCode
    , adCode
    , adKind
    , adAdCode

    -- ** AdStyle
    , AdStyle
    , adStyle
    , asCorners
    , asKind
    , asFont
    , asColors

    -- ** AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascUrl
    , ascBorder
    , ascTitle
    , ascBackground

    -- ** AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

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

    -- ** AdUnitBackupOptionContentAdsSettings
    , AdUnitBackupOptionContentAdsSettings
    , adUnitBackupOptionContentAdsSettings
    , aubocasColor
    , aubocasUrl
    , aubocasType

    -- ** AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType

    -- ** AdUnitFeedAdsSettings
    , AdUnitFeedAdsSettings
    , adUnitFeedAdsSettings
    , aufasFrequency
    , aufasAdPosition
    , aufasType
    , aufasMinimumWordCount

    -- ** AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- ** AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

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

    -- ** AdsenseReportsGenerateResponseItemHeaders
    , AdsenseReportsGenerateResponseItemHeaders
    , adsenseReportsGenerateResponseItemHeaders
    , argrihName
    , argrihCurrency
    , argrihType

    -- ** Alert
    , Alert
    , alert
    , aleIsDismissible
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

    -- ** Payment
    , Payment
    , payment
    , pPaymentAmountCurrencyCode
    , pKind
    , pPaymentDate
    , pId
    , pPaymentAmount

    -- ** Payments
    , Payments
    , payments
    , payKind
    , payItems

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

    -- ** SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , sKind
    , sName
    , sAdStyle
    , sId

    -- ** SavedAdStyles
    , SavedAdStyles
    , savedAdStyles
    , sasEtag
    , sasNextPageToken
    , sasKind
    , sasItems

    -- ** SavedReport
    , SavedReport
    , savedReport
    , savKind
    , savName
    , savId

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

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdSense =
     AccountsAPI :<|>
       ReportsAPI :<|>
         AlertsAPI :<|>
           AdunitsAPI :<|>
             UrlchannelsAPI :<|>
               CustomchannelsAPI :<|>
                 SavedadstylesAPI :<|>
                   MetadataAPI :<|> PaymentsAPI :<|> AdclientsAPI

type AdclientsAPI = AdclientsList

-- | List all ad clients in this AdSense account.
type AdclientsList =
     "adsense" :> "v1.4" :> "adclients" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AccountsAPI =
     ReportsAPI :<|>
       AlertsAPI :<|>
         AdunitsAPI :<|>
           UrlchannelsAPI :<|>
             CustomchannelsAPI :<|>
               SavedadstylesAPI :<|> PaymentsAPI :<|> AdclientsAPI

type AdclientsAPI = AdclientsList

-- | List all ad clients in the specified account.
type AdclientsList =
     "adsense" :> "v1.4" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReportsAPI = SavedAPI

type SavedAPI = SavedGenerate :<|> SavedList

-- | List all saved reports in the specified AdSense account.
type SavedList =
     "adsense" :> "v1.4" :> "accounts" :>
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

-- | Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
type SavedGenerate =
     "adsense" :> "v1.4" :> "accounts" :>
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

type AlertsAPI = AlertsDelete :<|> AlertsList

-- | List the alerts for the specified AdSense account.
type AlertsList =
     "adsense" :> "v1.4" :> "accounts" :>
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

-- | Dismiss (delete) the specified alert from the specified publisher
-- AdSense account.
type AlertsDelete =
     "adsense" :> "v1.4" :> "accounts" :>
       Capture "accountId" Text
       :> "alerts"
       :> Capture "alertId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdunitsAPI = CustomchannelsAPI

type CustomchannelsAPI = CustomchannelsList

-- | List all custom channels which the specified ad unit belongs to.
type CustomchannelsList =
     "adsense" :> "v1.4" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "adunits"
       :> Capture "adUnitId" Text
       :> "customchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UrlchannelsAPI = UrlchannelsList

-- | List all URL channels in the specified ad client for the specified
-- account.
type UrlchannelsList =
     "adsense" :> "v1.4" :> "accounts" :>
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
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomchannelsAPI = AdunitsAPI

type AdunitsAPI = AdunitsList

-- | List all ad units in the specified custom channel.
type AdunitsList =
     "adsense" :> "v1.4" :> "accounts" :>
       Capture "accountId" Text
       :> "adclients"
       :> Capture "adClientId" Text
       :> "customchannels"
       :> Capture "customChannelId" Text
       :> "adunits"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "includeInactive" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SavedadstylesAPI =
     SavedadstylesGet :<|> SavedadstylesList

-- | List all saved ad styles in the specified account.
type SavedadstylesList =
     "adsense" :> "v1.4" :> "accounts" :>
       Capture "accountId" Text
       :> "savedadstyles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List a specific saved ad style for the specified account.
type SavedadstylesGet =
     "adsense" :> "v1.4" :> "accounts" :>
       Capture "accountId" Text
       :> "savedadstyles"
       :> Capture "savedAdStyleId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PaymentsAPI = PaymentsList

-- | List the payments for the specified AdSense account.
type PaymentsList =
     "adsense" :> "v1.4" :> "accounts" :>
       Capture "accountId" Text
       :> "payments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReportsAPI = SavedAPI

type SavedAPI = SavedGenerate :<|> SavedList

-- | List all saved reports in this AdSense account.
type SavedList =
     "adsense" :> "v1.4" :> "reports" :> "saved" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Generate an AdSense report based on the saved report ID sent in the
-- query parameters.
type SavedGenerate =
     "adsense" :> "v1.4" :> "reports" :>
       Capture "savedReportId" Text
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

type AlertsAPI = AlertsDelete :<|> AlertsList

-- | List the alerts for this AdSense account.
type AlertsList =
     "adsense" :> "v1.4" :> "alerts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Dismiss (delete) the specified alert from the publisher\'s AdSense
-- account.
type AlertsDelete =
     "adsense" :> "v1.4" :> "alerts" :>
       Capture "alertId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AdunitsAPI = CustomchannelsAPI

type CustomchannelsAPI = CustomchannelsList

-- | List all custom channels which the specified ad unit belongs to.
type CustomchannelsList =
     "adsense" :> "v1.4" :> "adclients" :>
       Capture "adClientId" Text
       :> "adunits"
       :> Capture "adUnitId" Text
       :> "customchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type UrlchannelsAPI = UrlchannelsList

-- | List all URL channels in the specified ad client for this AdSense
-- account.
type UrlchannelsList =
     "adsense" :> "v1.4" :> "adclients" :>
       Capture "adClientId" Text
       :> "urlchannels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type CustomchannelsAPI = AdunitsAPI

type AdunitsAPI = AdunitsList

-- | List all ad units in the specified custom channel.
type AdunitsList =
     "adsense" :> "v1.4" :> "adclients" :>
       Capture "adClientId" Text
       :> "customchannels"
       :> Capture "customChannelId" Text
       :> "adunits"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "includeInactive" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SavedadstylesAPI =
     SavedadstylesGet :<|> SavedadstylesList

-- | List all saved ad styles in the user\'s account.
type SavedadstylesList =
     "adsense" :> "v1.4" :> "savedadstyles" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a specific saved ad style from the user\'s account.
type SavedadstylesGet =
     "adsense" :> "v1.4" :> "savedadstyles" :>
       Capture "savedAdStyleId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MetadataAPI = DimensionsAPI :<|> MetricsAPI

type MetricsAPI = MetricsList

-- | List the metadata for the metrics available to this AdSense account.
type MetricsList =
     "adsense" :> "v1.4" :> "metadata" :> "metrics" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DimensionsAPI = DimensionsList

-- | List the metadata for the dimensions available to this AdSense account.
type DimensionsList =
     "adsense" :> "v1.4" :> "metadata" :> "dimensions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PaymentsAPI = PaymentsList

-- | List the payments for this AdSense account.
type PaymentsList =
     "adsense" :> "v1.4" :> "payments" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
