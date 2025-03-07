{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GamesConfiguration
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play Game Services Publishing API allows developers to configure their games in Game Services.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference>
module Gogol.GamesConfiguration
  ( -- * Configuration
    gamesConfigurationService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,

    -- * Resources

    -- ** gamesConfiguration.achievementConfigurations.delete
    GamesConfigurationAchievementConfigurationsDeleteResource,
    GamesConfigurationAchievementConfigurationsDelete (..),
    newGamesConfigurationAchievementConfigurationsDelete,

    -- ** gamesConfiguration.achievementConfigurations.get
    GamesConfigurationAchievementConfigurationsGetResource,
    GamesConfigurationAchievementConfigurationsGet (..),
    newGamesConfigurationAchievementConfigurationsGet,

    -- ** gamesConfiguration.achievementConfigurations.insert
    GamesConfigurationAchievementConfigurationsInsertResource,
    GamesConfigurationAchievementConfigurationsInsert (..),
    newGamesConfigurationAchievementConfigurationsInsert,

    -- ** gamesConfiguration.achievementConfigurations.list
    GamesConfigurationAchievementConfigurationsListResource,
    GamesConfigurationAchievementConfigurationsList (..),
    newGamesConfigurationAchievementConfigurationsList,

    -- ** gamesConfiguration.achievementConfigurations.update
    GamesConfigurationAchievementConfigurationsUpdateResource,
    GamesConfigurationAchievementConfigurationsUpdate (..),
    newGamesConfigurationAchievementConfigurationsUpdate,

    -- ** gamesConfiguration.leaderboardConfigurations.delete
    GamesConfigurationLeaderboardConfigurationsDeleteResource,
    GamesConfigurationLeaderboardConfigurationsDelete (..),
    newGamesConfigurationLeaderboardConfigurationsDelete,

    -- ** gamesConfiguration.leaderboardConfigurations.get
    GamesConfigurationLeaderboardConfigurationsGetResource,
    GamesConfigurationLeaderboardConfigurationsGet (..),
    newGamesConfigurationLeaderboardConfigurationsGet,

    -- ** gamesConfiguration.leaderboardConfigurations.insert
    GamesConfigurationLeaderboardConfigurationsInsertResource,
    GamesConfigurationLeaderboardConfigurationsInsert (..),
    newGamesConfigurationLeaderboardConfigurationsInsert,

    -- ** gamesConfiguration.leaderboardConfigurations.list
    GamesConfigurationLeaderboardConfigurationsListResource,
    GamesConfigurationLeaderboardConfigurationsList (..),
    newGamesConfigurationLeaderboardConfigurationsList,

    -- ** gamesConfiguration.leaderboardConfigurations.update
    GamesConfigurationLeaderboardConfigurationsUpdateResource,
    GamesConfigurationLeaderboardConfigurationsUpdate (..),
    newGamesConfigurationLeaderboardConfigurationsUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AchievementConfiguration
    AchievementConfiguration (..),
    newAchievementConfiguration,

    -- ** AchievementConfiguration_AchievementType
    AchievementConfiguration_AchievementType (..),

    -- ** AchievementConfiguration_InitialState
    AchievementConfiguration_InitialState (..),

    -- ** AchievementConfigurationDetail
    AchievementConfigurationDetail (..),
    newAchievementConfigurationDetail,

    -- ** AchievementConfigurationListResponse
    AchievementConfigurationListResponse (..),
    newAchievementConfigurationListResponse,

    -- ** GamesNumberAffixConfiguration
    GamesNumberAffixConfiguration (..),
    newGamesNumberAffixConfiguration,

    -- ** GamesNumberFormatConfiguration
    GamesNumberFormatConfiguration (..),
    newGamesNumberFormatConfiguration,

    -- ** GamesNumberFormatConfiguration_NumberFormatType
    GamesNumberFormatConfiguration_NumberFormatType (..),

    -- ** LeaderboardConfiguration
    LeaderboardConfiguration (..),
    newLeaderboardConfiguration,

    -- ** LeaderboardConfiguration_ScoreOrder
    LeaderboardConfiguration_ScoreOrder (..),

    -- ** LeaderboardConfigurationDetail
    LeaderboardConfigurationDetail (..),
    newLeaderboardConfigurationDetail,

    -- ** LeaderboardConfigurationListResponse
    LeaderboardConfigurationListResponse (..),
    newLeaderboardConfigurationListResponse,

    -- ** LocalizedString
    LocalizedString (..),
    newLocalizedString,

    -- ** LocalizedStringBundle
    LocalizedStringBundle (..),
    newLocalizedStringBundle,
  )
where

import Gogol.GamesConfiguration.AchievementConfigurations.Delete
import Gogol.GamesConfiguration.AchievementConfigurations.Get
import Gogol.GamesConfiguration.AchievementConfigurations.Insert
import Gogol.GamesConfiguration.AchievementConfigurations.List
import Gogol.GamesConfiguration.AchievementConfigurations.Update
import Gogol.GamesConfiguration.LeaderboardConfigurations.Delete
import Gogol.GamesConfiguration.LeaderboardConfigurations.Get
import Gogol.GamesConfiguration.LeaderboardConfigurations.Insert
import Gogol.GamesConfiguration.LeaderboardConfigurations.List
import Gogol.GamesConfiguration.LeaderboardConfigurations.Update
import Gogol.GamesConfiguration.Types
