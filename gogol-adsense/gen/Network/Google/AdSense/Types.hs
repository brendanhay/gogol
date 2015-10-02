{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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
    -- * Service URL
      adSenseURL

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

    -- * AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- * Accounts
    , Accounts
    , accounts
    , aEtag
    , aNextPageToken
    , aKind
    , aItems

    -- * Payment
    , Payment
    , payment
    , pPaymentAmountCurrencyCode
    , pKind
    , pPaymentDate
    , pId
    , pPaymentAmount

    -- * Alerts
    , Alerts
    , alerts
    , aleKind
    , aleItems

    -- * SavedReports
    , SavedReports
    , savedReports
    , srEtag
    , srNextPageToken
    , srKind
    , srItems

    -- * AdUnits
    , AdUnits
    , adUnits
    , auEtag
    , auNextPageToken
    , auKind
    , auItems

    -- * AdUnit
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

    -- * SavedReport
    , SavedReport
    , savedReport
    , sKind
    , sName
    , sId

    -- * URLChannels
    , URLChannels
    , uRLChannels
    , ucEtag
    , ucNextPageToken
    , ucKind
    , ucItems

    -- * CustomChannels
    , CustomChannels
    , customChannels
    , ccEtag
    , ccNextPageToken
    , ccKind
    , ccItems

    -- * Alert
    , Alert
    , alert
    , aaIsDismissible
    , aaKind
    , aaSeverity
    , aaId
    , aaType
    , aaMessage

    -- * AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- * AdUnitMobileContentAdsSettings
    , AdUnitMobileContentAdsSettings
    , adUnitMobileContentAdsSettings
    , aumcasSize
    , aumcasScriptingLanguage
    , aumcasMarkupLanguage
    , aumcasType

    -- * Account
    , Account
    , account
    , accKind
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

    -- * AdStyleColors
    , AdStyleColors
    , adStyleColors
    , ascText
    , ascURL
    , ascBOrder
    , ascTitle
    , ascBackgRound

    -- * AdClient
    , AdClient
    , adClient
    , addKind
    , addArcOptIn
    , addSupportsReporting
    , addId
    , addProductCode
    , addArcReviewMode

    -- * AdUnitContentAdsSettingsBackupOption
    , AdUnitContentAdsSettingsBackupOption
    , adUnitContentAdsSettingsBackupOption
    , aucasboColor
    , aucasboURL
    , aucasboType

    -- * SavedAdStyles
    , SavedAdStyles
    , savedAdStyles
    , sasEtag
    , sasNextPageToken
    , sasKind
    , sasItems

    -- * CustomChannelTargetingInfo
    , CustomChannelTargetingInfo
    , customChannelTargetingInfo
    , cctiLocation
    , cctiSiteLanguage
    , cctiAdsAppearOn
    , cctiDescription

    -- * SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , savKind
    , savName
    , savAdStyle
    , savId

    -- * AdsenseReportsGenerateResponseHeaders
    , AdsenseReportsGenerateResponseHeaders
    , adsenseReportsGenerateResponseHeaders
    , argrhName
    , argrhCurrency
    , argrhType

    -- * AdStyle
    , AdStyle
    , adStyle
    , asCorners
    , asKind
    , asFont
    , asColors

    -- * AdUnitFeedAdsSettings
    , AdUnitFeedAdsSettings
    , adUnitFeedAdsSettings
    , aufasFrequency
    , aufasAdPosition
    , aufasType
    , aufasMinimumWordCount

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * CustomChannel
    , CustomChannel
    , customChannel
    , cTargetingInfo
    , cKind
    , cName
    , cCode
    , cId

    -- * URLChannel
    , URLChannel
    , uRLChannel
    , urlcKind
    , urlcId
    , urlcURLPattern

    -- * AdCode
    , AdCode
    , adCode
    , ac1Kind
    , ac1AdCode

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

    -- * Payments
    , Payments
    , payments
    , payKind
    , payItems

    -- * AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType
    ) where

import           Network.Google.AdSense.Types.Product
import           Network.Google.AdSense.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1.4' of the AdSense Management API.
adSenseURL :: BaseUrl
adSenseURL
  = BaseUrl Https
      "https://www.googleapis.com/adsense/v1.4/"
      443
