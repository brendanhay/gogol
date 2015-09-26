-- |
-- Module      : Network.Google.GamesManagement
-- Copyright   : (c) 2015 Brendan Hay
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
    -- * API Definition
      GamesManagement



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

type GamesManagement = ()

gamesManagement :: Proxy GamesManagement
gamesManagement = Proxy




