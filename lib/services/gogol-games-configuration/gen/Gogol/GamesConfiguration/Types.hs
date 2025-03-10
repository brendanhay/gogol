{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.GamesConfiguration.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.GamesConfiguration.Types
  ( -- * Configuration
    gamesConfigurationService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,

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

import Gogol.GamesConfiguration.Internal.Product
import Gogol.GamesConfiguration.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1configuration@ of the Google Play Game Services Publishing API. This contains the host and root path used as a starting point for constructing service requests.
gamesConfigurationService :: Core.ServiceConfig
gamesConfigurationService =
  Core.defaultService
    (Core.ServiceId "gamesConfiguration:v1configuration")
    "gamesconfiguration.googleapis.com"

-- | View and manage your Google Play Developer account
type Androidpublisher'FullControl =
  "https://www.googleapis.com/auth/androidpublisher"
