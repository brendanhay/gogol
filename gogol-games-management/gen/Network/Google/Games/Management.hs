{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Games.Management
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Management API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference>
module Network.Google.Games.Management
    (
    -- * REST Resources

    -- ** Google Play Game Services Management API
      GamesManagement
    , gamesManagement
    , gamesManagementURL

    -- ** gamesManagement.achievements.reset
    , module Network.Google.API.GamesManagement.Achievements.Reset

    -- ** gamesManagement.achievements.resetAll
    , module Network.Google.API.GamesManagement.Achievements.ResetAll

    -- ** gamesManagement.achievements.resetAllForAllPlayers
    , module Network.Google.API.GamesManagement.Achievements.ResetAllForAllPlayers

    -- ** gamesManagement.achievements.resetForAllPlayers
    , module Network.Google.API.GamesManagement.Achievements.ResetForAllPlayers

    -- ** gamesManagement.achievements.resetMultipleForAllPlayers
    , module Network.Google.API.GamesManagement.Achievements.ResetMultipleForAllPlayers

    -- ** gamesManagement.applications.listHidden
    , module Network.Google.API.GamesManagement.Applications.ListHidden

    -- ** gamesManagement.events.reset
    , module Network.Google.API.GamesManagement.Events.Reset

    -- ** gamesManagement.events.resetAll
    , module Network.Google.API.GamesManagement.Events.ResetAll

    -- ** gamesManagement.events.resetAllForAllPlayers
    , module Network.Google.API.GamesManagement.Events.ResetAllForAllPlayers

    -- ** gamesManagement.events.resetForAllPlayers
    , module Network.Google.API.GamesManagement.Events.ResetForAllPlayers

    -- ** gamesManagement.events.resetMultipleForAllPlayers
    , module Network.Google.API.GamesManagement.Events.ResetMultipleForAllPlayers

    -- ** gamesManagement.players.hide
    , module Network.Google.API.GamesManagement.Players.Hide

    -- ** gamesManagement.players.unhide
    , module Network.Google.API.GamesManagement.Players.Unhide

    -- ** gamesManagement.quests.reset
    , module Network.Google.API.GamesManagement.Quests.Reset

    -- ** gamesManagement.quests.resetAll
    , module Network.Google.API.GamesManagement.Quests.ResetAll

    -- ** gamesManagement.quests.resetAllForAllPlayers
    , module Network.Google.API.GamesManagement.Quests.ResetAllForAllPlayers

    -- ** gamesManagement.quests.resetForAllPlayers
    , module Network.Google.API.GamesManagement.Quests.ResetForAllPlayers

    -- ** gamesManagement.quests.resetMultipleForAllPlayers
    , module Network.Google.API.GamesManagement.Quests.ResetMultipleForAllPlayers

    -- ** gamesManagement.rooms.reset
    , module Network.Google.API.GamesManagement.Rooms.Reset

    -- ** gamesManagement.rooms.resetForAllPlayers
    , module Network.Google.API.GamesManagement.Rooms.ResetForAllPlayers

    -- ** gamesManagement.scores.reset
    , module Network.Google.API.GamesManagement.Scores.Reset

    -- ** gamesManagement.scores.resetAll
    , module Network.Google.API.GamesManagement.Scores.ResetAll

    -- ** gamesManagement.scores.resetAllForAllPlayers
    , module Network.Google.API.GamesManagement.Scores.ResetAllForAllPlayers

    -- ** gamesManagement.scores.resetForAllPlayers
    , module Network.Google.API.GamesManagement.Scores.ResetForAllPlayers

    -- ** gamesManagement.scores.resetMultipleForAllPlayers
    , module Network.Google.API.GamesManagement.Scores.ResetMultipleForAllPlayers

    -- ** gamesManagement.turnBasedMatches.reset
    , module Network.Google.API.GamesManagement.TurnBasedMatches.Reset

    -- ** gamesManagement.turnBasedMatches.resetForAllPlayers
    , module Network.Google.API.GamesManagement.TurnBasedMatches.ResetForAllPlayers

    -- * Types

    -- ** GamesPlayerLevelResource
    , GamesPlayerLevelResource
    , gamesPlayerLevelResource
    , gplrMaxExperiencePoints
    , gplrMinExperiencePoints
    , gplrLevel

    -- ** Alt
    , Alt (..)

    -- ** GamesPlayedResource
    , GamesPlayedResource
    , gamesPlayedResource
    , gprAutoMatched
    , gprTimeMillis

    -- ** AchievementResetAllResponse
    , AchievementResetAllResponse
    , achievementResetAllResponse
    , ararResults
    , ararKind

    -- ** Player
    , Player
    , player
    , pLastPlayedWith
    , pAvatarImageUrl
    , pKind
    , pExperienceInfo
    , pName
    , pDisplayName
    , pTitle
    , pPlayerId

    -- ** AchievementResetResponse
    , AchievementResetResponse
    , achievementResetResponse
    , arrUpdateOccurred
    , arrKind
    , arrCurrentState
    , arrDefinitionId

    -- ** GamesPlayerExperienceInfoResource
    , GamesPlayerExperienceInfoResource
    , gamesPlayerExperienceInfoResource
    , gpeirCurrentExperiencePoints
    , gpeirCurrentLevel
    , gpeirNextLevel
    , gpeirLastLevelUpTimestampMillis

    -- ** PlayerScoreResetAllResponse
    , PlayerScoreResetAllResponse
    , playerScoreResetAllResponse
    , psrarResults
    , psrarKind

    -- ** PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- ** ScoresResetMultipleForAllRequest
    , ScoresResetMultipleForAllRequest
    , scoresResetMultipleForAllRequest
    , srmfarKind
    , srmfarLeaderboardIds

    -- ** PlayerScoreResetResponse
    , PlayerScoreResetResponse
    , playerScoreResetResponse
    , psrrKind
    , psrrResetScoreTimeSpans
    , psrrDefinitionId

    -- ** HiddenPlayerList
    , HiddenPlayerList
    , hiddenPlayerList
    , hplNextPageToken
    , hplKind
    , hplItems

    -- ** QuestsResetMultipleForAllRequest
    , QuestsResetMultipleForAllRequest
    , questsResetMultipleForAllRequest
    , qrmfarKind
    , qrmfarQuestIds

    -- ** EventsResetMultipleForAllRequest
    , EventsResetMultipleForAllRequest
    , eventsResetMultipleForAllRequest
    , ermfarKind
    , ermfarEventIds

    -- ** HiddenPlayer
    , HiddenPlayer
    , hiddenPlayer
    , hpKind
    , hpHiddenTimeMillis
    , hpPlayer

    -- ** AchievementResetMultipleForAllRequest
    , AchievementResetMultipleForAllRequest
    , achievementResetMultipleForAllRequest
    , armfarKind
    , armfarAchievementIds
    ) where

import           Network.Google.API.GamesManagement.Achievements.Reset
import           Network.Google.API.GamesManagement.Achievements.ResetAll
import           Network.Google.API.GamesManagement.Achievements.ResetAllForAllPlayers
import           Network.Google.API.GamesManagement.Achievements.ResetForAllPlayers
import           Network.Google.API.GamesManagement.Achievements.ResetMultipleForAllPlayers
import           Network.Google.API.GamesManagement.Applications.ListHidden
import           Network.Google.API.GamesManagement.Events.Reset
import           Network.Google.API.GamesManagement.Events.ResetAll
import           Network.Google.API.GamesManagement.Events.ResetAllForAllPlayers
import           Network.Google.API.GamesManagement.Events.ResetForAllPlayers
import           Network.Google.API.GamesManagement.Events.ResetMultipleForAllPlayers
import           Network.Google.API.GamesManagement.Players.Hide
import           Network.Google.API.GamesManagement.Players.Unhide
import           Network.Google.API.GamesManagement.Quests.Reset
import           Network.Google.API.GamesManagement.Quests.ResetAll
import           Network.Google.API.GamesManagement.Quests.ResetAllForAllPlayers
import           Network.Google.API.GamesManagement.Quests.ResetForAllPlayers
import           Network.Google.API.GamesManagement.Quests.ResetMultipleForAllPlayers
import           Network.Google.API.GamesManagement.Rooms.Reset
import           Network.Google.API.GamesManagement.Rooms.ResetForAllPlayers
import           Network.Google.API.GamesManagement.Scores.Reset
import           Network.Google.API.GamesManagement.Scores.ResetAll
import           Network.Google.API.GamesManagement.Scores.ResetAllForAllPlayers
import           Network.Google.API.GamesManagement.Scores.ResetForAllPlayers
import           Network.Google.API.GamesManagement.Scores.ResetMultipleForAllPlayers
import           Network.Google.API.GamesManagement.TurnBasedMatches.Reset
import           Network.Google.API.GamesManagement.TurnBasedMatches.ResetForAllPlayers
import           Network.Google.Games.Management.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type GamesManagement =
     EventsResetAPI :<|> EventsResetAllForAllPlayersAPI
       :<|> QuestsResetMultipleForAllPlayersAPI
       :<|> ScoresResetMultipleForAllPlayersAPI
       :<|> EventsResetAllAPI
       :<|> TurnBasedMatchesResetForAllPlayersAPI
       :<|> QuestsResetForAllPlayersAPI
       :<|> ScoresResetForAllPlayersAPI
       :<|> AchievementsResetAPI
       :<|> EventsResetForAllPlayersAPI
       :<|> RoomsResetForAllPlayersAPI
       :<|> AchievementsResetMultipleForAllPlayersAPI
       :<|> AchievementsResetAllForAllPlayersAPI
       :<|> AchievementsResetAllAPI
       :<|> QuestsResetAllForAllPlayersAPI
       :<|> ScoresResetAllForAllPlayersAPI
       :<|> RoomsResetAPI
       :<|> ApplicationsListHiddenAPI
       :<|> EventsResetMultipleForAllPlayersAPI
       :<|> ScoresResetAllAPI
       :<|> PlayersUnhideAPI
       :<|> QuestsResetAllAPI
       :<|> AchievementsResetForAllPlayersAPI
       :<|> TurnBasedMatchesResetAPI
       :<|> ScoresResetAPI
       :<|> PlayersHideAPI
       :<|> QuestsResetAPI

gamesManagement :: Proxy GamesManagement
gamesManagement = Proxy
