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
-- Module      : Gogol.GamesManagement
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play Game Management API allows developers to manage resources from the Google Play Game service.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference>
module Gogol.GamesManagement
    (
    -- * Configuration
      gamesManagementService

    -- * OAuth Scopes
    , gamesScope

    -- * Resources

    -- ** gamesManagement.achievements.reset
    , GamesManagementAchievementsResetResource
    , newGamesManagementAchievementsReset
    , GamesManagementAchievementsReset

    -- ** gamesManagement.achievements.resetAll
    , GamesManagementAchievementsResetAllResource
    , newGamesManagementAchievementsResetAll
    , GamesManagementAchievementsResetAll

    -- ** gamesManagement.achievements.resetAllForAllPlayers
    , GamesManagementAchievementsResetAllForAllPlayersResource
    , newGamesManagementAchievementsResetAllForAllPlayers
    , GamesManagementAchievementsResetAllForAllPlayers

    -- ** gamesManagement.achievements.resetForAllPlayers
    , GamesManagementAchievementsResetForAllPlayersResource
    , newGamesManagementAchievementsResetForAllPlayers
    , GamesManagementAchievementsResetForAllPlayers

    -- ** gamesManagement.achievements.resetMultipleForAllPlayers
    , GamesManagementAchievementsResetMultipleForAllPlayersResource
    , newGamesManagementAchievementsResetMultipleForAllPlayers
    , GamesManagementAchievementsResetMultipleForAllPlayers

    -- ** gamesManagement.applications.listHidden
    , GamesManagementApplicationsListHiddenResource
    , newGamesManagementApplicationsListHidden
    , GamesManagementApplicationsListHidden

    -- ** gamesManagement.events.reset
    , GamesManagementEventsResetResource
    , newGamesManagementEventsReset
    , GamesManagementEventsReset

    -- ** gamesManagement.events.resetAll
    , GamesManagementEventsResetAllResource
    , newGamesManagementEventsResetAll
    , GamesManagementEventsResetAll

    -- ** gamesManagement.events.resetAllForAllPlayers
    , GamesManagementEventsResetAllForAllPlayersResource
    , newGamesManagementEventsResetAllForAllPlayers
    , GamesManagementEventsResetAllForAllPlayers

    -- ** gamesManagement.events.resetForAllPlayers
    , GamesManagementEventsResetForAllPlayersResource
    , newGamesManagementEventsResetForAllPlayers
    , GamesManagementEventsResetForAllPlayers

    -- ** gamesManagement.events.resetMultipleForAllPlayers
    , GamesManagementEventsResetMultipleForAllPlayersResource
    , newGamesManagementEventsResetMultipleForAllPlayers
    , GamesManagementEventsResetMultipleForAllPlayers

    -- ** gamesManagement.players.hide
    , GamesManagementPlayersHideResource
    , newGamesManagementPlayersHide
    , GamesManagementPlayersHide

    -- ** gamesManagement.players.unhide
    , GamesManagementPlayersUnhideResource
    , newGamesManagementPlayersUnhide
    , GamesManagementPlayersUnhide

    -- ** gamesManagement.scores.reset
    , GamesManagementScoresResetResource
    , newGamesManagementScoresReset
    , GamesManagementScoresReset

    -- ** gamesManagement.scores.resetAll
    , GamesManagementScoresResetAllResource
    , newGamesManagementScoresResetAll
    , GamesManagementScoresResetAll

    -- ** gamesManagement.scores.resetAllForAllPlayers
    , GamesManagementScoresResetAllForAllPlayersResource
    , newGamesManagementScoresResetAllForAllPlayers
    , GamesManagementScoresResetAllForAllPlayers

    -- ** gamesManagement.scores.resetForAllPlayers
    , GamesManagementScoresResetForAllPlayersResource
    , newGamesManagementScoresResetForAllPlayers
    , GamesManagementScoresResetForAllPlayers

    -- ** gamesManagement.scores.resetMultipleForAllPlayers
    , GamesManagementScoresResetMultipleForAllPlayersResource
    , newGamesManagementScoresResetMultipleForAllPlayers
    , GamesManagementScoresResetMultipleForAllPlayers

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
