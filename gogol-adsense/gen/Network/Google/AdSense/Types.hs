{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AdSense.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSense.Types
    (
    -- * API Definition
      adsense


    -- * Account
    , Account
    , account
    , accKind
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

    -- * Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- * AdClient
    , AdClient
    , adClient
    , acKind
    , acArcOptIn
    , acSupportsReporting
    , acId
    , acProductCode
    , acArcReviewMode

    -- * AdClients
    , AdClients
    , adClients
    , acsEtag
    , acsNextPageToken
    , acsKind
    , acsItems

    -- * AdCode
    , AdCode
    , adCode
    , adKind
    , adAdCode

    -- * AdStyle
    , AdStyle
    , adStyle
    , asCorners
    , asKind
    , asFont
    , asColors

    -- * AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascUrl
    , ascBorder
    , ascTitle
    , ascBackground

    -- * AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- * AdUnit
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

    -- * AdUnitBackupOptionContentAdsSettings
    , AdUnitBackupOptionContentAdsSettings
    , adUnitBackupOptionContentAdsSettings
    , aubocasColor
    , aubocasUrl
    , aubocasType

    -- * AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType

    -- * AdUnitFeedAdsSettings
    , AdUnitFeedAdsSettings
    , adUnitFeedAdsSettings
    , aufasFrequency
    , aufasAdPosition
    , aufasType
    , aufasMinimumWordCount

    -- * AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- * AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

    -- * AdsenseReportsGenerateResponse
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

    -- * AdsenseReportsGenerateResponseItemHeaders
    , AdsenseReportsGenerateResponseItemHeaders
    , adsenseReportsGenerateResponseItemHeaders
    , argrihName
    , argrihCurrency
    , argrihType

    -- * Alert
    , Alert
    , alert
    , aleIsDismissible
    , aleKind
    , aleSeverity
    , aleId
    , aleType
    , aleMessage

    -- * Alerts
    , Alerts
    , alerts
    , aaKind
    , aaItems

    -- * CustomChannel
    , CustomChannel
    , customChannel
    , ccTargetingInfo
    , ccKind
    , ccName
    , ccCode
    , ccId

    -- * CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- * CustomChannels
    , CustomChannels
    , customChannels
    , cEtag
    , cNextPageToken
    , cKind
    , cItems

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * Payment
    , Payment
    , payment
    , pPaymentAmountCurrencyCode
    , pKind
    , pPaymentDate
    , pId
    , pPaymentAmount

    -- * Payments
    , Payments
    , payments
    , payKind
    , payItems

    -- * ReportingMetadataEntry
    , ReportingMetadataEntry
    , reportingMetadataEntry
    , rmeKind
    , rmeRequiredMetrics
    , rmeCompatibleMetrics
    , rmeRequiredDimensions
    , rmeId
    , rmeCompatibleDimensions
    , rmeSupportedProducts

    -- * SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , sKind
    , sName
    , sAdStyle
    , sId

    -- * SavedAdStyles
    , SavedAdStyles
    , savedAdStyles
    , sasEtag
    , sasNextPageToken
    , sasKind
    , sasItems

    -- * SavedReport
    , SavedReport
    , savedReport
    , savKind
    , savName
    , savId

    -- * SavedReports
    , SavedReports
    , savedReports
    , srEtag
    , srNextPageToken
    , srKind
    , srItems

    -- * UrlChannel
    , UrlChannel
    , urlChannel
    , ucKind
    , ucId
    , ucUrlPattern

    -- * UrlChannels
    , UrlChannels
    , urlChannels
    , urlcEtag
    , urlcNextPageToken
    , urlcKind
    , urlcItems
    ) where

import           Network.Google.AdSense.Types.Product
import           Network.Google.AdSense.Types.Sum
import           Network.Google.Prelude

adsense :: a
adsense = error "adsense"
