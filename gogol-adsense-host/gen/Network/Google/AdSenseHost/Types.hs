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
    , aKind
    , aItems

    -- * BackupOption
    , BackupOption
    , backupOption
    , boColor
    , boURL
    , boType

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
    , auuCustomStyle
    , auuName
    , auuContentAdsSettings
    , auuCode
    , auuId

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

    -- * Account
    , Account
    , account
    , accStatus
    , accKind
    , accName
    , accId

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

    -- * AdStyle
    , AdStyle
    , adStyle
    , assCorners
    , assKind
    , assFont
    , assColors

    -- * ContentAdsSettings
    , ContentAdsSettings
    , contentAdsSettings
    , casBackupOption
    , casSize
    , casType

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
    , aaKind
    , aaAdCode

    -- * Font
    , Font
    , font
    , fSize
    , fFamily

    -- * Colors
    , Colors
    , colors
    , cText
    , cURL
    , cBOrder
    , cTitle
    , cBackgRound

    -- * ProductCode
    , ProductCode (..)
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
