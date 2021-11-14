{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesManagement.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesManagement.Types.Product where

import Network.Google.GamesManagement.Types.Sum
import Network.Google.Prelude

-- | 1P\/3P metadata about the player\'s experience.
--
-- /See:/ 'gamesPlayerExperienceInfoResource' smart constructor.
data GamesPlayerExperienceInfoResource =
  GamesPlayerExperienceInfoResource'
    { _gpeirCurrentExperiencePoints :: !(Maybe (Textual Int64))
    , _gpeirCurrentLevel :: !(Maybe GamesPlayerLevelResource)
    , _gpeirNextLevel :: !(Maybe GamesPlayerLevelResource)
    , _gpeirLastLevelUpTimestampMillis :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  GamesPlayerExperienceInfoResource'
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
      . mapping _Coerce

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
      . mapping _Coerce

instance FromJSON GamesPlayerExperienceInfoResource
         where
        parseJSON
          = withObject "GamesPlayerExperienceInfoResource"
              (\ o ->
                 GamesPlayerExperienceInfoResource' <$>
                   (o .:? "currentExperiencePoints") <*>
                     (o .:? "currentLevel")
                     <*> (o .:? "nextLevel")
                     <*> (o .:? "lastLevelUpTimestampMillis"))

instance ToJSON GamesPlayerExperienceInfoResource
         where
        toJSON GamesPlayerExperienceInfoResource'{..}
          = object
              (catMaybes
                 [("currentExperiencePoints" .=) <$>
                    _gpeirCurrentExperiencePoints,
                  ("currentLevel" .=) <$> _gpeirCurrentLevel,
                  ("nextLevel" .=) <$> _gpeirNextLevel,
                  ("lastLevelUpTimestampMillis" .=) <$>
                    _gpeirLastLevelUpTimestampMillis])

-- | An object representation of the individual components of the player\'s
-- name. For some players, these fields may not be present.
--
-- /See:/ 'playerName' smart constructor.
data PlayerName =
  PlayerName'
    { _pnGivenName :: !(Maybe Text)
    , _pnFamilyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnGivenName'
--
-- * 'pnFamilyName'
playerName
    :: PlayerName
playerName = PlayerName' {_pnGivenName = Nothing, _pnFamilyName = Nothing}


-- | The given name of this player. In some places, this is known as the
-- first name.
pnGivenName :: Lens' PlayerName (Maybe Text)
pnGivenName
  = lens _pnGivenName (\ s a -> s{_pnGivenName = a})

-- | The family name of this player. In some places, this is known as the
-- last name.
pnFamilyName :: Lens' PlayerName (Maybe Text)
pnFamilyName
  = lens _pnFamilyName (\ s a -> s{_pnFamilyName = a})

instance FromJSON PlayerName where
        parseJSON
          = withObject "PlayerName"
              (\ o ->
                 PlayerName' <$>
                   (o .:? "givenName") <*> (o .:? "familyName"))

instance ToJSON PlayerName where
        toJSON PlayerName'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _pnGivenName,
                  ("familyName" .=) <$> _pnFamilyName])

-- | A list of leaderboard reset resources.
--
-- /See:/ 'playerScoreResetAllResponse' smart constructor.
data PlayerScoreResetAllResponse =
  PlayerScoreResetAllResponse'
    { _psrarResults :: !(Maybe [PlayerScoreResetResponse])
    , _psrarKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  PlayerScoreResetAllResponse' {_psrarResults = Nothing, _psrarKind = Nothing}


-- | The leaderboard reset results.
psrarResults :: Lens' PlayerScoreResetAllResponse [PlayerScoreResetResponse]
psrarResults
  = lens _psrarResults (\ s a -> s{_psrarResults = a})
      . _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#playerScoreResetAllResponse\`.
psrarKind :: Lens' PlayerScoreResetAllResponse (Maybe Text)
psrarKind
  = lens _psrarKind (\ s a -> s{_psrarKind = a})

instance FromJSON PlayerScoreResetAllResponse where
        parseJSON
          = withObject "PlayerScoreResetAllResponse"
              (\ o ->
                 PlayerScoreResetAllResponse' <$>
                   (o .:? "results" .!= mempty) <*> (o .:? "kind"))

instance ToJSON PlayerScoreResetAllResponse where
        toJSON PlayerScoreResetAllResponse'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _psrarResults,
                  ("kind" .=) <$> _psrarKind])

-- | 1P\/3P metadata about a user\'s level.
--
-- /See:/ 'gamesPlayerLevelResource' smart constructor.
data GamesPlayerLevelResource =
  GamesPlayerLevelResource'
    { _gplrMaxExperiencePoints :: !(Maybe (Textual Int64))
    , _gplrMinExperiencePoints :: !(Maybe (Textual Int64))
    , _gplrLevel :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  GamesPlayerLevelResource'
    { _gplrMaxExperiencePoints = Nothing
    , _gplrMinExperiencePoints = Nothing
    , _gplrLevel = Nothing
    }


-- | The maximum experience points for this level.
gplrMaxExperiencePoints :: Lens' GamesPlayerLevelResource (Maybe Int64)
gplrMaxExperiencePoints
  = lens _gplrMaxExperiencePoints
      (\ s a -> s{_gplrMaxExperiencePoints = a})
      . mapping _Coerce

-- | The minimum experience points for this level.
gplrMinExperiencePoints :: Lens' GamesPlayerLevelResource (Maybe Int64)
gplrMinExperiencePoints
  = lens _gplrMinExperiencePoints
      (\ s a -> s{_gplrMinExperiencePoints = a})
      . mapping _Coerce

-- | The level for the user.
gplrLevel :: Lens' GamesPlayerLevelResource (Maybe Int32)
gplrLevel
  = lens _gplrLevel (\ s a -> s{_gplrLevel = a}) .
      mapping _Coerce

instance FromJSON GamesPlayerLevelResource where
        parseJSON
          = withObject "GamesPlayerLevelResource"
              (\ o ->
                 GamesPlayerLevelResource' <$>
                   (o .:? "maxExperiencePoints") <*>
                     (o .:? "minExperiencePoints")
                     <*> (o .:? "level"))

instance ToJSON GamesPlayerLevelResource where
        toJSON GamesPlayerLevelResource'{..}
          = object
              (catMaybes
                 [("maxExperiencePoints" .=) <$>
                    _gplrMaxExperiencePoints,
                  ("minExperiencePoints" .=) <$>
                    _gplrMinExperiencePoints,
                  ("level" .=) <$> _gplrLevel])

-- | A list of reset leaderboard entry resources.
--
-- /See:/ 'playerScoreResetResponse' smart constructor.
data PlayerScoreResetResponse =
  PlayerScoreResetResponse'
    { _psrrKind :: !(Maybe Text)
    , _psrrResetScoreTimeSpans :: !(Maybe [Text])
    , _psrrDefinitionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  PlayerScoreResetResponse'
    { _psrrKind = Nothing
    , _psrrResetScoreTimeSpans = Nothing
    , _psrrDefinitionId = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#playerScoreResetResponse\`.
psrrKind :: Lens' PlayerScoreResetResponse (Maybe Text)
psrrKind = lens _psrrKind (\ s a -> s{_psrrKind = a})

-- | The time spans of the updated score. Possible values are: -
-- \"\`ALL_TIME\`\" - The score is an all-time score. - \"\`WEEKLY\`\" -
-- The score is a weekly score. - \"\`DAILY\`\" - The score is a daily
-- score.
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
                 PlayerScoreResetResponse' <$>
                   (o .:? "kind") <*>
                     (o .:? "resetScoreTimeSpans" .!= mempty)
                     <*> (o .:? "definitionId"))

instance ToJSON PlayerScoreResetResponse where
        toJSON PlayerScoreResetResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _psrrKind,
                  ("resetScoreTimeSpans" .=) <$>
                    _psrrResetScoreTimeSpans,
                  ("definitionId" .=) <$> _psrrDefinitionId])

--
-- /See:/ 'scoresResetMultipleForAllRequest' smart constructor.
data ScoresResetMultipleForAllRequest =
  ScoresResetMultipleForAllRequest'
    { _srmfarKind :: !(Maybe Text)
    , _srmfarLeaderboardIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ScoresResetMultipleForAllRequest'
    {_srmfarKind = Nothing, _srmfarLeaderboardIds = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#scoresResetMultipleForAllRequest\`.
srmfarKind :: Lens' ScoresResetMultipleForAllRequest (Maybe Text)
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
                 ScoresResetMultipleForAllRequest' <$>
                   (o .:? "kind") <*>
                     (o .:? "leaderboard_ids" .!= mempty))

instance ToJSON ScoresResetMultipleForAllRequest
         where
        toJSON ScoresResetMultipleForAllRequest'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _srmfarKind,
                  ("leaderboard_ids" .=) <$> _srmfarLeaderboardIds])

-- | A list of hidden players.
--
-- /See:/ 'hiddenPlayerList' smart constructor.
data HiddenPlayerList =
  HiddenPlayerList'
    { _hplNextPageToken :: !(Maybe Text)
    , _hplKind :: !(Maybe Text)
    , _hplItems :: !(Maybe [HiddenPlayer])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  HiddenPlayerList'
    {_hplNextPageToken = Nothing, _hplKind = Nothing, _hplItems = Nothing}


-- | The pagination token for the next page of results.
hplNextPageToken :: Lens' HiddenPlayerList (Maybe Text)
hplNextPageToken
  = lens _hplNextPageToken
      (\ s a -> s{_hplNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#hiddenPlayerList\`.
hplKind :: Lens' HiddenPlayerList (Maybe Text)
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
                 HiddenPlayerList' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON HiddenPlayerList where
        toJSON HiddenPlayerList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _hplNextPageToken,
                  ("kind" .=) <$> _hplKind,
                  ("items" .=) <$> _hplItems])

-- | Multiple events reset all request.
--
-- /See:/ 'eventsResetMultipleForAllRequest' smart constructor.
data EventsResetMultipleForAllRequest =
  EventsResetMultipleForAllRequest'
    { _ermfarKind :: !(Maybe Text)
    , _ermfarEventIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  EventsResetMultipleForAllRequest'
    {_ermfarKind = Nothing, _ermfarEventIds = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#eventsResetMultipleForAllRequest\`.
ermfarKind :: Lens' EventsResetMultipleForAllRequest (Maybe Text)
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
                 EventsResetMultipleForAllRequest' <$>
                   (o .:? "kind") <*> (o .:? "event_ids" .!= mempty))

instance ToJSON EventsResetMultipleForAllRequest
         where
        toJSON EventsResetMultipleForAllRequest'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ermfarKind,
                  ("event_ids" .=) <$> _ermfarEventIds])

--
-- /See:/ 'achievementResetMultipleForAllRequest' smart constructor.
data AchievementResetMultipleForAllRequest =
  AchievementResetMultipleForAllRequest'
    { _armfarKind :: !(Maybe Text)
    , _armfarAchievementIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AchievementResetMultipleForAllRequest'
    {_armfarKind = Nothing, _armfarAchievementIds = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#achievementResetMultipleForAllRequest\`.
armfarKind :: Lens' AchievementResetMultipleForAllRequest (Maybe Text)
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
           AchievementResetMultipleForAllRequest
         where
        parseJSON
          = withObject "AchievementResetMultipleForAllRequest"
              (\ o ->
                 AchievementResetMultipleForAllRequest' <$>
                   (o .:? "kind") <*>
                     (o .:? "achievement_ids" .!= mempty))

instance ToJSON AchievementResetMultipleForAllRequest
         where
        toJSON AchievementResetMultipleForAllRequest'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _armfarKind,
                  ("achievement_ids" .=) <$> _armfarAchievementIds])

-- | The HiddenPlayer resource.
--
-- /See:/ 'hiddenPlayer' smart constructor.
data HiddenPlayer =
  HiddenPlayer'
    { _hpKind :: !(Maybe Text)
    , _hpHiddenTimeMillis :: !(Maybe (Textual Int64))
    , _hpPlayer :: !(Maybe Player)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  HiddenPlayer'
    {_hpKind = Nothing, _hpHiddenTimeMillis = Nothing, _hpPlayer = Nothing}


-- | Output only. Uniquely identifies the type of this resource. Value is
-- always the fixed string \`gamesManagement#hiddenPlayer\`.
hpKind :: Lens' HiddenPlayer (Maybe Text)
hpKind = lens _hpKind (\ s a -> s{_hpKind = a})

-- | Output only. The time this player was hidden.
hpHiddenTimeMillis :: Lens' HiddenPlayer (Maybe Int64)
hpHiddenTimeMillis
  = lens _hpHiddenTimeMillis
      (\ s a -> s{_hpHiddenTimeMillis = a})
      . mapping _Coerce

-- | Output only. The player information.
hpPlayer :: Lens' HiddenPlayer (Maybe Player)
hpPlayer = lens _hpPlayer (\ s a -> s{_hpPlayer = a})

instance FromJSON HiddenPlayer where
        parseJSON
          = withObject "HiddenPlayer"
              (\ o ->
                 HiddenPlayer' <$>
                   (o .:? "kind") <*> (o .:? "hiddenTimeMillis") <*>
                     (o .:? "player"))

instance ToJSON HiddenPlayer where
        toJSON HiddenPlayer'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _hpKind,
                  ("hiddenTimeMillis" .=) <$> _hpHiddenTimeMillis,
                  ("player" .=) <$> _hpPlayer])

-- | Achievement reset all response.
--
-- /See:/ 'achievementResetAllResponse' smart constructor.
data AchievementResetAllResponse =
  AchievementResetAllResponse'
    { _ararResults :: !(Maybe [AchievementResetResponse])
    , _ararKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AchievementResetAllResponse' {_ararResults = Nothing, _ararKind = Nothing}


-- | The achievement reset results.
ararResults :: Lens' AchievementResetAllResponse [AchievementResetResponse]
ararResults
  = lens _ararResults (\ s a -> s{_ararResults = a}) .
      _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#achievementResetAllResponse\`.
ararKind :: Lens' AchievementResetAllResponse (Maybe Text)
ararKind = lens _ararKind (\ s a -> s{_ararKind = a})

instance FromJSON AchievementResetAllResponse where
        parseJSON
          = withObject "AchievementResetAllResponse"
              (\ o ->
                 AchievementResetAllResponse' <$>
                   (o .:? "results" .!= mempty) <*> (o .:? "kind"))

instance ToJSON AchievementResetAllResponse where
        toJSON AchievementResetAllResponse'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _ararResults,
                  ("kind" .=) <$> _ararKind])

-- | A Player resource.
--
-- /See:/ 'player' smart constructor.
data Player =
  Player'
    { _pBannerURLLandscape :: !(Maybe Text)
    , _pAvatarImageURL :: !(Maybe Text)
    , _pKind :: !(Maybe Text)
    , _pExperienceInfo :: !(Maybe GamesPlayerExperienceInfoResource)
    , _pName :: !(Maybe PlayerName)
    , _pOriginalPlayerId :: !(Maybe Text)
    , _pDisplayName :: !(Maybe Text)
    , _pTitle :: !(Maybe Text)
    , _pBannerURLPortrait :: !(Maybe Text)
    , _pPlayerId :: !(Maybe Text)
    , _pProFileSettings :: !(Maybe ProFileSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Player' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pBannerURLLandscape'
--
-- * 'pAvatarImageURL'
--
-- * 'pKind'
--
-- * 'pExperienceInfo'
--
-- * 'pName'
--
-- * 'pOriginalPlayerId'
--
-- * 'pDisplayName'
--
-- * 'pTitle'
--
-- * 'pBannerURLPortrait'
--
-- * 'pPlayerId'
--
-- * 'pProFileSettings'
player
    :: Player
player =
  Player'
    { _pBannerURLLandscape = Nothing
    , _pAvatarImageURL = Nothing
    , _pKind = Nothing
    , _pExperienceInfo = Nothing
    , _pName = Nothing
    , _pOriginalPlayerId = Nothing
    , _pDisplayName = Nothing
    , _pTitle = Nothing
    , _pBannerURLPortrait = Nothing
    , _pPlayerId = Nothing
    , _pProFileSettings = Nothing
    }


-- | The url to the landscape mode player banner image.
pBannerURLLandscape :: Lens' Player (Maybe Text)
pBannerURLLandscape
  = lens _pBannerURLLandscape
      (\ s a -> s{_pBannerURLLandscape = a})

-- | The base URL for the image that represents the player.
pAvatarImageURL :: Lens' Player (Maybe Text)
pAvatarImageURL
  = lens _pAvatarImageURL
      (\ s a -> s{_pAvatarImageURL = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#player\`.
pKind :: Lens' Player (Maybe Text)
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | An object to represent Play Game experience information for the player.
pExperienceInfo :: Lens' Player (Maybe GamesPlayerExperienceInfoResource)
pExperienceInfo
  = lens _pExperienceInfo
      (\ s a -> s{_pExperienceInfo = a})

-- | An object representation of the individual components of the player\'s
-- name. For some players, these fields may not be present.
pName :: Lens' Player (Maybe PlayerName)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The player ID that was used for this player the first time they signed
-- into the game in question. This is only populated for calls to
-- player.get for the requesting player, only if the player ID has
-- subsequently changed, and only to clients that support remapping player
-- IDs.
pOriginalPlayerId :: Lens' Player (Maybe Text)
pOriginalPlayerId
  = lens _pOriginalPlayerId
      (\ s a -> s{_pOriginalPlayerId = a})

-- | The name to display for the player.
pDisplayName :: Lens' Player (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | The player\'s title rewarded for their game activities.
pTitle :: Lens' Player (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

-- | The url to the portrait mode player banner image.
pBannerURLPortrait :: Lens' Player (Maybe Text)
pBannerURLPortrait
  = lens _pBannerURLPortrait
      (\ s a -> s{_pBannerURLPortrait = a})

-- | The ID of the player.
pPlayerId :: Lens' Player (Maybe Text)
pPlayerId
  = lens _pPlayerId (\ s a -> s{_pPlayerId = a})

-- | The player\'s profile settings. Controls whether or not the player\'s
-- profile is visible to other players.
pProFileSettings :: Lens' Player (Maybe ProFileSettings)
pProFileSettings
  = lens _pProFileSettings
      (\ s a -> s{_pProFileSettings = a})

instance FromJSON Player where
        parseJSON
          = withObject "Player"
              (\ o ->
                 Player' <$>
                   (o .:? "bannerUrlLandscape") <*>
                     (o .:? "avatarImageUrl")
                     <*> (o .:? "kind")
                     <*> (o .:? "experienceInfo")
                     <*> (o .:? "name")
                     <*> (o .:? "originalPlayerId")
                     <*> (o .:? "displayName")
                     <*> (o .:? "title")
                     <*> (o .:? "bannerUrlPortrait")
                     <*> (o .:? "playerId")
                     <*> (o .:? "profileSettings"))

instance ToJSON Player where
        toJSON Player'{..}
          = object
              (catMaybes
                 [("bannerUrlLandscape" .=) <$> _pBannerURLLandscape,
                  ("avatarImageUrl" .=) <$> _pAvatarImageURL,
                  ("kind" .=) <$> _pKind,
                  ("experienceInfo" .=) <$> _pExperienceInfo,
                  ("name" .=) <$> _pName,
                  ("originalPlayerId" .=) <$> _pOriginalPlayerId,
                  ("displayName" .=) <$> _pDisplayName,
                  ("title" .=) <$> _pTitle,
                  ("bannerUrlPortrait" .=) <$> _pBannerURLPortrait,
                  ("playerId" .=) <$> _pPlayerId,
                  ("profileSettings" .=) <$> _pProFileSettings])

-- | Profile settings
--
-- /See:/ 'proFileSettings' smart constructor.
data ProFileSettings =
  ProFileSettings'
    { _pfsProFileVisible :: !(Maybe Bool)
    , _pfsKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProFileSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfsProFileVisible'
--
-- * 'pfsKind'
proFileSettings
    :: ProFileSettings
proFileSettings =
  ProFileSettings' {_pfsProFileVisible = Nothing, _pfsKind = Nothing}


pfsProFileVisible :: Lens' ProFileSettings (Maybe Bool)
pfsProFileVisible
  = lens _pfsProFileVisible
      (\ s a -> s{_pfsProFileVisible = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#profileSettings\`.
pfsKind :: Lens' ProFileSettings (Maybe Text)
pfsKind = lens _pfsKind (\ s a -> s{_pfsKind = a})

instance FromJSON ProFileSettings where
        parseJSON
          = withObject "ProFileSettings"
              (\ o ->
                 ProFileSettings' <$>
                   (o .:? "profileVisible") <*> (o .:? "kind"))

instance ToJSON ProFileSettings where
        toJSON ProFileSettings'{..}
          = object
              (catMaybes
                 [("profileVisible" .=) <$> _pfsProFileVisible,
                  ("kind" .=) <$> _pfsKind])

-- | An achievement reset response.
--
-- /See:/ 'achievementResetResponse' smart constructor.
data AchievementResetResponse =
  AchievementResetResponse'
    { _arrUpdateOccurred :: !(Maybe Bool)
    , _arrKind :: !(Maybe Text)
    , _arrCurrentState :: !(Maybe Text)
    , _arrDefinitionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  AchievementResetResponse'
    { _arrUpdateOccurred = Nothing
    , _arrKind = Nothing
    , _arrCurrentState = Nothing
    , _arrDefinitionId = Nothing
    }


-- | Flag to indicate if the requested update actually occurred.
arrUpdateOccurred :: Lens' AchievementResetResponse (Maybe Bool)
arrUpdateOccurred
  = lens _arrUpdateOccurred
      (\ s a -> s{_arrUpdateOccurred = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`gamesManagement#achievementResetResponse\`.
arrKind :: Lens' AchievementResetResponse (Maybe Text)
arrKind = lens _arrKind (\ s a -> s{_arrKind = a})

-- | The current state of the achievement. This is the same as the initial
-- state of the achievement. Possible values are: - \"\`HIDDEN\`\"-
-- Achievement is hidden. - \"\`REVEALED\`\" - Achievement is revealed. -
-- \"\`UNLOCKED\`\" - Achievement is unlocked.
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
                 AchievementResetResponse' <$>
                   (o .:? "updateOccurred") <*> (o .:? "kind") <*>
                     (o .:? "currentState")
                     <*> (o .:? "definitionId"))

instance ToJSON AchievementResetResponse where
        toJSON AchievementResetResponse'{..}
          = object
              (catMaybes
                 [("updateOccurred" .=) <$> _arrUpdateOccurred,
                  ("kind" .=) <$> _arrKind,
                  ("currentState" .=) <$> _arrCurrentState,
                  ("definitionId" .=) <$> _arrDefinitionId])
