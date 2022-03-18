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
-- Module      : Network.Google.Games
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play games service allows developers to enhance games with social leaderboards, achievements, game state, sign-in with Google, and more.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference>
module Network.Google.Games
  ( -- * Configuration
    gamesService,

    -- * OAuth Scopes
    driveAppdataScope,
    gamesScope,

    -- * Resources

    -- ** games.achievementDefinitions.list
    GamesAchievementDefinitionsListResource,
    newGamesAchievementDefinitionsList,
    GamesAchievementDefinitionsList,

    -- ** games.achievements.increment
    GamesAchievementsIncrementResource,
    newGamesAchievementsIncrement,
    GamesAchievementsIncrement,

    -- ** games.achievements.list
    GamesAchievementsListResource,
    newGamesAchievementsList,
    GamesAchievementsList,

    -- ** games.achievements.reveal
    GamesAchievementsRevealResource,
    newGamesAchievementsReveal,
    GamesAchievementsReveal,

    -- ** games.achievements.setStepsAtLeast
    GamesAchievementsSetStepsAtLeastResource,
    newGamesAchievementsSetStepsAtLeast,
    GamesAchievementsSetStepsAtLeast,

    -- ** games.achievements.unlock
    GamesAchievementsUnlockResource,
    newGamesAchievementsUnlock,
    GamesAchievementsUnlock,

    -- ** games.achievements.updateMultiple
    GamesAchievementsUpdateMultipleResource,
    newGamesAchievementsUpdateMultiple,
    GamesAchievementsUpdateMultiple,

    -- ** games.applications.get
    GamesApplicationsGetResource,
    newGamesApplicationsGet,
    GamesApplicationsGet,

    -- ** games.applications.getEndPoint
    GamesApplicationsGetEndPointResource,
    newGamesApplicationsGetEndPoint,
    GamesApplicationsGetEndPoint,

    -- ** games.applications.played
    GamesApplicationsPlayedResource,
    newGamesApplicationsPlayed,
    GamesApplicationsPlayed,

    -- ** games.applications.verify
    GamesApplicationsVerifyResource,
    newGamesApplicationsVerify,
    GamesApplicationsVerify,

    -- ** games.events.listByPlayer
    GamesEventsListByPlayerResource,
    newGamesEventsListByPlayer,
    GamesEventsListByPlayer,

    -- ** games.events.listDefinitions
    GamesEventsListDefinitionsResource,
    newGamesEventsListDefinitions,
    GamesEventsListDefinitions,

    -- ** games.events.record
    GamesEventsRecordResource,
    newGamesEventsRecord,
    GamesEventsRecord,

    -- ** games.leaderboards.get
    GamesLeaderboardsGetResource,
    newGamesLeaderboardsGet,
    GamesLeaderboardsGet,

    -- ** games.leaderboards.list
    GamesLeaderboardsListResource,
    newGamesLeaderboardsList,
    GamesLeaderboardsList,

    -- ** games.metagame.getMetagameConfig
    GamesMetagameGetMetagameConfigResource,
    newGamesMetagameGetMetagameConfig,
    GamesMetagameGetMetagameConfig,

    -- ** games.metagame.listCategoriesByPlayer
    GamesMetagameListCategoriesByPlayerResource,
    newGamesMetagameListCategoriesByPlayer,
    GamesMetagameListCategoriesByPlayer,

    -- ** games.players.get
    GamesPlayersGetResource,
    newGamesPlayersGet,
    GamesPlayersGet,

    -- ** games.players.list
    GamesPlayersListResource,
    newGamesPlayersList,
    GamesPlayersList,

    -- ** games.revisions.check
    GamesRevisionsCheckResource,
    newGamesRevisionsCheck,
    GamesRevisionsCheck,

    -- ** games.scores.get
    GamesScoresGetResource,
    newGamesScoresGet,
    GamesScoresGet,

    -- ** games.scores.list
    GamesScoresListResource,
    newGamesScoresList,
    GamesScoresList,

    -- ** games.scores.listWindow
    GamesScoresListWindowResource,
    newGamesScoresListWindow,
    GamesScoresListWindow,

    -- ** games.scores.submit
    GamesScoresSubmitResource,
    newGamesScoresSubmit,
    GamesScoresSubmit,

    -- ** games.scores.submitMultiple
    GamesScoresSubmitMultipleResource,
    newGamesScoresSubmitMultiple,
    GamesScoresSubmitMultiple,

    -- ** games.snapshots.get
    GamesSnapshotsGetResource,
    newGamesSnapshotsGet,
    GamesSnapshotsGet,

    -- ** games.snapshots.list
    GamesSnapshotsListResource,
    newGamesSnapshotsList,
    GamesSnapshotsList,

    -- ** games.stats.get
    GamesStatsGetResource,
    newGamesStatsGet,
    GamesStatsGet,

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

    -- ** GamesAchievementIncrement
    GamesAchievementIncrement (..),
    newGamesAchievementIncrement,

    -- ** GamesAchievementSetStepsAtLeast
    GamesAchievementSetStepsAtLeast (..),
    newGamesAchievementSetStepsAtLeast,

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

    -- ** MetagameConfig
    MetagameConfig (..),
    newMetagameConfig,

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

    -- ** RevisionCheckResponse
    RevisionCheckResponse (..),
    newRevisionCheckResponse,

    -- ** RevisionCheckResponse_RevisionStatus
    RevisionCheckResponse_RevisionStatus (..),

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

import Network.Google.Games.AchievementDefinitions.List
import Network.Google.Games.Achievements.Increment
import Network.Google.Games.Achievements.List
import Network.Google.Games.Achievements.Reveal
import Network.Google.Games.Achievements.SetStepsAtLeast
import Network.Google.Games.Achievements.Unlock
import Network.Google.Games.Achievements.UpdateMultiple
import Network.Google.Games.Applications.Get
import Network.Google.Games.Applications.GetEndPoint
import Network.Google.Games.Applications.Played
import Network.Google.Games.Applications.Verify
import Network.Google.Games.Events.ListByPlayer
import Network.Google.Games.Events.ListDefinitions
import Network.Google.Games.Events.Record
import Network.Google.Games.Leaderboards.Get
import Network.Google.Games.Leaderboards.List
import Network.Google.Games.Metagame.GetMetagameConfig
import Network.Google.Games.Metagame.ListCategoriesByPlayer
import Network.Google.Games.Players.Get
import Network.Google.Games.Players.List
import Network.Google.Games.Revisions.Check
import Network.Google.Games.Scores.Get
import Network.Google.Games.Scores.List
import Network.Google.Games.Scores.ListWindow
import Network.Google.Games.Scores.Submit
import Network.Google.Games.Scores.SubmitMultiple
import Network.Google.Games.Snapshots.Get
import Network.Google.Games.Snapshots.List
import Network.Google.Games.Stats.Get
import Network.Google.Games.Types
