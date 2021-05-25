{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Collection of players being retrieved
data PlayersListCollection
    = PlayedWith
      -- ^ @played_with@
      -- Retrieve a list of players you have played a multiplayer game (realtime
      -- or turn-based) with recently.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayersListCollection

instance FromHttpApiData PlayersListCollection where
    parseQueryParam = \case
        "played_with" -> Right PlayedWith
        x -> Left ("Unable to parse PlayersListCollection from: " <> x)

instance ToHttpApiData PlayersListCollection where
    toQueryParam = \case
        PlayedWith -> "played_with"

instance FromJSON PlayersListCollection where
    parseJSON = parseJSONText "PlayersListCollection"

instance ToJSON PlayersListCollection where
    toJSON = toJSONText

-- | The time span of this high score.
data LeaderboardEntryTimeSpan
    = ScoreTimeSpanUnspecified
      -- ^ @SCORE_TIME_SPAN_UNSPECIFIED@
      -- Default value. This value is unused.
    | AllTime
      -- ^ @ALL_TIME@
      -- The score is an all-time score.
    | Weekly
      -- ^ @WEEKLY@
      -- The score is a weekly score.
    | Daily
      -- ^ @DAILY@
      -- The score is a daily score.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LeaderboardEntryTimeSpan

instance FromHttpApiData LeaderboardEntryTimeSpan where
    parseQueryParam = \case
        "SCORE_TIME_SPAN_UNSPECIFIED" -> Right ScoreTimeSpanUnspecified
        "ALL_TIME" -> Right AllTime
        "WEEKLY" -> Right Weekly
        "DAILY" -> Right Daily
        x -> Left ("Unable to parse LeaderboardEntryTimeSpan from: " <> x)

instance ToHttpApiData LeaderboardEntryTimeSpan where
    toQueryParam = \case
        ScoreTimeSpanUnspecified -> "SCORE_TIME_SPAN_UNSPECIFIED"
        AllTime -> "ALL_TIME"
        Weekly -> "WEEKLY"
        Daily -> "DAILY"

instance FromJSON LeaderboardEntryTimeSpan where
    parseJSON = parseJSONText "LeaderboardEntryTimeSpan"

instance ToJSON LeaderboardEntryTimeSpan where
    toJSON = toJSONText

-- | The cause for the update failure.
data EventBatchRecordFailureFailureCause
    = EventFailureCauseUnspecified
      -- ^ @EVENT_FAILURE_CAUSE_UNSPECIFIED@
      -- Default value. Should not be used.
    | TooLarge
      -- ^ @TOO_LARGE@
      -- A batch request was issued with more events than are allowed in a single
      -- batch.
    | TimePeriodExpired
      -- ^ @TIME_PERIOD_EXPIRED@
      -- A batch was sent with data too far in the past to record.
    | TimePeriodShort
      -- ^ @TIME_PERIOD_SHORT@
      -- A batch was sent with a time range that was too short.
    | TimePeriodLong
      -- ^ @TIME_PERIOD_LONG@
      -- A batch was sent with a time range that was too long.
    | AlreadyUpdated
      -- ^ @ALREADY_UPDATED@
      -- An attempt was made to record a batch of data which was already seen.
    | RecordRateHigh
      -- ^ @RECORD_RATE_HIGH@
      -- An attempt was made to record data faster than the server will apply
      -- updates.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventBatchRecordFailureFailureCause

instance FromHttpApiData EventBatchRecordFailureFailureCause where
    parseQueryParam = \case
        "EVENT_FAILURE_CAUSE_UNSPECIFIED" -> Right EventFailureCauseUnspecified
        "TOO_LARGE" -> Right TooLarge
        "TIME_PERIOD_EXPIRED" -> Right TimePeriodExpired
        "TIME_PERIOD_SHORT" -> Right TimePeriodShort
        "TIME_PERIOD_LONG" -> Right TimePeriodLong
        "ALREADY_UPDATED" -> Right AlreadyUpdated
        "RECORD_RATE_HIGH" -> Right RecordRateHigh
        x -> Left ("Unable to parse EventBatchRecordFailureFailureCause from: " <> x)

instance ToHttpApiData EventBatchRecordFailureFailureCause where
    toQueryParam = \case
        EventFailureCauseUnspecified -> "EVENT_FAILURE_CAUSE_UNSPECIFIED"
        TooLarge -> "TOO_LARGE"
        TimePeriodExpired -> "TIME_PERIOD_EXPIRED"
        TimePeriodShort -> "TIME_PERIOD_SHORT"
        TimePeriodLong -> "TIME_PERIOD_LONG"
        AlreadyUpdated -> "ALREADY_UPDATED"
        RecordRateHigh -> "RECORD_RATE_HIGH"

instance FromJSON EventBatchRecordFailureFailureCause where
    parseJSON = parseJSONText "EventBatchRecordFailureFailureCause"

instance ToJSON EventBatchRecordFailureFailureCause where
    toJSON = toJSONText

-- | The collection of scores you\'re requesting.
data ScoresListCollection
    = ScoreCollectionUnspecified
      -- ^ @SCORE_COLLECTION_UNSPECIFIED@
      -- Default value. This value is unused.
    | Public
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | Social
      -- ^ @SOCIAL@
      -- (Obsolete) Legacy G+ social scores.
    | Friends
      -- ^ @FRIENDS@
      -- List only scores of friends.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListCollection

instance FromHttpApiData ScoresListCollection where
    parseQueryParam = \case
        "SCORE_COLLECTION_UNSPECIFIED" -> Right ScoreCollectionUnspecified
        "PUBLIC" -> Right Public
        "SOCIAL" -> Right Social
        "FRIENDS" -> Right Friends
        x -> Left ("Unable to parse ScoresListCollection from: " <> x)

instance ToHttpApiData ScoresListCollection where
    toQueryParam = \case
        ScoreCollectionUnspecified -> "SCORE_COLLECTION_UNSPECIFIED"
        Public -> "PUBLIC"
        Social -> "SOCIAL"
        Friends -> "FRIENDS"

instance FromJSON ScoresListCollection where
    parseJSON = parseJSONText "ScoresListCollection"

instance ToJSON ScoresListCollection where
    toJSON = toJSONText

-- | Type of endpoint being requested.
data ApplicationsGetEndPointEndPointType
    = AGEPEPTEndPointTypeUnspecified
      -- ^ @END_POINT_TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | AGEPEPTProFileCreation
      -- ^ @PROFILE_CREATION@
      -- Request a URL to create a new profile.
    | AGEPEPTProFileSettings
      -- ^ @PROFILE_SETTINGS@
      -- Request a URL for the Settings view.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationsGetEndPointEndPointType

instance FromHttpApiData ApplicationsGetEndPointEndPointType where
    parseQueryParam = \case
        "END_POINT_TYPE_UNSPECIFIED" -> Right AGEPEPTEndPointTypeUnspecified
        "PROFILE_CREATION" -> Right AGEPEPTProFileCreation
        "PROFILE_SETTINGS" -> Right AGEPEPTProFileSettings
        x -> Left ("Unable to parse ApplicationsGetEndPointEndPointType from: " <> x)

instance ToHttpApiData ApplicationsGetEndPointEndPointType where
    toQueryParam = \case
        AGEPEPTEndPointTypeUnspecified -> "END_POINT_TYPE_UNSPECIFIED"
        AGEPEPTProFileCreation -> "PROFILE_CREATION"
        AGEPEPTProFileSettings -> "PROFILE_SETTINGS"

instance FromJSON ApplicationsGetEndPointEndPointType where
    parseJSON = parseJSONText "ApplicationsGetEndPointEndPointType"

instance ToJSON ApplicationsGetEndPointEndPointType where
    toJSON = toJSONText

-- | The time span for this player score.
data PlayerScoreTimeSpan
    = PSTSScoreTimeSpanUnspecified
      -- ^ @SCORE_TIME_SPAN_UNSPECIFIED@
      -- Default value. This value is unused.
    | PSTSAllTime
      -- ^ @ALL_TIME@
      -- The score is an all-time score.
    | PSTSWeekly
      -- ^ @WEEKLY@
      -- The score is a weekly score.
    | PSTSDaily
      -- ^ @DAILY@
      -- The score is a daily score.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayerScoreTimeSpan

instance FromHttpApiData PlayerScoreTimeSpan where
    parseQueryParam = \case
        "SCORE_TIME_SPAN_UNSPECIFIED" -> Right PSTSScoreTimeSpanUnspecified
        "ALL_TIME" -> Right PSTSAllTime
        "WEEKLY" -> Right PSTSWeekly
        "DAILY" -> Right PSTSDaily
        x -> Left ("Unable to parse PlayerScoreTimeSpan from: " <> x)

instance ToHttpApiData PlayerScoreTimeSpan where
    toQueryParam = \case
        PSTSScoreTimeSpanUnspecified -> "SCORE_TIME_SPAN_UNSPECIFIED"
        PSTSAllTime -> "ALL_TIME"
        PSTSWeekly -> "WEEKLY"
        PSTSDaily -> "DAILY"

instance FromJSON PlayerScoreTimeSpan where
    parseJSON = parseJSONText "PlayerScoreTimeSpan"

instance ToJSON PlayerScoreTimeSpan where
    toJSON = toJSONText

data ApplicationEnabledFeaturesItem
    = ApplicationFeatureUnspecified
      -- ^ @APPLICATION_FEATURE_UNSPECIFIED@
      -- Safe default, don\'t use.
    | Snapshots
      -- ^ @SNAPSHOTS@
      -- Saved Games (snapshots).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationEnabledFeaturesItem

instance FromHttpApiData ApplicationEnabledFeaturesItem where
    parseQueryParam = \case
        "APPLICATION_FEATURE_UNSPECIFIED" -> Right ApplicationFeatureUnspecified
        "SNAPSHOTS" -> Right Snapshots
        x -> Left ("Unable to parse ApplicationEnabledFeaturesItem from: " <> x)

instance ToHttpApiData ApplicationEnabledFeaturesItem where
    toQueryParam = \case
        ApplicationFeatureUnspecified -> "APPLICATION_FEATURE_UNSPECIFIED"
        Snapshots -> "SNAPSHOTS"

instance FromJSON ApplicationEnabledFeaturesItem where
    parseJSON = parseJSONText "ApplicationEnabledFeaturesItem"

instance ToJSON ApplicationEnabledFeaturesItem where
    toJSON = toJSONText

-- | Restrict application details returned to the specific platform.
data ApplicationsGetPlatformType
    = PlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Default value, don\'t use.
    | Android
      -- ^ @ANDROID@
      -- Retrieve applications that can be played on Android.
    | Ios
      -- ^ @IOS@
      -- Retrieve applications that can be played on iOS.
    | WebApp
      -- ^ @WEB_APP@
      -- Retrieve applications that can be played on desktop web.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationsGetPlatformType

instance FromHttpApiData ApplicationsGetPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right PlatformTypeUnspecified
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        "WEB_APP" -> Right WebApp
        x -> Left ("Unable to parse ApplicationsGetPlatformType from: " <> x)

instance ToHttpApiData ApplicationsGetPlatformType where
    toQueryParam = \case
        PlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        Android -> "ANDROID"
        Ios -> "IOS"
        WebApp -> "WEB_APP"

instance FromJSON ApplicationsGetPlatformType where
    parseJSON = parseJSONText "ApplicationsGetPlatformType"

instance ToJSON ApplicationsGetPlatformType where
    toJSON = toJSONText

-- | The cause for the update failure.
data EventRecordFailureFailureCause
    = EventUpdateFailureCauseUnspecified
      -- ^ @EVENT_UPDATE_FAILURE_CAUSE_UNSPECIFIED@
      -- Default value. Should not use.
    | NotFound
      -- ^ @NOT_FOUND@
      -- An attempt was made to set an event that was not defined.
    | InvalidUpdateValue
      -- ^ @INVALID_UPDATE_VALUE@
      -- An attempt was made to increment an event by a non-positive value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventRecordFailureFailureCause

instance FromHttpApiData EventRecordFailureFailureCause where
    parseQueryParam = \case
        "EVENT_UPDATE_FAILURE_CAUSE_UNSPECIFIED" -> Right EventUpdateFailureCauseUnspecified
        "NOT_FOUND" -> Right NotFound
        "INVALID_UPDATE_VALUE" -> Right InvalidUpdateValue
        x -> Left ("Unable to parse EventRecordFailureFailureCause from: " <> x)

instance ToHttpApiData EventRecordFailureFailureCause where
    toQueryParam = \case
        EventUpdateFailureCauseUnspecified -> "EVENT_UPDATE_FAILURE_CAUSE_UNSPECIFIED"
        NotFound -> "NOT_FOUND"
        InvalidUpdateValue -> "INVALID_UPDATE_VALUE"

instance FromJSON EventRecordFailureFailureCause where
    parseJSON = parseJSONText "EventRecordFailureFailureCause"

instance ToJSON EventRecordFailureFailureCause where
    toJSON = toJSONText

-- | The time span of this score.
data PlayerLeaderboardScoreTimeSpan
    = PLSTSScoreTimeSpanUnspecified
      -- ^ @SCORE_TIME_SPAN_UNSPECIFIED@
      -- Default value. This value is unused.
    | PLSTSAllTime
      -- ^ @ALL_TIME@
      -- The score is an all-time score.
    | PLSTSWeekly
      -- ^ @WEEKLY@
      -- The score is a weekly score.
    | PLSTSDaily
      -- ^ @DAILY@
      -- The score is a daily score.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayerLeaderboardScoreTimeSpan

instance FromHttpApiData PlayerLeaderboardScoreTimeSpan where
    parseQueryParam = \case
        "SCORE_TIME_SPAN_UNSPECIFIED" -> Right PLSTSScoreTimeSpanUnspecified
        "ALL_TIME" -> Right PLSTSAllTime
        "WEEKLY" -> Right PLSTSWeekly
        "DAILY" -> Right PLSTSDaily
        x -> Left ("Unable to parse PlayerLeaderboardScoreTimeSpan from: " <> x)

instance ToHttpApiData PlayerLeaderboardScoreTimeSpan where
    toQueryParam = \case
        PLSTSScoreTimeSpanUnspecified -> "SCORE_TIME_SPAN_UNSPECIFIED"
        PLSTSAllTime -> "ALL_TIME"
        PLSTSWeekly -> "WEEKLY"
        PLSTSDaily -> "DAILY"

instance FromJSON PlayerLeaderboardScoreTimeSpan where
    parseJSON = parseJSONText "PlayerLeaderboardScoreTimeSpan"

instance ToJSON PlayerLeaderboardScoreTimeSpan where
    toJSON = toJSONText

-- | The current state of the achievement for which a reveal was attempted.
-- This might be \`UNLOCKED\` if the achievement was already unlocked.
data AchievementRevealResponseCurrentState
    = RevealAchievementStateUnspecified
      -- ^ @REVEAL_ACHIEVEMENT_STATE_UNSPECIFIED@
      -- Safe default, don\'t use.
    | Revealed
      -- ^ @REVEALED@
      -- Achievement is revealed.
    | Unlocked
      -- ^ @UNLOCKED@
      -- Achievement is unlocked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementRevealResponseCurrentState

instance FromHttpApiData AchievementRevealResponseCurrentState where
    parseQueryParam = \case
        "REVEAL_ACHIEVEMENT_STATE_UNSPECIFIED" -> Right RevealAchievementStateUnspecified
        "REVEALED" -> Right Revealed
        "UNLOCKED" -> Right Unlocked
        x -> Left ("Unable to parse AchievementRevealResponseCurrentState from: " <> x)

instance ToHttpApiData AchievementRevealResponseCurrentState where
    toQueryParam = \case
        RevealAchievementStateUnspecified -> "REVEAL_ACHIEVEMENT_STATE_UNSPECIFIED"
        Revealed -> "REVEALED"
        Unlocked -> "UNLOCKED"

instance FromJSON AchievementRevealResponseCurrentState where
    parseJSON = parseJSONText "AchievementRevealResponseCurrentState"

instance ToJSON AchievementRevealResponseCurrentState where
    toJSON = toJSONText

data ProFileSettingsFriendsListVisibility
    = FriendsListVisibilityUnspecified
      -- ^ @FRIENDS_LIST_VISIBILITY_UNSPECIFIED@
      -- Unused.
    | Visible
      -- ^ @VISIBLE@
      -- The friends list is currently visible to the game.
    | RequestRequired
      -- ^ @REQUEST_REQUIRED@
      -- The developer does not have access to the friends list, but can call the
      -- Android API to show a consent dialog.
    | Unavailable
      -- ^ @UNAVAILABLE@
      -- The friends list is currently unavailable for this user, and it is not
      -- possible to request access at this time, either because the user has
      -- permanently declined or the friends feature is not available to them. In
      -- this state, any attempts to request access to the friends list will be
      -- unsuccessful.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProFileSettingsFriendsListVisibility

instance FromHttpApiData ProFileSettingsFriendsListVisibility where
    parseQueryParam = \case
        "FRIENDS_LIST_VISIBILITY_UNSPECIFIED" -> Right FriendsListVisibilityUnspecified
        "VISIBLE" -> Right Visible
        "REQUEST_REQUIRED" -> Right RequestRequired
        "UNAVAILABLE" -> Right Unavailable
        x -> Left ("Unable to parse ProFileSettingsFriendsListVisibility from: " <> x)

instance ToHttpApiData ProFileSettingsFriendsListVisibility where
    toQueryParam = \case
        FriendsListVisibilityUnspecified -> "FRIENDS_LIST_VISIBILITY_UNSPECIFIED"
        Visible -> "VISIBLE"
        RequestRequired -> "REQUEST_REQUIRED"
        Unavailable -> "UNAVAILABLE"

instance FromJSON ProFileSettingsFriendsListVisibility where
    parseJSON = parseJSONText "ProFileSettingsFriendsListVisibility"

instance ToJSON ProFileSettingsFriendsListVisibility where
    toJSON = toJSONText

-- | The collection of scores you\'re requesting.
data ScoresListWindowCollection
    = SLWCScoreCollectionUnspecified
      -- ^ @SCORE_COLLECTION_UNSPECIFIED@
      -- Default value. This value is unused.
    | SLWCPublic
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | SLWCSocial
      -- ^ @SOCIAL@
      -- (Obsolete) Legacy G+ social scores.
    | SLWCFriends
      -- ^ @FRIENDS@
      -- List only scores of friends.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListWindowCollection

instance FromHttpApiData ScoresListWindowCollection where
    parseQueryParam = \case
        "SCORE_COLLECTION_UNSPECIFIED" -> Right SLWCScoreCollectionUnspecified
        "PUBLIC" -> Right SLWCPublic
        "SOCIAL" -> Right SLWCSocial
        "FRIENDS" -> Right SLWCFriends
        x -> Left ("Unable to parse ScoresListWindowCollection from: " <> x)

instance ToHttpApiData ScoresListWindowCollection where
    toQueryParam = \case
        SLWCScoreCollectionUnspecified -> "SCORE_COLLECTION_UNSPECIFIED"
        SLWCPublic -> "PUBLIC"
        SLWCSocial -> "SOCIAL"
        SLWCFriends -> "FRIENDS"

instance FromJSON ScoresListWindowCollection where
    parseJSON = parseJSONText "ScoresListWindowCollection"

instance ToJSON ScoresListWindowCollection where
    toJSON = toJSONText

-- | The type of update being applied.
data AchievementUpdateRequestUpdateType
    = AchievementUpdateTypeUnspecified
      -- ^ @ACHIEVEMENT_UPDATE_TYPE_UNSPECIFIED@
      -- Safe default, don\'t use.
    | Reveal
      -- ^ @REVEAL@
      -- Achievement is revealed.
    | Unlock
      -- ^ @UNLOCK@
      -- Achievement is unlocked.
    | Increment
      -- ^ @INCREMENT@
      -- Achievement is incremented.
    | SetStepsAtLeast
      -- ^ @SET_STEPS_AT_LEAST@
      -- Achievement progress is set to at least the passed value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementUpdateRequestUpdateType

instance FromHttpApiData AchievementUpdateRequestUpdateType where
    parseQueryParam = \case
        "ACHIEVEMENT_UPDATE_TYPE_UNSPECIFIED" -> Right AchievementUpdateTypeUnspecified
        "REVEAL" -> Right Reveal
        "UNLOCK" -> Right Unlock
        "INCREMENT" -> Right Increment
        "SET_STEPS_AT_LEAST" -> Right SetStepsAtLeast
        x -> Left ("Unable to parse AchievementUpdateRequestUpdateType from: " <> x)

instance ToHttpApiData AchievementUpdateRequestUpdateType where
    toQueryParam = \case
        AchievementUpdateTypeUnspecified -> "ACHIEVEMENT_UPDATE_TYPE_UNSPECIFIED"
        Reveal -> "REVEAL"
        Unlock -> "UNLOCK"
        Increment -> "INCREMENT"
        SetStepsAtLeast -> "SET_STEPS_AT_LEAST"

instance FromJSON AchievementUpdateRequestUpdateType where
    parseJSON = parseJSONText "AchievementUpdateRequestUpdateType"

instance ToJSON AchievementUpdateRequestUpdateType where
    toJSON = toJSONText

-- | The result of the revision check.
data RevisionCheckResponseRevisionStatus
    = RevisionStatusUnspecified
      -- ^ @REVISION_STATUS_UNSPECIFIED@
      -- Default value. This value is unused.
    | OK
      -- ^ @OK@
      -- The revision being used is current.
    | Deprecated
      -- ^ @DEPRECATED@
      -- There is currently a newer version available, but the revision being
      -- used still works.
    | Invalid
      -- ^ @INVALID@
      -- The revision being used is not supported in any released version.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RevisionCheckResponseRevisionStatus

instance FromHttpApiData RevisionCheckResponseRevisionStatus where
    parseQueryParam = \case
        "REVISION_STATUS_UNSPECIFIED" -> Right RevisionStatusUnspecified
        "OK" -> Right OK
        "DEPRECATED" -> Right Deprecated
        "INVALID" -> Right Invalid
        x -> Left ("Unable to parse RevisionCheckResponseRevisionStatus from: " <> x)

instance ToHttpApiData RevisionCheckResponseRevisionStatus where
    toQueryParam = \case
        RevisionStatusUnspecified -> "REVISION_STATUS_UNSPECIFIED"
        OK -> "OK"
        Deprecated -> "DEPRECATED"
        Invalid -> "INVALID"

instance FromJSON RevisionCheckResponseRevisionStatus where
    parseJSON = parseJSONText "RevisionCheckResponseRevisionStatus"

instance ToJSON RevisionCheckResponseRevisionStatus where
    toJSON = toJSONText

-- | The type of this snapshot.
data SnapshotType
    = SnapshotTypeUnspecified
      -- ^ @SNAPSHOT_TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | SaveGame
      -- ^ @SAVE_GAME@
      -- A snapshot representing a save game.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SnapshotType

instance FromHttpApiData SnapshotType where
    parseQueryParam = \case
        "SNAPSHOT_TYPE_UNSPECIFIED" -> Right SnapshotTypeUnspecified
        "SAVE_GAME" -> Right SaveGame
        x -> Left ("Unable to parse SnapshotType from: " <> x)

instance ToHttpApiData SnapshotType where
    toQueryParam = \case
        SnapshotTypeUnspecified -> "SNAPSHOT_TYPE_UNSPECIFIED"
        SaveGame -> "SAVE_GAME"

instance FromJSON SnapshotType where
    parseJSON = parseJSONText "SnapshotType"

instance ToJSON SnapshotType where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresListWindowTimeSpan
    = SLWTSScoreTimeSpanUnspecified
      -- ^ @SCORE_TIME_SPAN_UNSPECIFIED@
      -- Default value. This value is unused.
    | SLWTSAllTime
      -- ^ @ALL_TIME@
      -- The score is an all-time score.
    | SLWTSWeekly
      -- ^ @WEEKLY@
      -- The score is a weekly score.
    | SLWTSDaily
      -- ^ @DAILY@
      -- The score is a daily score.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListWindowTimeSpan

instance FromHttpApiData ScoresListWindowTimeSpan where
    parseQueryParam = \case
        "SCORE_TIME_SPAN_UNSPECIFIED" -> Right SLWTSScoreTimeSpanUnspecified
        "ALL_TIME" -> Right SLWTSAllTime
        "WEEKLY" -> Right SLWTSWeekly
        "DAILY" -> Right SLWTSDaily
        x -> Left ("Unable to parse ScoresListWindowTimeSpan from: " <> x)

instance ToHttpApiData ScoresListWindowTimeSpan where
    toQueryParam = \case
        SLWTSScoreTimeSpanUnspecified -> "SCORE_TIME_SPAN_UNSPECIFIED"
        SLWTSAllTime -> "ALL_TIME"
        SLWTSWeekly -> "WEEKLY"
        SLWTSDaily -> "DAILY"

instance FromJSON ScoresListWindowTimeSpan where
    parseJSON = parseJSONText "ScoresListWindowTimeSpan"

instance ToJSON ScoresListWindowTimeSpan where
    toJSON = toJSONText

-- | The state of the achievement.
data PlayerAchievementAchievementState
    = PAASStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Default value. This value is unused.
    | PAASHidden
      -- ^ @HIDDEN@
      -- Achievement is hidden.
    | PAASRevealed
      -- ^ @REVEALED@
      -- Achievement is revealed.
    | PAASUnlocked
      -- ^ @UNLOCKED@
      -- Achievement is unlocked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayerAchievementAchievementState

instance FromHttpApiData PlayerAchievementAchievementState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right PAASStateUnspecified
        "HIDDEN" -> Right PAASHidden
        "REVEALED" -> Right PAASRevealed
        "UNLOCKED" -> Right PAASUnlocked
        x -> Left ("Unable to parse PlayerAchievementAchievementState from: " <> x)

instance ToHttpApiData PlayerAchievementAchievementState where
    toQueryParam = \case
        PAASStateUnspecified -> "STATE_UNSPECIFIED"
        PAASHidden -> "HIDDEN"
        PAASRevealed -> "REVEALED"
        PAASUnlocked -> "UNLOCKED"

instance FromJSON PlayerAchievementAchievementState where
    parseJSON = parseJSONText "PlayerAchievementAchievementState"

instance ToJSON PlayerAchievementAchievementState where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresGetTimeSpan
    = SGTSScoreTimeSpanUnspecified
      -- ^ @SCORE_TIME_SPAN_UNSPECIFIED@
      -- Default value. This value is unused.
    | SGTSAll
      -- ^ @ALL@
      -- Get the high scores for all time spans. If this is used, maxResults
      -- values will be ignored.
    | SGTSAllTime
      -- ^ @ALL_TIME@
      -- Get the all time high score.
    | SGTSWeekly
      -- ^ @WEEKLY@
      -- List the top scores for the current day.
    | SGTSDaily
      -- ^ @DAILY@
      -- List the top scores for the current week.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresGetTimeSpan

instance FromHttpApiData ScoresGetTimeSpan where
    parseQueryParam = \case
        "SCORE_TIME_SPAN_UNSPECIFIED" -> Right SGTSScoreTimeSpanUnspecified
        "ALL" -> Right SGTSAll
        "ALL_TIME" -> Right SGTSAllTime
        "WEEKLY" -> Right SGTSWeekly
        "DAILY" -> Right SGTSDaily
        x -> Left ("Unable to parse ScoresGetTimeSpan from: " <> x)

instance ToHttpApiData ScoresGetTimeSpan where
    toQueryParam = \case
        SGTSScoreTimeSpanUnspecified -> "SCORE_TIME_SPAN_UNSPECIFIED"
        SGTSAll -> "ALL"
        SGTSAllTime -> "ALL_TIME"
        SGTSWeekly -> "WEEKLY"
        SGTSDaily -> "DAILY"

instance FromJSON ScoresGetTimeSpan where
    parseJSON = parseJSONText "ScoresGetTimeSpan"

instance ToJSON ScoresGetTimeSpan where
    toJSON = toJSONText

-- | The visibility of event being tracked in this definition.
data EventDefinitionVisibility
    = EDVEventVisibilityUnspecified
      -- ^ @EVENT_VISIBILITY_UNSPECIFIED@
      -- Default value. Should not be used.
    | EDVRevealed
      -- ^ @REVEALED@
      -- This event should be visible to all users.
    | EDVHidden
      -- ^ @HIDDEN@
      -- This event should only be shown to users that have recorded this event
      -- at least once.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventDefinitionVisibility

instance FromHttpApiData EventDefinitionVisibility where
    parseQueryParam = \case
        "EVENT_VISIBILITY_UNSPECIFIED" -> Right EDVEventVisibilityUnspecified
        "REVEALED" -> Right EDVRevealed
        "HIDDEN" -> Right EDVHidden
        x -> Left ("Unable to parse EventDefinitionVisibility from: " <> x)

instance ToHttpApiData EventDefinitionVisibility where
    toQueryParam = \case
        EDVEventVisibilityUnspecified -> "EVENT_VISIBILITY_UNSPECIFIED"
        EDVRevealed -> "REVEALED"
        EDVHidden -> "HIDDEN"

instance FromJSON EventDefinitionVisibility where
    parseJSON = parseJSONText "EventDefinitionVisibility"

instance ToJSON EventDefinitionVisibility where
    toJSON = toJSONText

-- | How scores are ordered.
data LeaderboardOrder
    = ScoreOrderUnspecified
      -- ^ @SCORE_ORDER_UNSPECIFIED@
      -- Default value. This value is unused.
    | LargerIsBetter
      -- ^ @LARGER_IS_BETTER@
      -- Larger values are better; scores are sorted in descending order
    | SmallerIsBetter
      -- ^ @SMALLER_IS_BETTER@
      -- Smaller values are better; scores are sorted in ascending order
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LeaderboardOrder

instance FromHttpApiData LeaderboardOrder where
    parseQueryParam = \case
        "SCORE_ORDER_UNSPECIFIED" -> Right ScoreOrderUnspecified
        "LARGER_IS_BETTER" -> Right LargerIsBetter
        "SMALLER_IS_BETTER" -> Right SmallerIsBetter
        x -> Left ("Unable to parse LeaderboardOrder from: " <> x)

instance ToHttpApiData LeaderboardOrder where
    toQueryParam = \case
        ScoreOrderUnspecified -> "SCORE_ORDER_UNSPECIFIED"
        LargerIsBetter -> "LARGER_IS_BETTER"
        SmallerIsBetter -> "SMALLER_IS_BETTER"

instance FromJSON LeaderboardOrder where
    parseJSON = parseJSONText "LeaderboardOrder"

instance ToJSON LeaderboardOrder where
    toJSON = toJSONText

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
data ScoresGetIncludeRankType
    = SGIRTIncludeRankTypeUnspecified
      -- ^ @INCLUDE_RANK_TYPE_UNSPECIFIED@
      -- Default value. Should be unused.
    | SGIRTAll
      -- ^ @ALL@
      -- Retrieve all supported ranks. In HTTP, this parameter value can also be
      -- specified as \`ALL\`.
    | SGIRTPublic
      -- ^ @PUBLIC@
      -- Retrieve public ranks, if the player is sharing their gameplay activity
      -- publicly.
    | SGIRTSocial
      -- ^ @SOCIAL@
      -- (Obsolete) Retrieve the social rank.
    | SGIRTFriends
      -- ^ @FRIENDS@
      -- Retrieve the rank on the friends collection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresGetIncludeRankType

instance FromHttpApiData ScoresGetIncludeRankType where
    parseQueryParam = \case
        "INCLUDE_RANK_TYPE_UNSPECIFIED" -> Right SGIRTIncludeRankTypeUnspecified
        "ALL" -> Right SGIRTAll
        "PUBLIC" -> Right SGIRTPublic
        "SOCIAL" -> Right SGIRTSocial
        "FRIENDS" -> Right SGIRTFriends
        x -> Left ("Unable to parse ScoresGetIncludeRankType from: " <> x)

instance ToHttpApiData ScoresGetIncludeRankType where
    toQueryParam = \case
        SGIRTIncludeRankTypeUnspecified -> "INCLUDE_RANK_TYPE_UNSPECIFIED"
        SGIRTAll -> "ALL"
        SGIRTPublic -> "PUBLIC"
        SGIRTSocial -> "SOCIAL"
        SGIRTFriends -> "FRIENDS"

instance FromJSON ScoresGetIncludeRankType where
    parseJSON = parseJSONText "ScoresGetIncludeRankType"

instance ToJSON ScoresGetIncludeRankType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of the achievement.
data AchievementDefinitionAchievementType
    = AchievementTypeUnspecified
      -- ^ @ACHIEVEMENT_TYPE_UNSPECIFIED@
      -- Safe default, don\'t use.
    | Standard
      -- ^ @STANDARD@
      -- Achievement is either locked or unlocked.
    | Incremental
      -- ^ @INCREMENTAL@
      -- Achievement is incremental.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementDefinitionAchievementType

instance FromHttpApiData AchievementDefinitionAchievementType where
    parseQueryParam = \case
        "ACHIEVEMENT_TYPE_UNSPECIFIED" -> Right AchievementTypeUnspecified
        "STANDARD" -> Right Standard
        "INCREMENTAL" -> Right Incremental
        x -> Left ("Unable to parse AchievementDefinitionAchievementType from: " <> x)

instance ToHttpApiData AchievementDefinitionAchievementType where
    toQueryParam = \case
        AchievementTypeUnspecified -> "ACHIEVEMENT_TYPE_UNSPECIFIED"
        Standard -> "STANDARD"
        Incremental -> "INCREMENTAL"

instance FromJSON AchievementDefinitionAchievementType where
    parseJSON = parseJSONText "AchievementDefinitionAchievementType"

instance ToJSON AchievementDefinitionAchievementType where
    toJSON = toJSONText

-- | The friend status of the given player, relative to the requester. This
-- is unset if the player is not sharing their friends list with the game.
data PlayerFriendStatus
    = FriendStatusUnspecified
      -- ^ @FRIEND_STATUS_UNSPECIFIED@
      -- Default value. This value is unused.
    | NoRelationship
      -- ^ @NO_RELATIONSHIP@
      -- There is no relationship between the players.
    | Friend
      -- ^ @FRIEND@
      -- The player and requester are friends.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayerFriendStatus

instance FromHttpApiData PlayerFriendStatus where
    parseQueryParam = \case
        "FRIEND_STATUS_UNSPECIFIED" -> Right FriendStatusUnspecified
        "NO_RELATIONSHIP" -> Right NoRelationship
        "FRIEND" -> Right Friend
        x -> Left ("Unable to parse PlayerFriendStatus from: " <> x)

instance ToHttpApiData PlayerFriendStatus where
    toQueryParam = \case
        FriendStatusUnspecified -> "FRIEND_STATUS_UNSPECIFIED"
        NoRelationship -> "NO_RELATIONSHIP"
        Friend -> "FRIEND"

instance FromJSON PlayerFriendStatus where
    parseJSON = parseJSONText "PlayerFriendStatus"

instance ToJSON PlayerFriendStatus where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresListTimeSpan
    = SLTSScoreTimeSpanUnspecified
      -- ^ @SCORE_TIME_SPAN_UNSPECIFIED@
      -- Default value. This value is unused.
    | SLTSAllTime
      -- ^ @ALL_TIME@
      -- The score is an all-time score.
    | SLTSWeekly
      -- ^ @WEEKLY@
      -- The score is a weekly score.
    | SLTSDaily
      -- ^ @DAILY@
      -- The score is a daily score.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListTimeSpan

instance FromHttpApiData ScoresListTimeSpan where
    parseQueryParam = \case
        "SCORE_TIME_SPAN_UNSPECIFIED" -> Right SLTSScoreTimeSpanUnspecified
        "ALL_TIME" -> Right SLTSAllTime
        "WEEKLY" -> Right SLTSWeekly
        "DAILY" -> Right SLTSDaily
        x -> Left ("Unable to parse ScoresListTimeSpan from: " <> x)

instance ToHttpApiData ScoresListTimeSpan where
    toQueryParam = \case
        SLTSScoreTimeSpanUnspecified -> "SCORE_TIME_SPAN_UNSPECIFIED"
        SLTSAllTime -> "ALL_TIME"
        SLTSWeekly -> "WEEKLY"
        SLTSDaily -> "DAILY"

instance FromJSON ScoresListTimeSpan where
    parseJSON = parseJSONText "ScoresListTimeSpan"

instance ToJSON ScoresListTimeSpan where
    toJSON = toJSONText

-- | The current state of the achievement.
data AchievementUpdateResponseCurrentState
    = AURCSUpdatedAchievementStateUnspecified
      -- ^ @UPDATED_ACHIEVEMENT_STATE_UNSPECIFIED@
      -- Safe default, don\'t use.
    | AURCSHidden
      -- ^ @HIDDEN@
      -- Achievement is hidden.
    | AURCSRevealed
      -- ^ @REVEALED@
      -- Achievement is revealed.
    | AURCSUnlocked
      -- ^ @UNLOCKED@
      -- Achievement is unlocked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementUpdateResponseCurrentState

instance FromHttpApiData AchievementUpdateResponseCurrentState where
    parseQueryParam = \case
        "UPDATED_ACHIEVEMENT_STATE_UNSPECIFIED" -> Right AURCSUpdatedAchievementStateUnspecified
        "HIDDEN" -> Right AURCSHidden
        "REVEALED" -> Right AURCSRevealed
        "UNLOCKED" -> Right AURCSUnlocked
        x -> Left ("Unable to parse AchievementUpdateResponseCurrentState from: " <> x)

instance ToHttpApiData AchievementUpdateResponseCurrentState where
    toQueryParam = \case
        AURCSUpdatedAchievementStateUnspecified -> "UPDATED_ACHIEVEMENT_STATE_UNSPECIFIED"
        AURCSHidden -> "HIDDEN"
        AURCSRevealed -> "REVEALED"
        AURCSUnlocked -> "UNLOCKED"

instance FromJSON AchievementUpdateResponseCurrentState where
    parseJSON = parseJSONText "AchievementUpdateResponseCurrentState"

instance ToJSON AchievementUpdateResponseCurrentState where
    toJSON = toJSONText

-- | The initial state of the achievement.
data AchievementDefinitionInitialState
    = ADISInitialAchievementStateUnspecified
      -- ^ @INITIAL_ACHIEVEMENT_STATE_UNSPECIFIED@
      -- Safe default, don\'t use.
    | ADISHidden
      -- ^ @HIDDEN@
      -- Achievement is hidden.
    | ADISRevealed
      -- ^ @REVEALED@
      -- Achievement is revealed.
    | ADISUnlocked
      -- ^ @UNLOCKED@
      -- Achievement is unlocked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementDefinitionInitialState

instance FromHttpApiData AchievementDefinitionInitialState where
    parseQueryParam = \case
        "INITIAL_ACHIEVEMENT_STATE_UNSPECIFIED" -> Right ADISInitialAchievementStateUnspecified
        "HIDDEN" -> Right ADISHidden
        "REVEALED" -> Right ADISRevealed
        "UNLOCKED" -> Right ADISUnlocked
        x -> Left ("Unable to parse AchievementDefinitionInitialState from: " <> x)

instance ToHttpApiData AchievementDefinitionInitialState where
    toQueryParam = \case
        ADISInitialAchievementStateUnspecified -> "INITIAL_ACHIEVEMENT_STATE_UNSPECIFIED"
        ADISHidden -> "HIDDEN"
        ADISRevealed -> "REVEALED"
        ADISUnlocked -> "UNLOCKED"

instance FromJSON AchievementDefinitionInitialState where
    parseJSON = parseJSONText "AchievementDefinitionInitialState"

instance ToJSON AchievementDefinitionInitialState where
    toJSON = toJSONText

data PlayerScoreResponseBeatenScoreTimeSpansItem
    = PSRBSTSIScoreTimeSpanUnspecified
      -- ^ @SCORE_TIME_SPAN_UNSPECIFIED@
      -- Default value. This value is unused.
    | PSRBSTSIAllTime
      -- ^ @ALL_TIME@
      -- The score is an all-time score.
    | PSRBSTSIWeekly
      -- ^ @WEEKLY@
      -- The score is a weekly score.
    | PSRBSTSIDaily
      -- ^ @DAILY@
      -- The score is a daily score.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlayerScoreResponseBeatenScoreTimeSpansItem

instance FromHttpApiData PlayerScoreResponseBeatenScoreTimeSpansItem where
    parseQueryParam = \case
        "SCORE_TIME_SPAN_UNSPECIFIED" -> Right PSRBSTSIScoreTimeSpanUnspecified
        "ALL_TIME" -> Right PSRBSTSIAllTime
        "WEEKLY" -> Right PSRBSTSIWeekly
        "DAILY" -> Right PSRBSTSIDaily
        x -> Left ("Unable to parse PlayerScoreResponseBeatenScoreTimeSpansItem from: " <> x)

instance ToHttpApiData PlayerScoreResponseBeatenScoreTimeSpansItem where
    toQueryParam = \case
        PSRBSTSIScoreTimeSpanUnspecified -> "SCORE_TIME_SPAN_UNSPECIFIED"
        PSRBSTSIAllTime -> "ALL_TIME"
        PSRBSTSIWeekly -> "WEEKLY"
        PSRBSTSIDaily -> "DAILY"

instance FromJSON PlayerScoreResponseBeatenScoreTimeSpansItem where
    parseJSON = parseJSONText "PlayerScoreResponseBeatenScoreTimeSpansItem"

instance ToJSON PlayerScoreResponseBeatenScoreTimeSpansItem where
    toJSON = toJSONText

-- | The platform type.
data InstancePlatformType
    = IPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Default value. Should be unused.
    | IPTAndroid
      -- ^ @ANDROID@
      -- Instance is for Android.
    | IPTIos
      -- ^ @IOS@
      -- Instance is for iOS.
    | IPTWebApp
      -- ^ @WEB_APP@
      -- Instance is for Web App.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstancePlatformType

instance FromHttpApiData InstancePlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right IPTPlatformTypeUnspecified
        "ANDROID" -> Right IPTAndroid
        "IOS" -> Right IPTIos
        "WEB_APP" -> Right IPTWebApp
        x -> Left ("Unable to parse InstancePlatformType from: " <> x)

instance ToHttpApiData InstancePlatformType where
    toQueryParam = \case
        IPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        IPTAndroid -> "ANDROID"
        IPTIos -> "IOS"
        IPTWebApp -> "WEB_APP"

instance FromJSON InstancePlatformType where
    parseJSON = parseJSONText "InstancePlatformType"

instance ToJSON InstancePlatformType where
    toJSON = toJSONText

-- | The collection of categories for which data will be returned.
data MetagameListCategoriesByPlayerCollection
    = CollectionUnspecified
      -- ^ @COLLECTION_UNSPECIFIED@
      -- Default value. This value is unused.
    | All
      -- ^ @ALL@
      -- Retrieve data for all categories. This is the default.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetagameListCategoriesByPlayerCollection

instance FromHttpApiData MetagameListCategoriesByPlayerCollection where
    parseQueryParam = \case
        "COLLECTION_UNSPECIFIED" -> Right CollectionUnspecified
        "ALL" -> Right All
        x -> Left ("Unable to parse MetagameListCategoriesByPlayerCollection from: " <> x)

instance ToHttpApiData MetagameListCategoriesByPlayerCollection where
    toQueryParam = \case
        CollectionUnspecified -> "COLLECTION_UNSPECIFIED"
        All -> "ALL"

instance FromJSON MetagameListCategoriesByPlayerCollection where
    parseJSON = parseJSONText "MetagameListCategoriesByPlayerCollection"

instance ToJSON MetagameListCategoriesByPlayerCollection where
    toJSON = toJSONText

-- | Tells the server to return only achievements with the specified state.
-- If this parameter isn\'t specified, all achievements are returned.
data AchievementsListState
    = ALSAll
      -- ^ @ALL@
      -- List all achievements. This is the default.
    | ALSHidden
      -- ^ @HIDDEN@
      -- List only hidden achievements.
    | ALSRevealed
      -- ^ @REVEALED@
      -- List only revealed achievements.
    | ALSUnlocked
      -- ^ @UNLOCKED@
      -- List only unlocked achievements.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementsListState

instance FromHttpApiData AchievementsListState where
    parseQueryParam = \case
        "ALL" -> Right ALSAll
        "HIDDEN" -> Right ALSHidden
        "REVEALED" -> Right ALSRevealed
        "UNLOCKED" -> Right ALSUnlocked
        x -> Left ("Unable to parse AchievementsListState from: " <> x)

instance ToHttpApiData AchievementsListState where
    toQueryParam = \case
        ALSAll -> "ALL"
        ALSHidden -> "HIDDEN"
        ALSRevealed -> "REVEALED"
        ALSUnlocked -> "UNLOCKED"

instance FromJSON AchievementsListState where
    parseJSON = parseJSONText "AchievementsListState"

instance ToJSON AchievementsListState where
    toJSON = toJSONText
