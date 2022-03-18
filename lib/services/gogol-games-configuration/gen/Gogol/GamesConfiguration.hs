{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GamesConfiguration
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    androidpublisherScope,

    -- * Resources

    -- ** gamesConfiguration.achievementConfigurations.delete
    GamesConfigurationAchievementConfigurationsDeleteResource,
    newGamesConfigurationAchievementConfigurationsDelete,
    GamesConfigurationAchievementConfigurationsDelete,

    -- ** gamesConfiguration.achievementConfigurations.get
    GamesConfigurationAchievementConfigurationsGetResource,
    newGamesConfigurationAchievementConfigurationsGet,
    GamesConfigurationAchievementConfigurationsGet,

    -- ** gamesConfiguration.achievementConfigurations.insert
    GamesConfigurationAchievementConfigurationsInsertResource,
    newGamesConfigurationAchievementConfigurationsInsert,
    GamesConfigurationAchievementConfigurationsInsert,

    -- ** gamesConfiguration.achievementConfigurations.list
    GamesConfigurationAchievementConfigurationsListResource,
    newGamesConfigurationAchievementConfigurationsList,
    GamesConfigurationAchievementConfigurationsList,

    -- ** gamesConfiguration.achievementConfigurations.update
    GamesConfigurationAchievementConfigurationsUpdateResource,
    newGamesConfigurationAchievementConfigurationsUpdate,
    GamesConfigurationAchievementConfigurationsUpdate,

    -- ** gamesConfiguration.imageConfigurations.upload
    GamesConfigurationImageConfigurationsUploadResource,
    newGamesConfigurationImageConfigurationsUpload,
    GamesConfigurationImageConfigurationsUpload,

    -- ** gamesConfiguration.leaderboardConfigurations.delete
    GamesConfigurationLeaderboardConfigurationsDeleteResource,
    newGamesConfigurationLeaderboardConfigurationsDelete,
    GamesConfigurationLeaderboardConfigurationsDelete,

    -- ** gamesConfiguration.leaderboardConfigurations.get
    GamesConfigurationLeaderboardConfigurationsGetResource,
    newGamesConfigurationLeaderboardConfigurationsGet,
    GamesConfigurationLeaderboardConfigurationsGet,

    -- ** gamesConfiguration.leaderboardConfigurations.insert
    GamesConfigurationLeaderboardConfigurationsInsertResource,
    newGamesConfigurationLeaderboardConfigurationsInsert,
    GamesConfigurationLeaderboardConfigurationsInsert,

    -- ** gamesConfiguration.leaderboardConfigurations.list
    GamesConfigurationLeaderboardConfigurationsListResource,
    newGamesConfigurationLeaderboardConfigurationsList,
    GamesConfigurationLeaderboardConfigurationsList,

    -- ** gamesConfiguration.leaderboardConfigurations.update
    GamesConfigurationLeaderboardConfigurationsUpdateResource,
    newGamesConfigurationLeaderboardConfigurationsUpdate,
    GamesConfigurationLeaderboardConfigurationsUpdate,

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

    -- ** ImageConfiguration
    ImageConfiguration (..),
    newImageConfiguration,

    -- ** ImageConfiguration_ImageType
    ImageConfiguration_ImageType (..),

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

    -- ** ImageConfigurationsUploadImageType
    ImageConfigurationsUploadImageType (..),
  )
where

import Gogol.GamesConfiguration.AchievementConfigurations.Delete
import Gogol.GamesConfiguration.AchievementConfigurations.Get
import Gogol.GamesConfiguration.AchievementConfigurations.Insert
import Gogol.GamesConfiguration.AchievementConfigurations.List
import Gogol.GamesConfiguration.AchievementConfigurations.Update
import Gogol.GamesConfiguration.ImageConfigurations.Upload
import Gogol.GamesConfiguration.LeaderboardConfigurations.Delete
import Gogol.GamesConfiguration.LeaderboardConfigurations.Get
import Gogol.GamesConfiguration.LeaderboardConfigurations.Insert
import Gogol.GamesConfiguration.LeaderboardConfigurations.List
import Gogol.GamesConfiguration.LeaderboardConfigurations.Update
import Gogol.GamesConfiguration.Types
