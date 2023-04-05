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
-- Module      : Gogol.Games.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Games.Internal.Product
  ( -- * AchievementDefinition
    AchievementDefinition (..),
    newAchievementDefinition,

    -- * AchievementDefinitionsListResponse
    AchievementDefinitionsListResponse (..),
    newAchievementDefinitionsListResponse,

    -- * AchievementIncrementResponse
    AchievementIncrementResponse (..),
    newAchievementIncrementResponse,

    -- * AchievementRevealResponse
    AchievementRevealResponse (..),
    newAchievementRevealResponse,

    -- * AchievementSetStepsAtLeastResponse
    AchievementSetStepsAtLeastResponse (..),
    newAchievementSetStepsAtLeastResponse,

    -- * AchievementUnlockResponse
    AchievementUnlockResponse (..),
    newAchievementUnlockResponse,

    -- * AchievementUpdateMultipleRequest
    AchievementUpdateMultipleRequest (..),
    newAchievementUpdateMultipleRequest,

    -- * AchievementUpdateMultipleResponse
    AchievementUpdateMultipleResponse (..),
    newAchievementUpdateMultipleResponse,

    -- * AchievementUpdateRequest
    AchievementUpdateRequest (..),
    newAchievementUpdateRequest,

    -- * AchievementUpdateResponse
    AchievementUpdateResponse (..),
    newAchievementUpdateResponse,

    -- * Application
    Application (..),
    newApplication,

    -- * ApplicationCategory
    ApplicationCategory (..),
    newApplicationCategory,

    -- * ApplicationPlayerId
    ApplicationPlayerId (..),
    newApplicationPlayerId,

    -- * ApplicationVerifyResponse
    ApplicationVerifyResponse (..),
    newApplicationVerifyResponse,

    -- * Category
    Category (..),
    newCategory,

    -- * CategoryListResponse
    CategoryListResponse (..),
    newCategoryListResponse,

    -- * EndPoint
    EndPoint (..),
    newEndPoint,

    -- * EventBatchRecordFailure
    EventBatchRecordFailure (..),
    newEventBatchRecordFailure,

    -- * EventChild
    EventChild (..),
    newEventChild,

    -- * EventDefinition
    EventDefinition (..),
    newEventDefinition,

    -- * EventDefinitionListResponse
    EventDefinitionListResponse (..),
    newEventDefinitionListResponse,

    -- * EventPeriodRange
    EventPeriodRange (..),
    newEventPeriodRange,

    -- * EventPeriodUpdate
    EventPeriodUpdate (..),
    newEventPeriodUpdate,

    -- * EventRecordFailure
    EventRecordFailure (..),
    newEventRecordFailure,

    -- * EventRecordRequest
    EventRecordRequest (..),
    newEventRecordRequest,

    -- * EventUpdateRequest
    EventUpdateRequest (..),
    newEventUpdateRequest,

    -- * EventUpdateResponse
    EventUpdateResponse (..),
    newEventUpdateResponse,

    -- * GamesAchievementIncrement
    GamesAchievementIncrement (..),
    newGamesAchievementIncrement,

    -- * GamesAchievementSetStepsAtLeast
    GamesAchievementSetStepsAtLeast (..),
    newGamesAchievementSetStepsAtLeast,

    -- * GetMultipleApplicationPlayerIdsResponse
    GetMultipleApplicationPlayerIdsResponse (..),
    newGetMultipleApplicationPlayerIdsResponse,

    -- * ImageAsset
    ImageAsset (..),
    newImageAsset,

    -- * Instance
    Instance (..),
    newInstance,

    -- * InstanceAndroidDetails
    InstanceAndroidDetails (..),
    newInstanceAndroidDetails,

    -- * InstanceIosDetails
    InstanceIosDetails (..),
    newInstanceIosDetails,

    -- * InstanceWebDetails
    InstanceWebDetails (..),
    newInstanceWebDetails,

    -- * Leaderboard
    Leaderboard (..),
    newLeaderboard,

    -- * LeaderboardEntry
    LeaderboardEntry (..),
    newLeaderboardEntry,

    -- * LeaderboardListResponse
    LeaderboardListResponse (..),
    newLeaderboardListResponse,

    -- * LeaderboardScoreRank
    LeaderboardScoreRank (..),
    newLeaderboardScoreRank,

    -- * LeaderboardScores
    LeaderboardScores (..),
    newLeaderboardScores,

    -- * MetagameConfig
    MetagameConfig (..),
    newMetagameConfig,

    -- * Player
    Player (..),
    newPlayer,

    -- * Player_Name
    Player_Name (..),
    newPlayer_Name,

    -- * PlayerAchievement
    PlayerAchievement (..),
    newPlayerAchievement,

    -- * PlayerAchievementListResponse
    PlayerAchievementListResponse (..),
    newPlayerAchievementListResponse,

    -- * PlayerEvent
    PlayerEvent (..),
    newPlayerEvent,

    -- * PlayerEventListResponse
    PlayerEventListResponse (..),
    newPlayerEventListResponse,

    -- * PlayerExperienceInfo
    PlayerExperienceInfo (..),
    newPlayerExperienceInfo,

    -- * PlayerLeaderboardScore
    PlayerLeaderboardScore (..),
    newPlayerLeaderboardScore,

    -- * PlayerLeaderboardScoreListResponse
    PlayerLeaderboardScoreListResponse (..),
    newPlayerLeaderboardScoreListResponse,

    -- * PlayerLevel
    PlayerLevel (..),
    newPlayerLevel,

    -- * PlayerListResponse
    PlayerListResponse (..),
    newPlayerListResponse,

    -- * PlayerScore
    PlayerScore (..),
    newPlayerScore,

    -- * PlayerScoreListResponse
    PlayerScoreListResponse (..),
    newPlayerScoreListResponse,

    -- * PlayerScoreResponse
    PlayerScoreResponse (..),
    newPlayerScoreResponse,

    -- * PlayerScoreSubmissionList
    PlayerScoreSubmissionList (..),
    newPlayerScoreSubmissionList,

    -- * ProfileSettings
    ProfileSettings (..),
    newProfileSettings,

    -- * RevisionCheckResponse
    RevisionCheckResponse (..),
    newRevisionCheckResponse,

    -- * ScopedPlayerIds
    ScopedPlayerIds (..),
    newScopedPlayerIds,

    -- * ScoreSubmission
    ScoreSubmission (..),
    newScoreSubmission,

    -- * Snapshot
    Snapshot (..),
    newSnapshot,

    -- * SnapshotImage
    SnapshotImage (..),
    newSnapshotImage,

    -- * SnapshotListResponse
    SnapshotListResponse (..),
    newSnapshotListResponse,

    -- * StatsResponse
    StatsResponse (..),
    newStatsResponse,
  )
where

import Gogol.Games.Internal.Sum
import qualified Gogol.Prelude as Core

-- | An achievement definition object.
--
-- /See:/ 'newAchievementDefinition' smart constructor.
data AchievementDefinition = AchievementDefinition
  { -- | The type of the achievement.
    achievementType :: (Core.Maybe AchievementDefinition_AchievementType),
    -- | The description of the achievement.
    description :: (Core.Maybe Core.Text),
    -- | Experience points which will be earned when unlocking this achievement.
    experiencePoints :: (Core.Maybe Core.Int64),
    -- | The total steps for an incremental achievement as a string.
    formattedTotalSteps :: (Core.Maybe Core.Text),
    -- | The ID of the achievement.
    id :: (Core.Maybe Core.Text),
    -- | The initial state of the achievement.
    initialState :: (Core.Maybe AchievementDefinition_InitialState),
    -- | Indicates whether the revealed icon image being returned is a default image, or is provided by the game.
    isRevealedIconUrlDefault :: (Core.Maybe Core.Bool),
    -- | Indicates whether the unlocked icon image being returned is a default image, or is game-provided.
    isUnlockedIconUrlDefault :: (Core.Maybe Core.Bool),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementDefinition@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the achievement.
    name :: (Core.Maybe Core.Text),
    -- | The image URL for the revealed achievement icon.
    revealedIconUrl :: (Core.Maybe Core.Text),
    -- | The total steps for an incremental achievement.
    totalSteps :: (Core.Maybe Core.Int32),
    -- | The image URL for the unlocked achievement icon.
    unlockedIconUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementDefinition' with the minimum fields required to make a request.
newAchievementDefinition ::
  AchievementDefinition
newAchievementDefinition =
  AchievementDefinition
    { achievementType = Core.Nothing,
      description = Core.Nothing,
      experiencePoints = Core.Nothing,
      formattedTotalSteps = Core.Nothing,
      id = Core.Nothing,
      initialState = Core.Nothing,
      isRevealedIconUrlDefault = Core.Nothing,
      isUnlockedIconUrlDefault = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      revealedIconUrl = Core.Nothing,
      totalSteps = Core.Nothing,
      unlockedIconUrl = Core.Nothing
    }

instance Core.FromJSON AchievementDefinition where
  parseJSON =
    Core.withObject
      "AchievementDefinition"
      ( \o ->
          AchievementDefinition
            Core.<$> (o Core..:? "achievementType")
            Core.<*> (o Core..:? "description")
            Core.<*> ( o Core..:? "experiencePoints"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "formattedTotalSteps")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "initialState")
            Core.<*> (o Core..:? "isRevealedIconUrlDefault")
            Core.<*> (o Core..:? "isUnlockedIconUrlDefault")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "revealedIconUrl")
            Core.<*> (o Core..:? "totalSteps")
            Core.<*> (o Core..:? "unlockedIconUrl")
      )

instance Core.ToJSON AchievementDefinition where
  toJSON AchievementDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("achievementType" Core..=)
              Core.<$> achievementType,
            ("description" Core..=) Core.<$> description,
            ("experiencePoints" Core..=) Core.. Core.AsText
              Core.<$> experiencePoints,
            ("formattedTotalSteps" Core..=)
              Core.<$> formattedTotalSteps,
            ("id" Core..=) Core.<$> id,
            ("initialState" Core..=) Core.<$> initialState,
            ("isRevealedIconUrlDefault" Core..=)
              Core.<$> isRevealedIconUrlDefault,
            ("isUnlockedIconUrlDefault" Core..=)
              Core.<$> isUnlockedIconUrlDefault,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("revealedIconUrl" Core..=) Core.<$> revealedIconUrl,
            ("totalSteps" Core..=) Core.<$> totalSteps,
            ("unlockedIconUrl" Core..=)
              Core.<$> unlockedIconUrl
          ]
      )

-- | A list of achievement definition objects.
--
-- /See:/ 'newAchievementDefinitionsListResponse' smart constructor.
data AchievementDefinitionsListResponse = AchievementDefinitionsListResponse
  { -- | The achievement definitions.
    items :: (Core.Maybe [AchievementDefinition]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementDefinitionsListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Token corresponding to the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementDefinitionsListResponse' with the minimum fields required to make a request.
newAchievementDefinitionsListResponse ::
  AchievementDefinitionsListResponse
newAchievementDefinitionsListResponse =
  AchievementDefinitionsListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    AchievementDefinitionsListResponse
  where
  parseJSON =
    Core.withObject
      "AchievementDefinitionsListResponse"
      ( \o ->
          AchievementDefinitionsListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    AchievementDefinitionsListResponse
  where
  toJSON AchievementDefinitionsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An achievement increment response
--
-- /See:/ 'newAchievementIncrementResponse' smart constructor.
data AchievementIncrementResponse = AchievementIncrementResponse
  { -- | The current steps recorded for this incremental achievement.
    currentSteps :: (Core.Maybe Core.Int32),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementIncrementResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Whether the current steps for the achievement has reached the number of steps required to unlock.
    newlyUnlocked' :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementIncrementResponse' with the minimum fields required to make a request.
newAchievementIncrementResponse ::
  AchievementIncrementResponse
newAchievementIncrementResponse =
  AchievementIncrementResponse
    { currentSteps = Core.Nothing,
      kind = Core.Nothing,
      newlyUnlocked' = Core.Nothing
    }

instance Core.FromJSON AchievementIncrementResponse where
  parseJSON =
    Core.withObject
      "AchievementIncrementResponse"
      ( \o ->
          AchievementIncrementResponse
            Core.<$> (o Core..:? "currentSteps")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "newlyUnlocked")
      )

instance Core.ToJSON AchievementIncrementResponse where
  toJSON AchievementIncrementResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentSteps" Core..=) Core.<$> currentSteps,
            ("kind" Core..=) Core.<$> kind,
            ("newlyUnlocked" Core..=) Core.<$> newlyUnlocked'
          ]
      )

-- | An achievement reveal response
--
-- /See:/ 'newAchievementRevealResponse' smart constructor.
data AchievementRevealResponse = AchievementRevealResponse
  { -- | The current state of the achievement for which a reveal was attempted. This might be @UNLOCKED@ if the achievement was already unlocked.
    currentState :: (Core.Maybe AchievementRevealResponse_CurrentState),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementRevealResponse@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementRevealResponse' with the minimum fields required to make a request.
newAchievementRevealResponse ::
  AchievementRevealResponse
newAchievementRevealResponse =
  AchievementRevealResponse {currentState = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON AchievementRevealResponse where
  parseJSON =
    Core.withObject
      "AchievementRevealResponse"
      ( \o ->
          AchievementRevealResponse
            Core.<$> (o Core..:? "currentState")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON AchievementRevealResponse where
  toJSON AchievementRevealResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentState" Core..=) Core.<$> currentState,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | An achievement set steps at least response.
--
-- /See:/ 'newAchievementSetStepsAtLeastResponse' smart constructor.
data AchievementSetStepsAtLeastResponse = AchievementSetStepsAtLeastResponse
  { -- | The current steps recorded for this incremental achievement.
    currentSteps :: (Core.Maybe Core.Int32),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementSetStepsAtLeastResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Whether the current steps for the achievement has reached the number of steps required to unlock.
    newlyUnlocked' :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementSetStepsAtLeastResponse' with the minimum fields required to make a request.
newAchievementSetStepsAtLeastResponse ::
  AchievementSetStepsAtLeastResponse
newAchievementSetStepsAtLeastResponse =
  AchievementSetStepsAtLeastResponse
    { currentSteps = Core.Nothing,
      kind = Core.Nothing,
      newlyUnlocked' = Core.Nothing
    }

instance
  Core.FromJSON
    AchievementSetStepsAtLeastResponse
  where
  parseJSON =
    Core.withObject
      "AchievementSetStepsAtLeastResponse"
      ( \o ->
          AchievementSetStepsAtLeastResponse
            Core.<$> (o Core..:? "currentSteps")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "newlyUnlocked")
      )

instance
  Core.ToJSON
    AchievementSetStepsAtLeastResponse
  where
  toJSON AchievementSetStepsAtLeastResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentSteps" Core..=) Core.<$> currentSteps,
            ("kind" Core..=) Core.<$> kind,
            ("newlyUnlocked" Core..=) Core.<$> newlyUnlocked'
          ]
      )

-- | An achievement unlock response
--
-- /See:/ 'newAchievementUnlockResponse' smart constructor.
data AchievementUnlockResponse = AchievementUnlockResponse
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementUnlockResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Whether this achievement was newly unlocked (that is, whether the unlock request for the achievement was the first for the player).
    newlyUnlocked' :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementUnlockResponse' with the minimum fields required to make a request.
newAchievementUnlockResponse ::
  AchievementUnlockResponse
newAchievementUnlockResponse =
  AchievementUnlockResponse {kind = Core.Nothing, newlyUnlocked' = Core.Nothing}

instance Core.FromJSON AchievementUnlockResponse where
  parseJSON =
    Core.withObject
      "AchievementUnlockResponse"
      ( \o ->
          AchievementUnlockResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "newlyUnlocked")
      )

instance Core.ToJSON AchievementUnlockResponse where
  toJSON AchievementUnlockResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("newlyUnlocked" Core..=) Core.<$> newlyUnlocked'
          ]
      )

-- | A list of achievement update requests.
--
-- /See:/ 'newAchievementUpdateMultipleRequest' smart constructor.
data AchievementUpdateMultipleRequest = AchievementUpdateMultipleRequest
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementUpdateMultipleRequest@.
    kind :: (Core.Maybe Core.Text),
    -- | The individual achievement update requests.
    updates :: (Core.Maybe [AchievementUpdateRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementUpdateMultipleRequest' with the minimum fields required to make a request.
newAchievementUpdateMultipleRequest ::
  AchievementUpdateMultipleRequest
newAchievementUpdateMultipleRequest =
  AchievementUpdateMultipleRequest {kind = Core.Nothing, updates = Core.Nothing}

instance
  Core.FromJSON
    AchievementUpdateMultipleRequest
  where
  parseJSON =
    Core.withObject
      "AchievementUpdateMultipleRequest"
      ( \o ->
          AchievementUpdateMultipleRequest
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "updates")
      )

instance Core.ToJSON AchievementUpdateMultipleRequest where
  toJSON AchievementUpdateMultipleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("updates" Core..=) Core.<$> updates
          ]
      )

-- | Response message for UpdateMultipleAchievements rpc.
--
-- /See:/ 'newAchievementUpdateMultipleResponse' smart constructor.
data AchievementUpdateMultipleResponse = AchievementUpdateMultipleResponse
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementUpdateMultipleResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The updated state of the achievements.
    updatedAchievements :: (Core.Maybe [AchievementUpdateResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementUpdateMultipleResponse' with the minimum fields required to make a request.
newAchievementUpdateMultipleResponse ::
  AchievementUpdateMultipleResponse
newAchievementUpdateMultipleResponse =
  AchievementUpdateMultipleResponse
    { kind = Core.Nothing,
      updatedAchievements = Core.Nothing
    }

instance
  Core.FromJSON
    AchievementUpdateMultipleResponse
  where
  parseJSON =
    Core.withObject
      "AchievementUpdateMultipleResponse"
      ( \o ->
          AchievementUpdateMultipleResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "updatedAchievements")
      )

instance
  Core.ToJSON
    AchievementUpdateMultipleResponse
  where
  toJSON AchievementUpdateMultipleResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("updatedAchievements" Core..=)
              Core.<$> updatedAchievements
          ]
      )

-- | A request to update an achievement.
--
-- /See:/ 'newAchievementUpdateRequest' smart constructor.
data AchievementUpdateRequest = AchievementUpdateRequest
  { -- | The achievement this update is being applied to.
    achievementId :: (Core.Maybe Core.Text),
    -- | The payload if an update of type @INCREMENT@ was requested for the achievement.
    incrementPayload :: (Core.Maybe GamesAchievementIncrement),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementUpdateRequest@.
    kind :: (Core.Maybe Core.Text),
    -- | The payload if an update of type @SET_STEPS_AT_LEAST@ was requested for the achievement.
    setStepsAtLeastPayload :: (Core.Maybe GamesAchievementSetStepsAtLeast),
    -- | The type of update being applied.
    updateType :: (Core.Maybe AchievementUpdateRequest_UpdateType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementUpdateRequest' with the minimum fields required to make a request.
newAchievementUpdateRequest ::
  AchievementUpdateRequest
newAchievementUpdateRequest =
  AchievementUpdateRequest
    { achievementId = Core.Nothing,
      incrementPayload = Core.Nothing,
      kind = Core.Nothing,
      setStepsAtLeastPayload = Core.Nothing,
      updateType = Core.Nothing
    }

instance Core.FromJSON AchievementUpdateRequest where
  parseJSON =
    Core.withObject
      "AchievementUpdateRequest"
      ( \o ->
          AchievementUpdateRequest
            Core.<$> (o Core..:? "achievementId")
            Core.<*> (o Core..:? "incrementPayload")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "setStepsAtLeastPayload")
            Core.<*> (o Core..:? "updateType")
      )

instance Core.ToJSON AchievementUpdateRequest where
  toJSON AchievementUpdateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("achievementId" Core..=) Core.<$> achievementId,
            ("incrementPayload" Core..=)
              Core.<$> incrementPayload,
            ("kind" Core..=) Core.<$> kind,
            ("setStepsAtLeastPayload" Core..=)
              Core.<$> setStepsAtLeastPayload,
            ("updateType" Core..=) Core.<$> updateType
          ]
      )

-- | An updated achievement.
--
-- /See:/ 'newAchievementUpdateResponse' smart constructor.
data AchievementUpdateResponse = AchievementUpdateResponse
  { -- | The achievement this update is was applied to.
    achievementId :: (Core.Maybe Core.Text),
    -- | The current state of the achievement.
    currentState :: (Core.Maybe AchievementUpdateResponse_CurrentState),
    -- | The current steps recorded for this achievement if it is incremental.
    currentSteps :: (Core.Maybe Core.Int32),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#achievementUpdateResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Whether this achievement was newly unlocked (that is, whether the unlock request for the achievement was the first for the player).
    newlyUnlocked' :: (Core.Maybe Core.Bool),
    -- | Whether the requested updates actually affected the achievement.
    updateOccurred :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementUpdateResponse' with the minimum fields required to make a request.
newAchievementUpdateResponse ::
  AchievementUpdateResponse
newAchievementUpdateResponse =
  AchievementUpdateResponse
    { achievementId = Core.Nothing,
      currentState = Core.Nothing,
      currentSteps = Core.Nothing,
      kind = Core.Nothing,
      newlyUnlocked' = Core.Nothing,
      updateOccurred = Core.Nothing
    }

instance Core.FromJSON AchievementUpdateResponse where
  parseJSON =
    Core.withObject
      "AchievementUpdateResponse"
      ( \o ->
          AchievementUpdateResponse
            Core.<$> (o Core..:? "achievementId")
            Core.<*> (o Core..:? "currentState")
            Core.<*> (o Core..:? "currentSteps")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "newlyUnlocked")
            Core.<*> (o Core..:? "updateOccurred")
      )

instance Core.ToJSON AchievementUpdateResponse where
  toJSON AchievementUpdateResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("achievementId" Core..=) Core.<$> achievementId,
            ("currentState" Core..=) Core.<$> currentState,
            ("currentSteps" Core..=) Core.<$> currentSteps,
            ("kind" Core..=) Core.<$> kind,
            ("newlyUnlocked" Core..=) Core.<$> newlyUnlocked',
            ("updateOccurred" Core..=) Core.<$> updateOccurred
          ]
      )

-- | The Application resource.
--
-- /See:/ 'newApplication' smart constructor.
data Application = Application
  { -- | The number of achievements visible to the currently authenticated player.
    achievementCount :: (Core.Maybe Core.Int32),
    -- | The assets of the application.
    assets :: (Core.Maybe [ImageAsset]),
    -- | The author of the application.
    author :: (Core.Maybe Core.Text),
    -- | The category of the application.
    category :: (Core.Maybe ApplicationCategory),
    -- | The description of the application.
    description :: (Core.Maybe Core.Text),
    -- | A list of features that have been enabled for the application.
    enabledFeatures :: (Core.Maybe [Application_EnabledFeaturesItem]),
    -- | The ID of the application.
    id :: (Core.Maybe Core.Text),
    -- | The instances of the application.
    instances :: (Core.Maybe [Instance]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#application@.
    kind :: (Core.Maybe Core.Text),
    -- | The last updated timestamp of the application.
    lastUpdatedTimestamp :: (Core.Maybe Core.Int64),
    -- | The number of leaderboards visible to the currently authenticated player.
    leaderboardCount :: (Core.Maybe Core.Int32),
    -- | The name of the application.
    name :: (Core.Maybe Core.Text),
    -- | A hint to the client UI for what color to use as an app-themed color. The color is given as an RGB triplet (e.g. \"E0E0E0\").
    themeColor :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
newApplication ::
  Application
newApplication =
  Application
    { achievementCount = Core.Nothing,
      assets = Core.Nothing,
      author = Core.Nothing,
      category = Core.Nothing,
      description = Core.Nothing,
      enabledFeatures = Core.Nothing,
      id = Core.Nothing,
      instances = Core.Nothing,
      kind = Core.Nothing,
      lastUpdatedTimestamp = Core.Nothing,
      leaderboardCount = Core.Nothing,
      name = Core.Nothing,
      themeColor = Core.Nothing
    }

instance Core.FromJSON Application where
  parseJSON =
    Core.withObject
      "Application"
      ( \o ->
          Application
            Core.<$> (o Core..:? "achievement_count")
            Core.<*> (o Core..:? "assets")
            Core.<*> (o Core..:? "author")
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "enabledFeatures")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "instances")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "lastUpdatedTimestamp"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "leaderboard_count")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "themeColor")
      )

instance Core.ToJSON Application where
  toJSON Application {..} =
    Core.object
      ( Core.catMaybes
          [ ("achievement_count" Core..=)
              Core.<$> achievementCount,
            ("assets" Core..=) Core.<$> assets,
            ("author" Core..=) Core.<$> author,
            ("category" Core..=) Core.<$> category,
            ("description" Core..=) Core.<$> description,
            ("enabledFeatures" Core..=) Core.<$> enabledFeatures,
            ("id" Core..=) Core.<$> id,
            ("instances" Core..=) Core.<$> instances,
            ("kind" Core..=) Core.<$> kind,
            ("lastUpdatedTimestamp" Core..=) Core.. Core.AsText
              Core.<$> lastUpdatedTimestamp,
            ("leaderboard_count" Core..=)
              Core.<$> leaderboardCount,
            ("name" Core..=) Core.<$> name,
            ("themeColor" Core..=) Core.<$> themeColor
          ]
      )

-- | An application category object.
--
-- /See:/ 'newApplicationCategory' smart constructor.
data ApplicationCategory = ApplicationCategory
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#applicationCategory@.
    kind :: (Core.Maybe Core.Text),
    -- | The primary category.
    primary :: (Core.Maybe Core.Text),
    -- | The secondary category.
    secondary :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationCategory' with the minimum fields required to make a request.
newApplicationCategory ::
  ApplicationCategory
newApplicationCategory =
  ApplicationCategory
    { kind = Core.Nothing,
      primary = Core.Nothing,
      secondary = Core.Nothing
    }

instance Core.FromJSON ApplicationCategory where
  parseJSON =
    Core.withObject
      "ApplicationCategory"
      ( \o ->
          ApplicationCategory
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "secondary")
      )

instance Core.ToJSON ApplicationCategory where
  toJSON ApplicationCategory {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("primary" Core..=) Core.<$> primary,
            ("secondary" Core..=) Core.<$> secondary
          ]
      )

-- | Primary scoped player identifier for an application.
--
-- /See:/ 'newApplicationPlayerId' smart constructor.
data ApplicationPlayerId = ApplicationPlayerId
  { -- | The application that this player identifier is for.
    applicationId :: (Core.Maybe Core.Text),
    -- | The player identifier for the application.
    playerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationPlayerId' with the minimum fields required to make a request.
newApplicationPlayerId ::
  ApplicationPlayerId
newApplicationPlayerId =
  ApplicationPlayerId {applicationId = Core.Nothing, playerId = Core.Nothing}

instance Core.FromJSON ApplicationPlayerId where
  parseJSON =
    Core.withObject
      "ApplicationPlayerId"
      ( \o ->
          ApplicationPlayerId
            Core.<$> (o Core..:? "applicationId")
            Core.<*> (o Core..:? "playerId")
      )

instance Core.ToJSON ApplicationPlayerId where
  toJSON ApplicationPlayerId {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationId" Core..=) Core.<$> applicationId,
            ("playerId" Core..=) Core.<$> playerId
          ]
      )

-- | A third party application verification response resource.
--
-- /See:/ 'newApplicationVerifyResponse' smart constructor.
data ApplicationVerifyResponse = ApplicationVerifyResponse
  { -- | An alternate ID that was once used for the player that was issued the auth token used in this request. (This field is not normally populated.)
    alternatePlayerId :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#applicationVerifyResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The ID of the player that was issued the auth token used in this request.
    playerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApplicationVerifyResponse' with the minimum fields required to make a request.
newApplicationVerifyResponse ::
  ApplicationVerifyResponse
newApplicationVerifyResponse =
  ApplicationVerifyResponse
    { alternatePlayerId = Core.Nothing,
      kind = Core.Nothing,
      playerId = Core.Nothing
    }

instance Core.FromJSON ApplicationVerifyResponse where
  parseJSON =
    Core.withObject
      "ApplicationVerifyResponse"
      ( \o ->
          ApplicationVerifyResponse
            Core.<$> (o Core..:? "alternate_player_id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "player_id")
      )

instance Core.ToJSON ApplicationVerifyResponse where
  toJSON ApplicationVerifyResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternate_player_id" Core..=)
              Core.<$> alternatePlayerId,
            ("kind" Core..=) Core.<$> kind,
            ("player_id" Core..=) Core.<$> playerId
          ]
      )

-- | Data related to individual game categories.
--
-- /See:/ 'newCategory' smart constructor.
data Category = Category
  { -- | The category name.
    category :: (Core.Maybe Core.Text),
    -- | Experience points earned in this category.
    experiencePoints :: (Core.Maybe Core.Int64),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#category@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Category' with the minimum fields required to make a request.
newCategory ::
  Category
newCategory =
  Category
    { category = Core.Nothing,
      experiencePoints = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON Category where
  parseJSON =
    Core.withObject
      "Category"
      ( \o ->
          Category
            Core.<$> (o Core..:? "category")
            Core.<*> ( o Core..:? "experiencePoints"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON Category where
  toJSON Category {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("experiencePoints" Core..=) Core.. Core.AsText
              Core.<$> experiencePoints,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | A third party list metagame categories response.
--
-- /See:/ 'newCategoryListResponse' smart constructor.
data CategoryListResponse = CategoryListResponse
  { -- | The list of categories with usage data.
    items :: (Core.Maybe [Category]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#categoryListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Token corresponding to the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CategoryListResponse' with the minimum fields required to make a request.
newCategoryListResponse ::
  CategoryListResponse
newCategoryListResponse =
  CategoryListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CategoryListResponse where
  parseJSON =
    Core.withObject
      "CategoryListResponse"
      ( \o ->
          CategoryListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CategoryListResponse where
  toJSON CategoryListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Container for a URL end point of the requested type.
--
-- /See:/ 'newEndPoint' smart constructor.
newtype EndPoint = EndPoint
  { -- | A URL suitable for loading in a web browser for the requested endpoint.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EndPoint' with the minimum fields required to make a request.
newEndPoint ::
  EndPoint
newEndPoint = EndPoint {url = Core.Nothing}

instance Core.FromJSON EndPoint where
  parseJSON =
    Core.withObject
      "EndPoint"
      (\o -> EndPoint Core.<$> (o Core..:? "url"))

instance Core.ToJSON EndPoint where
  toJSON EndPoint {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | A batch update failure resource.
--
-- /See:/ 'newEventBatchRecordFailure' smart constructor.
data EventBatchRecordFailure = EventBatchRecordFailure
  { -- | The cause for the update failure.
    failureCause :: (Core.Maybe EventBatchRecordFailure_FailureCause),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventBatchRecordFailure@.
    kind :: (Core.Maybe Core.Text),
    -- | The time range which was rejected; empty for a request-wide failure.
    range :: (Core.Maybe EventPeriodRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventBatchRecordFailure' with the minimum fields required to make a request.
newEventBatchRecordFailure ::
  EventBatchRecordFailure
newEventBatchRecordFailure =
  EventBatchRecordFailure
    { failureCause = Core.Nothing,
      kind = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON EventBatchRecordFailure where
  parseJSON =
    Core.withObject
      "EventBatchRecordFailure"
      ( \o ->
          EventBatchRecordFailure
            Core.<$> (o Core..:? "failureCause")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON EventBatchRecordFailure where
  toJSON EventBatchRecordFailure {..} =
    Core.object
      ( Core.catMaybes
          [ ("failureCause" Core..=) Core.<$> failureCause,
            ("kind" Core..=) Core.<$> kind,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | An event child relationship resource.
--
-- /See:/ 'newEventChild' smart constructor.
data EventChild = EventChild
  { -- | The ID of the child event.
    childId :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventChild@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventChild' with the minimum fields required to make a request.
newEventChild ::
  EventChild
newEventChild = EventChild {childId = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON EventChild where
  parseJSON =
    Core.withObject
      "EventChild"
      ( \o ->
          EventChild
            Core.<$> (o Core..:? "childId") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON EventChild where
  toJSON EventChild {..} =
    Core.object
      ( Core.catMaybes
          [ ("childId" Core..=) Core.<$> childId,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | An event definition resource.
--
-- /See:/ 'newEventDefinition' smart constructor.
data EventDefinition = EventDefinition
  { -- | A list of events that are a child of this event.
    childEvents :: (Core.Maybe [EventChild]),
    -- | Description of what this event represents.
    description :: (Core.Maybe Core.Text),
    -- | The name to display for the event.
    displayName :: (Core.Maybe Core.Text),
    -- | The ID of the event.
    id :: (Core.Maybe Core.Text),
    -- | The base URL for the image that represents the event.
    imageUrl :: (Core.Maybe Core.Text),
    -- | Indicates whether the icon image being returned is a default image, or is game-provided.
    isDefaultImageUrl :: (Core.Maybe Core.Bool),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventDefinition@.
    kind :: (Core.Maybe Core.Text),
    -- | The visibility of event being tracked in this definition.
    visibility :: (Core.Maybe EventDefinition_Visibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventDefinition' with the minimum fields required to make a request.
newEventDefinition ::
  EventDefinition
newEventDefinition =
  EventDefinition
    { childEvents = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      id = Core.Nothing,
      imageUrl = Core.Nothing,
      isDefaultImageUrl = Core.Nothing,
      kind = Core.Nothing,
      visibility = Core.Nothing
    }

instance Core.FromJSON EventDefinition where
  parseJSON =
    Core.withObject
      "EventDefinition"
      ( \o ->
          EventDefinition
            Core.<$> (o Core..:? "childEvents")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "isDefaultImageUrl")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "visibility")
      )

instance Core.ToJSON EventDefinition where
  toJSON EventDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("childEvents" Core..=) Core.<$> childEvents,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("isDefaultImageUrl" Core..=)
              Core.<$> isDefaultImageUrl,
            ("kind" Core..=) Core.<$> kind,
            ("visibility" Core..=) Core.<$> visibility
          ]
      )

-- | A ListDefinitions response.
--
-- /See:/ 'newEventDefinitionListResponse' smart constructor.
data EventDefinitionListResponse = EventDefinitionListResponse
  { -- | The event definitions.
    items :: (Core.Maybe [EventDefinition]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventDefinitionListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The pagination token for the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventDefinitionListResponse' with the minimum fields required to make a request.
newEventDefinitionListResponse ::
  EventDefinitionListResponse
newEventDefinitionListResponse =
  EventDefinitionListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON EventDefinitionListResponse where
  parseJSON =
    Core.withObject
      "EventDefinitionListResponse"
      ( \o ->
          EventDefinitionListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON EventDefinitionListResponse where
  toJSON EventDefinitionListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An event period time range.
--
-- /See:/ 'newEventPeriodRange' smart constructor.
data EventPeriodRange = EventPeriodRange
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventPeriodRange@.
    kind :: (Core.Maybe Core.Text),
    -- | The time when this update period ends, in millis, since 1970 UTC (Unix Epoch).
    periodEndMillis :: (Core.Maybe Core.Int64),
    -- | The time when this update period begins, in millis, since 1970 UTC (Unix Epoch).
    periodStartMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventPeriodRange' with the minimum fields required to make a request.
newEventPeriodRange ::
  EventPeriodRange
newEventPeriodRange =
  EventPeriodRange
    { kind = Core.Nothing,
      periodEndMillis = Core.Nothing,
      periodStartMillis = Core.Nothing
    }

instance Core.FromJSON EventPeriodRange where
  parseJSON =
    Core.withObject
      "EventPeriodRange"
      ( \o ->
          EventPeriodRange
            Core.<$> (o Core..:? "kind")
            Core.<*> ( o Core..:? "periodEndMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "periodStartMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON EventPeriodRange where
  toJSON EventPeriodRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("periodEndMillis" Core..=) Core.. Core.AsText
              Core.<$> periodEndMillis,
            ("periodStartMillis" Core..=) Core.. Core.AsText
              Core.<$> periodStartMillis
          ]
      )

-- | An event period update resource.
--
-- /See:/ 'newEventPeriodUpdate' smart constructor.
data EventPeriodUpdate = EventPeriodUpdate
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventPeriodUpdate@.
    kind :: (Core.Maybe Core.Text),
    -- | The time period being covered by this update.
    timePeriod :: (Core.Maybe EventPeriodRange),
    -- | The updates being made for this time period.
    updates :: (Core.Maybe [EventUpdateRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventPeriodUpdate' with the minimum fields required to make a request.
newEventPeriodUpdate ::
  EventPeriodUpdate
newEventPeriodUpdate =
  EventPeriodUpdate
    { kind = Core.Nothing,
      timePeriod = Core.Nothing,
      updates = Core.Nothing
    }

instance Core.FromJSON EventPeriodUpdate where
  parseJSON =
    Core.withObject
      "EventPeriodUpdate"
      ( \o ->
          EventPeriodUpdate
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "timePeriod")
            Core.<*> (o Core..:? "updates")
      )

instance Core.ToJSON EventPeriodUpdate where
  toJSON EventPeriodUpdate {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("timePeriod" Core..=) Core.<$> timePeriod,
            ("updates" Core..=) Core.<$> updates
          ]
      )

-- | An event update failure resource.
--
-- /See:/ 'newEventRecordFailure' smart constructor.
data EventRecordFailure = EventRecordFailure
  { -- | The ID of the event that was not updated.
    eventId :: (Core.Maybe Core.Text),
    -- | The cause for the update failure.
    failureCause :: (Core.Maybe EventRecordFailure_FailureCause),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventRecordFailure@.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventRecordFailure' with the minimum fields required to make a request.
newEventRecordFailure ::
  EventRecordFailure
newEventRecordFailure =
  EventRecordFailure
    { eventId = Core.Nothing,
      failureCause = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON EventRecordFailure where
  parseJSON =
    Core.withObject
      "EventRecordFailure"
      ( \o ->
          EventRecordFailure
            Core.<$> (o Core..:? "eventId")
            Core.<*> (o Core..:? "failureCause")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON EventRecordFailure where
  toJSON EventRecordFailure {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventId" Core..=) Core.<$> eventId,
            ("failureCause" Core..=) Core.<$> failureCause,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | An event period update resource.
--
-- /See:/ 'newEventRecordRequest' smart constructor.
data EventRecordRequest = EventRecordRequest
  { -- | The current time when this update was sent, in milliseconds, since 1970 UTC (Unix Epoch).
    currentTimeMillis :: (Core.Maybe Core.Int64),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventRecordRequest@.
    kind :: (Core.Maybe Core.Text),
    -- | The request ID used to identify this attempt to record events.
    requestId :: (Core.Maybe Core.Int64),
    -- | A list of the time period updates being made in this request.
    timePeriods :: (Core.Maybe [EventPeriodUpdate])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventRecordRequest' with the minimum fields required to make a request.
newEventRecordRequest ::
  EventRecordRequest
newEventRecordRequest =
  EventRecordRequest
    { currentTimeMillis = Core.Nothing,
      kind = Core.Nothing,
      requestId = Core.Nothing,
      timePeriods = Core.Nothing
    }

instance Core.FromJSON EventRecordRequest where
  parseJSON =
    Core.withObject
      "EventRecordRequest"
      ( \o ->
          EventRecordRequest
            Core.<$> ( o Core..:? "currentTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "requestId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "timePeriods")
      )

instance Core.ToJSON EventRecordRequest where
  toJSON EventRecordRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> currentTimeMillis,
            ("kind" Core..=) Core.<$> kind,
            ("requestId" Core..=) Core.. Core.AsText
              Core.<$> requestId,
            ("timePeriods" Core..=) Core.<$> timePeriods
          ]
      )

-- | An event period update resource.
--
-- /See:/ 'newEventUpdateRequest' smart constructor.
data EventUpdateRequest = EventUpdateRequest
  { -- | The ID of the event being modified in this update.
    definitionId :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventUpdateRequest@.
    kind :: (Core.Maybe Core.Text),
    -- | The number of times this event occurred in this time period.
    updateCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventUpdateRequest' with the minimum fields required to make a request.
newEventUpdateRequest ::
  EventUpdateRequest
newEventUpdateRequest =
  EventUpdateRequest
    { definitionId = Core.Nothing,
      kind = Core.Nothing,
      updateCount = Core.Nothing
    }

instance Core.FromJSON EventUpdateRequest where
  parseJSON =
    Core.withObject
      "EventUpdateRequest"
      ( \o ->
          EventUpdateRequest
            Core.<$> (o Core..:? "definitionId")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "updateCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON EventUpdateRequest where
  toJSON EventUpdateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("definitionId" Core..=) Core.<$> definitionId,
            ("kind" Core..=) Core.<$> kind,
            ("updateCount" Core..=) Core.. Core.AsText
              Core.<$> updateCount
          ]
      )

-- | An event period update resource.
--
-- /See:/ 'newEventUpdateResponse' smart constructor.
data EventUpdateResponse = EventUpdateResponse
  { -- | Any batch-wide failures which occurred applying updates.
    batchFailures :: (Core.Maybe [EventBatchRecordFailure]),
    -- | Any failures updating a particular event.
    eventFailures :: (Core.Maybe [EventRecordFailure]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#eventUpdateResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The current status of any updated events
    playerEvents :: (Core.Maybe [PlayerEvent])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventUpdateResponse' with the minimum fields required to make a request.
newEventUpdateResponse ::
  EventUpdateResponse
newEventUpdateResponse =
  EventUpdateResponse
    { batchFailures = Core.Nothing,
      eventFailures = Core.Nothing,
      kind = Core.Nothing,
      playerEvents = Core.Nothing
    }

instance Core.FromJSON EventUpdateResponse where
  parseJSON =
    Core.withObject
      "EventUpdateResponse"
      ( \o ->
          EventUpdateResponse
            Core.<$> (o Core..:? "batchFailures")
            Core.<*> (o Core..:? "eventFailures")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "playerEvents")
      )

instance Core.ToJSON EventUpdateResponse where
  toJSON EventUpdateResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchFailures" Core..=) Core.<$> batchFailures,
            ("eventFailures" Core..=) Core.<$> eventFailures,
            ("kind" Core..=) Core.<$> kind,
            ("playerEvents" Core..=) Core.<$> playerEvents
          ]
      )

-- | The payload to request to increment an achievement.
--
-- /See:/ 'newGamesAchievementIncrement' smart constructor.
data GamesAchievementIncrement = GamesAchievementIncrement
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#GamesAchievementIncrement@.
    kind :: (Core.Maybe Core.Text),
    -- | The requestId associated with an increment to an achievement.
    requestId :: (Core.Maybe Core.Int64),
    -- | The number of steps to be incremented.
    steps :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAchievementIncrement' with the minimum fields required to make a request.
newGamesAchievementIncrement ::
  GamesAchievementIncrement
newGamesAchievementIncrement =
  GamesAchievementIncrement
    { kind = Core.Nothing,
      requestId = Core.Nothing,
      steps = Core.Nothing
    }

instance Core.FromJSON GamesAchievementIncrement where
  parseJSON =
    Core.withObject
      "GamesAchievementIncrement"
      ( \o ->
          GamesAchievementIncrement
            Core.<$> (o Core..:? "kind")
            Core.<*> ( o Core..:? "requestId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "steps")
      )

instance Core.ToJSON GamesAchievementIncrement where
  toJSON GamesAchievementIncrement {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("requestId" Core..=) Core.. Core.AsText
              Core.<$> requestId,
            ("steps" Core..=) Core.<$> steps
          ]
      )

-- | The payload to request to increment an achievement.
--
-- /See:/ 'newGamesAchievementSetStepsAtLeast' smart constructor.
data GamesAchievementSetStepsAtLeast = GamesAchievementSetStepsAtLeast
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#GamesAchievementSetStepsAtLeast@.
    kind :: (Core.Maybe Core.Text),
    -- | The minimum number of steps for the achievement to be set to.
    steps :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAchievementSetStepsAtLeast' with the minimum fields required to make a request.
newGamesAchievementSetStepsAtLeast ::
  GamesAchievementSetStepsAtLeast
newGamesAchievementSetStepsAtLeast =
  GamesAchievementSetStepsAtLeast {kind = Core.Nothing, steps = Core.Nothing}

instance
  Core.FromJSON
    GamesAchievementSetStepsAtLeast
  where
  parseJSON =
    Core.withObject
      "GamesAchievementSetStepsAtLeast"
      ( \o ->
          GamesAchievementSetStepsAtLeast
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "steps")
      )

instance Core.ToJSON GamesAchievementSetStepsAtLeast where
  toJSON GamesAchievementSetStepsAtLeast {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("steps" Core..=) Core.<$> steps
          ]
      )

-- | Response message for GetMultipleApplicationPlayerIds rpc.
--
-- /See:/ 'newGetMultipleApplicationPlayerIdsResponse' smart constructor.
newtype GetMultipleApplicationPlayerIdsResponse = GetMultipleApplicationPlayerIdsResponse
  { -- | Output only. The requested applications along with the scoped ids for tha player, if that player has an id for the application. If not, the application is not included in the response.
    playerIds :: (Core.Maybe [ApplicationPlayerId])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetMultipleApplicationPlayerIdsResponse' with the minimum fields required to make a request.
newGetMultipleApplicationPlayerIdsResponse ::
  GetMultipleApplicationPlayerIdsResponse
newGetMultipleApplicationPlayerIdsResponse =
  GetMultipleApplicationPlayerIdsResponse {playerIds = Core.Nothing}

instance
  Core.FromJSON
    GetMultipleApplicationPlayerIdsResponse
  where
  parseJSON =
    Core.withObject
      "GetMultipleApplicationPlayerIdsResponse"
      ( \o ->
          GetMultipleApplicationPlayerIdsResponse
            Core.<$> (o Core..:? "playerIds")
      )

instance
  Core.ToJSON
    GetMultipleApplicationPlayerIdsResponse
  where
  toJSON GetMultipleApplicationPlayerIdsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("playerIds" Core..=) Core.<$> playerIds]
      )

-- | An image asset object.
--
-- /See:/ 'newImageAsset' smart constructor.
data ImageAsset = ImageAsset
  { -- | The height of the asset.
    height :: (Core.Maybe Core.Int32),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#imageAsset@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the asset.
    name :: (Core.Maybe Core.Text),
    -- | The URL of the asset.
    url :: (Core.Maybe Core.Text),
    -- | The width of the asset.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageAsset' with the minimum fields required to make a request.
newImageAsset ::
  ImageAsset
newImageAsset =
  ImageAsset
    { height = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      url = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON ImageAsset where
  parseJSON =
    Core.withObject
      "ImageAsset"
      ( \o ->
          ImageAsset
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON ImageAsset where
  toJSON ImageAsset {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("url" Core..=) Core.<$> url,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | The Instance resource.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | URI which shows where a user can acquire this instance.
    acquisitionUri :: (Core.Maybe Core.Text),
    -- | Platform dependent details for Android.
    androidInstance :: (Core.Maybe InstanceAndroidDetails),
    -- | Platform dependent details for iOS.
    iosInstance :: (Core.Maybe InstanceIosDetails),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#instance@.
    kind :: (Core.Maybe Core.Text),
    -- | Localized display name.
    name :: (Core.Maybe Core.Text),
    -- | The platform type.
    platformType :: (Core.Maybe Instance_PlatformType),
    -- | Flag to show if this game instance supports realtime play.
    realtimePlay :: (Core.Maybe Core.Bool),
    -- | Flag to show if this game instance supports turn based play.
    turnBasedPlay :: (Core.Maybe Core.Bool),
    -- | Platform dependent details for Web.
    webInstance :: (Core.Maybe InstanceWebDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { acquisitionUri = Core.Nothing,
      androidInstance = Core.Nothing,
      iosInstance = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      platformType = Core.Nothing,
      realtimePlay = Core.Nothing,
      turnBasedPlay = Core.Nothing,
      webInstance = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "acquisitionUri")
            Core.<*> (o Core..:? "androidInstance")
            Core.<*> (o Core..:? "iosInstance")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "platformType")
            Core.<*> (o Core..:? "realtimePlay")
            Core.<*> (o Core..:? "turnBasedPlay")
            Core.<*> (o Core..:? "webInstance")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("acquisitionUri" Core..=) Core.<$> acquisitionUri,
            ("androidInstance" Core..=) Core.<$> androidInstance,
            ("iosInstance" Core..=) Core.<$> iosInstance,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("platformType" Core..=) Core.<$> platformType,
            ("realtimePlay" Core..=) Core.<$> realtimePlay,
            ("turnBasedPlay" Core..=) Core.<$> turnBasedPlay,
            ("webInstance" Core..=) Core.<$> webInstance
          ]
      )

-- | The Android instance details resource.
--
-- /See:/ 'newInstanceAndroidDetails' smart constructor.
data InstanceAndroidDetails = InstanceAndroidDetails
  { -- | Flag indicating whether the anti-piracy check is enabled.
    enablePiracyCheck :: (Core.Maybe Core.Bool),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#instanceAndroidDetails@.
    kind :: (Core.Maybe Core.Text),
    -- | Android package name which maps to Google Play URL.
    packageName :: (Core.Maybe Core.Text),
    -- | Indicates that this instance is the default for new installations.
    preferred :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceAndroidDetails' with the minimum fields required to make a request.
newInstanceAndroidDetails ::
  InstanceAndroidDetails
newInstanceAndroidDetails =
  InstanceAndroidDetails
    { enablePiracyCheck = Core.Nothing,
      kind = Core.Nothing,
      packageName = Core.Nothing,
      preferred = Core.Nothing
    }

instance Core.FromJSON InstanceAndroidDetails where
  parseJSON =
    Core.withObject
      "InstanceAndroidDetails"
      ( \o ->
          InstanceAndroidDetails
            Core.<$> (o Core..:? "enablePiracyCheck")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "preferred")
      )

instance Core.ToJSON InstanceAndroidDetails where
  toJSON InstanceAndroidDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("enablePiracyCheck" Core..=)
              Core.<$> enablePiracyCheck,
            ("kind" Core..=) Core.<$> kind,
            ("packageName" Core..=) Core.<$> packageName,
            ("preferred" Core..=) Core.<$> preferred
          ]
      )

-- | The iOS details resource.
--
-- /See:/ 'newInstanceIosDetails' smart constructor.
data InstanceIosDetails = InstanceIosDetails
  { -- | Bundle identifier.
    bundleIdentifier :: (Core.Maybe Core.Text),
    -- | iTunes App ID.
    itunesAppId :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#instanceIosDetails@.
    kind :: (Core.Maybe Core.Text),
    -- | Indicates that this instance is the default for new installations on iPad devices.
    preferredForIpad :: (Core.Maybe Core.Bool),
    -- | Indicates that this instance is the default for new installations on iPhone devices.
    preferredForIphone :: (Core.Maybe Core.Bool),
    -- | Flag to indicate if this instance supports iPad.
    supportIpad :: (Core.Maybe Core.Bool),
    -- | Flag to indicate if this instance supports iPhone.
    supportIphone :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceIosDetails' with the minimum fields required to make a request.
newInstanceIosDetails ::
  InstanceIosDetails
newInstanceIosDetails =
  InstanceIosDetails
    { bundleIdentifier = Core.Nothing,
      itunesAppId = Core.Nothing,
      kind = Core.Nothing,
      preferredForIpad = Core.Nothing,
      preferredForIphone = Core.Nothing,
      supportIpad = Core.Nothing,
      supportIphone = Core.Nothing
    }

instance Core.FromJSON InstanceIosDetails where
  parseJSON =
    Core.withObject
      "InstanceIosDetails"
      ( \o ->
          InstanceIosDetails
            Core.<$> (o Core..:? "bundleIdentifier")
            Core.<*> (o Core..:? "itunesAppId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "preferredForIpad")
            Core.<*> (o Core..:? "preferredForIphone")
            Core.<*> (o Core..:? "supportIpad")
            Core.<*> (o Core..:? "supportIphone")
      )

instance Core.ToJSON InstanceIosDetails where
  toJSON InstanceIosDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("bundleIdentifier" Core..=)
              Core.<$> bundleIdentifier,
            ("itunesAppId" Core..=) Core.<$> itunesAppId,
            ("kind" Core..=) Core.<$> kind,
            ("preferredForIpad" Core..=)
              Core.<$> preferredForIpad,
            ("preferredForIphone" Core..=)
              Core.<$> preferredForIphone,
            ("supportIpad" Core..=) Core.<$> supportIpad,
            ("supportIphone" Core..=) Core.<$> supportIphone
          ]
      )

-- | The Web details resource.
--
-- /See:/ 'newInstanceWebDetails' smart constructor.
data InstanceWebDetails = InstanceWebDetails
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#instanceWebDetails@.
    kind :: (Core.Maybe Core.Text),
    -- | Launch URL for the game.
    launchUrl :: (Core.Maybe Core.Text),
    -- | Indicates that this instance is the default for new installations.
    preferred :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceWebDetails' with the minimum fields required to make a request.
newInstanceWebDetails ::
  InstanceWebDetails
newInstanceWebDetails =
  InstanceWebDetails
    { kind = Core.Nothing,
      launchUrl = Core.Nothing,
      preferred = Core.Nothing
    }

instance Core.FromJSON InstanceWebDetails where
  parseJSON =
    Core.withObject
      "InstanceWebDetails"
      ( \o ->
          InstanceWebDetails
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "launchUrl")
            Core.<*> (o Core..:? "preferred")
      )

instance Core.ToJSON InstanceWebDetails where
  toJSON InstanceWebDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("launchUrl" Core..=) Core.<$> launchUrl,
            ("preferred" Core..=) Core.<$> preferred
          ]
      )

-- | The Leaderboard resource.
--
-- /See:/ 'newLeaderboard' smart constructor.
data Leaderboard = Leaderboard
  { -- | The icon for the leaderboard.
    iconUrl :: (Core.Maybe Core.Text),
    -- | The leaderboard ID.
    id :: (Core.Maybe Core.Text),
    -- | Indicates whether the icon image being returned is a default image, or is game-provided.
    isIconUrlDefault :: (Core.Maybe Core.Bool),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#leaderboard@.
    kind :: (Core.Maybe Core.Text),
    -- | The name of the leaderboard.
    name :: (Core.Maybe Core.Text),
    -- | How scores are ordered.
    order :: (Core.Maybe Leaderboard_Order)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Leaderboard' with the minimum fields required to make a request.
newLeaderboard ::
  Leaderboard
newLeaderboard =
  Leaderboard
    { iconUrl = Core.Nothing,
      id = Core.Nothing,
      isIconUrlDefault = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      order = Core.Nothing
    }

instance Core.FromJSON Leaderboard where
  parseJSON =
    Core.withObject
      "Leaderboard"
      ( \o ->
          Leaderboard
            Core.<$> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isIconUrlDefault")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "order")
      )

instance Core.ToJSON Leaderboard where
  toJSON Leaderboard {..} =
    Core.object
      ( Core.catMaybes
          [ ("iconUrl" Core..=) Core.<$> iconUrl,
            ("id" Core..=) Core.<$> id,
            ("isIconUrlDefault" Core..=)
              Core.<$> isIconUrlDefault,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("order" Core..=) Core.<$> order
          ]
      )

-- | The Leaderboard Entry resource.
--
-- /See:/ 'newLeaderboardEntry' smart constructor.
data LeaderboardEntry = LeaderboardEntry
  { -- | The localized string for the numerical value of this score.
    formattedScore :: (Core.Maybe Core.Text),
    -- | The localized string for the rank of this score for this leaderboard.
    formattedScoreRank :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#leaderboardEntry@.
    kind :: (Core.Maybe Core.Text),
    -- | The player who holds this score.
    player :: (Core.Maybe Player),
    -- | The rank of this score for this leaderboard.
    scoreRank :: (Core.Maybe Core.Int64),
    -- | Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
    scoreTag :: (Core.Maybe Core.Text),
    -- | The numerical value of this score.
    scoreValue :: (Core.Maybe Core.Int64),
    -- | The time span of this high score.
    timeSpan :: (Core.Maybe LeaderboardEntry_TimeSpan),
    -- | The timestamp at which this score was recorded, in milliseconds since the epoch in UTC.
    writeTimestampMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaderboardEntry' with the minimum fields required to make a request.
newLeaderboardEntry ::
  LeaderboardEntry
newLeaderboardEntry =
  LeaderboardEntry
    { formattedScore = Core.Nothing,
      formattedScoreRank = Core.Nothing,
      kind = Core.Nothing,
      player = Core.Nothing,
      scoreRank = Core.Nothing,
      scoreTag = Core.Nothing,
      scoreValue = Core.Nothing,
      timeSpan = Core.Nothing,
      writeTimestampMillis = Core.Nothing
    }

instance Core.FromJSON LeaderboardEntry where
  parseJSON =
    Core.withObject
      "LeaderboardEntry"
      ( \o ->
          LeaderboardEntry
            Core.<$> (o Core..:? "formattedScore")
            Core.<*> (o Core..:? "formattedScoreRank")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "player")
            Core.<*> ( o Core..:? "scoreRank"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "scoreTag")
            Core.<*> ( o Core..:? "scoreValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "timeSpan")
            Core.<*> ( o Core..:? "writeTimestampMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON LeaderboardEntry where
  toJSON LeaderboardEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedScore" Core..=) Core.<$> formattedScore,
            ("formattedScoreRank" Core..=)
              Core.<$> formattedScoreRank,
            ("kind" Core..=) Core.<$> kind,
            ("player" Core..=) Core.<$> player,
            ("scoreRank" Core..=) Core.. Core.AsText
              Core.<$> scoreRank,
            ("scoreTag" Core..=) Core.<$> scoreTag,
            ("scoreValue" Core..=) Core.. Core.AsText
              Core.<$> scoreValue,
            ("timeSpan" Core..=) Core.<$> timeSpan,
            ("writeTimestampMillis" Core..=) Core.. Core.AsText
              Core.<$> writeTimestampMillis
          ]
      )

-- | A list of leaderboard objects.
--
-- /See:/ 'newLeaderboardListResponse' smart constructor.
data LeaderboardListResponse = LeaderboardListResponse
  { -- | The leaderboards.
    items :: (Core.Maybe [Leaderboard]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#leaderboardListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Token corresponding to the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaderboardListResponse' with the minimum fields required to make a request.
newLeaderboardListResponse ::
  LeaderboardListResponse
newLeaderboardListResponse =
  LeaderboardListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON LeaderboardListResponse where
  parseJSON =
    Core.withObject
      "LeaderboardListResponse"
      ( \o ->
          LeaderboardListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON LeaderboardListResponse where
  toJSON LeaderboardListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A score rank in a leaderboard.
--
-- /See:/ 'newLeaderboardScoreRank' smart constructor.
data LeaderboardScoreRank = LeaderboardScoreRank
  { -- | The number of scores in the leaderboard as a string.
    formattedNumScores :: (Core.Maybe Core.Text),
    -- | The rank in the leaderboard as a string.
    formattedRank :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#leaderboardScoreRank@.
    kind :: (Core.Maybe Core.Text),
    -- | The number of scores in the leaderboard.
    numScores :: (Core.Maybe Core.Int64),
    -- | The rank in the leaderboard.
    rank :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaderboardScoreRank' with the minimum fields required to make a request.
newLeaderboardScoreRank ::
  LeaderboardScoreRank
newLeaderboardScoreRank =
  LeaderboardScoreRank
    { formattedNumScores = Core.Nothing,
      formattedRank = Core.Nothing,
      kind = Core.Nothing,
      numScores = Core.Nothing,
      rank = Core.Nothing
    }

instance Core.FromJSON LeaderboardScoreRank where
  parseJSON =
    Core.withObject
      "LeaderboardScoreRank"
      ( \o ->
          LeaderboardScoreRank
            Core.<$> (o Core..:? "formattedNumScores")
            Core.<*> (o Core..:? "formattedRank")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "numScores"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "rank"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON LeaderboardScoreRank where
  toJSON LeaderboardScoreRank {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedNumScores" Core..=)
              Core.<$> formattedNumScores,
            ("formattedRank" Core..=) Core.<$> formattedRank,
            ("kind" Core..=) Core.<$> kind,
            ("numScores" Core..=) Core.. Core.AsText
              Core.<$> numScores,
            ("rank" Core..=) Core.. Core.AsText Core.<$> rank
          ]
      )

-- | A ListScores response.
--
-- /See:/ 'newLeaderboardScores' smart constructor.
data LeaderboardScores = LeaderboardScores
  { -- | The scores in the leaderboard.
    items :: (Core.Maybe [LeaderboardEntry]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#leaderboardScores@.
    kind :: (Core.Maybe Core.Text),
    -- | The pagination token for the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of scores in the leaderboard.
    numScores :: (Core.Maybe Core.Int64),
    -- | The score of the requesting player on the leaderboard. The player\'s score may appear both here and in the list of scores above. If you are viewing a public leaderboard and the player is not sharing their gameplay information publicly, the @scoreRank@and @formattedScoreRank@ values will not be present.
    playerScore :: (Core.Maybe LeaderboardEntry),
    -- | The pagination token for the previous page of results.
    prevPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaderboardScores' with the minimum fields required to make a request.
newLeaderboardScores ::
  LeaderboardScores
newLeaderboardScores =
  LeaderboardScores
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      numScores = Core.Nothing,
      playerScore = Core.Nothing,
      prevPageToken = Core.Nothing
    }

instance Core.FromJSON LeaderboardScores where
  parseJSON =
    Core.withObject
      "LeaderboardScores"
      ( \o ->
          LeaderboardScores
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> ( o Core..:? "numScores"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "playerScore")
            Core.<*> (o Core..:? "prevPageToken")
      )

instance Core.ToJSON LeaderboardScores where
  toJSON LeaderboardScores {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("numScores" Core..=) Core.. Core.AsText
              Core.<$> numScores,
            ("playerScore" Core..=) Core.<$> playerScore,
            ("prevPageToken" Core..=) Core.<$> prevPageToken
          ]
      )

-- | The metagame config resource
--
-- /See:/ 'newMetagameConfig' smart constructor.
data MetagameConfig = MetagameConfig
  { -- | Current version of the metagame configuration data. When this data is updated, the version number will be increased by one.
    currentVersion :: (Core.Maybe Core.Int32),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#metagameConfig@.
    kind :: (Core.Maybe Core.Text),
    -- | The list of player levels.
    playerLevels :: (Core.Maybe [PlayerLevel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetagameConfig' with the minimum fields required to make a request.
newMetagameConfig ::
  MetagameConfig
newMetagameConfig =
  MetagameConfig
    { currentVersion = Core.Nothing,
      kind = Core.Nothing,
      playerLevels = Core.Nothing
    }

instance Core.FromJSON MetagameConfig where
  parseJSON =
    Core.withObject
      "MetagameConfig"
      ( \o ->
          MetagameConfig
            Core.<$> (o Core..:? "currentVersion")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "playerLevels")
      )

instance Core.ToJSON MetagameConfig where
  toJSON MetagameConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentVersion" Core..=) Core.<$> currentVersion,
            ("kind" Core..=) Core.<$> kind,
            ("playerLevels" Core..=) Core.<$> playerLevels
          ]
      )

-- | A Player resource.
--
-- /See:/ 'newPlayer' smart constructor.
data Player = Player
  { -- | The base URL for the image that represents the player.
    avatarImageUrl :: (Core.Maybe Core.Text),
    -- | The url to the landscape mode player banner image.
    bannerUrlLandscape :: (Core.Maybe Core.Text),
    -- | The url to the portrait mode player banner image.
    bannerUrlPortrait :: (Core.Maybe Core.Text),
    -- | The name to display for the player.
    displayName :: (Core.Maybe Core.Text),
    -- | An object to represent Play Game experience information for the player.
    experienceInfo :: (Core.Maybe PlayerExperienceInfo),
    -- | The friend status of the given player, relative to the requester. This is unset if the player is not sharing their friends list with the game.
    friendStatus :: (Core.Maybe Player_FriendStatus),
    -- | Per-application unique player identifier.
    gamePlayerId :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#player@
    kind :: (Core.Maybe Core.Text),
    -- | A representation of the individual components of the name.
    name :: (Core.Maybe Player_Name),
    -- | The player ID that was used for this player the first time they signed into the game in question. This is only populated for calls to player.get for the requesting player, only if the player ID has subsequently changed, and only to clients that support remapping player IDs.
    originalPlayerId :: (Core.Maybe Core.Text),
    -- | The ID of the player.
    playerId :: (Core.Maybe Core.Text),
    -- | The player\'s profile settings. Controls whether or not the player\'s profile is visible to other players.
    profileSettings :: (Core.Maybe ProfileSettings),
    -- | The player\'s title rewarded for their game activities.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Player' with the minimum fields required to make a request.
newPlayer ::
  Player
newPlayer =
  Player
    { avatarImageUrl = Core.Nothing,
      bannerUrlLandscape = Core.Nothing,
      bannerUrlPortrait = Core.Nothing,
      displayName = Core.Nothing,
      experienceInfo = Core.Nothing,
      friendStatus = Core.Nothing,
      gamePlayerId = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      originalPlayerId = Core.Nothing,
      playerId = Core.Nothing,
      profileSettings = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Player where
  parseJSON =
    Core.withObject
      "Player"
      ( \o ->
          Player
            Core.<$> (o Core..:? "avatarImageUrl")
            Core.<*> (o Core..:? "bannerUrlLandscape")
            Core.<*> (o Core..:? "bannerUrlPortrait")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "experienceInfo")
            Core.<*> (o Core..:? "friendStatus")
            Core.<*> (o Core..:? "gamePlayerId")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "originalPlayerId")
            Core.<*> (o Core..:? "playerId")
            Core.<*> (o Core..:? "profileSettings")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Player where
  toJSON Player {..} =
    Core.object
      ( Core.catMaybes
          [ ("avatarImageUrl" Core..=) Core.<$> avatarImageUrl,
            ("bannerUrlLandscape" Core..=)
              Core.<$> bannerUrlLandscape,
            ("bannerUrlPortrait" Core..=)
              Core.<$> bannerUrlPortrait,
            ("displayName" Core..=) Core.<$> displayName,
            ("experienceInfo" Core..=) Core.<$> experienceInfo,
            ("friendStatus" Core..=) Core.<$> friendStatus,
            ("gamePlayerId" Core..=) Core.<$> gamePlayerId,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("originalPlayerId" Core..=)
              Core.<$> originalPlayerId,
            ("playerId" Core..=) Core.<$> playerId,
            ("profileSettings" Core..=) Core.<$> profileSettings,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A representation of the individual components of the name.
--
-- /See:/ 'newPlayer_Name' smart constructor.
data Player_Name = Player_Name
  { -- | The family name of this player. In some places, this is known as the last name.
    familyName :: (Core.Maybe Core.Text),
    -- | The given name of this player. In some places, this is known as the first name.
    givenName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Player_Name' with the minimum fields required to make a request.
newPlayer_Name ::
  Player_Name
newPlayer_Name =
  Player_Name {familyName = Core.Nothing, givenName = Core.Nothing}

instance Core.FromJSON Player_Name where
  parseJSON =
    Core.withObject
      "Player_Name"
      ( \o ->
          Player_Name
            Core.<$> (o Core..:? "familyName")
            Core.<*> (o Core..:? "givenName")
      )

instance Core.ToJSON Player_Name where
  toJSON Player_Name {..} =
    Core.object
      ( Core.catMaybes
          [ ("familyName" Core..=) Core.<$> familyName,
            ("givenName" Core..=) Core.<$> givenName
          ]
      )

-- | An achievement object.
--
-- /See:/ 'newPlayerAchievement' smart constructor.
data PlayerAchievement = PlayerAchievement
  { -- | The state of the achievement.
    achievementState :: (Core.Maybe PlayerAchievement_AchievementState),
    -- | The current steps for an incremental achievement.
    currentSteps :: (Core.Maybe Core.Int32),
    -- | Experience points earned for the achievement. This field is absent for achievements that have not yet been unlocked and 0 for achievements that have been unlocked by testers but that are unpublished.
    experiencePoints :: (Core.Maybe Core.Int64),
    -- | The current steps for an incremental achievement as a string.
    formattedCurrentStepsString :: (Core.Maybe Core.Text),
    -- | The ID of the achievement.
    id :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerAchievement@.
    kind :: (Core.Maybe Core.Text),
    -- | The timestamp of the last modification to this achievement\'s state.
    lastUpdatedTimestamp :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerAchievement' with the minimum fields required to make a request.
newPlayerAchievement ::
  PlayerAchievement
newPlayerAchievement =
  PlayerAchievement
    { achievementState = Core.Nothing,
      currentSteps = Core.Nothing,
      experiencePoints = Core.Nothing,
      formattedCurrentStepsString = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      lastUpdatedTimestamp = Core.Nothing
    }

instance Core.FromJSON PlayerAchievement where
  parseJSON =
    Core.withObject
      "PlayerAchievement"
      ( \o ->
          PlayerAchievement
            Core.<$> (o Core..:? "achievementState")
            Core.<*> (o Core..:? "currentSteps")
            Core.<*> ( o Core..:? "experiencePoints"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "formattedCurrentStepsString")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "lastUpdatedTimestamp"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON PlayerAchievement where
  toJSON PlayerAchievement {..} =
    Core.object
      ( Core.catMaybes
          [ ("achievementState" Core..=)
              Core.<$> achievementState,
            ("currentSteps" Core..=) Core.<$> currentSteps,
            ("experiencePoints" Core..=) Core.. Core.AsText
              Core.<$> experiencePoints,
            ("formattedCurrentStepsString" Core..=)
              Core.<$> formattedCurrentStepsString,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("lastUpdatedTimestamp" Core..=) Core.. Core.AsText
              Core.<$> lastUpdatedTimestamp
          ]
      )

-- | A list of achievement objects.
--
-- /See:/ 'newPlayerAchievementListResponse' smart constructor.
data PlayerAchievementListResponse = PlayerAchievementListResponse
  { -- | The achievements.
    items :: (Core.Maybe [PlayerAchievement]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerAchievementListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Token corresponding to the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerAchievementListResponse' with the minimum fields required to make a request.
newPlayerAchievementListResponse ::
  PlayerAchievementListResponse
newPlayerAchievementListResponse =
  PlayerAchievementListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON PlayerAchievementListResponse where
  parseJSON =
    Core.withObject
      "PlayerAchievementListResponse"
      ( \o ->
          PlayerAchievementListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON PlayerAchievementListResponse where
  toJSON PlayerAchievementListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An event status resource.
--
-- /See:/ 'newPlayerEvent' smart constructor.
data PlayerEvent = PlayerEvent
  { -- | The ID of the event definition.
    definitionId :: (Core.Maybe Core.Text),
    -- | The current number of times this event has occurred, as a string. The formatting of this string depends on the configuration of your event in the Play Games Developer Console.
    formattedNumEvents :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerEvent@.
    kind :: (Core.Maybe Core.Text),
    -- | The current number of times this event has occurred.
    numEvents :: (Core.Maybe Core.Int64),
    -- | The ID of the player.
    playerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerEvent' with the minimum fields required to make a request.
newPlayerEvent ::
  PlayerEvent
newPlayerEvent =
  PlayerEvent
    { definitionId = Core.Nothing,
      formattedNumEvents = Core.Nothing,
      kind = Core.Nothing,
      numEvents = Core.Nothing,
      playerId = Core.Nothing
    }

instance Core.FromJSON PlayerEvent where
  parseJSON =
    Core.withObject
      "PlayerEvent"
      ( \o ->
          PlayerEvent
            Core.<$> (o Core..:? "definitionId")
            Core.<*> (o Core..:? "formattedNumEvents")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "numEvents"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "playerId")
      )

instance Core.ToJSON PlayerEvent where
  toJSON PlayerEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("definitionId" Core..=) Core.<$> definitionId,
            ("formattedNumEvents" Core..=)
              Core.<$> formattedNumEvents,
            ("kind" Core..=) Core.<$> kind,
            ("numEvents" Core..=) Core.. Core.AsText
              Core.<$> numEvents,
            ("playerId" Core..=) Core.<$> playerId
          ]
      )

-- | A ListByPlayer response.
--
-- /See:/ 'newPlayerEventListResponse' smart constructor.
data PlayerEventListResponse = PlayerEventListResponse
  { -- | The player events.
    items :: (Core.Maybe [PlayerEvent]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerEventListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The pagination token for the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerEventListResponse' with the minimum fields required to make a request.
newPlayerEventListResponse ::
  PlayerEventListResponse
newPlayerEventListResponse =
  PlayerEventListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON PlayerEventListResponse where
  parseJSON =
    Core.withObject
      "PlayerEventListResponse"
      ( \o ->
          PlayerEventListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON PlayerEventListResponse where
  toJSON PlayerEventListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | 1P\/3P metadata about the player\'s experience.
--
-- /See:/ 'newPlayerExperienceInfo' smart constructor.
data PlayerExperienceInfo = PlayerExperienceInfo
  { -- | The current number of experience points for the player.
    currentExperiencePoints :: (Core.Maybe Core.Int64),
    -- | The current level of the player.
    currentLevel :: (Core.Maybe PlayerLevel),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerExperienceInfo@.
    kind :: (Core.Maybe Core.Text),
    -- | The timestamp when the player was leveled up, in millis since Unix epoch UTC.
    lastLevelUpTimestampMillis :: (Core.Maybe Core.Int64),
    -- | The next level of the player. If the current level is the maximum level, this should be same as the current level.
    nextLevel :: (Core.Maybe PlayerLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerExperienceInfo' with the minimum fields required to make a request.
newPlayerExperienceInfo ::
  PlayerExperienceInfo
newPlayerExperienceInfo =
  PlayerExperienceInfo
    { currentExperiencePoints = Core.Nothing,
      currentLevel = Core.Nothing,
      kind = Core.Nothing,
      lastLevelUpTimestampMillis = Core.Nothing,
      nextLevel = Core.Nothing
    }

instance Core.FromJSON PlayerExperienceInfo where
  parseJSON =
    Core.withObject
      "PlayerExperienceInfo"
      ( \o ->
          PlayerExperienceInfo
            Core.<$> ( o Core..:? "currentExperiencePoints"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "currentLevel")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "lastLevelUpTimestampMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "nextLevel")
      )

instance Core.ToJSON PlayerExperienceInfo where
  toJSON PlayerExperienceInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentExperiencePoints" Core..=)
              Core.. Core.AsText
              Core.<$> currentExperiencePoints,
            ("currentLevel" Core..=) Core.<$> currentLevel,
            ("kind" Core..=) Core.<$> kind,
            ("lastLevelUpTimestampMillis" Core..=)
              Core.. Core.AsText
              Core.<$> lastLevelUpTimestampMillis,
            ("nextLevel" Core..=) Core.<$> nextLevel
          ]
      )

-- | A player leaderboard score object.
--
-- /See:/ 'newPlayerLeaderboardScore' smart constructor.
data PlayerLeaderboardScore = PlayerLeaderboardScore
  { -- | The rank of the score in the friends collection for this leaderboard.
    friendsRank :: (Core.Maybe LeaderboardScoreRank),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerLeaderboardScore@.
    kind :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard this score is in.
    leaderboardId :: (Core.Maybe Core.Text),
    -- | The public rank of the score in this leaderboard. This object will not be present if the user is not sharing their scores publicly.
    publicRank :: (Core.Maybe LeaderboardScoreRank),
    -- | The formatted value of this score.
    scoreString :: (Core.Maybe Core.Text),
    -- | Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
    scoreTag :: (Core.Maybe Core.Text),
    -- | The numerical value of this score.
    scoreValue :: (Core.Maybe Core.Int64),
    -- | The social rank of the score in this leaderboard.
    socialRank :: (Core.Maybe LeaderboardScoreRank),
    -- | The time span of this score.
    timeSpan :: (Core.Maybe PlayerLeaderboardScore_TimeSpan),
    -- | The timestamp at which this score was recorded, in milliseconds since the epoch in UTC.
    writeTimestamp :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerLeaderboardScore' with the minimum fields required to make a request.
newPlayerLeaderboardScore ::
  PlayerLeaderboardScore
newPlayerLeaderboardScore =
  PlayerLeaderboardScore
    { friendsRank = Core.Nothing,
      kind = Core.Nothing,
      leaderboardId = Core.Nothing,
      publicRank = Core.Nothing,
      scoreString = Core.Nothing,
      scoreTag = Core.Nothing,
      scoreValue = Core.Nothing,
      socialRank = Core.Nothing,
      timeSpan = Core.Nothing,
      writeTimestamp = Core.Nothing
    }

instance Core.FromJSON PlayerLeaderboardScore where
  parseJSON =
    Core.withObject
      "PlayerLeaderboardScore"
      ( \o ->
          PlayerLeaderboardScore
            Core.<$> (o Core..:? "friendsRank")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "leaderboard_id")
            Core.<*> (o Core..:? "publicRank")
            Core.<*> (o Core..:? "scoreString")
            Core.<*> (o Core..:? "scoreTag")
            Core.<*> ( o Core..:? "scoreValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "socialRank")
            Core.<*> (o Core..:? "timeSpan")
            Core.<*> ( o Core..:? "writeTimestamp"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON PlayerLeaderboardScore where
  toJSON PlayerLeaderboardScore {..} =
    Core.object
      ( Core.catMaybes
          [ ("friendsRank" Core..=) Core.<$> friendsRank,
            ("kind" Core..=) Core.<$> kind,
            ("leaderboard_id" Core..=) Core.<$> leaderboardId,
            ("publicRank" Core..=) Core.<$> publicRank,
            ("scoreString" Core..=) Core.<$> scoreString,
            ("scoreTag" Core..=) Core.<$> scoreTag,
            ("scoreValue" Core..=) Core.. Core.AsText
              Core.<$> scoreValue,
            ("socialRank" Core..=) Core.<$> socialRank,
            ("timeSpan" Core..=) Core.<$> timeSpan,
            ("writeTimestamp" Core..=) Core.. Core.AsText
              Core.<$> writeTimestamp
          ]
      )

-- | A list of player leaderboard scores.
--
-- /See:/ 'newPlayerLeaderboardScoreListResponse' smart constructor.
data PlayerLeaderboardScoreListResponse = PlayerLeaderboardScoreListResponse
  { -- | The leaderboard scores.
    items :: (Core.Maybe [PlayerLeaderboardScore]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerLeaderboardScoreListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The pagination token for the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The Player resources for the owner of this score.
    player :: (Core.Maybe Player)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerLeaderboardScoreListResponse' with the minimum fields required to make a request.
newPlayerLeaderboardScoreListResponse ::
  PlayerLeaderboardScoreListResponse
newPlayerLeaderboardScoreListResponse =
  PlayerLeaderboardScoreListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing,
      player = Core.Nothing
    }

instance
  Core.FromJSON
    PlayerLeaderboardScoreListResponse
  where
  parseJSON =
    Core.withObject
      "PlayerLeaderboardScoreListResponse"
      ( \o ->
          PlayerLeaderboardScoreListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "player")
      )

instance
  Core.ToJSON
    PlayerLeaderboardScoreListResponse
  where
  toJSON PlayerLeaderboardScoreListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("player" Core..=) Core.<$> player
          ]
      )

-- | 1P\/3P metadata about a user\'s level.
--
-- /See:/ 'newPlayerLevel' smart constructor.
data PlayerLevel = PlayerLevel
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerLevel@.
    kind :: (Core.Maybe Core.Text),
    -- | The level for the user.
    level :: (Core.Maybe Core.Int32),
    -- | The maximum experience points for this level.
    maxExperiencePoints :: (Core.Maybe Core.Int64),
    -- | The minimum experience points for this level.
    minExperiencePoints :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerLevel' with the minimum fields required to make a request.
newPlayerLevel ::
  PlayerLevel
newPlayerLevel =
  PlayerLevel
    { kind = Core.Nothing,
      level = Core.Nothing,
      maxExperiencePoints = Core.Nothing,
      minExperiencePoints = Core.Nothing
    }

instance Core.FromJSON PlayerLevel where
  parseJSON =
    Core.withObject
      "PlayerLevel"
      ( \o ->
          PlayerLevel
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "level")
            Core.<*> ( o Core..:? "maxExperiencePoints"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minExperiencePoints"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON PlayerLevel where
  toJSON PlayerLevel {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("level" Core..=) Core.<$> level,
            ("maxExperiencePoints" Core..=) Core.. Core.AsText
              Core.<$> maxExperiencePoints,
            ("minExperiencePoints" Core..=) Core.. Core.AsText
              Core.<$> minExperiencePoints
          ]
      )

-- | A third party player list response.
--
-- /See:/ 'newPlayerListResponse' smart constructor.
data PlayerListResponse = PlayerListResponse
  { -- | The players.
    items :: (Core.Maybe [Player]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Token corresponding to the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerListResponse' with the minimum fields required to make a request.
newPlayerListResponse ::
  PlayerListResponse
newPlayerListResponse =
  PlayerListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON PlayerListResponse where
  parseJSON =
    Core.withObject
      "PlayerListResponse"
      ( \o ->
          PlayerListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON PlayerListResponse where
  toJSON PlayerListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A player score.
--
-- /See:/ 'newPlayerScore' smart constructor.
data PlayerScore = PlayerScore
  { -- | The formatted score for this player score.
    formattedScore :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerScore@.
    kind :: (Core.Maybe Core.Text),
    -- | The numerical value for this player score.
    score :: (Core.Maybe Core.Int64),
    -- | Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
    scoreTag :: (Core.Maybe Core.Text),
    -- | The time span for this player score.
    timeSpan :: (Core.Maybe PlayerScore_TimeSpan)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerScore' with the minimum fields required to make a request.
newPlayerScore ::
  PlayerScore
newPlayerScore =
  PlayerScore
    { formattedScore = Core.Nothing,
      kind = Core.Nothing,
      score = Core.Nothing,
      scoreTag = Core.Nothing,
      timeSpan = Core.Nothing
    }

instance Core.FromJSON PlayerScore where
  parseJSON =
    Core.withObject
      "PlayerScore"
      ( \o ->
          PlayerScore
            Core.<$> (o Core..:? "formattedScore")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "score"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "scoreTag")
            Core.<*> (o Core..:? "timeSpan")
      )

instance Core.ToJSON PlayerScore where
  toJSON PlayerScore {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedScore" Core..=) Core.<$> formattedScore,
            ("kind" Core..=) Core.<$> kind,
            ("score" Core..=) Core.. Core.AsText Core.<$> score,
            ("scoreTag" Core..=) Core.<$> scoreTag,
            ("timeSpan" Core..=) Core.<$> timeSpan
          ]
      )

-- | A list of score submission statuses.
--
-- /See:/ 'newPlayerScoreListResponse' smart constructor.
data PlayerScoreListResponse = PlayerScoreListResponse
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerScoreListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The score submissions statuses.
    submittedScores :: (Core.Maybe [PlayerScoreResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerScoreListResponse' with the minimum fields required to make a request.
newPlayerScoreListResponse ::
  PlayerScoreListResponse
newPlayerScoreListResponse =
  PlayerScoreListResponse {kind = Core.Nothing, submittedScores = Core.Nothing}

instance Core.FromJSON PlayerScoreListResponse where
  parseJSON =
    Core.withObject
      "PlayerScoreListResponse"
      ( \o ->
          PlayerScoreListResponse
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "submittedScores")
      )

instance Core.ToJSON PlayerScoreListResponse where
  toJSON PlayerScoreListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("submittedScores" Core..=)
              Core.<$> submittedScores
          ]
      )

-- | A list of leaderboard entry resources.
--
-- /See:/ 'newPlayerScoreResponse' smart constructor.
data PlayerScoreResponse = PlayerScoreResponse
  { -- | The time spans where the submitted score is better than the existing score for that time span.
    beatenScoreTimeSpans :: (Core.Maybe [PlayerScoreResponse_BeatenScoreTimeSpansItem]),
    -- | The formatted value of the submitted score.
    formattedScore :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerScoreResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The leaderboard ID that this score was submitted to.
    leaderboardId :: (Core.Maybe Core.Text),
    -- | Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
    scoreTag :: (Core.Maybe Core.Text),
    -- | The scores in time spans that have not been beaten. As an example, the submitted score may be better than the player\'s @DAILY@ score, but not better than the player\'s scores for the @WEEKLY@ or @ALL_TIME@ time spans.
    unbeatenScores :: (Core.Maybe [PlayerScore])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerScoreResponse' with the minimum fields required to make a request.
newPlayerScoreResponse ::
  PlayerScoreResponse
newPlayerScoreResponse =
  PlayerScoreResponse
    { beatenScoreTimeSpans = Core.Nothing,
      formattedScore = Core.Nothing,
      kind = Core.Nothing,
      leaderboardId = Core.Nothing,
      scoreTag = Core.Nothing,
      unbeatenScores = Core.Nothing
    }

instance Core.FromJSON PlayerScoreResponse where
  parseJSON =
    Core.withObject
      "PlayerScoreResponse"
      ( \o ->
          PlayerScoreResponse
            Core.<$> (o Core..:? "beatenScoreTimeSpans")
            Core.<*> (o Core..:? "formattedScore")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "leaderboardId")
            Core.<*> (o Core..:? "scoreTag")
            Core.<*> (o Core..:? "unbeatenScores")
      )

instance Core.ToJSON PlayerScoreResponse where
  toJSON PlayerScoreResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("beatenScoreTimeSpans" Core..=)
              Core.<$> beatenScoreTimeSpans,
            ("formattedScore" Core..=) Core.<$> formattedScore,
            ("kind" Core..=) Core.<$> kind,
            ("leaderboardId" Core..=) Core.<$> leaderboardId,
            ("scoreTag" Core..=) Core.<$> scoreTag,
            ("unbeatenScores" Core..=) Core.<$> unbeatenScores
          ]
      )

-- | A list of score submission requests.
--
-- /See:/ 'newPlayerScoreSubmissionList' smart constructor.
data PlayerScoreSubmissionList = PlayerScoreSubmissionList
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#playerScoreSubmissionList@.
    kind :: (Core.Maybe Core.Text),
    -- | The score submissions.
    scores :: (Core.Maybe [ScoreSubmission])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayerScoreSubmissionList' with the minimum fields required to make a request.
newPlayerScoreSubmissionList ::
  PlayerScoreSubmissionList
newPlayerScoreSubmissionList =
  PlayerScoreSubmissionList {kind = Core.Nothing, scores = Core.Nothing}

instance Core.FromJSON PlayerScoreSubmissionList where
  parseJSON =
    Core.withObject
      "PlayerScoreSubmissionList"
      ( \o ->
          PlayerScoreSubmissionList
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "scores")
      )

instance Core.ToJSON PlayerScoreSubmissionList where
  toJSON PlayerScoreSubmissionList {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("scores" Core..=) Core.<$> scores
          ]
      )

-- | Profile settings
--
-- /See:/ 'newProfileSettings' smart constructor.
data ProfileSettings = ProfileSettings
  { -- |
    friendsListVisibility :: (Core.Maybe ProfileSettings_FriendsListVisibility),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#profileSettings@.
    kind :: (Core.Maybe Core.Text),
    -- | Whether the player\'s profile is visible to the currently signed in player.
    profileVisible :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProfileSettings' with the minimum fields required to make a request.
newProfileSettings ::
  ProfileSettings
newProfileSettings =
  ProfileSettings
    { friendsListVisibility = Core.Nothing,
      kind = Core.Nothing,
      profileVisible = Core.Nothing
    }

instance Core.FromJSON ProfileSettings where
  parseJSON =
    Core.withObject
      "ProfileSettings"
      ( \o ->
          ProfileSettings
            Core.<$> (o Core..:? "friendsListVisibility")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "profileVisible")
      )

instance Core.ToJSON ProfileSettings where
  toJSON ProfileSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("friendsListVisibility" Core..=)
              Core.<$> friendsListVisibility,
            ("kind" Core..=) Core.<$> kind,
            ("profileVisible" Core..=) Core.<$> profileVisible
          ]
      )

-- | A third party checking a revision response.
--
-- /See:/ 'newRevisionCheckResponse' smart constructor.
data RevisionCheckResponse = RevisionCheckResponse
  { -- | The version of the API this client revision should use when calling API methods.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#revisionCheckResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The result of the revision check.
    revisionStatus :: (Core.Maybe RevisionCheckResponse_RevisionStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevisionCheckResponse' with the minimum fields required to make a request.
newRevisionCheckResponse ::
  RevisionCheckResponse
newRevisionCheckResponse =
  RevisionCheckResponse
    { apiVersion = Core.Nothing,
      kind = Core.Nothing,
      revisionStatus = Core.Nothing
    }

instance Core.FromJSON RevisionCheckResponse where
  parseJSON =
    Core.withObject
      "RevisionCheckResponse"
      ( \o ->
          RevisionCheckResponse
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "revisionStatus")
      )

instance Core.ToJSON RevisionCheckResponse where
  toJSON RevisionCheckResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("kind" Core..=) Core.<$> kind,
            ("revisionStatus" Core..=) Core.<$> revisionStatus
          ]
      )

-- | Scoped player identifiers.
--
-- /See:/ 'newScopedPlayerIds' smart constructor.
data ScopedPlayerIds = ScopedPlayerIds
  { -- | Identifier of the player across all games of the given developer. Every player has the same developer/player/key in all games of one developer. Developer player key changes for the game if the game is transferred to another developer. Note that game/player/id will stay unchanged.
    developerPlayerKey :: (Core.Maybe Core.Text),
    -- | Game-scoped player identifier. This is the same id that is returned in GetPlayer game/player/id field.
    gamePlayerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScopedPlayerIds' with the minimum fields required to make a request.
newScopedPlayerIds ::
  ScopedPlayerIds
newScopedPlayerIds =
  ScopedPlayerIds
    { developerPlayerKey = Core.Nothing,
      gamePlayerId = Core.Nothing
    }

instance Core.FromJSON ScopedPlayerIds where
  parseJSON =
    Core.withObject
      "ScopedPlayerIds"
      ( \o ->
          ScopedPlayerIds
            Core.<$> (o Core..:? "developerPlayerKey")
            Core.<*> (o Core..:? "gamePlayerId")
      )

instance Core.ToJSON ScopedPlayerIds where
  toJSON ScopedPlayerIds {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerPlayerKey" Core..=)
              Core.<$> developerPlayerKey,
            ("gamePlayerId" Core..=) Core.<$> gamePlayerId
          ]
      )

-- | A request to submit a score to leaderboards.
--
-- /See:/ 'newScoreSubmission' smart constructor.
data ScoreSubmission = ScoreSubmission
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#scoreSubmission@.
    kind :: (Core.Maybe Core.Text),
    -- | The leaderboard this score is being submitted to.
    leaderboardId :: (Core.Maybe Core.Text),
    -- | The new score being submitted.
    score :: (Core.Maybe Core.Int64),
    -- | Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
    scoreTag :: (Core.Maybe Core.Text),
    -- | Signature Values will contain URI-safe characters as defined by section 2.3 of RFC 3986.
    signature :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScoreSubmission' with the minimum fields required to make a request.
newScoreSubmission ::
  ScoreSubmission
newScoreSubmission =
  ScoreSubmission
    { kind = Core.Nothing,
      leaderboardId = Core.Nothing,
      score = Core.Nothing,
      scoreTag = Core.Nothing,
      signature = Core.Nothing
    }

instance Core.FromJSON ScoreSubmission where
  parseJSON =
    Core.withObject
      "ScoreSubmission"
      ( \o ->
          ScoreSubmission
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "leaderboardId")
            Core.<*> ( o Core..:? "score"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "scoreTag")
            Core.<*> (o Core..:? "signature")
      )

instance Core.ToJSON ScoreSubmission where
  toJSON ScoreSubmission {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("leaderboardId" Core..=) Core.<$> leaderboardId,
            ("score" Core..=) Core.. Core.AsText Core.<$> score,
            ("scoreTag" Core..=) Core.<$> scoreTag,
            ("signature" Core..=) Core.<$> signature
          ]
      )

-- | An snapshot object.
--
-- /See:/ 'newSnapshot' smart constructor.
data Snapshot = Snapshot
  { -- | The cover image of this snapshot. May be absent if there is no image.
    coverImage :: (Core.Maybe SnapshotImage),
    -- | The description of this snapshot.
    description :: (Core.Maybe Core.Text),
    -- | The ID of the file underlying this snapshot in the Drive API. Only present if the snapshot is a view on a Drive file and the file is owned by the caller.
    driveId :: (Core.Maybe Core.Text),
    -- | The duration associated with this snapshot, in millis.
    durationMillis :: (Core.Maybe Core.Int64),
    -- | The ID of the snapshot.
    id :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#snapshot@.
    kind :: (Core.Maybe Core.Text),
    -- | The timestamp (in millis since Unix epoch) of the last modification to this snapshot.
    lastModifiedMillis :: (Core.Maybe Core.Int64),
    -- | The progress value (64-bit integer set by developer) associated with this snapshot.
    progressValue :: (Core.Maybe Core.Int64),
    -- | The title of this snapshot.
    title :: (Core.Maybe Core.Text),
    -- | The type of this snapshot.
    type' :: (Core.Maybe Snapshot_Type),
    -- | The unique name provided when the snapshot was created.
    uniqueName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
newSnapshot ::
  Snapshot
newSnapshot =
  Snapshot
    { coverImage = Core.Nothing,
      description = Core.Nothing,
      driveId = Core.Nothing,
      durationMillis = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      lastModifiedMillis = Core.Nothing,
      progressValue = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing,
      uniqueName = Core.Nothing
    }

instance Core.FromJSON Snapshot where
  parseJSON =
    Core.withObject
      "Snapshot"
      ( \o ->
          Snapshot
            Core.<$> (o Core..:? "coverImage")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "driveId")
            Core.<*> ( o Core..:? "durationMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> ( o Core..:? "lastModifiedMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "progressValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "uniqueName")
      )

instance Core.ToJSON Snapshot where
  toJSON Snapshot {..} =
    Core.object
      ( Core.catMaybes
          [ ("coverImage" Core..=) Core.<$> coverImage,
            ("description" Core..=) Core.<$> description,
            ("driveId" Core..=) Core.<$> driveId,
            ("durationMillis" Core..=) Core.. Core.AsText
              Core.<$> durationMillis,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("lastModifiedMillis" Core..=) Core.. Core.AsText
              Core.<$> lastModifiedMillis,
            ("progressValue" Core..=) Core.. Core.AsText
              Core.<$> progressValue,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type',
            ("uniqueName" Core..=) Core.<$> uniqueName
          ]
      )

-- | An image of a snapshot.
--
-- /See:/ 'newSnapshotImage' smart constructor.
data SnapshotImage = SnapshotImage
  { -- | The height of the image.
    height :: (Core.Maybe Core.Int32),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#snapshotImage@.
    kind :: (Core.Maybe Core.Text),
    -- | The MIME type of the image.
    mimeType :: (Core.Maybe Core.Text),
    -- | The URL of the image. This URL may be invalidated at any time and should not be cached.
    url :: (Core.Maybe Core.Text),
    -- | The width of the image.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SnapshotImage' with the minimum fields required to make a request.
newSnapshotImage ::
  SnapshotImage
newSnapshotImage =
  SnapshotImage
    { height = Core.Nothing,
      kind = Core.Nothing,
      mimeType = Core.Nothing,
      url = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON SnapshotImage where
  parseJSON =
    Core.withObject
      "SnapshotImage"
      ( \o ->
          SnapshotImage
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "mime_type")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON SnapshotImage where
  toJSON SnapshotImage {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("kind" Core..=) Core.<$> kind,
            ("mime_type" Core..=) Core.<$> mimeType,
            ("url" Core..=) Core.<$> url,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A third party list snapshots response.
--
-- /See:/ 'newSnapshotListResponse' smart constructor.
data SnapshotListResponse = SnapshotListResponse
  { -- | The snapshots.
    items :: (Core.Maybe [Snapshot]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#snapshotListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Token corresponding to the next page of results. If there are no more results, the token is omitted.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SnapshotListResponse' with the minimum fields required to make a request.
newSnapshotListResponse ::
  SnapshotListResponse
newSnapshotListResponse =
  SnapshotListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON SnapshotListResponse where
  parseJSON =
    Core.withObject
      "SnapshotListResponse"
      ( \o ->
          SnapshotListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON SnapshotListResponse where
  toJSON SnapshotListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A third party stats resource.
--
-- /See:/ 'newStatsResponse' smart constructor.
data StatsResponse = StatsResponse
  { -- | Average session length in minutes of the player. E.g., 1, 30, 60, ... . Not populated if there is not enough information.
    avgSessionLengthMinutes :: (Core.Maybe Core.Double),
    -- | The probability of the player not returning to play the game in the next day. E.g., 0, 0.1, 0.5, ..., 1.0. Not populated if there is not enough information.
    churnProbability :: (Core.Maybe Core.Double),
    -- | Number of days since the player last played this game. E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.
    daysSinceLastPlayed :: (Core.Maybe Core.Int32),
    -- | The probability of the player going to spend beyond a threshold amount of money. E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough information.
    highSpenderProbability :: (Core.Maybe Core.Double),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @games#statsResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | Number of in-app purchases made by the player in this game. E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.
    numPurchases :: (Core.Maybe Core.Int32),
    -- | The approximate number of sessions of the player within the last 28 days, where a session begins when the player is connected to Play Games Services and ends when they are disconnected. E.g., 0, 1, 5, 10, ... . Not populated if there is not enough information.
    numSessions :: (Core.Maybe Core.Int32),
    -- | The approximation of the sessions percentile of the player within the last 30 days, where a session begins when the player is connected to Play Games Services and ends when they are disconnected. E.g., 0, 0.25, 0.5, 0.75. Not populated if there is not enough information.
    numSessionsPercentile :: (Core.Maybe Core.Double),
    -- | The approximate spend percentile of the player in this game. E.g., 0, 0.25, 0.5, 0.75. Not populated if there is not enough information.
    spendPercentile :: (Core.Maybe Core.Double),
    -- | The probability of the player going to spend the game in the next seven days. E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough information.
    spendProbability :: (Core.Maybe Core.Double),
    -- | The predicted amount of money that the player going to spend in the next 28 days. E.g., 1, 30, 60, ... . Not populated if there is not enough information.
    totalSpendNext28Days :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StatsResponse' with the minimum fields required to make a request.
newStatsResponse ::
  StatsResponse
newStatsResponse =
  StatsResponse
    { avgSessionLengthMinutes = Core.Nothing,
      churnProbability = Core.Nothing,
      daysSinceLastPlayed = Core.Nothing,
      highSpenderProbability = Core.Nothing,
      kind = Core.Nothing,
      numPurchases = Core.Nothing,
      numSessions = Core.Nothing,
      numSessionsPercentile = Core.Nothing,
      spendPercentile = Core.Nothing,
      spendProbability = Core.Nothing,
      totalSpendNext28Days = Core.Nothing
    }

instance Core.FromJSON StatsResponse where
  parseJSON =
    Core.withObject
      "StatsResponse"
      ( \o ->
          StatsResponse
            Core.<$> (o Core..:? "avg_session_length_minutes")
            Core.<*> (o Core..:? "churn_probability")
            Core.<*> (o Core..:? "days_since_last_played")
            Core.<*> (o Core..:? "high_spender_probability")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "num_purchases")
            Core.<*> (o Core..:? "num_sessions")
            Core.<*> (o Core..:? "num_sessions_percentile")
            Core.<*> (o Core..:? "spend_percentile")
            Core.<*> (o Core..:? "spend_probability")
            Core.<*> (o Core..:? "total_spend_next_28_days")
      )

instance Core.ToJSON StatsResponse where
  toJSON StatsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("avg_session_length_minutes" Core..=)
              Core.<$> avgSessionLengthMinutes,
            ("churn_probability" Core..=)
              Core.<$> churnProbability,
            ("days_since_last_played" Core..=)
              Core.<$> daysSinceLastPlayed,
            ("high_spender_probability" Core..=)
              Core.<$> highSpenderProbability,
            ("kind" Core..=) Core.<$> kind,
            ("num_purchases" Core..=) Core.<$> numPurchases,
            ("num_sessions" Core..=) Core.<$> numSessions,
            ("num_sessions_percentile" Core..=)
              Core.<$> numSessionsPercentile,
            ("spend_percentile" Core..=)
              Core.<$> spendPercentile,
            ("spend_probability" Core..=)
              Core.<$> spendProbability,
            ("total_spend_next_28_days" Core..=)
              Core.<$> totalSpendNext28Days
          ]
      )
