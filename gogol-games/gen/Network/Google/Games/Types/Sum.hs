{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.Types.Sum where

import           Network.Google.Prelude

-- | Tells the server to return only achievements with the specified state.
-- If this parameter isn\'t specified, all achievements are returned.
data GamesAchievementsListState
    = All
      -- ^ @ALL@
      -- List all achievements. This is the default.
    | Hidden
      -- ^ @HIDDEN@
      -- List only hidden achievements.
    | Revealed
      -- ^ @REVEALED@
      -- List only revealed achievements.
    | Unlocked
      -- ^ @UNLOCKED@
      -- List only unlocked achievements.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesAchievementsListState

instance FromText GamesAchievementsListState where
    fromText = \case
        "ALL" -> Just All
        "HIDDEN" -> Just Hidden
        "REVEALED" -> Just Revealed
        "UNLOCKED" -> Just Unlocked
        _ -> Nothing

instance ToText GamesAchievementsListState where
    toText = \case
        All -> "ALL"
        Hidden -> "HIDDEN"
        Revealed -> "REVEALED"
        Unlocked -> "UNLOCKED"

instance FromJSON GamesAchievementsListState where
    parseJSON = parseJSONText "GamesAchievementsListState"

instance ToJSON GamesAchievementsListState where
    toJSON = toJSONText

-- | The collection of scores you\'re requesting.
data GamesScoresListCollection
    = Public
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | Social
      -- ^ @SOCIAL@
      -- List only social scores.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesScoresListCollection

instance FromText GamesScoresListCollection where
    fromText = \case
        "PUBLIC" -> Just Public
        "SOCIAL" -> Just Social
        _ -> Nothing

instance ToText GamesScoresListCollection where
    toText = \case
        Public -> "PUBLIC"
        Social -> "SOCIAL"

instance FromJSON GamesScoresListCollection where
    parseJSON = parseJSONText "GamesScoresListCollection"

instance ToJSON GamesScoresListCollection where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data GamesScoresGetTimeSpan
    = GSGTSAll
      -- ^ @ALL@
      -- Get the high scores for all time spans. If this is used, maxResults
      -- values will be ignored.
    | GSGTSAllTime
      -- ^ @ALL_TIME@
      -- Get the all time high score.
    | GSGTSDaily
      -- ^ @DAILY@
      -- List the top scores for the current day.
    | GSGTSWeekly
      -- ^ @WEEKLY@
      -- List the top scores for the current week.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesScoresGetTimeSpan

instance FromText GamesScoresGetTimeSpan where
    fromText = \case
        "ALL" -> Just GSGTSAll
        "ALL_TIME" -> Just GSGTSAllTime
        "DAILY" -> Just GSGTSDaily
        "WEEKLY" -> Just GSGTSWeekly
        _ -> Nothing

instance ToText GamesScoresGetTimeSpan where
    toText = \case
        GSGTSAll -> "ALL"
        GSGTSAllTime -> "ALL_TIME"
        GSGTSDaily -> "DAILY"
        GSGTSWeekly -> "WEEKLY"

instance FromJSON GamesScoresGetTimeSpan where
    parseJSON = parseJSONText "GamesScoresGetTimeSpan"

instance ToJSON GamesScoresGetTimeSpan where
    toJSON = toJSONText

-- | The collection of categories for which data will be returned.
data GamesMetagameListCategoriesByPlayerCollection
    = GMLCBPCAll
      -- ^ @all@
      -- Retrieve data for all categories. This is the default.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesMetagameListCategoriesByPlayerCollection

instance FromText GamesMetagameListCategoriesByPlayerCollection where
    fromText = \case
        "all" -> Just GMLCBPCAll
        _ -> Nothing

instance ToText GamesMetagameListCategoriesByPlayerCollection where
    toText = \case
        GMLCBPCAll -> "all"

instance FromJSON GamesMetagameListCategoriesByPlayerCollection where
    parseJSON = parseJSONText "GamesMetagameListCategoriesByPlayerCollection"

instance ToJSON GamesMetagameListCategoriesByPlayerCollection where
    toJSON = toJSONText

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
data GamesScoresGetIncludeRankType
    = GSGIRTAll
      -- ^ @ALL@
      -- Retrieve public and social ranks.
    | GSGIRTPublic
      -- ^ @PUBLIC@
      -- Retrieve public ranks, if the player is sharing their gameplay activity
      -- publicly.
    | GSGIRTSocial
      -- ^ @SOCIAL@
      -- Retrieve the social rank.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesScoresGetIncludeRankType

instance FromText GamesScoresGetIncludeRankType where
    fromText = \case
        "ALL" -> Just GSGIRTAll
        "PUBLIC" -> Just GSGIRTPublic
        "SOCIAL" -> Just GSGIRTSocial
        _ -> Nothing

instance ToText GamesScoresGetIncludeRankType where
    toText = \case
        GSGIRTAll -> "ALL"
        GSGIRTPublic -> "PUBLIC"
        GSGIRTSocial -> "SOCIAL"

instance FromJSON GamesScoresGetIncludeRankType where
    parseJSON = parseJSONText "GamesScoresGetIncludeRankType"

instance ToJSON GamesScoresGetIncludeRankType where
    toJSON = toJSONText

-- | Restrict application details returned to the specific platform.
data GamesApplicationsGetPlatformType
    = Android
      -- ^ @ANDROID@
      -- Retrieve applications that can be played on Android.
    | Ios
      -- ^ @IOS@
      -- Retrieve applications that can be played on iOS.
    | WebApp
      -- ^ @WEB_APP@
      -- Retrieve applications that can be played on desktop web.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesApplicationsGetPlatformType

instance FromText GamesApplicationsGetPlatformType where
    fromText = \case
        "ANDROID" -> Just Android
        "IOS" -> Just Ios
        "WEB_APP" -> Just WebApp
        _ -> Nothing

instance ToText GamesApplicationsGetPlatformType where
    toText = \case
        Android -> "ANDROID"
        Ios -> "IOS"
        WebApp -> "WEB_APP"

instance FromJSON GamesApplicationsGetPlatformType where
    parseJSON = parseJSONText "GamesApplicationsGetPlatformType"

instance ToJSON GamesApplicationsGetPlatformType where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data GamesScoresListTimeSpan
    = AllTime
      -- ^ @ALL_TIME@
      -- List the all-time top scores.
    | Daily
      -- ^ @DAILY@
      -- List the top scores for the current day.
    | Weekly
      -- ^ @WEEKLY@
      -- List the top scores for the current week.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesScoresListTimeSpan

instance FromText GamesScoresListTimeSpan where
    fromText = \case
        "ALL_TIME" -> Just AllTime
        "DAILY" -> Just Daily
        "WEEKLY" -> Just Weekly
        _ -> Nothing

instance ToText GamesScoresListTimeSpan where
    toText = \case
        AllTime -> "ALL_TIME"
        Daily -> "DAILY"
        Weekly -> "WEEKLY"

instance FromJSON GamesScoresListTimeSpan where
    parseJSON = parseJSONText "GamesScoresListTimeSpan"

instance ToJSON GamesScoresListTimeSpan where
    toJSON = toJSONText

-- | The collection of scores you\'re requesting.
data GamesScoresListWindowCollection
    = GSLWCPublic
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | GSLWCSocial
      -- ^ @SOCIAL@
      -- List only social scores.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesScoresListWindowCollection

instance FromText GamesScoresListWindowCollection where
    fromText = \case
        "PUBLIC" -> Just GSLWCPublic
        "SOCIAL" -> Just GSLWCSocial
        _ -> Nothing

instance ToText GamesScoresListWindowCollection where
    toText = \case
        GSLWCPublic -> "PUBLIC"
        GSLWCSocial -> "SOCIAL"

instance FromJSON GamesScoresListWindowCollection where
    parseJSON = parseJSONText "GamesScoresListWindowCollection"

instance ToJSON GamesScoresListWindowCollection where
    toJSON = toJSONText

-- | Collection of players being retrieved
data GamesPlayersListCollection
    = PlayedWith
      -- ^ @playedWith@
      -- (DEPRECATED: please use played_with!) Retrieve a list of players you
      -- have played a multiplayer game (realtime or turn-based) with recently.
    | PlayedWith
      -- ^ @played_with@
      -- Retrieve a list of players you have played a multiplayer game (realtime
      -- or turn-based) with recently.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesPlayersListCollection

instance FromText GamesPlayersListCollection where
    fromText = \case
        "playedWith" -> Just PlayedWith
        "played_with" -> Just PlayedWith
        _ -> Nothing

instance ToText GamesPlayersListCollection where
    toText = \case
        PlayedWith -> "playedWith"
        PlayedWith -> "played_with"

instance FromJSON GamesPlayersListCollection where
    parseJSON = parseJSONText "GamesPlayersListCollection"

instance ToJSON GamesPlayersListCollection where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data GamesScoresListWindowTimeSpan
    = GSLWTSAllTime
      -- ^ @ALL_TIME@
      -- List the all-time top scores.
    | GSLWTSDaily
      -- ^ @DAILY@
      -- List the top scores for the current day.
    | GSLWTSWeekly
      -- ^ @WEEKLY@
      -- List the top scores for the current week.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GamesScoresListWindowTimeSpan

instance FromText GamesScoresListWindowTimeSpan where
    fromText = \case
        "ALL_TIME" -> Just GSLWTSAllTime
        "DAILY" -> Just GSLWTSDaily
        "WEEKLY" -> Just GSLWTSWeekly
        _ -> Nothing

instance ToText GamesScoresListWindowTimeSpan where
    toText = \case
        GSLWTSAllTime -> "ALL_TIME"
        GSLWTSDaily -> "DAILY"
        GSLWTSWeekly -> "WEEKLY"

instance FromJSON GamesScoresListWindowTimeSpan where
    parseJSON = parseJSONText "GamesScoresListWindowTimeSpan"

instance ToJSON GamesScoresListWindowTimeSpan where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
