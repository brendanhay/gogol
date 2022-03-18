{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GamesConfiguration.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.GamesConfiguration.Types
    (
    -- * Configuration
      gamesConfigurationService

    -- * OAuth Scopes
    , androidpublisherScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AchievementConfiguration
    , AchievementConfiguration (..)
    , newAchievementConfiguration

    -- ** AchievementConfiguration_AchievementType
    , AchievementConfiguration_AchievementType (..)

    -- ** AchievementConfiguration_InitialState
    , AchievementConfiguration_InitialState (..)

    -- ** AchievementConfigurationDetail
    , AchievementConfigurationDetail (..)
    , newAchievementConfigurationDetail

    -- ** AchievementConfigurationListResponse
    , AchievementConfigurationListResponse (..)
    , newAchievementConfigurationListResponse

    -- ** GamesNumberAffixConfiguration
    , GamesNumberAffixConfiguration (..)
    , newGamesNumberAffixConfiguration

    -- ** GamesNumberFormatConfiguration
    , GamesNumberFormatConfiguration (..)
    , newGamesNumberFormatConfiguration

    -- ** GamesNumberFormatConfiguration_NumberFormatType
    , GamesNumberFormatConfiguration_NumberFormatType (..)

    -- ** ImageConfiguration
    , ImageConfiguration (..)
    , newImageConfiguration

    -- ** ImageConfiguration_ImageType
    , ImageConfiguration_ImageType (..)

    -- ** LeaderboardConfiguration
    , LeaderboardConfiguration (..)
    , newLeaderboardConfiguration

    -- ** LeaderboardConfiguration_ScoreOrder
    , LeaderboardConfiguration_ScoreOrder (..)

    -- ** LeaderboardConfigurationDetail
    , LeaderboardConfigurationDetail (..)
    , newLeaderboardConfigurationDetail

    -- ** LeaderboardConfigurationListResponse
    , LeaderboardConfigurationListResponse (..)
    , newLeaderboardConfigurationListResponse

    -- ** LocalizedString
    , LocalizedString (..)
    , newLocalizedString

    -- ** LocalizedStringBundle
    , LocalizedStringBundle (..)
    , newLocalizedStringBundle

    -- ** ImageConfigurationsUploadImageType
    , ImageConfigurationsUploadImageType (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesConfiguration.Internal.Product
import Gogol.GamesConfiguration.Internal.Sum

-- | Default request referring to version @v1configuration@ of the Google Play Game Services Publishing API. This contains the host and root path used as a starting point for constructing service requests.
gamesConfigurationService :: Core.ServiceConfig
gamesConfigurationService
  = Core.defaultService
      (Core.ServiceId "gamesConfiguration:v1configuration")
      "gamesconfiguration.googleapis.com"

-- | View and manage your Google Play Developer account
androidpublisherScope :: Core.Proxy '["https://www.googleapis.com/auth/androidpublisher"]
androidpublisherScope = Core.Proxy
