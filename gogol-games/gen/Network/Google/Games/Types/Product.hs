{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.Types.Product where

import Network.Google.Games.Types.Sum
import Network.Google.Prelude

-- | A representation of the individual components of the name.
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

-- | An snapshot object.
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot =
  Snapshot'
    { _sLastModifiedMillis :: !(Maybe (Textual Int64))
    , _sKind :: !(Maybe Text)
    , _sProgressValue :: !(Maybe (Textual Int64))
    , _sUniqueName :: !(Maybe Text)
    , _sCoverImage :: !(Maybe SnapshotImage)
    , _sId :: !(Maybe Text)
    , _sDurationMillis :: !(Maybe (Textual Int64))
    , _sTitle :: !(Maybe Text)
    , _sType :: !(Maybe SnapshotType)
    , _sDescription :: !(Maybe Text)
    , _sDriveId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sLastModifiedMillis'
--
-- * 'sKind'
--
-- * 'sProgressValue'
--
-- * 'sUniqueName'
--
-- * 'sCoverImage'
--
-- * 'sId'
--
-- * 'sDurationMillis'
--
-- * 'sTitle'
--
-- * 'sType'
--
-- * 'sDescription'
--
-- * 'sDriveId'
snapshot
    :: Snapshot
snapshot =
  Snapshot'
    { _sLastModifiedMillis = Nothing
    , _sKind = Nothing
    , _sProgressValue = Nothing
    , _sUniqueName = Nothing
    , _sCoverImage = Nothing
    , _sId = Nothing
    , _sDurationMillis = Nothing
    , _sTitle = Nothing
    , _sType = Nothing
    , _sDescription = Nothing
    , _sDriveId = Nothing
    }


-- | The timestamp (in millis since Unix epoch) of the last modification to
-- this snapshot.
sLastModifiedMillis :: Lens' Snapshot (Maybe Int64)
sLastModifiedMillis
  = lens _sLastModifiedMillis
      (\ s a -> s{_sLastModifiedMillis = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#snapshot\`.
sKind :: Lens' Snapshot (Maybe Text)
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The progress value (64-bit integer set by developer) associated with
-- this snapshot.
sProgressValue :: Lens' Snapshot (Maybe Int64)
sProgressValue
  = lens _sProgressValue
      (\ s a -> s{_sProgressValue = a})
      . mapping _Coerce

-- | The unique name provided when the snapshot was created.
sUniqueName :: Lens' Snapshot (Maybe Text)
sUniqueName
  = lens _sUniqueName (\ s a -> s{_sUniqueName = a})

-- | The cover image of this snapshot. May be absent if there is no image.
sCoverImage :: Lens' Snapshot (Maybe SnapshotImage)
sCoverImage
  = lens _sCoverImage (\ s a -> s{_sCoverImage = a})

-- | The ID of the snapshot.
sId :: Lens' Snapshot (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | The duration associated with this snapshot, in millis.
sDurationMillis :: Lens' Snapshot (Maybe Int64)
sDurationMillis
  = lens _sDurationMillis
      (\ s a -> s{_sDurationMillis = a})
      . mapping _Coerce

-- | The title of this snapshot.
sTitle :: Lens' Snapshot (Maybe Text)
sTitle = lens _sTitle (\ s a -> s{_sTitle = a})

-- | The type of this snapshot.
sType :: Lens' Snapshot (Maybe SnapshotType)
sType = lens _sType (\ s a -> s{_sType = a})

-- | The description of this snapshot.
sDescription :: Lens' Snapshot (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

-- | The ID of the file underlying this snapshot in the Drive API. Only
-- present if the snapshot is a view on a Drive file and the file is owned
-- by the caller.
sDriveId :: Lens' Snapshot (Maybe Text)
sDriveId = lens _sDriveId (\ s a -> s{_sDriveId = a})

instance FromJSON Snapshot where
        parseJSON
          = withObject "Snapshot"
              (\ o ->
                 Snapshot' <$>
                   (o .:? "lastModifiedMillis") <*> (o .:? "kind") <*>
                     (o .:? "progressValue")
                     <*> (o .:? "uniqueName")
                     <*> (o .:? "coverImage")
                     <*> (o .:? "id")
                     <*> (o .:? "durationMillis")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "driveId"))

instance ToJSON Snapshot where
        toJSON Snapshot'{..}
          = object
              (catMaybes
                 [("lastModifiedMillis" .=) <$> _sLastModifiedMillis,
                  ("kind" .=) <$> _sKind,
                  ("progressValue" .=) <$> _sProgressValue,
                  ("uniqueName" .=) <$> _sUniqueName,
                  ("coverImage" .=) <$> _sCoverImage,
                  ("id" .=) <$> _sId,
                  ("durationMillis" .=) <$> _sDurationMillis,
                  ("title" .=) <$> _sTitle, ("type" .=) <$> _sType,
                  ("description" .=) <$> _sDescription,
                  ("driveId" .=) <$> _sDriveId])

-- | An event status resource.
--
-- /See:/ 'playerEvent' smart constructor.
data PlayerEvent =
  PlayerEvent'
    { _peKind :: !(Maybe Text)
    , _peNumEvents :: !(Maybe (Textual Int64))
    , _peFormattedNumEvents :: !(Maybe Text)
    , _peDefinitionId :: !(Maybe Text)
    , _pePlayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peKind'
--
-- * 'peNumEvents'
--
-- * 'peFormattedNumEvents'
--
-- * 'peDefinitionId'
--
-- * 'pePlayerId'
playerEvent
    :: PlayerEvent
playerEvent =
  PlayerEvent'
    { _peKind = Nothing
    , _peNumEvents = Nothing
    , _peFormattedNumEvents = Nothing
    , _peDefinitionId = Nothing
    , _pePlayerId = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerEvent\`.
peKind :: Lens' PlayerEvent (Maybe Text)
peKind = lens _peKind (\ s a -> s{_peKind = a})

-- | The current number of times this event has occurred.
peNumEvents :: Lens' PlayerEvent (Maybe Int64)
peNumEvents
  = lens _peNumEvents (\ s a -> s{_peNumEvents = a}) .
      mapping _Coerce

-- | The current number of times this event has occurred, as a string. The
-- formatting of this string depends on the configuration of your event in
-- the Play Games Developer Console.
peFormattedNumEvents :: Lens' PlayerEvent (Maybe Text)
peFormattedNumEvents
  = lens _peFormattedNumEvents
      (\ s a -> s{_peFormattedNumEvents = a})

-- | The ID of the event definition.
peDefinitionId :: Lens' PlayerEvent (Maybe Text)
peDefinitionId
  = lens _peDefinitionId
      (\ s a -> s{_peDefinitionId = a})

-- | The ID of the player.
pePlayerId :: Lens' PlayerEvent (Maybe Text)
pePlayerId
  = lens _pePlayerId (\ s a -> s{_pePlayerId = a})

instance FromJSON PlayerEvent where
        parseJSON
          = withObject "PlayerEvent"
              (\ o ->
                 PlayerEvent' <$>
                   (o .:? "kind") <*> (o .:? "numEvents") <*>
                     (o .:? "formattedNumEvents")
                     <*> (o .:? "definitionId")
                     <*> (o .:? "playerId"))

instance ToJSON PlayerEvent where
        toJSON PlayerEvent'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _peKind,
                  ("numEvents" .=) <$> _peNumEvents,
                  ("formattedNumEvents" .=) <$> _peFormattedNumEvents,
                  ("definitionId" .=) <$> _peDefinitionId,
                  ("playerId" .=) <$> _pePlayerId])

-- | A third party stats resource.
--
-- /See:/ 'statsResponse' smart constructor.
data StatsResponse =
  StatsResponse'
    { _srTotalSpendNext28Days :: !(Maybe (Textual Double))
    , _srDaysSinceLastPlayed :: !(Maybe (Textual Int32))
    , _srKind :: !(Maybe Text)
    , _srSpendPercentile :: !(Maybe (Textual Double))
    , _srNumPurchases :: !(Maybe (Textual Int32))
    , _srNumSessions :: !(Maybe (Textual Int32))
    , _srHighSpenderProbability :: !(Maybe (Textual Double))
    , _srAvgSessionLengthMinutes :: !(Maybe (Textual Double))
    , _srNumSessionsPercentile :: !(Maybe (Textual Double))
    , _srChurnProbability :: !(Maybe (Textual Double))
    , _srSpendProbability :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srTotalSpendNext28Days'
--
-- * 'srDaysSinceLastPlayed'
--
-- * 'srKind'
--
-- * 'srSpendPercentile'
--
-- * 'srNumPurchases'
--
-- * 'srNumSessions'
--
-- * 'srHighSpenderProbability'
--
-- * 'srAvgSessionLengthMinutes'
--
-- * 'srNumSessionsPercentile'
--
-- * 'srChurnProbability'
--
-- * 'srSpendProbability'
statsResponse
    :: StatsResponse
statsResponse =
  StatsResponse'
    { _srTotalSpendNext28Days = Nothing
    , _srDaysSinceLastPlayed = Nothing
    , _srKind = Nothing
    , _srSpendPercentile = Nothing
    , _srNumPurchases = Nothing
    , _srNumSessions = Nothing
    , _srHighSpenderProbability = Nothing
    , _srAvgSessionLengthMinutes = Nothing
    , _srNumSessionsPercentile = Nothing
    , _srChurnProbability = Nothing
    , _srSpendProbability = Nothing
    }


-- | The predicted amount of money that the player going to spend in the next
-- 28 days. E.g., 1, 30, 60, ... . Not populated if there is not enough
-- information.
srTotalSpendNext28Days :: Lens' StatsResponse (Maybe Double)
srTotalSpendNext28Days
  = lens _srTotalSpendNext28Days
      (\ s a -> s{_srTotalSpendNext28Days = a})
      . mapping _Coerce

-- | Number of days since the player last played this game. E.g., 0, 1, 5,
-- 10, ... . Not populated if there is not enough information.
srDaysSinceLastPlayed :: Lens' StatsResponse (Maybe Int32)
srDaysSinceLastPlayed
  = lens _srDaysSinceLastPlayed
      (\ s a -> s{_srDaysSinceLastPlayed = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#statsResponse\`.
srKind :: Lens' StatsResponse (Maybe Text)
srKind = lens _srKind (\ s a -> s{_srKind = a})

-- | The approximate spend percentile of the player in this game. E.g., 0,
-- 0.25, 0.5, 0.75. Not populated if there is not enough information.
srSpendPercentile :: Lens' StatsResponse (Maybe Double)
srSpendPercentile
  = lens _srSpendPercentile
      (\ s a -> s{_srSpendPercentile = a})
      . mapping _Coerce

-- | Number of in-app purchases made by the player in this game. E.g., 0, 1,
-- 5, 10, ... . Not populated if there is not enough information.
srNumPurchases :: Lens' StatsResponse (Maybe Int32)
srNumPurchases
  = lens _srNumPurchases
      (\ s a -> s{_srNumPurchases = a})
      . mapping _Coerce

-- | The approximate number of sessions of the player within the last 28
-- days, where a session begins when the player is connected to Play Games
-- Services and ends when they are disconnected. E.g., 0, 1, 5, 10, ... .
-- Not populated if there is not enough information.
srNumSessions :: Lens' StatsResponse (Maybe Int32)
srNumSessions
  = lens _srNumSessions
      (\ s a -> s{_srNumSessions = a})
      . mapping _Coerce

-- | The probability of the player going to spend beyond a threshold amount
-- of money. E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not
-- enough information.
srHighSpenderProbability :: Lens' StatsResponse (Maybe Double)
srHighSpenderProbability
  = lens _srHighSpenderProbability
      (\ s a -> s{_srHighSpenderProbability = a})
      . mapping _Coerce

-- | Average session length in minutes of the player. E.g., 1, 30, 60, ... .
-- Not populated if there is not enough information.
srAvgSessionLengthMinutes :: Lens' StatsResponse (Maybe Double)
srAvgSessionLengthMinutes
  = lens _srAvgSessionLengthMinutes
      (\ s a -> s{_srAvgSessionLengthMinutes = a})
      . mapping _Coerce

-- | The approximation of the sessions percentile of the player within the
-- last 30 days, where a session begins when the player is connected to
-- Play Games Services and ends when they are disconnected. E.g., 0, 0.25,
-- 0.5, 0.75. Not populated if there is not enough information.
srNumSessionsPercentile :: Lens' StatsResponse (Maybe Double)
srNumSessionsPercentile
  = lens _srNumSessionsPercentile
      (\ s a -> s{_srNumSessionsPercentile = a})
      . mapping _Coerce

-- | The probability of the player not returning to play the game in the next
-- day. E.g., 0, 0.1, 0.5, ..., 1.0. Not populated if there is not enough
-- information.
srChurnProbability :: Lens' StatsResponse (Maybe Double)
srChurnProbability
  = lens _srChurnProbability
      (\ s a -> s{_srChurnProbability = a})
      . mapping _Coerce

-- | The probability of the player going to spend the game in the next seven
-- days. E.g., 0, 0.25, 0.50, 0.75. Not populated if there is not enough
-- information.
srSpendProbability :: Lens' StatsResponse (Maybe Double)
srSpendProbability
  = lens _srSpendProbability
      (\ s a -> s{_srSpendProbability = a})
      . mapping _Coerce

instance FromJSON StatsResponse where
        parseJSON
          = withObject "StatsResponse"
              (\ o ->
                 StatsResponse' <$>
                   (o .:? "total_spend_next_28_days") <*>
                     (o .:? "days_since_last_played")
                     <*> (o .:? "kind")
                     <*> (o .:? "spend_percentile")
                     <*> (o .:? "num_purchases")
                     <*> (o .:? "num_sessions")
                     <*> (o .:? "high_spender_probability")
                     <*> (o .:? "avg_session_length_minutes")
                     <*> (o .:? "num_sessions_percentile")
                     <*> (o .:? "churn_probability")
                     <*> (o .:? "spend_probability"))

instance ToJSON StatsResponse where
        toJSON StatsResponse'{..}
          = object
              (catMaybes
                 [("total_spend_next_28_days" .=) <$>
                    _srTotalSpendNext28Days,
                  ("days_since_last_played" .=) <$>
                    _srDaysSinceLastPlayed,
                  ("kind" .=) <$> _srKind,
                  ("spend_percentile" .=) <$> _srSpendPercentile,
                  ("num_purchases" .=) <$> _srNumPurchases,
                  ("num_sessions" .=) <$> _srNumSessions,
                  ("high_spender_probability" .=) <$>
                    _srHighSpenderProbability,
                  ("avg_session_length_minutes" .=) <$>
                    _srAvgSessionLengthMinutes,
                  ("num_sessions_percentile" .=) <$>
                    _srNumSessionsPercentile,
                  ("churn_probability" .=) <$> _srChurnProbability,
                  ("spend_probability" .=) <$> _srSpendProbability])

-- | A player leaderboard score object.
--
-- /See:/ 'playerLeaderboardScore' smart constructor.
data PlayerLeaderboardScore =
  PlayerLeaderboardScore'
    { _plsScoreTag :: !(Maybe Text)
    , _plsScoreString :: !(Maybe Text)
    , _plsKind :: !(Maybe Text)
    , _plsScoreValue :: !(Maybe (Textual Int64))
    , _plsTimeSpan :: !(Maybe PlayerLeaderboardScoreTimeSpan)
    , _plsFriendsRank :: !(Maybe LeaderboardScoreRank)
    , _plsPublicRank :: !(Maybe LeaderboardScoreRank)
    , _plsSocialRank :: !(Maybe LeaderboardScoreRank)
    , _plsLeaderboardId :: !(Maybe Text)
    , _plsWriteTimestamp :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerLeaderboardScore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsScoreTag'
--
-- * 'plsScoreString'
--
-- * 'plsKind'
--
-- * 'plsScoreValue'
--
-- * 'plsTimeSpan'
--
-- * 'plsFriendsRank'
--
-- * 'plsPublicRank'
--
-- * 'plsSocialRank'
--
-- * 'plsLeaderboardId'
--
-- * 'plsWriteTimestamp'
playerLeaderboardScore
    :: PlayerLeaderboardScore
playerLeaderboardScore =
  PlayerLeaderboardScore'
    { _plsScoreTag = Nothing
    , _plsScoreString = Nothing
    , _plsKind = Nothing
    , _plsScoreValue = Nothing
    , _plsTimeSpan = Nothing
    , _plsFriendsRank = Nothing
    , _plsPublicRank = Nothing
    , _plsSocialRank = Nothing
    , _plsLeaderboardId = Nothing
    , _plsWriteTimestamp = Nothing
    }


-- | Additional information about the score. Values must contain no more than
-- 64 URI-safe characters as defined by section 2.3 of RFC 3986.
plsScoreTag :: Lens' PlayerLeaderboardScore (Maybe Text)
plsScoreTag
  = lens _plsScoreTag (\ s a -> s{_plsScoreTag = a})

-- | The formatted value of this score.
plsScoreString :: Lens' PlayerLeaderboardScore (Maybe Text)
plsScoreString
  = lens _plsScoreString
      (\ s a -> s{_plsScoreString = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerLeaderboardScore\`.
plsKind :: Lens' PlayerLeaderboardScore (Maybe Text)
plsKind = lens _plsKind (\ s a -> s{_plsKind = a})

-- | The numerical value of this score.
plsScoreValue :: Lens' PlayerLeaderboardScore (Maybe Int64)
plsScoreValue
  = lens _plsScoreValue
      (\ s a -> s{_plsScoreValue = a})
      . mapping _Coerce

-- | The time span of this score.
plsTimeSpan :: Lens' PlayerLeaderboardScore (Maybe PlayerLeaderboardScoreTimeSpan)
plsTimeSpan
  = lens _plsTimeSpan (\ s a -> s{_plsTimeSpan = a})

-- | The rank of the score in the friends collection for this leaderboard.
plsFriendsRank :: Lens' PlayerLeaderboardScore (Maybe LeaderboardScoreRank)
plsFriendsRank
  = lens _plsFriendsRank
      (\ s a -> s{_plsFriendsRank = a})

-- | The public rank of the score in this leaderboard. This object will not
-- be present if the user is not sharing their scores publicly.
plsPublicRank :: Lens' PlayerLeaderboardScore (Maybe LeaderboardScoreRank)
plsPublicRank
  = lens _plsPublicRank
      (\ s a -> s{_plsPublicRank = a})

-- | The social rank of the score in this leaderboard.
plsSocialRank :: Lens' PlayerLeaderboardScore (Maybe LeaderboardScoreRank)
plsSocialRank
  = lens _plsSocialRank
      (\ s a -> s{_plsSocialRank = a})

-- | The ID of the leaderboard this score is in.
plsLeaderboardId :: Lens' PlayerLeaderboardScore (Maybe Text)
plsLeaderboardId
  = lens _plsLeaderboardId
      (\ s a -> s{_plsLeaderboardId = a})

-- | The timestamp at which this score was recorded, in milliseconds since
-- the epoch in UTC.
plsWriteTimestamp :: Lens' PlayerLeaderboardScore (Maybe Int64)
plsWriteTimestamp
  = lens _plsWriteTimestamp
      (\ s a -> s{_plsWriteTimestamp = a})
      . mapping _Coerce

instance FromJSON PlayerLeaderboardScore where
        parseJSON
          = withObject "PlayerLeaderboardScore"
              (\ o ->
                 PlayerLeaderboardScore' <$>
                   (o .:? "scoreTag") <*> (o .:? "scoreString") <*>
                     (o .:? "kind")
                     <*> (o .:? "scoreValue")
                     <*> (o .:? "timeSpan")
                     <*> (o .:? "friendsRank")
                     <*> (o .:? "publicRank")
                     <*> (o .:? "socialRank")
                     <*> (o .:? "leaderboard_id")
                     <*> (o .:? "writeTimestamp"))

instance ToJSON PlayerLeaderboardScore where
        toJSON PlayerLeaderboardScore'{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _plsScoreTag,
                  ("scoreString" .=) <$> _plsScoreString,
                  ("kind" .=) <$> _plsKind,
                  ("scoreValue" .=) <$> _plsScoreValue,
                  ("timeSpan" .=) <$> _plsTimeSpan,
                  ("friendsRank" .=) <$> _plsFriendsRank,
                  ("publicRank" .=) <$> _plsPublicRank,
                  ("socialRank" .=) <$> _plsSocialRank,
                  ("leaderboard_id" .=) <$> _plsLeaderboardId,
                  ("writeTimestamp" .=) <$> _plsWriteTimestamp])

-- | The Application resource.
--
-- /See:/ 'application' smart constructor.
data Application =
  Application'
    { _aThemeColor :: !(Maybe Text)
    , _aLeaderboardCount :: !(Maybe (Textual Int32))
    , _aKind :: !(Maybe Text)
    , _aCategory :: !(Maybe ApplicationCategory)
    , _aName :: !(Maybe Text)
    , _aEnabledFeatures :: !(Maybe [ApplicationEnabledFeaturesItem])
    , _aInstances :: !(Maybe [Instance])
    , _aAuthor :: !(Maybe Text)
    , _aId :: !(Maybe Text)
    , _aAchievementCount :: !(Maybe (Textual Int32))
    , _aAssets :: !(Maybe [ImageAsset])
    , _aDescription :: !(Maybe Text)
    , _aLastUpdatedTimestamp :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aThemeColor'
--
-- * 'aLeaderboardCount'
--
-- * 'aKind'
--
-- * 'aCategory'
--
-- * 'aName'
--
-- * 'aEnabledFeatures'
--
-- * 'aInstances'
--
-- * 'aAuthor'
--
-- * 'aId'
--
-- * 'aAchievementCount'
--
-- * 'aAssets'
--
-- * 'aDescription'
--
-- * 'aLastUpdatedTimestamp'
application
    :: Application
application =
  Application'
    { _aThemeColor = Nothing
    , _aLeaderboardCount = Nothing
    , _aKind = Nothing
    , _aCategory = Nothing
    , _aName = Nothing
    , _aEnabledFeatures = Nothing
    , _aInstances = Nothing
    , _aAuthor = Nothing
    , _aId = Nothing
    , _aAchievementCount = Nothing
    , _aAssets = Nothing
    , _aDescription = Nothing
    , _aLastUpdatedTimestamp = Nothing
    }


-- | A hint to the client UI for what color to use as an app-themed color.
-- The color is given as an RGB triplet (e.g. \"E0E0E0\").
aThemeColor :: Lens' Application (Maybe Text)
aThemeColor
  = lens _aThemeColor (\ s a -> s{_aThemeColor = a})

-- | The number of leaderboards visible to the currently authenticated
-- player.
aLeaderboardCount :: Lens' Application (Maybe Int32)
aLeaderboardCount
  = lens _aLeaderboardCount
      (\ s a -> s{_aLeaderboardCount = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#application\`.
aKind :: Lens' Application (Maybe Text)
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The category of the application.
aCategory :: Lens' Application (Maybe ApplicationCategory)
aCategory
  = lens _aCategory (\ s a -> s{_aCategory = a})

-- | The name of the application.
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | A list of features that have been enabled for the application.
aEnabledFeatures :: Lens' Application [ApplicationEnabledFeaturesItem]
aEnabledFeatures
  = lens _aEnabledFeatures
      (\ s a -> s{_aEnabledFeatures = a})
      . _Default
      . _Coerce

-- | The instances of the application.
aInstances :: Lens' Application [Instance]
aInstances
  = lens _aInstances (\ s a -> s{_aInstances = a}) .
      _Default
      . _Coerce

-- | The author of the application.
aAuthor :: Lens' Application (Maybe Text)
aAuthor = lens _aAuthor (\ s a -> s{_aAuthor = a})

-- | The ID of the application.
aId :: Lens' Application (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | The number of achievements visible to the currently authenticated
-- player.
aAchievementCount :: Lens' Application (Maybe Int32)
aAchievementCount
  = lens _aAchievementCount
      (\ s a -> s{_aAchievementCount = a})
      . mapping _Coerce

-- | The assets of the application.
aAssets :: Lens' Application [ImageAsset]
aAssets
  = lens _aAssets (\ s a -> s{_aAssets = a}) . _Default
      . _Coerce

-- | The description of the application.
aDescription :: Lens' Application (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

-- | The last updated timestamp of the application.
aLastUpdatedTimestamp :: Lens' Application (Maybe Int64)
aLastUpdatedTimestamp
  = lens _aLastUpdatedTimestamp
      (\ s a -> s{_aLastUpdatedTimestamp = a})
      . mapping _Coerce

instance FromJSON Application where
        parseJSON
          = withObject "Application"
              (\ o ->
                 Application' <$>
                   (o .:? "themeColor") <*> (o .:? "leaderboard_count")
                     <*> (o .:? "kind")
                     <*> (o .:? "category")
                     <*> (o .:? "name")
                     <*> (o .:? "enabledFeatures" .!= mempty)
                     <*> (o .:? "instances" .!= mempty)
                     <*> (o .:? "author")
                     <*> (o .:? "id")
                     <*> (o .:? "achievement_count")
                     <*> (o .:? "assets" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "lastUpdatedTimestamp"))

instance ToJSON Application where
        toJSON Application'{..}
          = object
              (catMaybes
                 [("themeColor" .=) <$> _aThemeColor,
                  ("leaderboard_count" .=) <$> _aLeaderboardCount,
                  ("kind" .=) <$> _aKind,
                  ("category" .=) <$> _aCategory,
                  ("name" .=) <$> _aName,
                  ("enabledFeatures" .=) <$> _aEnabledFeatures,
                  ("instances" .=) <$> _aInstances,
                  ("author" .=) <$> _aAuthor, ("id" .=) <$> _aId,
                  ("achievement_count" .=) <$> _aAchievementCount,
                  ("assets" .=) <$> _aAssets,
                  ("description" .=) <$> _aDescription,
                  ("lastUpdatedTimestamp" .=) <$>
                    _aLastUpdatedTimestamp])

-- | An application category object.
--
-- /See:/ 'applicationCategory' smart constructor.
data ApplicationCategory =
  ApplicationCategory'
    { _acSecondary :: !(Maybe Text)
    , _acKind :: !(Maybe Text)
    , _acPrimary :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acSecondary'
--
-- * 'acKind'
--
-- * 'acPrimary'
applicationCategory
    :: ApplicationCategory
applicationCategory =
  ApplicationCategory'
    {_acSecondary = Nothing, _acKind = Nothing, _acPrimary = Nothing}


-- | The secondary category.
acSecondary :: Lens' ApplicationCategory (Maybe Text)
acSecondary
  = lens _acSecondary (\ s a -> s{_acSecondary = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#applicationCategory\`.
acKind :: Lens' ApplicationCategory (Maybe Text)
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | The primary category.
acPrimary :: Lens' ApplicationCategory (Maybe Text)
acPrimary
  = lens _acPrimary (\ s a -> s{_acPrimary = a})

instance FromJSON ApplicationCategory where
        parseJSON
          = withObject "ApplicationCategory"
              (\ o ->
                 ApplicationCategory' <$>
                   (o .:? "secondary") <*> (o .:? "kind") <*>
                     (o .:? "primary"))

instance ToJSON ApplicationCategory where
        toJSON ApplicationCategory'{..}
          = object
              (catMaybes
                 [("secondary" .=) <$> _acSecondary,
                  ("kind" .=) <$> _acKind,
                  ("primary" .=) <$> _acPrimary])

-- | A list of score submission statuses.
--
-- /See:/ 'playerScoreListResponse' smart constructor.
data PlayerScoreListResponse =
  PlayerScoreListResponse'
    { _pslrSubmittedScores :: !(Maybe [PlayerScoreResponse])
    , _pslrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerScoreListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslrSubmittedScores'
--
-- * 'pslrKind'
playerScoreListResponse
    :: PlayerScoreListResponse
playerScoreListResponse =
  PlayerScoreListResponse' {_pslrSubmittedScores = Nothing, _pslrKind = Nothing}


-- | The score submissions statuses.
pslrSubmittedScores :: Lens' PlayerScoreListResponse [PlayerScoreResponse]
pslrSubmittedScores
  = lens _pslrSubmittedScores
      (\ s a -> s{_pslrSubmittedScores = a})
      . _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerScoreListResponse\`.
pslrKind :: Lens' PlayerScoreListResponse (Maybe Text)
pslrKind = lens _pslrKind (\ s a -> s{_pslrKind = a})

instance FromJSON PlayerScoreListResponse where
        parseJSON
          = withObject "PlayerScoreListResponse"
              (\ o ->
                 PlayerScoreListResponse' <$>
                   (o .:? "submittedScores" .!= mempty) <*>
                     (o .:? "kind"))

instance ToJSON PlayerScoreListResponse where
        toJSON PlayerScoreListResponse'{..}
          = object
              (catMaybes
                 [("submittedScores" .=) <$> _pslrSubmittedScores,
                  ("kind" .=) <$> _pslrKind])

-- | An updated achievement.
--
-- /See:/ 'achievementUpdateResponse' smart constructor.
data AchievementUpdateResponse =
  AchievementUpdateResponse'
    { _aurUpdateOccurred :: !(Maybe Bool)
    , _aurAchievementId :: !(Maybe Text)
    , _aurKind :: !(Maybe Text)
    , _aurCurrentState :: !(Maybe AchievementUpdateResponseCurrentState)
    , _aurNewlyUnlocked :: !(Maybe Bool)
    , _aurCurrentSteps :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aurUpdateOccurred'
--
-- * 'aurAchievementId'
--
-- * 'aurKind'
--
-- * 'aurCurrentState'
--
-- * 'aurNewlyUnlocked'
--
-- * 'aurCurrentSteps'
achievementUpdateResponse
    :: AchievementUpdateResponse
achievementUpdateResponse =
  AchievementUpdateResponse'
    { _aurUpdateOccurred = Nothing
    , _aurAchievementId = Nothing
    , _aurKind = Nothing
    , _aurCurrentState = Nothing
    , _aurNewlyUnlocked = Nothing
    , _aurCurrentSteps = Nothing
    }


-- | Whether the requested updates actually affected the achievement.
aurUpdateOccurred :: Lens' AchievementUpdateResponse (Maybe Bool)
aurUpdateOccurred
  = lens _aurUpdateOccurred
      (\ s a -> s{_aurUpdateOccurred = a})

-- | The achievement this update is was applied to.
aurAchievementId :: Lens' AchievementUpdateResponse (Maybe Text)
aurAchievementId
  = lens _aurAchievementId
      (\ s a -> s{_aurAchievementId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementUpdateResponse\`.
aurKind :: Lens' AchievementUpdateResponse (Maybe Text)
aurKind = lens _aurKind (\ s a -> s{_aurKind = a})

-- | The current state of the achievement.
aurCurrentState :: Lens' AchievementUpdateResponse (Maybe AchievementUpdateResponseCurrentState)
aurCurrentState
  = lens _aurCurrentState
      (\ s a -> s{_aurCurrentState = a})

-- | Whether this achievement was newly unlocked (that is, whether the unlock
-- request for the achievement was the first for the player).
aurNewlyUnlocked :: Lens' AchievementUpdateResponse (Maybe Bool)
aurNewlyUnlocked
  = lens _aurNewlyUnlocked
      (\ s a -> s{_aurNewlyUnlocked = a})

-- | The current steps recorded for this achievement if it is incremental.
aurCurrentSteps :: Lens' AchievementUpdateResponse (Maybe Int32)
aurCurrentSteps
  = lens _aurCurrentSteps
      (\ s a -> s{_aurCurrentSteps = a})
      . mapping _Coerce

instance FromJSON AchievementUpdateResponse where
        parseJSON
          = withObject "AchievementUpdateResponse"
              (\ o ->
                 AchievementUpdateResponse' <$>
                   (o .:? "updateOccurred") <*> (o .:? "achievementId")
                     <*> (o .:? "kind")
                     <*> (o .:? "currentState")
                     <*> (o .:? "newlyUnlocked")
                     <*> (o .:? "currentSteps"))

instance ToJSON AchievementUpdateResponse where
        toJSON AchievementUpdateResponse'{..}
          = object
              (catMaybes
                 [("updateOccurred" .=) <$> _aurUpdateOccurred,
                  ("achievementId" .=) <$> _aurAchievementId,
                  ("kind" .=) <$> _aurKind,
                  ("currentState" .=) <$> _aurCurrentState,
                  ("newlyUnlocked" .=) <$> _aurNewlyUnlocked,
                  ("currentSteps" .=) <$> _aurCurrentSteps])

-- | The Leaderboard Entry resource.
--
-- /See:/ 'leaderboardEntry' smart constructor.
data LeaderboardEntry =
  LeaderboardEntry'
    { _leScoreTag :: !(Maybe Text)
    , _leWriteTimestampMillis :: !(Maybe (Textual Int64))
    , _leKind :: !(Maybe Text)
    , _leScoreValue :: !(Maybe (Textual Int64))
    , _leFormattedScore :: !(Maybe Text)
    , _leTimeSpan :: !(Maybe LeaderboardEntryTimeSpan)
    , _leFormattedScoreRank :: !(Maybe Text)
    , _lePlayer :: !(Maybe Player)
    , _leScoreRank :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leScoreTag'
--
-- * 'leWriteTimestampMillis'
--
-- * 'leKind'
--
-- * 'leScoreValue'
--
-- * 'leFormattedScore'
--
-- * 'leTimeSpan'
--
-- * 'leFormattedScoreRank'
--
-- * 'lePlayer'
--
-- * 'leScoreRank'
leaderboardEntry
    :: LeaderboardEntry
leaderboardEntry =
  LeaderboardEntry'
    { _leScoreTag = Nothing
    , _leWriteTimestampMillis = Nothing
    , _leKind = Nothing
    , _leScoreValue = Nothing
    , _leFormattedScore = Nothing
    , _leTimeSpan = Nothing
    , _leFormattedScoreRank = Nothing
    , _lePlayer = Nothing
    , _leScoreRank = Nothing
    }


-- | Additional information about the score. Values must contain no more than
-- 64 URI-safe characters as defined by section 2.3 of RFC 3986.
leScoreTag :: Lens' LeaderboardEntry (Maybe Text)
leScoreTag
  = lens _leScoreTag (\ s a -> s{_leScoreTag = a})

-- | The timestamp at which this score was recorded, in milliseconds since
-- the epoch in UTC.
leWriteTimestampMillis :: Lens' LeaderboardEntry (Maybe Int64)
leWriteTimestampMillis
  = lens _leWriteTimestampMillis
      (\ s a -> s{_leWriteTimestampMillis = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#leaderboardEntry\`.
leKind :: Lens' LeaderboardEntry (Maybe Text)
leKind = lens _leKind (\ s a -> s{_leKind = a})

-- | The numerical value of this score.
leScoreValue :: Lens' LeaderboardEntry (Maybe Int64)
leScoreValue
  = lens _leScoreValue (\ s a -> s{_leScoreValue = a})
      . mapping _Coerce

-- | The localized string for the numerical value of this score.
leFormattedScore :: Lens' LeaderboardEntry (Maybe Text)
leFormattedScore
  = lens _leFormattedScore
      (\ s a -> s{_leFormattedScore = a})

-- | The time span of this high score.
leTimeSpan :: Lens' LeaderboardEntry (Maybe LeaderboardEntryTimeSpan)
leTimeSpan
  = lens _leTimeSpan (\ s a -> s{_leTimeSpan = a})

-- | The localized string for the rank of this score for this leaderboard.
leFormattedScoreRank :: Lens' LeaderboardEntry (Maybe Text)
leFormattedScoreRank
  = lens _leFormattedScoreRank
      (\ s a -> s{_leFormattedScoreRank = a})

-- | The player who holds this score.
lePlayer :: Lens' LeaderboardEntry (Maybe Player)
lePlayer = lens _lePlayer (\ s a -> s{_lePlayer = a})

-- | The rank of this score for this leaderboard.
leScoreRank :: Lens' LeaderboardEntry (Maybe Int64)
leScoreRank
  = lens _leScoreRank (\ s a -> s{_leScoreRank = a}) .
      mapping _Coerce

instance FromJSON LeaderboardEntry where
        parseJSON
          = withObject "LeaderboardEntry"
              (\ o ->
                 LeaderboardEntry' <$>
                   (o .:? "scoreTag") <*> (o .:? "writeTimestampMillis")
                     <*> (o .:? "kind")
                     <*> (o .:? "scoreValue")
                     <*> (o .:? "formattedScore")
                     <*> (o .:? "timeSpan")
                     <*> (o .:? "formattedScoreRank")
                     <*> (o .:? "player")
                     <*> (o .:? "scoreRank"))

instance ToJSON LeaderboardEntry where
        toJSON LeaderboardEntry'{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _leScoreTag,
                  ("writeTimestampMillis" .=) <$>
                    _leWriteTimestampMillis,
                  ("kind" .=) <$> _leKind,
                  ("scoreValue" .=) <$> _leScoreValue,
                  ("formattedScore" .=) <$> _leFormattedScore,
                  ("timeSpan" .=) <$> _leTimeSpan,
                  ("formattedScoreRank" .=) <$> _leFormattedScoreRank,
                  ("player" .=) <$> _lePlayer,
                  ("scoreRank" .=) <$> _leScoreRank])

-- | A third party list snapshots response.
--
-- /See:/ 'snapshotListResponse' smart constructor.
data SnapshotListResponse =
  SnapshotListResponse'
    { _slrNextPageToken :: !(Maybe Text)
    , _slrKind :: !(Maybe Text)
    , _slrItems :: !(Maybe [Snapshot])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrNextPageToken'
--
-- * 'slrKind'
--
-- * 'slrItems'
snapshotListResponse
    :: SnapshotListResponse
snapshotListResponse =
  SnapshotListResponse'
    {_slrNextPageToken = Nothing, _slrKind = Nothing, _slrItems = Nothing}


-- | Token corresponding to the next page of results. If there are no more
-- results, the token is omitted.
slrNextPageToken :: Lens' SnapshotListResponse (Maybe Text)
slrNextPageToken
  = lens _slrNextPageToken
      (\ s a -> s{_slrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#snapshotListResponse\`.
slrKind :: Lens' SnapshotListResponse (Maybe Text)
slrKind = lens _slrKind (\ s a -> s{_slrKind = a})

-- | The snapshots.
slrItems :: Lens' SnapshotListResponse [Snapshot]
slrItems
  = lens _slrItems (\ s a -> s{_slrItems = a}) .
      _Default
      . _Coerce

instance FromJSON SnapshotListResponse where
        parseJSON
          = withObject "SnapshotListResponse"
              (\ o ->
                 SnapshotListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON SnapshotListResponse where
        toJSON SnapshotListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _slrNextPageToken,
                  ("kind" .=) <$> _slrKind,
                  ("items" .=) <$> _slrItems])

-- | 1P\/3P metadata about a user\'s level.
--
-- /See:/ 'playerLevel' smart constructor.
data PlayerLevel =
  PlayerLevel'
    { _plMaxExperiencePoints :: !(Maybe (Textual Int64))
    , _plKind :: !(Maybe Text)
    , _plMinExperiencePoints :: !(Maybe (Textual Int64))
    , _plLevel :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plMaxExperiencePoints'
--
-- * 'plKind'
--
-- * 'plMinExperiencePoints'
--
-- * 'plLevel'
playerLevel
    :: PlayerLevel
playerLevel =
  PlayerLevel'
    { _plMaxExperiencePoints = Nothing
    , _plKind = Nothing
    , _plMinExperiencePoints = Nothing
    , _plLevel = Nothing
    }


-- | The maximum experience points for this level.
plMaxExperiencePoints :: Lens' PlayerLevel (Maybe Int64)
plMaxExperiencePoints
  = lens _plMaxExperiencePoints
      (\ s a -> s{_plMaxExperiencePoints = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerLevel\`.
plKind :: Lens' PlayerLevel (Maybe Text)
plKind = lens _plKind (\ s a -> s{_plKind = a})

-- | The minimum experience points for this level.
plMinExperiencePoints :: Lens' PlayerLevel (Maybe Int64)
plMinExperiencePoints
  = lens _plMinExperiencePoints
      (\ s a -> s{_plMinExperiencePoints = a})
      . mapping _Coerce

-- | The level for the user.
plLevel :: Lens' PlayerLevel (Maybe Int32)
plLevel
  = lens _plLevel (\ s a -> s{_plLevel = a}) .
      mapping _Coerce

instance FromJSON PlayerLevel where
        parseJSON
          = withObject "PlayerLevel"
              (\ o ->
                 PlayerLevel' <$>
                   (o .:? "maxExperiencePoints") <*> (o .:? "kind") <*>
                     (o .:? "minExperiencePoints")
                     <*> (o .:? "level"))

instance ToJSON PlayerLevel where
        toJSON PlayerLevel'{..}
          = object
              (catMaybes
                 [("maxExperiencePoints" .=) <$>
                    _plMaxExperiencePoints,
                  ("kind" .=) <$> _plKind,
                  ("minExperiencePoints" .=) <$>
                    _plMinExperiencePoints,
                  ("level" .=) <$> _plLevel])

-- | Response message for UpdateMultipleAchievements rpc.
--
-- /See:/ 'achievementUpdateMultipleResponse' smart constructor.
data AchievementUpdateMultipleResponse =
  AchievementUpdateMultipleResponse'
    { _aumrKind :: !(Maybe Text)
    , _aumrUpdatedAchievements :: !(Maybe [AchievementUpdateResponse])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementUpdateMultipleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aumrKind'
--
-- * 'aumrUpdatedAchievements'
achievementUpdateMultipleResponse
    :: AchievementUpdateMultipleResponse
achievementUpdateMultipleResponse =
  AchievementUpdateMultipleResponse'
    {_aumrKind = Nothing, _aumrUpdatedAchievements = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementUpdateMultipleResponse\`.
aumrKind :: Lens' AchievementUpdateMultipleResponse (Maybe Text)
aumrKind = lens _aumrKind (\ s a -> s{_aumrKind = a})

-- | The updated state of the achievements.
aumrUpdatedAchievements :: Lens' AchievementUpdateMultipleResponse [AchievementUpdateResponse]
aumrUpdatedAchievements
  = lens _aumrUpdatedAchievements
      (\ s a -> s{_aumrUpdatedAchievements = a})
      . _Default
      . _Coerce

instance FromJSON AchievementUpdateMultipleResponse
         where
        parseJSON
          = withObject "AchievementUpdateMultipleResponse"
              (\ o ->
                 AchievementUpdateMultipleResponse' <$>
                   (o .:? "kind") <*>
                     (o .:? "updatedAchievements" .!= mempty))

instance ToJSON AchievementUpdateMultipleResponse
         where
        toJSON AchievementUpdateMultipleResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _aumrKind,
                  ("updatedAchievements" .=) <$>
                    _aumrUpdatedAchievements])

-- | A ListDefinitions response.
--
-- /See:/ 'eventDefinitionListResponse' smart constructor.
data EventDefinitionListResponse =
  EventDefinitionListResponse'
    { _edlrNextPageToken :: !(Maybe Text)
    , _edlrKind :: !(Maybe Text)
    , _edlrItems :: !(Maybe [EventDefinition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventDefinitionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edlrNextPageToken'
--
-- * 'edlrKind'
--
-- * 'edlrItems'
eventDefinitionListResponse
    :: EventDefinitionListResponse
eventDefinitionListResponse =
  EventDefinitionListResponse'
    {_edlrNextPageToken = Nothing, _edlrKind = Nothing, _edlrItems = Nothing}


-- | The pagination token for the next page of results.
edlrNextPageToken :: Lens' EventDefinitionListResponse (Maybe Text)
edlrNextPageToken
  = lens _edlrNextPageToken
      (\ s a -> s{_edlrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventDefinitionListResponse\`.
edlrKind :: Lens' EventDefinitionListResponse (Maybe Text)
edlrKind = lens _edlrKind (\ s a -> s{_edlrKind = a})

-- | The event definitions.
edlrItems :: Lens' EventDefinitionListResponse [EventDefinition]
edlrItems
  = lens _edlrItems (\ s a -> s{_edlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON EventDefinitionListResponse where
        parseJSON
          = withObject "EventDefinitionListResponse"
              (\ o ->
                 EventDefinitionListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON EventDefinitionListResponse where
        toJSON EventDefinitionListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _edlrNextPageToken,
                  ("kind" .=) <$> _edlrKind,
                  ("items" .=) <$> _edlrItems])

-- | Data related to individual game categories.
--
-- /See:/ 'category' smart constructor.
data Category =
  Category'
    { _cKind :: !(Maybe Text)
    , _cCategory :: !(Maybe Text)
    , _cExperiencePoints :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Category' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cKind'
--
-- * 'cCategory'
--
-- * 'cExperiencePoints'
category
    :: Category
category =
  Category'
    {_cKind = Nothing, _cCategory = Nothing, _cExperiencePoints = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#category\`.
cKind :: Lens' Category (Maybe Text)
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The category name.
cCategory :: Lens' Category (Maybe Text)
cCategory
  = lens _cCategory (\ s a -> s{_cCategory = a})

-- | Experience points earned in this category.
cExperiencePoints :: Lens' Category (Maybe Int64)
cExperiencePoints
  = lens _cExperiencePoints
      (\ s a -> s{_cExperiencePoints = a})
      . mapping _Coerce

instance FromJSON Category where
        parseJSON
          = withObject "Category"
              (\ o ->
                 Category' <$>
                   (o .:? "kind") <*> (o .:? "category") <*>
                     (o .:? "experiencePoints"))

instance ToJSON Category where
        toJSON Category'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _cKind,
                  ("category" .=) <$> _cCategory,
                  ("experiencePoints" .=) <$> _cExperiencePoints])

-- | The Android instance details resource.
--
-- /See:/ 'instanceAndroidDetails' smart constructor.
data InstanceAndroidDetails =
  InstanceAndroidDetails'
    { _iadPackageName :: !(Maybe Text)
    , _iadPreferred :: !(Maybe Bool)
    , _iadKind :: !(Maybe Text)
    , _iadEnablePiracyCheck :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceAndroidDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iadPackageName'
--
-- * 'iadPreferred'
--
-- * 'iadKind'
--
-- * 'iadEnablePiracyCheck'
instanceAndroidDetails
    :: InstanceAndroidDetails
instanceAndroidDetails =
  InstanceAndroidDetails'
    { _iadPackageName = Nothing
    , _iadPreferred = Nothing
    , _iadKind = Nothing
    , _iadEnablePiracyCheck = Nothing
    }


-- | Android package name which maps to Google Play URL.
iadPackageName :: Lens' InstanceAndroidDetails (Maybe Text)
iadPackageName
  = lens _iadPackageName
      (\ s a -> s{_iadPackageName = a})

-- | Indicates that this instance is the default for new installations.
iadPreferred :: Lens' InstanceAndroidDetails (Maybe Bool)
iadPreferred
  = lens _iadPreferred (\ s a -> s{_iadPreferred = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#instanceAndroidDetails\`.
iadKind :: Lens' InstanceAndroidDetails (Maybe Text)
iadKind = lens _iadKind (\ s a -> s{_iadKind = a})

-- | Flag indicating whether the anti-piracy check is enabled.
iadEnablePiracyCheck :: Lens' InstanceAndroidDetails (Maybe Bool)
iadEnablePiracyCheck
  = lens _iadEnablePiracyCheck
      (\ s a -> s{_iadEnablePiracyCheck = a})

instance FromJSON InstanceAndroidDetails where
        parseJSON
          = withObject "InstanceAndroidDetails"
              (\ o ->
                 InstanceAndroidDetails' <$>
                   (o .:? "packageName") <*> (o .:? "preferred") <*>
                     (o .:? "kind")
                     <*> (o .:? "enablePiracyCheck"))

instance ToJSON InstanceAndroidDetails where
        toJSON InstanceAndroidDetails'{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _iadPackageName,
                  ("preferred" .=) <$> _iadPreferred,
                  ("kind" .=) <$> _iadKind,
                  ("enablePiracyCheck" .=) <$> _iadEnablePiracyCheck])

-- | A list of achievement definition objects.
--
-- /See:/ 'achievementDefinitionsListResponse' smart constructor.
data AchievementDefinitionsListResponse =
  AchievementDefinitionsListResponse'
    { _adlrNextPageToken :: !(Maybe Text)
    , _adlrKind :: !(Maybe Text)
    , _adlrItems :: !(Maybe [AchievementDefinition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementDefinitionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adlrNextPageToken'
--
-- * 'adlrKind'
--
-- * 'adlrItems'
achievementDefinitionsListResponse
    :: AchievementDefinitionsListResponse
achievementDefinitionsListResponse =
  AchievementDefinitionsListResponse'
    {_adlrNextPageToken = Nothing, _adlrKind = Nothing, _adlrItems = Nothing}


-- | Token corresponding to the next page of results.
adlrNextPageToken :: Lens' AchievementDefinitionsListResponse (Maybe Text)
adlrNextPageToken
  = lens _adlrNextPageToken
      (\ s a -> s{_adlrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementDefinitionsListResponse\`.
adlrKind :: Lens' AchievementDefinitionsListResponse (Maybe Text)
adlrKind = lens _adlrKind (\ s a -> s{_adlrKind = a})

-- | The achievement definitions.
adlrItems :: Lens' AchievementDefinitionsListResponse [AchievementDefinition]
adlrItems
  = lens _adlrItems (\ s a -> s{_adlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON AchievementDefinitionsListResponse
         where
        parseJSON
          = withObject "AchievementDefinitionsListResponse"
              (\ o ->
                 AchievementDefinitionsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON AchievementDefinitionsListResponse
         where
        toJSON AchievementDefinitionsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _adlrNextPageToken,
                  ("kind" .=) <$> _adlrKind,
                  ("items" .=) <$> _adlrItems])

-- | A list of leaderboard entry resources.
--
-- /See:/ 'playerScoreResponse' smart constructor.
data PlayerScoreResponse =
  PlayerScoreResponse'
    { _psrScoreTag :: !(Maybe Text)
    , _psrKind :: !(Maybe Text)
    , _psrFormattedScore :: !(Maybe Text)
    , _psrLeaderboardId :: !(Maybe Text)
    , _psrBeatenScoreTimeSpans :: !(Maybe [PlayerScoreResponseBeatenScoreTimeSpansItem])
    , _psrUnbeatenScores :: !(Maybe [PlayerScore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerScoreResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrScoreTag'
--
-- * 'psrKind'
--
-- * 'psrFormattedScore'
--
-- * 'psrLeaderboardId'
--
-- * 'psrBeatenScoreTimeSpans'
--
-- * 'psrUnbeatenScores'
playerScoreResponse
    :: PlayerScoreResponse
playerScoreResponse =
  PlayerScoreResponse'
    { _psrScoreTag = Nothing
    , _psrKind = Nothing
    , _psrFormattedScore = Nothing
    , _psrLeaderboardId = Nothing
    , _psrBeatenScoreTimeSpans = Nothing
    , _psrUnbeatenScores = Nothing
    }


-- | Additional information about this score. Values will contain no more
-- than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
psrScoreTag :: Lens' PlayerScoreResponse (Maybe Text)
psrScoreTag
  = lens _psrScoreTag (\ s a -> s{_psrScoreTag = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerScoreResponse\`.
psrKind :: Lens' PlayerScoreResponse (Maybe Text)
psrKind = lens _psrKind (\ s a -> s{_psrKind = a})

-- | The formatted value of the submitted score.
psrFormattedScore :: Lens' PlayerScoreResponse (Maybe Text)
psrFormattedScore
  = lens _psrFormattedScore
      (\ s a -> s{_psrFormattedScore = a})

-- | The leaderboard ID that this score was submitted to.
psrLeaderboardId :: Lens' PlayerScoreResponse (Maybe Text)
psrLeaderboardId
  = lens _psrLeaderboardId
      (\ s a -> s{_psrLeaderboardId = a})

-- | The time spans where the submitted score is better than the existing
-- score for that time span.
psrBeatenScoreTimeSpans :: Lens' PlayerScoreResponse [PlayerScoreResponseBeatenScoreTimeSpansItem]
psrBeatenScoreTimeSpans
  = lens _psrBeatenScoreTimeSpans
      (\ s a -> s{_psrBeatenScoreTimeSpans = a})
      . _Default
      . _Coerce

-- | The scores in time spans that have not been beaten. As an example, the
-- submitted score may be better than the player\'s \`DAILY\` score, but
-- not better than the player\'s scores for the \`WEEKLY\` or \`ALL_TIME\`
-- time spans.
psrUnbeatenScores :: Lens' PlayerScoreResponse [PlayerScore]
psrUnbeatenScores
  = lens _psrUnbeatenScores
      (\ s a -> s{_psrUnbeatenScores = a})
      . _Default
      . _Coerce

instance FromJSON PlayerScoreResponse where
        parseJSON
          = withObject "PlayerScoreResponse"
              (\ o ->
                 PlayerScoreResponse' <$>
                   (o .:? "scoreTag") <*> (o .:? "kind") <*>
                     (o .:? "formattedScore")
                     <*> (o .:? "leaderboardId")
                     <*> (o .:? "beatenScoreTimeSpans" .!= mempty)
                     <*> (o .:? "unbeatenScores" .!= mempty))

instance ToJSON PlayerScoreResponse where
        toJSON PlayerScoreResponse'{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _psrScoreTag,
                  ("kind" .=) <$> _psrKind,
                  ("formattedScore" .=) <$> _psrFormattedScore,
                  ("leaderboardId" .=) <$> _psrLeaderboardId,
                  ("beatenScoreTimeSpans" .=) <$>
                    _psrBeatenScoreTimeSpans,
                  ("unbeatenScores" .=) <$> _psrUnbeatenScores])

-- | A list of leaderboard objects.
--
-- /See:/ 'leaderboardListResponse' smart constructor.
data LeaderboardListResponse =
  LeaderboardListResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrKind :: !(Maybe Text)
    , _llrItems :: !(Maybe [Leaderboard])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrKind'
--
-- * 'llrItems'
leaderboardListResponse
    :: LeaderboardListResponse
leaderboardListResponse =
  LeaderboardListResponse'
    {_llrNextPageToken = Nothing, _llrKind = Nothing, _llrItems = Nothing}


-- | Token corresponding to the next page of results.
llrNextPageToken :: Lens' LeaderboardListResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#leaderboardListResponse\`.
llrKind :: Lens' LeaderboardListResponse (Maybe Text)
llrKind = lens _llrKind (\ s a -> s{_llrKind = a})

-- | The leaderboards.
llrItems :: Lens' LeaderboardListResponse [Leaderboard]
llrItems
  = lens _llrItems (\ s a -> s{_llrItems = a}) .
      _Default
      . _Coerce

instance FromJSON LeaderboardListResponse where
        parseJSON
          = withObject "LeaderboardListResponse"
              (\ o ->
                 LeaderboardListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON LeaderboardListResponse where
        toJSON LeaderboardListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("kind" .=) <$> _llrKind,
                  ("items" .=) <$> _llrItems])

-- | A player score.
--
-- /See:/ 'playerScore' smart constructor.
data PlayerScore =
  PlayerScore'
    { _psScoreTag :: !(Maybe Text)
    , _psScore :: !(Maybe (Textual Int64))
    , _psKind :: !(Maybe Text)
    , _psFormattedScore :: !(Maybe Text)
    , _psTimeSpan :: !(Maybe PlayerScoreTimeSpan)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerScore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psScoreTag'
--
-- * 'psScore'
--
-- * 'psKind'
--
-- * 'psFormattedScore'
--
-- * 'psTimeSpan'
playerScore
    :: PlayerScore
playerScore =
  PlayerScore'
    { _psScoreTag = Nothing
    , _psScore = Nothing
    , _psKind = Nothing
    , _psFormattedScore = Nothing
    , _psTimeSpan = Nothing
    }


-- | Additional information about this score. Values will contain no more
-- than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
psScoreTag :: Lens' PlayerScore (Maybe Text)
psScoreTag
  = lens _psScoreTag (\ s a -> s{_psScoreTag = a})

-- | The numerical value for this player score.
psScore :: Lens' PlayerScore (Maybe Int64)
psScore
  = lens _psScore (\ s a -> s{_psScore = a}) .
      mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerScore\`.
psKind :: Lens' PlayerScore (Maybe Text)
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | The formatted score for this player score.
psFormattedScore :: Lens' PlayerScore (Maybe Text)
psFormattedScore
  = lens _psFormattedScore
      (\ s a -> s{_psFormattedScore = a})

-- | The time span for this player score.
psTimeSpan :: Lens' PlayerScore (Maybe PlayerScoreTimeSpan)
psTimeSpan
  = lens _psTimeSpan (\ s a -> s{_psTimeSpan = a})

instance FromJSON PlayerScore where
        parseJSON
          = withObject "PlayerScore"
              (\ o ->
                 PlayerScore' <$>
                   (o .:? "scoreTag") <*> (o .:? "score") <*>
                     (o .:? "kind")
                     <*> (o .:? "formattedScore")
                     <*> (o .:? "timeSpan"))

instance ToJSON PlayerScore where
        toJSON PlayerScore'{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _psScoreTag,
                  ("score" .=) <$> _psScore, ("kind" .=) <$> _psKind,
                  ("formattedScore" .=) <$> _psFormattedScore,
                  ("timeSpan" .=) <$> _psTimeSpan])

-- | An image of a snapshot.
--
-- /See:/ 'snapshotImage' smart constructor.
data SnapshotImage =
  SnapshotImage'
    { _siHeight :: !(Maybe (Textual Int32))
    , _siKind :: !(Maybe Text)
    , _siURL :: !(Maybe Text)
    , _siMimeType :: !(Maybe Text)
    , _siWidth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siHeight'
--
-- * 'siKind'
--
-- * 'siURL'
--
-- * 'siMimeType'
--
-- * 'siWidth'
snapshotImage
    :: SnapshotImage
snapshotImage =
  SnapshotImage'
    { _siHeight = Nothing
    , _siKind = Nothing
    , _siURL = Nothing
    , _siMimeType = Nothing
    , _siWidth = Nothing
    }


-- | The height of the image.
siHeight :: Lens' SnapshotImage (Maybe Int32)
siHeight
  = lens _siHeight (\ s a -> s{_siHeight = a}) .
      mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#snapshotImage\`.
siKind :: Lens' SnapshotImage (Maybe Text)
siKind = lens _siKind (\ s a -> s{_siKind = a})

-- | The URL of the image. This URL may be invalidated at any time and should
-- not be cached.
siURL :: Lens' SnapshotImage (Maybe Text)
siURL = lens _siURL (\ s a -> s{_siURL = a})

-- | The MIME type of the image.
siMimeType :: Lens' SnapshotImage (Maybe Text)
siMimeType
  = lens _siMimeType (\ s a -> s{_siMimeType = a})

-- | The width of the image.
siWidth :: Lens' SnapshotImage (Maybe Int32)
siWidth
  = lens _siWidth (\ s a -> s{_siWidth = a}) .
      mapping _Coerce

instance FromJSON SnapshotImage where
        parseJSON
          = withObject "SnapshotImage"
              (\ o ->
                 SnapshotImage' <$>
                   (o .:? "height") <*> (o .:? "kind") <*> (o .:? "url")
                     <*> (o .:? "mime_type")
                     <*> (o .:? "width"))

instance ToJSON SnapshotImage where
        toJSON SnapshotImage'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _siHeight,
                  ("kind" .=) <$> _siKind, ("url" .=) <$> _siURL,
                  ("mime_type" .=) <$> _siMimeType,
                  ("width" .=) <$> _siWidth])

-- | A list of player leaderboard scores.
--
-- /See:/ 'playerLeaderboardScoreListResponse' smart constructor.
data PlayerLeaderboardScoreListResponse =
  PlayerLeaderboardScoreListResponse'
    { _plslrNextPageToken :: !(Maybe Text)
    , _plslrKind :: !(Maybe Text)
    , _plslrItems :: !(Maybe [PlayerLeaderboardScore])
    , _plslrPlayer :: !(Maybe Player)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerLeaderboardScoreListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plslrNextPageToken'
--
-- * 'plslrKind'
--
-- * 'plslrItems'
--
-- * 'plslrPlayer'
playerLeaderboardScoreListResponse
    :: PlayerLeaderboardScoreListResponse
playerLeaderboardScoreListResponse =
  PlayerLeaderboardScoreListResponse'
    { _plslrNextPageToken = Nothing
    , _plslrKind = Nothing
    , _plslrItems = Nothing
    , _plslrPlayer = Nothing
    }


-- | The pagination token for the next page of results.
plslrNextPageToken :: Lens' PlayerLeaderboardScoreListResponse (Maybe Text)
plslrNextPageToken
  = lens _plslrNextPageToken
      (\ s a -> s{_plslrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerLeaderboardScoreListResponse\`.
plslrKind :: Lens' PlayerLeaderboardScoreListResponse (Maybe Text)
plslrKind
  = lens _plslrKind (\ s a -> s{_plslrKind = a})

-- | The leaderboard scores.
plslrItems :: Lens' PlayerLeaderboardScoreListResponse [PlayerLeaderboardScore]
plslrItems
  = lens _plslrItems (\ s a -> s{_plslrItems = a}) .
      _Default
      . _Coerce

-- | The Player resources for the owner of this score.
plslrPlayer :: Lens' PlayerLeaderboardScoreListResponse (Maybe Player)
plslrPlayer
  = lens _plslrPlayer (\ s a -> s{_plslrPlayer = a})

instance FromJSON PlayerLeaderboardScoreListResponse
         where
        parseJSON
          = withObject "PlayerLeaderboardScoreListResponse"
              (\ o ->
                 PlayerLeaderboardScoreListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "player"))

instance ToJSON PlayerLeaderboardScoreListResponse
         where
        toJSON PlayerLeaderboardScoreListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plslrNextPageToken,
                  ("kind" .=) <$> _plslrKind,
                  ("items" .=) <$> _plslrItems,
                  ("player" .=) <$> _plslrPlayer])

-- | The iOS details resource.
--
-- /See:/ 'instanceIosDetails' smart constructor.
data InstanceIosDetails =
  InstanceIosDetails'
    { _iidItunesAppId :: !(Maybe Text)
    , _iidPreferredForIPad :: !(Maybe Bool)
    , _iidSupportIPhone :: !(Maybe Bool)
    , _iidKind :: !(Maybe Text)
    , _iidSupportIPad :: !(Maybe Bool)
    , _iidPreferredForIPhone :: !(Maybe Bool)
    , _iidBundleIdentifier :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceIosDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iidItunesAppId'
--
-- * 'iidPreferredForIPad'
--
-- * 'iidSupportIPhone'
--
-- * 'iidKind'
--
-- * 'iidSupportIPad'
--
-- * 'iidPreferredForIPhone'
--
-- * 'iidBundleIdentifier'
instanceIosDetails
    :: InstanceIosDetails
instanceIosDetails =
  InstanceIosDetails'
    { _iidItunesAppId = Nothing
    , _iidPreferredForIPad = Nothing
    , _iidSupportIPhone = Nothing
    , _iidKind = Nothing
    , _iidSupportIPad = Nothing
    , _iidPreferredForIPhone = Nothing
    , _iidBundleIdentifier = Nothing
    }


-- | iTunes App ID.
iidItunesAppId :: Lens' InstanceIosDetails (Maybe Text)
iidItunesAppId
  = lens _iidItunesAppId
      (\ s a -> s{_iidItunesAppId = a})

-- | Indicates that this instance is the default for new installations on
-- iPad devices.
iidPreferredForIPad :: Lens' InstanceIosDetails (Maybe Bool)
iidPreferredForIPad
  = lens _iidPreferredForIPad
      (\ s a -> s{_iidPreferredForIPad = a})

-- | Flag to indicate if this instance supports iPhone.
iidSupportIPhone :: Lens' InstanceIosDetails (Maybe Bool)
iidSupportIPhone
  = lens _iidSupportIPhone
      (\ s a -> s{_iidSupportIPhone = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#instanceIosDetails\`.
iidKind :: Lens' InstanceIosDetails (Maybe Text)
iidKind = lens _iidKind (\ s a -> s{_iidKind = a})

-- | Flag to indicate if this instance supports iPad.
iidSupportIPad :: Lens' InstanceIosDetails (Maybe Bool)
iidSupportIPad
  = lens _iidSupportIPad
      (\ s a -> s{_iidSupportIPad = a})

-- | Indicates that this instance is the default for new installations on
-- iPhone devices.
iidPreferredForIPhone :: Lens' InstanceIosDetails (Maybe Bool)
iidPreferredForIPhone
  = lens _iidPreferredForIPhone
      (\ s a -> s{_iidPreferredForIPhone = a})

-- | Bundle identifier.
iidBundleIdentifier :: Lens' InstanceIosDetails (Maybe Text)
iidBundleIdentifier
  = lens _iidBundleIdentifier
      (\ s a -> s{_iidBundleIdentifier = a})

instance FromJSON InstanceIosDetails where
        parseJSON
          = withObject "InstanceIosDetails"
              (\ o ->
                 InstanceIosDetails' <$>
                   (o .:? "itunesAppId") <*> (o .:? "preferredForIpad")
                     <*> (o .:? "supportIphone")
                     <*> (o .:? "kind")
                     <*> (o .:? "supportIpad")
                     <*> (o .:? "preferredForIphone")
                     <*> (o .:? "bundleIdentifier"))

instance ToJSON InstanceIosDetails where
        toJSON InstanceIosDetails'{..}
          = object
              (catMaybes
                 [("itunesAppId" .=) <$> _iidItunesAppId,
                  ("preferredForIpad" .=) <$> _iidPreferredForIPad,
                  ("supportIphone" .=) <$> _iidSupportIPhone,
                  ("kind" .=) <$> _iidKind,
                  ("supportIpad" .=) <$> _iidSupportIPad,
                  ("preferredForIphone" .=) <$> _iidPreferredForIPhone,
                  ("bundleIdentifier" .=) <$> _iidBundleIdentifier])

-- | An event period update resource.
--
-- /See:/ 'eventUpdateResponse' smart constructor.
data EventUpdateResponse =
  EventUpdateResponse'
    { _eurPlayerEvents :: !(Maybe [PlayerEvent])
    , _eurBatchFailures :: !(Maybe [EventBatchRecordFailure])
    , _eurEventFailures :: !(Maybe [EventRecordFailure])
    , _eurKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eurPlayerEvents'
--
-- * 'eurBatchFailures'
--
-- * 'eurEventFailures'
--
-- * 'eurKind'
eventUpdateResponse
    :: EventUpdateResponse
eventUpdateResponse =
  EventUpdateResponse'
    { _eurPlayerEvents = Nothing
    , _eurBatchFailures = Nothing
    , _eurEventFailures = Nothing
    , _eurKind = Nothing
    }


-- | The current status of any updated events
eurPlayerEvents :: Lens' EventUpdateResponse [PlayerEvent]
eurPlayerEvents
  = lens _eurPlayerEvents
      (\ s a -> s{_eurPlayerEvents = a})
      . _Default
      . _Coerce

-- | Any batch-wide failures which occurred applying updates.
eurBatchFailures :: Lens' EventUpdateResponse [EventBatchRecordFailure]
eurBatchFailures
  = lens _eurBatchFailures
      (\ s a -> s{_eurBatchFailures = a})
      . _Default
      . _Coerce

-- | Any failures updating a particular event.
eurEventFailures :: Lens' EventUpdateResponse [EventRecordFailure]
eurEventFailures
  = lens _eurEventFailures
      (\ s a -> s{_eurEventFailures = a})
      . _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventUpdateResponse\`.
eurKind :: Lens' EventUpdateResponse (Maybe Text)
eurKind = lens _eurKind (\ s a -> s{_eurKind = a})

instance FromJSON EventUpdateResponse where
        parseJSON
          = withObject "EventUpdateResponse"
              (\ o ->
                 EventUpdateResponse' <$>
                   (o .:? "playerEvents" .!= mempty) <*>
                     (o .:? "batchFailures" .!= mempty)
                     <*> (o .:? "eventFailures" .!= mempty)
                     <*> (o .:? "kind"))

instance ToJSON EventUpdateResponse where
        toJSON EventUpdateResponse'{..}
          = object
              (catMaybes
                 [("playerEvents" .=) <$> _eurPlayerEvents,
                  ("batchFailures" .=) <$> _eurBatchFailures,
                  ("eventFailures" .=) <$> _eurEventFailures,
                  ("kind" .=) <$> _eurKind])

-- | A third party checking a revision response.
--
-- /See:/ 'revisionCheckResponse' smart constructor.
data RevisionCheckResponse =
  RevisionCheckResponse'
    { _rcrAPIVersion :: !(Maybe Text)
    , _rcrKind :: !(Maybe Text)
    , _rcrRevisionStatus :: !(Maybe RevisionCheckResponseRevisionStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RevisionCheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrAPIVersion'
--
-- * 'rcrKind'
--
-- * 'rcrRevisionStatus'
revisionCheckResponse
    :: RevisionCheckResponse
revisionCheckResponse =
  RevisionCheckResponse'
    {_rcrAPIVersion = Nothing, _rcrKind = Nothing, _rcrRevisionStatus = Nothing}


-- | The version of the API this client revision should use when calling API
-- methods.
rcrAPIVersion :: Lens' RevisionCheckResponse (Maybe Text)
rcrAPIVersion
  = lens _rcrAPIVersion
      (\ s a -> s{_rcrAPIVersion = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#revisionCheckResponse\`.
rcrKind :: Lens' RevisionCheckResponse (Maybe Text)
rcrKind = lens _rcrKind (\ s a -> s{_rcrKind = a})

-- | The result of the revision check.
rcrRevisionStatus :: Lens' RevisionCheckResponse (Maybe RevisionCheckResponseRevisionStatus)
rcrRevisionStatus
  = lens _rcrRevisionStatus
      (\ s a -> s{_rcrRevisionStatus = a})

instance FromJSON RevisionCheckResponse where
        parseJSON
          = withObject "RevisionCheckResponse"
              (\ o ->
                 RevisionCheckResponse' <$>
                   (o .:? "apiVersion") <*> (o .:? "kind") <*>
                     (o .:? "revisionStatus"))

instance ToJSON RevisionCheckResponse where
        toJSON RevisionCheckResponse'{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _rcrAPIVersion,
                  ("kind" .=) <$> _rcrKind,
                  ("revisionStatus" .=) <$> _rcrRevisionStatus])

-- | The Leaderboard resource.
--
-- /See:/ 'leaderboard' smart constructor.
data Leaderboard =
  Leaderboard'
    { _lKind :: !(Maybe Text)
    , _lIsIconURLDefault :: !(Maybe Bool)
    , _lName :: !(Maybe Text)
    , _lId :: !(Maybe Text)
    , _lIconURL :: !(Maybe Text)
    , _lOrder :: !(Maybe LeaderboardOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Leaderboard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lKind'
--
-- * 'lIsIconURLDefault'
--
-- * 'lName'
--
-- * 'lId'
--
-- * 'lIconURL'
--
-- * 'lOrder'
leaderboard
    :: Leaderboard
leaderboard =
  Leaderboard'
    { _lKind = Nothing
    , _lIsIconURLDefault = Nothing
    , _lName = Nothing
    , _lId = Nothing
    , _lIconURL = Nothing
    , _lOrder = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#leaderboard\`.
lKind :: Lens' Leaderboard (Maybe Text)
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | Indicates whether the icon image being returned is a default image, or
-- is game-provided.
lIsIconURLDefault :: Lens' Leaderboard (Maybe Bool)
lIsIconURLDefault
  = lens _lIsIconURLDefault
      (\ s a -> s{_lIsIconURLDefault = a})

-- | The name of the leaderboard.
lName :: Lens' Leaderboard (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | The leaderboard ID.
lId :: Lens' Leaderboard (Maybe Text)
lId = lens _lId (\ s a -> s{_lId = a})

-- | The icon for the leaderboard.
lIconURL :: Lens' Leaderboard (Maybe Text)
lIconURL = lens _lIconURL (\ s a -> s{_lIconURL = a})

-- | How scores are ordered.
lOrder :: Lens' Leaderboard (Maybe LeaderboardOrder)
lOrder = lens _lOrder (\ s a -> s{_lOrder = a})

instance FromJSON Leaderboard where
        parseJSON
          = withObject "Leaderboard"
              (\ o ->
                 Leaderboard' <$>
                   (o .:? "kind") <*> (o .:? "isIconUrlDefault") <*>
                     (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "order"))

instance ToJSON Leaderboard where
        toJSON Leaderboard'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _lKind,
                  ("isIconUrlDefault" .=) <$> _lIsIconURLDefault,
                  ("name" .=) <$> _lName, ("id" .=) <$> _lId,
                  ("iconUrl" .=) <$> _lIconURL,
                  ("order" .=) <$> _lOrder])

-- | The metagame config resource
--
-- /See:/ 'metagameConfig' smart constructor.
data MetagameConfig =
  MetagameConfig'
    { _mcKind :: !(Maybe Text)
    , _mcCurrentVersion :: !(Maybe (Textual Int32))
    , _mcPlayerLevels :: !(Maybe [PlayerLevel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetagameConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcKind'
--
-- * 'mcCurrentVersion'
--
-- * 'mcPlayerLevels'
metagameConfig
    :: MetagameConfig
metagameConfig =
  MetagameConfig'
    {_mcKind = Nothing, _mcCurrentVersion = Nothing, _mcPlayerLevels = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#metagameConfig\`.
mcKind :: Lens' MetagameConfig (Maybe Text)
mcKind = lens _mcKind (\ s a -> s{_mcKind = a})

-- | Current version of the metagame configuration data. When this data is
-- updated, the version number will be increased by one.
mcCurrentVersion :: Lens' MetagameConfig (Maybe Int32)
mcCurrentVersion
  = lens _mcCurrentVersion
      (\ s a -> s{_mcCurrentVersion = a})
      . mapping _Coerce

-- | The list of player levels.
mcPlayerLevels :: Lens' MetagameConfig [PlayerLevel]
mcPlayerLevels
  = lens _mcPlayerLevels
      (\ s a -> s{_mcPlayerLevels = a})
      . _Default
      . _Coerce

instance FromJSON MetagameConfig where
        parseJSON
          = withObject "MetagameConfig"
              (\ o ->
                 MetagameConfig' <$>
                   (o .:? "kind") <*> (o .:? "currentVersion") <*>
                     (o .:? "playerLevels" .!= mempty))

instance ToJSON MetagameConfig where
        toJSON MetagameConfig'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _mcKind,
                  ("currentVersion" .=) <$> _mcCurrentVersion,
                  ("playerLevels" .=) <$> _mcPlayerLevels])

-- | A third party list metagame categories response.
--
-- /See:/ 'categoryListResponse' smart constructor.
data CategoryListResponse =
  CategoryListResponse'
    { _clrNextPageToken :: !(Maybe Text)
    , _clrKind :: !(Maybe Text)
    , _clrItems :: !(Maybe [Category])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CategoryListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrNextPageToken'
--
-- * 'clrKind'
--
-- * 'clrItems'
categoryListResponse
    :: CategoryListResponse
categoryListResponse =
  CategoryListResponse'
    {_clrNextPageToken = Nothing, _clrKind = Nothing, _clrItems = Nothing}


-- | Token corresponding to the next page of results.
clrNextPageToken :: Lens' CategoryListResponse (Maybe Text)
clrNextPageToken
  = lens _clrNextPageToken
      (\ s a -> s{_clrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#categoryListResponse\`.
clrKind :: Lens' CategoryListResponse (Maybe Text)
clrKind = lens _clrKind (\ s a -> s{_clrKind = a})

-- | The list of categories with usage data.
clrItems :: Lens' CategoryListResponse [Category]
clrItems
  = lens _clrItems (\ s a -> s{_clrItems = a}) .
      _Default
      . _Coerce

instance FromJSON CategoryListResponse where
        parseJSON
          = withObject "CategoryListResponse"
              (\ o ->
                 CategoryListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON CategoryListResponse where
        toJSON CategoryListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _clrNextPageToken,
                  ("kind" .=) <$> _clrKind,
                  ("items" .=) <$> _clrItems])

-- | An event definition resource.
--
-- /See:/ 'eventDefinition' smart constructor.
data EventDefinition =
  EventDefinition'
    { _edIsDefaultImageURL :: !(Maybe Bool)
    , _edKind :: !(Maybe Text)
    , _edVisibility :: !(Maybe EventDefinitionVisibility)
    , _edImageURL :: !(Maybe Text)
    , _edDisplayName :: !(Maybe Text)
    , _edId :: !(Maybe Text)
    , _edChildEvents :: !(Maybe [EventChild])
    , _edDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edIsDefaultImageURL'
--
-- * 'edKind'
--
-- * 'edVisibility'
--
-- * 'edImageURL'
--
-- * 'edDisplayName'
--
-- * 'edId'
--
-- * 'edChildEvents'
--
-- * 'edDescription'
eventDefinition
    :: EventDefinition
eventDefinition =
  EventDefinition'
    { _edIsDefaultImageURL = Nothing
    , _edKind = Nothing
    , _edVisibility = Nothing
    , _edImageURL = Nothing
    , _edDisplayName = Nothing
    , _edId = Nothing
    , _edChildEvents = Nothing
    , _edDescription = Nothing
    }


-- | Indicates whether the icon image being returned is a default image, or
-- is game-provided.
edIsDefaultImageURL :: Lens' EventDefinition (Maybe Bool)
edIsDefaultImageURL
  = lens _edIsDefaultImageURL
      (\ s a -> s{_edIsDefaultImageURL = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventDefinition\`.
edKind :: Lens' EventDefinition (Maybe Text)
edKind = lens _edKind (\ s a -> s{_edKind = a})

-- | The visibility of event being tracked in this definition.
edVisibility :: Lens' EventDefinition (Maybe EventDefinitionVisibility)
edVisibility
  = lens _edVisibility (\ s a -> s{_edVisibility = a})

-- | The base URL for the image that represents the event.
edImageURL :: Lens' EventDefinition (Maybe Text)
edImageURL
  = lens _edImageURL (\ s a -> s{_edImageURL = a})

-- | The name to display for the event.
edDisplayName :: Lens' EventDefinition (Maybe Text)
edDisplayName
  = lens _edDisplayName
      (\ s a -> s{_edDisplayName = a})

-- | The ID of the event.
edId :: Lens' EventDefinition (Maybe Text)
edId = lens _edId (\ s a -> s{_edId = a})

-- | A list of events that are a child of this event.
edChildEvents :: Lens' EventDefinition [EventChild]
edChildEvents
  = lens _edChildEvents
      (\ s a -> s{_edChildEvents = a})
      . _Default
      . _Coerce

-- | Description of what this event represents.
edDescription :: Lens' EventDefinition (Maybe Text)
edDescription
  = lens _edDescription
      (\ s a -> s{_edDescription = a})

instance FromJSON EventDefinition where
        parseJSON
          = withObject "EventDefinition"
              (\ o ->
                 EventDefinition' <$>
                   (o .:? "isDefaultImageUrl") <*> (o .:? "kind") <*>
                     (o .:? "visibility")
                     <*> (o .:? "imageUrl")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "childEvents" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON EventDefinition where
        toJSON EventDefinition'{..}
          = object
              (catMaybes
                 [("isDefaultImageUrl" .=) <$> _edIsDefaultImageURL,
                  ("kind" .=) <$> _edKind,
                  ("visibility" .=) <$> _edVisibility,
                  ("imageUrl" .=) <$> _edImageURL,
                  ("displayName" .=) <$> _edDisplayName,
                  ("id" .=) <$> _edId,
                  ("childEvents" .=) <$> _edChildEvents,
                  ("description" .=) <$> _edDescription])

-- | An event period update resource.
--
-- /See:/ 'eventUpdateRequest' smart constructor.
data EventUpdateRequest =
  EventUpdateRequest'
    { _eUpdateCount :: !(Maybe (Textual Int64))
    , _eKind :: !(Maybe Text)
    , _eDefinitionId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventUpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eUpdateCount'
--
-- * 'eKind'
--
-- * 'eDefinitionId'
eventUpdateRequest
    :: EventUpdateRequest
eventUpdateRequest =
  EventUpdateRequest'
    {_eUpdateCount = Nothing, _eKind = Nothing, _eDefinitionId = Nothing}


-- | The number of times this event occurred in this time period.
eUpdateCount :: Lens' EventUpdateRequest (Maybe Int64)
eUpdateCount
  = lens _eUpdateCount (\ s a -> s{_eUpdateCount = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventUpdateRequest\`.
eKind :: Lens' EventUpdateRequest (Maybe Text)
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | The ID of the event being modified in this update.
eDefinitionId :: Lens' EventUpdateRequest (Maybe Text)
eDefinitionId
  = lens _eDefinitionId
      (\ s a -> s{_eDefinitionId = a})

instance FromJSON EventUpdateRequest where
        parseJSON
          = withObject "EventUpdateRequest"
              (\ o ->
                 EventUpdateRequest' <$>
                   (o .:? "updateCount") <*> (o .:? "kind") <*>
                     (o .:? "definitionId"))

instance ToJSON EventUpdateRequest where
        toJSON EventUpdateRequest'{..}
          = object
              (catMaybes
                 [("updateCount" .=) <$> _eUpdateCount,
                  ("kind" .=) <$> _eKind,
                  ("definitionId" .=) <$> _eDefinitionId])

-- | An achievement unlock response
--
-- /See:/ 'achievementUnlockResponse' smart constructor.
data AchievementUnlockResponse =
  AchievementUnlockResponse'
    { _achKind :: !(Maybe Text)
    , _achNewlyUnlocked :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementUnlockResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'achKind'
--
-- * 'achNewlyUnlocked'
achievementUnlockResponse
    :: AchievementUnlockResponse
achievementUnlockResponse =
  AchievementUnlockResponse' {_achKind = Nothing, _achNewlyUnlocked = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementUnlockResponse\`.
achKind :: Lens' AchievementUnlockResponse (Maybe Text)
achKind = lens _achKind (\ s a -> s{_achKind = a})

-- | Whether this achievement was newly unlocked (that is, whether the unlock
-- request for the achievement was the first for the player).
achNewlyUnlocked :: Lens' AchievementUnlockResponse (Maybe Bool)
achNewlyUnlocked
  = lens _achNewlyUnlocked
      (\ s a -> s{_achNewlyUnlocked = a})

instance FromJSON AchievementUnlockResponse where
        parseJSON
          = withObject "AchievementUnlockResponse"
              (\ o ->
                 AchievementUnlockResponse' <$>
                   (o .:? "kind") <*> (o .:? "newlyUnlocked"))

instance ToJSON AchievementUnlockResponse where
        toJSON AchievementUnlockResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _achKind,
                  ("newlyUnlocked" .=) <$> _achNewlyUnlocked])

-- | An achievement object.
--
-- /See:/ 'playerAchievement' smart constructor.
data PlayerAchievement =
  PlayerAchievement'
    { _paKind :: !(Maybe Text)
    , _paAchievementState :: !(Maybe PlayerAchievementAchievementState)
    , _paFormattedCurrentStepsString :: !(Maybe Text)
    , _paExperiencePoints :: !(Maybe (Textual Int64))
    , _paId :: !(Maybe Text)
    , _paCurrentSteps :: !(Maybe (Textual Int32))
    , _paLastUpdatedTimestamp :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerAchievement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paKind'
--
-- * 'paAchievementState'
--
-- * 'paFormattedCurrentStepsString'
--
-- * 'paExperiencePoints'
--
-- * 'paId'
--
-- * 'paCurrentSteps'
--
-- * 'paLastUpdatedTimestamp'
playerAchievement
    :: PlayerAchievement
playerAchievement =
  PlayerAchievement'
    { _paKind = Nothing
    , _paAchievementState = Nothing
    , _paFormattedCurrentStepsString = Nothing
    , _paExperiencePoints = Nothing
    , _paId = Nothing
    , _paCurrentSteps = Nothing
    , _paLastUpdatedTimestamp = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerAchievement\`.
paKind :: Lens' PlayerAchievement (Maybe Text)
paKind = lens _paKind (\ s a -> s{_paKind = a})

-- | The state of the achievement.
paAchievementState :: Lens' PlayerAchievement (Maybe PlayerAchievementAchievementState)
paAchievementState
  = lens _paAchievementState
      (\ s a -> s{_paAchievementState = a})

-- | The current steps for an incremental achievement as a string.
paFormattedCurrentStepsString :: Lens' PlayerAchievement (Maybe Text)
paFormattedCurrentStepsString
  = lens _paFormattedCurrentStepsString
      (\ s a -> s{_paFormattedCurrentStepsString = a})

-- | Experience points earned for the achievement. This field is absent for
-- achievements that have not yet been unlocked and 0 for achievements that
-- have been unlocked by testers but that are unpublished.
paExperiencePoints :: Lens' PlayerAchievement (Maybe Int64)
paExperiencePoints
  = lens _paExperiencePoints
      (\ s a -> s{_paExperiencePoints = a})
      . mapping _Coerce

-- | The ID of the achievement.
paId :: Lens' PlayerAchievement (Maybe Text)
paId = lens _paId (\ s a -> s{_paId = a})

-- | The current steps for an incremental achievement.
paCurrentSteps :: Lens' PlayerAchievement (Maybe Int32)
paCurrentSteps
  = lens _paCurrentSteps
      (\ s a -> s{_paCurrentSteps = a})
      . mapping _Coerce

-- | The timestamp of the last modification to this achievement\'s state.
paLastUpdatedTimestamp :: Lens' PlayerAchievement (Maybe Int64)
paLastUpdatedTimestamp
  = lens _paLastUpdatedTimestamp
      (\ s a -> s{_paLastUpdatedTimestamp = a})
      . mapping _Coerce

instance FromJSON PlayerAchievement where
        parseJSON
          = withObject "PlayerAchievement"
              (\ o ->
                 PlayerAchievement' <$>
                   (o .:? "kind") <*> (o .:? "achievementState") <*>
                     (o .:? "formattedCurrentStepsString")
                     <*> (o .:? "experiencePoints")
                     <*> (o .:? "id")
                     <*> (o .:? "currentSteps")
                     <*> (o .:? "lastUpdatedTimestamp"))

instance ToJSON PlayerAchievement where
        toJSON PlayerAchievement'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _paKind,
                  ("achievementState" .=) <$> _paAchievementState,
                  ("formattedCurrentStepsString" .=) <$>
                    _paFormattedCurrentStepsString,
                  ("experiencePoints" .=) <$> _paExperiencePoints,
                  ("id" .=) <$> _paId,
                  ("currentSteps" .=) <$> _paCurrentSteps,
                  ("lastUpdatedTimestamp" .=) <$>
                    _paLastUpdatedTimestamp])

-- | An image asset object.
--
-- /See:/ 'imageAsset' smart constructor.
data ImageAsset =
  ImageAsset'
    { _iaHeight :: !(Maybe (Textual Int32))
    , _iaKind :: !(Maybe Text)
    , _iaURL :: !(Maybe Text)
    , _iaWidth :: !(Maybe (Textual Int32))
    , _iaName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImageAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaHeight'
--
-- * 'iaKind'
--
-- * 'iaURL'
--
-- * 'iaWidth'
--
-- * 'iaName'
imageAsset
    :: ImageAsset
imageAsset =
  ImageAsset'
    { _iaHeight = Nothing
    , _iaKind = Nothing
    , _iaURL = Nothing
    , _iaWidth = Nothing
    , _iaName = Nothing
    }


-- | The height of the asset.
iaHeight :: Lens' ImageAsset (Maybe Int32)
iaHeight
  = lens _iaHeight (\ s a -> s{_iaHeight = a}) .
      mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#imageAsset\`.
iaKind :: Lens' ImageAsset (Maybe Text)
iaKind = lens _iaKind (\ s a -> s{_iaKind = a})

-- | The URL of the asset.
iaURL :: Lens' ImageAsset (Maybe Text)
iaURL = lens _iaURL (\ s a -> s{_iaURL = a})

-- | The width of the asset.
iaWidth :: Lens' ImageAsset (Maybe Int32)
iaWidth
  = lens _iaWidth (\ s a -> s{_iaWidth = a}) .
      mapping _Coerce

-- | The name of the asset.
iaName :: Lens' ImageAsset (Maybe Text)
iaName = lens _iaName (\ s a -> s{_iaName = a})

instance FromJSON ImageAsset where
        parseJSON
          = withObject "ImageAsset"
              (\ o ->
                 ImageAsset' <$>
                   (o .:? "height") <*> (o .:? "kind") <*> (o .:? "url")
                     <*> (o .:? "width")
                     <*> (o .:? "name"))

instance ToJSON ImageAsset where
        toJSON ImageAsset'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _iaHeight,
                  ("kind" .=) <$> _iaKind, ("url" .=) <$> _iaURL,
                  ("width" .=) <$> _iaWidth, ("name" .=) <$> _iaName])

-- | A list of achievement update requests.
--
-- /See:/ 'achievementUpdateMultipleRequest' smart constructor.
data AchievementUpdateMultipleRequest =
  AchievementUpdateMultipleRequest'
    { _aumruKind :: !(Maybe Text)
    , _aumruUpdates :: !(Maybe [AchievementUpdateRequest])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementUpdateMultipleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aumruKind'
--
-- * 'aumruUpdates'
achievementUpdateMultipleRequest
    :: AchievementUpdateMultipleRequest
achievementUpdateMultipleRequest =
  AchievementUpdateMultipleRequest'
    {_aumruKind = Nothing, _aumruUpdates = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementUpdateMultipleRequest\`.
aumruKind :: Lens' AchievementUpdateMultipleRequest (Maybe Text)
aumruKind
  = lens _aumruKind (\ s a -> s{_aumruKind = a})

-- | The individual achievement update requests.
aumruUpdates :: Lens' AchievementUpdateMultipleRequest [AchievementUpdateRequest]
aumruUpdates
  = lens _aumruUpdates (\ s a -> s{_aumruUpdates = a})
      . _Default
      . _Coerce

instance FromJSON AchievementUpdateMultipleRequest
         where
        parseJSON
          = withObject "AchievementUpdateMultipleRequest"
              (\ o ->
                 AchievementUpdateMultipleRequest' <$>
                   (o .:? "kind") <*> (o .:? "updates" .!= mempty))

instance ToJSON AchievementUpdateMultipleRequest
         where
        toJSON AchievementUpdateMultipleRequest'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _aumruKind,
                  ("updates" .=) <$> _aumruUpdates])

-- | A request to update an achievement.
--
-- /See:/ 'achievementUpdateRequest' smart constructor.
data AchievementUpdateRequest =
  AchievementUpdateRequest'
    { _auruAchievementId :: !(Maybe Text)
    , _auruKind :: !(Maybe Text)
    , _auruUpdateType :: !(Maybe AchievementUpdateRequestUpdateType)
    , _auruSetStepsAtLeastPayload :: !(Maybe GamesAchievementSetStepsAtLeast)
    , _auruIncrementPayload :: !(Maybe GamesAchievementIncrement)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementUpdateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auruAchievementId'
--
-- * 'auruKind'
--
-- * 'auruUpdateType'
--
-- * 'auruSetStepsAtLeastPayload'
--
-- * 'auruIncrementPayload'
achievementUpdateRequest
    :: AchievementUpdateRequest
achievementUpdateRequest =
  AchievementUpdateRequest'
    { _auruAchievementId = Nothing
    , _auruKind = Nothing
    , _auruUpdateType = Nothing
    , _auruSetStepsAtLeastPayload = Nothing
    , _auruIncrementPayload = Nothing
    }


-- | The achievement this update is being applied to.
auruAchievementId :: Lens' AchievementUpdateRequest (Maybe Text)
auruAchievementId
  = lens _auruAchievementId
      (\ s a -> s{_auruAchievementId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementUpdateRequest\`.
auruKind :: Lens' AchievementUpdateRequest (Maybe Text)
auruKind = lens _auruKind (\ s a -> s{_auruKind = a})

-- | The type of update being applied.
auruUpdateType :: Lens' AchievementUpdateRequest (Maybe AchievementUpdateRequestUpdateType)
auruUpdateType
  = lens _auruUpdateType
      (\ s a -> s{_auruUpdateType = a})

-- | The payload if an update of type \`SET_STEPS_AT_LEAST\` was requested
-- for the achievement.
auruSetStepsAtLeastPayload :: Lens' AchievementUpdateRequest (Maybe GamesAchievementSetStepsAtLeast)
auruSetStepsAtLeastPayload
  = lens _auruSetStepsAtLeastPayload
      (\ s a -> s{_auruSetStepsAtLeastPayload = a})

-- | The payload if an update of type \`INCREMENT\` was requested for the
-- achievement.
auruIncrementPayload :: Lens' AchievementUpdateRequest (Maybe GamesAchievementIncrement)
auruIncrementPayload
  = lens _auruIncrementPayload
      (\ s a -> s{_auruIncrementPayload = a})

instance FromJSON AchievementUpdateRequest where
        parseJSON
          = withObject "AchievementUpdateRequest"
              (\ o ->
                 AchievementUpdateRequest' <$>
                   (o .:? "achievementId") <*> (o .:? "kind") <*>
                     (o .:? "updateType")
                     <*> (o .:? "setStepsAtLeastPayload")
                     <*> (o .:? "incrementPayload"))

instance ToJSON AchievementUpdateRequest where
        toJSON AchievementUpdateRequest'{..}
          = object
              (catMaybes
                 [("achievementId" .=) <$> _auruAchievementId,
                  ("kind" .=) <$> _auruKind,
                  ("updateType" .=) <$> _auruUpdateType,
                  ("setStepsAtLeastPayload" .=) <$>
                    _auruSetStepsAtLeastPayload,
                  ("incrementPayload" .=) <$> _auruIncrementPayload])

-- | A score rank in a leaderboard.
--
-- /See:/ 'leaderboardScoreRank' smart constructor.
data LeaderboardScoreRank =
  LeaderboardScoreRank'
    { _lsrNumScores :: !(Maybe (Textual Int64))
    , _lsrKind :: !(Maybe Text)
    , _lsrFormattedRank :: !(Maybe Text)
    , _lsrFormattedNumScores :: !(Maybe Text)
    , _lsrRank :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardScoreRank' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNumScores'
--
-- * 'lsrKind'
--
-- * 'lsrFormattedRank'
--
-- * 'lsrFormattedNumScores'
--
-- * 'lsrRank'
leaderboardScoreRank
    :: LeaderboardScoreRank
leaderboardScoreRank =
  LeaderboardScoreRank'
    { _lsrNumScores = Nothing
    , _lsrKind = Nothing
    , _lsrFormattedRank = Nothing
    , _lsrFormattedNumScores = Nothing
    , _lsrRank = Nothing
    }


-- | The number of scores in the leaderboard.
lsrNumScores :: Lens' LeaderboardScoreRank (Maybe Int64)
lsrNumScores
  = lens _lsrNumScores (\ s a -> s{_lsrNumScores = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#leaderboardScoreRank\`.
lsrKind :: Lens' LeaderboardScoreRank (Maybe Text)
lsrKind = lens _lsrKind (\ s a -> s{_lsrKind = a})

-- | The rank in the leaderboard as a string.
lsrFormattedRank :: Lens' LeaderboardScoreRank (Maybe Text)
lsrFormattedRank
  = lens _lsrFormattedRank
      (\ s a -> s{_lsrFormattedRank = a})

-- | The number of scores in the leaderboard as a string.
lsrFormattedNumScores :: Lens' LeaderboardScoreRank (Maybe Text)
lsrFormattedNumScores
  = lens _lsrFormattedNumScores
      (\ s a -> s{_lsrFormattedNumScores = a})

-- | The rank in the leaderboard.
lsrRank :: Lens' LeaderboardScoreRank (Maybe Int64)
lsrRank
  = lens _lsrRank (\ s a -> s{_lsrRank = a}) .
      mapping _Coerce

instance FromJSON LeaderboardScoreRank where
        parseJSON
          = withObject "LeaderboardScoreRank"
              (\ o ->
                 LeaderboardScoreRank' <$>
                   (o .:? "numScores") <*> (o .:? "kind") <*>
                     (o .:? "formattedRank")
                     <*> (o .:? "formattedNumScores")
                     <*> (o .:? "rank"))

instance ToJSON LeaderboardScoreRank where
        toJSON LeaderboardScoreRank'{..}
          = object
              (catMaybes
                 [("numScores" .=) <$> _lsrNumScores,
                  ("kind" .=) <$> _lsrKind,
                  ("formattedRank" .=) <$> _lsrFormattedRank,
                  ("formattedNumScores" .=) <$> _lsrFormattedNumScores,
                  ("rank" .=) <$> _lsrRank])

-- | A third party player list response.
--
-- /See:/ 'playerListResponse' smart constructor.
data PlayerListResponse =
  PlayerListResponse'
    { _plrNextPageToken :: !(Maybe Text)
    , _plrKind :: !(Maybe Text)
    , _plrItems :: !(Maybe [Player])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrNextPageToken'
--
-- * 'plrKind'
--
-- * 'plrItems'
playerListResponse
    :: PlayerListResponse
playerListResponse =
  PlayerListResponse'
    {_plrNextPageToken = Nothing, _plrKind = Nothing, _plrItems = Nothing}


-- | Token corresponding to the next page of results.
plrNextPageToken :: Lens' PlayerListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerListResponse\`.
plrKind :: Lens' PlayerListResponse (Maybe Text)
plrKind = lens _plrKind (\ s a -> s{_plrKind = a})

-- | The players.
plrItems :: Lens' PlayerListResponse [Player]
plrItems
  = lens _plrItems (\ s a -> s{_plrItems = a}) .
      _Default
      . _Coerce

instance FromJSON PlayerListResponse where
        parseJSON
          = withObject "PlayerListResponse"
              (\ o ->
                 PlayerListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON PlayerListResponse where
        toJSON PlayerListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  ("kind" .=) <$> _plrKind,
                  ("items" .=) <$> _plrItems])

-- | A ListScores response.
--
-- /See:/ 'leaderboardScores' smart constructor.
data LeaderboardScores =
  LeaderboardScores'
    { _lsNextPageToken :: !(Maybe Text)
    , _lsNumScores :: !(Maybe (Textual Int64))
    , _lsKind :: !(Maybe Text)
    , _lsPlayerScore :: !(Maybe LeaderboardEntry)
    , _lsItems :: !(Maybe [LeaderboardEntry])
    , _lsPrevPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardScores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextPageToken'
--
-- * 'lsNumScores'
--
-- * 'lsKind'
--
-- * 'lsPlayerScore'
--
-- * 'lsItems'
--
-- * 'lsPrevPageToken'
leaderboardScores
    :: LeaderboardScores
leaderboardScores =
  LeaderboardScores'
    { _lsNextPageToken = Nothing
    , _lsNumScores = Nothing
    , _lsKind = Nothing
    , _lsPlayerScore = Nothing
    , _lsItems = Nothing
    , _lsPrevPageToken = Nothing
    }


-- | The pagination token for the next page of results.
lsNextPageToken :: Lens' LeaderboardScores (Maybe Text)
lsNextPageToken
  = lens _lsNextPageToken
      (\ s a -> s{_lsNextPageToken = a})

-- | The total number of scores in the leaderboard.
lsNumScores :: Lens' LeaderboardScores (Maybe Int64)
lsNumScores
  = lens _lsNumScores (\ s a -> s{_lsNumScores = a}) .
      mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#leaderboardScores\`.
lsKind :: Lens' LeaderboardScores (Maybe Text)
lsKind = lens _lsKind (\ s a -> s{_lsKind = a})

-- | The score of the requesting player on the leaderboard. The player\'s
-- score may appear both here and in the list of scores above. If you are
-- viewing a public leaderboard and the player is not sharing their
-- gameplay information publicly, the \`scoreRank\`and
-- \`formattedScoreRank\` values will not be present.
lsPlayerScore :: Lens' LeaderboardScores (Maybe LeaderboardEntry)
lsPlayerScore
  = lens _lsPlayerScore
      (\ s a -> s{_lsPlayerScore = a})

-- | The scores in the leaderboard.
lsItems :: Lens' LeaderboardScores [LeaderboardEntry]
lsItems
  = lens _lsItems (\ s a -> s{_lsItems = a}) . _Default
      . _Coerce

-- | The pagination token for the previous page of results.
lsPrevPageToken :: Lens' LeaderboardScores (Maybe Text)
lsPrevPageToken
  = lens _lsPrevPageToken
      (\ s a -> s{_lsPrevPageToken = a})

instance FromJSON LeaderboardScores where
        parseJSON
          = withObject "LeaderboardScores"
              (\ o ->
                 LeaderboardScores' <$>
                   (o .:? "nextPageToken") <*> (o .:? "numScores") <*>
                     (o .:? "kind")
                     <*> (o .:? "playerScore")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "prevPageToken"))

instance ToJSON LeaderboardScores where
        toJSON LeaderboardScores'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsNextPageToken,
                  ("numScores" .=) <$> _lsNumScores,
                  ("kind" .=) <$> _lsKind,
                  ("playerScore" .=) <$> _lsPlayerScore,
                  ("items" .=) <$> _lsItems,
                  ("prevPageToken" .=) <$> _lsPrevPageToken])

-- | An achievement definition object.
--
-- /See:/ 'achievementDefinition' smart constructor.
data AchievementDefinition =
  AchievementDefinition'
    { _adAchievementType :: !(Maybe AchievementDefinitionAchievementType)
    , _adFormattedTotalSteps :: !(Maybe Text)
    , _adRevealedIconURL :: !(Maybe Text)
    , _adKind :: !(Maybe Text)
    , _adExperiencePoints :: !(Maybe (Textual Int64))
    , _adInitialState :: !(Maybe AchievementDefinitionInitialState)
    , _adName :: !(Maybe Text)
    , _adId :: !(Maybe Text)
    , _adIsUnlockedIconURLDefault :: !(Maybe Bool)
    , _adTotalSteps :: !(Maybe (Textual Int32))
    , _adDescription :: !(Maybe Text)
    , _adIsRevealedIconURLDefault :: !(Maybe Bool)
    , _adUnlockedIconURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAchievementType'
--
-- * 'adFormattedTotalSteps'
--
-- * 'adRevealedIconURL'
--
-- * 'adKind'
--
-- * 'adExperiencePoints'
--
-- * 'adInitialState'
--
-- * 'adName'
--
-- * 'adId'
--
-- * 'adIsUnlockedIconURLDefault'
--
-- * 'adTotalSteps'
--
-- * 'adDescription'
--
-- * 'adIsRevealedIconURLDefault'
--
-- * 'adUnlockedIconURL'
achievementDefinition
    :: AchievementDefinition
achievementDefinition =
  AchievementDefinition'
    { _adAchievementType = Nothing
    , _adFormattedTotalSteps = Nothing
    , _adRevealedIconURL = Nothing
    , _adKind = Nothing
    , _adExperiencePoints = Nothing
    , _adInitialState = Nothing
    , _adName = Nothing
    , _adId = Nothing
    , _adIsUnlockedIconURLDefault = Nothing
    , _adTotalSteps = Nothing
    , _adDescription = Nothing
    , _adIsRevealedIconURLDefault = Nothing
    , _adUnlockedIconURL = Nothing
    }


-- | The type of the achievement.
adAchievementType :: Lens' AchievementDefinition (Maybe AchievementDefinitionAchievementType)
adAchievementType
  = lens _adAchievementType
      (\ s a -> s{_adAchievementType = a})

-- | The total steps for an incremental achievement as a string.
adFormattedTotalSteps :: Lens' AchievementDefinition (Maybe Text)
adFormattedTotalSteps
  = lens _adFormattedTotalSteps
      (\ s a -> s{_adFormattedTotalSteps = a})

-- | The image URL for the revealed achievement icon.
adRevealedIconURL :: Lens' AchievementDefinition (Maybe Text)
adRevealedIconURL
  = lens _adRevealedIconURL
      (\ s a -> s{_adRevealedIconURL = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementDefinition\`.
adKind :: Lens' AchievementDefinition (Maybe Text)
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | Experience points which will be earned when unlocking this achievement.
adExperiencePoints :: Lens' AchievementDefinition (Maybe Int64)
adExperiencePoints
  = lens _adExperiencePoints
      (\ s a -> s{_adExperiencePoints = a})
      . mapping _Coerce

-- | The initial state of the achievement.
adInitialState :: Lens' AchievementDefinition (Maybe AchievementDefinitionInitialState)
adInitialState
  = lens _adInitialState
      (\ s a -> s{_adInitialState = a})

-- | The name of the achievement.
adName :: Lens' AchievementDefinition (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | The ID of the achievement.
adId :: Lens' AchievementDefinition (Maybe Text)
adId = lens _adId (\ s a -> s{_adId = a})

-- | Indicates whether the unlocked icon image being returned is a default
-- image, or is game-provided.
adIsUnlockedIconURLDefault :: Lens' AchievementDefinition (Maybe Bool)
adIsUnlockedIconURLDefault
  = lens _adIsUnlockedIconURLDefault
      (\ s a -> s{_adIsUnlockedIconURLDefault = a})

-- | The total steps for an incremental achievement.
adTotalSteps :: Lens' AchievementDefinition (Maybe Int32)
adTotalSteps
  = lens _adTotalSteps (\ s a -> s{_adTotalSteps = a})
      . mapping _Coerce

-- | The description of the achievement.
adDescription :: Lens' AchievementDefinition (Maybe Text)
adDescription
  = lens _adDescription
      (\ s a -> s{_adDescription = a})

-- | Indicates whether the revealed icon image being returned is a default
-- image, or is provided by the game.
adIsRevealedIconURLDefault :: Lens' AchievementDefinition (Maybe Bool)
adIsRevealedIconURLDefault
  = lens _adIsRevealedIconURLDefault
      (\ s a -> s{_adIsRevealedIconURLDefault = a})

-- | The image URL for the unlocked achievement icon.
adUnlockedIconURL :: Lens' AchievementDefinition (Maybe Text)
adUnlockedIconURL
  = lens _adUnlockedIconURL
      (\ s a -> s{_adUnlockedIconURL = a})

instance FromJSON AchievementDefinition where
        parseJSON
          = withObject "AchievementDefinition"
              (\ o ->
                 AchievementDefinition' <$>
                   (o .:? "achievementType") <*>
                     (o .:? "formattedTotalSteps")
                     <*> (o .:? "revealedIconUrl")
                     <*> (o .:? "kind")
                     <*> (o .:? "experiencePoints")
                     <*> (o .:? "initialState")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "isUnlockedIconUrlDefault")
                     <*> (o .:? "totalSteps")
                     <*> (o .:? "description")
                     <*> (o .:? "isRevealedIconUrlDefault")
                     <*> (o .:? "unlockedIconUrl"))

instance ToJSON AchievementDefinition where
        toJSON AchievementDefinition'{..}
          = object
              (catMaybes
                 [("achievementType" .=) <$> _adAchievementType,
                  ("formattedTotalSteps" .=) <$>
                    _adFormattedTotalSteps,
                  ("revealedIconUrl" .=) <$> _adRevealedIconURL,
                  ("kind" .=) <$> _adKind,
                  ("experiencePoints" .=) <$> _adExperiencePoints,
                  ("initialState" .=) <$> _adInitialState,
                  ("name" .=) <$> _adName, ("id" .=) <$> _adId,
                  ("isUnlockedIconUrlDefault" .=) <$>
                    _adIsUnlockedIconURLDefault,
                  ("totalSteps" .=) <$> _adTotalSteps,
                  ("description" .=) <$> _adDescription,
                  ("isRevealedIconUrlDefault" .=) <$>
                    _adIsRevealedIconURLDefault,
                  ("unlockedIconUrl" .=) <$> _adUnlockedIconURL])

-- | A batch update failure resource.
--
-- /See:/ 'eventBatchRecordFailure' smart constructor.
data EventBatchRecordFailure =
  EventBatchRecordFailure'
    { _ebrfKind :: !(Maybe Text)
    , _ebrfRange :: !(Maybe EventPeriodRange)
    , _ebrfFailureCause :: !(Maybe EventBatchRecordFailureFailureCause)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventBatchRecordFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebrfKind'
--
-- * 'ebrfRange'
--
-- * 'ebrfFailureCause'
eventBatchRecordFailure
    :: EventBatchRecordFailure
eventBatchRecordFailure =
  EventBatchRecordFailure'
    {_ebrfKind = Nothing, _ebrfRange = Nothing, _ebrfFailureCause = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventBatchRecordFailure\`.
ebrfKind :: Lens' EventBatchRecordFailure (Maybe Text)
ebrfKind = lens _ebrfKind (\ s a -> s{_ebrfKind = a})

-- | The time range which was rejected; empty for a request-wide failure.
ebrfRange :: Lens' EventBatchRecordFailure (Maybe EventPeriodRange)
ebrfRange
  = lens _ebrfRange (\ s a -> s{_ebrfRange = a})

-- | The cause for the update failure.
ebrfFailureCause :: Lens' EventBatchRecordFailure (Maybe EventBatchRecordFailureFailureCause)
ebrfFailureCause
  = lens _ebrfFailureCause
      (\ s a -> s{_ebrfFailureCause = a})

instance FromJSON EventBatchRecordFailure where
        parseJSON
          = withObject "EventBatchRecordFailure"
              (\ o ->
                 EventBatchRecordFailure' <$>
                   (o .:? "kind") <*> (o .:? "range") <*>
                     (o .:? "failureCause"))

instance ToJSON EventBatchRecordFailure where
        toJSON EventBatchRecordFailure'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ebrfKind,
                  ("range" .=) <$> _ebrfRange,
                  ("failureCause" .=) <$> _ebrfFailureCause])

-- | An achievement increment response
--
-- /See:/ 'achievementIncrementResponse' smart constructor.
data AchievementIncrementResponse =
  AchievementIncrementResponse'
    { _airKind :: !(Maybe Text)
    , _airNewlyUnlocked :: !(Maybe Bool)
    , _airCurrentSteps :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementIncrementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'airKind'
--
-- * 'airNewlyUnlocked'
--
-- * 'airCurrentSteps'
achievementIncrementResponse
    :: AchievementIncrementResponse
achievementIncrementResponse =
  AchievementIncrementResponse'
    { _airKind = Nothing
    , _airNewlyUnlocked = Nothing
    , _airCurrentSteps = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementIncrementResponse\`.
airKind :: Lens' AchievementIncrementResponse (Maybe Text)
airKind = lens _airKind (\ s a -> s{_airKind = a})

-- | Whether the current steps for the achievement has reached the number of
-- steps required to unlock.
airNewlyUnlocked :: Lens' AchievementIncrementResponse (Maybe Bool)
airNewlyUnlocked
  = lens _airNewlyUnlocked
      (\ s a -> s{_airNewlyUnlocked = a})

-- | The current steps recorded for this incremental achievement.
airCurrentSteps :: Lens' AchievementIncrementResponse (Maybe Int32)
airCurrentSteps
  = lens _airCurrentSteps
      (\ s a -> s{_airCurrentSteps = a})
      . mapping _Coerce

instance FromJSON AchievementIncrementResponse where
        parseJSON
          = withObject "AchievementIncrementResponse"
              (\ o ->
                 AchievementIncrementResponse' <$>
                   (o .:? "kind") <*> (o .:? "newlyUnlocked") <*>
                     (o .:? "currentSteps"))

instance ToJSON AchievementIncrementResponse where
        toJSON AchievementIncrementResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _airKind,
                  ("newlyUnlocked" .=) <$> _airNewlyUnlocked,
                  ("currentSteps" .=) <$> _airCurrentSteps])

-- | An achievement reveal response
--
-- /See:/ 'achievementRevealResponse' smart constructor.
data AchievementRevealResponse =
  AchievementRevealResponse'
    { _arrKind :: !(Maybe Text)
    , _arrCurrentState :: !(Maybe AchievementRevealResponseCurrentState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementRevealResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arrKind'
--
-- * 'arrCurrentState'
achievementRevealResponse
    :: AchievementRevealResponse
achievementRevealResponse =
  AchievementRevealResponse' {_arrKind = Nothing, _arrCurrentState = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementRevealResponse\`.
arrKind :: Lens' AchievementRevealResponse (Maybe Text)
arrKind = lens _arrKind (\ s a -> s{_arrKind = a})

-- | The current state of the achievement for which a reveal was attempted.
-- This might be \`UNLOCKED\` if the achievement was already unlocked.
arrCurrentState :: Lens' AchievementRevealResponse (Maybe AchievementRevealResponseCurrentState)
arrCurrentState
  = lens _arrCurrentState
      (\ s a -> s{_arrCurrentState = a})

instance FromJSON AchievementRevealResponse where
        parseJSON
          = withObject "AchievementRevealResponse"
              (\ o ->
                 AchievementRevealResponse' <$>
                   (o .:? "kind") <*> (o .:? "currentState"))

instance ToJSON AchievementRevealResponse where
        toJSON AchievementRevealResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _arrKind,
                  ("currentState" .=) <$> _arrCurrentState])

-- | An achievement set steps at least response.
--
-- /See:/ 'achievementSetStepsAtLeastResponse' smart constructor.
data AchievementSetStepsAtLeastResponse =
  AchievementSetStepsAtLeastResponse'
    { _assalrKind :: !(Maybe Text)
    , _assalrNewlyUnlocked :: !(Maybe Bool)
    , _assalrCurrentSteps :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementSetStepsAtLeastResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assalrKind'
--
-- * 'assalrNewlyUnlocked'
--
-- * 'assalrCurrentSteps'
achievementSetStepsAtLeastResponse
    :: AchievementSetStepsAtLeastResponse
achievementSetStepsAtLeastResponse =
  AchievementSetStepsAtLeastResponse'
    { _assalrKind = Nothing
    , _assalrNewlyUnlocked = Nothing
    , _assalrCurrentSteps = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#achievementSetStepsAtLeastResponse\`.
assalrKind :: Lens' AchievementSetStepsAtLeastResponse (Maybe Text)
assalrKind
  = lens _assalrKind (\ s a -> s{_assalrKind = a})

-- | Whether the current steps for the achievement has reached the number of
-- steps required to unlock.
assalrNewlyUnlocked :: Lens' AchievementSetStepsAtLeastResponse (Maybe Bool)
assalrNewlyUnlocked
  = lens _assalrNewlyUnlocked
      (\ s a -> s{_assalrNewlyUnlocked = a})

-- | The current steps recorded for this incremental achievement.
assalrCurrentSteps :: Lens' AchievementSetStepsAtLeastResponse (Maybe Int32)
assalrCurrentSteps
  = lens _assalrCurrentSteps
      (\ s a -> s{_assalrCurrentSteps = a})
      . mapping _Coerce

instance FromJSON AchievementSetStepsAtLeastResponse
         where
        parseJSON
          = withObject "AchievementSetStepsAtLeastResponse"
              (\ o ->
                 AchievementSetStepsAtLeastResponse' <$>
                   (o .:? "kind") <*> (o .:? "newlyUnlocked") <*>
                     (o .:? "currentSteps"))

instance ToJSON AchievementSetStepsAtLeastResponse
         where
        toJSON AchievementSetStepsAtLeastResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _assalrKind,
                  ("newlyUnlocked" .=) <$> _assalrNewlyUnlocked,
                  ("currentSteps" .=) <$> _assalrCurrentSteps])

-- | A list of achievement objects.
--
-- /See:/ 'playerAchievementListResponse' smart constructor.
data PlayerAchievementListResponse =
  PlayerAchievementListResponse'
    { _palrNextPageToken :: !(Maybe Text)
    , _palrKind :: !(Maybe Text)
    , _palrItems :: !(Maybe [PlayerAchievement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerAchievementListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'palrNextPageToken'
--
-- * 'palrKind'
--
-- * 'palrItems'
playerAchievementListResponse
    :: PlayerAchievementListResponse
playerAchievementListResponse =
  PlayerAchievementListResponse'
    {_palrNextPageToken = Nothing, _palrKind = Nothing, _palrItems = Nothing}


-- | Token corresponding to the next page of results.
palrNextPageToken :: Lens' PlayerAchievementListResponse (Maybe Text)
palrNextPageToken
  = lens _palrNextPageToken
      (\ s a -> s{_palrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerAchievementListResponse\`.
palrKind :: Lens' PlayerAchievementListResponse (Maybe Text)
palrKind = lens _palrKind (\ s a -> s{_palrKind = a})

-- | The achievements.
palrItems :: Lens' PlayerAchievementListResponse [PlayerAchievement]
palrItems
  = lens _palrItems (\ s a -> s{_palrItems = a}) .
      _Default
      . _Coerce

instance FromJSON PlayerAchievementListResponse where
        parseJSON
          = withObject "PlayerAchievementListResponse"
              (\ o ->
                 PlayerAchievementListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON PlayerAchievementListResponse where
        toJSON PlayerAchievementListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _palrNextPageToken,
                  ("kind" .=) <$> _palrKind,
                  ("items" .=) <$> _palrItems])

-- | An event period update resource.
--
-- /See:/ 'eventRecordRequest' smart constructor.
data EventRecordRequest =
  EventRecordRequest'
    { _errRequestId :: !(Maybe (Textual Int64))
    , _errKind :: !(Maybe Text)
    , _errCurrentTimeMillis :: !(Maybe (Textual Int64))
    , _errTimePeriods :: !(Maybe [EventPeriodUpdate])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventRecordRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'errRequestId'
--
-- * 'errKind'
--
-- * 'errCurrentTimeMillis'
--
-- * 'errTimePeriods'
eventRecordRequest
    :: EventRecordRequest
eventRecordRequest =
  EventRecordRequest'
    { _errRequestId = Nothing
    , _errKind = Nothing
    , _errCurrentTimeMillis = Nothing
    , _errTimePeriods = Nothing
    }


-- | The request ID used to identify this attempt to record events.
errRequestId :: Lens' EventRecordRequest (Maybe Int64)
errRequestId
  = lens _errRequestId (\ s a -> s{_errRequestId = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventRecordRequest\`.
errKind :: Lens' EventRecordRequest (Maybe Text)
errKind = lens _errKind (\ s a -> s{_errKind = a})

-- | The current time when this update was sent, in milliseconds, since 1970
-- UTC (Unix Epoch).
errCurrentTimeMillis :: Lens' EventRecordRequest (Maybe Int64)
errCurrentTimeMillis
  = lens _errCurrentTimeMillis
      (\ s a -> s{_errCurrentTimeMillis = a})
      . mapping _Coerce

-- | A list of the time period updates being made in this request.
errTimePeriods :: Lens' EventRecordRequest [EventPeriodUpdate]
errTimePeriods
  = lens _errTimePeriods
      (\ s a -> s{_errTimePeriods = a})
      . _Default
      . _Coerce

instance FromJSON EventRecordRequest where
        parseJSON
          = withObject "EventRecordRequest"
              (\ o ->
                 EventRecordRequest' <$>
                   (o .:? "requestId") <*> (o .:? "kind") <*>
                     (o .:? "currentTimeMillis")
                     <*> (o .:? "timePeriods" .!= mempty))

instance ToJSON EventRecordRequest where
        toJSON EventRecordRequest'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _errRequestId,
                  ("kind" .=) <$> _errKind,
                  ("currentTimeMillis" .=) <$> _errCurrentTimeMillis,
                  ("timePeriods" .=) <$> _errTimePeriods])

-- | An event period update resource.
--
-- /See:/ 'eventPeriodUpdate' smart constructor.
data EventPeriodUpdate =
  EventPeriodUpdate'
    { _epuKind :: !(Maybe Text)
    , _epuTimePeriod :: !(Maybe EventPeriodRange)
    , _epuUpdates :: !(Maybe [EventUpdateRequest])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventPeriodUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epuKind'
--
-- * 'epuTimePeriod'
--
-- * 'epuUpdates'
eventPeriodUpdate
    :: EventPeriodUpdate
eventPeriodUpdate =
  EventPeriodUpdate'
    {_epuKind = Nothing, _epuTimePeriod = Nothing, _epuUpdates = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventPeriodUpdate\`.
epuKind :: Lens' EventPeriodUpdate (Maybe Text)
epuKind = lens _epuKind (\ s a -> s{_epuKind = a})

-- | The time period being covered by this update.
epuTimePeriod :: Lens' EventPeriodUpdate (Maybe EventPeriodRange)
epuTimePeriod
  = lens _epuTimePeriod
      (\ s a -> s{_epuTimePeriod = a})

-- | The updates being made for this time period.
epuUpdates :: Lens' EventPeriodUpdate [EventUpdateRequest]
epuUpdates
  = lens _epuUpdates (\ s a -> s{_epuUpdates = a}) .
      _Default
      . _Coerce

instance FromJSON EventPeriodUpdate where
        parseJSON
          = withObject "EventPeriodUpdate"
              (\ o ->
                 EventPeriodUpdate' <$>
                   (o .:? "kind") <*> (o .:? "timePeriod") <*>
                     (o .:? "updates" .!= mempty))

instance ToJSON EventPeriodUpdate where
        toJSON EventPeriodUpdate'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _epuKind,
                  ("timePeriod" .=) <$> _epuTimePeriod,
                  ("updates" .=) <$> _epuUpdates])

-- | A request to submit a score to leaderboards.
--
-- /See:/ 'scoreSubmission' smart constructor.
data ScoreSubmission =
  ScoreSubmission'
    { _scoSignature :: !(Maybe Text)
    , _scoScoreTag :: !(Maybe Text)
    , _scoScore :: !(Maybe (Textual Int64))
    , _scoKind :: !(Maybe Text)
    , _scoLeaderboardId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoreSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scoSignature'
--
-- * 'scoScoreTag'
--
-- * 'scoScore'
--
-- * 'scoKind'
--
-- * 'scoLeaderboardId'
scoreSubmission
    :: ScoreSubmission
scoreSubmission =
  ScoreSubmission'
    { _scoSignature = Nothing
    , _scoScoreTag = Nothing
    , _scoScore = Nothing
    , _scoKind = Nothing
    , _scoLeaderboardId = Nothing
    }


-- | Signature Values will contain URI-safe characters as defined by section
-- 2.3 of RFC 3986.
scoSignature :: Lens' ScoreSubmission (Maybe Text)
scoSignature
  = lens _scoSignature (\ s a -> s{_scoSignature = a})

-- | Additional information about this score. Values will contain no more
-- than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
scoScoreTag :: Lens' ScoreSubmission (Maybe Text)
scoScoreTag
  = lens _scoScoreTag (\ s a -> s{_scoScoreTag = a})

-- | The new score being submitted.
scoScore :: Lens' ScoreSubmission (Maybe Int64)
scoScore
  = lens _scoScore (\ s a -> s{_scoScore = a}) .
      mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#scoreSubmission\`.
scoKind :: Lens' ScoreSubmission (Maybe Text)
scoKind = lens _scoKind (\ s a -> s{_scoKind = a})

-- | The leaderboard this score is being submitted to.
scoLeaderboardId :: Lens' ScoreSubmission (Maybe Text)
scoLeaderboardId
  = lens _scoLeaderboardId
      (\ s a -> s{_scoLeaderboardId = a})

instance FromJSON ScoreSubmission where
        parseJSON
          = withObject "ScoreSubmission"
              (\ o ->
                 ScoreSubmission' <$>
                   (o .:? "signature") <*> (o .:? "scoreTag") <*>
                     (o .:? "score")
                     <*> (o .:? "kind")
                     <*> (o .:? "leaderboardId"))

instance ToJSON ScoreSubmission where
        toJSON ScoreSubmission'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _scoSignature,
                  ("scoreTag" .=) <$> _scoScoreTag,
                  ("score" .=) <$> _scoScore, ("kind" .=) <$> _scoKind,
                  ("leaderboardId" .=) <$> _scoLeaderboardId])

-- | Container for a URL end point of the requested type.
--
-- /See:/ 'endPoint' smart constructor.
newtype EndPoint =
  EndPoint'
    { _epURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EndPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epURL'
endPoint
    :: EndPoint
endPoint = EndPoint' {_epURL = Nothing}


-- | A URL suitable for loading in a web browser for the requested endpoint.
epURL :: Lens' EndPoint (Maybe Text)
epURL = lens _epURL (\ s a -> s{_epURL = a})

instance FromJSON EndPoint where
        parseJSON
          = withObject "EndPoint"
              (\ o -> EndPoint' <$> (o .:? "url"))

instance ToJSON EndPoint where
        toJSON EndPoint'{..}
          = object (catMaybes [("url" .=) <$> _epURL])

-- | The Web details resource.
--
-- /See:/ 'instanceWebDetails' smart constructor.
data InstanceWebDetails =
  InstanceWebDetails'
    { _iwdPreferred :: !(Maybe Bool)
    , _iwdKind :: !(Maybe Text)
    , _iwdLaunchURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceWebDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iwdPreferred'
--
-- * 'iwdKind'
--
-- * 'iwdLaunchURL'
instanceWebDetails
    :: InstanceWebDetails
instanceWebDetails =
  InstanceWebDetails'
    {_iwdPreferred = Nothing, _iwdKind = Nothing, _iwdLaunchURL = Nothing}


-- | Indicates that this instance is the default for new installations.
iwdPreferred :: Lens' InstanceWebDetails (Maybe Bool)
iwdPreferred
  = lens _iwdPreferred (\ s a -> s{_iwdPreferred = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#instanceWebDetails\`.
iwdKind :: Lens' InstanceWebDetails (Maybe Text)
iwdKind = lens _iwdKind (\ s a -> s{_iwdKind = a})

-- | Launch URL for the game.
iwdLaunchURL :: Lens' InstanceWebDetails (Maybe Text)
iwdLaunchURL
  = lens _iwdLaunchURL (\ s a -> s{_iwdLaunchURL = a})

instance FromJSON InstanceWebDetails where
        parseJSON
          = withObject "InstanceWebDetails"
              (\ o ->
                 InstanceWebDetails' <$>
                   (o .:? "preferred") <*> (o .:? "kind") <*>
                     (o .:? "launchUrl"))

instance ToJSON InstanceWebDetails where
        toJSON InstanceWebDetails'{..}
          = object
              (catMaybes
                 [("preferred" .=) <$> _iwdPreferred,
                  ("kind" .=) <$> _iwdKind,
                  ("launchUrl" .=) <$> _iwdLaunchURL])

-- | 1P\/3P metadata about the player\'s experience.
--
-- /See:/ 'playerExperienceInfo' smart constructor.
data PlayerExperienceInfo =
  PlayerExperienceInfo'
    { _peiKind :: !(Maybe Text)
    , _peiCurrentExperiencePoints :: !(Maybe (Textual Int64))
    , _peiCurrentLevel :: !(Maybe PlayerLevel)
    , _peiNextLevel :: !(Maybe PlayerLevel)
    , _peiLastLevelUpTimestampMillis :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerExperienceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peiKind'
--
-- * 'peiCurrentExperiencePoints'
--
-- * 'peiCurrentLevel'
--
-- * 'peiNextLevel'
--
-- * 'peiLastLevelUpTimestampMillis'
playerExperienceInfo
    :: PlayerExperienceInfo
playerExperienceInfo =
  PlayerExperienceInfo'
    { _peiKind = Nothing
    , _peiCurrentExperiencePoints = Nothing
    , _peiCurrentLevel = Nothing
    , _peiNextLevel = Nothing
    , _peiLastLevelUpTimestampMillis = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerExperienceInfo\`.
peiKind :: Lens' PlayerExperienceInfo (Maybe Text)
peiKind = lens _peiKind (\ s a -> s{_peiKind = a})

-- | The current number of experience points for the player.
peiCurrentExperiencePoints :: Lens' PlayerExperienceInfo (Maybe Int64)
peiCurrentExperiencePoints
  = lens _peiCurrentExperiencePoints
      (\ s a -> s{_peiCurrentExperiencePoints = a})
      . mapping _Coerce

-- | The current level of the player.
peiCurrentLevel :: Lens' PlayerExperienceInfo (Maybe PlayerLevel)
peiCurrentLevel
  = lens _peiCurrentLevel
      (\ s a -> s{_peiCurrentLevel = a})

-- | The next level of the player. If the current level is the maximum level,
-- this should be same as the current level.
peiNextLevel :: Lens' PlayerExperienceInfo (Maybe PlayerLevel)
peiNextLevel
  = lens _peiNextLevel (\ s a -> s{_peiNextLevel = a})

-- | The timestamp when the player was leveled up, in millis since Unix epoch
-- UTC.
peiLastLevelUpTimestampMillis :: Lens' PlayerExperienceInfo (Maybe Int64)
peiLastLevelUpTimestampMillis
  = lens _peiLastLevelUpTimestampMillis
      (\ s a -> s{_peiLastLevelUpTimestampMillis = a})
      . mapping _Coerce

instance FromJSON PlayerExperienceInfo where
        parseJSON
          = withObject "PlayerExperienceInfo"
              (\ o ->
                 PlayerExperienceInfo' <$>
                   (o .:? "kind") <*> (o .:? "currentExperiencePoints")
                     <*> (o .:? "currentLevel")
                     <*> (o .:? "nextLevel")
                     <*> (o .:? "lastLevelUpTimestampMillis"))

instance ToJSON PlayerExperienceInfo where
        toJSON PlayerExperienceInfo'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _peiKind,
                  ("currentExperiencePoints" .=) <$>
                    _peiCurrentExperiencePoints,
                  ("currentLevel" .=) <$> _peiCurrentLevel,
                  ("nextLevel" .=) <$> _peiNextLevel,
                  ("lastLevelUpTimestampMillis" .=) <$>
                    _peiLastLevelUpTimestampMillis])

-- | The payload to request to increment an achievement.
--
-- /See:/ 'gamesAchievementSetStepsAtLeast' smart constructor.
data GamesAchievementSetStepsAtLeast =
  GamesAchievementSetStepsAtLeast'
    { _gassalKind :: !(Maybe Text)
    , _gassalSteps :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GamesAchievementSetStepsAtLeast' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gassalKind'
--
-- * 'gassalSteps'
gamesAchievementSetStepsAtLeast
    :: GamesAchievementSetStepsAtLeast
gamesAchievementSetStepsAtLeast =
  GamesAchievementSetStepsAtLeast'
    {_gassalKind = Nothing, _gassalSteps = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#GamesAchievementSetStepsAtLeast\`.
gassalKind :: Lens' GamesAchievementSetStepsAtLeast (Maybe Text)
gassalKind
  = lens _gassalKind (\ s a -> s{_gassalKind = a})

-- | The minimum number of steps for the achievement to be set to.
gassalSteps :: Lens' GamesAchievementSetStepsAtLeast (Maybe Int32)
gassalSteps
  = lens _gassalSteps (\ s a -> s{_gassalSteps = a}) .
      mapping _Coerce

instance FromJSON GamesAchievementSetStepsAtLeast
         where
        parseJSON
          = withObject "GamesAchievementSetStepsAtLeast"
              (\ o ->
                 GamesAchievementSetStepsAtLeast' <$>
                   (o .:? "kind") <*> (o .:? "steps"))

instance ToJSON GamesAchievementSetStepsAtLeast where
        toJSON GamesAchievementSetStepsAtLeast'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _gassalKind,
                  ("steps" .=) <$> _gassalSteps])

-- | A Player resource.
--
-- /See:/ 'player' smart constructor.
data Player =
  Player'
    { _pBannerURLLandscape :: !(Maybe Text)
    , _pAvatarImageURL :: !(Maybe Text)
    , _pKind :: !(Maybe Text)
    , _pExperienceInfo :: !(Maybe PlayerExperienceInfo)
    , _pName :: !(Maybe PlayerName)
    , _pOriginalPlayerId :: !(Maybe Text)
    , _pDisplayName :: !(Maybe Text)
    , _pTitle :: !(Maybe Text)
    , _pBannerURLPortrait :: !(Maybe Text)
    , _pPlayerId :: !(Maybe Text)
    , _pProFileSettings :: !(Maybe ProFileSettings)
    , _pFriendStatus :: !(Maybe PlayerFriendStatus)
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
--
-- * 'pFriendStatus'
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
    , _pFriendStatus = Nothing
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
-- string \`games#player\`
pKind :: Lens' Player (Maybe Text)
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | An object to represent Play Game experience information for the player.
pExperienceInfo :: Lens' Player (Maybe PlayerExperienceInfo)
pExperienceInfo
  = lens _pExperienceInfo
      (\ s a -> s{_pExperienceInfo = a})

-- | A representation of the individual components of the name.
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

-- | The friend status of the given player, relative to the requester. This
-- is unset if the player is not sharing their friends list with the game.
pFriendStatus :: Lens' Player (Maybe PlayerFriendStatus)
pFriendStatus
  = lens _pFriendStatus
      (\ s a -> s{_pFriendStatus = a})

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
                     <*> (o .:? "profileSettings")
                     <*> (o .:? "friendStatus"))

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
                  ("profileSettings" .=) <$> _pProFileSettings,
                  ("friendStatus" .=) <$> _pFriendStatus])

-- | The payload to request to increment an achievement.
--
-- /See:/ 'gamesAchievementIncrement' smart constructor.
data GamesAchievementIncrement =
  GamesAchievementIncrement'
    { _gaiRequestId :: !(Maybe (Textual Int64))
    , _gaiKind :: !(Maybe Text)
    , _gaiSteps :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GamesAchievementIncrement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaiRequestId'
--
-- * 'gaiKind'
--
-- * 'gaiSteps'
gamesAchievementIncrement
    :: GamesAchievementIncrement
gamesAchievementIncrement =
  GamesAchievementIncrement'
    {_gaiRequestId = Nothing, _gaiKind = Nothing, _gaiSteps = Nothing}


-- | The requestId associated with an increment to an achievement.
gaiRequestId :: Lens' GamesAchievementIncrement (Maybe Int64)
gaiRequestId
  = lens _gaiRequestId (\ s a -> s{_gaiRequestId = a})
      . mapping _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#GamesAchievementIncrement\`.
gaiKind :: Lens' GamesAchievementIncrement (Maybe Text)
gaiKind = lens _gaiKind (\ s a -> s{_gaiKind = a})

-- | The number of steps to be incremented.
gaiSteps :: Lens' GamesAchievementIncrement (Maybe Int32)
gaiSteps
  = lens _gaiSteps (\ s a -> s{_gaiSteps = a}) .
      mapping _Coerce

instance FromJSON GamesAchievementIncrement where
        parseJSON
          = withObject "GamesAchievementIncrement"
              (\ o ->
                 GamesAchievementIncrement' <$>
                   (o .:? "requestId") <*> (o .:? "kind") <*>
                     (o .:? "steps"))

instance ToJSON GamesAchievementIncrement where
        toJSON GamesAchievementIncrement'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _gaiRequestId,
                  ("kind" .=) <$> _gaiKind,
                  ("steps" .=) <$> _gaiSteps])

-- | An event child relationship resource.
--
-- /See:/ 'eventChild' smart constructor.
data EventChild =
  EventChild'
    { _ecKind :: !(Maybe Text)
    , _ecChildId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventChild' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecKind'
--
-- * 'ecChildId'
eventChild
    :: EventChild
eventChild = EventChild' {_ecKind = Nothing, _ecChildId = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventChild\`.
ecKind :: Lens' EventChild (Maybe Text)
ecKind = lens _ecKind (\ s a -> s{_ecKind = a})

-- | The ID of the child event.
ecChildId :: Lens' EventChild (Maybe Text)
ecChildId
  = lens _ecChildId (\ s a -> s{_ecChildId = a})

instance FromJSON EventChild where
        parseJSON
          = withObject "EventChild"
              (\ o ->
                 EventChild' <$> (o .:? "kind") <*> (o .:? "childId"))

instance ToJSON EventChild where
        toJSON EventChild'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ecKind,
                  ("childId" .=) <$> _ecChildId])

-- | A third party application verification response resource.
--
-- /See:/ 'applicationVerifyResponse' smart constructor.
data ApplicationVerifyResponse =
  ApplicationVerifyResponse'
    { _avrKind :: !(Maybe Text)
    , _avrAlternatePlayerId :: !(Maybe Text)
    , _avrPlayerId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationVerifyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avrKind'
--
-- * 'avrAlternatePlayerId'
--
-- * 'avrPlayerId'
applicationVerifyResponse
    :: ApplicationVerifyResponse
applicationVerifyResponse =
  ApplicationVerifyResponse'
    { _avrKind = Nothing
    , _avrAlternatePlayerId = Nothing
    , _avrPlayerId = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#applicationVerifyResponse\`.
avrKind :: Lens' ApplicationVerifyResponse (Maybe Text)
avrKind = lens _avrKind (\ s a -> s{_avrKind = a})

-- | An alternate ID that was once used for the player that was issued the
-- auth token used in this request. (This field is not normally populated.)
avrAlternatePlayerId :: Lens' ApplicationVerifyResponse (Maybe Text)
avrAlternatePlayerId
  = lens _avrAlternatePlayerId
      (\ s a -> s{_avrAlternatePlayerId = a})

-- | The ID of the player that was issued the auth token used in this
-- request.
avrPlayerId :: Lens' ApplicationVerifyResponse (Maybe Text)
avrPlayerId
  = lens _avrPlayerId (\ s a -> s{_avrPlayerId = a})

instance FromJSON ApplicationVerifyResponse where
        parseJSON
          = withObject "ApplicationVerifyResponse"
              (\ o ->
                 ApplicationVerifyResponse' <$>
                   (o .:? "kind") <*> (o .:? "alternate_player_id") <*>
                     (o .:? "player_id"))

instance ToJSON ApplicationVerifyResponse where
        toJSON ApplicationVerifyResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _avrKind,
                  ("alternate_player_id" .=) <$> _avrAlternatePlayerId,
                  ("player_id" .=) <$> _avrPlayerId])

-- | A ListByPlayer response.
--
-- /See:/ 'playerEventListResponse' smart constructor.
data PlayerEventListResponse =
  PlayerEventListResponse'
    { _pelrNextPageToken :: !(Maybe Text)
    , _pelrKind :: !(Maybe Text)
    , _pelrItems :: !(Maybe [PlayerEvent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerEventListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pelrNextPageToken'
--
-- * 'pelrKind'
--
-- * 'pelrItems'
playerEventListResponse
    :: PlayerEventListResponse
playerEventListResponse =
  PlayerEventListResponse'
    {_pelrNextPageToken = Nothing, _pelrKind = Nothing, _pelrItems = Nothing}


-- | The pagination token for the next page of results.
pelrNextPageToken :: Lens' PlayerEventListResponse (Maybe Text)
pelrNextPageToken
  = lens _pelrNextPageToken
      (\ s a -> s{_pelrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerEventListResponse\`.
pelrKind :: Lens' PlayerEventListResponse (Maybe Text)
pelrKind = lens _pelrKind (\ s a -> s{_pelrKind = a})

-- | The player events.
pelrItems :: Lens' PlayerEventListResponse [PlayerEvent]
pelrItems
  = lens _pelrItems (\ s a -> s{_pelrItems = a}) .
      _Default
      . _Coerce

instance FromJSON PlayerEventListResponse where
        parseJSON
          = withObject "PlayerEventListResponse"
              (\ o ->
                 PlayerEventListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON PlayerEventListResponse where
        toJSON PlayerEventListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _pelrNextPageToken,
                  ("kind" .=) <$> _pelrKind,
                  ("items" .=) <$> _pelrItems])

-- | Profile settings
--
-- /See:/ 'proFileSettings' smart constructor.
data ProFileSettings =
  ProFileSettings'
    { _pfsProFileVisible :: !(Maybe Bool)
    , _pfsFriendsListVisibility :: !(Maybe ProFileSettingsFriendsListVisibility)
    , _pfsKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProFileSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfsProFileVisible'
--
-- * 'pfsFriendsListVisibility'
--
-- * 'pfsKind'
proFileSettings
    :: ProFileSettings
proFileSettings =
  ProFileSettings'
    { _pfsProFileVisible = Nothing
    , _pfsFriendsListVisibility = Nothing
    , _pfsKind = Nothing
    }


-- | Whether the player\'s profile is visible to the currently signed in
-- player.
pfsProFileVisible :: Lens' ProFileSettings (Maybe Bool)
pfsProFileVisible
  = lens _pfsProFileVisible
      (\ s a -> s{_pfsProFileVisible = a})

pfsFriendsListVisibility :: Lens' ProFileSettings (Maybe ProFileSettingsFriendsListVisibility)
pfsFriendsListVisibility
  = lens _pfsFriendsListVisibility
      (\ s a -> s{_pfsFriendsListVisibility = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#profileSettings\`.
pfsKind :: Lens' ProFileSettings (Maybe Text)
pfsKind = lens _pfsKind (\ s a -> s{_pfsKind = a})

instance FromJSON ProFileSettings where
        parseJSON
          = withObject "ProFileSettings"
              (\ o ->
                 ProFileSettings' <$>
                   (o .:? "profileVisible") <*>
                     (o .:? "friendsListVisibility")
                     <*> (o .:? "kind"))

instance ToJSON ProFileSettings where
        toJSON ProFileSettings'{..}
          = object
              (catMaybes
                 [("profileVisible" .=) <$> _pfsProFileVisible,
                  ("friendsListVisibility" .=) <$>
                    _pfsFriendsListVisibility,
                  ("kind" .=) <$> _pfsKind])

-- | An event period time range.
--
-- /See:/ 'eventPeriodRange' smart constructor.
data EventPeriodRange =
  EventPeriodRange'
    { _eprKind :: !(Maybe Text)
    , _eprPeriodStartMillis :: !(Maybe (Textual Int64))
    , _eprPeriodEndMillis :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventPeriodRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eprKind'
--
-- * 'eprPeriodStartMillis'
--
-- * 'eprPeriodEndMillis'
eventPeriodRange
    :: EventPeriodRange
eventPeriodRange =
  EventPeriodRange'
    { _eprKind = Nothing
    , _eprPeriodStartMillis = Nothing
    , _eprPeriodEndMillis = Nothing
    }


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventPeriodRange\`.
eprKind :: Lens' EventPeriodRange (Maybe Text)
eprKind = lens _eprKind (\ s a -> s{_eprKind = a})

-- | The time when this update period begins, in millis, since 1970 UTC (Unix
-- Epoch).
eprPeriodStartMillis :: Lens' EventPeriodRange (Maybe Int64)
eprPeriodStartMillis
  = lens _eprPeriodStartMillis
      (\ s a -> s{_eprPeriodStartMillis = a})
      . mapping _Coerce

-- | The time when this update period ends, in millis, since 1970 UTC (Unix
-- Epoch).
eprPeriodEndMillis :: Lens' EventPeriodRange (Maybe Int64)
eprPeriodEndMillis
  = lens _eprPeriodEndMillis
      (\ s a -> s{_eprPeriodEndMillis = a})
      . mapping _Coerce

instance FromJSON EventPeriodRange where
        parseJSON
          = withObject "EventPeriodRange"
              (\ o ->
                 EventPeriodRange' <$>
                   (o .:? "kind") <*> (o .:? "periodStartMillis") <*>
                     (o .:? "periodEndMillis"))

instance ToJSON EventPeriodRange where
        toJSON EventPeriodRange'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _eprKind,
                  ("periodStartMillis" .=) <$> _eprPeriodStartMillis,
                  ("periodEndMillis" .=) <$> _eprPeriodEndMillis])

-- | An event update failure resource.
--
-- /See:/ 'eventRecordFailure' smart constructor.
data EventRecordFailure =
  EventRecordFailure'
    { _erfKind :: !(Maybe Text)
    , _erfFailureCause :: !(Maybe EventRecordFailureFailureCause)
    , _erfEventId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventRecordFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erfKind'
--
-- * 'erfFailureCause'
--
-- * 'erfEventId'
eventRecordFailure
    :: EventRecordFailure
eventRecordFailure =
  EventRecordFailure'
    {_erfKind = Nothing, _erfFailureCause = Nothing, _erfEventId = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#eventRecordFailure\`.
erfKind :: Lens' EventRecordFailure (Maybe Text)
erfKind = lens _erfKind (\ s a -> s{_erfKind = a})

-- | The cause for the update failure.
erfFailureCause :: Lens' EventRecordFailure (Maybe EventRecordFailureFailureCause)
erfFailureCause
  = lens _erfFailureCause
      (\ s a -> s{_erfFailureCause = a})

-- | The ID of the event that was not updated.
erfEventId :: Lens' EventRecordFailure (Maybe Text)
erfEventId
  = lens _erfEventId (\ s a -> s{_erfEventId = a})

instance FromJSON EventRecordFailure where
        parseJSON
          = withObject "EventRecordFailure"
              (\ o ->
                 EventRecordFailure' <$>
                   (o .:? "kind") <*> (o .:? "failureCause") <*>
                     (o .:? "eventId"))

instance ToJSON EventRecordFailure where
        toJSON EventRecordFailure'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _erfKind,
                  ("failureCause" .=) <$> _erfFailureCause,
                  ("eventId" .=) <$> _erfEventId])

-- | A list of score submission requests.
--
-- /See:/ 'playerScoreSubmissionList' smart constructor.
data PlayerScoreSubmissionList =
  PlayerScoreSubmissionList'
    { _psslKind :: !(Maybe Text)
    , _psslScores :: !(Maybe [ScoreSubmission])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayerScoreSubmissionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psslKind'
--
-- * 'psslScores'
playerScoreSubmissionList
    :: PlayerScoreSubmissionList
playerScoreSubmissionList =
  PlayerScoreSubmissionList' {_psslKind = Nothing, _psslScores = Nothing}


-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#playerScoreSubmissionList\`.
psslKind :: Lens' PlayerScoreSubmissionList (Maybe Text)
psslKind = lens _psslKind (\ s a -> s{_psslKind = a})

-- | The score submissions.
psslScores :: Lens' PlayerScoreSubmissionList [ScoreSubmission]
psslScores
  = lens _psslScores (\ s a -> s{_psslScores = a}) .
      _Default
      . _Coerce

instance FromJSON PlayerScoreSubmissionList where
        parseJSON
          = withObject "PlayerScoreSubmissionList"
              (\ o ->
                 PlayerScoreSubmissionList' <$>
                   (o .:? "kind") <*> (o .:? "scores" .!= mempty))

instance ToJSON PlayerScoreSubmissionList where
        toJSON PlayerScoreSubmissionList'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _psslKind,
                  ("scores" .=) <$> _psslScores])

-- | The Instance resource.
--
-- /See:/ 'instance'' smart constructor.
data Instance =
  Instance'
    { _iAndroidInstance :: !(Maybe InstanceAndroidDetails)
    , _iKind :: !(Maybe Text)
    , _iWebInstance :: !(Maybe InstanceWebDetails)
    , _iIosInstance :: !(Maybe InstanceIosDetails)
    , _iName :: !(Maybe Text)
    , _iAcquisitionURI :: !(Maybe Text)
    , _iPlatformType :: !(Maybe InstancePlatformType)
    , _iTurnBasedPlay :: !(Maybe Bool)
    , _iRealtimePlay :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAndroidInstance'
--
-- * 'iKind'
--
-- * 'iWebInstance'
--
-- * 'iIosInstance'
--
-- * 'iName'
--
-- * 'iAcquisitionURI'
--
-- * 'iPlatformType'
--
-- * 'iTurnBasedPlay'
--
-- * 'iRealtimePlay'
instance'
    :: Instance
instance' =
  Instance'
    { _iAndroidInstance = Nothing
    , _iKind = Nothing
    , _iWebInstance = Nothing
    , _iIosInstance = Nothing
    , _iName = Nothing
    , _iAcquisitionURI = Nothing
    , _iPlatformType = Nothing
    , _iTurnBasedPlay = Nothing
    , _iRealtimePlay = Nothing
    }


-- | Platform dependent details for Android.
iAndroidInstance :: Lens' Instance (Maybe InstanceAndroidDetails)
iAndroidInstance
  = lens _iAndroidInstance
      (\ s a -> s{_iAndroidInstance = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string \`games#instance\`.
iKind :: Lens' Instance (Maybe Text)
iKind = lens _iKind (\ s a -> s{_iKind = a})

-- | Platform dependent details for Web.
iWebInstance :: Lens' Instance (Maybe InstanceWebDetails)
iWebInstance
  = lens _iWebInstance (\ s a -> s{_iWebInstance = a})

-- | Platform dependent details for iOS.
iIosInstance :: Lens' Instance (Maybe InstanceIosDetails)
iIosInstance
  = lens _iIosInstance (\ s a -> s{_iIosInstance = a})

-- | Localized display name.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | URI which shows where a user can acquire this instance.
iAcquisitionURI :: Lens' Instance (Maybe Text)
iAcquisitionURI
  = lens _iAcquisitionURI
      (\ s a -> s{_iAcquisitionURI = a})

-- | The platform type.
iPlatformType :: Lens' Instance (Maybe InstancePlatformType)
iPlatformType
  = lens _iPlatformType
      (\ s a -> s{_iPlatformType = a})

-- | Flag to show if this game instance supports turn based play.
iTurnBasedPlay :: Lens' Instance (Maybe Bool)
iTurnBasedPlay
  = lens _iTurnBasedPlay
      (\ s a -> s{_iTurnBasedPlay = a})

-- | Flag to show if this game instance supports realtime play.
iRealtimePlay :: Lens' Instance (Maybe Bool)
iRealtimePlay
  = lens _iRealtimePlay
      (\ s a -> s{_iRealtimePlay = a})

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
                   (o .:? "androidInstance") <*> (o .:? "kind") <*>
                     (o .:? "webInstance")
                     <*> (o .:? "iosInstance")
                     <*> (o .:? "name")
                     <*> (o .:? "acquisitionUri")
                     <*> (o .:? "platformType")
                     <*> (o .:? "turnBasedPlay")
                     <*> (o .:? "realtimePlay"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("androidInstance" .=) <$> _iAndroidInstance,
                  ("kind" .=) <$> _iKind,
                  ("webInstance" .=) <$> _iWebInstance,
                  ("iosInstance" .=) <$> _iIosInstance,
                  ("name" .=) <$> _iName,
                  ("acquisitionUri" .=) <$> _iAcquisitionURI,
                  ("platformType" .=) <$> _iPlatformType,
                  ("turnBasedPlay" .=) <$> _iTurnBasedPlay,
                  ("realtimePlay" .=) <$> _iRealtimePlay])
