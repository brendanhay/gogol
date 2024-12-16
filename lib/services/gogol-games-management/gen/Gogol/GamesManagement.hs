{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GamesManagement
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play Games Management API allows developers to manage resources from the Google Play Game service.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference>
module Gogol.GamesManagement
    (
    -- * Configuration
      gamesManagementService

    -- * OAuth Scopes
    , Games'FullControl

    -- * Resources

    -- ** gamesManagement.achievements.reset
    , GamesManagementAchievementsResetResource
    , GamesManagementAchievementsReset (..)
    , newGamesManagementAchievementsReset

    -- ** gamesManagement.achievements.resetAll
    , GamesManagementAchievementsResetAllResource
    , GamesManagementAchievementsResetAll (..)
    , newGamesManagementAchievementsResetAll

    -- ** gamesManagement.achievements.resetAllForAllPlayers
    , GamesManagementAchievementsResetAllForAllPlayersResource
    , GamesManagementAchievementsResetAllForAllPlayers (..)
    , newGamesManagementAchievementsResetAllForAllPlayers

    -- ** gamesManagement.achievements.resetForAllPlayers
    , GamesManagementAchievementsResetForAllPlayersResource
    , GamesManagementAchievementsResetForAllPlayers (..)
    , newGamesManagementAchievementsResetForAllPlayers

    -- ** gamesManagement.achievements.resetMultipleForAllPlayers
    , GamesManagementAchievementsResetMultipleForAllPlayersResource
    , GamesManagementAchievementsResetMultipleForAllPlayers (..)
    , newGamesManagementAchievementsResetMultipleForAllPlayers

    -- ** gamesManagement.applications.listHidden
    , GamesManagementApplicationsListHiddenResource
    , GamesManagementApplicationsListHidden (..)
    , newGamesManagementApplicationsListHidden

    -- ** gamesManagement.events.reset
    , GamesManagementEventsResetResource
    , GamesManagementEventsReset (..)
    , newGamesManagementEventsReset

    -- ** gamesManagement.events.resetAll
    , GamesManagementEventsResetAllResource
    , GamesManagementEventsResetAll (..)
    , newGamesManagementEventsResetAll

    -- ** gamesManagement.events.resetAllForAllPlayers
    , GamesManagementEventsResetAllForAllPlayersResource
    , GamesManagementEventsResetAllForAllPlayers (..)
    , newGamesManagementEventsResetAllForAllPlayers

    -- ** gamesManagement.events.resetForAllPlayers
    , GamesManagementEventsResetForAllPlayersResource
    , GamesManagementEventsResetForAllPlayers (..)
    , newGamesManagementEventsResetForAllPlayers

    -- ** gamesManagement.events.resetMultipleForAllPlayers
    , GamesManagementEventsResetMultipleForAllPlayersResource
    , GamesManagementEventsResetMultipleForAllPlayers (..)
    , newGamesManagementEventsResetMultipleForAllPlayers

    -- ** gamesManagement.players.hide
    , GamesManagementPlayersHideResource
    , GamesManagementPlayersHide (..)
    , newGamesManagementPlayersHide

    -- ** gamesManagement.players.unhide
    , GamesManagementPlayersUnhideResource
    , GamesManagementPlayersUnhide (..)
    , newGamesManagementPlayersUnhide

    -- ** gamesManagement.scores.reset
    , GamesManagementScoresResetResource
    , GamesManagementScoresReset (..)
    , newGamesManagementScoresReset

    -- ** gamesManagement.scores.resetAll
    , GamesManagementScoresResetAllResource
    , GamesManagementScoresResetAll (..)
    , newGamesManagementScoresResetAll

    -- ** gamesManagement.scores.resetAllForAllPlayers
    , GamesManagementScoresResetAllForAllPlayersResource
    , GamesManagementScoresResetAllForAllPlayers (..)
    , newGamesManagementScoresResetAllForAllPlayers

    -- ** gamesManagement.scores.resetForAllPlayers
    , GamesManagementScoresResetForAllPlayersResource
    , GamesManagementScoresResetForAllPlayers (..)
    , newGamesManagementScoresResetForAllPlayers

    -- ** gamesManagement.scores.resetMultipleForAllPlayers
    , GamesManagementScoresResetMultipleForAllPlayersResource
    , GamesManagementScoresResetMultipleForAllPlayers (..)
    , newGamesManagementScoresResetMultipleForAllPlayers

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AchievementResetAllResponse
    , AchievementResetAllResponse (..)
    , newAchievementResetAllResponse

    -- ** AchievementResetMultipleForAllRequest
    , AchievementResetMultipleForAllRequest (..)
    , newAchievementResetMultipleForAllRequest

    -- ** AchievementResetResponse
    , AchievementResetResponse (..)
    , newAchievementResetResponse

    -- ** EventsResetMultipleForAllRequest
    , EventsResetMultipleForAllRequest (..)
    , newEventsResetMultipleForAllRequest

    -- ** GamesPlayerExperienceInfoResource
    , GamesPlayerExperienceInfoResource (..)
    , newGamesPlayerExperienceInfoResource

    -- ** GamesPlayerLevelResource
    , GamesPlayerLevelResource (..)
    , newGamesPlayerLevelResource

    -- ** HiddenPlayer
    , HiddenPlayer (..)
    , newHiddenPlayer

    -- ** HiddenPlayerList
    , HiddenPlayerList (..)
    , newHiddenPlayerList

    -- ** Player
    , Player (..)
    , newPlayer

    -- ** Player_Name
    , Player_Name (..)
    , newPlayer_Name

    -- ** PlayerScoreResetAllResponse
    , PlayerScoreResetAllResponse (..)
    , newPlayerScoreResetAllResponse

    -- ** PlayerScoreResetResponse
    , PlayerScoreResetResponse (..)
    , newPlayerScoreResetResponse

    -- ** ProfileSettings
    , ProfileSettings (..)
    , newProfileSettings

    -- ** ScoresResetMultipleForAllRequest
    , ScoresResetMultipleForAllRequest (..)
    , newScoresResetMultipleForAllRequest
    ) where

import Gogol.GamesManagement.Achievements.Reset
import Gogol.GamesManagement.Achievements.ResetAll
import Gogol.GamesManagement.Achievements.ResetAllForAllPlayers
import Gogol.GamesManagement.Achievements.ResetForAllPlayers
import Gogol.GamesManagement.Achievements.ResetMultipleForAllPlayers
import Gogol.GamesManagement.Applications.ListHidden
import Gogol.GamesManagement.Events.Reset
import Gogol.GamesManagement.Events.ResetAll
import Gogol.GamesManagement.Events.ResetAllForAllPlayers
import Gogol.GamesManagement.Events.ResetForAllPlayers
import Gogol.GamesManagement.Events.ResetMultipleForAllPlayers
import Gogol.GamesManagement.Players.Hide
import Gogol.GamesManagement.Players.Unhide
import Gogol.GamesManagement.Scores.Reset
import Gogol.GamesManagement.Scores.ResetAll
import Gogol.GamesManagement.Scores.ResetAllForAllPlayers
import Gogol.GamesManagement.Scores.ResetForAllPlayers
import Gogol.GamesManagement.Scores.ResetMultipleForAllPlayers
import Gogol.GamesManagement.Types
