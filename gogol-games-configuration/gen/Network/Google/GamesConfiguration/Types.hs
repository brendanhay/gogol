{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesConfiguration.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesConfiguration.Types
    (
    -- * Service Configuration
      gamesConfigurationService

    -- * OAuth Scopes
    , androidPublisherScope

    -- * LeaderboardConfigurationScoreOrder
    , LeaderboardConfigurationScoreOrder (..)

    -- * ImageConfiguration
    , ImageConfiguration
    , imageConfiguration
    , icResourceId
    , icKind
    , icURL
    , icImageType

    -- * AchievementConfigurationAchievementType
    , AchievementConfigurationAchievementType (..)

    -- * ImageConfigurationImageType
    , ImageConfigurationImageType (..)

    -- * LeaderboardConfigurationListResponse
    , LeaderboardConfigurationListResponse
    , leaderboardConfigurationListResponse
    , lclrNextPageToken
    , lclrKind
    , lclrItems

    -- * GamesNumberAffixConfiguration
    , GamesNumberAffixConfiguration
    , gamesNumberAffixConfiguration
    , gnacFew
    , gnacOther
    , gnacTwo
    , gnacOne
    , gnacZero
    , gnacMany

    -- * AchievementConfigurationInitialState
    , AchievementConfigurationInitialState (..)

    -- * AchievementConfigurationListResponse
    , AchievementConfigurationListResponse
    , achievementConfigurationListResponse
    , aclrNextPageToken
    , aclrKind
    , aclrItems

    -- * LeaderboardConfiguration
    , LeaderboardConfiguration
    , leaderboardConfiguration
    , lcScoreMax
    , lcKind
    , lcPublished
    , lcToken
    , lcScoreMin
    , lcDraft
    , lcId
    , lcScoreOrder

    -- * AchievementConfiguration
    , AchievementConfiguration
    , achievementConfiguration
    , acAchievementType
    , acStepsToUnlock
    , acKind
    , acPublished
    , acToken
    , acInitialState
    , acDraft
    , acId

    -- * Xgafv
    , Xgafv (..)

    -- * LocalizedString
    , LocalizedString
    , localizedString
    , lsKind
    , lsLocale
    , lsValue

    -- * GamesNumberFormatConfiguration
    , GamesNumberFormatConfiguration
    , gamesNumberFormatConfiguration
    , gnfcSuffix
    , gnfcCurrencyCode
    , gnfcNumberFormatType
    , gnfcNumDecimalPlaces

    -- * GamesNumberFormatConfigurationNumberFormatType
    , GamesNumberFormatConfigurationNumberFormatType (..)

    -- * ImageConfigurationsUploadImageType
    , ImageConfigurationsUploadImageType (..)

    -- * LeaderboardConfigurationDetail
    , LeaderboardConfigurationDetail
    , leaderboardConfigurationDetail
    , lcdKind
    , lcdScoreFormat
    , lcdSortRank
    , lcdName
    , lcdIconURL

    -- * AchievementConfigurationDetail
    , AchievementConfigurationDetail
    , achievementConfigurationDetail
    , acdKind
    , acdSortRank
    , acdName
    , acdPointValue
    , acdIconURL
    , acdDescription

    -- * LocalizedStringBundle
    , LocalizedStringBundle
    , localizedStringBundle
    , lsbKind
    , lsbTranslations
    ) where

import Network.Google.GamesConfiguration.Types.Product
import Network.Google.GamesConfiguration.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1configuration' of the Google Play Game Services Publishing API. This contains the host and root path used as a starting point for constructing service requests.
gamesConfigurationService :: ServiceConfig
gamesConfigurationService
  = defaultService
      (ServiceId "gamesConfiguration:v1configuration")
      "gamesconfiguration.googleapis.com"

-- | View and manage your Google Play Developer account
androidPublisherScope :: Proxy '["https://www.googleapis.com/auth/androidpublisher"]
androidPublisherScope = Proxy
