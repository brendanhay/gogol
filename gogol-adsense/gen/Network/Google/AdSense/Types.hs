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

    -- * TargetingInfo
    , TargetingInfo
    , targetingInfo
    , tiLocation
    , tiSiteLanguage
    , tiAdsAppearOn
    , tiDescription

    -- * AdClients
    , AdClients
    , adClients
    , acEtag
    , acNextPageToken
    , acKind
    , acItems

    -- * MobileContentAdsSettings
    , MobileContentAdsSettings
    , mobileContentAdsSettings
    , mcasSize
    , mcasScriptingLanguage
    , mcasMarkupLanguage
    , mcasType

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

    -- * BackupOption
    , BackupOption
    , backupOption
    , boColor
    , boURL
    , boType

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

    -- * SavedReport
    , SavedReport
    , savedReport
    , sKind
    , sName
    , sId

    -- * URLChannels
    , URLChannels
    , urlChannels
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

    -- * Account
    , Account
    , account
    , accKind
    , accPremium
    , accName
    , accId
    , accTimezone
    , accSubAccounts

    -- * FeedAdsSettings
    , FeedAdsSettings
    , feedAdsSettings
    , fasFrequency
    , fasAdPosition
    , fasType
    , fasMinimumWordCount

    -- * HeadersItem
    , HeadersItem
    , headersItem
    , hiName
    , hiCurrency
    , hiType

    -- * AdClient
    , AdClient
    , adClient
    , adKind
    , adArcOptIn
    , adSupportsReporting
    , adId
    , adProductCode
    , adArcReviewMode

    -- * SavedAdStyles
    , SavedAdStyles
    , savedAdStyles
    , sasEtag
    , sasNextPageToken
    , sasKind
    , sasItems

    -- * SavedAdStyle
    , SavedAdStyle
    , savedAdStyle
    , savKind
    , savName
    , savAdStyle
    , savId

    -- * AdStyle
    , AdStyle
    , adStyle
    , asCorners
    , asKind
    , asFont
    , asColors

    -- * ContentAdsSettings
    , ContentAdsSettings
    , contentAdsSettings
    , casBackupOption
    , casSize
    , casType

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
    , urlChannel
    , urlcKind
    , urlcId
    , urlcURLPattern

    -- * AdCode
    , AdCode
    , adCode
    , addKind
    , addAdCode

    -- * Font
    , Font
    , font
    , fSize
    , fFamily

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

    -- * Colors
    , Colors
    , colors
    , cText
    , cURL
    , cBOrder
    , cTitle
    , cBackgRound

    -- * Payments
    , Payments
    , payments
    , payKind
    , payItems
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
