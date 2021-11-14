{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GamesConfiguration
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play Game Services Publishing API allows developers to
-- configure their games in Game Services.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference>
module Network.Google.GamesConfiguration
    (
    -- * Service Configuration
      gamesConfigurationService

    -- * OAuth Scopes
    , androidPublisherScope

    -- * API Declaration
    , GamesConfigurationAPI

    -- * Resources

    -- ** gamesConfiguration.achievementConfigurations.delete
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete

    -- ** gamesConfiguration.achievementConfigurations.get
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get

    -- ** gamesConfiguration.achievementConfigurations.insert
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert

    -- ** gamesConfiguration.achievementConfigurations.list
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List

    -- ** gamesConfiguration.achievementConfigurations.update
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update

    -- ** gamesConfiguration.imageConfigurations.upload
    , module Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload

    -- ** gamesConfiguration.leaderboardConfigurations.delete
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete

    -- ** gamesConfiguration.leaderboardConfigurations.get
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get

    -- ** gamesConfiguration.leaderboardConfigurations.insert
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert

    -- ** gamesConfiguration.leaderboardConfigurations.list
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List

    -- ** gamesConfiguration.leaderboardConfigurations.update
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update

    -- * Types

    -- ** LeaderboardConfigurationScoreOrder
    , LeaderboardConfigurationScoreOrder (..)

    -- ** ImageConfiguration
    , ImageConfiguration
    , imageConfiguration
    , icResourceId
    , icKind
    , icURL
    , icImageType

    -- ** AchievementConfigurationAchievementType
    , AchievementConfigurationAchievementType (..)

    -- ** ImageConfigurationImageType
    , ImageConfigurationImageType (..)

    -- ** LeaderboardConfigurationListResponse
    , LeaderboardConfigurationListResponse
    , leaderboardConfigurationListResponse
    , lclrNextPageToken
    , lclrKind
    , lclrItems

    -- ** GamesNumberAffixConfiguration
    , GamesNumberAffixConfiguration
    , gamesNumberAffixConfiguration
    , gnacFew
    , gnacOther
    , gnacTwo
    , gnacOne
    , gnacZero
    , gnacMany

    -- ** AchievementConfigurationInitialState
    , AchievementConfigurationInitialState (..)

    -- ** AchievementConfigurationListResponse
    , AchievementConfigurationListResponse
    , achievementConfigurationListResponse
    , aclrNextPageToken
    , aclrKind
    , aclrItems

    -- ** LeaderboardConfiguration
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

    -- ** AchievementConfiguration
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

    -- ** Xgafv
    , Xgafv (..)

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsKind
    , lsLocale
    , lsValue

    -- ** GamesNumberFormatConfiguration
    , GamesNumberFormatConfiguration
    , gamesNumberFormatConfiguration
    , gnfcSuffix
    , gnfcCurrencyCode
    , gnfcNumberFormatType
    , gnfcNumDecimalPlaces

    -- ** GamesNumberFormatConfigurationNumberFormatType
    , GamesNumberFormatConfigurationNumberFormatType (..)

    -- ** ImageConfigurationsUploadImageType
    , ImageConfigurationsUploadImageType (..)

    -- ** LeaderboardConfigurationDetail
    , LeaderboardConfigurationDetail
    , leaderboardConfigurationDetail
    , lcdKind
    , lcdScoreFormat
    , lcdSortRank
    , lcdName
    , lcdIconURL

    -- ** AchievementConfigurationDetail
    , AchievementConfigurationDetail
    , achievementConfigurationDetail
    , acdKind
    , acdSortRank
    , acdName
    , acdPointValue
    , acdIconURL
    , acdDescription

    -- ** LocalizedStringBundle
    , LocalizedStringBundle
    , localizedStringBundle
    , lsbKind
    , lsbTranslations
    ) where

import Network.Google.Prelude
import Network.Google.GamesConfiguration.Types
import Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
import Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get
import Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
import Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
import Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
import Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
import Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete
import Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
import Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert
import Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
import Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play Game Services Publishing API service.
type GamesConfigurationAPI =
     ImageConfigurationsUploadResource :<|>
       LeaderboardConfigurationsInsertResource
       :<|> LeaderboardConfigurationsListResource
       :<|> LeaderboardConfigurationsGetResource
       :<|> LeaderboardConfigurationsDeleteResource
       :<|> LeaderboardConfigurationsUpdateResource
       :<|> AchievementConfigurationsInsertResource
       :<|> AchievementConfigurationsListResource
       :<|> AchievementConfigurationsGetResource
       :<|> AchievementConfigurationsDeleteResource
       :<|> AchievementConfigurationsUpdateResource
