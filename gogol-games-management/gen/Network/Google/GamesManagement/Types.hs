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
-- Module      : Network.Google.GamesManagement.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.GamesManagement.Types
  ( -- * Configuration
    gamesManagementService,

    -- * OAuth Scopes
    gamesScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AchievementResetAllResponse
    AchievementResetAllResponse (..),
    newAchievementResetAllResponse,

    -- ** AchievementResetMultipleForAllRequest
    AchievementResetMultipleForAllRequest (..),
    newAchievementResetMultipleForAllRequest,

    -- ** AchievementResetResponse
    AchievementResetResponse (..),
    newAchievementResetResponse,

    -- ** EventsResetMultipleForAllRequest
    EventsResetMultipleForAllRequest (..),
    newEventsResetMultipleForAllRequest,

    -- ** GamesPlayerExperienceInfoResource
    GamesPlayerExperienceInfoResource (..),
    newGamesPlayerExperienceInfoResource,

    -- ** GamesPlayerLevelResource
    GamesPlayerLevelResource (..),
    newGamesPlayerLevelResource,

    -- ** HiddenPlayer
    HiddenPlayer (..),
    newHiddenPlayer,

    -- ** HiddenPlayerList
    HiddenPlayerList (..),
    newHiddenPlayerList,

    -- ** Player
    Player (..),
    newPlayer,

    -- ** Player_Name
    Player_Name (..),
    newPlayer_Name,

    -- ** PlayerScoreResetAllResponse
    PlayerScoreResetAllResponse (..),
    newPlayerScoreResetAllResponse,

    -- ** PlayerScoreResetResponse
    PlayerScoreResetResponse (..),
    newPlayerScoreResetResponse,

    -- ** ProfileSettings
    ProfileSettings (..),
    newProfileSettings,

    -- ** ScoresResetMultipleForAllRequest
    ScoresResetMultipleForAllRequest (..),
    newScoresResetMultipleForAllRequest,
  )
where

import Network.Google.GamesManagement.Internal.Product
import Network.Google.GamesManagement.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1management@ of the Google Play Game Management. This contains the host and root path used as a starting point for constructing service requests.
gamesManagementService :: Core.ServiceConfig
gamesManagementService =
  Core.defaultService
    (Core.ServiceId "gamesManagement:v1management")
    "gamesmanagement.googleapis.com"

-- | Create, edit, and delete your Google Play Games activity
gamesScope :: Core.Proxy '["https://www.googleapis.com/auth/games"]
gamesScope = Core.Proxy
