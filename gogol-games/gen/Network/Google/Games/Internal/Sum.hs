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
-- Module      : Network.Google.Games.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Games.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AchievementDefinition_AchievementType
    AchievementDefinition_AchievementType
      ( AchievementDefinition_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED,
        AchievementDefinition_AchievementType_Standard,
        AchievementDefinition_AchievementType_Incremental,
        ..
      ),

    -- * AchievementDefinition_InitialState
    AchievementDefinition_InitialState
      ( AchievementDefinition_InitialState_INITIALACHIEVEMENTSTATEUNSPECIFIED,
        AchievementDefinition_InitialState_Hidden,
        AchievementDefinition_InitialState_Revealed,
        AchievementDefinition_InitialState_Unlocked,
        ..
      ),

    -- * AchievementRevealResponse_CurrentState
    AchievementRevealResponse_CurrentState
      ( AchievementRevealResponse_CurrentState_REVEALACHIEVEMENTSTATEUNSPECIFIED,
        AchievementRevealResponse_CurrentState_Revealed,
        AchievementRevealResponse_CurrentState_Unlocked,
        ..
      ),

    -- * AchievementUpdateRequest_UpdateType
    AchievementUpdateRequest_UpdateType
      ( AchievementUpdateRequest_UpdateType_ACHIEVEMENTUPDATETYPEUNSPECIFIED,
        AchievementUpdateRequest_UpdateType_Reveal,
        AchievementUpdateRequest_UpdateType_Unlock,
        AchievementUpdateRequest_UpdateType_Increment,
        AchievementUpdateRequest_UpdateType_SETSTEPSATLEAST,
        ..
      ),

    -- * AchievementUpdateResponse_CurrentState
    AchievementUpdateResponse_CurrentState
      ( AchievementUpdateResponse_CurrentState_UPDATEDACHIEVEMENTSTATEUNSPECIFIED,
        AchievementUpdateResponse_CurrentState_Hidden,
        AchievementUpdateResponse_CurrentState_Revealed,
        AchievementUpdateResponse_CurrentState_Unlocked,
        ..
      ),

    -- * Application_EnabledFeaturesItem
    Application_EnabledFeaturesItem
      ( Application_EnabledFeaturesItem_APPLICATIONFEATUREUNSPECIFIED,
        Application_EnabledFeaturesItem_Snapshots,
        ..
      ),

    -- * EventBatchRecordFailure_FailureCause
    EventBatchRecordFailure_FailureCause
      ( EventBatchRecordFailure_FailureCause_EVENTFAILURECAUSEUNSPECIFIED,
        EventBatchRecordFailure_FailureCause_TOOLARGE,
        EventBatchRecordFailure_FailureCause_TIMEPERIODEXPIRED,
        EventBatchRecordFailure_FailureCause_TIMEPERIODSHORT,
        EventBatchRecordFailure_FailureCause_TIMEPERIODLONG,
        EventBatchRecordFailure_FailureCause_ALREADYUPDATED,
        EventBatchRecordFailure_FailureCause_RECORDRATEHIGH,
        ..
      ),

    -- * EventDefinition_Visibility
    EventDefinition_Visibility
      ( EventDefinition_Visibility_EVENTVISIBILITYUNSPECIFIED,
        EventDefinition_Visibility_Revealed,
        EventDefinition_Visibility_Hidden,
        ..
      ),

    -- * EventRecordFailure_FailureCause
    EventRecordFailure_FailureCause
      ( EventRecordFailure_FailureCause_EVENTUPDATEFAILURECAUSEUNSPECIFIED,
        EventRecordFailure_FailureCause_NOTFOUND,
        EventRecordFailure_FailureCause_INVALIDUPDATEVALUE,
        ..
      ),

    -- * Instance_PlatformType
    Instance_PlatformType
      ( Instance_PlatformType_PLATFORMTYPEUNSPECIFIED,
        Instance_PlatformType_Android,
        Instance_PlatformType_Ios,
        Instance_PlatformType_WEBAPP,
        ..
      ),

    -- * Leaderboard_Order
    Leaderboard_Order
      ( Leaderboard_Order_SCOREORDERUNSPECIFIED,
        Leaderboard_Order_LARGERISBETTER,
        Leaderboard_Order_SMALLERISBETTER,
        ..
      ),

    -- * LeaderboardEntry_TimeSpan
    LeaderboardEntry_TimeSpan
      ( LeaderboardEntry_TimeSpan_SCORETIMESPANUNSPECIFIED,
        LeaderboardEntry_TimeSpan_ALLTIME,
        LeaderboardEntry_TimeSpan_Weekly,
        LeaderboardEntry_TimeSpan_Daily,
        ..
      ),

    -- * Player_FriendStatus
    Player_FriendStatus
      ( Player_FriendStatus_FRIENDSTATUSUNSPECIFIED,
        Player_FriendStatus_NORELATIONSHIP,
        Player_FriendStatus_Friend,
        ..
      ),

    -- * PlayerAchievement_AchievementState
    PlayerAchievement_AchievementState
      ( PlayerAchievement_AchievementState_STATEUNSPECIFIED,
        PlayerAchievement_AchievementState_Hidden,
        PlayerAchievement_AchievementState_Revealed,
        PlayerAchievement_AchievementState_Unlocked,
        ..
      ),

    -- * PlayerLeaderboardScore_TimeSpan
    PlayerLeaderboardScore_TimeSpan
      ( PlayerLeaderboardScore_TimeSpan_SCORETIMESPANUNSPECIFIED,
        PlayerLeaderboardScore_TimeSpan_ALLTIME,
        PlayerLeaderboardScore_TimeSpan_Weekly,
        PlayerLeaderboardScore_TimeSpan_Daily,
        ..
      ),

    -- * PlayerScore_TimeSpan
    PlayerScore_TimeSpan
      ( PlayerScore_TimeSpan_SCORETIMESPANUNSPECIFIED,
        PlayerScore_TimeSpan_ALLTIME,
        PlayerScore_TimeSpan_Weekly,
        PlayerScore_TimeSpan_Daily,
        ..
      ),

    -- * PlayerScoreResponse_BeatenScoreTimeSpansItem
    PlayerScoreResponse_BeatenScoreTimeSpansItem
      ( PlayerScoreResponse_BeatenScoreTimeSpansItem_SCORETIMESPANUNSPECIFIED,
        PlayerScoreResponse_BeatenScoreTimeSpansItem_ALLTIME,
        PlayerScoreResponse_BeatenScoreTimeSpansItem_Weekly,
        PlayerScoreResponse_BeatenScoreTimeSpansItem_Daily,
        ..
      ),

    -- * ProfileSettings_FriendsListVisibility
    ProfileSettings_FriendsListVisibility
      ( ProfileSettings_FriendsListVisibility_FRIENDSLISTVISIBILITYUNSPECIFIED,
        ProfileSettings_FriendsListVisibility_Visible,
        ProfileSettings_FriendsListVisibility_REQUESTREQUIRED,
        ProfileSettings_FriendsListVisibility_Unavailable,
        ..
      ),

    -- * RevisionCheckResponse_RevisionStatus
    RevisionCheckResponse_RevisionStatus
      ( RevisionCheckResponse_RevisionStatus_REVISIONSTATUSUNSPECIFIED,
        RevisionCheckResponse_RevisionStatus_OK,
        RevisionCheckResponse_RevisionStatus_Deprecated,
        RevisionCheckResponse_RevisionStatus_Invalid,
        ..
      ),

    -- * Snapshot_Type
    Snapshot_Type
      ( Snapshot_Type_SNAPSHOTTYPEUNSPECIFIED,
        Snapshot_Type_SAVEGAME,
        ..
      ),

    -- * AchievementsListState
    AchievementsListState
      ( AchievementsListState_All,
        AchievementsListState_Hidden,
        AchievementsListState_Revealed,
        AchievementsListState_Unlocked,
        ..
      ),

    -- * ApplicationsGetPlatformType
    ApplicationsGetPlatformType
      ( ApplicationsGetPlatformType_PLATFORMTYPEUNSPECIFIED,
        ApplicationsGetPlatformType_Android,
        ApplicationsGetPlatformType_Ios,
        ApplicationsGetPlatformType_WEBAPP,
        ..
      ),

    -- * ApplicationsGetEndPointEndPointType
    ApplicationsGetEndPointEndPointType
      ( ApplicationsGetEndPointEndPointType_ENDPOINTTYPEUNSPECIFIED,
        ApplicationsGetEndPointEndPointType_PROFILECREATION,
        ApplicationsGetEndPointEndPointType_PROFILESETTINGS,
        ..
      ),

    -- * MetagameListCategoriesByPlayerCollection
    MetagameListCategoriesByPlayerCollection
      ( MetagameListCategoriesByPlayerCollection_COLLECTIONUNSPECIFIED,
        MetagameListCategoriesByPlayerCollection_All,
        ..
      ),

    -- * PlayersListCollection
    PlayersListCollection
      ( PlayersListCollection_PlayedWith,
        ..
      ),

    -- * ScoresGetIncludeRankType
    ScoresGetIncludeRankType
      ( ScoresGetIncludeRankType_INCLUDERANKTYPEUNSPECIFIED,
        ScoresGetIncludeRankType_All,
        ScoresGetIncludeRankType_Public,
        ScoresGetIncludeRankType_Social,
        ScoresGetIncludeRankType_Friends,
        ..
      ),

    -- * ScoresGetTimeSpan
    ScoresGetTimeSpan
      ( ScoresGetTimeSpan_SCORETIMESPANUNSPECIFIED,
        ScoresGetTimeSpan_All,
        ScoresGetTimeSpan_ALLTIME,
        ScoresGetTimeSpan_Weekly,
        ScoresGetTimeSpan_Daily,
        ..
      ),

    -- * ScoresListCollection
    ScoresListCollection
      ( ScoresListCollection_SCORECOLLECTIONUNSPECIFIED,
        ScoresListCollection_Public,
        ScoresListCollection_Social,
        ScoresListCollection_Friends,
        ..
      ),

    -- * ScoresListTimeSpan
    ScoresListTimeSpan
      ( ScoresListTimeSpan_SCORETIMESPANUNSPECIFIED,
        ScoresListTimeSpan_ALLTIME,
        ScoresListTimeSpan_Weekly,
        ScoresListTimeSpan_Daily,
        ..
      ),

    -- * ScoresListWindowCollection
    ScoresListWindowCollection
      ( ScoresListWindowCollection_SCORECOLLECTIONUNSPECIFIED,
        ScoresListWindowCollection_Public,
        ScoresListWindowCollection_Social,
        ScoresListWindowCollection_Friends,
        ..
      ),

    -- * ScoresListWindowTimeSpan
    ScoresListWindowTimeSpan
      ( ScoresListWindowTimeSpan_SCORETIMESPANUNSPECIFIED,
        ScoresListWindowTimeSpan_ALLTIME,
        ScoresListWindowTimeSpan_Weekly,
        ScoresListWindowTimeSpan_Daily,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The type of the achievement.
newtype AchievementDefinition_AchievementType = AchievementDefinition_AchievementType {fromAchievementDefinition_AchievementType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Safe default, don\'t use.
pattern AchievementDefinition_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED :: AchievementDefinition_AchievementType
pattern AchievementDefinition_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED = AchievementDefinition_AchievementType "ACHIEVEMENT_TYPE_UNSPECIFIED"

-- | Achievement is either locked or unlocked.
pattern AchievementDefinition_AchievementType_Standard :: AchievementDefinition_AchievementType
pattern AchievementDefinition_AchievementType_Standard = AchievementDefinition_AchievementType "STANDARD"

-- | Achievement is incremental.
pattern AchievementDefinition_AchievementType_Incremental :: AchievementDefinition_AchievementType
pattern AchievementDefinition_AchievementType_Incremental = AchievementDefinition_AchievementType "INCREMENTAL"

{-# COMPLETE
  AchievementDefinition_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED,
  AchievementDefinition_AchievementType_Standard,
  AchievementDefinition_AchievementType_Incremental,
  AchievementDefinition_AchievementType
  #-}

-- | The initial state of the achievement.
newtype AchievementDefinition_InitialState = AchievementDefinition_InitialState {fromAchievementDefinition_InitialState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Safe default, don\'t use.
pattern AchievementDefinition_InitialState_INITIALACHIEVEMENTSTATEUNSPECIFIED :: AchievementDefinition_InitialState
pattern AchievementDefinition_InitialState_INITIALACHIEVEMENTSTATEUNSPECIFIED = AchievementDefinition_InitialState "INITIAL_ACHIEVEMENT_STATE_UNSPECIFIED"

-- | Achievement is hidden.
pattern AchievementDefinition_InitialState_Hidden :: AchievementDefinition_InitialState
pattern AchievementDefinition_InitialState_Hidden = AchievementDefinition_InitialState "HIDDEN"

-- | Achievement is revealed.
pattern AchievementDefinition_InitialState_Revealed :: AchievementDefinition_InitialState
pattern AchievementDefinition_InitialState_Revealed = AchievementDefinition_InitialState "REVEALED"

-- | Achievement is unlocked.
pattern AchievementDefinition_InitialState_Unlocked :: AchievementDefinition_InitialState
pattern AchievementDefinition_InitialState_Unlocked = AchievementDefinition_InitialState "UNLOCKED"

{-# COMPLETE
  AchievementDefinition_InitialState_INITIALACHIEVEMENTSTATEUNSPECIFIED,
  AchievementDefinition_InitialState_Hidden,
  AchievementDefinition_InitialState_Revealed,
  AchievementDefinition_InitialState_Unlocked,
  AchievementDefinition_InitialState
  #-}

-- | The current state of the achievement for which a reveal was attempted. This might be @UNLOCKED@ if the achievement was already unlocked.
newtype AchievementRevealResponse_CurrentState = AchievementRevealResponse_CurrentState {fromAchievementRevealResponse_CurrentState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Safe default, don\'t use.
pattern AchievementRevealResponse_CurrentState_REVEALACHIEVEMENTSTATEUNSPECIFIED :: AchievementRevealResponse_CurrentState
pattern AchievementRevealResponse_CurrentState_REVEALACHIEVEMENTSTATEUNSPECIFIED = AchievementRevealResponse_CurrentState "REVEAL_ACHIEVEMENT_STATE_UNSPECIFIED"

-- | Achievement is revealed.
pattern AchievementRevealResponse_CurrentState_Revealed :: AchievementRevealResponse_CurrentState
pattern AchievementRevealResponse_CurrentState_Revealed = AchievementRevealResponse_CurrentState "REVEALED"

-- | Achievement is unlocked.
pattern AchievementRevealResponse_CurrentState_Unlocked :: AchievementRevealResponse_CurrentState
pattern AchievementRevealResponse_CurrentState_Unlocked = AchievementRevealResponse_CurrentState "UNLOCKED"

{-# COMPLETE
  AchievementRevealResponse_CurrentState_REVEALACHIEVEMENTSTATEUNSPECIFIED,
  AchievementRevealResponse_CurrentState_Revealed,
  AchievementRevealResponse_CurrentState_Unlocked,
  AchievementRevealResponse_CurrentState
  #-}

-- | The type of update being applied.
newtype AchievementUpdateRequest_UpdateType = AchievementUpdateRequest_UpdateType {fromAchievementUpdateRequest_UpdateType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Safe default, don\'t use.
pattern AchievementUpdateRequest_UpdateType_ACHIEVEMENTUPDATETYPEUNSPECIFIED :: AchievementUpdateRequest_UpdateType
pattern AchievementUpdateRequest_UpdateType_ACHIEVEMENTUPDATETYPEUNSPECIFIED = AchievementUpdateRequest_UpdateType "ACHIEVEMENT_UPDATE_TYPE_UNSPECIFIED"

-- | Achievement is revealed.
pattern AchievementUpdateRequest_UpdateType_Reveal :: AchievementUpdateRequest_UpdateType
pattern AchievementUpdateRequest_UpdateType_Reveal = AchievementUpdateRequest_UpdateType "REVEAL"

-- | Achievement is unlocked.
pattern AchievementUpdateRequest_UpdateType_Unlock :: AchievementUpdateRequest_UpdateType
pattern AchievementUpdateRequest_UpdateType_Unlock = AchievementUpdateRequest_UpdateType "UNLOCK"

-- | Achievement is incremented.
pattern AchievementUpdateRequest_UpdateType_Increment :: AchievementUpdateRequest_UpdateType
pattern AchievementUpdateRequest_UpdateType_Increment = AchievementUpdateRequest_UpdateType "INCREMENT"

-- | Achievement progress is set to at least the passed value.
pattern AchievementUpdateRequest_UpdateType_SETSTEPSATLEAST :: AchievementUpdateRequest_UpdateType
pattern AchievementUpdateRequest_UpdateType_SETSTEPSATLEAST = AchievementUpdateRequest_UpdateType "SET_STEPS_AT_LEAST"

{-# COMPLETE
  AchievementUpdateRequest_UpdateType_ACHIEVEMENTUPDATETYPEUNSPECIFIED,
  AchievementUpdateRequest_UpdateType_Reveal,
  AchievementUpdateRequest_UpdateType_Unlock,
  AchievementUpdateRequest_UpdateType_Increment,
  AchievementUpdateRequest_UpdateType_SETSTEPSATLEAST,
  AchievementUpdateRequest_UpdateType
  #-}

-- | The current state of the achievement.
newtype AchievementUpdateResponse_CurrentState = AchievementUpdateResponse_CurrentState {fromAchievementUpdateResponse_CurrentState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Safe default, don\'t use.
pattern AchievementUpdateResponse_CurrentState_UPDATEDACHIEVEMENTSTATEUNSPECIFIED :: AchievementUpdateResponse_CurrentState
pattern AchievementUpdateResponse_CurrentState_UPDATEDACHIEVEMENTSTATEUNSPECIFIED = AchievementUpdateResponse_CurrentState "UPDATED_ACHIEVEMENT_STATE_UNSPECIFIED"

-- | Achievement is hidden.
pattern AchievementUpdateResponse_CurrentState_Hidden :: AchievementUpdateResponse_CurrentState
pattern AchievementUpdateResponse_CurrentState_Hidden = AchievementUpdateResponse_CurrentState "HIDDEN"

-- | Achievement is revealed.
pattern AchievementUpdateResponse_CurrentState_Revealed :: AchievementUpdateResponse_CurrentState
pattern AchievementUpdateResponse_CurrentState_Revealed = AchievementUpdateResponse_CurrentState "REVEALED"

-- | Achievement is unlocked.
pattern AchievementUpdateResponse_CurrentState_Unlocked :: AchievementUpdateResponse_CurrentState
pattern AchievementUpdateResponse_CurrentState_Unlocked = AchievementUpdateResponse_CurrentState "UNLOCKED"

{-# COMPLETE
  AchievementUpdateResponse_CurrentState_UPDATEDACHIEVEMENTSTATEUNSPECIFIED,
  AchievementUpdateResponse_CurrentState_Hidden,
  AchievementUpdateResponse_CurrentState_Revealed,
  AchievementUpdateResponse_CurrentState_Unlocked,
  AchievementUpdateResponse_CurrentState
  #-}

newtype Application_EnabledFeaturesItem = Application_EnabledFeaturesItem {fromApplication_EnabledFeaturesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Safe default, don\'t use.
pattern Application_EnabledFeaturesItem_APPLICATIONFEATUREUNSPECIFIED :: Application_EnabledFeaturesItem
pattern Application_EnabledFeaturesItem_APPLICATIONFEATUREUNSPECIFIED = Application_EnabledFeaturesItem "APPLICATION_FEATURE_UNSPECIFIED"

-- | Saved Games (snapshots).
pattern Application_EnabledFeaturesItem_Snapshots :: Application_EnabledFeaturesItem
pattern Application_EnabledFeaturesItem_Snapshots = Application_EnabledFeaturesItem "SNAPSHOTS"

{-# COMPLETE
  Application_EnabledFeaturesItem_APPLICATIONFEATUREUNSPECIFIED,
  Application_EnabledFeaturesItem_Snapshots,
  Application_EnabledFeaturesItem
  #-}

-- | The cause for the update failure.
newtype EventBatchRecordFailure_FailureCause = EventBatchRecordFailure_FailureCause {fromEventBatchRecordFailure_FailureCause :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Should not be used.
pattern EventBatchRecordFailure_FailureCause_EVENTFAILURECAUSEUNSPECIFIED :: EventBatchRecordFailure_FailureCause
pattern EventBatchRecordFailure_FailureCause_EVENTFAILURECAUSEUNSPECIFIED = EventBatchRecordFailure_FailureCause "EVENT_FAILURE_CAUSE_UNSPECIFIED"

-- | A batch request was issued with more events than are allowed in a single batch.
pattern EventBatchRecordFailure_FailureCause_TOOLARGE :: EventBatchRecordFailure_FailureCause
pattern EventBatchRecordFailure_FailureCause_TOOLARGE = EventBatchRecordFailure_FailureCause "TOO_LARGE"

-- | A batch was sent with data too far in the past to record.
pattern EventBatchRecordFailure_FailureCause_TIMEPERIODEXPIRED :: EventBatchRecordFailure_FailureCause
pattern EventBatchRecordFailure_FailureCause_TIMEPERIODEXPIRED = EventBatchRecordFailure_FailureCause "TIME_PERIOD_EXPIRED"

-- | A batch was sent with a time range that was too short.
pattern EventBatchRecordFailure_FailureCause_TIMEPERIODSHORT :: EventBatchRecordFailure_FailureCause
pattern EventBatchRecordFailure_FailureCause_TIMEPERIODSHORT = EventBatchRecordFailure_FailureCause "TIME_PERIOD_SHORT"

-- | A batch was sent with a time range that was too long.
pattern EventBatchRecordFailure_FailureCause_TIMEPERIODLONG :: EventBatchRecordFailure_FailureCause
pattern EventBatchRecordFailure_FailureCause_TIMEPERIODLONG = EventBatchRecordFailure_FailureCause "TIME_PERIOD_LONG"

-- | An attempt was made to record a batch of data which was already seen.
pattern EventBatchRecordFailure_FailureCause_ALREADYUPDATED :: EventBatchRecordFailure_FailureCause
pattern EventBatchRecordFailure_FailureCause_ALREADYUPDATED = EventBatchRecordFailure_FailureCause "ALREADY_UPDATED"

-- | An attempt was made to record data faster than the server will apply updates.
pattern EventBatchRecordFailure_FailureCause_RECORDRATEHIGH :: EventBatchRecordFailure_FailureCause
pattern EventBatchRecordFailure_FailureCause_RECORDRATEHIGH = EventBatchRecordFailure_FailureCause "RECORD_RATE_HIGH"

{-# COMPLETE
  EventBatchRecordFailure_FailureCause_EVENTFAILURECAUSEUNSPECIFIED,
  EventBatchRecordFailure_FailureCause_TOOLARGE,
  EventBatchRecordFailure_FailureCause_TIMEPERIODEXPIRED,
  EventBatchRecordFailure_FailureCause_TIMEPERIODSHORT,
  EventBatchRecordFailure_FailureCause_TIMEPERIODLONG,
  EventBatchRecordFailure_FailureCause_ALREADYUPDATED,
  EventBatchRecordFailure_FailureCause_RECORDRATEHIGH,
  EventBatchRecordFailure_FailureCause
  #-}

-- | The visibility of event being tracked in this definition.
newtype EventDefinition_Visibility = EventDefinition_Visibility {fromEventDefinition_Visibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Should not be used.
pattern EventDefinition_Visibility_EVENTVISIBILITYUNSPECIFIED :: EventDefinition_Visibility
pattern EventDefinition_Visibility_EVENTVISIBILITYUNSPECIFIED = EventDefinition_Visibility "EVENT_VISIBILITY_UNSPECIFIED"

-- | This event should be visible to all users.
pattern EventDefinition_Visibility_Revealed :: EventDefinition_Visibility
pattern EventDefinition_Visibility_Revealed = EventDefinition_Visibility "REVEALED"

-- | This event should only be shown to users that have recorded this event at least once.
pattern EventDefinition_Visibility_Hidden :: EventDefinition_Visibility
pattern EventDefinition_Visibility_Hidden = EventDefinition_Visibility "HIDDEN"

{-# COMPLETE
  EventDefinition_Visibility_EVENTVISIBILITYUNSPECIFIED,
  EventDefinition_Visibility_Revealed,
  EventDefinition_Visibility_Hidden,
  EventDefinition_Visibility
  #-}

-- | The cause for the update failure.
newtype EventRecordFailure_FailureCause = EventRecordFailure_FailureCause {fromEventRecordFailure_FailureCause :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Should not use.
pattern EventRecordFailure_FailureCause_EVENTUPDATEFAILURECAUSEUNSPECIFIED :: EventRecordFailure_FailureCause
pattern EventRecordFailure_FailureCause_EVENTUPDATEFAILURECAUSEUNSPECIFIED = EventRecordFailure_FailureCause "EVENT_UPDATE_FAILURE_CAUSE_UNSPECIFIED"

-- | An attempt was made to set an event that was not defined.
pattern EventRecordFailure_FailureCause_NOTFOUND :: EventRecordFailure_FailureCause
pattern EventRecordFailure_FailureCause_NOTFOUND = EventRecordFailure_FailureCause "NOT_FOUND"

-- | An attempt was made to increment an event by a non-positive value.
pattern EventRecordFailure_FailureCause_INVALIDUPDATEVALUE :: EventRecordFailure_FailureCause
pattern EventRecordFailure_FailureCause_INVALIDUPDATEVALUE = EventRecordFailure_FailureCause "INVALID_UPDATE_VALUE"

{-# COMPLETE
  EventRecordFailure_FailureCause_EVENTUPDATEFAILURECAUSEUNSPECIFIED,
  EventRecordFailure_FailureCause_NOTFOUND,
  EventRecordFailure_FailureCause_INVALIDUPDATEVALUE,
  EventRecordFailure_FailureCause
  #-}

-- | The platform type.
newtype Instance_PlatformType = Instance_PlatformType {fromInstance_PlatformType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Should be unused.
pattern Instance_PlatformType_PLATFORMTYPEUNSPECIFIED :: Instance_PlatformType
pattern Instance_PlatformType_PLATFORMTYPEUNSPECIFIED = Instance_PlatformType "PLATFORM_TYPE_UNSPECIFIED"

-- | Instance is for Android.
pattern Instance_PlatformType_Android :: Instance_PlatformType
pattern Instance_PlatformType_Android = Instance_PlatformType "ANDROID"

-- | Instance is for iOS.
pattern Instance_PlatformType_Ios :: Instance_PlatformType
pattern Instance_PlatformType_Ios = Instance_PlatformType "IOS"

-- | Instance is for Web App.
pattern Instance_PlatformType_WEBAPP :: Instance_PlatformType
pattern Instance_PlatformType_WEBAPP = Instance_PlatformType "WEB_APP"

{-# COMPLETE
  Instance_PlatformType_PLATFORMTYPEUNSPECIFIED,
  Instance_PlatformType_Android,
  Instance_PlatformType_Ios,
  Instance_PlatformType_WEBAPP,
  Instance_PlatformType
  #-}

-- | How scores are ordered.
newtype Leaderboard_Order = Leaderboard_Order {fromLeaderboard_Order :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Leaderboard_Order_SCOREORDERUNSPECIFIED :: Leaderboard_Order
pattern Leaderboard_Order_SCOREORDERUNSPECIFIED = Leaderboard_Order "SCORE_ORDER_UNSPECIFIED"

-- | Larger values are better; scores are sorted in descending order
pattern Leaderboard_Order_LARGERISBETTER :: Leaderboard_Order
pattern Leaderboard_Order_LARGERISBETTER = Leaderboard_Order "LARGER_IS_BETTER"

-- | Smaller values are better; scores are sorted in ascending order
pattern Leaderboard_Order_SMALLERISBETTER :: Leaderboard_Order
pattern Leaderboard_Order_SMALLERISBETTER = Leaderboard_Order "SMALLER_IS_BETTER"

{-# COMPLETE
  Leaderboard_Order_SCOREORDERUNSPECIFIED,
  Leaderboard_Order_LARGERISBETTER,
  Leaderboard_Order_SMALLERISBETTER,
  Leaderboard_Order
  #-}

-- | The time span of this high score.
newtype LeaderboardEntry_TimeSpan = LeaderboardEntry_TimeSpan {fromLeaderboardEntry_TimeSpan :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern LeaderboardEntry_TimeSpan_SCORETIMESPANUNSPECIFIED :: LeaderboardEntry_TimeSpan
pattern LeaderboardEntry_TimeSpan_SCORETIMESPANUNSPECIFIED = LeaderboardEntry_TimeSpan "SCORE_TIME_SPAN_UNSPECIFIED"

-- | The score is an all-time score.
pattern LeaderboardEntry_TimeSpan_ALLTIME :: LeaderboardEntry_TimeSpan
pattern LeaderboardEntry_TimeSpan_ALLTIME = LeaderboardEntry_TimeSpan "ALL_TIME"

-- | The score is a weekly score.
pattern LeaderboardEntry_TimeSpan_Weekly :: LeaderboardEntry_TimeSpan
pattern LeaderboardEntry_TimeSpan_Weekly = LeaderboardEntry_TimeSpan "WEEKLY"

-- | The score is a daily score.
pattern LeaderboardEntry_TimeSpan_Daily :: LeaderboardEntry_TimeSpan
pattern LeaderboardEntry_TimeSpan_Daily = LeaderboardEntry_TimeSpan "DAILY"

{-# COMPLETE
  LeaderboardEntry_TimeSpan_SCORETIMESPANUNSPECIFIED,
  LeaderboardEntry_TimeSpan_ALLTIME,
  LeaderboardEntry_TimeSpan_Weekly,
  LeaderboardEntry_TimeSpan_Daily,
  LeaderboardEntry_TimeSpan
  #-}

-- | The friend status of the given player, relative to the requester. This is unset if the player is not sharing their friends list with the game.
newtype Player_FriendStatus = Player_FriendStatus {fromPlayer_FriendStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Player_FriendStatus_FRIENDSTATUSUNSPECIFIED :: Player_FriendStatus
pattern Player_FriendStatus_FRIENDSTATUSUNSPECIFIED = Player_FriendStatus "FRIEND_STATUS_UNSPECIFIED"

-- | There is no relationship between the players.
pattern Player_FriendStatus_NORELATIONSHIP :: Player_FriendStatus
pattern Player_FriendStatus_NORELATIONSHIP = Player_FriendStatus "NO_RELATIONSHIP"

-- | The player and requester are friends.
pattern Player_FriendStatus_Friend :: Player_FriendStatus
pattern Player_FriendStatus_Friend = Player_FriendStatus "FRIEND"

{-# COMPLETE
  Player_FriendStatus_FRIENDSTATUSUNSPECIFIED,
  Player_FriendStatus_NORELATIONSHIP,
  Player_FriendStatus_Friend,
  Player_FriendStatus
  #-}

-- | The state of the achievement.
newtype PlayerAchievement_AchievementState = PlayerAchievement_AchievementState {fromPlayerAchievement_AchievementState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern PlayerAchievement_AchievementState_STATEUNSPECIFIED :: PlayerAchievement_AchievementState
pattern PlayerAchievement_AchievementState_STATEUNSPECIFIED = PlayerAchievement_AchievementState "STATE_UNSPECIFIED"

-- | Achievement is hidden.
pattern PlayerAchievement_AchievementState_Hidden :: PlayerAchievement_AchievementState
pattern PlayerAchievement_AchievementState_Hidden = PlayerAchievement_AchievementState "HIDDEN"

-- | Achievement is revealed.
pattern PlayerAchievement_AchievementState_Revealed :: PlayerAchievement_AchievementState
pattern PlayerAchievement_AchievementState_Revealed = PlayerAchievement_AchievementState "REVEALED"

-- | Achievement is unlocked.
pattern PlayerAchievement_AchievementState_Unlocked :: PlayerAchievement_AchievementState
pattern PlayerAchievement_AchievementState_Unlocked = PlayerAchievement_AchievementState "UNLOCKED"

{-# COMPLETE
  PlayerAchievement_AchievementState_STATEUNSPECIFIED,
  PlayerAchievement_AchievementState_Hidden,
  PlayerAchievement_AchievementState_Revealed,
  PlayerAchievement_AchievementState_Unlocked,
  PlayerAchievement_AchievementState
  #-}

-- | The time span of this score.
newtype PlayerLeaderboardScore_TimeSpan = PlayerLeaderboardScore_TimeSpan {fromPlayerLeaderboardScore_TimeSpan :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern PlayerLeaderboardScore_TimeSpan_SCORETIMESPANUNSPECIFIED :: PlayerLeaderboardScore_TimeSpan
pattern PlayerLeaderboardScore_TimeSpan_SCORETIMESPANUNSPECIFIED = PlayerLeaderboardScore_TimeSpan "SCORE_TIME_SPAN_UNSPECIFIED"

-- | The score is an all-time score.
pattern PlayerLeaderboardScore_TimeSpan_ALLTIME :: PlayerLeaderboardScore_TimeSpan
pattern PlayerLeaderboardScore_TimeSpan_ALLTIME = PlayerLeaderboardScore_TimeSpan "ALL_TIME"

-- | The score is a weekly score.
pattern PlayerLeaderboardScore_TimeSpan_Weekly :: PlayerLeaderboardScore_TimeSpan
pattern PlayerLeaderboardScore_TimeSpan_Weekly = PlayerLeaderboardScore_TimeSpan "WEEKLY"

-- | The score is a daily score.
pattern PlayerLeaderboardScore_TimeSpan_Daily :: PlayerLeaderboardScore_TimeSpan
pattern PlayerLeaderboardScore_TimeSpan_Daily = PlayerLeaderboardScore_TimeSpan "DAILY"

{-# COMPLETE
  PlayerLeaderboardScore_TimeSpan_SCORETIMESPANUNSPECIFIED,
  PlayerLeaderboardScore_TimeSpan_ALLTIME,
  PlayerLeaderboardScore_TimeSpan_Weekly,
  PlayerLeaderboardScore_TimeSpan_Daily,
  PlayerLeaderboardScore_TimeSpan
  #-}

-- | The time span for this player score.
newtype PlayerScore_TimeSpan = PlayerScore_TimeSpan {fromPlayerScore_TimeSpan :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern PlayerScore_TimeSpan_SCORETIMESPANUNSPECIFIED :: PlayerScore_TimeSpan
pattern PlayerScore_TimeSpan_SCORETIMESPANUNSPECIFIED = PlayerScore_TimeSpan "SCORE_TIME_SPAN_UNSPECIFIED"

-- | The score is an all-time score.
pattern PlayerScore_TimeSpan_ALLTIME :: PlayerScore_TimeSpan
pattern PlayerScore_TimeSpan_ALLTIME = PlayerScore_TimeSpan "ALL_TIME"

-- | The score is a weekly score.
pattern PlayerScore_TimeSpan_Weekly :: PlayerScore_TimeSpan
pattern PlayerScore_TimeSpan_Weekly = PlayerScore_TimeSpan "WEEKLY"

-- | The score is a daily score.
pattern PlayerScore_TimeSpan_Daily :: PlayerScore_TimeSpan
pattern PlayerScore_TimeSpan_Daily = PlayerScore_TimeSpan "DAILY"

{-# COMPLETE
  PlayerScore_TimeSpan_SCORETIMESPANUNSPECIFIED,
  PlayerScore_TimeSpan_ALLTIME,
  PlayerScore_TimeSpan_Weekly,
  PlayerScore_TimeSpan_Daily,
  PlayerScore_TimeSpan
  #-}

newtype PlayerScoreResponse_BeatenScoreTimeSpansItem = PlayerScoreResponse_BeatenScoreTimeSpansItem {fromPlayerScoreResponse_BeatenScoreTimeSpansItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_SCORETIMESPANUNSPECIFIED :: PlayerScoreResponse_BeatenScoreTimeSpansItem
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_SCORETIMESPANUNSPECIFIED = PlayerScoreResponse_BeatenScoreTimeSpansItem "SCORE_TIME_SPAN_UNSPECIFIED"

-- | The score is an all-time score.
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_ALLTIME :: PlayerScoreResponse_BeatenScoreTimeSpansItem
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_ALLTIME = PlayerScoreResponse_BeatenScoreTimeSpansItem "ALL_TIME"

-- | The score is a weekly score.
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_Weekly :: PlayerScoreResponse_BeatenScoreTimeSpansItem
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_Weekly = PlayerScoreResponse_BeatenScoreTimeSpansItem "WEEKLY"

-- | The score is a daily score.
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_Daily :: PlayerScoreResponse_BeatenScoreTimeSpansItem
pattern PlayerScoreResponse_BeatenScoreTimeSpansItem_Daily = PlayerScoreResponse_BeatenScoreTimeSpansItem "DAILY"

{-# COMPLETE
  PlayerScoreResponse_BeatenScoreTimeSpansItem_SCORETIMESPANUNSPECIFIED,
  PlayerScoreResponse_BeatenScoreTimeSpansItem_ALLTIME,
  PlayerScoreResponse_BeatenScoreTimeSpansItem_Weekly,
  PlayerScoreResponse_BeatenScoreTimeSpansItem_Daily,
  PlayerScoreResponse_BeatenScoreTimeSpansItem
  #-}

newtype ProfileSettings_FriendsListVisibility = ProfileSettings_FriendsListVisibility {fromProfileSettings_FriendsListVisibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unused.
pattern ProfileSettings_FriendsListVisibility_FRIENDSLISTVISIBILITYUNSPECIFIED :: ProfileSettings_FriendsListVisibility
pattern ProfileSettings_FriendsListVisibility_FRIENDSLISTVISIBILITYUNSPECIFIED = ProfileSettings_FriendsListVisibility "FRIENDS_LIST_VISIBILITY_UNSPECIFIED"

-- | The friends list is currently visible to the game.
pattern ProfileSettings_FriendsListVisibility_Visible :: ProfileSettings_FriendsListVisibility
pattern ProfileSettings_FriendsListVisibility_Visible = ProfileSettings_FriendsListVisibility "VISIBLE"

-- | The developer does not have access to the friends list, but can call the Android API to show a consent dialog.
pattern ProfileSettings_FriendsListVisibility_REQUESTREQUIRED :: ProfileSettings_FriendsListVisibility
pattern ProfileSettings_FriendsListVisibility_REQUESTREQUIRED = ProfileSettings_FriendsListVisibility "REQUEST_REQUIRED"

-- | The friends list is currently unavailable for this user, and it is not possible to request access at this time, either because the user has permanently declined or the friends feature is not available to them. In this state, any attempts to request access to the friends list will be unsuccessful.
pattern ProfileSettings_FriendsListVisibility_Unavailable :: ProfileSettings_FriendsListVisibility
pattern ProfileSettings_FriendsListVisibility_Unavailable = ProfileSettings_FriendsListVisibility "UNAVAILABLE"

{-# COMPLETE
  ProfileSettings_FriendsListVisibility_FRIENDSLISTVISIBILITYUNSPECIFIED,
  ProfileSettings_FriendsListVisibility_Visible,
  ProfileSettings_FriendsListVisibility_REQUESTREQUIRED,
  ProfileSettings_FriendsListVisibility_Unavailable,
  ProfileSettings_FriendsListVisibility
  #-}

-- | The result of the revision check.
newtype RevisionCheckResponse_RevisionStatus = RevisionCheckResponse_RevisionStatus {fromRevisionCheckResponse_RevisionStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern RevisionCheckResponse_RevisionStatus_REVISIONSTATUSUNSPECIFIED :: RevisionCheckResponse_RevisionStatus
pattern RevisionCheckResponse_RevisionStatus_REVISIONSTATUSUNSPECIFIED = RevisionCheckResponse_RevisionStatus "REVISION_STATUS_UNSPECIFIED"

-- | The revision being used is current.
pattern RevisionCheckResponse_RevisionStatus_OK :: RevisionCheckResponse_RevisionStatus
pattern RevisionCheckResponse_RevisionStatus_OK = RevisionCheckResponse_RevisionStatus "OK"

-- | There is currently a newer version available, but the revision being used still works.
pattern RevisionCheckResponse_RevisionStatus_Deprecated :: RevisionCheckResponse_RevisionStatus
pattern RevisionCheckResponse_RevisionStatus_Deprecated = RevisionCheckResponse_RevisionStatus "DEPRECATED"

-- | The revision being used is not supported in any released version.
pattern RevisionCheckResponse_RevisionStatus_Invalid :: RevisionCheckResponse_RevisionStatus
pattern RevisionCheckResponse_RevisionStatus_Invalid = RevisionCheckResponse_RevisionStatus "INVALID"

{-# COMPLETE
  RevisionCheckResponse_RevisionStatus_REVISIONSTATUSUNSPECIFIED,
  RevisionCheckResponse_RevisionStatus_OK,
  RevisionCheckResponse_RevisionStatus_Deprecated,
  RevisionCheckResponse_RevisionStatus_Invalid,
  RevisionCheckResponse_RevisionStatus
  #-}

-- | The type of this snapshot.
newtype Snapshot_Type = Snapshot_Type {fromSnapshot_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern Snapshot_Type_SNAPSHOTTYPEUNSPECIFIED :: Snapshot_Type
pattern Snapshot_Type_SNAPSHOTTYPEUNSPECIFIED = Snapshot_Type "SNAPSHOT_TYPE_UNSPECIFIED"

-- | A snapshot representing a save game.
pattern Snapshot_Type_SAVEGAME :: Snapshot_Type
pattern Snapshot_Type_SAVEGAME = Snapshot_Type "SAVE_GAME"

{-# COMPLETE
  Snapshot_Type_SNAPSHOTTYPEUNSPECIFIED,
  Snapshot_Type_SAVEGAME,
  Snapshot_Type
  #-}

-- | Tells the server to return only achievements with the specified state. If this parameter isn\'t specified, all achievements are returned.
newtype AchievementsListState = AchievementsListState {fromAchievementsListState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | List all achievements. This is the default.
pattern AchievementsListState_All :: AchievementsListState
pattern AchievementsListState_All = AchievementsListState "ALL"

-- | List only hidden achievements.
pattern AchievementsListState_Hidden :: AchievementsListState
pattern AchievementsListState_Hidden = AchievementsListState "HIDDEN"

-- | List only revealed achievements.
pattern AchievementsListState_Revealed :: AchievementsListState
pattern AchievementsListState_Revealed = AchievementsListState "REVEALED"

-- | List only unlocked achievements.
pattern AchievementsListState_Unlocked :: AchievementsListState
pattern AchievementsListState_Unlocked = AchievementsListState "UNLOCKED"

{-# COMPLETE
  AchievementsListState_All,
  AchievementsListState_Hidden,
  AchievementsListState_Revealed,
  AchievementsListState_Unlocked,
  AchievementsListState
  #-}

-- | Restrict application details returned to the specific platform.
newtype ApplicationsGetPlatformType = ApplicationsGetPlatformType {fromApplicationsGetPlatformType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, don\'t use.
pattern ApplicationsGetPlatformType_PLATFORMTYPEUNSPECIFIED :: ApplicationsGetPlatformType
pattern ApplicationsGetPlatformType_PLATFORMTYPEUNSPECIFIED = ApplicationsGetPlatformType "PLATFORM_TYPE_UNSPECIFIED"

-- | Retrieve applications that can be played on Android.
pattern ApplicationsGetPlatformType_Android :: ApplicationsGetPlatformType
pattern ApplicationsGetPlatformType_Android = ApplicationsGetPlatformType "ANDROID"

-- | Retrieve applications that can be played on iOS.
pattern ApplicationsGetPlatformType_Ios :: ApplicationsGetPlatformType
pattern ApplicationsGetPlatformType_Ios = ApplicationsGetPlatformType "IOS"

-- | Retrieve applications that can be played on desktop web.
pattern ApplicationsGetPlatformType_WEBAPP :: ApplicationsGetPlatformType
pattern ApplicationsGetPlatformType_WEBAPP = ApplicationsGetPlatformType "WEB_APP"

{-# COMPLETE
  ApplicationsGetPlatformType_PLATFORMTYPEUNSPECIFIED,
  ApplicationsGetPlatformType_Android,
  ApplicationsGetPlatformType_Ios,
  ApplicationsGetPlatformType_WEBAPP,
  ApplicationsGetPlatformType
  #-}

-- | Type of endpoint being requested.
newtype ApplicationsGetEndPointEndPointType = ApplicationsGetEndPointEndPointType {fromApplicationsGetEndPointEndPointType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ApplicationsGetEndPointEndPointType_ENDPOINTTYPEUNSPECIFIED :: ApplicationsGetEndPointEndPointType
pattern ApplicationsGetEndPointEndPointType_ENDPOINTTYPEUNSPECIFIED = ApplicationsGetEndPointEndPointType "END_POINT_TYPE_UNSPECIFIED"

-- | Request a URL to create a new profile.
pattern ApplicationsGetEndPointEndPointType_PROFILECREATION :: ApplicationsGetEndPointEndPointType
pattern ApplicationsGetEndPointEndPointType_PROFILECREATION = ApplicationsGetEndPointEndPointType "PROFILE_CREATION"

-- | Request a URL for the Settings view.
pattern ApplicationsGetEndPointEndPointType_PROFILESETTINGS :: ApplicationsGetEndPointEndPointType
pattern ApplicationsGetEndPointEndPointType_PROFILESETTINGS = ApplicationsGetEndPointEndPointType "PROFILE_SETTINGS"

{-# COMPLETE
  ApplicationsGetEndPointEndPointType_ENDPOINTTYPEUNSPECIFIED,
  ApplicationsGetEndPointEndPointType_PROFILECREATION,
  ApplicationsGetEndPointEndPointType_PROFILESETTINGS,
  ApplicationsGetEndPointEndPointType
  #-}

-- | The collection of categories for which data will be returned.
newtype MetagameListCategoriesByPlayerCollection = MetagameListCategoriesByPlayerCollection {fromMetagameListCategoriesByPlayerCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern MetagameListCategoriesByPlayerCollection_COLLECTIONUNSPECIFIED :: MetagameListCategoriesByPlayerCollection
pattern MetagameListCategoriesByPlayerCollection_COLLECTIONUNSPECIFIED = MetagameListCategoriesByPlayerCollection "COLLECTION_UNSPECIFIED"

-- | Retrieve data for all categories. This is the default.
pattern MetagameListCategoriesByPlayerCollection_All :: MetagameListCategoriesByPlayerCollection
pattern MetagameListCategoriesByPlayerCollection_All = MetagameListCategoriesByPlayerCollection "ALL"

{-# COMPLETE
  MetagameListCategoriesByPlayerCollection_COLLECTIONUNSPECIFIED,
  MetagameListCategoriesByPlayerCollection_All,
  MetagameListCategoriesByPlayerCollection
  #-}

-- | Collection of players being retrieved
newtype PlayersListCollection = PlayersListCollection {fromPlayersListCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Retrieve a list of players you have played a multiplayer game (realtime or turn-based) with recently.
pattern PlayersListCollection_PlayedWith :: PlayersListCollection
pattern PlayersListCollection_PlayedWith = PlayersListCollection "played_with"

{-# COMPLETE
  PlayersListCollection_PlayedWith,
  PlayersListCollection
  #-}

-- | The types of ranks to return. If the parameter is omitted, no ranks will be returned.
newtype ScoresGetIncludeRankType = ScoresGetIncludeRankType {fromScoresGetIncludeRankType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Should be unused.
pattern ScoresGetIncludeRankType_INCLUDERANKTYPEUNSPECIFIED :: ScoresGetIncludeRankType
pattern ScoresGetIncludeRankType_INCLUDERANKTYPEUNSPECIFIED = ScoresGetIncludeRankType "INCLUDE_RANK_TYPE_UNSPECIFIED"

-- | Retrieve all supported ranks. In HTTP, this parameter value can also be specified as @ALL@.
pattern ScoresGetIncludeRankType_All :: ScoresGetIncludeRankType
pattern ScoresGetIncludeRankType_All = ScoresGetIncludeRankType "ALL"

-- | Retrieve public ranks, if the player is sharing their gameplay activity publicly.
pattern ScoresGetIncludeRankType_Public :: ScoresGetIncludeRankType
pattern ScoresGetIncludeRankType_Public = ScoresGetIncludeRankType "PUBLIC"

-- | (Obsolete) Retrieve the social rank.
pattern ScoresGetIncludeRankType_Social :: ScoresGetIncludeRankType
pattern ScoresGetIncludeRankType_Social = ScoresGetIncludeRankType "SOCIAL"

-- | Retrieve the rank on the friends collection.
pattern ScoresGetIncludeRankType_Friends :: ScoresGetIncludeRankType
pattern ScoresGetIncludeRankType_Friends = ScoresGetIncludeRankType "FRIENDS"

{-# COMPLETE
  ScoresGetIncludeRankType_INCLUDERANKTYPEUNSPECIFIED,
  ScoresGetIncludeRankType_All,
  ScoresGetIncludeRankType_Public,
  ScoresGetIncludeRankType_Social,
  ScoresGetIncludeRankType_Friends,
  ScoresGetIncludeRankType
  #-}

-- | The time span for the scores and ranks you\'re requesting.
newtype ScoresGetTimeSpan = ScoresGetTimeSpan {fromScoresGetTimeSpan :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ScoresGetTimeSpan_SCORETIMESPANUNSPECIFIED :: ScoresGetTimeSpan
pattern ScoresGetTimeSpan_SCORETIMESPANUNSPECIFIED = ScoresGetTimeSpan "SCORE_TIME_SPAN_UNSPECIFIED"

-- | Get the high scores for all time spans. If this is used, maxResults values will be ignored.
pattern ScoresGetTimeSpan_All :: ScoresGetTimeSpan
pattern ScoresGetTimeSpan_All = ScoresGetTimeSpan "ALL"

-- | Get the all time high score.
pattern ScoresGetTimeSpan_ALLTIME :: ScoresGetTimeSpan
pattern ScoresGetTimeSpan_ALLTIME = ScoresGetTimeSpan "ALL_TIME"

-- | List the top scores for the current day.
pattern ScoresGetTimeSpan_Weekly :: ScoresGetTimeSpan
pattern ScoresGetTimeSpan_Weekly = ScoresGetTimeSpan "WEEKLY"

-- | List the top scores for the current week.
pattern ScoresGetTimeSpan_Daily :: ScoresGetTimeSpan
pattern ScoresGetTimeSpan_Daily = ScoresGetTimeSpan "DAILY"

{-# COMPLETE
  ScoresGetTimeSpan_SCORETIMESPANUNSPECIFIED,
  ScoresGetTimeSpan_All,
  ScoresGetTimeSpan_ALLTIME,
  ScoresGetTimeSpan_Weekly,
  ScoresGetTimeSpan_Daily,
  ScoresGetTimeSpan
  #-}

-- | The collection of scores you\'re requesting.
newtype ScoresListCollection = ScoresListCollection {fromScoresListCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ScoresListCollection_SCORECOLLECTIONUNSPECIFIED :: ScoresListCollection
pattern ScoresListCollection_SCORECOLLECTIONUNSPECIFIED = ScoresListCollection "SCORE_COLLECTION_UNSPECIFIED"

-- | List all scores in the public leaderboard.
pattern ScoresListCollection_Public :: ScoresListCollection
pattern ScoresListCollection_Public = ScoresListCollection "PUBLIC"

-- | (Obsolete) Legacy G+ social scores.
pattern ScoresListCollection_Social :: ScoresListCollection
pattern ScoresListCollection_Social = ScoresListCollection "SOCIAL"

-- | List only scores of friends.
pattern ScoresListCollection_Friends :: ScoresListCollection
pattern ScoresListCollection_Friends = ScoresListCollection "FRIENDS"

{-# COMPLETE
  ScoresListCollection_SCORECOLLECTIONUNSPECIFIED,
  ScoresListCollection_Public,
  ScoresListCollection_Social,
  ScoresListCollection_Friends,
  ScoresListCollection
  #-}

-- | The time span for the scores and ranks you\'re requesting.
newtype ScoresListTimeSpan = ScoresListTimeSpan {fromScoresListTimeSpan :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ScoresListTimeSpan_SCORETIMESPANUNSPECIFIED :: ScoresListTimeSpan
pattern ScoresListTimeSpan_SCORETIMESPANUNSPECIFIED = ScoresListTimeSpan "SCORE_TIME_SPAN_UNSPECIFIED"

-- | The score is an all-time score.
pattern ScoresListTimeSpan_ALLTIME :: ScoresListTimeSpan
pattern ScoresListTimeSpan_ALLTIME = ScoresListTimeSpan "ALL_TIME"

-- | The score is a weekly score.
pattern ScoresListTimeSpan_Weekly :: ScoresListTimeSpan
pattern ScoresListTimeSpan_Weekly = ScoresListTimeSpan "WEEKLY"

-- | The score is a daily score.
pattern ScoresListTimeSpan_Daily :: ScoresListTimeSpan
pattern ScoresListTimeSpan_Daily = ScoresListTimeSpan "DAILY"

{-# COMPLETE
  ScoresListTimeSpan_SCORETIMESPANUNSPECIFIED,
  ScoresListTimeSpan_ALLTIME,
  ScoresListTimeSpan_Weekly,
  ScoresListTimeSpan_Daily,
  ScoresListTimeSpan
  #-}

-- | The collection of scores you\'re requesting.
newtype ScoresListWindowCollection = ScoresListWindowCollection {fromScoresListWindowCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ScoresListWindowCollection_SCORECOLLECTIONUNSPECIFIED :: ScoresListWindowCollection
pattern ScoresListWindowCollection_SCORECOLLECTIONUNSPECIFIED = ScoresListWindowCollection "SCORE_COLLECTION_UNSPECIFIED"

-- | List all scores in the public leaderboard.
pattern ScoresListWindowCollection_Public :: ScoresListWindowCollection
pattern ScoresListWindowCollection_Public = ScoresListWindowCollection "PUBLIC"

-- | (Obsolete) Legacy G+ social scores.
pattern ScoresListWindowCollection_Social :: ScoresListWindowCollection
pattern ScoresListWindowCollection_Social = ScoresListWindowCollection "SOCIAL"

-- | List only scores of friends.
pattern ScoresListWindowCollection_Friends :: ScoresListWindowCollection
pattern ScoresListWindowCollection_Friends = ScoresListWindowCollection "FRIENDS"

{-# COMPLETE
  ScoresListWindowCollection_SCORECOLLECTIONUNSPECIFIED,
  ScoresListWindowCollection_Public,
  ScoresListWindowCollection_Social,
  ScoresListWindowCollection_Friends,
  ScoresListWindowCollection
  #-}

-- | The time span for the scores and ranks you\'re requesting.
newtype ScoresListWindowTimeSpan = ScoresListWindowTimeSpan {fromScoresListWindowTimeSpan :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ScoresListWindowTimeSpan_SCORETIMESPANUNSPECIFIED :: ScoresListWindowTimeSpan
pattern ScoresListWindowTimeSpan_SCORETIMESPANUNSPECIFIED = ScoresListWindowTimeSpan "SCORE_TIME_SPAN_UNSPECIFIED"

-- | The score is an all-time score.
pattern ScoresListWindowTimeSpan_ALLTIME :: ScoresListWindowTimeSpan
pattern ScoresListWindowTimeSpan_ALLTIME = ScoresListWindowTimeSpan "ALL_TIME"

-- | The score is a weekly score.
pattern ScoresListWindowTimeSpan_Weekly :: ScoresListWindowTimeSpan
pattern ScoresListWindowTimeSpan_Weekly = ScoresListWindowTimeSpan "WEEKLY"

-- | The score is a daily score.
pattern ScoresListWindowTimeSpan_Daily :: ScoresListWindowTimeSpan
pattern ScoresListWindowTimeSpan_Daily = ScoresListWindowTimeSpan "DAILY"

{-# COMPLETE
  ScoresListWindowTimeSpan_SCORETIMESPANUNSPECIFIED,
  ScoresListWindowTimeSpan_ALLTIME,
  ScoresListWindowTimeSpan_Weekly,
  ScoresListWindowTimeSpan_Daily,
  ScoresListWindowTimeSpan
  #-}
