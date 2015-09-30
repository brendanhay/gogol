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
    , module AdSense.Accounts.Adclients.List

    -- ** AdsenseAccountsAdunitsCustomchannelsList
    , module AdSense.Accounts.Adunits.Customchannels.List

    -- ** AdsenseAccountsAdunitsGet
    , module AdSense.Accounts.Adunits.Get

    -- ** AdsenseAccountsAdunitsGetAdCode
    , module AdSense.Accounts.Adunits.GetAdCode

    -- ** AdsenseAccountsAdunitsList
    , module AdSense.Accounts.Adunits.List

    -- ** AdsenseAccountsAlertsDelete
    , module AdSense.Accounts.Alerts.Delete

    -- ** AdsenseAccountsAlertsList
    , module AdSense.Accounts.Alerts.List

    -- ** AdsenseAccountsCustomchannelsAdunitsList
    , module AdSense.Accounts.Customchannels.Adunits.List

    -- ** AdsenseAccountsCustomchannelsGet
    , module AdSense.Accounts.Customchannels.Get

    -- ** AdsenseAccountsCustomchannelsList
    , module AdSense.Accounts.Customchannels.List

    -- ** AdsenseAccountsGet
    , module AdSense.Accounts.Get

    -- ** AdsenseAccountsList
    , module AdSense.Accounts.List

    -- ** AdsenseAccountsPaymentsList
    , module AdSense.Accounts.Payments.List

    -- ** AdsenseAccountsReportsGenerate
    , module AdSense.Accounts.Reports.Generate

    -- ** AdsenseAccountsReportsSavedGenerate
    , module AdSense.Accounts.Reports.Saved.Generate

    -- ** AdsenseAccountsReportsSavedList
    , module AdSense.Accounts.Reports.Saved.List

    -- ** AdsenseAccountsSavedadstylesGet
    , module AdSense.Accounts.Savedadstyles.Get

    -- ** AdsenseAccountsSavedadstylesList
    , module AdSense.Accounts.Savedadstyles.List

    -- ** AdsenseAccountsURLchannelsList
    , module AdSense.Accounts.URLchannels.List

    -- ** AdsenseAdclientsList
    , module AdSense.Adclients.List

    -- ** AdsenseAdunitsCustomchannelsList
    , module AdSense.Adunits.Customchannels.List

    -- ** AdsenseAdunitsGet
    , module AdSense.Adunits.Get

    -- ** AdsenseAdunitsGetAdCode
    , module AdSense.Adunits.GetAdCode

    -- ** AdsenseAdunitsList
    , module AdSense.Adunits.List

    -- ** AdsenseAlertsDelete
    , module AdSense.Alerts.Delete

    -- ** AdsenseAlertsList
    , module AdSense.Alerts.List

    -- ** AdsenseCustomchannelsAdunitsList
    , module AdSense.Customchannels.Adunits.List

    -- ** AdsenseCustomchannelsGet
    , module AdSense.Customchannels.Get

    -- ** AdsenseCustomchannelsList
    , module AdSense.Customchannels.List

    -- ** AdsenseMetadataDimensionsList
    , module AdSense.Metadata.Dimensions.List

    -- ** AdsenseMetadataMetricsList
    , module AdSense.Metadata.Metrics.List

    -- ** AdsensePaymentsList
    , module AdSense.Payments.List

    -- ** AdsenseReportsGenerate
    , module AdSense.Reports.Generate

    -- ** AdsenseReportsSavedGenerate
    , module AdSense.Reports.Saved.Generate

    -- ** AdsenseReportsSavedList
    , module AdSense.Reports.Saved.List

    -- ** AdsenseSavedadstylesGet
    , module AdSense.Savedadstyles.Get

    -- ** AdsenseSavedadstylesList
    , module AdSense.Savedadstyles.List

    -- ** AdsenseURLchannelsList
    , module AdSense.URLchannels.List

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

    -- ** Account
    , Account
    , account
    , accKind
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

    -- ** AdClient
    , AdClient
    , adClient
    , addKind
    , addArcOptIn
    , addSupportsReporting
    , addId
    , addProductCode
    , addArcReviewMode

    -- ** SavedAdStyles
    , SavedAdStyles
    , savedAdStyles
    , sasEtag
    , sasNextPageToken
    , sasKind
    , sasItems

    -- ** SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , savKind
    , savName
    , savAdStyle
    , savId

    -- ** AdStyle
    , AdStyle
    , adStyle
    , asCorners
    , asKind
    , asFont
    , asColors

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
     Adclients :<|> Accounts :<|> Reports :<|> Alerts :<|>
       Adunits
       :<|> URLchannels
       :<|> Customchannels
       :<|> Savedadstyles
       :<|> Metadata
       :<|> Payments

adSenseAPI :: Proxy AdSenseAPI
adSenseAPI = Proxy
