{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GamesConfiguration
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Publishing API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference>
module Network.Google.GamesConfiguration
    (
    -- * Service Configuration
      gamesConfiguration

    -- * API Declaration
    , GamesConfigurationAPI

    -- * Resources

    -- ** GamesConfigurationAchievementConfigurationsDelete
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete

    -- ** GamesConfigurationAchievementConfigurationsGet
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get

    -- ** GamesConfigurationAchievementConfigurationsInsert
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert

    -- ** GamesConfigurationAchievementConfigurationsList
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List

    -- ** GamesConfigurationAchievementConfigurationsPatch
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Patch

    -- ** GamesConfigurationAchievementConfigurationsUpdate
    , module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update

    -- ** GamesConfigurationImageConfigurationsUpload
    , module Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload

    -- ** GamesConfigurationLeaderboardConfigurationsDelete
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete

    -- ** GamesConfigurationLeaderboardConfigurationsGet
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get

    -- ** GamesConfigurationLeaderboardConfigurationsInsert
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert

    -- ** GamesConfigurationLeaderboardConfigurationsList
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List

    -- ** GamesConfigurationLeaderboardConfigurationsPatch
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Patch

    -- ** GamesConfigurationLeaderboardConfigurationsUpdate
    , module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update

    -- * Types

    -- ** ImageConfiguration
    , ImageConfiguration
    , imageConfiguration
    , icResourceId
    , icKind
    , icURL
    , icImageType

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

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Patch
import           Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
import           Network.Google.Resource.GamesConfiguration.ImageConfigurations.Upload
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Patch
import           Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play Game Services Publishing API service.
type GamesConfigurationAPI =
     ImageConfigurationsUploadResource :<|>
       LeaderboardConfigurationsInsertResource
       :<|> LeaderboardConfigurationsListResource
       :<|> LeaderboardConfigurationsPatchResource
       :<|> LeaderboardConfigurationsGetResource
       :<|> LeaderboardConfigurationsDeleteResource
       :<|> LeaderboardConfigurationsUpdateResource
       :<|> AchievementConfigurationsInsertResource
       :<|> AchievementConfigurationsListResource
       :<|> AchievementConfigurationsPatchResource
       :<|> AchievementConfigurationsGetResource
       :<|> AchievementConfigurationsDeleteResource
       :<|> AchievementConfigurationsUpdateResource
