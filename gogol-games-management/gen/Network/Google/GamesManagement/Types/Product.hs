{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesManagement.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesManagement.Types.Product where

import           Network.Google.GamesManagement.Types.Sum
import           Network.Google.Prelude

-- | This is a JSON template for 1P\/3P metadata about the player\'s
-- experience.
--
-- /See:/ 'gamesPlayerExperienceInfoResource' smart constructor.
data GamesPlayerExperienceInfoResource = GamesPlayerExperienceInfoResource
    { _gpeirCurrentExperiencePoints    :: !(Maybe Int64)
    , _gpeirCurrentLevel               :: !(Maybe GamesPlayerLevelResource)
    , _gpeirNextLevel                  :: !(Maybe GamesPlayerLevelResource)
    , _gpeirLastLevelUpTimestampMillis :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GamesPlayerExperienceInfoResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpeirCurrentExperiencePoints'
--
-- * 'gpeirCurrentLevel'
--
-- * 'gpeirNextLevel'
--
-- * 'gpeirLastLevelUpTimestampMillis'
gamesPlayerExperienceInfoResource
    :: GamesPlayerExperienceInfoResource
gamesPlayerExperienceInfoResource =
    GamesPlayerExperienceInfoResource
    { _gpeirCurrentExperiencePoints = Nothing
    , _gpeirCurrentLevel = Nothing
    , _gpeirNextLevel = Nothing
    , _gpeirLastLevelUpTimestampMillis = Nothing
    }

-- | The current number of experience points for the player.
gpeirCurrentExperiencePoints :: Lens' GamesPlayerExperienceInfoResource (Maybe Int64)
gpeirCurrentExperiencePoints
  = lens _gpeirCurrentExperiencePoints
      (\ s a -> s{_gpeirCurrentExperiencePoints = a})

-- | The current level of the player.
gpeirCurrentLevel :: Lens' GamesPlayerExperienceInfoResource (Maybe GamesPlayerLevelResource)
gpeirCurrentLevel
  = lens _gpeirCurrentLevel
      (\ s a -> s{_gpeirCurrentLevel = a})

-- | The next level of the player. If the current level is the maximum level,
-- this should be same as the current level.
gpeirNextLevel :: Lens' GamesPlayerExperienceInfoResource (Maybe GamesPlayerLevelResource)
gpeirNextLevel
  = lens _gpeirNextLevel
      (\ s a -> s{_gpeirNextLevel = a})

-- | The timestamp when the player was leveled up, in millis since Unix epoch
-- UTC.
gpeirLastLevelUpTimestampMillis :: Lens' GamesPlayerExperienceInfoResource (Maybe Int64)
gpeirLastLevelUpTimestampMillis
  = lens _gpeirLastLevelUpTimestampMillis
      (\ s a -> s{_gpeirLastLevelUpTimestampMillis = a})

instance FromJSON GamesPlayerExperienceInfoResource
         where
        parseJSON
          = withObject "GamesPlayerExperienceInfoResource"
              (\ o ->
                 GamesPlayerExperienceInfoResource <$>
                   (o .:? "currentExperiencePoints") <*>
                     (o .:? "currentLevel")
                     <*> (o .:? "nextLevel")
                     <*> (o .:? "lastLevelUpTimestampMillis"))

instance ToJSON GamesPlayerExperienceInfoResource
         where
        toJSON GamesPlayerExperienceInfoResource{..}
          = object
              (catMaybes
                 [("currentExperiencePoints" .=) <$>
                    _gpeirCurrentExperiencePoints,
                  ("currentLevel" .=) <$> _gpeirCurrentLevel,
                  ("nextLevel" .=) <$> _gpeirNextLevel,
                  ("lastLevelUpTimestampMillis" .=) <$>
                    _gpeirLastLevelUpTimestampMillis])

-- | This is a JSON template for a list of leaderboard reset resources.
--
-- /See:/ 'playerScoreResetAllResponse' smart constructor.
data PlayerScoreResetAllResponse = PlayerScoreResetAllResponse
    { _psrarResults :: !(Maybe [PlayerScoreResetResponse])
    , _psrarKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayerScoreResetAllResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrarResults'
--
-- * 'psrarKind'
playerScoreResetAllResponse
    :: PlayerScoreResetAllResponse
playerScoreResetAllResponse =
    PlayerScoreResetAllResponse
    { _psrarResults = Nothing
    , _psrarKind = "gamesManagement#playerScoreResetAllResponse"
    }

-- | The leaderboard reset results.
psrarResults :: Lens' PlayerScoreResetAllResponse [PlayerScoreResetResponse]
psrarResults
  = lens _psrarResults (\ s a -> s{_psrarResults = a})
      . _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#playerScoreResetResponse.
psrarKind :: Lens' PlayerScoreResetAllResponse Text
psrarKind
  = lens _psrarKind (\ s a -> s{_psrarKind = a})

instance FromJSON PlayerScoreResetAllResponse where
        parseJSON
          = withObject "PlayerScoreResetAllResponse"
              (\ o ->
                 PlayerScoreResetAllResponse <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "gamesManagement#playerScoreResetAllResponse"))

instance ToJSON PlayerScoreResetAllResponse where
        toJSON PlayerScoreResetAllResponse{..}
          = object
              (catMaybes
                 [("results" .=) <$> _psrarResults,
                  Just ("kind" .= _psrarKind)])

-- | This is a JSON template for metadata about a player playing a game with
-- the currently authenticated user.
--
-- /See:/ 'gamesPlayedResource' smart constructor.
data GamesPlayedResource = GamesPlayedResource
    { _gprAutoMatched :: !(Maybe Bool)
    , _gprTimeMillis  :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GamesPlayedResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprAutoMatched'
--
-- * 'gprTimeMillis'
gamesPlayedResource
    :: GamesPlayedResource
gamesPlayedResource =
    GamesPlayedResource
    { _gprAutoMatched = Nothing
    , _gprTimeMillis = Nothing
    }

-- | True if the player was auto-matched with the currently authenticated
-- user.
gprAutoMatched :: Lens' GamesPlayedResource (Maybe Bool)
gprAutoMatched
  = lens _gprAutoMatched
      (\ s a -> s{_gprAutoMatched = a})

-- | The last time the player played the game in milliseconds since the epoch
-- in UTC.
gprTimeMillis :: Lens' GamesPlayedResource (Maybe Int64)
gprTimeMillis
  = lens _gprTimeMillis
      (\ s a -> s{_gprTimeMillis = a})

instance FromJSON GamesPlayedResource where
        parseJSON
          = withObject "GamesPlayedResource"
              (\ o ->
                 GamesPlayedResource <$>
                   (o .:? "autoMatched") <*> (o .:? "timeMillis"))

instance ToJSON GamesPlayedResource where
        toJSON GamesPlayedResource{..}
          = object
              (catMaybes
                 [("autoMatched" .=) <$> _gprAutoMatched,
                  ("timeMillis" .=) <$> _gprTimeMillis])

-- | This is a JSON template for 1P\/3P metadata about a user\'s level.
--
-- /See:/ 'gamesPlayerLevelResource' smart constructor.
data GamesPlayerLevelResource = GamesPlayerLevelResource
    { _gplrMaxExperiencePoints :: !(Maybe Int64)
    , _gplrMinExperiencePoints :: !(Maybe Int64)
    , _gplrLevel               :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GamesPlayerLevelResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gplrMaxExperiencePoints'
--
-- * 'gplrMinExperiencePoints'
--
-- * 'gplrLevel'
gamesPlayerLevelResource
    :: GamesPlayerLevelResource
gamesPlayerLevelResource =
    GamesPlayerLevelResource
    { _gplrMaxExperiencePoints = Nothing
    , _gplrMinExperiencePoints = Nothing
    , _gplrLevel = Nothing
    }

-- | The maximum experience points for this level.
gplrMaxExperiencePoints :: Lens' GamesPlayerLevelResource (Maybe Int64)
gplrMaxExperiencePoints
  = lens _gplrMaxExperiencePoints
      (\ s a -> s{_gplrMaxExperiencePoints = a})

-- | The minimum experience points for this level.
gplrMinExperiencePoints :: Lens' GamesPlayerLevelResource (Maybe Int64)
gplrMinExperiencePoints
  = lens _gplrMinExperiencePoints
      (\ s a -> s{_gplrMinExperiencePoints = a})

-- | The level for the user.
gplrLevel :: Lens' GamesPlayerLevelResource (Maybe Int32)
gplrLevel
  = lens _gplrLevel (\ s a -> s{_gplrLevel = a})

instance FromJSON GamesPlayerLevelResource where
        parseJSON
          = withObject "GamesPlayerLevelResource"
              (\ o ->
                 GamesPlayerLevelResource <$>
                   (o .:? "maxExperiencePoints") <*>
                     (o .:? "minExperiencePoints")
                     <*> (o .:? "level"))

instance ToJSON GamesPlayerLevelResource where
        toJSON GamesPlayerLevelResource{..}
          = object
              (catMaybes
                 [("maxExperiencePoints" .=) <$>
                    _gplrMaxExperiencePoints,
                  ("minExperiencePoints" .=) <$>
                    _gplrMinExperiencePoints,
                  ("level" .=) <$> _gplrLevel])

-- | This is a JSON template for a list of reset leaderboard entry resources.
--
-- /See:/ 'playerScoreResetResponse' smart constructor.
data PlayerScoreResetResponse = PlayerScoreResetResponse
    { _psrrKind                :: !Text
    , _psrrResetScoreTimeSpans :: !(Maybe [Text])
    , _psrrDefinitionId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayerScoreResetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrrKind'
--
-- * 'psrrResetScoreTimeSpans'
--
-- * 'psrrDefinitionId'
playerScoreResetResponse
    :: PlayerScoreResetResponse
playerScoreResetResponse =
    PlayerScoreResetResponse
    { _psrrKind = "gamesManagement#playerScoreResetResponse"
    , _psrrResetScoreTimeSpans = Nothing
    , _psrrDefinitionId = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#playerScoreResetResponse.
psrrKind :: Lens' PlayerScoreResetResponse Text
psrrKind = lens _psrrKind (\ s a -> s{_psrrKind = a})

-- | The time spans of the updated score. Possible values are: - \"ALL_TIME\"
-- - The score is an all-time score. - \"WEEKLY\" - The score is a weekly
-- score. - \"DAILY\" - The score is a daily score.
psrrResetScoreTimeSpans :: Lens' PlayerScoreResetResponse [Text]
psrrResetScoreTimeSpans
  = lens _psrrResetScoreTimeSpans
      (\ s a -> s{_psrrResetScoreTimeSpans = a})
      . _Default
      . _Coerce

-- | The ID of an leaderboard for which player state has been updated.
psrrDefinitionId :: Lens' PlayerScoreResetResponse (Maybe Text)
psrrDefinitionId
  = lens _psrrDefinitionId
      (\ s a -> s{_psrrDefinitionId = a})

instance FromJSON PlayerScoreResetResponse where
        parseJSON
          = withObject "PlayerScoreResetResponse"
              (\ o ->
                 PlayerScoreResetResponse <$>
                   (o .:? "kind" .!=
                      "gamesManagement#playerScoreResetResponse")
                     <*> (o .:? "resetScoreTimeSpans" .!= mempty)
                     <*> (o .:? "definitionId"))

instance ToJSON PlayerScoreResetResponse where
        toJSON PlayerScoreResetResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _psrrKind),
                  ("resetScoreTimeSpans" .=) <$>
                    _psrrResetScoreTimeSpans,
                  ("definitionId" .=) <$> _psrrDefinitionId])

-- | This is a JSON template for multiple scores reset all request.
--
-- /See:/ 'scoresResetMultipleForAllRequest' smart constructor.
data ScoresResetMultipleForAllRequest = ScoresResetMultipleForAllRequest
    { _srmfarKind           :: !Text
    , _srmfarLeaderboardIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetMultipleForAllRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srmfarKind'
--
-- * 'srmfarLeaderboardIds'
scoresResetMultipleForAllRequest
    :: ScoresResetMultipleForAllRequest
scoresResetMultipleForAllRequest =
    ScoresResetMultipleForAllRequest
    { _srmfarKind = "gamesManagement#scoresResetMultipleForAllRequest"
    , _srmfarLeaderboardIds = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#scoresResetMultipleForAllRequest.
srmfarKind :: Lens' ScoresResetMultipleForAllRequest Text
srmfarKind
  = lens _srmfarKind (\ s a -> s{_srmfarKind = a})

-- | The IDs of leaderboards to reset.
srmfarLeaderboardIds :: Lens' ScoresResetMultipleForAllRequest [Text]
srmfarLeaderboardIds
  = lens _srmfarLeaderboardIds
      (\ s a -> s{_srmfarLeaderboardIds = a})
      . _Default
      . _Coerce

instance FromJSON ScoresResetMultipleForAllRequest
         where
        parseJSON
          = withObject "ScoresResetMultipleForAllRequest"
              (\ o ->
                 ScoresResetMultipleForAllRequest <$>
                   (o .:? "kind" .!=
                      "gamesManagement#scoresResetMultipleForAllRequest")
                     <*> (o .:? "leaderboard_ids" .!= mempty))

instance ToJSON ScoresResetMultipleForAllRequest
         where
        toJSON ScoresResetMultipleForAllRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _srmfarKind),
                  ("leaderboard_ids" .=) <$> _srmfarLeaderboardIds])

-- | This is a JSON template for a list of hidden players.
--
-- /See:/ 'hiddenPlayerList' smart constructor.
data HiddenPlayerList = HiddenPlayerList
    { _hplNextPageToken :: !(Maybe Text)
    , _hplKind          :: !Text
    , _hplItems         :: !(Maybe [HiddenPlayer])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HiddenPlayerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hplNextPageToken'
--
-- * 'hplKind'
--
-- * 'hplItems'
hiddenPlayerList
    :: HiddenPlayerList
hiddenPlayerList =
    HiddenPlayerList
    { _hplNextPageToken = Nothing
    , _hplKind = "gamesManagement#hiddenPlayerList"
    , _hplItems = Nothing
    }

-- | The pagination token for the next page of results.
hplNextPageToken :: Lens' HiddenPlayerList (Maybe Text)
hplNextPageToken
  = lens _hplNextPageToken
      (\ s a -> s{_hplNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#hiddenPlayerList.
hplKind :: Lens' HiddenPlayerList Text
hplKind = lens _hplKind (\ s a -> s{_hplKind = a})

-- | The players.
hplItems :: Lens' HiddenPlayerList [HiddenPlayer]
hplItems
  = lens _hplItems (\ s a -> s{_hplItems = a}) .
      _Default
      . _Coerce

instance FromJSON HiddenPlayerList where
        parseJSON
          = withObject "HiddenPlayerList"
              (\ o ->
                 HiddenPlayerList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "gamesManagement#hiddenPlayerList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON HiddenPlayerList where
        toJSON HiddenPlayerList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _hplNextPageToken,
                  Just ("kind" .= _hplKind),
                  ("items" .=) <$> _hplItems])

-- | This is a JSON template for multiple quests reset all request.
--
-- /See:/ 'questsResetMultipleForAllRequest' smart constructor.
data QuestsResetMultipleForAllRequest = QuestsResetMultipleForAllRequest
    { _qrmfarKind     :: !Text
    , _qrmfarQuestIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsResetMultipleForAllRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrmfarKind'
--
-- * 'qrmfarQuestIds'
questsResetMultipleForAllRequest
    :: QuestsResetMultipleForAllRequest
questsResetMultipleForAllRequest =
    QuestsResetMultipleForAllRequest
    { _qrmfarKind = "gamesManagement#questsResetMultipleForAllRequest"
    , _qrmfarQuestIds = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#questsResetMultipleForAllRequest.
qrmfarKind :: Lens' QuestsResetMultipleForAllRequest Text
qrmfarKind
  = lens _qrmfarKind (\ s a -> s{_qrmfarKind = a})

-- | The IDs of quests to reset.
qrmfarQuestIds :: Lens' QuestsResetMultipleForAllRequest [Text]
qrmfarQuestIds
  = lens _qrmfarQuestIds
      (\ s a -> s{_qrmfarQuestIds = a})
      . _Default
      . _Coerce

instance FromJSON QuestsResetMultipleForAllRequest
         where
        parseJSON
          = withObject "QuestsResetMultipleForAllRequest"
              (\ o ->
                 QuestsResetMultipleForAllRequest <$>
                   (o .:? "kind" .!=
                      "gamesManagement#questsResetMultipleForAllRequest")
                     <*> (o .:? "quest_ids" .!= mempty))

instance ToJSON QuestsResetMultipleForAllRequest
         where
        toJSON QuestsResetMultipleForAllRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _qrmfarKind),
                  ("quest_ids" .=) <$> _qrmfarQuestIds])

-- | This is a JSON template for multiple events reset all request.
--
-- /See:/ 'eventsResetMultipleForAllRequest' smart constructor.
data EventsResetMultipleForAllRequest = EventsResetMultipleForAllRequest
    { _ermfarKind     :: !Text
    , _ermfarEventIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsResetMultipleForAllRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ermfarKind'
--
-- * 'ermfarEventIds'
eventsResetMultipleForAllRequest
    :: EventsResetMultipleForAllRequest
eventsResetMultipleForAllRequest =
    EventsResetMultipleForAllRequest
    { _ermfarKind = "gamesManagement#eventsResetMultipleForAllRequest"
    , _ermfarEventIds = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#eventsResetMultipleForAllRequest.
ermfarKind :: Lens' EventsResetMultipleForAllRequest Text
ermfarKind
  = lens _ermfarKind (\ s a -> s{_ermfarKind = a})

-- | The IDs of events to reset.
ermfarEventIds :: Lens' EventsResetMultipleForAllRequest [Text]
ermfarEventIds
  = lens _ermfarEventIds
      (\ s a -> s{_ermfarEventIds = a})
      . _Default
      . _Coerce

instance FromJSON EventsResetMultipleForAllRequest
         where
        parseJSON
          = withObject "EventsResetMultipleForAllRequest"
              (\ o ->
                 EventsResetMultipleForAllRequest <$>
                   (o .:? "kind" .!=
                      "gamesManagement#eventsResetMultipleForAllRequest")
                     <*> (o .:? "event_ids" .!= mempty))

instance ToJSON EventsResetMultipleForAllRequest
         where
        toJSON EventsResetMultipleForAllRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ermfarKind),
                  ("event_ids" .=) <$> _ermfarEventIds])

-- | This is a JSON template for multiple achievements reset all request.
--
-- /See:/ 'achievementResetMultipleForAllRequest' smart constructor.
data AchievementResetMultipleForAllRequest = AchievementResetMultipleForAllRequest
    { _armfarKind           :: !Text
    , _armfarAchievementIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementResetMultipleForAllRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'armfarKind'
--
-- * 'armfarAchievementIds'
achievementResetMultipleForAllRequest
    :: AchievementResetMultipleForAllRequest
achievementResetMultipleForAllRequest =
    AchievementResetMultipleForAllRequest
    { _armfarKind = "gamesManagement#achievementResetMultipleForAllRequest"
    , _armfarAchievementIds = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#achievementResetMultipleForAllRequest.
armfarKind :: Lens' AchievementResetMultipleForAllRequest Text
armfarKind
  = lens _armfarKind (\ s a -> s{_armfarKind = a})

-- | The IDs of achievements to reset.
armfarAchievementIds :: Lens' AchievementResetMultipleForAllRequest [Text]
armfarAchievementIds
  = lens _armfarAchievementIds
      (\ s a -> s{_armfarAchievementIds = a})
      . _Default
      . _Coerce

instance FromJSON
         AchievementResetMultipleForAllRequest where
        parseJSON
          = withObject "AchievementResetMultipleForAllRequest"
              (\ o ->
                 AchievementResetMultipleForAllRequest <$>
                   (o .:? "kind" .!=
                      "gamesManagement#achievementResetMultipleForAllRequest")
                     <*> (o .:? "achievement_ids" .!= mempty))

instance ToJSON AchievementResetMultipleForAllRequest
         where
        toJSON AchievementResetMultipleForAllRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _armfarKind),
                  ("achievement_ids" .=) <$> _armfarAchievementIds])

-- | This is a JSON template for the HiddenPlayer resource.
--
-- /See:/ 'hiddenPlayer' smart constructor.
data HiddenPlayer = HiddenPlayer
    { _hpKind             :: !Text
    , _hpHiddenTimeMillis :: !(Maybe Int64)
    , _hpPlayer           :: !(Maybe Player)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HiddenPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpKind'
--
-- * 'hpHiddenTimeMillis'
--
-- * 'hpPlayer'
hiddenPlayer
    :: HiddenPlayer
hiddenPlayer =
    HiddenPlayer
    { _hpKind = "gamesManagement#hiddenPlayer"
    , _hpHiddenTimeMillis = Nothing
    , _hpPlayer = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#hiddenPlayer.
hpKind :: Lens' HiddenPlayer Text
hpKind = lens _hpKind (\ s a -> s{_hpKind = a})

-- | The time this player was hidden.
hpHiddenTimeMillis :: Lens' HiddenPlayer (Maybe Int64)
hpHiddenTimeMillis
  = lens _hpHiddenTimeMillis
      (\ s a -> s{_hpHiddenTimeMillis = a})

-- | The player information.
hpPlayer :: Lens' HiddenPlayer (Maybe Player)
hpPlayer = lens _hpPlayer (\ s a -> s{_hpPlayer = a})

instance FromJSON HiddenPlayer where
        parseJSON
          = withObject "HiddenPlayer"
              (\ o ->
                 HiddenPlayer <$>
                   (o .:? "kind" .!= "gamesManagement#hiddenPlayer") <*>
                     (o .:? "hiddenTimeMillis")
                     <*> (o .:? "player"))

instance ToJSON HiddenPlayer where
        toJSON HiddenPlayer{..}
          = object
              (catMaybes
                 [Just ("kind" .= _hpKind),
                  ("hiddenTimeMillis" .=) <$> _hpHiddenTimeMillis,
                  ("player" .=) <$> _hpPlayer])

-- | An object representation of the individual components of the player\'s
-- name. For some players, these fields may not be present.
--
-- /See:/ 'name' smart constructor.
data Name = Name
    { _nGivenName  :: !(Maybe Text)
    , _nFamilyName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Name' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nGivenName'
--
-- * 'nFamilyName'
name
    :: Name
name =
    Name
    { _nGivenName = Nothing
    , _nFamilyName = Nothing
    }

-- | The given name of this player. In some places, this is known as the
-- first name.
nGivenName :: Lens' Name (Maybe Text)
nGivenName
  = lens _nGivenName (\ s a -> s{_nGivenName = a})

-- | The family name of this player. In some places, this is known as the
-- last name.
nFamilyName :: Lens' Name (Maybe Text)
nFamilyName
  = lens _nFamilyName (\ s a -> s{_nFamilyName = a})

instance FromJSON Name where
        parseJSON
          = withObject "Name"
              (\ o ->
                 Name <$>
                   (o .:? "givenName") <*> (o .:? "familyName"))

instance ToJSON Name where
        toJSON Name{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _nGivenName,
                  ("familyName" .=) <$> _nFamilyName])

-- | This is a JSON template for achievement reset all response.
--
-- /See:/ 'achievementResetAllResponse' smart constructor.
data AchievementResetAllResponse = AchievementResetAllResponse
    { _ararResults :: !(Maybe [AchievementResetResponse])
    , _ararKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementResetAllResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ararResults'
--
-- * 'ararKind'
achievementResetAllResponse
    :: AchievementResetAllResponse
achievementResetAllResponse =
    AchievementResetAllResponse
    { _ararResults = Nothing
    , _ararKind = "gamesManagement#achievementResetAllResponse"
    }

-- | The achievement reset results.
ararResults :: Lens' AchievementResetAllResponse [AchievementResetResponse]
ararResults
  = lens _ararResults (\ s a -> s{_ararResults = a}) .
      _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#achievementResetAllResponse.
ararKind :: Lens' AchievementResetAllResponse Text
ararKind = lens _ararKind (\ s a -> s{_ararKind = a})

instance FromJSON AchievementResetAllResponse where
        parseJSON
          = withObject "AchievementResetAllResponse"
              (\ o ->
                 AchievementResetAllResponse <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "gamesManagement#achievementResetAllResponse"))

instance ToJSON AchievementResetAllResponse where
        toJSON AchievementResetAllResponse{..}
          = object
              (catMaybes
                 [("results" .=) <$> _ararResults,
                  Just ("kind" .= _ararKind)])

-- | This is a JSON template for a Player resource.
--
-- /See:/ 'player' smart constructor.
data Player = Player
    { _pLastPlayedWith :: !(Maybe GamesPlayedResource)
    , _pAvatarImageURL :: !(Maybe Text)
    , _pKind           :: !Text
    , _pExperienceInfo :: !(Maybe GamesPlayerExperienceInfoResource)
    , _pName           :: !(Maybe Name)
    , _pDisplayName    :: !(Maybe Text)
    , _pTitle          :: !(Maybe Text)
    , _pPlayerId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Player' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pLastPlayedWith'
--
-- * 'pAvatarImageURL'
--
-- * 'pKind'
--
-- * 'pExperienceInfo'
--
-- * 'pName'
--
-- * 'pDisplayName'
--
-- * 'pTitle'
--
-- * 'pPlayerId'
player
    :: Player
player =
    Player
    { _pLastPlayedWith = Nothing
    , _pAvatarImageURL = Nothing
    , _pKind = "gamesManagement#player"
    , _pExperienceInfo = Nothing
    , _pName = Nothing
    , _pDisplayName = Nothing
    , _pTitle = Nothing
    , _pPlayerId = Nothing
    }

-- | Details about the last time this player played a multiplayer game with
-- the currently authenticated player. Populated for PLAYED_WITH player
-- collection members.
pLastPlayedWith :: Lens' Player (Maybe GamesPlayedResource)
pLastPlayedWith
  = lens _pLastPlayedWith
      (\ s a -> s{_pLastPlayedWith = a})

-- | The base URL for the image that represents the player.
pAvatarImageURL :: Lens' Player (Maybe Text)
pAvatarImageURL
  = lens _pAvatarImageURL
      (\ s a -> s{_pAvatarImageURL = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#player.
pKind :: Lens' Player Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | An object to represent Play Game experience information for the player.
pExperienceInfo :: Lens' Player (Maybe GamesPlayerExperienceInfoResource)
pExperienceInfo
  = lens _pExperienceInfo
      (\ s a -> s{_pExperienceInfo = a})

-- | An object representation of the individual components of the player\'s
-- name. For some players, these fields may not be present.
pName :: Lens' Player (Maybe Name)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The name to display for the player.
pDisplayName :: Lens' Player (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | The player\'s title rewarded for their game activities.
pTitle :: Lens' Player (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

-- | The ID of the player.
pPlayerId :: Lens' Player (Maybe Text)
pPlayerId
  = lens _pPlayerId (\ s a -> s{_pPlayerId = a})

instance FromJSON Player where
        parseJSON
          = withObject "Player"
              (\ o ->
                 Player <$>
                   (o .:? "lastPlayedWith") <*> (o .:? "avatarImageUrl")
                     <*> (o .:? "kind" .!= "gamesManagement#player")
                     <*> (o .:? "experienceInfo")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "title")
                     <*> (o .:? "playerId"))

instance ToJSON Player where
        toJSON Player{..}
          = object
              (catMaybes
                 [("lastPlayedWith" .=) <$> _pLastPlayedWith,
                  ("avatarImageUrl" .=) <$> _pAvatarImageURL,
                  Just ("kind" .= _pKind),
                  ("experienceInfo" .=) <$> _pExperienceInfo,
                  ("name" .=) <$> _pName,
                  ("displayName" .=) <$> _pDisplayName,
                  ("title" .=) <$> _pTitle,
                  ("playerId" .=) <$> _pPlayerId])

-- | This is a JSON template for an achievement reset response.
--
-- /See:/ 'achievementResetResponse' smart constructor.
data AchievementResetResponse = AchievementResetResponse
    { _arrUpdateOccurred :: !(Maybe Bool)
    , _arrKind           :: !Text
    , _arrCurrentState   :: !(Maybe Text)
    , _arrDefinitionId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementResetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arrUpdateOccurred'
--
-- * 'arrKind'
--
-- * 'arrCurrentState'
--
-- * 'arrDefinitionId'
achievementResetResponse
    :: AchievementResetResponse
achievementResetResponse =
    AchievementResetResponse
    { _arrUpdateOccurred = Nothing
    , _arrKind = "gamesManagement#achievementResetResponse"
    , _arrCurrentState = Nothing
    , _arrDefinitionId = Nothing
    }

-- | Flag to indicate if the requested update actually occurred.
arrUpdateOccurred :: Lens' AchievementResetResponse (Maybe Bool)
arrUpdateOccurred
  = lens _arrUpdateOccurred
      (\ s a -> s{_arrUpdateOccurred = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string gamesManagement#achievementResetResponse.
arrKind :: Lens' AchievementResetResponse Text
arrKind = lens _arrKind (\ s a -> s{_arrKind = a})

-- | The current state of the achievement. This is the same as the initial
-- state of the achievement. Possible values are: - \"HIDDEN\"- Achievement
-- is hidden. - \"REVEALED\" - Achievement is revealed. - \"UNLOCKED\" -
-- Achievement is unlocked.
arrCurrentState :: Lens' AchievementResetResponse (Maybe Text)
arrCurrentState
  = lens _arrCurrentState
      (\ s a -> s{_arrCurrentState = a})

-- | The ID of an achievement for which player state has been updated.
arrDefinitionId :: Lens' AchievementResetResponse (Maybe Text)
arrDefinitionId
  = lens _arrDefinitionId
      (\ s a -> s{_arrDefinitionId = a})

instance FromJSON AchievementResetResponse where
        parseJSON
          = withObject "AchievementResetResponse"
              (\ o ->
                 AchievementResetResponse <$>
                   (o .:? "updateOccurred") <*>
                     (o .:? "kind" .!=
                        "gamesManagement#achievementResetResponse")
                     <*> (o .:? "currentState")
                     <*> (o .:? "definitionId"))

instance ToJSON AchievementResetResponse where
        toJSON AchievementResetResponse{..}
          = object
              (catMaybes
                 [("updateOccurred" .=) <$> _arrUpdateOccurred,
                  Just ("kind" .= _arrKind),
                  ("currentState" .=) <$> _arrCurrentState,
                  ("definitionId" .=) <$> _arrDefinitionId])
