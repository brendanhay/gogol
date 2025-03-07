{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Games.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Games.Types
  ( -- * Configuration
    gamesService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,
    Drive'Appdata,
    Games'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AchievementDefinition
    AchievementDefinition (..),
    newAchievementDefinition,

    -- ** AchievementDefinition_AchievementType
    AchievementDefinition_AchievementType (..),

    -- ** AchievementDefinition_InitialState
    AchievementDefinition_InitialState (..),

    -- ** AchievementDefinitionsListResponse
    AchievementDefinitionsListResponse (..),
    newAchievementDefinitionsListResponse,

    -- ** AchievementIncrementResponse
    AchievementIncrementResponse (..),
    newAchievementIncrementResponse,

    -- ** AchievementRevealResponse
    AchievementRevealResponse (..),
    newAchievementRevealResponse,

    -- ** AchievementRevealResponse_CurrentState
    AchievementRevealResponse_CurrentState (..),

    -- ** AchievementSetStepsAtLeastResponse
    AchievementSetStepsAtLeastResponse (..),
    newAchievementSetStepsAtLeastResponse,

    -- ** AchievementUnlockResponse
    AchievementUnlockResponse (..),
    newAchievementUnlockResponse,

    -- ** AchievementUpdateMultipleRequest
    AchievementUpdateMultipleRequest (..),
    newAchievementUpdateMultipleRequest,

    -- ** AchievementUpdateMultipleResponse
    AchievementUpdateMultipleResponse (..),
    newAchievementUpdateMultipleResponse,

    -- ** AchievementUpdateRequest
    AchievementUpdateRequest (..),
    newAchievementUpdateRequest,

    -- ** AchievementUpdateRequest_UpdateType
    AchievementUpdateRequest_UpdateType (..),

    -- ** AchievementUpdateResponse
    AchievementUpdateResponse (..),
    newAchievementUpdateResponse,

    -- ** AchievementUpdateResponse_CurrentState
    AchievementUpdateResponse_CurrentState (..),

    -- ** Application
    Application (..),
    newApplication,

    -- ** Application_EnabledFeaturesItem
    Application_EnabledFeaturesItem (..),

    -- ** ApplicationCategory
    ApplicationCategory (..),
    newApplicationCategory,

    -- ** ApplicationPlayerId
    ApplicationPlayerId (..),
    newApplicationPlayerId,

    -- ** ApplicationVerifyResponse
    ApplicationVerifyResponse (..),
    newApplicationVerifyResponse,

    -- ** Category
    Category (..),
    newCategory,

    -- ** CategoryListResponse
    CategoryListResponse (..),
    newCategoryListResponse,

    -- ** EndPoint
    EndPoint (..),
    newEndPoint,

    -- ** EventBatchRecordFailure
    EventBatchRecordFailure (..),
    newEventBatchRecordFailure,

    -- ** EventBatchRecordFailure_FailureCause
    EventBatchRecordFailure_FailureCause (..),

    -- ** EventChild
    EventChild (..),
    newEventChild,

    -- ** EventDefinition
    EventDefinition (..),
    newEventDefinition,

    -- ** EventDefinition_Visibility
    EventDefinition_Visibility (..),

    -- ** EventDefinitionListResponse
    EventDefinitionListResponse (..),
    newEventDefinitionListResponse,

    -- ** EventPeriodRange
    EventPeriodRange (..),
    newEventPeriodRange,

    -- ** EventPeriodUpdate
    EventPeriodUpdate (..),
    newEventPeriodUpdate,

    -- ** EventRecordFailure
    EventRecordFailure (..),
    newEventRecordFailure,

    -- ** EventRecordFailure_FailureCause
    EventRecordFailure_FailureCause (..),

    -- ** EventRecordRequest
    EventRecordRequest (..),
    newEventRecordRequest,

    -- ** EventUpdateRequest
    EventUpdateRequest (..),
    newEventUpdateRequest,

    -- ** EventUpdateResponse
    EventUpdateResponse (..),
    newEventUpdateResponse,

    -- ** GamePlayerToken
    GamePlayerToken (..),
    newGamePlayerToken,

    -- ** GamesAchievementIncrement
    GamesAchievementIncrement (..),
    newGamesAchievementIncrement,

    -- ** GamesAchievementSetStepsAtLeast
    GamesAchievementSetStepsAtLeast (..),
    newGamesAchievementSetStepsAtLeast,

    -- ** GeneratePlayGroupingApiTokenResponse
    GeneratePlayGroupingApiTokenResponse (..),
    newGeneratePlayGroupingApiTokenResponse,

    -- ** GenerateRecallPlayGroupingApiTokenResponse
    GenerateRecallPlayGroupingApiTokenResponse (..),
    newGenerateRecallPlayGroupingApiTokenResponse,

    -- ** GetMultipleApplicationPlayerIdsResponse
    GetMultipleApplicationPlayerIdsResponse (..),
    newGetMultipleApplicationPlayerIdsResponse,

    -- ** ImageAsset
    ImageAsset (..),
    newImageAsset,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_PlatformType
    Instance_PlatformType (..),

    -- ** InstanceAndroidDetails
    InstanceAndroidDetails (..),
    newInstanceAndroidDetails,

    -- ** InstanceIosDetails
    InstanceIosDetails (..),
    newInstanceIosDetails,

    -- ** InstanceWebDetails
    InstanceWebDetails (..),
    newInstanceWebDetails,

    -- ** Leaderboard
    Leaderboard (..),
    newLeaderboard,

    -- ** Leaderboard_Order
    Leaderboard_Order (..),

    -- ** LeaderboardEntry
    LeaderboardEntry (..),
    newLeaderboardEntry,

    -- ** LeaderboardEntry_TimeSpan
    LeaderboardEntry_TimeSpan (..),

    -- ** LeaderboardListResponse
    LeaderboardListResponse (..),
    newLeaderboardListResponse,

    -- ** LeaderboardScoreRank
    LeaderboardScoreRank (..),
    newLeaderboardScoreRank,

    -- ** LeaderboardScores
    LeaderboardScores (..),
    newLeaderboardScores,

    -- ** LinkPersonaRequest
    LinkPersonaRequest (..),
    newLinkPersonaRequest,

    -- ** LinkPersonaRequest_CardinalityConstraint
    LinkPersonaRequest_CardinalityConstraint (..),

    -- ** LinkPersonaRequest_ConflictingLinksResolutionPolicy
    LinkPersonaRequest_ConflictingLinksResolutionPolicy (..),

    -- ** LinkPersonaResponse
    LinkPersonaResponse (..),
    newLinkPersonaResponse,

    -- ** LinkPersonaResponse_State
    LinkPersonaResponse_State (..),

    -- ** MetagameConfig
    MetagameConfig (..),
    newMetagameConfig,

    -- ** PlayGroupingApiToken
    PlayGroupingApiToken (..),
    newPlayGroupingApiToken,

    -- ** Player
    Player (..),
    newPlayer,

    -- ** Player_FriendStatus
    Player_FriendStatus (..),

    -- ** Player_Name
    Player_Name (..),
    newPlayer_Name,

    -- ** PlayerAchievement
    PlayerAchievement (..),
    newPlayerAchievement,

    -- ** PlayerAchievement_AchievementState
    PlayerAchievement_AchievementState (..),

    -- ** PlayerAchievementListResponse
    PlayerAchievementListResponse (..),
    newPlayerAchievementListResponse,

    -- ** PlayerEvent
    PlayerEvent (..),
    newPlayerEvent,

    -- ** PlayerEventListResponse
    PlayerEventListResponse (..),
    newPlayerEventListResponse,

    -- ** PlayerExperienceInfo
    PlayerExperienceInfo (..),
    newPlayerExperienceInfo,

    -- ** PlayerLeaderboardScore
    PlayerLeaderboardScore (..),
    newPlayerLeaderboardScore,

    -- ** PlayerLeaderboardScore_TimeSpan
    PlayerLeaderboardScore_TimeSpan (..),

    -- ** PlayerLeaderboardScoreListResponse
    PlayerLeaderboardScoreListResponse (..),
    newPlayerLeaderboardScoreListResponse,

    -- ** PlayerLevel
    PlayerLevel (..),
    newPlayerLevel,

    -- ** PlayerListResponse
    PlayerListResponse (..),
    newPlayerListResponse,

    -- ** PlayerScore
    PlayerScore (..),
    newPlayerScore,

    -- ** PlayerScore_TimeSpan
    PlayerScore_TimeSpan (..),

    -- ** PlayerScoreListResponse
    PlayerScoreListResponse (..),
    newPlayerScoreListResponse,

    -- ** PlayerScoreResponse
    PlayerScoreResponse (..),
    newPlayerScoreResponse,

    -- ** PlayerScoreResponse_BeatenScoreTimeSpansItem
    PlayerScoreResponse_BeatenScoreTimeSpansItem (..),

    -- ** PlayerScoreSubmissionList
    PlayerScoreSubmissionList (..),
    newPlayerScoreSubmissionList,

    -- ** ProfileSettings
    ProfileSettings (..),
    newProfileSettings,

    -- ** ProfileSettings_FriendsListVisibility
    ProfileSettings_FriendsListVisibility (..),

    -- ** RecallToken
    RecallToken (..),
    newRecallToken,

    -- ** ResetPersonaRequest
    ResetPersonaRequest (..),
    newResetPersonaRequest,

    -- ** ResetPersonaResponse
    ResetPersonaResponse (..),
    newResetPersonaResponse,

    -- ** RetrieveDeveloperGamesLastPlayerTokenResponse
    RetrieveDeveloperGamesLastPlayerTokenResponse (..),
    newRetrieveDeveloperGamesLastPlayerTokenResponse,

    -- ** RetrieveGamesPlayerTokensResponse
    RetrieveGamesPlayerTokensResponse (..),
    newRetrieveGamesPlayerTokensResponse,

    -- ** RetrievePlayerTokensResponse
    RetrievePlayerTokensResponse (..),
    newRetrievePlayerTokensResponse,

    -- ** RevisionCheckResponse
    RevisionCheckResponse (..),
    newRevisionCheckResponse,

    -- ** RevisionCheckResponse_RevisionStatus
    RevisionCheckResponse_RevisionStatus (..),

    -- ** ScopedPlayerIds
    ScopedPlayerIds (..),
    newScopedPlayerIds,

    -- ** ScoreSubmission
    ScoreSubmission (..),
    newScoreSubmission,

    -- ** Snapshot
    Snapshot (..),
    newSnapshot,

    -- ** Snapshot_Type
    Snapshot_Type (..),

    -- ** SnapshotImage
    SnapshotImage (..),
    newSnapshotImage,

    -- ** SnapshotListResponse
    SnapshotListResponse (..),
    newSnapshotListResponse,

    -- ** StatsResponse
    StatsResponse (..),
    newStatsResponse,

    -- ** UnlinkPersonaRequest
    UnlinkPersonaRequest (..),
    newUnlinkPersonaRequest,

    -- ** UnlinkPersonaResponse
    UnlinkPersonaResponse (..),
    newUnlinkPersonaResponse,

    -- ** AchievementsListState
    AchievementsListState (..),

    -- ** ApplicationsGetPlatformType
    ApplicationsGetPlatformType (..),

    -- ** ApplicationsGetEndPointEndPointType
    ApplicationsGetEndPointEndPointType (..),

    -- ** MetagameListCategoriesByPlayerCollection
    MetagameListCategoriesByPlayerCollection (..),

    -- ** PlayersListCollection
    PlayersListCollection (..),

    -- ** ScoresGetIncludeRankType
    ScoresGetIncludeRankType (..),

    -- ** ScoresGetTimeSpan
    ScoresGetTimeSpan (..),

    -- ** ScoresListCollection
    ScoresListCollection (..),

    -- ** ScoresListTimeSpan
    ScoresListTimeSpan (..),

    -- ** ScoresListWindowCollection
    ScoresListWindowCollection (..),

    -- ** ScoresListWindowTimeSpan
    ScoresListWindowTimeSpan (..),
  )
where

import Gogol.Games.Internal.Product
import Gogol.Games.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Google Play Game Services. This contains the host and root path used as a starting point for constructing service requests.
gamesService :: Core.ServiceConfig
gamesService =
  Core.defaultService
    (Core.ServiceId "games:v1")
    "games.googleapis.com"

-- | View and manage your Google Play Developer account
type Androidpublisher'FullControl =
  "https://www.googleapis.com/auth/androidpublisher"

-- | See, create, and delete its own configuration data in your Google Drive
type Drive'Appdata =
  "https://www.googleapis.com/auth/drive.appdata"

-- | Create, edit, and delete your Google Play Games activity
type Games'FullControl = "https://www.googleapis.com/auth/games"
