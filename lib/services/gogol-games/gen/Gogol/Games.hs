{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Games
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Play Games Service allows developers to enhance games with social leaderboards, achievements, game state, sign-in with Google, and more.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference>
module Gogol.Games
  ( -- * Configuration
    gamesService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,
    Drive'Appdata,
    Games'FullControl,

    -- * Resources

    -- ** games.accesstokens.generatePlayGroupingApiToken
    GamesAccesstokensGeneratePlayGroupingApiTokenResource,
    GamesAccesstokensGeneratePlayGroupingApiToken (..),
    newGamesAccesstokensGeneratePlayGroupingApiToken,

    -- ** games.accesstokens.generateRecallPlayGroupingApiToken
    GamesAccesstokensGenerateRecallPlayGroupingApiTokenResource,
    GamesAccesstokensGenerateRecallPlayGroupingApiToken (..),
    newGamesAccesstokensGenerateRecallPlayGroupingApiToken,

    -- ** games.achievementDefinitions.list
    GamesAchievementDefinitionsListResource,
    GamesAchievementDefinitionsList (..),
    newGamesAchievementDefinitionsList,

    -- ** games.achievements.increment
    GamesAchievementsIncrementResource,
    GamesAchievementsIncrement (..),
    newGamesAchievementsIncrement,

    -- ** games.achievements.list
    GamesAchievementsListResource,
    GamesAchievementsList (..),
    newGamesAchievementsList,

    -- ** games.achievements.reveal
    GamesAchievementsRevealResource,
    GamesAchievementsReveal (..),
    newGamesAchievementsReveal,

    -- ** games.achievements.setStepsAtLeast
    GamesAchievementsSetStepsAtLeastResource,
    GamesAchievementsSetStepsAtLeast (..),
    newGamesAchievementsSetStepsAtLeast,

    -- ** games.achievements.unlock
    GamesAchievementsUnlockResource,
    GamesAchievementsUnlock (..),
    newGamesAchievementsUnlock,

    -- ** games.achievements.updateMultiple
    GamesAchievementsUpdateMultipleResource,
    GamesAchievementsUpdateMultiple (..),
    newGamesAchievementsUpdateMultiple,

    -- ** games.applications.get
    GamesApplicationsGetResource,
    GamesApplicationsGet (..),
    newGamesApplicationsGet,

    -- ** games.applications.getEndPoint
    GamesApplicationsGetEndPointResource,
    GamesApplicationsGetEndPoint (..),
    newGamesApplicationsGetEndPoint,

    -- ** games.applications.played
    GamesApplicationsPlayedResource,
    GamesApplicationsPlayed (..),
    newGamesApplicationsPlayed,

    -- ** games.applications.verify
    GamesApplicationsVerifyResource,
    GamesApplicationsVerify (..),
    newGamesApplicationsVerify,

    -- ** games.events.listByPlayer
    GamesEventsListByPlayerResource,
    GamesEventsListByPlayer (..),
    newGamesEventsListByPlayer,

    -- ** games.events.listDefinitions
    GamesEventsListDefinitionsResource,
    GamesEventsListDefinitions (..),
    newGamesEventsListDefinitions,

    -- ** games.events.record
    GamesEventsRecordResource,
    GamesEventsRecord (..),
    newGamesEventsRecord,

    -- ** games.leaderboards.get
    GamesLeaderboardsGetResource,
    GamesLeaderboardsGet (..),
    newGamesLeaderboardsGet,

    -- ** games.leaderboards.list
    GamesLeaderboardsListResource,
    GamesLeaderboardsList (..),
    newGamesLeaderboardsList,

    -- ** games.metagame.getMetagameConfig
    GamesMetagameGetMetagameConfigResource,
    GamesMetagameGetMetagameConfig (..),
    newGamesMetagameGetMetagameConfig,

    -- ** games.metagame.listCategoriesByPlayer
    GamesMetagameListCategoriesByPlayerResource,
    GamesMetagameListCategoriesByPlayer (..),
    newGamesMetagameListCategoriesByPlayer,

    -- ** games.players.get
    GamesPlayersGetResource,
    GamesPlayersGet (..),
    newGamesPlayersGet,

    -- ** games.players.getMultipleApplicationPlayerIds
    GamesPlayersGetMultipleApplicationPlayerIdsResource,
    GamesPlayersGetMultipleApplicationPlayerIds (..),
    newGamesPlayersGetMultipleApplicationPlayerIds,

    -- ** games.players.getScopedPlayerIds
    GamesPlayersGetScopedPlayerIdsResource,
    GamesPlayersGetScopedPlayerIds (..),
    newGamesPlayersGetScopedPlayerIds,

    -- ** games.players.list
    GamesPlayersListResource,
    GamesPlayersList (..),
    newGamesPlayersList,

    -- ** games.recall.gamesPlayerTokens
    GamesRecallGamesPlayerTokensResource,
    GamesRecallGamesPlayerTokens (..),
    newGamesRecallGamesPlayerTokens,

    -- ** games.recall.lastTokenFromAllDeveloperGames
    GamesRecallLastTokenFromAllDeveloperGamesResource,
    GamesRecallLastTokenFromAllDeveloperGames (..),
    newGamesRecallLastTokenFromAllDeveloperGames,

    -- ** games.recall.linkPersona
    GamesRecallLinkPersonaResource,
    GamesRecallLinkPersona (..),
    newGamesRecallLinkPersona,

    -- ** games.recall.resetPersona
    GamesRecallResetPersonaResource,
    GamesRecallResetPersona (..),
    newGamesRecallResetPersona,

    -- ** games.recall.retrieveTokens
    GamesRecallRetrieveTokensResource,
    GamesRecallRetrieveTokens (..),
    newGamesRecallRetrieveTokens,

    -- ** games.recall.unlinkPersona
    GamesRecallUnlinkPersonaResource,
    GamesRecallUnlinkPersona (..),
    newGamesRecallUnlinkPersona,

    -- ** games.revisions.check
    GamesRevisionsCheckResource,
    GamesRevisionsCheck (..),
    newGamesRevisionsCheck,

    -- ** games.scores.get
    GamesScoresGetResource,
    GamesScoresGet (..),
    newGamesScoresGet,

    -- ** games.scores.list
    GamesScoresListResource,
    GamesScoresList (..),
    newGamesScoresList,

    -- ** games.scores.listWindow
    GamesScoresListWindowResource,
    GamesScoresListWindow (..),
    newGamesScoresListWindow,

    -- ** games.scores.submit
    GamesScoresSubmitResource,
    GamesScoresSubmit (..),
    newGamesScoresSubmit,

    -- ** games.scores.submitMultiple
    GamesScoresSubmitMultipleResource,
    GamesScoresSubmitMultiple (..),
    newGamesScoresSubmitMultiple,

    -- ** games.snapshots.get
    GamesSnapshotsGetResource,
    GamesSnapshotsGet (..),
    newGamesSnapshotsGet,

    -- ** games.snapshots.list
    GamesSnapshotsListResource,
    GamesSnapshotsList (..),
    newGamesSnapshotsList,

    -- ** games.stats.get
    GamesStatsGetResource,
    GamesStatsGet (..),
    newGamesStatsGet,

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

import Gogol.Games.Accesstokens.GeneratePlayGroupingApiToken
import Gogol.Games.Accesstokens.GenerateRecallPlayGroupingApiToken
import Gogol.Games.AchievementDefinitions.List
import Gogol.Games.Achievements.Increment
import Gogol.Games.Achievements.List
import Gogol.Games.Achievements.Reveal
import Gogol.Games.Achievements.SetStepsAtLeast
import Gogol.Games.Achievements.Unlock
import Gogol.Games.Achievements.UpdateMultiple
import Gogol.Games.Applications.Get
import Gogol.Games.Applications.GetEndPoint
import Gogol.Games.Applications.Played
import Gogol.Games.Applications.Verify
import Gogol.Games.Events.ListByPlayer
import Gogol.Games.Events.ListDefinitions
import Gogol.Games.Events.Record
import Gogol.Games.Leaderboards.Get
import Gogol.Games.Leaderboards.List
import Gogol.Games.Metagame.GetMetagameConfig
import Gogol.Games.Metagame.ListCategoriesByPlayer
import Gogol.Games.Players.Get
import Gogol.Games.Players.GetMultipleApplicationPlayerIds
import Gogol.Games.Players.GetScopedPlayerIds
import Gogol.Games.Players.List
import Gogol.Games.Recall.GamesPlayerTokens
import Gogol.Games.Recall.LastTokenFromAllDeveloperGames
import Gogol.Games.Recall.LinkPersona
import Gogol.Games.Recall.ResetPersona
import Gogol.Games.Recall.RetrieveTokens
import Gogol.Games.Recall.UnlinkPersona
import Gogol.Games.Revisions.Check
import Gogol.Games.Scores.Get
import Gogol.Games.Scores.List
import Gogol.Games.Scores.ListWindow
import Gogol.Games.Scores.Submit
import Gogol.Games.Scores.SubmitMultiple
import Gogol.Games.Snapshots.Get
import Gogol.Games.Snapshots.List
import Gogol.Games.Stats.Get
import Gogol.Games.Types
