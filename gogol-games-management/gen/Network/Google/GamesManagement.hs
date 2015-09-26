{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | The Management API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference>
module Network.Google.GamesManagement
    (
    -- * Resources
      GamesManagement
    , RoomsAPI
    , RoomsResetForAllPlayers
    , RoomsReset
    , AchievementsAPI
    , AchievementsResetAll
    , AchievementsResetAllForAllPlayers
    , AchievementsResetMultipleForAllPlayers
    , AchievementsResetForAllPlayers
    , AchievementsReset
    , EventsAPI
    , EventsResetAll
    , EventsResetAllForAllPlayers
    , EventsResetMultipleForAllPlayers
    , EventsResetForAllPlayers
    , EventsReset
    , QuestsAPI
    , QuestsResetAll
    , QuestsResetAllForAllPlayers
    , QuestsResetMultipleForAllPlayers
    , QuestsResetForAllPlayers
    , QuestsReset
    , PlayersAPI
    , PlayersHide
    , PlayersUnhide
    , ScoresAPI
    , ScoresResetAll
    , ScoresResetAllForAllPlayers
    , ScoresResetMultipleForAllPlayers
    , ScoresResetForAllPlayers
    , ScoresReset
    , TurnBasedMatchesAPI
    , TurnBasedMatchesResetForAllPlayers
    , TurnBasedMatchesReset
    , ApplicationsAPI
    , ApplicationsListHidden

    -- * Types

    -- ** AchievementResetAllResponse
    , AchievementResetAllResponse
    , achievementResetAllResponse
    , ararResults
    , ararKind

    -- ** AchievementResetMultipleForAllRequest
    , AchievementResetMultipleForAllRequest
    , achievementResetMultipleForAllRequest
    , armfarKind
    , armfarAchievementIds

    -- ** AchievementResetResponse
    , AchievementResetResponse
    , achievementResetResponse
    , arrUpdateOccurred
    , arrKind
    , arrCurrentState
    , arrDefinitionId

    -- ** EventsResetMultipleForAllRequest
    , EventsResetMultipleForAllRequest
    , eventsResetMultipleForAllRequest
    , ermfarKind
    , ermfarEventIds

    -- ** GamesPlayedResource
    , GamesPlayedResource
    , gamesPlayedResource
    , gprAutoMatched
    , gprTimeMillis

    -- ** GamesPlayerExperienceInfoResource
    , GamesPlayerExperienceInfoResource
    , gamesPlayerExperienceInfoResource
    , gpeirCurrentExperiencePoints
    , gpeirCurrentLevel
    , gpeirNextLevel
    , gpeirLastLevelUpTimestampMillis

    -- ** GamesPlayerLevelResource
    , GamesPlayerLevelResource
    , gamesPlayerLevelResource
    , gplrMaxExperiencePoints
    , gplrMinExperiencePoints
    , gplrLevel

    -- ** HiddenPlayer
    , HiddenPlayer
    , hiddenPlayer
    , hpKind
    , hpHiddenTimeMillis
    , hpPlayer

    -- ** HiddenPlayerList
    , HiddenPlayerList
    , hiddenPlayerList
    , hplNextPageToken
    , hplKind
    , hplItems

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

    -- ** PlayerScoreResetResponse
    , PlayerScoreResetResponse
    , playerScoreResetResponse
    , psrrKind
    , psrrResetScoreTimeSpans
    , psrrDefinitionId

    -- ** QuestsResetMultipleForAllRequest
    , QuestsResetMultipleForAllRequest
    , questsResetMultipleForAllRequest
    , qrmfarKind
    , qrmfarQuestIds

    -- ** ScoresResetMultipleForAllRequest
    , ScoresResetMultipleForAllRequest
    , scoresResetMultipleForAllRequest
    , srmfarKind
    , srmfarLeaderboardIds
    ) where

import           Network.Google.GamesManagement.Types

{- $resources
TODO
-}

type GamesManagement =
     AchievementsAPI :<|>
       EventsAPI :<|>
         QuestsAPI :<|>
           PlayersAPI :<|>
             ScoresAPI :<|>
               TurnBasedMatchesAPI :<|>
                 ApplicationsAPI :<|> RoomsAPI

type RoomsAPI =
     RoomsReset :<|> RoomsResetForAllPlayers

-- | Deletes rooms where the only room participants are from whitelisted
-- tester accounts for your application. This method is only available to
-- user accounts for your developer console.
type RoomsResetForAllPlayers =
     "games" :> "v1management" :> "rooms" :>
       "resetForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Reset all rooms for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
type RoomsReset =
     "games" :> "v1management" :> "rooms" :> "reset" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type AchievementsAPI =
     AchievementsResetAllForAllPlayers :<|>
       AchievementsResetMultipleForAllPlayers :<|>
         AchievementsResetForAllPlayers :<|>
           AchievementsReset :<|> AchievementsResetAll

-- | Resets all achievements for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
type AchievementsResetAll =
     "games" :> "v1management" :> "achievements" :>
       "reset"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
type AchievementsResetAllForAllPlayers =
     "games" :> "v1management" :> "achievements" :>
       "resetAllForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets achievements with the given IDs for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements may be reset.
type AchievementsResetMultipleForAllPlayers =
     "games" :> "v1management" :> "achievements" :>
       "resetMultipleForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets the achievement with the given ID for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements can be reset.
type AchievementsResetForAllPlayers =
     "games" :> "v1management" :> "achievements" :>
       Capture "achievementId" Text
       :> "resetForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets the achievement with the given ID for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
type AchievementsReset =
     "games" :> "v1management" :> "achievements" :>
       Capture "achievementId" Text
       :> "reset"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type EventsAPI =
     EventsResetAllForAllPlayers :<|>
       EventsResetMultipleForAllPlayers :<|>
         EventsResetForAllPlayers :<|>
           EventsReset :<|> EventsResetAll

-- | Resets all player progress on all events for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application. All quests for this player will also be reset.
type EventsResetAll =
     "games" :> "v1management" :> "events" :> "reset" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets all draft events for all players. This method is only available
-- to user accounts for your developer console. All quests that use any of
-- these events will also be reset.
type EventsResetAllForAllPlayers =
     "games" :> "v1management" :> "events" :>
       "resetAllForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets events with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- may be reset. All quests that use any of the events will also be reset.
type EventsResetMultipleForAllPlayers =
     "games" :> "v1management" :> "events" :>
       "resetMultipleForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets the event with the given ID for all players. This method is only
-- available to user accounts for your developer console. Only draft events
-- can be reset. All quests that use the event will also be reset.
type EventsResetForAllPlayers =
     "games" :> "v1management" :> "events" :>
       Capture "eventId" Text
       :> "resetForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets all player progress on the event with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application. All quests for this
-- player that use the event will also be reset.
type EventsReset =
     "games" :> "v1management" :> "events" :>
       Capture "eventId" Text
       :> "reset"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type QuestsAPI =
     QuestsResetAllForAllPlayers :<|>
       QuestsResetMultipleForAllPlayers :<|>
         QuestsResetForAllPlayers :<|>
           QuestsReset :<|> QuestsResetAll

-- | Resets all player progress on all quests for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
type QuestsResetAll =
     "games" :> "v1management" :> "quests" :> "reset" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets all draft quests for all players. This method is only available
-- to user accounts for your developer console.
type QuestsResetAllForAllPlayers =
     "games" :> "v1management" :> "quests" :>
       "resetAllForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets quests with the given IDs for all players. This method is only
-- available to user accounts for your developer console. Only draft quests
-- may be reset.
type QuestsResetMultipleForAllPlayers =
     "games" :> "v1management" :> "quests" :>
       "resetMultipleForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets all player progress on the quest with the given ID for all
-- players. This method is only available to user accounts for your
-- developer console. Only draft quests can be reset.
type QuestsResetForAllPlayers =
     "games" :> "v1management" :> "quests" :>
       Capture "questId" Text
       :> "resetForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets all player progress on the quest with the given ID for the
-- currently authenticated player. This method is only accessible to
-- whitelisted tester accounts for your application.
type QuestsReset =
     "games" :> "v1management" :> "quests" :>
       Capture "questId" Text
       :> "reset"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type PlayersAPI = PlayersUnhide :<|> PlayersHide

-- | Hide the given player\'s leaderboard scores from the given application.
-- This method is only available to user accounts for your developer
-- console.
type PlayersHide =
     "games" :> "v1management" :> "applications" :>
       Capture "applicationId" Text
       :> "players"
       :> "hidden"
       :> Capture "playerId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
type PlayersUnhide =
     "games" :> "v1management" :> "applications" :>
       Capture "applicationId" Text
       :> "players"
       :> "hidden"
       :> Capture "playerId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ScoresAPI =
     ScoresResetAllForAllPlayers :<|>
       ScoresResetMultipleForAllPlayers :<|>
         ScoresResetForAllPlayers :<|>
           ScoresReset :<|> ScoresResetAll

-- | Resets all scores for all leaderboards for the currently authenticated
-- players. This method is only accessible to whitelisted tester accounts
-- for your application.
type ScoresResetAll =
     "games" :> "v1management" :> "scores" :> "reset" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets scores for all draft leaderboards for all players. This method is
-- only available to user accounts for your developer console.
type ScoresResetAllForAllPlayers =
     "games" :> "v1management" :> "scores" :>
       "resetAllForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
type ScoresResetMultipleForAllPlayers =
     "games" :> "v1management" :> "scores" :>
       "resetMultipleForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets scores for the leaderboard with the given ID for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards can be reset.
type ScoresResetForAllPlayers =
     "games" :> "v1management" :> "leaderboards" :>
       Capture "leaderboardId" Text
       :> "scores"
       :> "resetForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resets scores for the leaderboard with the given ID for the currently
-- authenticated player. This method is only accessible to whitelisted
-- tester accounts for your application.
type ScoresReset =
     "games" :> "v1management" :> "leaderboards" :>
       Capture "leaderboardId" Text
       :> "scores"
       :> "reset"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TurnBasedMatchesAPI =
     TurnBasedMatchesReset :<|>
       TurnBasedMatchesResetForAllPlayers

-- | Deletes turn-based matches where the only match participants are from
-- whitelisted tester accounts for your application. This method is only
-- available to user accounts for your developer console.
type TurnBasedMatchesResetForAllPlayers =
     "games" :> "v1management" :> "turnbasedmatches" :>
       "resetForAllPlayers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Reset all turn-based match data for a user. This method is only
-- accessible to whitelisted tester accounts for your application.
type TurnBasedMatchesReset =
     "games" :> "v1management" :> "turnbasedmatches" :>
       "reset"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ApplicationsAPI = ApplicationsListHidden

-- | Get the list of players hidden from the given application. This method
-- is only available to user accounts for your developer console.
type ApplicationsListHidden =
     "games" :> "v1management" :> "applications" :>
       Capture "applicationId" Text
       :> "players"
       :> "hidden"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
