{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdSenseHost.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdSenseHost.Types
    (
    -- * Service URL
      adSenseHostURL

    -- * AssociationSession
    , AssociationSession
    , associationSession
    , asStatus
    , asKind
    , asWebsiteLocale
    , asUserLocale
    , asAccountId
    , asProductCodes
    , asId
    , asWebsiteURL
    , asRedirectURL

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
    , aKind
    , aItems

    -- * ReportHeaders
    , ReportHeaders
    , reportHeaders
    , rhName
    , rhCurrency
    , rhType

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
    , adCustomStyle
    , adName
    , adContentAdsSettings
    , adCode
    , adId

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

    -- * Report
    , Report
    , report
    , rKind
    , rAverages
    , rWarnings
    , rRows
    , rTotals
    , rHeaders
    , rTotalMatchedRows

    -- * AdStyleFont
    , AdStyleFont
    , adStyleFont
    , asfSize
    , asfFamily

    -- * AdsensehostAssociationsessionsStartProductCode
    , AdsensehostAssociationsessionsStartProductCode (..)

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
    , accStatus
    , accKind
    , accName
    , accId

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
    , aaKind
    , aaArcOptIn
    , aaSupportsReporting
    , aaId
    , aaProductCode

    -- * AdUnitContentAdsSettingsBackupOption
    , AdUnitContentAdsSettingsBackupOption
    , adUnitContentAdsSettingsBackupOption
    , aucasboColor
    , aucasboURL
    , aucasboType

    -- * AdStyle
    , AdStyle
    , adStyle
    , assCorners
    , assKind
    , assFont
    , assColors

    -- * CustomChannel
    , CustomChannel
    , customChannel
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

    -- * AdUnitContentAdsSettings
    , AdUnitContentAdsSettings
    , adUnitContentAdsSettings
    , aucasBackupOption
    , aucasSize
    , aucasType
    ) where

import           Network.Google.AdSenseHost.Types.Product
import           Network.Google.AdSenseHost.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v4.1' of the AdSense Host API.
adSenseHostURL :: BaseUrl
adSenseHostURL
  = BaseUrl Https
      "https://www.googleapis.com/adsensehost/v4.1/"
      443
