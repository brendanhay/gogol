{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Games.Configuration
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Publishing API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference>
module Network.Google.Games.Configuration
    (
    -- * REST Resources

    -- ** Google Play Game Services Publishing API
      GamesConfiguration
    , gamesConfiguration
    , gamesConfigurationURL

    -- ** gamesConfiguration.achievementConfigurations.delete
    , module Network.Google.API.GamesConfiguration.AchievementConfigurations.Delete

    -- ** gamesConfiguration.achievementConfigurations.get
    , module Network.Google.API.GamesConfiguration.AchievementConfigurations.Get

    -- ** gamesConfiguration.achievementConfigurations.insert
    , module Network.Google.API.GamesConfiguration.AchievementConfigurations.Insert

    -- ** gamesConfiguration.achievementConfigurations.list
    , module Network.Google.API.GamesConfiguration.AchievementConfigurations.List

    -- ** gamesConfiguration.achievementConfigurations.patch
    , module Network.Google.API.GamesConfiguration.AchievementConfigurations.Patch

    -- ** gamesConfiguration.achievementConfigurations.update
    , module Network.Google.API.GamesConfiguration.AchievementConfigurations.Update

    -- ** gamesConfiguration.imageConfigurations.upload
    , module Network.Google.API.GamesConfiguration.ImageConfigurations.Upload

    -- ** gamesConfiguration.leaderboardConfigurations.delete
    , module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Delete

    -- ** gamesConfiguration.leaderboardConfigurations.get
    , module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Get

    -- ** gamesConfiguration.leaderboardConfigurations.insert
    , module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Insert

    -- ** gamesConfiguration.leaderboardConfigurations.list
    , module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.List

    -- ** gamesConfiguration.leaderboardConfigurations.patch
    , module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Patch

    -- ** gamesConfiguration.leaderboardConfigurations.update
    , module Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Update

    -- * Types

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

    -- ** Alt
    , Alt (..)

    -- ** GamesNumberFormatConfiguration
    , GamesNumberFormatConfiguration
    , gamesNumberFormatConfiguration
    , gnfcSuffix
    , gnfcCurrencyCode
    , gnfcNumberFormatType
    , gnfcNumDecimalPlaces

    -- ** LeaderboardConfigurationDetail
    , LeaderboardConfigurationDetail
    , leaderboardConfigurationDetail
    , lcdKind
    , lcdScoreFormat
    , lcdSortRank
    , lcdName
    , lcdIconUrl

    -- ** AchievementConfigurationListResponse
    , AchievementConfigurationListResponse
    , achievementConfigurationListResponse
    , aclrNextPageToken
    , aclrKind
    , aclrItems

    -- ** GamesNumberAffixConfiguration
    , GamesNumberAffixConfiguration
    , gamesNumberAffixConfiguration
    , gnacFew
    , gnacOther
    , gnacTwo
    , gnacOne
    , gnacZero
    , gnacMany

    -- ** ImageConfigurationsUpload'ImageType
    , ImageConfigurationsUpload'ImageType (..)

    -- ** ImageConfiguration
    , ImageConfiguration
    , imageConfiguration
    , icResourceId
    , icKind
    , icUrl
    , icImageType

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsKind
    , lsLocale
    , lsValue

    -- ** LeaderboardConfigurationListResponse
    , LeaderboardConfigurationListResponse
    , leaderboardConfigurationListResponse
    , lclrNextPageToken
    , lclrKind
    , lclrItems

    -- ** AchievementConfigurationDetail
    , AchievementConfigurationDetail
    , achievementConfigurationDetail
    , acdKind
    , acdSortRank
    , acdName
    , acdPointValue
    , acdIconUrl
    , acdDescription

    -- ** LocalizedStringBundle
    , LocalizedStringBundle
    , localizedStringBundle
    , lsbKind
    , lsbTranslations

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
    ) where

import           Network.Google.API.GamesConfiguration.AchievementConfigurations.Delete
import           Network.Google.API.GamesConfiguration.AchievementConfigurations.Get
import           Network.Google.API.GamesConfiguration.AchievementConfigurations.Insert
import           Network.Google.API.GamesConfiguration.AchievementConfigurations.List
import           Network.Google.API.GamesConfiguration.AchievementConfigurations.Patch
import           Network.Google.API.GamesConfiguration.AchievementConfigurations.Update
import           Network.Google.API.GamesConfiguration.ImageConfigurations.Upload
import           Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Delete
import           Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Get
import           Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Insert
import           Network.Google.API.GamesConfiguration.LeaderboardConfigurations.List
import           Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Patch
import           Network.Google.API.GamesConfiguration.LeaderboardConfigurations.Update
import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type GamesConfiguration =
     AchievementConfigurationsListAPI :<|>
       LeaderboardConfigurationsListAPI
       :<|> AchievementConfigurationsUpdateAPI
       :<|> LeaderboardConfigurationsUpdateAPI
       :<|> AchievementConfigurationsInsertAPI
       :<|> LeaderboardConfigurationsInsertAPI
       :<|> LeaderboardConfigurationsDeleteAPI
       :<|> AchievementConfigurationsDeleteAPI
       :<|> AchievementConfigurationsGetAPI
       :<|> LeaderboardConfigurationsGetAPI
       :<|> AchievementConfigurationsPatchAPI
       :<|> LeaderboardConfigurationsPatchAPI
       :<|> ImageConfigurationsUploadAPI

gamesConfiguration :: Proxy GamesConfiguration
gamesConfiguration = Proxy
