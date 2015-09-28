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

-- | The time span for the scores and ranks you\'re requesting.
data ScoresList'TimeSpan
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

instance Hashable ScoresList'TimeSpan

instance FromText ScoresList'TimeSpan where
    fromText = \case
        "ALL_TIME" -> Just AllTime
        "DAILY" -> Just Daily
        "WEEKLY" -> Just Weekly
        _ -> Nothing

instance ToText ScoresList'TimeSpan where
    toText = \case
        AllTime -> "ALL_TIME"
        Daily -> "DAILY"
        Weekly -> "WEEKLY"

instance FromJSON ScoresList'TimeSpan where
    parseJSON = parseJSONText "ScoresList'TimeSpan"

instance ToJSON ScoresList'TimeSpan where
    toJSON = toJSONText

-- | Restrict application details returned to the specific platform.
data ApplicationsGet'PlatformType
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

instance Hashable ApplicationsGet'PlatformType

instance FromText ApplicationsGet'PlatformType where
    fromText = \case
        "ANDROID" -> Just Android
        "IOS" -> Just Ios
        "WEB_APP" -> Just WebApp
        _ -> Nothing

instance ToText ApplicationsGet'PlatformType where
    toText = \case
        Android -> "ANDROID"
        Ios -> "IOS"
        WebApp -> "WEB_APP"

instance FromJSON ApplicationsGet'PlatformType where
    parseJSON = parseJSONText "ApplicationsGet'PlatformType"

instance ToJSON ApplicationsGet'PlatformType where
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

-- | The collection of categories for which data will be returned.
data MetagameListCategoriesByPlayer'Collection
    = All
      -- ^ @all@
      -- Retrieve data for all categories. This is the default.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MetagameListCategoriesByPlayer'Collection

instance FromText MetagameListCategoriesByPlayer'Collection where
    fromText = \case
        "all" -> Just All
        _ -> Nothing

instance ToText MetagameListCategoriesByPlayer'Collection where
    toText = \case
        All -> "all"

instance FromJSON MetagameListCategoriesByPlayer'Collection where
    parseJSON = parseJSONText "MetagameListCategoriesByPlayer'Collection"

instance ToJSON MetagameListCategoriesByPlayer'Collection where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresListWindow'TimeSpan
    = SLWTSAllTime
      -- ^ @ALL_TIME@
      -- List the all-time top scores.
    | SLWTSDaily
      -- ^ @DAILY@
      -- List the top scores for the current day.
    | SLWTSWeekly
      -- ^ @WEEKLY@
      -- List the top scores for the current week.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScoresListWindow'TimeSpan

instance FromText ScoresListWindow'TimeSpan where
    fromText = \case
        "ALL_TIME" -> Just SLWTSAllTime
        "DAILY" -> Just SLWTSDaily
        "WEEKLY" -> Just SLWTSWeekly
        _ -> Nothing

instance ToText ScoresListWindow'TimeSpan where
    toText = \case
        SLWTSAllTime -> "ALL_TIME"
        SLWTSDaily -> "DAILY"
        SLWTSWeekly -> "WEEKLY"

instance FromJSON ScoresListWindow'TimeSpan where
    parseJSON = parseJSONText "ScoresListWindow'TimeSpan"

instance ToJSON ScoresListWindow'TimeSpan where
    toJSON = toJSONText

-- | The collection of scores you\'re requesting.
data ScoresListWindow'Collection
    = Public
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | Social
      -- ^ @SOCIAL@
      -- List only social scores.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScoresListWindow'Collection

instance FromText ScoresListWindow'Collection where
    fromText = \case
        "PUBLIC" -> Just Public
        "SOCIAL" -> Just Social
        _ -> Nothing

instance ToText ScoresListWindow'Collection where
    toText = \case
        Public -> "PUBLIC"
        Social -> "SOCIAL"

instance FromJSON ScoresListWindow'Collection where
    parseJSON = parseJSONText "ScoresListWindow'Collection"

instance ToJSON ScoresListWindow'Collection where
    toJSON = toJSONText

-- | Tells the server to return only achievements with the specified state.
-- If this parameter isn\'t specified, all achievements are returned.
data AchievementsList'State
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AchievementsList'State

instance FromText AchievementsList'State where
    fromText = \case
        "ALL" -> Just ALSAll
        "HIDDEN" -> Just ALSHidden
        "REVEALED" -> Just ALSRevealed
        "UNLOCKED" -> Just ALSUnlocked
        _ -> Nothing

instance ToText AchievementsList'State where
    toText = \case
        ALSAll -> "ALL"
        ALSHidden -> "HIDDEN"
        ALSRevealed -> "REVEALED"
        ALSUnlocked -> "UNLOCKED"

instance FromJSON AchievementsList'State where
    parseJSON = parseJSONText "AchievementsList'State"

instance ToJSON AchievementsList'State where
    toJSON = toJSONText

-- | The time span for the scores and ranks you\'re requesting.
data ScoresGet'TimeSpan
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScoresGet'TimeSpan

instance FromText ScoresGet'TimeSpan where
    fromText = \case
        "ALL" -> Just SGTSAll
        "ALL_TIME" -> Just SGTSAllTime
        "DAILY" -> Just SGTSDaily
        "WEEKLY" -> Just SGTSWeekly
        _ -> Nothing

instance ToText ScoresGet'TimeSpan where
    toText = \case
        SGTSAll -> "ALL"
        SGTSAllTime -> "ALL_TIME"
        SGTSDaily -> "DAILY"
        SGTSWeekly -> "WEEKLY"

instance FromJSON ScoresGet'TimeSpan where
    parseJSON = parseJSONText "ScoresGet'TimeSpan"

instance ToJSON ScoresGet'TimeSpan where
    toJSON = toJSONText

-- | Collection of players being retrieved
data PlayersList'Collection
    = PlayedWith
      -- ^ @playedWith@
      -- (DEPRECATED: please use played_with!) Retrieve a list of players you
      -- have played a multiplayer game (realtime or turn-based) with recently.
    | PlayedWith
      -- ^ @played_with@
      -- Retrieve a list of players you have played a multiplayer game (realtime
      -- or turn-based) with recently.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlayersList'Collection

instance FromText PlayersList'Collection where
    fromText = \case
        "playedWith" -> Just PlayedWith
        "played_with" -> Just PlayedWith
        _ -> Nothing

instance ToText PlayersList'Collection where
    toText = \case
        PlayedWith -> "playedWith"
        PlayedWith -> "played_with"

instance FromJSON PlayersList'Collection where
    parseJSON = parseJSONText "PlayersList'Collection"

instance ToJSON PlayersList'Collection where
    toJSON = toJSONText

-- | The collection of scores you\'re requesting.
data ScoresList'Collection
    = SLCPublic
      -- ^ @PUBLIC@
      -- List all scores in the public leaderboard.
    | SLCSocial
      -- ^ @SOCIAL@
      -- List only social scores.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScoresList'Collection

instance FromText ScoresList'Collection where
    fromText = \case
        "PUBLIC" -> Just SLCPublic
        "SOCIAL" -> Just SLCSocial
        _ -> Nothing

instance ToText ScoresList'Collection where
    toText = \case
        SLCPublic -> "PUBLIC"
        SLCSocial -> "SOCIAL"

instance FromJSON ScoresList'Collection where
    parseJSON = parseJSONText "ScoresList'Collection"

instance ToJSON ScoresList'Collection where
    toJSON = toJSONText

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
data ScoresGet'IncludeRankType
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ScoresGet'IncludeRankType

instance FromText ScoresGet'IncludeRankType where
    fromText = \case
        "ALL" -> Just SGIRTAll
        "PUBLIC" -> Just SGIRTPublic
        "SOCIAL" -> Just SGIRTSocial
        _ -> Nothing

instance ToText ScoresGet'IncludeRankType where
    toText = \case
        SGIRTAll -> "ALL"
        SGIRTPublic -> "PUBLIC"
        SGIRTSocial -> "SOCIAL"

instance FromJSON ScoresGet'IncludeRankType where
    parseJSON = parseJSONText "ScoresGet'IncludeRankType"

instance ToJSON ScoresGet'IncludeRankType where
    toJSON = toJSONText
