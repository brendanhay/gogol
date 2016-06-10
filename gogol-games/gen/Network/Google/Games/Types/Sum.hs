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

import           Network.Google.Prelude

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

-- | The collection of scores you\'re requesting.
data ScoresListCollection
    = Public
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | Social
      -- ^ @SOCIAL@
      -- List only social scores.
    | Social1P
      -- ^ @SOCIAL_1P@
      -- List only social scores, not respecting the fACL.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListCollection

instance FromHttpApiData ScoresListCollection where
    parseQueryParam = \case
        "PUBLIC" -> Right Public
        "SOCIAL" -> Right Social
        "SOCIAL_1P" -> Right Social1P
        x -> Left ("Unable to parse ScoresListCollection from: " <> x)

instance ToHttpApiData ScoresListCollection where
    toQueryParam = \case
        Public -> "PUBLIC"
        Social -> "SOCIAL"
        Social1P -> "SOCIAL_1P"

instance FromJSON ScoresListCollection where
    parseJSON = parseJSONText "ScoresListCollection"

instance ToJSON ScoresListCollection where
    toJSON = toJSONText

-- | Restrict application details returned to the specific platform.
data ApplicationsGetPlatformType
    = Android
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
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        "WEB_APP" -> Right WebApp
        x -> Left ("Unable to parse ApplicationsGetPlatformType from: " <> x)

instance ToHttpApiData ApplicationsGetPlatformType where
    toQueryParam = \case
        Android -> "ANDROID"
        Ios -> "IOS"
        WebApp -> "WEB_APP"

instance FromJSON ApplicationsGetPlatformType where
    parseJSON = parseJSONText "ApplicationsGetPlatformType"

instance ToJSON ApplicationsGetPlatformType where
    toJSON = toJSONText

-- | The collection of scores you\'re requesting.
data ScoresListWindowCollection
    = SLWCPublic
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | SLWCSocial
      -- ^ @SOCIAL@
      -- List only social scores.
    | SLWCSocial1P
      -- ^ @SOCIAL_1P@
      -- List only social scores, not respecting the fACL.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListWindowCollection

instance FromHttpApiData ScoresListWindowCollection where
    parseQueryParam = \case
        "PUBLIC" -> Right SLWCPublic
        "SOCIAL" -> Right SLWCSocial
        "SOCIAL_1P" -> Right SLWCSocial1P
        x -> Left ("Unable to parse ScoresListWindowCollection from: " <> x)

instance ToHttpApiData ScoresListWindowCollection where
    toQueryParam = \case
        SLWCPublic -> "PUBLIC"
        SLWCSocial -> "SOCIAL"
        SLWCSocial1P -> "SOCIAL_1P"

instance FromJSON ScoresListWindowCollection where
    parseJSON = parseJSONText "ScoresListWindowCollection"

instance ToJSON ScoresListWindowCollection where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresListWindowTimeSpan
    = AllTime
      -- ^ @ALL_TIME@
      -- List the all-time top scores.
    | Daily
      -- ^ @DAILY@
      -- List the top scores for the current day.
    | Weekly
      -- ^ @WEEKLY@
      -- List the top scores for the current week.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListWindowTimeSpan

instance FromHttpApiData ScoresListWindowTimeSpan where
    parseQueryParam = \case
        "ALL_TIME" -> Right AllTime
        "DAILY" -> Right Daily
        "WEEKLY" -> Right Weekly
        x -> Left ("Unable to parse ScoresListWindowTimeSpan from: " <> x)

instance ToHttpApiData ScoresListWindowTimeSpan where
    toQueryParam = \case
        AllTime -> "ALL_TIME"
        Daily -> "DAILY"
        Weekly -> "WEEKLY"

instance FromJSON ScoresListWindowTimeSpan where
    parseJSON = parseJSONText "ScoresListWindowTimeSpan"

instance ToJSON ScoresListWindowTimeSpan where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresGetTimeSpan
    = SGTSAll
      -- ^ @ALL@
      -- Get the high scores for all time spans. If this is used, maxResults
      -- values will be ignored.
    | SGTSAllTime
      -- ^ @ALL_TIME@
      -- Get the all time high score.
    | SGTSDaily
      -- ^ @DAILY@
      -- List the top scores for the current day.
    | SGTSWeekly
      -- ^ @WEEKLY@
      -- List the top scores for the current week.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresGetTimeSpan

instance FromHttpApiData ScoresGetTimeSpan where
    parseQueryParam = \case
        "ALL" -> Right SGTSAll
        "ALL_TIME" -> Right SGTSAllTime
        "DAILY" -> Right SGTSDaily
        "WEEKLY" -> Right SGTSWeekly
        x -> Left ("Unable to parse ScoresGetTimeSpan from: " <> x)

instance ToHttpApiData ScoresGetTimeSpan where
    toQueryParam = \case
        SGTSAll -> "ALL"
        SGTSAllTime -> "ALL_TIME"
        SGTSDaily -> "DAILY"
        SGTSWeekly -> "WEEKLY"

instance FromJSON ScoresGetTimeSpan where
    parseJSON = parseJSONText "ScoresGetTimeSpan"

instance ToJSON ScoresGetTimeSpan where
    toJSON = toJSONText

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
data ScoresGetIncludeRankType
    = SGIRTAll
      -- ^ @ALL@
      -- Retrieve public and social ranks.
    | SGIRTPublic
      -- ^ @PUBLIC@
      -- Retrieve public ranks, if the player is sharing their gameplay activity
      -- publicly.
    | SGIRTSocial
      -- ^ @SOCIAL@
      -- Retrieve the social rank.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresGetIncludeRankType

instance FromHttpApiData ScoresGetIncludeRankType where
    parseQueryParam = \case
        "ALL" -> Right SGIRTAll
        "PUBLIC" -> Right SGIRTPublic
        "SOCIAL" -> Right SGIRTSocial
        x -> Left ("Unable to parse ScoresGetIncludeRankType from: " <> x)

instance ToHttpApiData ScoresGetIncludeRankType where
    toQueryParam = \case
        SGIRTAll -> "ALL"
        SGIRTPublic -> "PUBLIC"
        SGIRTSocial -> "SOCIAL"

instance FromJSON ScoresGetIncludeRankType where
    parseJSON = parseJSONText "ScoresGetIncludeRankType"

instance ToJSON ScoresGetIncludeRankType where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresListTimeSpan
    = SLTSAllTime
      -- ^ @ALL_TIME@
      -- List the all-time top scores.
    | SLTSDaily
      -- ^ @DAILY@
      -- List the top scores for the current day.
    | SLTSWeekly
      -- ^ @WEEKLY@
      -- List the top scores for the current week.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoresListTimeSpan

instance FromHttpApiData ScoresListTimeSpan where
    parseQueryParam = \case
        "ALL_TIME" -> Right SLTSAllTime
        "DAILY" -> Right SLTSDaily
        "WEEKLY" -> Right SLTSWeekly
        x -> Left ("Unable to parse ScoresListTimeSpan from: " <> x)

instance ToHttpApiData ScoresListTimeSpan where
    toQueryParam = \case
        SLTSAllTime -> "ALL_TIME"
        SLTSDaily -> "DAILY"
        SLTSWeekly -> "WEEKLY"

instance FromJSON ScoresListTimeSpan where
    parseJSON = parseJSONText "ScoresListTimeSpan"

instance ToJSON ScoresListTimeSpan where
    toJSON = toJSONText

-- | The collection of categories for which data will be returned.
data MetagameListCategoriesByPlayerCollection
    = All
      -- ^ @all@
      -- Retrieve data for all categories. This is the default.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MetagameListCategoriesByPlayerCollection

instance FromHttpApiData MetagameListCategoriesByPlayerCollection where
    parseQueryParam = \case
        "all" -> Right All
        x -> Left ("Unable to parse MetagameListCategoriesByPlayerCollection from: " <> x)

instance ToHttpApiData MetagameListCategoriesByPlayerCollection where
    toQueryParam = \case
        All -> "all"

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
