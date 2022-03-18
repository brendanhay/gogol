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
-- Module      : Network.Google.GamesManagement
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play Game Management API allows developers to manage resources from the Google Play Game service.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference>
module Network.Google.GamesManagement
  ( -- * Configuration
    gamesManagementService,

    -- * OAuth Scopes
    gamesScope,

    -- * Resources

    -- ** gamesManagement.achievements.reset
    GamesManagementAchievementsResetResource,
    newGamesManagementAchievementsReset,
    GamesManagementAchievementsReset,

    -- ** gamesManagement.achievements.resetAll
    GamesManagementAchievementsResetAllResource,
    newGamesManagementAchievementsResetAll,
    GamesManagementAchievementsResetAll,

    -- ** gamesManagement.achievements.resetAllForAllPlayers
    GamesManagementAchievementsResetAllForAllPlayersResource,
    newGamesManagementAchievementsResetAllForAllPlayers,
    GamesManagementAchievementsResetAllForAllPlayers,

    -- ** gamesManagement.achievements.resetForAllPlayers
    GamesManagementAchievementsResetForAllPlayersResource,
    newGamesManagementAchievementsResetForAllPlayers,
    GamesManagementAchievementsResetForAllPlayers,

    -- ** gamesManagement.achievements.resetMultipleForAllPlayers
    GamesManagementAchievementsResetMultipleForAllPlayersResource,
    newGamesManagementAchievementsResetMultipleForAllPlayers,
    GamesManagementAchievementsResetMultipleForAllPlayers,

    -- ** gamesManagement.applications.listHidden
    GamesManagementApplicationsListHiddenResource,
    newGamesManagementApplicationsListHidden,
    GamesManagementApplicationsListHidden,

    -- ** gamesManagement.events.reset
    GamesManagementEventsResetResource,
    newGamesManagementEventsReset,
    GamesManagementEventsReset,

    -- ** gamesManagement.events.resetAll
    GamesManagementEventsResetAllResource,
    newGamesManagementEventsResetAll,
    GamesManagementEventsResetAll,

    -- ** gamesManagement.events.resetAllForAllPlayers
    GamesManagementEventsResetAllForAllPlayersResource,
    newGamesManagementEventsResetAllForAllPlayers,
    GamesManagementEventsResetAllForAllPlayers,

    -- ** gamesManagement.events.resetForAllPlayers
    GamesManagementEventsResetForAllPlayersResource,
    newGamesManagementEventsResetForAllPlayers,
    GamesManagementEventsResetForAllPlayers,

    -- ** gamesManagement.events.resetMultipleForAllPlayers
    GamesManagementEventsResetMultipleForAllPlayersResource,
    newGamesManagementEventsResetMultipleForAllPlayers,
    GamesManagementEventsResetMultipleForAllPlayers,

    -- ** gamesManagement.players.hide
    GamesManagementPlayersHideResource,
    newGamesManagementPlayersHide,
    GamesManagementPlayersHide,

    -- ** gamesManagement.players.unhide
    GamesManagementPlayersUnhideResource,
    newGamesManagementPlayersUnhide,
    GamesManagementPlayersUnhide,

    -- ** gamesManagement.scores.reset
    GamesManagementScoresResetResource,
    newGamesManagementScoresReset,
    GamesManagementScoresReset,

    -- ** gamesManagement.scores.resetAll
    GamesManagementScoresResetAllResource,
    newGamesManagementScoresResetAll,
    GamesManagementScoresResetAll,

    -- ** gamesManagement.scores.resetAllForAllPlayers
    GamesManagementScoresResetAllForAllPlayersResource,
    newGamesManagementScoresResetAllForAllPlayers,
    GamesManagementScoresResetAllForAllPlayers,

    -- ** gamesManagement.scores.resetForAllPlayers
    GamesManagementScoresResetForAllPlayersResource,
    newGamesManagementScoresResetForAllPlayers,
    GamesManagementScoresResetForAllPlayers,

    -- ** gamesManagement.scores.resetMultipleForAllPlayers
    GamesManagementScoresResetMultipleForAllPlayersResource,
    newGamesManagementScoresResetMultipleForAllPlayers,
    GamesManagementScoresResetMultipleForAllPlayers,

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

import Network.Google.GamesManagement.Achievements.Reset
import Network.Google.GamesManagement.Achievements.ResetAll
import Network.Google.GamesManagement.Achievements.ResetAllForAllPlayers
import Network.Google.GamesManagement.Achievements.ResetForAllPlayers
import Network.Google.GamesManagement.Achievements.ResetMultipleForAllPlayers
import Network.Google.GamesManagement.Applications.ListHidden
import Network.Google.GamesManagement.Events.Reset
import Network.Google.GamesManagement.Events.ResetAll
import Network.Google.GamesManagement.Events.ResetAllForAllPlayers
import Network.Google.GamesManagement.Events.ResetForAllPlayers
import Network.Google.GamesManagement.Events.ResetMultipleForAllPlayers
import Network.Google.GamesManagement.Players.Hide
import Network.Google.GamesManagement.Players.Unhide
import Network.Google.GamesManagement.Scores.Reset
import Network.Google.GamesManagement.Scores.ResetAll
import Network.Google.GamesManagement.Scores.ResetAllForAllPlayers
import Network.Google.GamesManagement.Scores.ResetForAllPlayers
import Network.Google.GamesManagement.Scores.ResetMultipleForAllPlayers
import Network.Google.GamesManagement.Types
