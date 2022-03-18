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
-- Module      : Gogol.GamesManagement.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.GamesManagement.Internal.Product
  (

    -- * AchievementResetAllResponse
    AchievementResetAllResponse (..),
    newAchievementResetAllResponse,

    -- * AchievementResetMultipleForAllRequest
    AchievementResetMultipleForAllRequest (..),
    newAchievementResetMultipleForAllRequest,

    -- * AchievementResetResponse
    AchievementResetResponse (..),
    newAchievementResetResponse,

    -- * EventsResetMultipleForAllRequest
    EventsResetMultipleForAllRequest (..),
    newEventsResetMultipleForAllRequest,

    -- * GamesPlayerExperienceInfoResource
    GamesPlayerExperienceInfoResource (..),
    newGamesPlayerExperienceInfoResource,

    -- * GamesPlayerLevelResource
    GamesPlayerLevelResource (..),
    newGamesPlayerLevelResource,

    -- * HiddenPlayer
    HiddenPlayer (..),
    newHiddenPlayer,

    -- * HiddenPlayerList
    HiddenPlayerList (..),
    newHiddenPlayerList,

    -- * Player
    Player (..),
    newPlayer,

    -- * Player_Name
    Player_Name (..),
    newPlayer_Name,

    -- * PlayerScoreResetAllResponse
    PlayerScoreResetAllResponse (..),
    newPlayerScoreResetAllResponse,

    -- * PlayerScoreResetResponse
    PlayerScoreResetResponse (..),
    newPlayerScoreResetResponse,

    -- * ProfileSettings
    ProfileSettings (..),
    newProfileSettings,

    -- * ScoresResetMultipleForAllRequest
    ScoresResetMultipleForAllRequest (..),
    newScoresResetMultipleForAllRequest,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesManagement.Internal.Sum

-- | Achievement reset all response.
--
-- /See:/ 'newAchievementResetAllResponse' smart constructor.
data AchievementResetAllResponse = AchievementResetAllResponse
    {
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#achievementResetAllResponse@.
      kind :: (Core.Maybe Core.Text)
      -- | The achievement reset results.
    , results :: (Core.Maybe [AchievementResetResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementResetAllResponse' with the minimum fields required to make a request.
newAchievementResetAllResponse 
    ::  AchievementResetAllResponse
newAchievementResetAllResponse =
  AchievementResetAllResponse {kind = Core.Nothing, results = Core.Nothing}

instance Core.FromJSON AchievementResetAllResponse
         where
        parseJSON
          = Core.withObject "AchievementResetAllResponse"
              (\ o ->
                 AchievementResetAllResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "results" Core..!= Core.mempty))

instance Core.ToJSON AchievementResetAllResponse
         where
        toJSON AchievementResetAllResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("results" Core..=) Core.<$> results])


--
-- /See:/ 'newAchievementResetMultipleForAllRequest' smart constructor.
data AchievementResetMultipleForAllRequest = AchievementResetMultipleForAllRequest
    {
      -- | The IDs of achievements to reset.
      achievementIds :: (Core.Maybe [Core.Text])
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#achievementResetMultipleForAllRequest@.
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementResetMultipleForAllRequest' with the minimum fields required to make a request.
newAchievementResetMultipleForAllRequest 
    ::  AchievementResetMultipleForAllRequest
newAchievementResetMultipleForAllRequest =
  AchievementResetMultipleForAllRequest
    {achievementIds = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON
           AchievementResetMultipleForAllRequest
         where
        parseJSON
          = Core.withObject
              "AchievementResetMultipleForAllRequest"
              (\ o ->
                 AchievementResetMultipleForAllRequest Core.<$>
                   (o Core..:? "achievement_ids" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON
           AchievementResetMultipleForAllRequest
         where
        toJSON AchievementResetMultipleForAllRequest{..}
          = Core.object
              (Core.catMaybes
                 [("achievement_ids" Core..=) Core.<$> achievementIds,
                  ("kind" Core..=) Core.<$> kind])


-- | An achievement reset response.
--
-- /See:/ 'newAchievementResetResponse' smart constructor.
data AchievementResetResponse = AchievementResetResponse
    {
      -- | The current state of the achievement. This is the same as the initial state of the achievement. Possible values are: - \"@HIDDEN@\"- Achievement is hidden. - \"@REVEALED@\" - Achievement is revealed. - \"@UNLOCKED@\" - Achievement is unlocked.
      currentState :: (Core.Maybe Core.Text)
      -- | The ID of an achievement for which player state has been updated.
    , definitionId :: (Core.Maybe Core.Text)
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#achievementResetResponse@.
    , kind :: (Core.Maybe Core.Text)
      -- | Flag to indicate if the requested update actually occurred.
    , updateOccurred :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementResetResponse' with the minimum fields required to make a request.
newAchievementResetResponse 
    ::  AchievementResetResponse
newAchievementResetResponse =
  AchievementResetResponse
    { currentState = Core.Nothing
    , definitionId = Core.Nothing
    , kind = Core.Nothing
    , updateOccurred = Core.Nothing
    }

instance Core.FromJSON AchievementResetResponse where
        parseJSON
          = Core.withObject "AchievementResetResponse"
              (\ o ->
                 AchievementResetResponse Core.<$>
                   (o Core..:? "currentState") Core.<*>
                     (o Core..:? "definitionId")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "updateOccurred"))

instance Core.ToJSON AchievementResetResponse where
        toJSON AchievementResetResponse{..}
          = Core.object
              (Core.catMaybes
                 [("currentState" Core..=) Core.<$> currentState,
                  ("definitionId" Core..=) Core.<$> definitionId,
                  ("kind" Core..=) Core.<$> kind,
                  ("updateOccurred" Core..=) Core.<$> updateOccurred])


-- | Multiple events reset all request.
--
-- /See:/ 'newEventsResetMultipleForAllRequest' smart constructor.
data EventsResetMultipleForAllRequest = EventsResetMultipleForAllRequest
    {
      -- | The IDs of events to reset.
      eventIds :: (Core.Maybe [Core.Text])
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#eventsResetMultipleForAllRequest@.
    , kind :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventsResetMultipleForAllRequest' with the minimum fields required to make a request.
newEventsResetMultipleForAllRequest 
    ::  EventsResetMultipleForAllRequest
newEventsResetMultipleForAllRequest =
  EventsResetMultipleForAllRequest
    {eventIds = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON
           EventsResetMultipleForAllRequest
         where
        parseJSON
          = Core.withObject "EventsResetMultipleForAllRequest"
              (\ o ->
                 EventsResetMultipleForAllRequest Core.<$>
                   (o Core..:? "event_ids" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "kind"))

instance Core.ToJSON EventsResetMultipleForAllRequest
         where
        toJSON EventsResetMultipleForAllRequest{..}
          = Core.object
              (Core.catMaybes
                 [("event_ids" Core..=) Core.<$> eventIds,
                  ("kind" Core..=) Core.<$> kind])


-- | 1P\/3P metadata about the player\'s experience.
--
-- /See:/ 'newGamesPlayerExperienceInfoResource' smart constructor.
data GamesPlayerExperienceInfoResource = GamesPlayerExperienceInfoResource
    {
      -- | The current number of experience points for the player.
      currentExperiencePoints :: (Core.Maybe Core.Int64)
      -- | The current level of the player.
    , currentLevel :: (Core.Maybe GamesPlayerLevelResource)
      -- | The timestamp when the player was leveled up, in millis since Unix epoch UTC.
    , lastLevelUpTimestampMillis :: (Core.Maybe Core.Int64)
      -- | The next level of the player. If the current level is the maximum level, this should be same as the current level.
    , nextLevel :: (Core.Maybe GamesPlayerLevelResource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesPlayerExperienceInfoResource' with the minimum fields required to make a request.
newGamesPlayerExperienceInfoResource 
    ::  GamesPlayerExperienceInfoResource
newGamesPlayerExperienceInfoResource =
  GamesPlayerExperienceInfoResource
    { currentExperiencePoints = Core.Nothing
    , currentLevel = Core.Nothing
    , lastLevelUpTimestampMillis = Core.Nothing
    , nextLevel = Core.Nothing
    }

instance Core.FromJSON
           GamesPlayerExperienceInfoResource
         where
        parseJSON
          = Core.withObject "GamesPlayerExperienceInfoResource"
              (\ o ->
                 GamesPlayerExperienceInfoResource Core.<$>
                   (o Core..:? "currentExperiencePoints") Core.<*>
                     (o Core..:? "currentLevel")
                     Core.<*> (o Core..:? "lastLevelUpTimestampMillis")
                     Core.<*> (o Core..:? "nextLevel"))

instance Core.ToJSON
           GamesPlayerExperienceInfoResource
         where
        toJSON GamesPlayerExperienceInfoResource{..}
          = Core.object
              (Core.catMaybes
                 [("currentExperiencePoints" Core..=) Core..
                    Core.AsText
                    Core.<$> currentExperiencePoints,
                  ("currentLevel" Core..=) Core.<$> currentLevel,
                  ("lastLevelUpTimestampMillis" Core..=) Core..
                    Core.AsText
                    Core.<$> lastLevelUpTimestampMillis,
                  ("nextLevel" Core..=) Core.<$> nextLevel])


-- | 1P\/3P metadata about a user\'s level.
--
-- /See:/ 'newGamesPlayerLevelResource' smart constructor.
data GamesPlayerLevelResource = GamesPlayerLevelResource
    {
      -- | The level for the user.
      level :: (Core.Maybe Core.Int32)
      -- | The maximum experience points for this level.
    , maxExperiencePoints :: (Core.Maybe Core.Int64)
      -- | The minimum experience points for this level.
    , minExperiencePoints :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesPlayerLevelResource' with the minimum fields required to make a request.
newGamesPlayerLevelResource 
    ::  GamesPlayerLevelResource
newGamesPlayerLevelResource =
  GamesPlayerLevelResource
    { level = Core.Nothing
    , maxExperiencePoints = Core.Nothing
    , minExperiencePoints = Core.Nothing
    }

instance Core.FromJSON GamesPlayerLevelResource where
        parseJSON
          = Core.withObject "GamesPlayerLevelResource"
              (\ o ->
                 GamesPlayerLevelResource Core.<$>
                   (o Core..:? "level") Core.<*>
                     (o Core..:? "maxExperiencePoints")
                     Core.<*> (o Core..:? "minExperiencePoints"))

instance Core.ToJSON GamesPlayerLevelResource where
        toJSON GamesPlayerLevelResource{..}
          = Core.object
              (Core.catMaybes
                 [("level" Core..=) Core.<$> level,
                  ("maxExperiencePoints" Core..=) Core.. Core.AsText
                    Core.<$> maxExperiencePoints,
                  ("minExperiencePoints" Core..=) Core.. Core.AsText
                    Core.<$> minExperiencePoints])


-- | The HiddenPlayer resource.
--
-- /See:/ 'newHiddenPlayer' smart constructor.
data HiddenPlayer = HiddenPlayer
    {
      -- | Output only. The time this player was hidden.
      hiddenTimeMillis :: (Core.Maybe Core.Int64)
      -- | Output only. Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#hiddenPlayer@.
    , kind :: (Core.Maybe Core.Text)
      -- | Output only. The player information.
    , player :: (Core.Maybe Player)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HiddenPlayer' with the minimum fields required to make a request.
newHiddenPlayer 
    ::  HiddenPlayer
newHiddenPlayer =
  HiddenPlayer
    { hiddenTimeMillis = Core.Nothing
    , kind = Core.Nothing
    , player = Core.Nothing
    }

instance Core.FromJSON HiddenPlayer where
        parseJSON
          = Core.withObject "HiddenPlayer"
              (\ o ->
                 HiddenPlayer Core.<$>
                   (o Core..:? "hiddenTimeMillis") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "player"))

instance Core.ToJSON HiddenPlayer where
        toJSON HiddenPlayer{..}
          = Core.object
              (Core.catMaybes
                 [("hiddenTimeMillis" Core..=) Core.. Core.AsText
                    Core.<$> hiddenTimeMillis,
                  ("kind" Core..=) Core.<$> kind,
                  ("player" Core..=) Core.<$> player])


-- | A list of hidden players.
--
-- /See:/ 'newHiddenPlayerList' smart constructor.
data HiddenPlayerList = HiddenPlayerList
    {
      -- | The players.
      items :: (Core.Maybe [HiddenPlayer])
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#hiddenPlayerList@.
    , kind :: (Core.Maybe Core.Text)
      -- | The pagination token for the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HiddenPlayerList' with the minimum fields required to make a request.
newHiddenPlayerList 
    ::  HiddenPlayerList
newHiddenPlayerList =
  HiddenPlayerList
    {items = Core.Nothing, kind = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON HiddenPlayerList where
        parseJSON
          = Core.withObject "HiddenPlayerList"
              (\ o ->
                 HiddenPlayerList Core.<$>
                   (o Core..:? "items" Core..!= Core.mempty) Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON HiddenPlayerList where
        toJSON HiddenPlayerList{..}
          = Core.object
              (Core.catMaybes
                 [("items" Core..=) Core.<$> items,
                  ("kind" Core..=) Core.<$> kind,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | A Player resource.
--
-- /See:/ 'newPlayer' smart constructor.
data Player = Player
    {
      -- | The base URL for the image that represents the player.
      avatarImageUrl :: (Core.Maybe Core.Text)
      -- | The url to the landscape mode player banner image.
    , bannerUrlLandscape :: (Core.Maybe Core.Text)
      -- | The url to the portrait mode player banner image.
    , bannerUrlPortrait :: (Core.Maybe Core.Text)
      -- | The name to display for the player.
    , displayName :: (Core.Maybe Core.Text)
      -- | An object to represent Play Game experience information for the player.
    , experienceInfo :: (Core.Maybe GamesPlayerExperienceInfoResource)
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#player@.
    , kind :: (Core.Maybe Core.Text)
      -- | An object representation of the individual components of the player\'s name. For some players, these fields may not be present.
    , name :: (Core.Maybe Player_Name)
      -- | The player ID that was used for this player the first time they signed into the game in question. This is only populated for calls to player.get for the requesting player, only if the player ID has subsequently changed, and only to clients that support remapping player IDs.
    , originalPlayerId :: (Core.Maybe Core.Text)
      -- | The ID of the player.
    , playerId :: (Core.Maybe Core.Text)
      -- | The player\'s profile settings. Controls whether or not the player\'s profile is visible to other players.
    , profileSettings :: (Core.Maybe ProfileSettings)
      -- | The player\'s title rewarded for their game activities.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Player' with the minimum fields required to make a request.
newPlayer 
    ::  Player
newPlayer =
  Player
    { avatarImageUrl = Core.Nothing
    , bannerUrlLandscape = Core.Nothing
    , bannerUrlPortrait = Core.Nothing
    , displayName = Core.Nothing
    , experienceInfo = Core.Nothing
    , kind = Core.Nothing
    , name = Core.Nothing
    , originalPlayerId = Core.Nothing
    , playerId = Core.Nothing
    , profileSettings = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Player where
        parseJSON
          = Core.withObject "Player"
              (\ o ->
                 Player Core.<$>
                   (o Core..:? "avatarImageUrl") Core.<*>
                     (o Core..:? "bannerUrlLandscape")
                     Core.<*> (o Core..:? "bannerUrlPortrait")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "experienceInfo")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "originalPlayerId")
                     Core.<*> (o Core..:? "playerId")
                     Core.<*> (o Core..:? "profileSettings")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Player where
        toJSON Player{..}
          = Core.object
              (Core.catMaybes
                 [("avatarImageUrl" Core..=) Core.<$> avatarImageUrl,
                  ("bannerUrlLandscape" Core..=) Core.<$>
                    bannerUrlLandscape,
                  ("bannerUrlPortrait" Core..=) Core.<$>
                    bannerUrlPortrait,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("experienceInfo" Core..=) Core.<$> experienceInfo,
                  ("kind" Core..=) Core.<$> kind,
                  ("name" Core..=) Core.<$> name,
                  ("originalPlayerId" Core..=) Core.<$>
                    originalPlayerId,
                  ("playerId" Core..=) Core.<$> playerId,
                  ("profileSettings" Core..=) Core.<$> profileSettings,
                  ("title" Core..=) Core.<$> title])


-- | An object representation of the individual components of the player\'s name. For some players, these fields may not be present.
--
-- /See:/ 'newPlayer_Name' smart constructor.
data Player_Name = Player_Name
    {
      -- | The family name of this player. In some places, this is known as the last name.
      familyName :: (Core.Maybe Core.Text)
      -- | The given name of this player. In some places, this is known as the first name.
    , givenName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Player_Name' with the minimum fields required to make a request.
newPlayer_Name 
    ::  Player_Name
newPlayer_Name =
  Player_Name {familyName = Core.Nothing, givenName = Core.Nothing}

instance Core.FromJSON Player_Name where
        parseJSON
          = Core.withObject "Player_Name"
              (\ o ->
                 Player_Name Core.<$>
                   (o Core..:? "familyName") Core.<*>
                     (o Core..:? "givenName"))

instance Core.ToJSON Player_Name where
        toJSON Player_Name{..}
          = Core.object
              (Core.catMaybes
                 [("familyName" Core..=) Core.<$> familyName,
                  ("givenName" Core..=) Core.<$> givenName])


-- | A list of leaderboard reset resources.
--
-- /See:/ 'newPlayerScoreResetAllResponse' smart constructor.
data PlayerScoreResetAllResponse = PlayerScoreResetAllResponse
    {
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#playerScoreResetAllResponse@.
      kind :: (Core.Maybe Core.Text)
      -- | The leaderboard reset results.
    , results :: (Core.Maybe [PlayerScoreResetResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerScoreResetAllResponse' with the minimum fields required to make a request.
newPlayerScoreResetAllResponse 
    ::  PlayerScoreResetAllResponse
newPlayerScoreResetAllResponse =
  PlayerScoreResetAllResponse {kind = Core.Nothing, results = Core.Nothing}

instance Core.FromJSON PlayerScoreResetAllResponse
         where
        parseJSON
          = Core.withObject "PlayerScoreResetAllResponse"
              (\ o ->
                 PlayerScoreResetAllResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "results" Core..!= Core.mempty))

instance Core.ToJSON PlayerScoreResetAllResponse
         where
        toJSON PlayerScoreResetAllResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("results" Core..=) Core.<$> results])


-- | A list of reset leaderboard entry resources.
--
-- /See:/ 'newPlayerScoreResetResponse' smart constructor.
data PlayerScoreResetResponse = PlayerScoreResetResponse
    {
      -- | The ID of an leaderboard for which player state has been updated.
      definitionId :: (Core.Maybe Core.Text)
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#playerScoreResetResponse@.
    , kind :: (Core.Maybe Core.Text)
      -- | The time spans of the updated score. Possible values are: - \"@ALL_TIME@\" - The score is an all-time score. - \"@WEEKLY@\" - The score is a weekly score. - \"@DAILY@\" - The score is a daily score.
    , resetScoreTimeSpans :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerScoreResetResponse' with the minimum fields required to make a request.
newPlayerScoreResetResponse 
    ::  PlayerScoreResetResponse
newPlayerScoreResetResponse =
  PlayerScoreResetResponse
    { definitionId = Core.Nothing
    , kind = Core.Nothing
    , resetScoreTimeSpans = Core.Nothing
    }

instance Core.FromJSON PlayerScoreResetResponse where
        parseJSON
          = Core.withObject "PlayerScoreResetResponse"
              (\ o ->
                 PlayerScoreResetResponse Core.<$>
                   (o Core..:? "definitionId") Core.<*>
                     (o Core..:? "kind")
                     Core.<*>
                     (o Core..:? "resetScoreTimeSpans" Core..!=
                        Core.mempty))

instance Core.ToJSON PlayerScoreResetResponse where
        toJSON PlayerScoreResetResponse{..}
          = Core.object
              (Core.catMaybes
                 [("definitionId" Core..=) Core.<$> definitionId,
                  ("kind" Core..=) Core.<$> kind,
                  ("resetScoreTimeSpans" Core..=) Core.<$>
                    resetScoreTimeSpans])


-- | Profile settings
--
-- /See:/ 'newProfileSettings' smart constructor.
data ProfileSettings = ProfileSettings
    {
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#profileSettings@.
      kind :: (Core.Maybe Core.Text)
      -- | 
    , profileVisible :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProfileSettings' with the minimum fields required to make a request.
newProfileSettings 
    ::  ProfileSettings
newProfileSettings =
  ProfileSettings {kind = Core.Nothing, profileVisible = Core.Nothing}

instance Core.FromJSON ProfileSettings where
        parseJSON
          = Core.withObject "ProfileSettings"
              (\ o ->
                 ProfileSettings Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "profileVisible"))

instance Core.ToJSON ProfileSettings where
        toJSON ProfileSettings{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("profileVisible" Core..=) Core.<$> profileVisible])


--
-- /See:/ 'newScoresResetMultipleForAllRequest' smart constructor.
data ScoresResetMultipleForAllRequest = ScoresResetMultipleForAllRequest
    {
      -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesManagement#scoresResetMultipleForAllRequest@.
      kind :: (Core.Maybe Core.Text)
      -- | The IDs of leaderboards to reset.
    , leaderboardIds :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScoresResetMultipleForAllRequest' with the minimum fields required to make a request.
newScoresResetMultipleForAllRequest 
    ::  ScoresResetMultipleForAllRequest
newScoresResetMultipleForAllRequest =
  ScoresResetMultipleForAllRequest
    {kind = Core.Nothing, leaderboardIds = Core.Nothing}

instance Core.FromJSON
           ScoresResetMultipleForAllRequest
         where
        parseJSON
          = Core.withObject "ScoresResetMultipleForAllRequest"
              (\ o ->
                 ScoresResetMultipleForAllRequest Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "leaderboard_ids" Core..!= Core.mempty))

instance Core.ToJSON ScoresResetMultipleForAllRequest
         where
        toJSON ScoresResetMultipleForAllRequest{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("leaderboard_ids" Core..=) Core.<$> leaderboardIds])

