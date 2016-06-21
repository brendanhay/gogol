{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GamesManagement
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Management API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference>
module Network.Google.GamesManagement
    (
    -- * Service Configuration
      gamesManagementService

    -- * OAuth Scopes
    , plusLoginScope
    , gamesScope

    -- * API Declaration
    , GamesManagementAPI

    -- * Resources

    -- ** gamesManagement.achievements.reset
    , module Network.Google.Resource.GamesManagement.Achievements.Reset

    -- ** gamesManagement.achievements.resetAll
    , module Network.Google.Resource.GamesManagement.Achievements.ResetAll

    -- ** gamesManagement.achievements.resetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers

    -- ** gamesManagement.achievements.resetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers

    -- ** gamesManagement.achievements.resetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Achievements.ResetMultipleForAllPlayers

    -- ** gamesManagement.applications.listHidden
    , module Network.Google.Resource.GamesManagement.Applications.ListHidden

    -- ** gamesManagement.events.reset
    , module Network.Google.Resource.GamesManagement.Events.Reset

    -- ** gamesManagement.events.resetAll
    , module Network.Google.Resource.GamesManagement.Events.ResetAll

    -- ** gamesManagement.events.resetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers

    -- ** gamesManagement.events.resetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers

    -- ** gamesManagement.events.resetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers

    -- ** gamesManagement.players.hide
    , module Network.Google.Resource.GamesManagement.Players.Hide

    -- ** gamesManagement.players.unhide
    , module Network.Google.Resource.GamesManagement.Players.Unhide

    -- ** gamesManagement.quests.reset
    , module Network.Google.Resource.GamesManagement.Quests.Reset

    -- ** gamesManagement.quests.resetAll
    , module Network.Google.Resource.GamesManagement.Quests.ResetAll

    -- ** gamesManagement.quests.resetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Quests.ResetAllForAllPlayers

    -- ** gamesManagement.quests.resetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Quests.ResetForAllPlayers

    -- ** gamesManagement.quests.resetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Quests.ResetMultipleForAllPlayers

    -- ** gamesManagement.rooms.reset
    , module Network.Google.Resource.GamesManagement.Rooms.Reset

    -- ** gamesManagement.rooms.resetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Rooms.ResetForAllPlayers

    -- ** gamesManagement.scores.reset
    , module Network.Google.Resource.GamesManagement.Scores.Reset

    -- ** gamesManagement.scores.resetAll
    , module Network.Google.Resource.GamesManagement.Scores.ResetAll

    -- ** gamesManagement.scores.resetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Scores.ResetAllForAllPlayers

    -- ** gamesManagement.scores.resetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers

    -- ** gamesManagement.scores.resetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers

    -- ** gamesManagement.turnBasedMatches.reset
    , module Network.Google.Resource.GamesManagement.TurnBasedMatches.Reset

    -- ** gamesManagement.turnBasedMatches.resetForAllPlayers
    , module Network.Google.Resource.GamesManagement.TurnBasedMatches.ResetForAllPlayers

    -- * Types

    -- ** GamesPlayerExperienceInfoResource
    , GamesPlayerExperienceInfoResource
    , gamesPlayerExperienceInfoResource
    , gpeirCurrentExperiencePoints
    , gpeirCurrentLevel
    , gpeirNextLevel
    , gpeirLastLevelUpTimestampMillis

    -- ** PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- ** PlayerScoreResetAllResponse
    , PlayerScoreResetAllResponse
    , playerScoreResetAllResponse
    , psrarResults
    , psrarKind

    -- ** GamesPlayedResource
    , GamesPlayedResource
    , gamesPlayedResource
    , gprAutoMatched
    , gprTimeMillis

    -- ** GamesPlayerLevelResource
    , GamesPlayerLevelResource
    , gamesPlayerLevelResource
    , gplrMaxExperiencePoints
    , gplrMinExperiencePoints
    , gplrLevel

    -- ** PlayerScoreResetResponse
    , PlayerScoreResetResponse
    , playerScoreResetResponse
    , psrrKind
    , psrrResetScoreTimeSpans
    , psrrDefinitionId

    -- ** ScoresResetMultipleForAllRequest
    , ScoresResetMultipleForAllRequest
    , scoresResetMultipleForAllRequest
    , srmfarKind
    , srmfarLeaderboardIds

    -- ** QuestsResetMultipleForAllRequest
    , QuestsResetMultipleForAllRequest
    , questsResetMultipleForAllRequest
    , qrmfarKind
    , qrmfarQuestIds

    -- ** HiddenPlayerList
    , HiddenPlayerList
    , hiddenPlayerList
    , hplNextPageToken
    , hplKind
    , hplItems

    -- ** EventsResetMultipleForAllRequest
    , EventsResetMultipleForAllRequest
    , eventsResetMultipleForAllRequest
    , ermfarKind
    , ermfarEventIds

    -- ** AchievementResetMultipleForAllRequest
    , AchievementResetMultipleForAllRequest
    , achievementResetMultipleForAllRequest
    , armfarKind
    , armfarAchievementIds

    -- ** HiddenPlayer
    , HiddenPlayer
    , hiddenPlayer
    , hpKind
    , hpHiddenTimeMillis
    , hpPlayer

    -- ** AchievementResetAllResponse
    , AchievementResetAllResponse
    , achievementResetAllResponse
    , ararResults
    , ararKind

    -- ** Player
    , Player
    , player
    , pBannerURLLandscape
    , pLastPlayedWith
    , pAvatarImageURL
    , pKind
    , pExperienceInfo
    , pName
    , pOriginalPlayerId
    , pDisplayName
    , pTitle
    , pBannerURLPortrait
    , pPlayerId
    , pProFileSettings

    -- ** ProFileSettings
    , ProFileSettings
    , proFileSettings
    , pfsProFileVisible
    , pfsKind

    -- ** AchievementResetResponse
    , AchievementResetResponse
    , achievementResetResponse
    , arrUpdateOccurred
    , arrKind
    , arrCurrentState
    , arrDefinitionId
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude
import           Network.Google.Resource.GamesManagement.Achievements.Reset
import           Network.Google.Resource.GamesManagement.Achievements.ResetAll
import           Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers
import           Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers
import           Network.Google.Resource.GamesManagement.Achievements.ResetMultipleForAllPlayers
import           Network.Google.Resource.GamesManagement.Applications.ListHidden
import           Network.Google.Resource.GamesManagement.Events.Reset
import           Network.Google.Resource.GamesManagement.Events.ResetAll
import           Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers
import           Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers
import           Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers
import           Network.Google.Resource.GamesManagement.Players.Hide
import           Network.Google.Resource.GamesManagement.Players.Unhide
import           Network.Google.Resource.GamesManagement.Quests.Reset
import           Network.Google.Resource.GamesManagement.Quests.ResetAll
import           Network.Google.Resource.GamesManagement.Quests.ResetAllForAllPlayers
import           Network.Google.Resource.GamesManagement.Quests.ResetForAllPlayers
import           Network.Google.Resource.GamesManagement.Quests.ResetMultipleForAllPlayers
import           Network.Google.Resource.GamesManagement.Rooms.Reset
import           Network.Google.Resource.GamesManagement.Rooms.ResetForAllPlayers
import           Network.Google.Resource.GamesManagement.Scores.Reset
import           Network.Google.Resource.GamesManagement.Scores.ResetAll
import           Network.Google.Resource.GamesManagement.Scores.ResetAllForAllPlayers
import           Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers
import           Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
import           Network.Google.Resource.GamesManagement.TurnBasedMatches.Reset
import           Network.Google.Resource.GamesManagement.TurnBasedMatches.ResetForAllPlayers

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play Game Services Management API service.
type GamesManagementAPI =
     RoomsResetForAllPlayersResource :<|>
       RoomsResetResource
       :<|> AchievementsResetAllResource
       :<|> AchievementsResetAllForAllPlayersResource
       :<|> AchievementsResetMultipleForAllPlayersResource
       :<|> AchievementsResetForAllPlayersResource
       :<|> AchievementsResetResource
       :<|> EventsResetAllResource
       :<|> EventsResetAllForAllPlayersResource
       :<|> EventsResetMultipleForAllPlayersResource
       :<|> EventsResetForAllPlayersResource
       :<|> EventsResetResource
       :<|> QuestsResetAllResource
       :<|> QuestsResetAllForAllPlayersResource
       :<|> QuestsResetMultipleForAllPlayersResource
       :<|> QuestsResetForAllPlayersResource
       :<|> QuestsResetResource
       :<|> PlayersHideResource
       :<|> PlayersUnhideResource
       :<|> ScoresResetAllResource
       :<|> ScoresResetAllForAllPlayersResource
       :<|> ScoresResetMultipleForAllPlayersResource
       :<|> ScoresResetForAllPlayersResource
       :<|> ScoresResetResource
       :<|> TurnBasedMatchesResetForAllPlayersResource
       :<|> TurnBasedMatchesResetResource
       :<|> ApplicationsListHiddenResource
