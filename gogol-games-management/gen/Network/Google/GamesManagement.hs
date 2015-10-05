{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GamesManagement
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Management API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference>
module Network.Google.GamesManagement
    (
    -- * API
      GamesManagementAPI
    , gamesManagementAPI
    , gamesManagementURL

    -- * Service Methods

    -- * REST Resources

    -- ** GamesManagementAchievementsReset
    , module Network.Google.Resource.GamesManagement.Achievements.Reset

    -- ** GamesManagementAchievementsResetAll
    , module Network.Google.Resource.GamesManagement.Achievements.ResetAll

    -- ** GamesManagementAchievementsResetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers

    -- ** GamesManagementAchievementsResetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers

    -- ** GamesManagementAchievementsResetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Achievements.ResetMultipleForAllPlayers

    -- ** GamesManagementApplicationsListHidden
    , module Network.Google.Resource.GamesManagement.Applications.ListHidden

    -- ** GamesManagementEventsReset
    , module Network.Google.Resource.GamesManagement.Events.Reset

    -- ** GamesManagementEventsResetAll
    , module Network.Google.Resource.GamesManagement.Events.ResetAll

    -- ** GamesManagementEventsResetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Events.ResetAllForAllPlayers

    -- ** GamesManagementEventsResetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Events.ResetForAllPlayers

    -- ** GamesManagementEventsResetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Events.ResetMultipleForAllPlayers

    -- ** GamesManagementPlayersHide
    , module Network.Google.Resource.GamesManagement.Players.Hide

    -- ** GamesManagementPlayersUnhide
    , module Network.Google.Resource.GamesManagement.Players.Unhide

    -- ** GamesManagementQuestsReset
    , module Network.Google.Resource.GamesManagement.Quests.Reset

    -- ** GamesManagementQuestsResetAll
    , module Network.Google.Resource.GamesManagement.Quests.ResetAll

    -- ** GamesManagementQuestsResetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Quests.ResetAllForAllPlayers

    -- ** GamesManagementQuestsResetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Quests.ResetForAllPlayers

    -- ** GamesManagementQuestsResetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Quests.ResetMultipleForAllPlayers

    -- ** GamesManagementRoomsReset
    , module Network.Google.Resource.GamesManagement.Rooms.Reset

    -- ** GamesManagementRoomsResetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Rooms.ResetForAllPlayers

    -- ** GamesManagementScoresReset
    , module Network.Google.Resource.GamesManagement.Scores.Reset

    -- ** GamesManagementScoresResetAll
    , module Network.Google.Resource.GamesManagement.Scores.ResetAll

    -- ** GamesManagementScoresResetAllForAllPlayers
    , module Network.Google.Resource.GamesManagement.Scores.ResetAllForAllPlayers

    -- ** GamesManagementScoresResetForAllPlayers
    , module Network.Google.Resource.GamesManagement.Scores.ResetForAllPlayers

    -- ** GamesManagementScoresResetMultipleForAllPlayers
    , module Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers

    -- ** GamesManagementTurnBasedMatchesReset
    , module Network.Google.Resource.GamesManagement.TurnBasedMatches.Reset

    -- ** GamesManagementTurnBasedMatchesResetForAllPlayers
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
    , pLastPlayedWith
    , pAvatarImageURL
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

gamesManagementAPI :: Proxy GamesManagementAPI
gamesManagementAPI = Proxy
