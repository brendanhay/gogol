{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.Types.Product where

import           Network.Google.Games.Types.Sum
import           Network.Google.Prelude

-- | This is a JSON template for a join room request.
--
-- /See:/ 'roomJoinRequest' smart constructor.
data RoomJoinRequest = RoomJoinRequest
    { _rjrNetworkDiagnostics :: !(Maybe NetworkDiagnostics)
    , _rjrKind               :: !Text
    , _rjrClientAddress      :: !(Maybe RoomClientAddress)
    , _rjrCapabilities       :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomJoinRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rjrNetworkDiagnostics'
--
-- * 'rjrKind'
--
-- * 'rjrClientAddress'
--
-- * 'rjrCapabilities'
roomJoinRequest
    :: RoomJoinRequest
roomJoinRequest =
    RoomJoinRequest
    { _rjrNetworkDiagnostics = Nothing
    , _rjrKind = "games#roomJoinRequest"
    , _rjrClientAddress = Nothing
    , _rjrCapabilities = Nothing
    }

-- | Network diagnostics for the client joining the room.
rjrNetworkDiagnostics :: Lens' RoomJoinRequest (Maybe NetworkDiagnostics)
rjrNetworkDiagnostics
  = lens _rjrNetworkDiagnostics
      (\ s a -> s{_rjrNetworkDiagnostics = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomJoinRequest.
rjrKind :: Lens' RoomJoinRequest Text
rjrKind = lens _rjrKind (\ s a -> s{_rjrKind = a})

-- | Client address for the player joining the room.
rjrClientAddress :: Lens' RoomJoinRequest (Maybe RoomClientAddress)
rjrClientAddress
  = lens _rjrClientAddress
      (\ s a -> s{_rjrClientAddress = a})

-- | The capabilities that this client supports for realtime communication.
rjrCapabilities :: Lens' RoomJoinRequest [Text]
rjrCapabilities
  = lens _rjrCapabilities
      (\ s a -> s{_rjrCapabilities = a})
      . _Default
      . _Coerce

instance FromJSON RoomJoinRequest where
        parseJSON
          = withObject "RoomJoinRequest"
              (\ o ->
                 RoomJoinRequest <$>
                   (o .:? "networkDiagnostics") <*>
                     (o .:? "kind" .!= "games#roomJoinRequest")
                     <*> (o .:? "clientAddress")
                     <*> (o .:? "capabilities" .!= mempty))

instance ToJSON RoomJoinRequest where
        toJSON RoomJoinRequest{..}
          = object
              (catMaybes
                 [("networkDiagnostics" .=) <$>
                    _rjrNetworkDiagnostics,
                  Just ("kind" .= _rjrKind),
                  ("clientAddress" .=) <$> _rjrClientAddress,
                  ("capabilities" .=) <$> _rjrCapabilities])

-- | An object representation of the individual components of the player\'s
-- name. For some players, these fields may not be present.
--
-- /See:/ 'playerName' smart constructor.
data PlayerName = PlayerName
    { _pnGivenName  :: !(Maybe Text)
    , _pnFamilyName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayerName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnGivenName'
--
-- * 'pnFamilyName'
playerName
    :: PlayerName
playerName =
    PlayerName
    { _pnGivenName = Nothing
    , _pnFamilyName = Nothing
    }

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
                 PlayerName <$>
                   (o .:? "givenName") <*> (o .:? "familyName"))

instance ToJSON PlayerName where
        toJSON PlayerName{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _pnGivenName,
                  ("familyName" .=) <$> _pnFamilyName])

-- | This is a JSON template for an snapshot object.
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot = Snapshot
    { _sLastModifiedMillis :: !(Maybe Int64)
    , _sKind               :: !Text
    , _sProgressValue      :: !(Maybe Int64)
    , _sUniqueName         :: !(Maybe Text)
    , _sCoverImage         :: !(Maybe SnapshotImage)
    , _sId                 :: !(Maybe Text)
    , _sDurationMillis     :: !(Maybe Int64)
    , _sTitle              :: !(Maybe Text)
    , _sType               :: !(Maybe Text)
    , _sDescription        :: !(Maybe Text)
    , _sDriveId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Snapshot
    { _sLastModifiedMillis = Nothing
    , _sKind = "games#snapshot"
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

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#snapshot.
sKind :: Lens' Snapshot Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The progress value (64-bit integer set by developer) associated with
-- this snapshot.
sProgressValue :: Lens' Snapshot (Maybe Int64)
sProgressValue
  = lens _sProgressValue
      (\ s a -> s{_sProgressValue = a})

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

-- | The title of this snapshot.
sTitle :: Lens' Snapshot (Maybe Text)
sTitle = lens _sTitle (\ s a -> s{_sTitle = a})

-- | The type of this snapshot. Possible values are: - \"SAVE_GAME\" - A
-- snapshot representing a save game.
sType :: Lens' Snapshot (Maybe Text)
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
                 Snapshot <$>
                   (o .:? "lastModifiedMillis") <*>
                     (o .:? "kind" .!= "games#snapshot")
                     <*> (o .:? "progressValue")
                     <*> (o .:? "uniqueName")
                     <*> (o .:? "coverImage")
                     <*> (o .:? "id")
                     <*> (o .:? "durationMillis")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "driveId"))

instance ToJSON Snapshot where
        toJSON Snapshot{..}
          = object
              (catMaybes
                 [("lastModifiedMillis" .=) <$> _sLastModifiedMillis,
                  Just ("kind" .= _sKind),
                  ("progressValue" .=) <$> _sProgressValue,
                  ("uniqueName" .=) <$> _sUniqueName,
                  ("coverImage" .=) <$> _sCoverImage,
                  ("id" .=) <$> _sId,
                  ("durationMillis" .=) <$> _sDurationMillis,
                  ("title" .=) <$> _sTitle, ("type" .=) <$> _sType,
                  ("description" .=) <$> _sDescription,
                  ("driveId" .=) <$> _sDriveId])

-- | This is a JSON template for a room resource object.
--
-- /See:/ 'room' smart constructor.
data Room = Room
    { _rStatus               :: !(Maybe Text)
    , _rVariant              :: !(Maybe Int32)
    , _rKind                 :: !Text
    , _rAutoMatchingStatus   :: !(Maybe RoomAutoMatchStatus)
    , _rCreationDetails      :: !(Maybe RoomModification)
    , _rInviterId            :: !(Maybe Text)
    , _rLastUpdateDetails    :: !(Maybe RoomModification)
    , _rRoomStatusVersion    :: !(Maybe Int32)
    , _rParticipants         :: !(Maybe [RoomParticipant])
    , _rApplicationId        :: !(Maybe Text)
    , _rAutoMatchingCriteria :: !(Maybe RoomAutoMatchingCriteria)
    , _rRoomId               :: !(Maybe Text)
    , _rDescription          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Room' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStatus'
--
-- * 'rVariant'
--
-- * 'rKind'
--
-- * 'rAutoMatchingStatus'
--
-- * 'rCreationDetails'
--
-- * 'rInviterId'
--
-- * 'rLastUpdateDetails'
--
-- * 'rRoomStatusVersion'
--
-- * 'rParticipants'
--
-- * 'rApplicationId'
--
-- * 'rAutoMatchingCriteria'
--
-- * 'rRoomId'
--
-- * 'rDescription'
room
    :: Room
room =
    Room
    { _rStatus = Nothing
    , _rVariant = Nothing
    , _rKind = "games#room"
    , _rAutoMatchingStatus = Nothing
    , _rCreationDetails = Nothing
    , _rInviterId = Nothing
    , _rLastUpdateDetails = Nothing
    , _rRoomStatusVersion = Nothing
    , _rParticipants = Nothing
    , _rApplicationId = Nothing
    , _rAutoMatchingCriteria = Nothing
    , _rRoomId = Nothing
    , _rDescription = Nothing
    }

-- | The status of the room. Possible values are: - \"ROOM_INVITING\" - One
-- or more players have been invited and not responded. -
-- \"ROOM_AUTO_MATCHING\" - One or more slots need to be filled by
-- auto-matching. - \"ROOM_CONNECTING\" - Players have joined and are
-- connecting to each other (either before or after auto-matching). -
-- \"ROOM_ACTIVE\" - All players have joined and connected to each other. -
-- \"ROOM_DELETED\" - The room should no longer be shown on the client.
-- Returned in sync calls when a player joins a room (as a tombstone), or
-- for rooms where all joined participants have left.
rStatus :: Lens' Room (Maybe Text)
rStatus = lens _rStatus (\ s a -> s{_rStatus = a})

-- | The variant \/ mode of the application being played; can be any integer
-- value, or left blank.
rVariant :: Lens' Room (Maybe Int32)
rVariant = lens _rVariant (\ s a -> s{_rVariant = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#room.
rKind :: Lens' Room Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | Auto-matching status for this room. Not set if the room is not currently
-- in the auto-matching queue.
rAutoMatchingStatus :: Lens' Room (Maybe RoomAutoMatchStatus)
rAutoMatchingStatus
  = lens _rAutoMatchingStatus
      (\ s a -> s{_rAutoMatchingStatus = a})

-- | Details about the room creation.
rCreationDetails :: Lens' Room (Maybe RoomModification)
rCreationDetails
  = lens _rCreationDetails
      (\ s a -> s{_rCreationDetails = a})

-- | The ID of the participant that invited the user to the room. Not set if
-- the user was not invited to the room.
rInviterId :: Lens' Room (Maybe Text)
rInviterId
  = lens _rInviterId (\ s a -> s{_rInviterId = a})

-- | Details about the last update to the room.
rLastUpdateDetails :: Lens' Room (Maybe RoomModification)
rLastUpdateDetails
  = lens _rLastUpdateDetails
      (\ s a -> s{_rLastUpdateDetails = a})

-- | The version of the room status: an increasing counter, used by the
-- client to ignore out-of-order updates to room status.
rRoomStatusVersion :: Lens' Room (Maybe Int32)
rRoomStatusVersion
  = lens _rRoomStatusVersion
      (\ s a -> s{_rRoomStatusVersion = a})

-- | The participants involved in the room, along with their statuses.
-- Includes participants who have left or declined invitations.
rParticipants :: Lens' Room [RoomParticipant]
rParticipants
  = lens _rParticipants
      (\ s a -> s{_rParticipants = a})
      . _Default
      . _Coerce

-- | The ID of the application being played.
rApplicationId :: Lens' Room (Maybe Text)
rApplicationId
  = lens _rApplicationId
      (\ s a -> s{_rApplicationId = a})

-- | Criteria for auto-matching players into this room.
rAutoMatchingCriteria :: Lens' Room (Maybe RoomAutoMatchingCriteria)
rAutoMatchingCriteria
  = lens _rAutoMatchingCriteria
      (\ s a -> s{_rAutoMatchingCriteria = a})

-- | Globally unique ID for a room.
rRoomId :: Lens' Room (Maybe Text)
rRoomId = lens _rRoomId (\ s a -> s{_rRoomId = a})

-- | This short description is generated by our servers and worded relative
-- to the player requesting the room. It is intended to be displayed when
-- the room is shown in a list (that is, an invitation to a room.)
rDescription :: Lens' Room (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

instance FromJSON Room where
        parseJSON
          = withObject "Room"
              (\ o ->
                 Room <$>
                   (o .:? "status") <*> (o .:? "variant") <*>
                     (o .:? "kind" .!= "games#room")
                     <*> (o .:? "autoMatchingStatus")
                     <*> (o .:? "creationDetails")
                     <*> (o .:? "inviterId")
                     <*> (o .:? "lastUpdateDetails")
                     <*> (o .:? "roomStatusVersion")
                     <*> (o .:? "participants" .!= mempty)
                     <*> (o .:? "applicationId")
                     <*> (o .:? "autoMatchingCriteria")
                     <*> (o .:? "roomId")
                     <*> (o .:? "description"))

instance ToJSON Room where
        toJSON Room{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rStatus,
                  ("variant" .=) <$> _rVariant,
                  Just ("kind" .= _rKind),
                  ("autoMatchingStatus" .=) <$> _rAutoMatchingStatus,
                  ("creationDetails" .=) <$> _rCreationDetails,
                  ("inviterId" .=) <$> _rInviterId,
                  ("lastUpdateDetails" .=) <$> _rLastUpdateDetails,
                  ("roomStatusVersion" .=) <$> _rRoomStatusVersion,
                  ("participants" .=) <$> _rParticipants,
                  ("applicationId" .=) <$> _rApplicationId,
                  ("autoMatchingCriteria" .=) <$>
                    _rAutoMatchingCriteria,
                  ("roomId" .=) <$> _rRoomId,
                  ("description" .=) <$> _rDescription])

-- | This is a JSON template for a list of quest objects.
--
-- /See:/ 'questListResponse' smart constructor.
data QuestListResponse = QuestListResponse
    { _qlrNextPageToken :: !(Maybe Text)
    , _qlrKind          :: !Text
    , _qlrItems         :: !(Maybe [Quest])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlrNextPageToken'
--
-- * 'qlrKind'
--
-- * 'qlrItems'
questListResponse
    :: QuestListResponse
questListResponse =
    QuestListResponse
    { _qlrNextPageToken = Nothing
    , _qlrKind = "games#questListResponse"
    , _qlrItems = Nothing
    }

-- | Token corresponding to the next page of results.
qlrNextPageToken :: Lens' QuestListResponse (Maybe Text)
qlrNextPageToken
  = lens _qlrNextPageToken
      (\ s a -> s{_qlrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#questListResponse.
qlrKind :: Lens' QuestListResponse Text
qlrKind = lens _qlrKind (\ s a -> s{_qlrKind = a})

-- | The quests.
qlrItems :: Lens' QuestListResponse [Quest]
qlrItems
  = lens _qlrItems (\ s a -> s{_qlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON QuestListResponse where
        parseJSON
          = withObject "QuestListResponse"
              (\ o ->
                 QuestListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#questListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON QuestListResponse where
        toJSON QuestListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _qlrNextPageToken,
                  Just ("kind" .= _qlrKind),
                  ("items" .=) <$> _qlrItems])

-- | This is a JSON template for a turn-based match resource object.
--
-- /See:/ 'turnBasedMatch' smart constructor.
data TurnBasedMatch = TurnBasedMatch
    { _tbmStatus               :: !(Maybe Text)
    , _tbmVariant              :: !(Maybe Int32)
    , _tbmResults              :: !(Maybe [ParticipantResult])
    , _tbmMatchNumber          :: !(Maybe Int32)
    , _tbmKind                 :: !Text
    , _tbmData                 :: !(Maybe TurnBasedMatchData)
    , _tbmWithParticipantId    :: !(Maybe Text)
    , _tbmCreationDetails      :: !(Maybe TurnBasedMatchModification)
    , _tbmInviterId            :: !(Maybe Text)
    , _tbmLastUpdateDetails    :: !(Maybe TurnBasedMatchModification)
    , _tbmParticipants         :: !(Maybe [TurnBasedMatchParticipant])
    , _tbmApplicationId        :: !(Maybe Text)
    , _tbmAutoMatchingCriteria :: !(Maybe TurnBasedAutoMatchingCriteria)
    , _tbmPreviousMatchData    :: !(Maybe TurnBasedMatchData)
    , _tbmPendingParticipantId :: !(Maybe Text)
    , _tbmUserMatchStatus      :: !(Maybe Text)
    , _tbmMatchId              :: !(Maybe Text)
    , _tbmDescription          :: !(Maybe Text)
    , _tbmRematchId            :: !(Maybe Text)
    , _tbmMatchVersion         :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmStatus'
--
-- * 'tbmVariant'
--
-- * 'tbmResults'
--
-- * 'tbmMatchNumber'
--
-- * 'tbmKind'
--
-- * 'tbmData'
--
-- * 'tbmWithParticipantId'
--
-- * 'tbmCreationDetails'
--
-- * 'tbmInviterId'
--
-- * 'tbmLastUpdateDetails'
--
-- * 'tbmParticipants'
--
-- * 'tbmApplicationId'
--
-- * 'tbmAutoMatchingCriteria'
--
-- * 'tbmPreviousMatchData'
--
-- * 'tbmPendingParticipantId'
--
-- * 'tbmUserMatchStatus'
--
-- * 'tbmMatchId'
--
-- * 'tbmDescription'
--
-- * 'tbmRematchId'
--
-- * 'tbmMatchVersion'
turnBasedMatch
    :: TurnBasedMatch
turnBasedMatch =
    TurnBasedMatch
    { _tbmStatus = Nothing
    , _tbmVariant = Nothing
    , _tbmResults = Nothing
    , _tbmMatchNumber = Nothing
    , _tbmKind = "games#turnBasedMatch"
    , _tbmData = Nothing
    , _tbmWithParticipantId = Nothing
    , _tbmCreationDetails = Nothing
    , _tbmInviterId = Nothing
    , _tbmLastUpdateDetails = Nothing
    , _tbmParticipants = Nothing
    , _tbmApplicationId = Nothing
    , _tbmAutoMatchingCriteria = Nothing
    , _tbmPreviousMatchData = Nothing
    , _tbmPendingParticipantId = Nothing
    , _tbmUserMatchStatus = Nothing
    , _tbmMatchId = Nothing
    , _tbmDescription = Nothing
    , _tbmRematchId = Nothing
    , _tbmMatchVersion = Nothing
    }

-- | The status of the match. Possible values are: - \"MATCH_AUTO_MATCHING\"
-- - One or more slots need to be filled by auto-matching; the match cannot
-- be established until they are filled. - \"MATCH_ACTIVE\" - The match has
-- started. - \"MATCH_COMPLETE\" - The match has finished. -
-- \"MATCH_CANCELED\" - The match was canceled. - \"MATCH_EXPIRED\" - The
-- match expired due to inactivity. - \"MATCH_DELETED\" - The match should
-- no longer be shown on the client. Returned only for tombstones for
-- matches when sync is called.
tbmStatus :: Lens' TurnBasedMatch (Maybe Text)
tbmStatus
  = lens _tbmStatus (\ s a -> s{_tbmStatus = a})

-- | The variant \/ mode of the application being played; can be any integer
-- value, or left blank.
tbmVariant :: Lens' TurnBasedMatch (Maybe Int32)
tbmVariant
  = lens _tbmVariant (\ s a -> s{_tbmVariant = a})

-- | The results reported for this match.
tbmResults :: Lens' TurnBasedMatch [ParticipantResult]
tbmResults
  = lens _tbmResults (\ s a -> s{_tbmResults = a}) .
      _Default
      . _Coerce

-- | The number of the match in a chain of rematches. Will be set to 1 for
-- the first match and incremented by 1 for each rematch.
tbmMatchNumber :: Lens' TurnBasedMatch (Maybe Int32)
tbmMatchNumber
  = lens _tbmMatchNumber
      (\ s a -> s{_tbmMatchNumber = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatch.
tbmKind :: Lens' TurnBasedMatch Text
tbmKind = lens _tbmKind (\ s a -> s{_tbmKind = a})

-- | The data \/ game state for this match.
tbmData :: Lens' TurnBasedMatch (Maybe TurnBasedMatchData)
tbmData = lens _tbmData (\ s a -> s{_tbmData = a})

-- | The ID of another participant in the match that can be used when
-- describing the participants the user is playing with.
tbmWithParticipantId :: Lens' TurnBasedMatch (Maybe Text)
tbmWithParticipantId
  = lens _tbmWithParticipantId
      (\ s a -> s{_tbmWithParticipantId = a})

-- | Details about the match creation.
tbmCreationDetails :: Lens' TurnBasedMatch (Maybe TurnBasedMatchModification)
tbmCreationDetails
  = lens _tbmCreationDetails
      (\ s a -> s{_tbmCreationDetails = a})

-- | The ID of the participant that invited the user to the match. Not set if
-- the user was not invited to the match.
tbmInviterId :: Lens' TurnBasedMatch (Maybe Text)
tbmInviterId
  = lens _tbmInviterId (\ s a -> s{_tbmInviterId = a})

-- | Details about the last update to the match.
tbmLastUpdateDetails :: Lens' TurnBasedMatch (Maybe TurnBasedMatchModification)
tbmLastUpdateDetails
  = lens _tbmLastUpdateDetails
      (\ s a -> s{_tbmLastUpdateDetails = a})

-- | The participants involved in the match, along with their statuses.
-- Includes participants who have left or declined invitations.
tbmParticipants :: Lens' TurnBasedMatch [TurnBasedMatchParticipant]
tbmParticipants
  = lens _tbmParticipants
      (\ s a -> s{_tbmParticipants = a})
      . _Default
      . _Coerce

-- | The ID of the application being played.
tbmApplicationId :: Lens' TurnBasedMatch (Maybe Text)
tbmApplicationId
  = lens _tbmApplicationId
      (\ s a -> s{_tbmApplicationId = a})

-- | Criteria for auto-matching players into this match.
tbmAutoMatchingCriteria :: Lens' TurnBasedMatch (Maybe TurnBasedAutoMatchingCriteria)
tbmAutoMatchingCriteria
  = lens _tbmAutoMatchingCriteria
      (\ s a -> s{_tbmAutoMatchingCriteria = a})

-- | The data \/ game state for the previous match; set for the first turn of
-- rematches only.
tbmPreviousMatchData :: Lens' TurnBasedMatch (Maybe TurnBasedMatchData)
tbmPreviousMatchData
  = lens _tbmPreviousMatchData
      (\ s a -> s{_tbmPreviousMatchData = a})

-- | The ID of the participant that is taking a turn.
tbmPendingParticipantId :: Lens' TurnBasedMatch (Maybe Text)
tbmPendingParticipantId
  = lens _tbmPendingParticipantId
      (\ s a -> s{_tbmPendingParticipantId = a})

-- | The status of the current user in the match. Derived from the match
-- type, match status, the user\'s participant status, and the pending
-- participant for the match. Possible values are: - \"USER_INVITED\" - The
-- user has been invited to join the match and has not responded yet. -
-- \"USER_AWAITING_TURN\" - The user is waiting for their turn. -
-- \"USER_TURN\" - The user has an action to take in the match. -
-- \"USER_MATCH_COMPLETED\" - The match has ended (it is completed,
-- canceled, or expired.)
tbmUserMatchStatus :: Lens' TurnBasedMatch (Maybe Text)
tbmUserMatchStatus
  = lens _tbmUserMatchStatus
      (\ s a -> s{_tbmUserMatchStatus = a})

-- | Globally unique ID for a turn-based match.
tbmMatchId :: Lens' TurnBasedMatch (Maybe Text)
tbmMatchId
  = lens _tbmMatchId (\ s a -> s{_tbmMatchId = a})

-- | This short description is generated by our servers based on turn state
-- and is localized and worded relative to the player requesting the match.
-- It is intended to be displayed when the match is shown in a list.
tbmDescription :: Lens' TurnBasedMatch (Maybe Text)
tbmDescription
  = lens _tbmDescription
      (\ s a -> s{_tbmDescription = a})

-- | The ID of a rematch of this match. Only set for completed matches that
-- have been rematched.
tbmRematchId :: Lens' TurnBasedMatch (Maybe Text)
tbmRematchId
  = lens _tbmRematchId (\ s a -> s{_tbmRematchId = a})

-- | The version of this match: an increasing counter, used to avoid
-- out-of-date updates to the match.
tbmMatchVersion :: Lens' TurnBasedMatch (Maybe Int32)
tbmMatchVersion
  = lens _tbmMatchVersion
      (\ s a -> s{_tbmMatchVersion = a})

instance FromJSON TurnBasedMatch where
        parseJSON
          = withObject "TurnBasedMatch"
              (\ o ->
                 TurnBasedMatch <$>
                   (o .:? "status") <*> (o .:? "variant") <*>
                     (o .:? "results" .!= mempty)
                     <*> (o .:? "matchNumber")
                     <*> (o .:? "kind" .!= "games#turnBasedMatch")
                     <*> (o .:? "data")
                     <*> (o .:? "withParticipantId")
                     <*> (o .:? "creationDetails")
                     <*> (o .:? "inviterId")
                     <*> (o .:? "lastUpdateDetails")
                     <*> (o .:? "participants" .!= mempty)
                     <*> (o .:? "applicationId")
                     <*> (o .:? "autoMatchingCriteria")
                     <*> (o .:? "previousMatchData")
                     <*> (o .:? "pendingParticipantId")
                     <*> (o .:? "userMatchStatus")
                     <*> (o .:? "matchId")
                     <*> (o .:? "description")
                     <*> (o .:? "rematchId")
                     <*> (o .:? "matchVersion"))

instance ToJSON TurnBasedMatch where
        toJSON TurnBasedMatch{..}
          = object
              (catMaybes
                 [("status" .=) <$> _tbmStatus,
                  ("variant" .=) <$> _tbmVariant,
                  ("results" .=) <$> _tbmResults,
                  ("matchNumber" .=) <$> _tbmMatchNumber,
                  Just ("kind" .= _tbmKind), ("data" .=) <$> _tbmData,
                  ("withParticipantId" .=) <$> _tbmWithParticipantId,
                  ("creationDetails" .=) <$> _tbmCreationDetails,
                  ("inviterId" .=) <$> _tbmInviterId,
                  ("lastUpdateDetails" .=) <$> _tbmLastUpdateDetails,
                  ("participants" .=) <$> _tbmParticipants,
                  ("applicationId" .=) <$> _tbmApplicationId,
                  ("autoMatchingCriteria" .=) <$>
                    _tbmAutoMatchingCriteria,
                  ("previousMatchData" .=) <$> _tbmPreviousMatchData,
                  ("pendingParticipantId" .=) <$>
                    _tbmPendingParticipantId,
                  ("userMatchStatus" .=) <$> _tbmUserMatchStatus,
                  ("matchId" .=) <$> _tbmMatchId,
                  ("description" .=) <$> _tbmDescription,
                  ("rematchId" .=) <$> _tbmRematchId,
                  ("matchVersion" .=) <$> _tbmMatchVersion])

-- | This is a JSON template for a turn-based match data object.
--
-- /See:/ 'turnBasedMatchData' smart constructor.
data TurnBasedMatchData = TurnBasedMatchData
    { _tbmdKind          :: !Text
    , _tbmdData          :: !(Maybe Word8)
    , _tbmdDataAvailable :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmdKind'
--
-- * 'tbmdData'
--
-- * 'tbmdDataAvailable'
turnBasedMatchData
    :: TurnBasedMatchData
turnBasedMatchData =
    TurnBasedMatchData
    { _tbmdKind = "games#turnBasedMatchData"
    , _tbmdData = Nothing
    , _tbmdDataAvailable = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchData.
tbmdKind :: Lens' TurnBasedMatchData Text
tbmdKind = lens _tbmdKind (\ s a -> s{_tbmdKind = a})

-- | The byte representation of the data (limited to 128 kB), as a
-- Base64-encoded string with the URL_SAFE encoding option.
tbmdData :: Lens' TurnBasedMatchData (Maybe Word8)
tbmdData = lens _tbmdData (\ s a -> s{_tbmdData = a})

-- | True if this match has data available but it wasn\'t returned in a list
-- response; fetching the match individually will retrieve this data.
tbmdDataAvailable :: Lens' TurnBasedMatchData (Maybe Bool)
tbmdDataAvailable
  = lens _tbmdDataAvailable
      (\ s a -> s{_tbmdDataAvailable = a})

instance FromJSON TurnBasedMatchData where
        parseJSON
          = withObject "TurnBasedMatchData"
              (\ o ->
                 TurnBasedMatchData <$>
                   (o .:? "kind" .!= "games#turnBasedMatchData") <*>
                     (o .:? "data")
                     <*> (o .:? "dataAvailable"))

instance ToJSON TurnBasedMatchData where
        toJSON TurnBasedMatchData{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tbmdKind),
                  ("data" .=) <$> _tbmdData,
                  ("dataAvailable" .=) <$> _tbmdDataAvailable])

-- | This is a JSON template for an event status resource.
--
-- /See:/ 'playerEvent' smart constructor.
data PlayerEvent = PlayerEvent
    { _peKind               :: !Text
    , _peNumEvents          :: !(Maybe Int64)
    , _peFormattedNumEvents :: !(Maybe Text)
    , _peDefinitionId       :: !(Maybe Text)
    , _pePlayerId           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerEvent
    { _peKind = "games#playerEvent"
    , _peNumEvents = Nothing
    , _peFormattedNumEvents = Nothing
    , _peDefinitionId = Nothing
    , _pePlayerId = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerEvent.
peKind :: Lens' PlayerEvent Text
peKind = lens _peKind (\ s a -> s{_peKind = a})

-- | The current number of times this event has occurred.
peNumEvents :: Lens' PlayerEvent (Maybe Int64)
peNumEvents
  = lens _peNumEvents (\ s a -> s{_peNumEvents = a})

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
                 PlayerEvent <$>
                   (o .:? "kind" .!= "games#playerEvent") <*>
                     (o .:? "numEvents")
                     <*> (o .:? "formattedNumEvents")
                     <*> (o .:? "definitionId")
                     <*> (o .:? "playerId"))

instance ToJSON PlayerEvent where
        toJSON PlayerEvent{..}
          = object
              (catMaybes
                 [Just ("kind" .= _peKind),
                  ("numEvents" .=) <$> _peNumEvents,
                  ("formattedNumEvents" .=) <$> _peFormattedNumEvents,
                  ("definitionId" .=) <$> _peDefinitionId,
                  ("playerId" .=) <$> _pePlayerId])

-- | This is a JSON template for a player leaderboard score object.
--
-- /See:/ 'playerLeaderboardScore' smart constructor.
data PlayerLeaderboardScore = PlayerLeaderboardScore
    { _plsScoreTag       :: !(Maybe Text)
    , _plsScoreString    :: !(Maybe Text)
    , _plsKind           :: !Text
    , _plsScoreValue     :: !(Maybe Int64)
    , _plsTimeSpan       :: !(Maybe Text)
    , _plsPublicRank     :: !(Maybe LeaderboardScoreRank)
    , _plsSocialRank     :: !(Maybe LeaderboardScoreRank)
    , _plsLeaderboardId  :: !(Maybe Text)
    , _plsWriteTimestamp :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerLeaderboardScore
    { _plsScoreTag = Nothing
    , _plsScoreString = Nothing
    , _plsKind = "games#playerLeaderboardScore"
    , _plsScoreValue = Nothing
    , _plsTimeSpan = Nothing
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
-- string games#playerLeaderboardScore.
plsKind :: Lens' PlayerLeaderboardScore Text
plsKind = lens _plsKind (\ s a -> s{_plsKind = a})

-- | The numerical value of this score.
plsScoreValue :: Lens' PlayerLeaderboardScore (Maybe Int64)
plsScoreValue
  = lens _plsScoreValue
      (\ s a -> s{_plsScoreValue = a})

-- | The time span of this score. Possible values are: - \"ALL_TIME\" - The
-- score is an all-time score. - \"WEEKLY\" - The score is a weekly score.
-- - \"DAILY\" - The score is a daily score.
plsTimeSpan :: Lens' PlayerLeaderboardScore (Maybe Text)
plsTimeSpan
  = lens _plsTimeSpan (\ s a -> s{_plsTimeSpan = a})

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

instance FromJSON PlayerLeaderboardScore where
        parseJSON
          = withObject "PlayerLeaderboardScore"
              (\ o ->
                 PlayerLeaderboardScore <$>
                   (o .:? "scoreTag") <*> (o .:? "scoreString") <*>
                     (o .:? "kind" .!= "games#playerLeaderboardScore")
                     <*> (o .:? "scoreValue")
                     <*> (o .:? "timeSpan")
                     <*> (o .:? "publicRank")
                     <*> (o .:? "socialRank")
                     <*> (o .:? "leaderboard_id")
                     <*> (o .:? "writeTimestamp"))

instance ToJSON PlayerLeaderboardScore where
        toJSON PlayerLeaderboardScore{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _plsScoreTag,
                  ("scoreString" .=) <$> _plsScoreString,
                  Just ("kind" .= _plsKind),
                  ("scoreValue" .=) <$> _plsScoreValue,
                  ("timeSpan" .=) <$> _plsTimeSpan,
                  ("publicRank" .=) <$> _plsPublicRank,
                  ("socialRank" .=) <$> _plsSocialRank,
                  ("leaderboard_id" .=) <$> _plsLeaderboardId,
                  ("writeTimestamp" .=) <$> _plsWriteTimestamp])

-- | This is a JSON template for the Application resource.
--
-- /See:/ 'application' smart constructor.
data Application = Application
    { _aThemeColor           :: !(Maybe Text)
    , _aLeaderboardCount     :: !(Maybe Int32)
    , _aKind                 :: !Text
    , _aCategory             :: !(Maybe ApplicationCategory)
    , _aName                 :: !(Maybe Text)
    , _aEnabledFeatures      :: !(Maybe [Text])
    , _aInstances            :: !(Maybe [Instance])
    , _aAuthor               :: !(Maybe Text)
    , _aId                   :: !(Maybe Text)
    , _aAchievementCount     :: !(Maybe Int32)
    , _aAssets               :: !(Maybe [ImageAsset])
    , _aDescription          :: !(Maybe Text)
    , _aLastUpdatedTimestamp :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Application
    { _aThemeColor = Nothing
    , _aLeaderboardCount = Nothing
    , _aKind = "games#application"
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

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#application.
aKind :: Lens' Application Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The category of the application.
aCategory :: Lens' Application (Maybe ApplicationCategory)
aCategory
  = lens _aCategory (\ s a -> s{_aCategory = a})

-- | The name of the application.
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | A list of features that have been enabled for the application. Possible
-- values are: - \"SNAPSHOTS\" - Snapshots has been enabled
aEnabledFeatures :: Lens' Application [Text]
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

instance FromJSON Application where
        parseJSON
          = withObject "Application"
              (\ o ->
                 Application <$>
                   (o .:? "themeColor") <*> (o .:? "leaderboard_count")
                     <*> (o .:? "kind" .!= "games#application")
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
        toJSON Application{..}
          = object
              (catMaybes
                 [("themeColor" .=) <$> _aThemeColor,
                  ("leaderboard_count" .=) <$> _aLeaderboardCount,
                  Just ("kind" .= _aKind),
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

-- | This is a JSON template for an application category object.
--
-- /See:/ 'applicationCategory' smart constructor.
data ApplicationCategory = ApplicationCategory
    { _acSecondary :: !(Maybe Text)
    , _acKind      :: !Text
    , _acPrimary   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ApplicationCategory
    { _acSecondary = Nothing
    , _acKind = "games#applicationCategory"
    , _acPrimary = Nothing
    }

-- | The secondary category.
acSecondary :: Lens' ApplicationCategory (Maybe Text)
acSecondary
  = lens _acSecondary (\ s a -> s{_acSecondary = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#applicationCategory.
acKind :: Lens' ApplicationCategory Text
acKind = lens _acKind (\ s a -> s{_acKind = a})

-- | The primary category.
acPrimary :: Lens' ApplicationCategory (Maybe Text)
acPrimary
  = lens _acPrimary (\ s a -> s{_acPrimary = a})

instance FromJSON ApplicationCategory where
        parseJSON
          = withObject "ApplicationCategory"
              (\ o ->
                 ApplicationCategory <$>
                   (o .:? "secondary") <*>
                     (o .:? "kind" .!= "games#applicationCategory")
                     <*> (o .:? "primary"))

instance ToJSON ApplicationCategory where
        toJSON ApplicationCategory{..}
          = object
              (catMaybes
                 [("secondary" .=) <$> _acSecondary,
                  Just ("kind" .= _acKind),
                  ("primary" .=) <$> _acPrimary])

-- | This is a JSON template for a list of score submission statuses.
--
-- /See:/ 'playerScoreListResponse' smart constructor.
data PlayerScoreListResponse = PlayerScoreListResponse
    { _pslrSubmittedScores :: !(Maybe [PlayerScoreResponse])
    , _pslrKind            :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerScoreListResponse
    { _pslrSubmittedScores = Nothing
    , _pslrKind = "games#playerScoreListResponse"
    }

-- | The score submissions statuses.
pslrSubmittedScores :: Lens' PlayerScoreListResponse [PlayerScoreResponse]
pslrSubmittedScores
  = lens _pslrSubmittedScores
      (\ s a -> s{_pslrSubmittedScores = a})
      . _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerScoreListResponse.
pslrKind :: Lens' PlayerScoreListResponse Text
pslrKind = lens _pslrKind (\ s a -> s{_pslrKind = a})

instance FromJSON PlayerScoreListResponse where
        parseJSON
          = withObject "PlayerScoreListResponse"
              (\ o ->
                 PlayerScoreListResponse <$>
                   (o .:? "submittedScores" .!= mempty) <*>
                     (o .:? "kind" .!= "games#playerScoreListResponse"))

instance ToJSON PlayerScoreListResponse where
        toJSON PlayerScoreListResponse{..}
          = object
              (catMaybes
                 [("submittedScores" .=) <$> _pslrSubmittedScores,
                  Just ("kind" .= _pslrKind)])

-- | This is a JSON template for network diagnostics reported for a client.
--
-- /See:/ 'networkDiagnostics' smart constructor.
data NetworkDiagnostics = NetworkDiagnostics
    { _ndAndroidNetworkType        :: !(Maybe Int32)
    , _ndKind                      :: !Text
    , _ndNetworkOperatorCode       :: !(Maybe Text)
    , _ndNetworkOperatorName       :: !(Maybe Text)
    , _ndRegistrationLatencyMillis :: !(Maybe Int32)
    , _ndIosNetworkType            :: !(Maybe Int32)
    , _ndAndroidNetworkSubtype     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkDiagnostics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndAndroidNetworkType'
--
-- * 'ndKind'
--
-- * 'ndNetworkOperatorCode'
--
-- * 'ndNetworkOperatorName'
--
-- * 'ndRegistrationLatencyMillis'
--
-- * 'ndIosNetworkType'
--
-- * 'ndAndroidNetworkSubtype'
networkDiagnostics
    :: NetworkDiagnostics
networkDiagnostics =
    NetworkDiagnostics
    { _ndAndroidNetworkType = Nothing
    , _ndKind = "games#networkDiagnostics"
    , _ndNetworkOperatorCode = Nothing
    , _ndNetworkOperatorName = Nothing
    , _ndRegistrationLatencyMillis = Nothing
    , _ndIosNetworkType = Nothing
    , _ndAndroidNetworkSubtype = Nothing
    }

-- | The Android network type.
ndAndroidNetworkType :: Lens' NetworkDiagnostics (Maybe Int32)
ndAndroidNetworkType
  = lens _ndAndroidNetworkType
      (\ s a -> s{_ndAndroidNetworkType = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#networkDiagnostics.
ndKind :: Lens' NetworkDiagnostics Text
ndKind = lens _ndKind (\ s a -> s{_ndKind = a})

-- | The MCC+MNC code for the client\'s network connection. On Android:
-- http:\/\/developer.android.com\/reference\/android\/telephony\/TelephonyManager.html#getNetworkOperator()
-- On iOS, see:
-- https:\/\/developer.apple.com\/library\/ios\/documentation\/NetworkingInternet\/Reference\/CTCarrier\/Reference\/Reference.html
ndNetworkOperatorCode :: Lens' NetworkDiagnostics (Maybe Text)
ndNetworkOperatorCode
  = lens _ndNetworkOperatorCode
      (\ s a -> s{_ndNetworkOperatorCode = a})

-- | The name of the carrier of the client\'s network connection. On Android:
-- http:\/\/developer.android.com\/reference\/android\/telephony\/TelephonyManager.html#getNetworkOperatorName()
-- On iOS:
-- https:\/\/developer.apple.com\/library\/ios\/documentation\/NetworkingInternet\/Reference\/CTCarrier\/Reference\/Reference.html#\/\/apple_ref\/occ\/instp\/CTCarrier\/carrierName
ndNetworkOperatorName :: Lens' NetworkDiagnostics (Maybe Text)
ndNetworkOperatorName
  = lens _ndNetworkOperatorName
      (\ s a -> s{_ndNetworkOperatorName = a})

-- | The amount of time in milliseconds it took for the client to establish a
-- connection with the XMPP server.
ndRegistrationLatencyMillis :: Lens' NetworkDiagnostics (Maybe Int32)
ndRegistrationLatencyMillis
  = lens _ndRegistrationLatencyMillis
      (\ s a -> s{_ndRegistrationLatencyMillis = a})

-- | iOS network type as defined in Reachability.h.
ndIosNetworkType :: Lens' NetworkDiagnostics (Maybe Int32)
ndIosNetworkType
  = lens _ndIosNetworkType
      (\ s a -> s{_ndIosNetworkType = a})

-- | The Android network subtype.
ndAndroidNetworkSubtype :: Lens' NetworkDiagnostics (Maybe Int32)
ndAndroidNetworkSubtype
  = lens _ndAndroidNetworkSubtype
      (\ s a -> s{_ndAndroidNetworkSubtype = a})

instance FromJSON NetworkDiagnostics where
        parseJSON
          = withObject "NetworkDiagnostics"
              (\ o ->
                 NetworkDiagnostics <$>
                   (o .:? "androidNetworkType") <*>
                     (o .:? "kind" .!= "games#networkDiagnostics")
                     <*> (o .:? "networkOperatorCode")
                     <*> (o .:? "networkOperatorName")
                     <*> (o .:? "registrationLatencyMillis")
                     <*> (o .:? "iosNetworkType")
                     <*> (o .:? "androidNetworkSubtype"))

instance ToJSON NetworkDiagnostics where
        toJSON NetworkDiagnostics{..}
          = object
              (catMaybes
                 [("androidNetworkType" .=) <$> _ndAndroidNetworkType,
                  Just ("kind" .= _ndKind),
                  ("networkOperatorCode" .=) <$>
                    _ndNetworkOperatorCode,
                  ("networkOperatorName" .=) <$>
                    _ndNetworkOperatorName,
                  ("registrationLatencyMillis" .=) <$>
                    _ndRegistrationLatencyMillis,
                  ("iosNetworkType" .=) <$> _ndIosNetworkType,
                  ("androidNetworkSubtype" .=) <$>
                    _ndAndroidNetworkSubtype])

-- | This is a JSON template for the object representing a turn.
--
-- /See:/ 'turnBasedMatchTurn' smart constructor.
data TurnBasedMatchTurn = TurnBasedMatchTurn
    { _tbmtResults              :: !(Maybe [ParticipantResult])
    , _tbmtKind                 :: !Text
    , _tbmtData                 :: !(Maybe TurnBasedMatchDataRequest)
    , _tbmtPendingParticipantId :: !(Maybe Text)
    , _tbmtMatchVersion         :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchTurn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmtResults'
--
-- * 'tbmtKind'
--
-- * 'tbmtData'
--
-- * 'tbmtPendingParticipantId'
--
-- * 'tbmtMatchVersion'
turnBasedMatchTurn
    :: TurnBasedMatchTurn
turnBasedMatchTurn =
    TurnBasedMatchTurn
    { _tbmtResults = Nothing
    , _tbmtKind = "games#turnBasedMatchTurn"
    , _tbmtData = Nothing
    , _tbmtPendingParticipantId = Nothing
    , _tbmtMatchVersion = Nothing
    }

-- | The match results for the participants in the match.
tbmtResults :: Lens' TurnBasedMatchTurn [ParticipantResult]
tbmtResults
  = lens _tbmtResults (\ s a -> s{_tbmtResults = a}) .
      _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchTurn.
tbmtKind :: Lens' TurnBasedMatchTurn Text
tbmtKind = lens _tbmtKind (\ s a -> s{_tbmtKind = a})

-- | The shared game state data after the turn is over.
tbmtData :: Lens' TurnBasedMatchTurn (Maybe TurnBasedMatchDataRequest)
tbmtData = lens _tbmtData (\ s a -> s{_tbmtData = a})

-- | The ID of the participant who should take their turn next. May be set to
-- the current player\'s participant ID to update match state without
-- changing the turn. If not set, the match will wait for other player(s)
-- to join via automatching; this is only valid if automatch criteria is
-- set on the match with remaining slots for automatched players.
tbmtPendingParticipantId :: Lens' TurnBasedMatchTurn (Maybe Text)
tbmtPendingParticipantId
  = lens _tbmtPendingParticipantId
      (\ s a -> s{_tbmtPendingParticipantId = a})

-- | The version of this match: an increasing counter, used to avoid
-- out-of-date updates to the match.
tbmtMatchVersion :: Lens' TurnBasedMatchTurn (Maybe Int32)
tbmtMatchVersion
  = lens _tbmtMatchVersion
      (\ s a -> s{_tbmtMatchVersion = a})

instance FromJSON TurnBasedMatchTurn where
        parseJSON
          = withObject "TurnBasedMatchTurn"
              (\ o ->
                 TurnBasedMatchTurn <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "kind" .!= "games#turnBasedMatchTurn")
                     <*> (o .:? "data")
                     <*> (o .:? "pendingParticipantId")
                     <*> (o .:? "matchVersion"))

instance ToJSON TurnBasedMatchTurn where
        toJSON TurnBasedMatchTurn{..}
          = object
              (catMaybes
                 [("results" .=) <$> _tbmtResults,
                  Just ("kind" .= _tbmtKind),
                  ("data" .=) <$> _tbmtData,
                  ("pendingParticipantId" .=) <$>
                    _tbmtPendingParticipantId,
                  ("matchVersion" .=) <$> _tbmtMatchVersion])

-- | This is a JSON template for a Quest Criterion resource.
--
-- /See:/ 'questCriterion' smart constructor.
data QuestCriterion = QuestCriterion
    { _qcCurrentContribution    :: !(Maybe QuestContribution)
    , _qcCompletionContribution :: !(Maybe QuestContribution)
    , _qcKind                   :: !Text
    , _qcInitialPlayerProgress  :: !(Maybe QuestContribution)
    , _qcEventId                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestCriterion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcCurrentContribution'
--
-- * 'qcCompletionContribution'
--
-- * 'qcKind'
--
-- * 'qcInitialPlayerProgress'
--
-- * 'qcEventId'
questCriterion
    :: QuestCriterion
questCriterion =
    QuestCriterion
    { _qcCurrentContribution = Nothing
    , _qcCompletionContribution = Nothing
    , _qcKind = "games#questCriterion"
    , _qcInitialPlayerProgress = Nothing
    , _qcEventId = Nothing
    }

-- | The number of increments the player has made toward the completion count
-- event increments required to complete the quest. This value will not
-- exceed the completion contribution. There will be no currentContribution
-- until the player has accepted the quest.
qcCurrentContribution :: Lens' QuestCriterion (Maybe QuestContribution)
qcCurrentContribution
  = lens _qcCurrentContribution
      (\ s a -> s{_qcCurrentContribution = a})

-- | The total number of times the associated event must be incremented for
-- the player to complete this quest.
qcCompletionContribution :: Lens' QuestCriterion (Maybe QuestContribution)
qcCompletionContribution
  = lens _qcCompletionContribution
      (\ s a -> s{_qcCompletionContribution = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#questCriterion.
qcKind :: Lens' QuestCriterion Text
qcKind = lens _qcKind (\ s a -> s{_qcKind = a})

-- | The value of the event associated with this quest at the time that the
-- quest was accepted. This value may change if event increments that took
-- place before the start of quest are uploaded after the quest starts.
-- There will be no initialPlayerProgress until the player has accepted the
-- quest.
qcInitialPlayerProgress :: Lens' QuestCriterion (Maybe QuestContribution)
qcInitialPlayerProgress
  = lens _qcInitialPlayerProgress
      (\ s a -> s{_qcInitialPlayerProgress = a})

-- | The ID of the event the criterion corresponds to.
qcEventId :: Lens' QuestCriterion (Maybe Text)
qcEventId
  = lens _qcEventId (\ s a -> s{_qcEventId = a})

instance FromJSON QuestCriterion where
        parseJSON
          = withObject "QuestCriterion"
              (\ o ->
                 QuestCriterion <$>
                   (o .:? "currentContribution") <*>
                     (o .:? "completionContribution")
                     <*> (o .:? "kind" .!= "games#questCriterion")
                     <*> (o .:? "initialPlayerProgress")
                     <*> (o .:? "eventId"))

instance ToJSON QuestCriterion where
        toJSON QuestCriterion{..}
          = object
              (catMaybes
                 [("currentContribution" .=) <$>
                    _qcCurrentContribution,
                  ("completionContribution" .=) <$>
                    _qcCompletionContribution,
                  Just ("kind" .= _qcKind),
                  ("initialPlayerProgress" .=) <$>
                    _qcInitialPlayerProgress,
                  ("eventId" .=) <$> _qcEventId])

-- | This is a JSON template for a list of turn-based matches.
--
-- /See:/ 'turnBasedMatchList' smart constructor.
data TurnBasedMatchList = TurnBasedMatchList
    { _tbmlNextPageToken :: !(Maybe Text)
    , _tbmlKind          :: !Text
    , _tbmlItems         :: !(Maybe [TurnBasedMatch])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmlNextPageToken'
--
-- * 'tbmlKind'
--
-- * 'tbmlItems'
turnBasedMatchList
    :: TurnBasedMatchList
turnBasedMatchList =
    TurnBasedMatchList
    { _tbmlNextPageToken = Nothing
    , _tbmlKind = "games#turnBasedMatchList"
    , _tbmlItems = Nothing
    }

-- | The pagination token for the next page of results.
tbmlNextPageToken :: Lens' TurnBasedMatchList (Maybe Text)
tbmlNextPageToken
  = lens _tbmlNextPageToken
      (\ s a -> s{_tbmlNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchList.
tbmlKind :: Lens' TurnBasedMatchList Text
tbmlKind = lens _tbmlKind (\ s a -> s{_tbmlKind = a})

-- | The matches.
tbmlItems :: Lens' TurnBasedMatchList [TurnBasedMatch]
tbmlItems
  = lens _tbmlItems (\ s a -> s{_tbmlItems = a}) .
      _Default
      . _Coerce

instance FromJSON TurnBasedMatchList where
        parseJSON
          = withObject "TurnBasedMatchList"
              (\ o ->
                 TurnBasedMatchList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#turnBasedMatchList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON TurnBasedMatchList where
        toJSON TurnBasedMatchList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tbmlNextPageToken,
                  Just ("kind" .= _tbmlKind),
                  ("items" .=) <$> _tbmlItems])

-- | This is a JSON template for peer channel diagnostics.
--
-- /See:/ 'peerChannelDiagnostics' smart constructor.
data PeerChannelDiagnostics = PeerChannelDiagnostics
    { _pcdNumMessagesLost        :: !(Maybe Int32)
    , _pcdBytesSent              :: !(Maybe AggregateStats)
    , _pcdKind                   :: !Text
    , _pcdRoundtripLatencyMillis :: !(Maybe AggregateStats)
    , _pcdBytesReceived          :: !(Maybe AggregateStats)
    , _pcdNumMessagesReceived    :: !(Maybe Int32)
    , _pcdNumSendFailures        :: !(Maybe Int32)
    , _pcdNumMessagesSent        :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeerChannelDiagnostics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdNumMessagesLost'
--
-- * 'pcdBytesSent'
--
-- * 'pcdKind'
--
-- * 'pcdRoundtripLatencyMillis'
--
-- * 'pcdBytesReceived'
--
-- * 'pcdNumMessagesReceived'
--
-- * 'pcdNumSendFailures'
--
-- * 'pcdNumMessagesSent'
peerChannelDiagnostics
    :: PeerChannelDiagnostics
peerChannelDiagnostics =
    PeerChannelDiagnostics
    { _pcdNumMessagesLost = Nothing
    , _pcdBytesSent = Nothing
    , _pcdKind = "games#peerChannelDiagnostics"
    , _pcdRoundtripLatencyMillis = Nothing
    , _pcdBytesReceived = Nothing
    , _pcdNumMessagesReceived = Nothing
    , _pcdNumSendFailures = Nothing
    , _pcdNumMessagesSent = Nothing
    }

-- | Number of messages lost.
pcdNumMessagesLost :: Lens' PeerChannelDiagnostics (Maybe Int32)
pcdNumMessagesLost
  = lens _pcdNumMessagesLost
      (\ s a -> s{_pcdNumMessagesLost = a})

-- | Number of bytes sent.
pcdBytesSent :: Lens' PeerChannelDiagnostics (Maybe AggregateStats)
pcdBytesSent
  = lens _pcdBytesSent (\ s a -> s{_pcdBytesSent = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#peerChannelDiagnostics.
pcdKind :: Lens' PeerChannelDiagnostics Text
pcdKind = lens _pcdKind (\ s a -> s{_pcdKind = a})

-- | Roundtrip latency stats in milliseconds.
pcdRoundtripLatencyMillis :: Lens' PeerChannelDiagnostics (Maybe AggregateStats)
pcdRoundtripLatencyMillis
  = lens _pcdRoundtripLatencyMillis
      (\ s a -> s{_pcdRoundtripLatencyMillis = a})

-- | Number of bytes received.
pcdBytesReceived :: Lens' PeerChannelDiagnostics (Maybe AggregateStats)
pcdBytesReceived
  = lens _pcdBytesReceived
      (\ s a -> s{_pcdBytesReceived = a})

-- | Number of messages received.
pcdNumMessagesReceived :: Lens' PeerChannelDiagnostics (Maybe Int32)
pcdNumMessagesReceived
  = lens _pcdNumMessagesReceived
      (\ s a -> s{_pcdNumMessagesReceived = a})

-- | Number of send failures.
pcdNumSendFailures :: Lens' PeerChannelDiagnostics (Maybe Int32)
pcdNumSendFailures
  = lens _pcdNumSendFailures
      (\ s a -> s{_pcdNumSendFailures = a})

-- | Number of messages sent.
pcdNumMessagesSent :: Lens' PeerChannelDiagnostics (Maybe Int32)
pcdNumMessagesSent
  = lens _pcdNumMessagesSent
      (\ s a -> s{_pcdNumMessagesSent = a})

instance FromJSON PeerChannelDiagnostics where
        parseJSON
          = withObject "PeerChannelDiagnostics"
              (\ o ->
                 PeerChannelDiagnostics <$>
                   (o .:? "numMessagesLost") <*> (o .:? "bytesSent") <*>
                     (o .:? "kind" .!= "games#peerChannelDiagnostics")
                     <*> (o .:? "roundtripLatencyMillis")
                     <*> (o .:? "bytesReceived")
                     <*> (o .:? "numMessagesReceived")
                     <*> (o .:? "numSendFailures")
                     <*> (o .:? "numMessagesSent"))

instance ToJSON PeerChannelDiagnostics where
        toJSON PeerChannelDiagnostics{..}
          = object
              (catMaybes
                 [("numMessagesLost" .=) <$> _pcdNumMessagesLost,
                  ("bytesSent" .=) <$> _pcdBytesSent,
                  Just ("kind" .= _pcdKind),
                  ("roundtripLatencyMillis" .=) <$>
                    _pcdRoundtripLatencyMillis,
                  ("bytesReceived" .=) <$> _pcdBytesReceived,
                  ("numMessagesReceived" .=) <$>
                    _pcdNumMessagesReceived,
                  ("numSendFailures" .=) <$> _pcdNumSendFailures,
                  ("numMessagesSent" .=) <$> _pcdNumMessagesSent])

-- | This is a JSON template for a list of rooms.
--
-- /See:/ 'roomList' smart constructor.
data RoomList = RoomList
    { _rlNextPageToken :: !(Maybe Text)
    , _rlKind          :: !Text
    , _rlItems         :: !(Maybe [Room])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlNextPageToken'
--
-- * 'rlKind'
--
-- * 'rlItems'
roomList
    :: RoomList
roomList =
    RoomList
    { _rlNextPageToken = Nothing
    , _rlKind = "games#roomList"
    , _rlItems = Nothing
    }

-- | The pagination token for the next page of results.
rlNextPageToken :: Lens' RoomList (Maybe Text)
rlNextPageToken
  = lens _rlNextPageToken
      (\ s a -> s{_rlNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomList.
rlKind :: Lens' RoomList Text
rlKind = lens _rlKind (\ s a -> s{_rlKind = a})

-- | The rooms.
rlItems :: Lens' RoomList [Room]
rlItems
  = lens _rlItems (\ s a -> s{_rlItems = a}) . _Default
      . _Coerce

instance FromJSON RoomList where
        parseJSON
          = withObject "RoomList"
              (\ o ->
                 RoomList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#roomList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON RoomList where
        toJSON RoomList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlNextPageToken,
                  Just ("kind" .= _rlKind), ("items" .=) <$> _rlItems])

-- | This is a JSON template for a push token resource.
--
-- /See:/ 'pushToken' smart constructor.
data PushToken = PushToken
    { _ptClientRevision :: !(Maybe Text)
    , _ptKind           :: !Text
    , _ptLanguage       :: !(Maybe Text)
    , _ptId             :: !(Maybe PushTokenId)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptClientRevision'
--
-- * 'ptKind'
--
-- * 'ptLanguage'
--
-- * 'ptId'
pushToken
    :: PushToken
pushToken =
    PushToken
    { _ptClientRevision = Nothing
    , _ptKind = "games#pushToken"
    , _ptLanguage = Nothing
    , _ptId = Nothing
    }

-- | The revision of the client SDK used by your application, in the same
-- format that\'s used by revisions.check. Used to send backward compatible
-- messages. Format: [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of
-- PLATFORM_TYPE are: - IOS - Push token is for iOS
ptClientRevision :: Lens' PushToken (Maybe Text)
ptClientRevision
  = lens _ptClientRevision
      (\ s a -> s{_ptClientRevision = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#pushToken.
ptKind :: Lens' PushToken Text
ptKind = lens _ptKind (\ s a -> s{_ptKind = a})

-- | The preferred language for notifications that are sent using this token.
ptLanguage :: Lens' PushToken (Maybe Text)
ptLanguage
  = lens _ptLanguage (\ s a -> s{_ptLanguage = a})

-- | Unique identifier for this push token.
ptId :: Lens' PushToken (Maybe PushTokenId)
ptId = lens _ptId (\ s a -> s{_ptId = a})

instance FromJSON PushToken where
        parseJSON
          = withObject "PushToken"
              (\ o ->
                 PushToken <$>
                   (o .:? "clientRevision") <*>
                     (o .:? "kind" .!= "games#pushToken")
                     <*> (o .:? "language")
                     <*> (o .:? "id"))

instance ToJSON PushToken where
        toJSON PushToken{..}
          = object
              (catMaybes
                 [("clientRevision" .=) <$> _ptClientRevision,
                  Just ("kind" .= _ptKind),
                  ("language" .=) <$> _ptLanguage,
                  ("id" .=) <$> _ptId])

-- | This is a JSON template for an achievement update response.
--
-- /See:/ 'achievementUpdateResponse' smart constructor.
data AchievementUpdateResponse = AchievementUpdateResponse
    { _aurUpdateOccurred :: !(Maybe Bool)
    , _aurAchievementId  :: !(Maybe Text)
    , _aurKind           :: !Text
    , _aurCurrentState   :: !(Maybe Text)
    , _aurNewlyUnlocked  :: !(Maybe Bool)
    , _aurCurrentSteps   :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementUpdateResponse
    { _aurUpdateOccurred = Nothing
    , _aurAchievementId = Nothing
    , _aurKind = "games#achievementUpdateResponse"
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
-- string games#achievementUpdateResponse.
aurKind :: Lens' AchievementUpdateResponse Text
aurKind = lens _aurKind (\ s a -> s{_aurKind = a})

-- | The current state of the achievement. Possible values are: - \"HIDDEN\"
-- - Achievement is hidden. - \"REVEALED\" - Achievement is revealed. -
-- \"UNLOCKED\" - Achievement is unlocked.
aurCurrentState :: Lens' AchievementUpdateResponse (Maybe Text)
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

instance FromJSON AchievementUpdateResponse where
        parseJSON
          = withObject "AchievementUpdateResponse"
              (\ o ->
                 AchievementUpdateResponse <$>
                   (o .:? "updateOccurred") <*> (o .:? "achievementId")
                     <*>
                     (o .:? "kind" .!= "games#achievementUpdateResponse")
                     <*> (o .:? "currentState")
                     <*> (o .:? "newlyUnlocked")
                     <*> (o .:? "currentSteps"))

instance ToJSON AchievementUpdateResponse where
        toJSON AchievementUpdateResponse{..}
          = object
              (catMaybes
                 [("updateOccurred" .=) <$> _aurUpdateOccurred,
                  ("achievementId" .=) <$> _aurAchievementId,
                  Just ("kind" .= _aurKind),
                  ("currentState" .=) <$> _aurCurrentState,
                  ("newlyUnlocked" .=) <$> _aurNewlyUnlocked,
                  ("currentSteps" .=) <$> _aurCurrentSteps])

-- | This is a JSON template for the Leaderboard Entry resource.
--
-- /See:/ 'leaderboardEntry' smart constructor.
data LeaderboardEntry = LeaderboardEntry
    { _leScoreTag             :: !(Maybe Text)
    , _leWriteTimestampMillis :: !(Maybe Int64)
    , _leKind                 :: !Text
    , _leScoreValue           :: !(Maybe Int64)
    , _leFormattedScore       :: !(Maybe Text)
    , _leTimeSpan             :: !(Maybe Text)
    , _leFormattedScoreRank   :: !(Maybe Text)
    , _lePlayer               :: !(Maybe Player)
    , _leScoreRank            :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LeaderboardEntry
    { _leScoreTag = Nothing
    , _leWriteTimestampMillis = Nothing
    , _leKind = "games#leaderboardEntry"
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

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#leaderboardEntry.
leKind :: Lens' LeaderboardEntry Text
leKind = lens _leKind (\ s a -> s{_leKind = a})

-- | The numerical value of this score.
leScoreValue :: Lens' LeaderboardEntry (Maybe Int64)
leScoreValue
  = lens _leScoreValue (\ s a -> s{_leScoreValue = a})

-- | The localized string for the numerical value of this score.
leFormattedScore :: Lens' LeaderboardEntry (Maybe Text)
leFormattedScore
  = lens _leFormattedScore
      (\ s a -> s{_leFormattedScore = a})

-- | The time span of this high score. Possible values are: - \"ALL_TIME\" -
-- The score is an all-time high score. - \"WEEKLY\" - The score is a
-- weekly high score. - \"DAILY\" - The score is a daily high score.
leTimeSpan :: Lens' LeaderboardEntry (Maybe Text)
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
  = lens _leScoreRank (\ s a -> s{_leScoreRank = a})

instance FromJSON LeaderboardEntry where
        parseJSON
          = withObject "LeaderboardEntry"
              (\ o ->
                 LeaderboardEntry <$>
                   (o .:? "scoreTag") <*> (o .:? "writeTimestampMillis")
                     <*> (o .:? "kind" .!= "games#leaderboardEntry")
                     <*> (o .:? "scoreValue")
                     <*> (o .:? "formattedScore")
                     <*> (o .:? "timeSpan")
                     <*> (o .:? "formattedScoreRank")
                     <*> (o .:? "player")
                     <*> (o .:? "scoreRank"))

instance ToJSON LeaderboardEntry where
        toJSON LeaderboardEntry{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _leScoreTag,
                  ("writeTimestampMillis" .=) <$>
                    _leWriteTimestampMillis,
                  Just ("kind" .= _leKind),
                  ("scoreValue" .=) <$> _leScoreValue,
                  ("formattedScore" .=) <$> _leFormattedScore,
                  ("timeSpan" .=) <$> _leTimeSpan,
                  ("formattedScoreRank" .=) <$> _leFormattedScoreRank,
                  ("player" .=) <$> _lePlayer,
                  ("scoreRank" .=) <$> _leScoreRank])

-- | This is a JSON template for a list of snapshot objects.
--
-- /See:/ 'snapshotListResponse' smart constructor.
data SnapshotListResponse = SnapshotListResponse
    { _slrNextPageToken :: !(Maybe Text)
    , _slrKind          :: !Text
    , _slrItems         :: !(Maybe [Snapshot])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SnapshotListResponse
    { _slrNextPageToken = Nothing
    , _slrKind = "games#snapshotListResponse"
    , _slrItems = Nothing
    }

-- | Token corresponding to the next page of results. If there are no more
-- results, the token is omitted.
slrNextPageToken :: Lens' SnapshotListResponse (Maybe Text)
slrNextPageToken
  = lens _slrNextPageToken
      (\ s a -> s{_slrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#snapshotListResponse.
slrKind :: Lens' SnapshotListResponse Text
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
                 SnapshotListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#snapshotListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON SnapshotListResponse where
        toJSON SnapshotListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _slrNextPageToken,
                  Just ("kind" .= _slrKind),
                  ("items" .=) <$> _slrItems])

-- | This is a JSON template for 1P\/3P metadata about a user\'s level.
--
-- /See:/ 'playerLevel' smart constructor.
data PlayerLevel = PlayerLevel
    { _plMaxExperiencePoints :: !(Maybe Int64)
    , _plKind                :: !Text
    , _plMinExperiencePoints :: !(Maybe Int64)
    , _plLevel               :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerLevel
    { _plMaxExperiencePoints = Nothing
    , _plKind = "games#playerLevel"
    , _plMinExperiencePoints = Nothing
    , _plLevel = Nothing
    }

-- | The maximum experience points for this level.
plMaxExperiencePoints :: Lens' PlayerLevel (Maybe Int64)
plMaxExperiencePoints
  = lens _plMaxExperiencePoints
      (\ s a -> s{_plMaxExperiencePoints = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerLevel.
plKind :: Lens' PlayerLevel Text
plKind = lens _plKind (\ s a -> s{_plKind = a})

-- | The minimum experience points for this level.
plMinExperiencePoints :: Lens' PlayerLevel (Maybe Int64)
plMinExperiencePoints
  = lens _plMinExperiencePoints
      (\ s a -> s{_plMinExperiencePoints = a})

-- | The level for the user.
plLevel :: Lens' PlayerLevel (Maybe Int32)
plLevel = lens _plLevel (\ s a -> s{_plLevel = a})

instance FromJSON PlayerLevel where
        parseJSON
          = withObject "PlayerLevel"
              (\ o ->
                 PlayerLevel <$>
                   (o .:? "maxExperiencePoints") <*>
                     (o .:? "kind" .!= "games#playerLevel")
                     <*> (o .:? "minExperiencePoints")
                     <*> (o .:? "level"))

instance ToJSON PlayerLevel where
        toJSON PlayerLevel{..}
          = object
              (catMaybes
                 [("maxExperiencePoints" .=) <$>
                    _plMaxExperiencePoints,
                  Just ("kind" .= _plKind),
                  ("minExperiencePoints" .=) <$>
                    _plMinExperiencePoints,
                  ("level" .=) <$> _plLevel])

-- | This is a JSON template for an achievement unlock response.
--
-- /See:/ 'achievementUpdateMultipleResponse' smart constructor.
data AchievementUpdateMultipleResponse = AchievementUpdateMultipleResponse
    { _aumrKind                :: !Text
    , _aumrUpdatedAchievements :: !(Maybe [AchievementUpdateResponse])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementUpdateMultipleResponse
    { _aumrKind = "games#achievementUpdateMultipleResponse"
    , _aumrUpdatedAchievements = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementUpdateListResponse.
aumrKind :: Lens' AchievementUpdateMultipleResponse Text
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
                 AchievementUpdateMultipleResponse <$>
                   (o .:? "kind" .!=
                      "games#achievementUpdateMultipleResponse")
                     <*> (o .:? "updatedAchievements" .!= mempty))

instance ToJSON AchievementUpdateMultipleResponse
         where
        toJSON AchievementUpdateMultipleResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aumrKind),
                  ("updatedAchievements" .=) <$>
                    _aumrUpdatedAchievements])

-- | This is a JSON template for a participant in a room.
--
-- /See:/ 'roomParticipant' smart constructor.
data RoomParticipant = RoomParticipant
    { _rpStatus            :: !(Maybe Text)
    , _rpConnected         :: !(Maybe Bool)
    , _rpLeaveReason       :: !(Maybe Text)
    , _rpKind              :: !Text
    , _rpClientAddress     :: !(Maybe RoomClientAddress)
    , _rpId                :: !(Maybe Text)
    , _rpAutoMatched       :: !(Maybe Bool)
    , _rpPlayer            :: !(Maybe Player)
    , _rpCapabilities      :: !(Maybe [Text])
    , _rpAutoMatchedPlayer :: !(Maybe AnonymousPlayer)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomParticipant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpStatus'
--
-- * 'rpConnected'
--
-- * 'rpLeaveReason'
--
-- * 'rpKind'
--
-- * 'rpClientAddress'
--
-- * 'rpId'
--
-- * 'rpAutoMatched'
--
-- * 'rpPlayer'
--
-- * 'rpCapabilities'
--
-- * 'rpAutoMatchedPlayer'
roomParticipant
    :: RoomParticipant
roomParticipant =
    RoomParticipant
    { _rpStatus = Nothing
    , _rpConnected = Nothing
    , _rpLeaveReason = Nothing
    , _rpKind = "games#roomParticipant"
    , _rpClientAddress = Nothing
    , _rpId = Nothing
    , _rpAutoMatched = Nothing
    , _rpPlayer = Nothing
    , _rpCapabilities = Nothing
    , _rpAutoMatchedPlayer = Nothing
    }

-- | The status of the participant with respect to the room. Possible values
-- are: - \"PARTICIPANT_INVITED\" - The participant has been invited to
-- join the room, but has not yet responded. - \"PARTICIPANT_JOINED\" - The
-- participant has joined the room (either after creating it or accepting
-- an invitation.) - \"PARTICIPANT_DECLINED\" - The participant declined an
-- invitation to join the room. - \"PARTICIPANT_LEFT\" - The participant
-- joined the room and then left it.
rpStatus :: Lens' RoomParticipant (Maybe Text)
rpStatus = lens _rpStatus (\ s a -> s{_rpStatus = a})

-- | True if this participant is in the fully connected set of peers in the
-- room.
rpConnected :: Lens' RoomParticipant (Maybe Bool)
rpConnected
  = lens _rpConnected (\ s a -> s{_rpConnected = a})

-- | The reason the participant left the room; populated if the participant
-- status is PARTICIPANT_LEFT. Possible values are: - \"PLAYER_LEFT\" - The
-- player explicitly chose to leave the room. - \"GAME_LEFT\" - The game
-- chose to remove the player from the room. - \"ABANDONED\" - The player
-- switched to another application and abandoned the room. -
-- \"PEER_CONNECTION_FAILURE\" - The client was unable to establish or
-- maintain a connection to other peer(s) in the room. - \"SERVER_ERROR\" -
-- The client received an error response when it tried to communicate with
-- the server. - \"TIMEOUT\" - The client timed out while waiting for
-- players to join and connect. - \"PRESENCE_FAILURE\" - The client\'s XMPP
-- connection ended abruptly.
rpLeaveReason :: Lens' RoomParticipant (Maybe Text)
rpLeaveReason
  = lens _rpLeaveReason
      (\ s a -> s{_rpLeaveReason = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomParticipant.
rpKind :: Lens' RoomParticipant Text
rpKind = lens _rpKind (\ s a -> s{_rpKind = a})

-- | Client address for the participant.
rpClientAddress :: Lens' RoomParticipant (Maybe RoomClientAddress)
rpClientAddress
  = lens _rpClientAddress
      (\ s a -> s{_rpClientAddress = a})

-- | An identifier for the participant in the scope of the room. Cannot be
-- used to identify a player across rooms or in other contexts.
rpId :: Lens' RoomParticipant (Maybe Text)
rpId = lens _rpId (\ s a -> s{_rpId = a})

-- | True if this participant was auto-matched with the requesting player.
rpAutoMatched :: Lens' RoomParticipant (Maybe Bool)
rpAutoMatched
  = lens _rpAutoMatched
      (\ s a -> s{_rpAutoMatched = a})

-- | Information about the player. Not populated if this player was
-- anonymously auto-matched against the requesting player. (Either player
-- or autoMatchedPlayer will be set.)
rpPlayer :: Lens' RoomParticipant (Maybe Player)
rpPlayer = lens _rpPlayer (\ s a -> s{_rpPlayer = a})

-- | The capabilities which can be used when communicating with this
-- participant.
rpCapabilities :: Lens' RoomParticipant [Text]
rpCapabilities
  = lens _rpCapabilities
      (\ s a -> s{_rpCapabilities = a})
      . _Default
      . _Coerce

-- | Information about a player that has been anonymously auto-matched
-- against the requesting player. (Either player or autoMatchedPlayer will
-- be set.)
rpAutoMatchedPlayer :: Lens' RoomParticipant (Maybe AnonymousPlayer)
rpAutoMatchedPlayer
  = lens _rpAutoMatchedPlayer
      (\ s a -> s{_rpAutoMatchedPlayer = a})

instance FromJSON RoomParticipant where
        parseJSON
          = withObject "RoomParticipant"
              (\ o ->
                 RoomParticipant <$>
                   (o .:? "status") <*> (o .:? "connected") <*>
                     (o .:? "leaveReason")
                     <*> (o .:? "kind" .!= "games#roomParticipant")
                     <*> (o .:? "clientAddress")
                     <*> (o .:? "id")
                     <*> (o .:? "autoMatched")
                     <*> (o .:? "player")
                     <*> (o .:? "capabilities" .!= mempty)
                     <*> (o .:? "autoMatchedPlayer"))

instance ToJSON RoomParticipant where
        toJSON RoomParticipant{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rpStatus,
                  ("connected" .=) <$> _rpConnected,
                  ("leaveReason" .=) <$> _rpLeaveReason,
                  Just ("kind" .= _rpKind),
                  ("clientAddress" .=) <$> _rpClientAddress,
                  ("id" .=) <$> _rpId,
                  ("autoMatched" .=) <$> _rpAutoMatched,
                  ("player" .=) <$> _rpPlayer,
                  ("capabilities" .=) <$> _rpCapabilities,
                  ("autoMatchedPlayer" .=) <$> _rpAutoMatchedPlayer])

-- | This is a JSON template for a ListDefinitions response.
--
-- /See:/ 'eventDefinitionListResponse' smart constructor.
data EventDefinitionListResponse = EventDefinitionListResponse
    { _edlrNextPageToken :: !(Maybe Text)
    , _edlrKind          :: !Text
    , _edlrItems         :: !(Maybe [EventDefinition])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventDefinitionListResponse
    { _edlrNextPageToken = Nothing
    , _edlrKind = "games#eventDefinitionListResponse"
    , _edlrItems = Nothing
    }

-- | The pagination token for the next page of results.
edlrNextPageToken :: Lens' EventDefinitionListResponse (Maybe Text)
edlrNextPageToken
  = lens _edlrNextPageToken
      (\ s a -> s{_edlrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventDefinitionListResponse.
edlrKind :: Lens' EventDefinitionListResponse Text
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
                 EventDefinitionListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "games#eventDefinitionListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON EventDefinitionListResponse where
        toJSON EventDefinitionListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _edlrNextPageToken,
                  Just ("kind" .= _edlrKind),
                  ("items" .=) <$> _edlrItems])

-- | This is a JSON template for data related to individual game categories.
--
-- /See:/ 'category' smart constructor.
data Category = Category
    { _cKind             :: !Text
    , _cCategory         :: !(Maybe Text)
    , _cExperiencePoints :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Category
    { _cKind = "games#category"
    , _cCategory = Nothing
    , _cExperiencePoints = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#category.
cKind :: Lens' Category Text
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

instance FromJSON Category where
        parseJSON
          = withObject "Category"
              (\ o ->
                 Category <$>
                   (o .:? "kind" .!= "games#category") <*>
                     (o .:? "category")
                     <*> (o .:? "experiencePoints"))

instance ToJSON Category where
        toJSON Category{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cKind),
                  ("category" .=) <$> _cCategory,
                  ("experiencePoints" .=) <$> _cExperiencePoints])

-- | This is a JSON template for the Android instance details resource.
--
-- /See:/ 'instanceAndroidDetails' smart constructor.
data InstanceAndroidDetails = InstanceAndroidDetails
    { _iadPackageName       :: !(Maybe Text)
    , _iadPreferred         :: !(Maybe Bool)
    , _iadKind              :: !Text
    , _iadEnablePiracyCheck :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    InstanceAndroidDetails
    { _iadPackageName = Nothing
    , _iadPreferred = Nothing
    , _iadKind = "games#instanceAndroidDetails"
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
-- string games#instanceAndroidDetails.
iadKind :: Lens' InstanceAndroidDetails Text
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
                 InstanceAndroidDetails <$>
                   (o .:? "packageName") <*> (o .:? "preferred") <*>
                     (o .:? "kind" .!= "games#instanceAndroidDetails")
                     <*> (o .:? "enablePiracyCheck"))

instance ToJSON InstanceAndroidDetails where
        toJSON InstanceAndroidDetails{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _iadPackageName,
                  ("preferred" .=) <$> _iadPreferred,
                  Just ("kind" .= _iadKind),
                  ("enablePiracyCheck" .=) <$> _iadEnablePiracyCheck])

-- | This is a JSON template for a participant in a turn-based match.
--
-- /See:/ 'turnBasedMatchParticipant' smart constructor.
data TurnBasedMatchParticipant = TurnBasedMatchParticipant
    { _tbmpStatus            :: !(Maybe Text)
    , _tbmpKind              :: !Text
    , _tbmpId                :: !(Maybe Text)
    , _tbmpAutoMatched       :: !(Maybe Bool)
    , _tbmpPlayer            :: !(Maybe Player)
    , _tbmpAutoMatchedPlayer :: !(Maybe AnonymousPlayer)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchParticipant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmpStatus'
--
-- * 'tbmpKind'
--
-- * 'tbmpId'
--
-- * 'tbmpAutoMatched'
--
-- * 'tbmpPlayer'
--
-- * 'tbmpAutoMatchedPlayer'
turnBasedMatchParticipant
    :: TurnBasedMatchParticipant
turnBasedMatchParticipant =
    TurnBasedMatchParticipant
    { _tbmpStatus = Nothing
    , _tbmpKind = "games#turnBasedMatchParticipant"
    , _tbmpId = Nothing
    , _tbmpAutoMatched = Nothing
    , _tbmpPlayer = Nothing
    , _tbmpAutoMatchedPlayer = Nothing
    }

-- | The status of the participant with respect to the match. Possible values
-- are: - \"PARTICIPANT_NOT_INVITED_YET\" - The participant is slated to be
-- invited to the match, but the invitation has not been sent; the invite
-- will be sent when it becomes their turn. - \"PARTICIPANT_INVITED\" - The
-- participant has been invited to join the match, but has not yet
-- responded. - \"PARTICIPANT_JOINED\" - The participant has joined the
-- match (either after creating it or accepting an invitation.) -
-- \"PARTICIPANT_DECLINED\" - The participant declined an invitation to
-- join the match. - \"PARTICIPANT_LEFT\" - The participant joined the
-- match and then left it. - \"PARTICIPANT_FINISHED\" - The participant
-- finished playing in the match. - \"PARTICIPANT_UNRESPONSIVE\" - The
-- participant did not take their turn in the allotted time.
tbmpStatus :: Lens' TurnBasedMatchParticipant (Maybe Text)
tbmpStatus
  = lens _tbmpStatus (\ s a -> s{_tbmpStatus = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchParticipant.
tbmpKind :: Lens' TurnBasedMatchParticipant Text
tbmpKind = lens _tbmpKind (\ s a -> s{_tbmpKind = a})

-- | An identifier for the participant in the scope of the match. Cannot be
-- used to identify a player across matches or in other contexts.
tbmpId :: Lens' TurnBasedMatchParticipant (Maybe Text)
tbmpId = lens _tbmpId (\ s a -> s{_tbmpId = a})

-- | True if this participant was auto-matched with the requesting player.
tbmpAutoMatched :: Lens' TurnBasedMatchParticipant (Maybe Bool)
tbmpAutoMatched
  = lens _tbmpAutoMatched
      (\ s a -> s{_tbmpAutoMatched = a})

-- | Information about the player. Not populated if this player was
-- anonymously auto-matched against the requesting player. (Either player
-- or autoMatchedPlayer will be set.)
tbmpPlayer :: Lens' TurnBasedMatchParticipant (Maybe Player)
tbmpPlayer
  = lens _tbmpPlayer (\ s a -> s{_tbmpPlayer = a})

-- | Information about a player that has been anonymously auto-matched
-- against the requesting player. (Either player or autoMatchedPlayer will
-- be set.)
tbmpAutoMatchedPlayer :: Lens' TurnBasedMatchParticipant (Maybe AnonymousPlayer)
tbmpAutoMatchedPlayer
  = lens _tbmpAutoMatchedPlayer
      (\ s a -> s{_tbmpAutoMatchedPlayer = a})

instance FromJSON TurnBasedMatchParticipant where
        parseJSON
          = withObject "TurnBasedMatchParticipant"
              (\ o ->
                 TurnBasedMatchParticipant <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "games#turnBasedMatchParticipant")
                     <*> (o .:? "id")
                     <*> (o .:? "autoMatched")
                     <*> (o .:? "player")
                     <*> (o .:? "autoMatchedPlayer"))

instance ToJSON TurnBasedMatchParticipant where
        toJSON TurnBasedMatchParticipant{..}
          = object
              (catMaybes
                 [("status" .=) <$> _tbmpStatus,
                  Just ("kind" .= _tbmpKind), ("id" .=) <$> _tbmpId,
                  ("autoMatched" .=) <$> _tbmpAutoMatched,
                  ("player" .=) <$> _tbmpPlayer,
                  ("autoMatchedPlayer" .=) <$> _tbmpAutoMatchedPlayer])

-- | This is a JSON template for a list of achievement definition objects.
--
-- /See:/ 'achievementDefinitionsListResponse' smart constructor.
data AchievementDefinitionsListResponse = AchievementDefinitionsListResponse
    { _adlrNextPageToken :: !(Maybe Text)
    , _adlrKind          :: !Text
    , _adlrItems         :: !(Maybe [AchievementDefinition])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementDefinitionsListResponse
    { _adlrNextPageToken = Nothing
    , _adlrKind = "games#achievementDefinitionsListResponse"
    , _adlrItems = Nothing
    }

-- | Token corresponding to the next page of results.
adlrNextPageToken :: Lens' AchievementDefinitionsListResponse (Maybe Text)
adlrNextPageToken
  = lens _adlrNextPageToken
      (\ s a -> s{_adlrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementDefinitionsListResponse.
adlrKind :: Lens' AchievementDefinitionsListResponse Text
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
                 AchievementDefinitionsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "games#achievementDefinitionsListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON AchievementDefinitionsListResponse
         where
        toJSON AchievementDefinitionsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _adlrNextPageToken,
                  Just ("kind" .= _adlrKind),
                  ("items" .=) <$> _adlrItems])

-- | This is a JSON template for a list of leaderboard entry resources.
--
-- /See:/ 'playerScoreResponse' smart constructor.
data PlayerScoreResponse = PlayerScoreResponse
    { _psrScoreTag             :: !(Maybe Text)
    , _psrKind                 :: !Text
    , _psrFormattedScore       :: !(Maybe Text)
    , _psrLeaderboardId        :: !(Maybe Text)
    , _psrBeatenScoreTimeSpans :: !(Maybe [Text])
    , _psrUnbeatenScores       :: !(Maybe [PlayerScore])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerScoreResponse
    { _psrScoreTag = Nothing
    , _psrKind = "games#playerScoreResponse"
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
-- string games#playerScoreResponse.
psrKind :: Lens' PlayerScoreResponse Text
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
-- score for that time span. Possible values are: - \"ALL_TIME\" - The
-- score is an all-time score. - \"WEEKLY\" - The score is a weekly score.
-- - \"DAILY\" - The score is a daily score.
psrBeatenScoreTimeSpans :: Lens' PlayerScoreResponse [Text]
psrBeatenScoreTimeSpans
  = lens _psrBeatenScoreTimeSpans
      (\ s a -> s{_psrBeatenScoreTimeSpans = a})
      . _Default
      . _Coerce

-- | The scores in time spans that have not been beaten. As an example, the
-- submitted score may be better than the player\'s DAILY score, but not
-- better than the player\'s scores for the WEEKLY or ALL_TIME time spans.
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
                 PlayerScoreResponse <$>
                   (o .:? "scoreTag") <*>
                     (o .:? "kind" .!= "games#playerScoreResponse")
                     <*> (o .:? "formattedScore")
                     <*> (o .:? "leaderboardId")
                     <*> (o .:? "beatenScoreTimeSpans" .!= mempty)
                     <*> (o .:? "unbeatenScores" .!= mempty))

instance ToJSON PlayerScoreResponse where
        toJSON PlayerScoreResponse{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _psrScoreTag,
                  Just ("kind" .= _psrKind),
                  ("formattedScore" .=) <$> _psrFormattedScore,
                  ("leaderboardId" .=) <$> _psrLeaderboardId,
                  ("beatenScoreTimeSpans" .=) <$>
                    _psrBeatenScoreTimeSpans,
                  ("unbeatenScores" .=) <$> _psrUnbeatenScores])

-- | This is a JSON template for an anonymous player
--
-- /See:/ 'anonymousPlayer' smart constructor.
data AnonymousPlayer = AnonymousPlayer
    { _apAvatarImageURL :: !(Maybe Text)
    , _apKind           :: !Text
    , _apDisplayName    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnonymousPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apAvatarImageURL'
--
-- * 'apKind'
--
-- * 'apDisplayName'
anonymousPlayer
    :: AnonymousPlayer
anonymousPlayer =
    AnonymousPlayer
    { _apAvatarImageURL = Nothing
    , _apKind = "games#anonymousPlayer"
    , _apDisplayName = Nothing
    }

-- | The base URL for the image to display for the anonymous player.
apAvatarImageURL :: Lens' AnonymousPlayer (Maybe Text)
apAvatarImageURL
  = lens _apAvatarImageURL
      (\ s a -> s{_apAvatarImageURL = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#anonymousPlayer.
apKind :: Lens' AnonymousPlayer Text
apKind = lens _apKind (\ s a -> s{_apKind = a})

-- | The name to display for the anonymous player.
apDisplayName :: Lens' AnonymousPlayer (Maybe Text)
apDisplayName
  = lens _apDisplayName
      (\ s a -> s{_apDisplayName = a})

instance FromJSON AnonymousPlayer where
        parseJSON
          = withObject "AnonymousPlayer"
              (\ o ->
                 AnonymousPlayer <$>
                   (o .:? "avatarImageUrl") <*>
                     (o .:? "kind" .!= "games#anonymousPlayer")
                     <*> (o .:? "displayName"))

instance ToJSON AnonymousPlayer where
        toJSON AnonymousPlayer{..}
          = object
              (catMaybes
                 [("avatarImageUrl" .=) <$> _apAvatarImageURL,
                  Just ("kind" .= _apKind),
                  ("displayName" .=) <$> _apDisplayName])

-- | This is a JSON template for a Quest Criterion Contribution resource.
--
-- /See:/ 'questContribution' smart constructor.
data QuestContribution = QuestContribution
    { _qKind           :: !Text
    , _qValue          :: !(Maybe Int64)
    , _qFormattedValue :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestContribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qKind'
--
-- * 'qValue'
--
-- * 'qFormattedValue'
questContribution
    :: QuestContribution
questContribution =
    QuestContribution
    { _qKind = "games#questContribution"
    , _qValue = Nothing
    , _qFormattedValue = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#questContribution.
qKind :: Lens' QuestContribution Text
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | The value of the contribution.
qValue :: Lens' QuestContribution (Maybe Int64)
qValue = lens _qValue (\ s a -> s{_qValue = a})

-- | The formatted value of the contribution as a string. Format depends on
-- the configuration for the associated event definition in the Play Games
-- Developer Console.
qFormattedValue :: Lens' QuestContribution (Maybe Text)
qFormattedValue
  = lens _qFormattedValue
      (\ s a -> s{_qFormattedValue = a})

instance FromJSON QuestContribution where
        parseJSON
          = withObject "QuestContribution"
              (\ o ->
                 QuestContribution <$>
                   (o .:? "kind" .!= "games#questContribution") <*>
                     (o .:? "value")
                     <*> (o .:? "formattedValue"))

instance ToJSON QuestContribution where
        toJSON QuestContribution{..}
          = object
              (catMaybes
                 [Just ("kind" .= _qKind), ("value" .=) <$> _qValue,
                  ("formattedValue" .=) <$> _qFormattedValue])

-- | This is a JSON template for the client address when setting up a room.
--
-- /See:/ 'roomClientAddress' smart constructor.
data RoomClientAddress = RoomClientAddress
    { _rcaKind        :: !Text
    , _rcaXmppAddress :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomClientAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcaKind'
--
-- * 'rcaXmppAddress'
roomClientAddress
    :: RoomClientAddress
roomClientAddress =
    RoomClientAddress
    { _rcaKind = "games#roomClientAddress"
    , _rcaXmppAddress = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomClientAddress.
rcaKind :: Lens' RoomClientAddress Text
rcaKind = lens _rcaKind (\ s a -> s{_rcaKind = a})

-- | The XMPP address of the client on the Google Games XMPP network.
rcaXmppAddress :: Lens' RoomClientAddress (Maybe Text)
rcaXmppAddress
  = lens _rcaXmppAddress
      (\ s a -> s{_rcaXmppAddress = a})

instance FromJSON RoomClientAddress where
        parseJSON
          = withObject "RoomClientAddress"
              (\ o ->
                 RoomClientAddress <$>
                   (o .:? "kind" .!= "games#roomClientAddress") <*>
                     (o .:? "xmppAddress"))

instance ToJSON RoomClientAddress where
        toJSON RoomClientAddress{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rcaKind),
                  ("xmppAddress" .=) <$> _rcaXmppAddress])

-- | This is a JSON template for a list of leaderboard objects.
--
-- /See:/ 'leaderboardListResponse' smart constructor.
data LeaderboardListResponse = LeaderboardListResponse
    { _llrNextPageToken :: !(Maybe Text)
    , _llrKind          :: !Text
    , _llrItems         :: !(Maybe [Leaderboard])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LeaderboardListResponse
    { _llrNextPageToken = Nothing
    , _llrKind = "games#leaderboardListResponse"
    , _llrItems = Nothing
    }

-- | Token corresponding to the next page of results.
llrNextPageToken :: Lens' LeaderboardListResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#leaderboardListResponse.
llrKind :: Lens' LeaderboardListResponse Text
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
                 LeaderboardListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#leaderboardListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON LeaderboardListResponse where
        toJSON LeaderboardListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  Just ("kind" .= _llrKind),
                  ("items" .=) <$> _llrItems])

-- | This is a JSON template for a player score.
--
-- /See:/ 'playerScore' smart constructor.
data PlayerScore = PlayerScore
    { _psScoreTag       :: !(Maybe Text)
    , _psScore          :: !(Maybe Int64)
    , _psKind           :: !Text
    , _psFormattedScore :: !(Maybe Text)
    , _psTimeSpan       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerScore
    { _psScoreTag = Nothing
    , _psScore = Nothing
    , _psKind = "games#playerScore"
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
psScore = lens _psScore (\ s a -> s{_psScore = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerScore.
psKind :: Lens' PlayerScore Text
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | The formatted score for this player score.
psFormattedScore :: Lens' PlayerScore (Maybe Text)
psFormattedScore
  = lens _psFormattedScore
      (\ s a -> s{_psFormattedScore = a})

-- | The time span for this player score. Possible values are: - \"ALL_TIME\"
-- - The score is an all-time score. - \"WEEKLY\" - The score is a weekly
-- score. - \"DAILY\" - The score is a daily score.
psTimeSpan :: Lens' PlayerScore (Maybe Text)
psTimeSpan
  = lens _psTimeSpan (\ s a -> s{_psTimeSpan = a})

instance FromJSON PlayerScore where
        parseJSON
          = withObject "PlayerScore"
              (\ o ->
                 PlayerScore <$>
                   (o .:? "scoreTag") <*> (o .:? "score") <*>
                     (o .:? "kind" .!= "games#playerScore")
                     <*> (o .:? "formattedScore")
                     <*> (o .:? "timeSpan"))

instance ToJSON PlayerScore where
        toJSON PlayerScore{..}
          = object
              (catMaybes
                 [("scoreTag" .=) <$> _psScoreTag,
                  ("score" .=) <$> _psScore, Just ("kind" .= _psKind),
                  ("formattedScore" .=) <$> _psFormattedScore,
                  ("timeSpan" .=) <$> _psTimeSpan])

-- | This is a JSON template for an turn-based auto-match criteria object.
--
-- /See:/ 'turnBasedAutoMatchingCriteria' smart constructor.
data TurnBasedAutoMatchingCriteria = TurnBasedAutoMatchingCriteria
    { _tbamcKind                   :: !Text
    , _tbamcExclusiveBitmask       :: !(Maybe Int64)
    , _tbamcMaxAutoMatchingPlayers :: !(Maybe Int32)
    , _tbamcMinAutoMatchingPlayers :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedAutoMatchingCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbamcKind'
--
-- * 'tbamcExclusiveBitmask'
--
-- * 'tbamcMaxAutoMatchingPlayers'
--
-- * 'tbamcMinAutoMatchingPlayers'
turnBasedAutoMatchingCriteria
    :: TurnBasedAutoMatchingCriteria
turnBasedAutoMatchingCriteria =
    TurnBasedAutoMatchingCriteria
    { _tbamcKind = "games#turnBasedAutoMatchingCriteria"
    , _tbamcExclusiveBitmask = Nothing
    , _tbamcMaxAutoMatchingPlayers = Nothing
    , _tbamcMinAutoMatchingPlayers = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedAutoMatchingCriteria.
tbamcKind :: Lens' TurnBasedAutoMatchingCriteria Text
tbamcKind
  = lens _tbamcKind (\ s a -> s{_tbamcKind = a})

-- | A bitmask indicating when auto-matches are valid. When ANDed with other
-- exclusive bitmasks, the result must be zero. Can be used to support
-- exclusive roles within a game.
tbamcExclusiveBitmask :: Lens' TurnBasedAutoMatchingCriteria (Maybe Int64)
tbamcExclusiveBitmask
  = lens _tbamcExclusiveBitmask
      (\ s a -> s{_tbamcExclusiveBitmask = a})

-- | The maximum number of players that should be added to the match by
-- auto-matching.
tbamcMaxAutoMatchingPlayers :: Lens' TurnBasedAutoMatchingCriteria (Maybe Int32)
tbamcMaxAutoMatchingPlayers
  = lens _tbamcMaxAutoMatchingPlayers
      (\ s a -> s{_tbamcMaxAutoMatchingPlayers = a})

-- | The minimum number of players that should be added to the match by
-- auto-matching.
tbamcMinAutoMatchingPlayers :: Lens' TurnBasedAutoMatchingCriteria (Maybe Int32)
tbamcMinAutoMatchingPlayers
  = lens _tbamcMinAutoMatchingPlayers
      (\ s a -> s{_tbamcMinAutoMatchingPlayers = a})

instance FromJSON TurnBasedAutoMatchingCriteria where
        parseJSON
          = withObject "TurnBasedAutoMatchingCriteria"
              (\ o ->
                 TurnBasedAutoMatchingCriteria <$>
                   (o .:? "kind" .!=
                      "games#turnBasedAutoMatchingCriteria")
                     <*> (o .:? "exclusiveBitmask")
                     <*> (o .:? "maxAutoMatchingPlayers")
                     <*> (o .:? "minAutoMatchingPlayers"))

instance ToJSON TurnBasedAutoMatchingCriteria where
        toJSON TurnBasedAutoMatchingCriteria{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tbamcKind),
                  ("exclusiveBitmask" .=) <$> _tbamcExclusiveBitmask,
                  ("maxAutoMatchingPlayers" .=) <$>
                    _tbamcMaxAutoMatchingPlayers,
                  ("minAutoMatchingPlayers" .=) <$>
                    _tbamcMinAutoMatchingPlayers])

-- | This is a JSON template for an image of a snapshot.
--
-- /See:/ 'snapshotImage' smart constructor.
data SnapshotImage = SnapshotImage
    { _siHeight   :: !(Maybe Int32)
    , _siKind     :: !Text
    , _siURL      :: !(Maybe Text)
    , _siMimeType :: !(Maybe Text)
    , _siWidth    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SnapshotImage
    { _siHeight = Nothing
    , _siKind = "games#snapshotImage"
    , _siURL = Nothing
    , _siMimeType = Nothing
    , _siWidth = Nothing
    }

-- | The height of the image.
siHeight :: Lens' SnapshotImage (Maybe Int32)
siHeight = lens _siHeight (\ s a -> s{_siHeight = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#snapshotImage.
siKind :: Lens' SnapshotImage Text
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
siWidth = lens _siWidth (\ s a -> s{_siWidth = a})

instance FromJSON SnapshotImage where
        parseJSON
          = withObject "SnapshotImage"
              (\ o ->
                 SnapshotImage <$>
                   (o .:? "height") <*>
                     (o .:? "kind" .!= "games#snapshotImage")
                     <*> (o .:? "url")
                     <*> (o .:? "mime_type")
                     <*> (o .:? "width"))

instance ToJSON SnapshotImage where
        toJSON SnapshotImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _siHeight,
                  Just ("kind" .= _siKind), ("url" .=) <$> _siURL,
                  ("mime_type" .=) <$> _siMimeType,
                  ("width" .=) <$> _siWidth])

-- | This is a JSON template for the status of a room that the player has
-- joined.
--
-- /See:/ 'roomStatus' smart constructor.
data RoomStatus = RoomStatus
    { _rsStatus             :: !(Maybe Text)
    , _rsKind               :: !Text
    , _rsAutoMatchingStatus :: !(Maybe RoomAutoMatchStatus)
    , _rsStatusVersion      :: !(Maybe Int32)
    , _rsParticipants       :: !(Maybe [RoomParticipant])
    , _rsRoomId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsStatus'
--
-- * 'rsKind'
--
-- * 'rsAutoMatchingStatus'
--
-- * 'rsStatusVersion'
--
-- * 'rsParticipants'
--
-- * 'rsRoomId'
roomStatus
    :: RoomStatus
roomStatus =
    RoomStatus
    { _rsStatus = Nothing
    , _rsKind = "games#roomStatus"
    , _rsAutoMatchingStatus = Nothing
    , _rsStatusVersion = Nothing
    , _rsParticipants = Nothing
    , _rsRoomId = Nothing
    }

-- | The status of the room. Possible values are: - \"ROOM_INVITING\" - One
-- or more players have been invited and not responded. -
-- \"ROOM_AUTO_MATCHING\" - One or more slots need to be filled by
-- auto-matching. - \"ROOM_CONNECTING\" - Players have joined are
-- connecting to each other (either before or after auto-matching). -
-- \"ROOM_ACTIVE\" - All players have joined and connected to each other. -
-- \"ROOM_DELETED\" - All joined players have left.
rsStatus :: Lens' RoomStatus (Maybe Text)
rsStatus = lens _rsStatus (\ s a -> s{_rsStatus = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomStatus.
rsKind :: Lens' RoomStatus Text
rsKind = lens _rsKind (\ s a -> s{_rsKind = a})

-- | Auto-matching status for this room. Not set if the room is not currently
-- in the automatching queue.
rsAutoMatchingStatus :: Lens' RoomStatus (Maybe RoomAutoMatchStatus)
rsAutoMatchingStatus
  = lens _rsAutoMatchingStatus
      (\ s a -> s{_rsAutoMatchingStatus = a})

-- | The version of the status for the room: an increasing counter, used by
-- the client to ignore out-of-order updates to room status.
rsStatusVersion :: Lens' RoomStatus (Maybe Int32)
rsStatusVersion
  = lens _rsStatusVersion
      (\ s a -> s{_rsStatusVersion = a})

-- | The participants involved in the room, along with their statuses.
-- Includes participants who have left or declined invitations.
rsParticipants :: Lens' RoomStatus [RoomParticipant]
rsParticipants
  = lens _rsParticipants
      (\ s a -> s{_rsParticipants = a})
      . _Default
      . _Coerce

-- | Globally unique ID for a room.
rsRoomId :: Lens' RoomStatus (Maybe Text)
rsRoomId = lens _rsRoomId (\ s a -> s{_rsRoomId = a})

instance FromJSON RoomStatus where
        parseJSON
          = withObject "RoomStatus"
              (\ o ->
                 RoomStatus <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "games#roomStatus")
                     <*> (o .:? "autoMatchingStatus")
                     <*> (o .:? "statusVersion")
                     <*> (o .:? "participants" .!= mempty)
                     <*> (o .:? "roomId"))

instance ToJSON RoomStatus where
        toJSON RoomStatus{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rsStatus,
                  Just ("kind" .= _rsKind),
                  ("autoMatchingStatus" .=) <$> _rsAutoMatchingStatus,
                  ("statusVersion" .=) <$> _rsStatusVersion,
                  ("participants" .=) <$> _rsParticipants,
                  ("roomId" .=) <$> _rsRoomId])

-- | This is a JSON template for a list of player leaderboard scores.
--
-- /See:/ 'playerLeaderboardScoreListResponse' smart constructor.
data PlayerLeaderboardScoreListResponse = PlayerLeaderboardScoreListResponse
    { _plslrNextPageToken :: !(Maybe Text)
    , _plslrKind          :: !Text
    , _plslrItems         :: !(Maybe [PlayerLeaderboardScore])
    , _plslrPlayer        :: !(Maybe Player)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerLeaderboardScoreListResponse
    { _plslrNextPageToken = Nothing
    , _plslrKind = "games#playerLeaderboardScoreListResponse"
    , _plslrItems = Nothing
    , _plslrPlayer = Nothing
    }

-- | The pagination token for the next page of results.
plslrNextPageToken :: Lens' PlayerLeaderboardScoreListResponse (Maybe Text)
plslrNextPageToken
  = lens _plslrNextPageToken
      (\ s a -> s{_plslrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerLeaderboardScoreListResponse.
plslrKind :: Lens' PlayerLeaderboardScoreListResponse Text
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
                 PlayerLeaderboardScoreListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "games#playerLeaderboardScoreListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "player"))

instance ToJSON PlayerLeaderboardScoreListResponse
         where
        toJSON PlayerLeaderboardScoreListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plslrNextPageToken,
                  Just ("kind" .= _plslrKind),
                  ("items" .=) <$> _plslrItems,
                  ("player" .=) <$> _plslrPlayer])

-- | This is a JSON template for the iOS details resource.
--
-- /See:/ 'instanceIosDetails' smart constructor.
data InstanceIosDetails = InstanceIosDetails
    { _iidItunesAppId        :: !(Maybe Text)
    , _iidPreferredForIPad   :: !(Maybe Bool)
    , _iidSupportIPhone      :: !(Maybe Bool)
    , _iidKind               :: !Text
    , _iidSupportIPad        :: !(Maybe Bool)
    , _iidPreferredForIPhone :: !(Maybe Bool)
    , _iidBundleIdentifier   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    InstanceIosDetails
    { _iidItunesAppId = Nothing
    , _iidPreferredForIPad = Nothing
    , _iidSupportIPhone = Nothing
    , _iidKind = "games#instanceIosDetails"
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
-- string games#instanceIosDetails.
iidKind :: Lens' InstanceIosDetails Text
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
                 InstanceIosDetails <$>
                   (o .:? "itunesAppId") <*> (o .:? "preferredForIpad")
                     <*> (o .:? "supportIphone")
                     <*> (o .:? "kind" .!= "games#instanceIosDetails")
                     <*> (o .:? "supportIpad")
                     <*> (o .:? "preferredForIphone")
                     <*> (o .:? "bundleIdentifier"))

instance ToJSON InstanceIosDetails where
        toJSON InstanceIosDetails{..}
          = object
              (catMaybes
                 [("itunesAppId" .=) <$> _iidItunesAppId,
                  ("preferredForIpad" .=) <$> _iidPreferredForIPad,
                  ("supportIphone" .=) <$> _iidSupportIPhone,
                  Just ("kind" .= _iidKind),
                  ("supportIpad" .=) <$> _iidSupportIPad,
                  ("preferredForIphone" .=) <$> _iidPreferredForIPhone,
                  ("bundleIdentifier" .=) <$> _iidBundleIdentifier])

-- | This is a JSON template for an event period update resource.
--
-- /See:/ 'eventUpdateResponse' smart constructor.
data EventUpdateResponse = EventUpdateResponse
    { _eurPlayerEvents  :: !(Maybe [PlayerEvent])
    , _eurBatchFailures :: !(Maybe [EventBatchRecordFailure])
    , _eurEventFailures :: !(Maybe [EventRecordFailure])
    , _eurKind          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventUpdateResponse
    { _eurPlayerEvents = Nothing
    , _eurBatchFailures = Nothing
    , _eurEventFailures = Nothing
    , _eurKind = "games#eventUpdateResponse"
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
-- string games#eventUpdateResponse.
eurKind :: Lens' EventUpdateResponse Text
eurKind = lens _eurKind (\ s a -> s{_eurKind = a})

instance FromJSON EventUpdateResponse where
        parseJSON
          = withObject "EventUpdateResponse"
              (\ o ->
                 EventUpdateResponse <$>
                   (o .:? "playerEvents" .!= mempty) <*>
                     (o .:? "batchFailures" .!= mempty)
                     <*> (o .:? "eventFailures" .!= mempty)
                     <*> (o .:? "kind" .!= "games#eventUpdateResponse"))

instance ToJSON EventUpdateResponse where
        toJSON EventUpdateResponse{..}
          = object
              (catMaybes
                 [("playerEvents" .=) <$> _eurPlayerEvents,
                  ("batchFailures" .=) <$> _eurBatchFailures,
                  ("eventFailures" .=) <$> _eurEventFailures,
                  Just ("kind" .= _eurKind)])

-- | This is a JSON template for the result of checking a revision.
--
-- /See:/ 'revisionCheckResponse' smart constructor.
data RevisionCheckResponse = RevisionCheckResponse
    { _rcrAPIVersion     :: !(Maybe Text)
    , _rcrKind           :: !Text
    , _rcrRevisionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    RevisionCheckResponse
    { _rcrAPIVersion = Nothing
    , _rcrKind = "games#revisionCheckResponse"
    , _rcrRevisionStatus = Nothing
    }

-- | The version of the API this client revision should use when calling API
-- methods.
rcrAPIVersion :: Lens' RevisionCheckResponse (Maybe Text)
rcrAPIVersion
  = lens _rcrAPIVersion
      (\ s a -> s{_rcrAPIVersion = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#revisionCheckResponse.
rcrKind :: Lens' RevisionCheckResponse Text
rcrKind = lens _rcrKind (\ s a -> s{_rcrKind = a})

-- | The result of the revision check. Possible values are: - \"OK\" - The
-- revision being used is current. - \"DEPRECATED\" - There is currently a
-- newer version available, but the revision being used still works. -
-- \"INVALID\" - The revision being used is not supported in any released
-- version.
rcrRevisionStatus :: Lens' RevisionCheckResponse (Maybe Text)
rcrRevisionStatus
  = lens _rcrRevisionStatus
      (\ s a -> s{_rcrRevisionStatus = a})

instance FromJSON RevisionCheckResponse where
        parseJSON
          = withObject "RevisionCheckResponse"
              (\ o ->
                 RevisionCheckResponse <$>
                   (o .:? "apiVersion") <*>
                     (o .:? "kind" .!= "games#revisionCheckResponse")
                     <*> (o .:? "revisionStatus"))

instance ToJSON RevisionCheckResponse where
        toJSON RevisionCheckResponse{..}
          = object
              (catMaybes
                 [("apiVersion" .=) <$> _rcrAPIVersion,
                  Just ("kind" .= _rcrKind),
                  ("revisionStatus" .=) <$> _rcrRevisionStatus])

-- | This is a JSON template for a result for a match participant.
--
-- /See:/ 'participantResult' smart constructor.
data ParticipantResult = ParticipantResult
    { _prParticipantId :: !(Maybe Text)
    , _prKind          :: !Text
    , _prResult        :: !(Maybe Text)
    , _prPlacing       :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ParticipantResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prParticipantId'
--
-- * 'prKind'
--
-- * 'prResult'
--
-- * 'prPlacing'
participantResult
    :: ParticipantResult
participantResult =
    ParticipantResult
    { _prParticipantId = Nothing
    , _prKind = "games#participantResult"
    , _prResult = Nothing
    , _prPlacing = Nothing
    }

-- | The ID of the participant.
prParticipantId :: Lens' ParticipantResult (Maybe Text)
prParticipantId
  = lens _prParticipantId
      (\ s a -> s{_prParticipantId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#participantResult.
prKind :: Lens' ParticipantResult Text
prKind = lens _prKind (\ s a -> s{_prKind = a})

-- | The result of the participant for this match. Possible values are: -
-- \"MATCH_RESULT_WIN\" - The participant won the match. -
-- \"MATCH_RESULT_LOSS\" - The participant lost the match. -
-- \"MATCH_RESULT_TIE\" - The participant tied the match. -
-- \"MATCH_RESULT_NONE\" - There was no winner for the match (nobody wins
-- or loses this kind of game.) - \"MATCH_RESULT_DISCONNECT\" - The
-- participant disconnected \/ left during the match. -
-- \"MATCH_RESULT_DISAGREED\" - Different clients reported different
-- results for this participant.
prResult :: Lens' ParticipantResult (Maybe Text)
prResult = lens _prResult (\ s a -> s{_prResult = a})

-- | The placement or ranking of the participant in the match results; a
-- number from one to the number of participants in the match. Multiple
-- participants may have the same placing value in case of a type.
prPlacing :: Lens' ParticipantResult (Maybe Int32)
prPlacing
  = lens _prPlacing (\ s a -> s{_prPlacing = a})

instance FromJSON ParticipantResult where
        parseJSON
          = withObject "ParticipantResult"
              (\ o ->
                 ParticipantResult <$>
                   (o .:? "participantId") <*>
                     (o .:? "kind" .!= "games#participantResult")
                     <*> (o .:? "result")
                     <*> (o .:? "placing"))

instance ToJSON ParticipantResult where
        toJSON ParticipantResult{..}
          = object
              (catMaybes
                 [("participantId" .=) <$> _prParticipantId,
                  Just ("kind" .= _prKind),
                  ("result" .=) <$> _prResult,
                  ("placing" .=) <$> _prPlacing])

-- | This is a JSON template for the Leaderboard resource.
--
-- /See:/ 'leaderboard' smart constructor.
data Leaderboard = Leaderboard
    { _lKind             :: !Text
    , _lIsIconURLDefault :: !(Maybe Bool)
    , _lName             :: !(Maybe Text)
    , _lId               :: !(Maybe Text)
    , _lIconURL          :: !(Maybe Text)
    , _lOrder            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Leaderboard
    { _lKind = "games#leaderboard"
    , _lIsIconURLDefault = Nothing
    , _lName = Nothing
    , _lId = Nothing
    , _lIconURL = Nothing
    , _lOrder = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#leaderboard.
lKind :: Lens' Leaderboard Text
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

-- | How scores are ordered. Possible values are: - \"LARGER_IS_BETTER\" -
-- Larger values are better; scores are sorted in descending order. -
-- \"SMALLER_IS_BETTER\" - Smaller values are better; scores are sorted in
-- ascending order.
lOrder :: Lens' Leaderboard (Maybe Text)
lOrder = lens _lOrder (\ s a -> s{_lOrder = a})

instance FromJSON Leaderboard where
        parseJSON
          = withObject "Leaderboard"
              (\ o ->
                 Leaderboard <$>
                   (o .:? "kind" .!= "games#leaderboard") <*>
                     (o .:? "isIconUrlDefault")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "order"))

instance ToJSON Leaderboard where
        toJSON Leaderboard{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lKind),
                  ("isIconUrlDefault" .=) <$> _lIsIconURLDefault,
                  ("name" .=) <$> _lName, ("id" .=) <$> _lId,
                  ("iconUrl" .=) <$> _lIconURL,
                  ("order" .=) <$> _lOrder])

-- | This is a JSON template for the metagame config resource
--
-- /See:/ 'metagameConfig' smart constructor.
data MetagameConfig = MetagameConfig
    { _mcKind           :: !Text
    , _mcCurrentVersion :: !(Maybe Int32)
    , _mcPlayerLevels   :: !(Maybe [PlayerLevel])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    MetagameConfig
    { _mcKind = "games#metagameConfig"
    , _mcCurrentVersion = Nothing
    , _mcPlayerLevels = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#metagameConfig.
mcKind :: Lens' MetagameConfig Text
mcKind = lens _mcKind (\ s a -> s{_mcKind = a})

-- | Current version of the metagame configuration data. When this data is
-- updated, the version number will be increased by one.
mcCurrentVersion :: Lens' MetagameConfig (Maybe Int32)
mcCurrentVersion
  = lens _mcCurrentVersion
      (\ s a -> s{_mcCurrentVersion = a})

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
                 MetagameConfig <$>
                   (o .:? "kind" .!= "games#metagameConfig") <*>
                     (o .:? "currentVersion")
                     <*> (o .:? "playerLevels" .!= mempty))

instance ToJSON MetagameConfig where
        toJSON MetagameConfig{..}
          = object
              (catMaybes
                 [Just ("kind" .= _mcKind),
                  ("currentVersion" .=) <$> _mcCurrentVersion,
                  ("playerLevels" .=) <$> _mcPlayerLevels])

-- | This is a JSON template for a list of category data objects.
--
-- /See:/ 'categoryListResponse' smart constructor.
data CategoryListResponse = CategoryListResponse
    { _clrNextPageToken :: !(Maybe Text)
    , _clrKind          :: !Text
    , _clrItems         :: !(Maybe [Category])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CategoryListResponse
    { _clrNextPageToken = Nothing
    , _clrKind = "games#categoryListResponse"
    , _clrItems = Nothing
    }

-- | Token corresponding to the next page of results.
clrNextPageToken :: Lens' CategoryListResponse (Maybe Text)
clrNextPageToken
  = lens _clrNextPageToken
      (\ s a -> s{_clrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#categoryListResponse.
clrKind :: Lens' CategoryListResponse Text
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
                 CategoryListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#categoryListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CategoryListResponse where
        toJSON CategoryListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _clrNextPageToken,
                  Just ("kind" .= _clrKind),
                  ("items" .=) <$> _clrItems])

-- | This is a JSON template for an update on the status of a peer in a room.
--
-- /See:/ 'roomP2PStatus' smart constructor.
data RoomP2PStatus = RoomP2PStatus
    { _rppsStatus                           :: !(Maybe Text)
    , _rppsParticipantId                    :: !(Maybe Text)
    , _rppsKind                             :: !Text
    , _rppsError                            :: !(Maybe Text)
    , _rppsErrorReason                      :: !(Maybe Text)
    , _rppsConnectionSetupLatencyMillis     :: !(Maybe Int32)
    , _rppsUnreliableRoundtripLatencyMillis :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomP2PStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppsStatus'
--
-- * 'rppsParticipantId'
--
-- * 'rppsKind'
--
-- * 'rppsError'
--
-- * 'rppsErrorReason'
--
-- * 'rppsConnectionSetupLatencyMillis'
--
-- * 'rppsUnreliableRoundtripLatencyMillis'
roomP2PStatus
    :: RoomP2PStatus
roomP2PStatus =
    RoomP2PStatus
    { _rppsStatus = Nothing
    , _rppsParticipantId = Nothing
    , _rppsKind = "games#roomP2PStatus"
    , _rppsError = Nothing
    , _rppsErrorReason = Nothing
    , _rppsConnectionSetupLatencyMillis = Nothing
    , _rppsUnreliableRoundtripLatencyMillis = Nothing
    }

-- | The status of the peer in the room. Possible values are: -
-- \"CONNECTION_ESTABLISHED\" - The client established a P2P connection
-- with the peer. - \"CONNECTION_FAILED\" - The client failed to establish
-- directed presence with the peer.
rppsStatus :: Lens' RoomP2PStatus (Maybe Text)
rppsStatus
  = lens _rppsStatus (\ s a -> s{_rppsStatus = a})

-- | The ID of the participant.
rppsParticipantId :: Lens' RoomP2PStatus (Maybe Text)
rppsParticipantId
  = lens _rppsParticipantId
      (\ s a -> s{_rppsParticipantId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomP2PStatus.
rppsKind :: Lens' RoomP2PStatus Text
rppsKind = lens _rppsKind (\ s a -> s{_rppsKind = a})

-- | The error code in event of a failure. Possible values are: -
-- \"P2P_FAILED\" - The client failed to establish a P2P connection with
-- the peer. - \"PRESENCE_FAILED\" - The client failed to register to
-- receive P2P connections. - \"RELAY_SERVER_FAILED\" - The client received
-- an error when trying to use the relay server to establish a P2P
-- connection with the peer.
rppsError :: Lens' RoomP2PStatus (Maybe Text)
rppsError
  = lens _rppsError (\ s a -> s{_rppsError = a})

-- | More detailed diagnostic message returned in event of a failure.
rppsErrorReason :: Lens' RoomP2PStatus (Maybe Text)
rppsErrorReason
  = lens _rppsErrorReason
      (\ s a -> s{_rppsErrorReason = a})

-- | The amount of time in milliseconds it took to establish connections with
-- this peer.
rppsConnectionSetupLatencyMillis :: Lens' RoomP2PStatus (Maybe Int32)
rppsConnectionSetupLatencyMillis
  = lens _rppsConnectionSetupLatencyMillis
      (\ s a -> s{_rppsConnectionSetupLatencyMillis = a})

-- | The amount of time in milliseconds it took to send packets back and
-- forth on the unreliable channel with this peer.
rppsUnreliableRoundtripLatencyMillis :: Lens' RoomP2PStatus (Maybe Int32)
rppsUnreliableRoundtripLatencyMillis
  = lens _rppsUnreliableRoundtripLatencyMillis
      (\ s a ->
         s{_rppsUnreliableRoundtripLatencyMillis = a})

instance FromJSON RoomP2PStatus where
        parseJSON
          = withObject "RoomP2PStatus"
              (\ o ->
                 RoomP2PStatus <$>
                   (o .:? "status") <*> (o .:? "participantId") <*>
                     (o .:? "kind" .!= "games#roomP2PStatus")
                     <*> (o .:? "error")
                     <*> (o .:? "error_reason")
                     <*> (o .:? "connectionSetupLatencyMillis")
                     <*> (o .:? "unreliableRoundtripLatencyMillis"))

instance ToJSON RoomP2PStatus where
        toJSON RoomP2PStatus{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rppsStatus,
                  ("participantId" .=) <$> _rppsParticipantId,
                  Just ("kind" .= _rppsKind),
                  ("error" .=) <$> _rppsError,
                  ("error_reason" .=) <$> _rppsErrorReason,
                  ("connectionSetupLatencyMillis" .=) <$>
                    _rppsConnectionSetupLatencyMillis,
                  ("unreliableRoundtripLatencyMillis" .=) <$>
                    _rppsUnreliableRoundtripLatencyMillis])

-- | This is a JSON template for turn-based match modification metadata.
--
-- /See:/ 'turnBasedMatchModification' smart constructor.
data TurnBasedMatchModification = TurnBasedMatchModification
    { _tbmmParticipantId           :: !(Maybe Text)
    , _tbmmKind                    :: !Text
    , _tbmmModifiedTimestampMillis :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchModification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmmParticipantId'
--
-- * 'tbmmKind'
--
-- * 'tbmmModifiedTimestampMillis'
turnBasedMatchModification
    :: TurnBasedMatchModification
turnBasedMatchModification =
    TurnBasedMatchModification
    { _tbmmParticipantId = Nothing
    , _tbmmKind = "games#turnBasedMatchModification"
    , _tbmmModifiedTimestampMillis = Nothing
    }

-- | The ID of the participant that modified the match.
tbmmParticipantId :: Lens' TurnBasedMatchModification (Maybe Text)
tbmmParticipantId
  = lens _tbmmParticipantId
      (\ s a -> s{_tbmmParticipantId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchModification.
tbmmKind :: Lens' TurnBasedMatchModification Text
tbmmKind = lens _tbmmKind (\ s a -> s{_tbmmKind = a})

-- | The timestamp at which they modified the match, in milliseconds since
-- the epoch in UTC.
tbmmModifiedTimestampMillis :: Lens' TurnBasedMatchModification (Maybe Int64)
tbmmModifiedTimestampMillis
  = lens _tbmmModifiedTimestampMillis
      (\ s a -> s{_tbmmModifiedTimestampMillis = a})

instance FromJSON TurnBasedMatchModification where
        parseJSON
          = withObject "TurnBasedMatchModification"
              (\ o ->
                 TurnBasedMatchModification <$>
                   (o .:? "participantId") <*>
                     (o .:? "kind" .!= "games#turnBasedMatchModification")
                     <*> (o .:? "modifiedTimestampMillis"))

instance ToJSON TurnBasedMatchModification where
        toJSON TurnBasedMatchModification{..}
          = object
              (catMaybes
                 [("participantId" .=) <$> _tbmmParticipantId,
                  Just ("kind" .= _tbmmKind),
                  ("modifiedTimestampMillis" .=) <$>
                    _tbmmModifiedTimestampMillis])

-- | This is a JSON template for an event definition resource.
--
-- /See:/ 'eventDefinition' smart constructor.
data EventDefinition = EventDefinition
    { _edIsDefaultImageURL :: !(Maybe Bool)
    , _edKind              :: !Text
    , _edVisibility        :: !(Maybe Text)
    , _edImageURL          :: !(Maybe Text)
    , _edDisplayName       :: !(Maybe Text)
    , _edId                :: !(Maybe Text)
    , _edChildEvents       :: !(Maybe [EventChild])
    , _edDescription       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventDefinition
    { _edIsDefaultImageURL = Nothing
    , _edKind = "games#eventDefinition"
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
-- string games#eventDefinition.
edKind :: Lens' EventDefinition Text
edKind = lens _edKind (\ s a -> s{_edKind = a})

-- | The visibility of event being tracked in this definition. Possible
-- values are: - \"REVEALED\": This event should be visible to all users. -
-- \"HIDDEN\": This event should only be shown to users that have recorded
-- this event at least once.
edVisibility :: Lens' EventDefinition (Maybe Text)
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
                 EventDefinition <$>
                   (o .:? "isDefaultImageUrl") <*>
                     (o .:? "kind" .!= "games#eventDefinition")
                     <*> (o .:? "visibility")
                     <*> (o .:? "imageUrl")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "childEvents" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON EventDefinition where
        toJSON EventDefinition{..}
          = object
              (catMaybes
                 [("isDefaultImageUrl" .=) <$> _edIsDefaultImageURL,
                  Just ("kind" .= _edKind),
                  ("visibility" .=) <$> _edVisibility,
                  ("imageUrl" .=) <$> _edImageURL,
                  ("displayName" .=) <$> _edDisplayName,
                  ("id" .=) <$> _edId,
                  ("childEvents" .=) <$> _edChildEvents,
                  ("description" .=) <$> _edDescription])

-- | This is a JSON template for room modification metadata.
--
-- /See:/ 'roomModification' smart constructor.
data RoomModification = RoomModification
    { _rmParticipantId           :: !(Maybe Text)
    , _rmKind                    :: !Text
    , _rmModifiedTimestampMillis :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomModification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmParticipantId'
--
-- * 'rmKind'
--
-- * 'rmModifiedTimestampMillis'
roomModification
    :: RoomModification
roomModification =
    RoomModification
    { _rmParticipantId = Nothing
    , _rmKind = "games#roomModification"
    , _rmModifiedTimestampMillis = Nothing
    }

-- | The ID of the participant that modified the room.
rmParticipantId :: Lens' RoomModification (Maybe Text)
rmParticipantId
  = lens _rmParticipantId
      (\ s a -> s{_rmParticipantId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomModification.
rmKind :: Lens' RoomModification Text
rmKind = lens _rmKind (\ s a -> s{_rmKind = a})

-- | The timestamp at which they modified the room, in milliseconds since the
-- epoch in UTC.
rmModifiedTimestampMillis :: Lens' RoomModification (Maybe Int64)
rmModifiedTimestampMillis
  = lens _rmModifiedTimestampMillis
      (\ s a -> s{_rmModifiedTimestampMillis = a})

instance FromJSON RoomModification where
        parseJSON
          = withObject "RoomModification"
              (\ o ->
                 RoomModification <$>
                   (o .:? "participantId") <*>
                     (o .:? "kind" .!= "games#roomModification")
                     <*> (o .:? "modifiedTimestampMillis"))

instance ToJSON RoomModification where
        toJSON RoomModification{..}
          = object
              (catMaybes
                 [("participantId" .=) <$> _rmParticipantId,
                  Just ("kind" .= _rmKind),
                  ("modifiedTimestampMillis" .=) <$>
                    _rmModifiedTimestampMillis])

-- | This is a JSON template for an event period update resource.
--
-- /See:/ 'eventUpdateRequest' smart constructor.
data EventUpdateRequest = EventUpdateRequest
    { _eUpdateCount  :: !(Maybe Int64)
    , _eKind         :: !Text
    , _eDefinitionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventUpdateRequest
    { _eUpdateCount = Nothing
    , _eKind = "games#eventUpdateRequest"
    , _eDefinitionId = Nothing
    }

-- | The number of times this event occurred in this time period.
eUpdateCount :: Lens' EventUpdateRequest (Maybe Int64)
eUpdateCount
  = lens _eUpdateCount (\ s a -> s{_eUpdateCount = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventUpdateRequest.
eKind :: Lens' EventUpdateRequest Text
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
                 EventUpdateRequest <$>
                   (o .:? "updateCount") <*>
                     (o .:? "kind" .!= "games#eventUpdateRequest")
                     <*> (o .:? "definitionId"))

instance ToJSON EventUpdateRequest where
        toJSON EventUpdateRequest{..}
          = object
              (catMaybes
                 [("updateCount" .=) <$> _eUpdateCount,
                  Just ("kind" .= _eKind),
                  ("definitionId" .=) <$> _eDefinitionId])

-- | This is a JSON template for an achievement unlock response
--
-- /See:/ 'achievementUnlockResponse' smart constructor.
data AchievementUnlockResponse = AchievementUnlockResponse
    { _achKind          :: !Text
    , _achNewlyUnlocked :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementUnlockResponse
    { _achKind = "games#achievementUnlockResponse"
    , _achNewlyUnlocked = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementUnlockResponse.
achKind :: Lens' AchievementUnlockResponse Text
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
                 AchievementUnlockResponse <$>
                   (o .:? "kind" .!= "games#achievementUnlockResponse")
                     <*> (o .:? "newlyUnlocked"))

instance ToJSON AchievementUnlockResponse where
        toJSON AchievementUnlockResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _achKind),
                  ("newlyUnlocked" .=) <$> _achNewlyUnlocked])

-- | This is a JSON template for an achievement object.
--
-- /See:/ 'playerAchievement' smart constructor.
data PlayerAchievement = PlayerAchievement
    { _paKind                        :: !Text
    , _paAchievementState            :: !(Maybe Text)
    , _paFormattedCurrentStepsString :: !(Maybe Text)
    , _paExperiencePoints            :: !(Maybe Int64)
    , _paId                          :: !(Maybe Text)
    , _paCurrentSteps                :: !(Maybe Int32)
    , _paLastUpdatedTimestamp        :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerAchievement
    { _paKind = "games#playerAchievement"
    , _paAchievementState = Nothing
    , _paFormattedCurrentStepsString = Nothing
    , _paExperiencePoints = Nothing
    , _paId = Nothing
    , _paCurrentSteps = Nothing
    , _paLastUpdatedTimestamp = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerAchievement.
paKind :: Lens' PlayerAchievement Text
paKind = lens _paKind (\ s a -> s{_paKind = a})

-- | The state of the achievement. Possible values are: - \"HIDDEN\" -
-- Achievement is hidden. - \"REVEALED\" - Achievement is revealed. -
-- \"UNLOCKED\" - Achievement is unlocked.
paAchievementState :: Lens' PlayerAchievement (Maybe Text)
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

-- | The ID of the achievement.
paId :: Lens' PlayerAchievement (Maybe Text)
paId = lens _paId (\ s a -> s{_paId = a})

-- | The current steps for an incremental achievement.
paCurrentSteps :: Lens' PlayerAchievement (Maybe Int32)
paCurrentSteps
  = lens _paCurrentSteps
      (\ s a -> s{_paCurrentSteps = a})

-- | The timestamp of the last modification to this achievement\'s state.
paLastUpdatedTimestamp :: Lens' PlayerAchievement (Maybe Int64)
paLastUpdatedTimestamp
  = lens _paLastUpdatedTimestamp
      (\ s a -> s{_paLastUpdatedTimestamp = a})

instance FromJSON PlayerAchievement where
        parseJSON
          = withObject "PlayerAchievement"
              (\ o ->
                 PlayerAchievement <$>
                   (o .:? "kind" .!= "games#playerAchievement") <*>
                     (o .:? "achievementState")
                     <*> (o .:? "formattedCurrentStepsString")
                     <*> (o .:? "experiencePoints")
                     <*> (o .:? "id")
                     <*> (o .:? "currentSteps")
                     <*> (o .:? "lastUpdatedTimestamp"))

instance ToJSON PlayerAchievement where
        toJSON PlayerAchievement{..}
          = object
              (catMaybes
                 [Just ("kind" .= _paKind),
                  ("achievementState" .=) <$> _paAchievementState,
                  ("formattedCurrentStepsString" .=) <$>
                    _paFormattedCurrentStepsString,
                  ("experiencePoints" .=) <$> _paExperiencePoints,
                  ("id" .=) <$> _paId,
                  ("currentSteps" .=) <$> _paCurrentSteps,
                  ("lastUpdatedTimestamp" .=) <$>
                    _paLastUpdatedTimestamp])

-- | This is a JSON template for an update on the status of peers in a room.
--
-- /See:/ 'roomP2PStatuses' smart constructor.
data RoomP2PStatuses = RoomP2PStatuses
    { _rppssKind    :: !Text
    , _rppssUpdates :: !(Maybe [RoomP2PStatus])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomP2PStatuses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppssKind'
--
-- * 'rppssUpdates'
roomP2PStatuses
    :: RoomP2PStatuses
roomP2PStatuses =
    RoomP2PStatuses
    { _rppssKind = "games#roomP2PStatuses"
    , _rppssUpdates = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomP2PStatuses.
rppssKind :: Lens' RoomP2PStatuses Text
rppssKind
  = lens _rppssKind (\ s a -> s{_rppssKind = a})

-- | The updates for the peers.
rppssUpdates :: Lens' RoomP2PStatuses [RoomP2PStatus]
rppssUpdates
  = lens _rppssUpdates (\ s a -> s{_rppssUpdates = a})
      . _Default
      . _Coerce

instance FromJSON RoomP2PStatuses where
        parseJSON
          = withObject "RoomP2PStatuses"
              (\ o ->
                 RoomP2PStatuses <$>
                   (o .:? "kind" .!= "games#roomP2PStatuses") <*>
                     (o .:? "updates" .!= mempty))

instance ToJSON RoomP2PStatuses where
        toJSON RoomP2PStatuses{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rppssKind),
                  ("updates" .=) <$> _rppssUpdates])

-- | This is a JSON template for an image asset object.
--
-- /See:/ 'imageAsset' smart constructor.
data ImageAsset = ImageAsset
    { _iaHeight :: !(Maybe Int32)
    , _iaKind   :: !Text
    , _iaURL    :: !(Maybe Text)
    , _iaWidth  :: !(Maybe Int32)
    , _iaName   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ImageAsset
    { _iaHeight = Nothing
    , _iaKind = "games#imageAsset"
    , _iaURL = Nothing
    , _iaWidth = Nothing
    , _iaName = Nothing
    }

-- | The height of the asset.
iaHeight :: Lens' ImageAsset (Maybe Int32)
iaHeight = lens _iaHeight (\ s a -> s{_iaHeight = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#imageAsset.
iaKind :: Lens' ImageAsset Text
iaKind = lens _iaKind (\ s a -> s{_iaKind = a})

-- | The URL of the asset.
iaURL :: Lens' ImageAsset (Maybe Text)
iaURL = lens _iaURL (\ s a -> s{_iaURL = a})

-- | The width of the asset.
iaWidth :: Lens' ImageAsset (Maybe Int32)
iaWidth = lens _iaWidth (\ s a -> s{_iaWidth = a})

-- | The name of the asset.
iaName :: Lens' ImageAsset (Maybe Text)
iaName = lens _iaName (\ s a -> s{_iaName = a})

instance FromJSON ImageAsset where
        parseJSON
          = withObject "ImageAsset"
              (\ o ->
                 ImageAsset <$>
                   (o .:? "height") <*>
                     (o .:? "kind" .!= "games#imageAsset")
                     <*> (o .:? "url")
                     <*> (o .:? "width")
                     <*> (o .:? "name"))

instance ToJSON ImageAsset where
        toJSON ImageAsset{..}
          = object
              (catMaybes
                 [("height" .=) <$> _iaHeight,
                  Just ("kind" .= _iaKind), ("url" .=) <$> _iaURL,
                  ("width" .=) <$> _iaWidth, ("name" .=) <$> _iaName])

-- | This is a JSON template for a list of achievement update requests.
--
-- /See:/ 'achievementUpdateMultipleRequest' smart constructor.
data AchievementUpdateMultipleRequest = AchievementUpdateMultipleRequest
    { _aumruKind    :: !Text
    , _aumruUpdates :: !(Maybe [AchievementUpdateRequest])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementUpdateMultipleRequest
    { _aumruKind = "games#achievementUpdateMultipleRequest"
    , _aumruUpdates = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementUpdateMultipleRequest.
aumruKind :: Lens' AchievementUpdateMultipleRequest Text
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
                 AchievementUpdateMultipleRequest <$>
                   (o .:? "kind" .!=
                      "games#achievementUpdateMultipleRequest")
                     <*> (o .:? "updates" .!= mempty))

instance ToJSON AchievementUpdateMultipleRequest
         where
        toJSON AchievementUpdateMultipleRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aumruKind),
                  ("updates" .=) <$> _aumruUpdates])

-- | This is a JSON template for status of room automatching that is in
-- progress.
--
-- /See:/ 'roomAutoMatchStatus' smart constructor.
data RoomAutoMatchStatus = RoomAutoMatchStatus
    { _ramsKind                :: !Text
    , _ramsWaitEstimateSeconds :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomAutoMatchStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ramsKind'
--
-- * 'ramsWaitEstimateSeconds'
roomAutoMatchStatus
    :: RoomAutoMatchStatus
roomAutoMatchStatus =
    RoomAutoMatchStatus
    { _ramsKind = "games#roomAutoMatchStatus"
    , _ramsWaitEstimateSeconds = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomAutoMatchStatus.
ramsKind :: Lens' RoomAutoMatchStatus Text
ramsKind = lens _ramsKind (\ s a -> s{_ramsKind = a})

-- | An estimate for the amount of time (in seconds) that auto-matching is
-- expected to take to complete.
ramsWaitEstimateSeconds :: Lens' RoomAutoMatchStatus (Maybe Int32)
ramsWaitEstimateSeconds
  = lens _ramsWaitEstimateSeconds
      (\ s a -> s{_ramsWaitEstimateSeconds = a})

instance FromJSON RoomAutoMatchStatus where
        parseJSON
          = withObject "RoomAutoMatchStatus"
              (\ o ->
                 RoomAutoMatchStatus <$>
                   (o .:? "kind" .!= "games#roomAutoMatchStatus") <*>
                     (o .:? "waitEstimateSeconds"))

instance ToJSON RoomAutoMatchStatus where
        toJSON RoomAutoMatchStatus{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ramsKind),
                  ("waitEstimateSeconds" .=) <$>
                    _ramsWaitEstimateSeconds])

-- | This is a JSON template for a request to update an achievement.
--
-- /See:/ 'achievementUpdateRequest' smart constructor.
data AchievementUpdateRequest = AchievementUpdateRequest
    { _auruAchievementId          :: !(Maybe Text)
    , _auruKind                   :: !Text
    , _auruUpdateType             :: !(Maybe Text)
    , _auruSetStepsAtLeastPayload :: !(Maybe GamesAchievementSetStepsAtLeast)
    , _auruIncrementPayload       :: !(Maybe GamesAchievementIncrement)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementUpdateRequest
    { _auruAchievementId = Nothing
    , _auruKind = "games#achievementUpdateRequest"
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
-- string games#achievementUpdateRequest.
auruKind :: Lens' AchievementUpdateRequest Text
auruKind = lens _auruKind (\ s a -> s{_auruKind = a})

-- | The type of update being applied. Possible values are: - \"REVEAL\" -
-- Achievement is revealed. - \"UNLOCK\" - Achievement is unlocked. -
-- \"INCREMENT\" - Achievement is incremented. - \"SET_STEPS_AT_LEAST\" -
-- Achievement progress is set to at least the passed value.
auruUpdateType :: Lens' AchievementUpdateRequest (Maybe Text)
auruUpdateType
  = lens _auruUpdateType
      (\ s a -> s{_auruUpdateType = a})

-- | The payload if an update of type SET_STEPS_AT_LEAST was requested for
-- the achievement.
auruSetStepsAtLeastPayload :: Lens' AchievementUpdateRequest (Maybe GamesAchievementSetStepsAtLeast)
auruSetStepsAtLeastPayload
  = lens _auruSetStepsAtLeastPayload
      (\ s a -> s{_auruSetStepsAtLeastPayload = a})

-- | The payload if an update of type INCREMENT was requested for the
-- achievement.
auruIncrementPayload :: Lens' AchievementUpdateRequest (Maybe GamesAchievementIncrement)
auruIncrementPayload
  = lens _auruIncrementPayload
      (\ s a -> s{_auruIncrementPayload = a})

instance FromJSON AchievementUpdateRequest where
        parseJSON
          = withObject "AchievementUpdateRequest"
              (\ o ->
                 AchievementUpdateRequest <$>
                   (o .:? "achievementId") <*>
                     (o .:? "kind" .!= "games#achievementUpdateRequest")
                     <*> (o .:? "updateType")
                     <*> (o .:? "setStepsAtLeastPayload")
                     <*> (o .:? "incrementPayload"))

instance ToJSON AchievementUpdateRequest where
        toJSON AchievementUpdateRequest{..}
          = object
              (catMaybes
                 [("achievementId" .=) <$> _auruAchievementId,
                  Just ("kind" .= _auruKind),
                  ("updateType" .=) <$> _auruUpdateType,
                  ("setStepsAtLeastPayload" .=) <$>
                    _auruSetStepsAtLeastPayload,
                  ("incrementPayload" .=) <$> _auruIncrementPayload])

-- | This is a JSON template for a score rank in a leaderboard.
--
-- /See:/ 'leaderboardScoreRank' smart constructor.
data LeaderboardScoreRank = LeaderboardScoreRank
    { _lsrNumScores          :: !(Maybe Int64)
    , _lsrKind               :: !Text
    , _lsrFormattedRank      :: !(Maybe Text)
    , _lsrFormattedNumScores :: !(Maybe Text)
    , _lsrRank               :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LeaderboardScoreRank
    { _lsrNumScores = Nothing
    , _lsrKind = "games#leaderboardScoreRank"
    , _lsrFormattedRank = Nothing
    , _lsrFormattedNumScores = Nothing
    , _lsrRank = Nothing
    }

-- | The number of scores in the leaderboard.
lsrNumScores :: Lens' LeaderboardScoreRank (Maybe Int64)
lsrNumScores
  = lens _lsrNumScores (\ s a -> s{_lsrNumScores = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#leaderboardScoreRank.
lsrKind :: Lens' LeaderboardScoreRank Text
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
lsrRank = lens _lsrRank (\ s a -> s{_lsrRank = a})

instance FromJSON LeaderboardScoreRank where
        parseJSON
          = withObject "LeaderboardScoreRank"
              (\ o ->
                 LeaderboardScoreRank <$>
                   (o .:? "numScores") <*>
                     (o .:? "kind" .!= "games#leaderboardScoreRank")
                     <*> (o .:? "formattedRank")
                     <*> (o .:? "formattedNumScores")
                     <*> (o .:? "rank"))

instance ToJSON LeaderboardScoreRank where
        toJSON LeaderboardScoreRank{..}
          = object
              (catMaybes
                 [("numScores" .=) <$> _lsrNumScores,
                  Just ("kind" .= _lsrKind),
                  ("formattedRank" .=) <$> _lsrFormattedRank,
                  ("formattedNumScores" .=) <$> _lsrFormattedNumScores,
                  ("rank" .=) <$> _lsrRank])

-- | This is a JSON template for a room creation request.
--
-- /See:/ 'roomCreateRequest' smart constructor.
data RoomCreateRequest = RoomCreateRequest
    { _rooRequestId            :: !(Maybe Int64)
    , _rooVariant              :: !(Maybe Int32)
    , _rooNetworkDiagnostics   :: !(Maybe NetworkDiagnostics)
    , _rooKind                 :: !Text
    , _rooInvitedPlayerIds     :: !(Maybe [Text])
    , _rooClientAddress        :: !(Maybe RoomClientAddress)
    , _rooAutoMatchingCriteria :: !(Maybe RoomAutoMatchingCriteria)
    , _rooCapabilities         :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomCreateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooRequestId'
--
-- * 'rooVariant'
--
-- * 'rooNetworkDiagnostics'
--
-- * 'rooKind'
--
-- * 'rooInvitedPlayerIds'
--
-- * 'rooClientAddress'
--
-- * 'rooAutoMatchingCriteria'
--
-- * 'rooCapabilities'
roomCreateRequest
    :: RoomCreateRequest
roomCreateRequest =
    RoomCreateRequest
    { _rooRequestId = Nothing
    , _rooVariant = Nothing
    , _rooNetworkDiagnostics = Nothing
    , _rooKind = "games#roomCreateRequest"
    , _rooInvitedPlayerIds = Nothing
    , _rooClientAddress = Nothing
    , _rooAutoMatchingCriteria = Nothing
    , _rooCapabilities = Nothing
    }

-- | A randomly generated numeric ID. This number is used at the server to
-- ensure that the request is handled correctly across retries.
rooRequestId :: Lens' RoomCreateRequest (Maybe Int64)
rooRequestId
  = lens _rooRequestId (\ s a -> s{_rooRequestId = a})

-- | The variant \/ mode of the application to be played. This can be any
-- integer value, or left blank. You should use a small number of variants
-- to keep the auto-matching pool as large as possible.
rooVariant :: Lens' RoomCreateRequest (Maybe Int32)
rooVariant
  = lens _rooVariant (\ s a -> s{_rooVariant = a})

-- | Network diagnostics for the client creating the room.
rooNetworkDiagnostics :: Lens' RoomCreateRequest (Maybe NetworkDiagnostics)
rooNetworkDiagnostics
  = lens _rooNetworkDiagnostics
      (\ s a -> s{_rooNetworkDiagnostics = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomCreateRequest.
rooKind :: Lens' RoomCreateRequest Text
rooKind = lens _rooKind (\ s a -> s{_rooKind = a})

-- | The player IDs to invite to the room.
rooInvitedPlayerIds :: Lens' RoomCreateRequest [Text]
rooInvitedPlayerIds
  = lens _rooInvitedPlayerIds
      (\ s a -> s{_rooInvitedPlayerIds = a})
      . _Default
      . _Coerce

-- | Client address for the player creating the room.
rooClientAddress :: Lens' RoomCreateRequest (Maybe RoomClientAddress)
rooClientAddress
  = lens _rooClientAddress
      (\ s a -> s{_rooClientAddress = a})

-- | Criteria for auto-matching players into this room.
rooAutoMatchingCriteria :: Lens' RoomCreateRequest (Maybe RoomAutoMatchingCriteria)
rooAutoMatchingCriteria
  = lens _rooAutoMatchingCriteria
      (\ s a -> s{_rooAutoMatchingCriteria = a})

-- | The capabilities that this client supports for realtime communication.
rooCapabilities :: Lens' RoomCreateRequest [Text]
rooCapabilities
  = lens _rooCapabilities
      (\ s a -> s{_rooCapabilities = a})
      . _Default
      . _Coerce

instance FromJSON RoomCreateRequest where
        parseJSON
          = withObject "RoomCreateRequest"
              (\ o ->
                 RoomCreateRequest <$>
                   (o .:? "requestId") <*> (o .:? "variant") <*>
                     (o .:? "networkDiagnostics")
                     <*> (o .:? "kind" .!= "games#roomCreateRequest")
                     <*> (o .:? "invitedPlayerIds" .!= mempty)
                     <*> (o .:? "clientAddress")
                     <*> (o .:? "autoMatchingCriteria")
                     <*> (o .:? "capabilities" .!= mempty))

instance ToJSON RoomCreateRequest where
        toJSON RoomCreateRequest{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _rooRequestId,
                  ("variant" .=) <$> _rooVariant,
                  ("networkDiagnostics" .=) <$> _rooNetworkDiagnostics,
                  Just ("kind" .= _rooKind),
                  ("invitedPlayerIds" .=) <$> _rooInvitedPlayerIds,
                  ("clientAddress" .=) <$> _rooClientAddress,
                  ("autoMatchingCriteria" .=) <$>
                    _rooAutoMatchingCriteria,
                  ("capabilities" .=) <$> _rooCapabilities])

-- | This is a JSON template for a third party player list response.
--
-- /See:/ 'playerListResponse' smart constructor.
data PlayerListResponse = PlayerListResponse
    { _plrNextPageToken :: !(Maybe Text)
    , _plrKind          :: !Text
    , _plrItems         :: !(Maybe [Player])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerListResponse
    { _plrNextPageToken = Nothing
    , _plrKind = "games#playerListResponse"
    , _plrItems = Nothing
    }

-- | Token corresponding to the next page of results.
plrNextPageToken :: Lens' PlayerListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerListResponse.
plrKind :: Lens' PlayerListResponse Text
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
                 PlayerListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#playerListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PlayerListResponse where
        toJSON PlayerListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  Just ("kind" .= _plrKind),
                  ("items" .=) <$> _plrItems])

-- | This is a JSON template for a ListScores response.
--
-- /See:/ 'leaderboardScores' smart constructor.
data LeaderboardScores = LeaderboardScores
    { _lsNextPageToken :: !(Maybe Text)
    , _lsNumScores     :: !(Maybe Int64)
    , _lsKind          :: !Text
    , _lsPlayerScore   :: !(Maybe LeaderboardEntry)
    , _lsItems         :: !(Maybe [LeaderboardEntry])
    , _lsPrevPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LeaderboardScores
    { _lsNextPageToken = Nothing
    , _lsNumScores = Nothing
    , _lsKind = "games#leaderboardScores"
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
  = lens _lsNumScores (\ s a -> s{_lsNumScores = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#leaderboardScores.
lsKind :: Lens' LeaderboardScores Text
lsKind = lens _lsKind (\ s a -> s{_lsKind = a})

-- | The score of the requesting player on the leaderboard. The player\'s
-- score may appear both here and in the list of scores above. If you are
-- viewing a public leaderboard and the player is not sharing their
-- gameplay information publicly, the scoreRank and formattedScoreRank
-- values will not be present.
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
                 LeaderboardScores <$>
                   (o .:? "nextPageToken") <*> (o .:? "numScores") <*>
                     (o .:? "kind" .!= "games#leaderboardScores")
                     <*> (o .:? "playerScore")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "prevPageToken"))

instance ToJSON LeaderboardScores where
        toJSON LeaderboardScores{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsNextPageToken,
                  ("numScores" .=) <$> _lsNumScores,
                  Just ("kind" .= _lsKind),
                  ("playerScore" .=) <$> _lsPlayerScore,
                  ("items" .=) <$> _lsItems,
                  ("prevPageToken" .=) <$> _lsPrevPageToken])

-- | This is a JSON template for an achievement definition object.
--
-- /See:/ 'achievementDefinition' smart constructor.
data AchievementDefinition = AchievementDefinition
    { _adAchievementType          :: !(Maybe Text)
    , _adFormattedTotalSteps      :: !(Maybe Text)
    , _adRevealedIconURL          :: !(Maybe Text)
    , _adKind                     :: !Text
    , _adExperiencePoints         :: !(Maybe Int64)
    , _adInitialState             :: !(Maybe Text)
    , _adName                     :: !(Maybe Text)
    , _adId                       :: !(Maybe Text)
    , _adIsUnlockedIconURLDefault :: !(Maybe Bool)
    , _adTotalSteps               :: !(Maybe Int32)
    , _adDescription              :: !(Maybe Text)
    , _adIsRevealedIconURLDefault :: !(Maybe Bool)
    , _adUnlockedIconURL          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementDefinition
    { _adAchievementType = Nothing
    , _adFormattedTotalSteps = Nothing
    , _adRevealedIconURL = Nothing
    , _adKind = "games#achievementDefinition"
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

-- | The type of the achievement. Possible values are: - \"STANDARD\" -
-- Achievement is either locked or unlocked. - \"INCREMENTAL\" -
-- Achievement is incremental.
adAchievementType :: Lens' AchievementDefinition (Maybe Text)
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
-- string games#achievementDefinition.
adKind :: Lens' AchievementDefinition Text
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | Experience points which will be earned when unlocking this achievement.
adExperiencePoints :: Lens' AchievementDefinition (Maybe Int64)
adExperiencePoints
  = lens _adExperiencePoints
      (\ s a -> s{_adExperiencePoints = a})

-- | The initial state of the achievement. Possible values are: - \"HIDDEN\"
-- - Achievement is hidden. - \"REVEALED\" - Achievement is revealed. -
-- \"UNLOCKED\" - Achievement is unlocked.
adInitialState :: Lens' AchievementDefinition (Maybe Text)
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
                 AchievementDefinition <$>
                   (o .:? "achievementType") <*>
                     (o .:? "formattedTotalSteps")
                     <*> (o .:? "revealedIconUrl")
                     <*> (o .:? "kind" .!= "games#achievementDefinition")
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
        toJSON AchievementDefinition{..}
          = object
              (catMaybes
                 [("achievementType" .=) <$> _adAchievementType,
                  ("formattedTotalSteps" .=) <$>
                    _adFormattedTotalSteps,
                  ("revealedIconUrl" .=) <$> _adRevealedIconURL,
                  Just ("kind" .= _adKind),
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

-- | This is a JSON template for a turn-based match creation request.
--
-- /See:/ 'turnBasedMatchCreateRequest' smart constructor.
data TurnBasedMatchCreateRequest = TurnBasedMatchCreateRequest
    { _tbmcrRequestId            :: !(Maybe Int64)
    , _tbmcrVariant              :: !(Maybe Int32)
    , _tbmcrKind                 :: !Text
    , _tbmcrInvitedPlayerIds     :: !(Maybe [Text])
    , _tbmcrAutoMatchingCriteria :: !(Maybe TurnBasedAutoMatchingCriteria)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchCreateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmcrRequestId'
--
-- * 'tbmcrVariant'
--
-- * 'tbmcrKind'
--
-- * 'tbmcrInvitedPlayerIds'
--
-- * 'tbmcrAutoMatchingCriteria'
turnBasedMatchCreateRequest
    :: TurnBasedMatchCreateRequest
turnBasedMatchCreateRequest =
    TurnBasedMatchCreateRequest
    { _tbmcrRequestId = Nothing
    , _tbmcrVariant = Nothing
    , _tbmcrKind = "games#turnBasedMatchCreateRequest"
    , _tbmcrInvitedPlayerIds = Nothing
    , _tbmcrAutoMatchingCriteria = Nothing
    }

-- | A randomly generated numeric ID. This number is used at the server to
-- ensure that the request is handled correctly across retries.
tbmcrRequestId :: Lens' TurnBasedMatchCreateRequest (Maybe Int64)
tbmcrRequestId
  = lens _tbmcrRequestId
      (\ s a -> s{_tbmcrRequestId = a})

-- | The variant \/ mode of the application to be played. This can be any
-- integer value, or left blank. You should use a small number of variants
-- to keep the auto-matching pool as large as possible.
tbmcrVariant :: Lens' TurnBasedMatchCreateRequest (Maybe Int32)
tbmcrVariant
  = lens _tbmcrVariant (\ s a -> s{_tbmcrVariant = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchCreateRequest.
tbmcrKind :: Lens' TurnBasedMatchCreateRequest Text
tbmcrKind
  = lens _tbmcrKind (\ s a -> s{_tbmcrKind = a})

-- | The player ids to invite to the match.
tbmcrInvitedPlayerIds :: Lens' TurnBasedMatchCreateRequest [Text]
tbmcrInvitedPlayerIds
  = lens _tbmcrInvitedPlayerIds
      (\ s a -> s{_tbmcrInvitedPlayerIds = a})
      . _Default
      . _Coerce

-- | Criteria for auto-matching players into this match.
tbmcrAutoMatchingCriteria :: Lens' TurnBasedMatchCreateRequest (Maybe TurnBasedAutoMatchingCriteria)
tbmcrAutoMatchingCriteria
  = lens _tbmcrAutoMatchingCriteria
      (\ s a -> s{_tbmcrAutoMatchingCriteria = a})

instance FromJSON TurnBasedMatchCreateRequest where
        parseJSON
          = withObject "TurnBasedMatchCreateRequest"
              (\ o ->
                 TurnBasedMatchCreateRequest <$>
                   (o .:? "requestId") <*> (o .:? "variant") <*>
                     (o .:? "kind" .!=
                        "games#turnBasedMatchCreateRequest")
                     <*> (o .:? "invitedPlayerIds" .!= mempty)
                     <*> (o .:? "autoMatchingCriteria"))

instance ToJSON TurnBasedMatchCreateRequest where
        toJSON TurnBasedMatchCreateRequest{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _tbmcrRequestId,
                  ("variant" .=) <$> _tbmcrVariant,
                  Just ("kind" .= _tbmcrKind),
                  ("invitedPlayerIds" .=) <$> _tbmcrInvitedPlayerIds,
                  ("autoMatchingCriteria" .=) <$>
                    _tbmcrAutoMatchingCriteria])

-- | This is a JSON template for a batch update failure resource.
--
-- /See:/ 'eventBatchRecordFailure' smart constructor.
data EventBatchRecordFailure = EventBatchRecordFailure
    { _ebrfKind         :: !Text
    , _ebrfRange        :: !(Maybe EventPeriodRange)
    , _ebrfFailureCause :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventBatchRecordFailure
    { _ebrfKind = "games#eventBatchRecordFailure"
    , _ebrfRange = Nothing
    , _ebrfFailureCause = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventBatchRecordFailure.
ebrfKind :: Lens' EventBatchRecordFailure Text
ebrfKind = lens _ebrfKind (\ s a -> s{_ebrfKind = a})

-- | The time range which was rejected; empty for a request-wide failure.
ebrfRange :: Lens' EventBatchRecordFailure (Maybe EventPeriodRange)
ebrfRange
  = lens _ebrfRange (\ s a -> s{_ebrfRange = a})

-- | The cause for the update failure. Possible values are: - \"TOO_LARGE\":
-- A batch request was issued with more events than are allowed in a single
-- batch. - \"TIME_PERIOD_EXPIRED\": A batch was sent with data too far in
-- the past to record. - \"TIME_PERIOD_SHORT\": A batch was sent with a
-- time range that was too short. - \"TIME_PERIOD_LONG\": A batch was sent
-- with a time range that was too long. - \"ALREADY_UPDATED\": An attempt
-- was made to record a batch of data which was already seen. -
-- \"RECORD_RATE_HIGH\": An attempt was made to record data faster than the
-- server will apply updates.
ebrfFailureCause :: Lens' EventBatchRecordFailure (Maybe Text)
ebrfFailureCause
  = lens _ebrfFailureCause
      (\ s a -> s{_ebrfFailureCause = a})

instance FromJSON EventBatchRecordFailure where
        parseJSON
          = withObject "EventBatchRecordFailure"
              (\ o ->
                 EventBatchRecordFailure <$>
                   (o .:? "kind" .!= "games#eventBatchRecordFailure")
                     <*> (o .:? "range")
                     <*> (o .:? "failureCause"))

instance ToJSON EventBatchRecordFailure where
        toJSON EventBatchRecordFailure{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ebrfKind),
                  ("range" .=) <$> _ebrfRange,
                  ("failureCause" .=) <$> _ebrfFailureCause])

-- | This is a JSON template for a turn-based match results object.
--
-- /See:/ 'turnBasedMatchResults' smart constructor.
data TurnBasedMatchResults = TurnBasedMatchResults
    { _tbmrResults      :: !(Maybe [ParticipantResult])
    , _tbmrKind         :: !Text
    , _tbmrData         :: !(Maybe TurnBasedMatchDataRequest)
    , _tbmrMatchVersion :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmrResults'
--
-- * 'tbmrKind'
--
-- * 'tbmrData'
--
-- * 'tbmrMatchVersion'
turnBasedMatchResults
    :: TurnBasedMatchResults
turnBasedMatchResults =
    TurnBasedMatchResults
    { _tbmrResults = Nothing
    , _tbmrKind = "games#turnBasedMatchResults"
    , _tbmrData = Nothing
    , _tbmrMatchVersion = Nothing
    }

-- | The match results for the participants in the match.
tbmrResults :: Lens' TurnBasedMatchResults [ParticipantResult]
tbmrResults
  = lens _tbmrResults (\ s a -> s{_tbmrResults = a}) .
      _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchResults.
tbmrKind :: Lens' TurnBasedMatchResults Text
tbmrKind = lens _tbmrKind (\ s a -> s{_tbmrKind = a})

-- | The final match data.
tbmrData :: Lens' TurnBasedMatchResults (Maybe TurnBasedMatchDataRequest)
tbmrData = lens _tbmrData (\ s a -> s{_tbmrData = a})

-- | The version of the match being updated.
tbmrMatchVersion :: Lens' TurnBasedMatchResults (Maybe Int32)
tbmrMatchVersion
  = lens _tbmrMatchVersion
      (\ s a -> s{_tbmrMatchVersion = a})

instance FromJSON TurnBasedMatchResults where
        parseJSON
          = withObject "TurnBasedMatchResults"
              (\ o ->
                 TurnBasedMatchResults <$>
                   (o .:? "results" .!= mempty) <*>
                     (o .:? "kind" .!= "games#turnBasedMatchResults")
                     <*> (o .:? "data")
                     <*> (o .:? "matchVersion"))

instance ToJSON TurnBasedMatchResults where
        toJSON TurnBasedMatchResults{..}
          = object
              (catMaybes
                 [("results" .=) <$> _tbmrResults,
                  Just ("kind" .= _tbmrKind),
                  ("data" .=) <$> _tbmrData,
                  ("matchVersion" .=) <$> _tbmrMatchVersion])

-- | A push token ID for iOS devices.
--
-- /See:/ 'pushTokenIdIos' smart constructor.
data PushTokenIdIos = PushTokenIdIos
    { _ptiiAPNSDeviceToken :: !(Maybe Word8)
    , _ptiiAPNSEnvironment :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushTokenIdIos' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptiiAPNSDeviceToken'
--
-- * 'ptiiAPNSEnvironment'
pushTokenIdIos
    :: PushTokenIdIos
pushTokenIdIos =
    PushTokenIdIos
    { _ptiiAPNSDeviceToken = Nothing
    , _ptiiAPNSEnvironment = Nothing
    }

-- | Device token supplied by an iOS system call to register for remote
-- notifications. Encode this field as web-safe base64.
ptiiAPNSDeviceToken :: Lens' PushTokenIdIos (Maybe Word8)
ptiiAPNSDeviceToken
  = lens _ptiiAPNSDeviceToken
      (\ s a -> s{_ptiiAPNSDeviceToken = a})

-- | Indicates whether this token should be used for the production or
-- sandbox APNS server.
ptiiAPNSEnvironment :: Lens' PushTokenIdIos (Maybe Text)
ptiiAPNSEnvironment
  = lens _ptiiAPNSEnvironment
      (\ s a -> s{_ptiiAPNSEnvironment = a})

instance FromJSON PushTokenIdIos where
        parseJSON
          = withObject "PushTokenIdIos"
              (\ o ->
                 PushTokenIdIos <$>
                   (o .:? "apns_device_token") <*>
                     (o .:? "apns_environment"))

instance ToJSON PushTokenIdIos where
        toJSON PushTokenIdIos{..}
          = object
              (catMaybes
                 [("apns_device_token" .=) <$> _ptiiAPNSDeviceToken,
                  ("apns_environment" .=) <$> _ptiiAPNSEnvironment])

-- | This is a JSON template for a leave room request.
--
-- /See:/ 'roomLeaveRequest' smart constructor.
data RoomLeaveRequest = RoomLeaveRequest
    { _rlrKind             :: !Text
    , _rlrReason           :: !(Maybe Text)
    , _rlrLeaveDiagnostics :: !(Maybe RoomLeaveDiagnostics)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomLeaveRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrKind'
--
-- * 'rlrReason'
--
-- * 'rlrLeaveDiagnostics'
roomLeaveRequest
    :: RoomLeaveRequest
roomLeaveRequest =
    RoomLeaveRequest
    { _rlrKind = "games#roomLeaveRequest"
    , _rlrReason = Nothing
    , _rlrLeaveDiagnostics = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomLeaveRequest.
rlrKind :: Lens' RoomLeaveRequest Text
rlrKind = lens _rlrKind (\ s a -> s{_rlrKind = a})

-- | Reason for leaving the match. Possible values are: - \"PLAYER_LEFT\" -
-- The player chose to leave the room.. - \"GAME_LEFT\" - The game chose to
-- remove the player from the room. - \"REALTIME_ABANDONED\" - The player
-- switched to another application and abandoned the room. -
-- \"REALTIME_PEER_CONNECTION_FAILURE\" - The client was unable to
-- establish a connection to other peer(s). -
-- \"REALTIME_SERVER_CONNECTION_FAILURE\" - The client was unable to
-- communicate with the server. - \"REALTIME_SERVER_ERROR\" - The client
-- received an error response when it tried to communicate with the server.
-- - \"REALTIME_TIMEOUT\" - The client timed out while waiting for a room.
-- - \"REALTIME_CLIENT_DISCONNECTING\" - The client disconnects without
-- first calling Leave. - \"REALTIME_SIGN_OUT\" - The user signed out of G+
-- while in the room. - \"REALTIME_GAME_CRASHED\" - The game crashed. -
-- \"REALTIME_ROOM_SERVICE_CRASHED\" - RoomAndroidService crashed. -
-- \"REALTIME_DIFFERENT_CLIENT_ROOM_OPERATION\" - Another client is trying
-- to enter a room. - \"REALTIME_SAME_CLIENT_ROOM_OPERATION\" - The same
-- client is trying to enter a new room.
rlrReason :: Lens' RoomLeaveRequest (Maybe Text)
rlrReason
  = lens _rlrReason (\ s a -> s{_rlrReason = a})

-- | Diagnostics for a player leaving the room.
rlrLeaveDiagnostics :: Lens' RoomLeaveRequest (Maybe RoomLeaveDiagnostics)
rlrLeaveDiagnostics
  = lens _rlrLeaveDiagnostics
      (\ s a -> s{_rlrLeaveDiagnostics = a})

instance FromJSON RoomLeaveRequest where
        parseJSON
          = withObject "RoomLeaveRequest"
              (\ o ->
                 RoomLeaveRequest <$>
                   (o .:? "kind" .!= "games#roomLeaveRequest") <*>
                     (o .:? "reason")
                     <*> (o .:? "leaveDiagnostics"))

instance ToJSON RoomLeaveRequest where
        toJSON RoomLeaveRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rlrKind),
                  ("reason" .=) <$> _rlrReason,
                  ("leaveDiagnostics" .=) <$> _rlrLeaveDiagnostics])

-- | This is a JSON template for metadata about a player playing a game with
-- the currently authenticated user.
--
-- /See:/ 'played' smart constructor.
data Played = Played
    { _pKind        :: !Text
    , _pAutoMatched :: !(Maybe Bool)
    , _pTimeMillis  :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Played' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pAutoMatched'
--
-- * 'pTimeMillis'
played
    :: Played
played =
    Played
    { _pKind = "games#played"
    , _pAutoMatched = Nothing
    , _pTimeMillis = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#played.
pKind :: Lens' Played Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | True if the player was auto-matched with the currently authenticated
-- user.
pAutoMatched :: Lens' Played (Maybe Bool)
pAutoMatched
  = lens _pAutoMatched (\ s a -> s{_pAutoMatched = a})

-- | The last time the player played the game in milliseconds since the epoch
-- in UTC.
pTimeMillis :: Lens' Played (Maybe Int64)
pTimeMillis
  = lens _pTimeMillis (\ s a -> s{_pTimeMillis = a})

instance FromJSON Played where
        parseJSON
          = withObject "Played"
              (\ o ->
                 Played <$>
                   (o .:? "kind" .!= "games#played") <*>
                     (o .:? "autoMatched")
                     <*> (o .:? "timeMillis"))

instance ToJSON Played where
        toJSON Played{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind),
                  ("autoMatched" .=) <$> _pAutoMatched,
                  ("timeMillis" .=) <$> _pTimeMillis])

-- | This is a JSON template for an achievement increment response
--
-- /See:/ 'achievementIncrementResponse' smart constructor.
data AchievementIncrementResponse = AchievementIncrementResponse
    { _airKind          :: !Text
    , _airNewlyUnlocked :: !(Maybe Bool)
    , _airCurrentSteps  :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementIncrementResponse
    { _airKind = "games#achievementIncrementResponse"
    , _airNewlyUnlocked = Nothing
    , _airCurrentSteps = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementIncrementResponse.
airKind :: Lens' AchievementIncrementResponse Text
airKind = lens _airKind (\ s a -> s{_airKind = a})

-- | Whether the the current steps for the achievement has reached the number
-- of steps required to unlock.
airNewlyUnlocked :: Lens' AchievementIncrementResponse (Maybe Bool)
airNewlyUnlocked
  = lens _airNewlyUnlocked
      (\ s a -> s{_airNewlyUnlocked = a})

-- | The current steps recorded for this incremental achievement.
airCurrentSteps :: Lens' AchievementIncrementResponse (Maybe Int32)
airCurrentSteps
  = lens _airCurrentSteps
      (\ s a -> s{_airCurrentSteps = a})

instance FromJSON AchievementIncrementResponse where
        parseJSON
          = withObject "AchievementIncrementResponse"
              (\ o ->
                 AchievementIncrementResponse <$>
                   (o .:? "kind" .!=
                      "games#achievementIncrementResponse")
                     <*> (o .:? "newlyUnlocked")
                     <*> (o .:? "currentSteps"))

instance ToJSON AchievementIncrementResponse where
        toJSON AchievementIncrementResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _airKind),
                  ("newlyUnlocked" .=) <$> _airNewlyUnlocked,
                  ("currentSteps" .=) <$> _airCurrentSteps])

-- | This is a JSON template for an achievement reveal response
--
-- /See:/ 'achievementRevealResponse' smart constructor.
data AchievementRevealResponse = AchievementRevealResponse
    { _arrKind         :: !Text
    , _arrCurrentState :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementRevealResponse
    { _arrKind = "games#achievementRevealResponse"
    , _arrCurrentState = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementRevealResponse.
arrKind :: Lens' AchievementRevealResponse Text
arrKind = lens _arrKind (\ s a -> s{_arrKind = a})

-- | The current state of the achievement for which a reveal was attempted.
-- This might be UNLOCKED if the achievement was already unlocked. Possible
-- values are: - \"REVEALED\" - Achievement is revealed. - \"UNLOCKED\" -
-- Achievement is unlocked.
arrCurrentState :: Lens' AchievementRevealResponse (Maybe Text)
arrCurrentState
  = lens _arrCurrentState
      (\ s a -> s{_arrCurrentState = a})

instance FromJSON AchievementRevealResponse where
        parseJSON
          = withObject "AchievementRevealResponse"
              (\ o ->
                 AchievementRevealResponse <$>
                   (o .:? "kind" .!= "games#achievementRevealResponse")
                     <*> (o .:? "currentState"))

instance ToJSON AchievementRevealResponse where
        toJSON AchievementRevealResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _arrKind),
                  ("currentState" .=) <$> _arrCurrentState])

-- | This is a JSON template for an achievement set steps at least response.
--
-- /See:/ 'achievementSetStepsAtLeastResponse' smart constructor.
data AchievementSetStepsAtLeastResponse = AchievementSetStepsAtLeastResponse
    { _assalrKind          :: !Text
    , _assalrNewlyUnlocked :: !(Maybe Bool)
    , _assalrCurrentSteps  :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AchievementSetStepsAtLeastResponse
    { _assalrKind = "games#achievementSetStepsAtLeastResponse"
    , _assalrNewlyUnlocked = Nothing
    , _assalrCurrentSteps = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#achievementSetStepsAtLeastResponse.
assalrKind :: Lens' AchievementSetStepsAtLeastResponse Text
assalrKind
  = lens _assalrKind (\ s a -> s{_assalrKind = a})

-- | Whether the the current steps for the achievement has reached the number
-- of steps required to unlock.
assalrNewlyUnlocked :: Lens' AchievementSetStepsAtLeastResponse (Maybe Bool)
assalrNewlyUnlocked
  = lens _assalrNewlyUnlocked
      (\ s a -> s{_assalrNewlyUnlocked = a})

-- | The current steps recorded for this incremental achievement.
assalrCurrentSteps :: Lens' AchievementSetStepsAtLeastResponse (Maybe Int32)
assalrCurrentSteps
  = lens _assalrCurrentSteps
      (\ s a -> s{_assalrCurrentSteps = a})

instance FromJSON AchievementSetStepsAtLeastResponse
         where
        parseJSON
          = withObject "AchievementSetStepsAtLeastResponse"
              (\ o ->
                 AchievementSetStepsAtLeastResponse <$>
                   (o .:? "kind" .!=
                      "games#achievementSetStepsAtLeastResponse")
                     <*> (o .:? "newlyUnlocked")
                     <*> (o .:? "currentSteps"))

instance ToJSON AchievementSetStepsAtLeastResponse
         where
        toJSON AchievementSetStepsAtLeastResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _assalrKind),
                  ("newlyUnlocked" .=) <$> _assalrNewlyUnlocked,
                  ("currentSteps" .=) <$> _assalrCurrentSteps])

-- | This is a JSON template for a list of achievement objects.
--
-- /See:/ 'playerAchievementListResponse' smart constructor.
data PlayerAchievementListResponse = PlayerAchievementListResponse
    { _palrNextPageToken :: !(Maybe Text)
    , _palrKind          :: !Text
    , _palrItems         :: !(Maybe [PlayerAchievement])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerAchievementListResponse
    { _palrNextPageToken = Nothing
    , _palrKind = "games#playerAchievementListResponse"
    , _palrItems = Nothing
    }

-- | Token corresponding to the next page of results.
palrNextPageToken :: Lens' PlayerAchievementListResponse (Maybe Text)
palrNextPageToken
  = lens _palrNextPageToken
      (\ s a -> s{_palrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerAchievementListResponse.
palrKind :: Lens' PlayerAchievementListResponse Text
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
                 PlayerAchievementListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "games#playerAchievementListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PlayerAchievementListResponse where
        toJSON PlayerAchievementListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _palrNextPageToken,
                  Just ("kind" .= _palrKind),
                  ("items" .=) <$> _palrItems])

-- | This is a JSON template for an event period update resource.
--
-- /See:/ 'eventRecordRequest' smart constructor.
data EventRecordRequest = EventRecordRequest
    { _errRequestId         :: !(Maybe Int64)
    , _errKind              :: !Text
    , _errCurrentTimeMillis :: !(Maybe Int64)
    , _errTimePeriods       :: !(Maybe [EventPeriodUpdate])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventRecordRequest
    { _errRequestId = Nothing
    , _errKind = "games#eventRecordRequest"
    , _errCurrentTimeMillis = Nothing
    , _errTimePeriods = Nothing
    }

-- | The request ID used to identify this attempt to record events.
errRequestId :: Lens' EventRecordRequest (Maybe Int64)
errRequestId
  = lens _errRequestId (\ s a -> s{_errRequestId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventRecordRequest.
errKind :: Lens' EventRecordRequest Text
errKind = lens _errKind (\ s a -> s{_errKind = a})

-- | The current time when this update was sent, in milliseconds, since 1970
-- UTC (Unix Epoch).
errCurrentTimeMillis :: Lens' EventRecordRequest (Maybe Int64)
errCurrentTimeMillis
  = lens _errCurrentTimeMillis
      (\ s a -> s{_errCurrentTimeMillis = a})

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
                 EventRecordRequest <$>
                   (o .:? "requestId") <*>
                     (o .:? "kind" .!= "games#eventRecordRequest")
                     <*> (o .:? "currentTimeMillis")
                     <*> (o .:? "timePeriods" .!= mempty))

instance ToJSON EventRecordRequest where
        toJSON EventRecordRequest{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _errRequestId,
                  Just ("kind" .= _errKind),
                  ("currentTimeMillis" .=) <$> _errCurrentTimeMillis,
                  ("timePeriods" .=) <$> _errTimePeriods])

-- | This is a JSON template for a room auto-match criteria object.
--
-- /See:/ 'roomAutoMatchingCriteria' smart constructor.
data RoomAutoMatchingCriteria = RoomAutoMatchingCriteria
    { _ramcKind                   :: !Text
    , _ramcExclusiveBitmask       :: !(Maybe Int64)
    , _ramcMaxAutoMatchingPlayers :: !(Maybe Int32)
    , _ramcMinAutoMatchingPlayers :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomAutoMatchingCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ramcKind'
--
-- * 'ramcExclusiveBitmask'
--
-- * 'ramcMaxAutoMatchingPlayers'
--
-- * 'ramcMinAutoMatchingPlayers'
roomAutoMatchingCriteria
    :: RoomAutoMatchingCriteria
roomAutoMatchingCriteria =
    RoomAutoMatchingCriteria
    { _ramcKind = "games#roomAutoMatchingCriteria"
    , _ramcExclusiveBitmask = Nothing
    , _ramcMaxAutoMatchingPlayers = Nothing
    , _ramcMinAutoMatchingPlayers = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomAutoMatchingCriteria.
ramcKind :: Lens' RoomAutoMatchingCriteria Text
ramcKind = lens _ramcKind (\ s a -> s{_ramcKind = a})

-- | A bitmask indicating when auto-matches are valid. When ANDed with other
-- exclusive bitmasks, the result must be zero. Can be used to support
-- exclusive roles within a game.
ramcExclusiveBitmask :: Lens' RoomAutoMatchingCriteria (Maybe Int64)
ramcExclusiveBitmask
  = lens _ramcExclusiveBitmask
      (\ s a -> s{_ramcExclusiveBitmask = a})

-- | The maximum number of players that should be added to the room by
-- auto-matching.
ramcMaxAutoMatchingPlayers :: Lens' RoomAutoMatchingCriteria (Maybe Int32)
ramcMaxAutoMatchingPlayers
  = lens _ramcMaxAutoMatchingPlayers
      (\ s a -> s{_ramcMaxAutoMatchingPlayers = a})

-- | The minimum number of players that should be added to the room by
-- auto-matching.
ramcMinAutoMatchingPlayers :: Lens' RoomAutoMatchingCriteria (Maybe Int32)
ramcMinAutoMatchingPlayers
  = lens _ramcMinAutoMatchingPlayers
      (\ s a -> s{_ramcMinAutoMatchingPlayers = a})

instance FromJSON RoomAutoMatchingCriteria where
        parseJSON
          = withObject "RoomAutoMatchingCriteria"
              (\ o ->
                 RoomAutoMatchingCriteria <$>
                   (o .:? "kind" .!= "games#roomAutoMatchingCriteria")
                     <*> (o .:? "exclusiveBitmask")
                     <*> (o .:? "maxAutoMatchingPlayers")
                     <*> (o .:? "minAutoMatchingPlayers"))

instance ToJSON RoomAutoMatchingCriteria where
        toJSON RoomAutoMatchingCriteria{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ramcKind),
                  ("exclusiveBitmask" .=) <$> _ramcExclusiveBitmask,
                  ("maxAutoMatchingPlayers" .=) <$>
                    _ramcMaxAutoMatchingPlayers,
                  ("minAutoMatchingPlayers" .=) <$>
                    _ramcMinAutoMatchingPlayers])

-- | This is a JSON template for a Quest Milestone resource.
--
-- /See:/ 'questMilestone' smart constructor.
data QuestMilestone = QuestMilestone
    { _qmState                :: !(Maybe Text)
    , _qmKind                 :: !Text
    , _qmId                   :: !(Maybe Text)
    , _qmCompletionRewardData :: !(Maybe Word8)
    , _qmCriteria             :: !(Maybe [QuestCriterion])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestMilestone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qmState'
--
-- * 'qmKind'
--
-- * 'qmId'
--
-- * 'qmCompletionRewardData'
--
-- * 'qmCriteria'
questMilestone
    :: QuestMilestone
questMilestone =
    QuestMilestone
    { _qmState = Nothing
    , _qmKind = "games#questMilestone"
    , _qmId = Nothing
    , _qmCompletionRewardData = Nothing
    , _qmCriteria = Nothing
    }

-- | The current state of the milestone. Possible values are: -
-- \"COMPLETED_NOT_CLAIMED\" - The milestone is complete, but has not yet
-- been claimed. - \"CLAIMED\" - The milestone is complete and has been
-- claimed. - \"NOT_COMPLETED\" - The milestone has not yet been completed.
-- - \"NOT_STARTED\" - The milestone is for a quest that has not yet been
-- accepted.
qmState :: Lens' QuestMilestone (Maybe Text)
qmState = lens _qmState (\ s a -> s{_qmState = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#questMilestone.
qmKind :: Lens' QuestMilestone Text
qmKind = lens _qmKind (\ s a -> s{_qmKind = a})

-- | The milestone ID.
qmId :: Lens' QuestMilestone (Maybe Text)
qmId = lens _qmId (\ s a -> s{_qmId = a})

-- | The completion reward data of the milestone, represented as a
-- Base64-encoded string. This is a developer-specified binary blob with
-- size between 0 and 2 KB before encoding.
qmCompletionRewardData :: Lens' QuestMilestone (Maybe Word8)
qmCompletionRewardData
  = lens _qmCompletionRewardData
      (\ s a -> s{_qmCompletionRewardData = a})

-- | The criteria of the milestone.
qmCriteria :: Lens' QuestMilestone [QuestCriterion]
qmCriteria
  = lens _qmCriteria (\ s a -> s{_qmCriteria = a}) .
      _Default
      . _Coerce

instance FromJSON QuestMilestone where
        parseJSON
          = withObject "QuestMilestone"
              (\ o ->
                 QuestMilestone <$>
                   (o .:? "state") <*>
                     (o .:? "kind" .!= "games#questMilestone")
                     <*> (o .:? "id")
                     <*> (o .:? "completionRewardData")
                     <*> (o .:? "criteria" .!= mempty))

instance ToJSON QuestMilestone where
        toJSON QuestMilestone{..}
          = object
              (catMaybes
                 [("state" .=) <$> _qmState, Just ("kind" .= _qmKind),
                  ("id" .=) <$> _qmId,
                  ("completionRewardData" .=) <$>
                    _qmCompletionRewardData,
                  ("criteria" .=) <$> _qmCriteria])

-- | This is a JSON template for peer session diagnostics.
--
-- /See:/ 'peerSessionDiagnostics' smart constructor.
data PeerSessionDiagnostics = PeerSessionDiagnostics
    { _psdConnectedTimestampMillis :: !(Maybe Int64)
    , _psdParticipantId            :: !(Maybe Text)
    , _psdKind                     :: !Text
    , _psdUnreliableChannel        :: !(Maybe PeerChannelDiagnostics)
    , _psdReliableChannel          :: !(Maybe PeerChannelDiagnostics)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeerSessionDiagnostics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdConnectedTimestampMillis'
--
-- * 'psdParticipantId'
--
-- * 'psdKind'
--
-- * 'psdUnreliableChannel'
--
-- * 'psdReliableChannel'
peerSessionDiagnostics
    :: PeerSessionDiagnostics
peerSessionDiagnostics =
    PeerSessionDiagnostics
    { _psdConnectedTimestampMillis = Nothing
    , _psdParticipantId = Nothing
    , _psdKind = "games#peerSessionDiagnostics"
    , _psdUnreliableChannel = Nothing
    , _psdReliableChannel = Nothing
    }

-- | Connected time in milliseconds.
psdConnectedTimestampMillis :: Lens' PeerSessionDiagnostics (Maybe Int64)
psdConnectedTimestampMillis
  = lens _psdConnectedTimestampMillis
      (\ s a -> s{_psdConnectedTimestampMillis = a})

-- | The participant ID of the peer.
psdParticipantId :: Lens' PeerSessionDiagnostics (Maybe Text)
psdParticipantId
  = lens _psdParticipantId
      (\ s a -> s{_psdParticipantId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#peerSessionDiagnostics.
psdKind :: Lens' PeerSessionDiagnostics Text
psdKind = lens _psdKind (\ s a -> s{_psdKind = a})

-- | Unreliable channel diagnostics.
psdUnreliableChannel :: Lens' PeerSessionDiagnostics (Maybe PeerChannelDiagnostics)
psdUnreliableChannel
  = lens _psdUnreliableChannel
      (\ s a -> s{_psdUnreliableChannel = a})

-- | Reliable channel diagnostics.
psdReliableChannel :: Lens' PeerSessionDiagnostics (Maybe PeerChannelDiagnostics)
psdReliableChannel
  = lens _psdReliableChannel
      (\ s a -> s{_psdReliableChannel = a})

instance FromJSON PeerSessionDiagnostics where
        parseJSON
          = withObject "PeerSessionDiagnostics"
              (\ o ->
                 PeerSessionDiagnostics <$>
                   (o .:? "connectedTimestampMillis") <*>
                     (o .:? "participantId")
                     <*> (o .:? "kind" .!= "games#peerSessionDiagnostics")
                     <*> (o .:? "unreliableChannel")
                     <*> (o .:? "reliableChannel"))

instance ToJSON PeerSessionDiagnostics where
        toJSON PeerSessionDiagnostics{..}
          = object
              (catMaybes
                 [("connectedTimestampMillis" .=) <$>
                    _psdConnectedTimestampMillis,
                  ("participantId" .=) <$> _psdParticipantId,
                  Just ("kind" .= _psdKind),
                  ("unreliableChannel" .=) <$> _psdUnreliableChannel,
                  ("reliableChannel" .=) <$> _psdReliableChannel])

-- | This is a JSON template for a push token ID resource.
--
-- /See:/ 'pushTokenId' smart constructor.
data PushTokenId = PushTokenId
    { _ptiIos  :: !(Maybe PushTokenIdIos)
    , _ptiKind :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushTokenId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptiIos'
--
-- * 'ptiKind'
pushTokenId
    :: PushTokenId
pushTokenId =
    PushTokenId
    { _ptiIos = Nothing
    , _ptiKind = "games#pushTokenId"
    }

-- | A push token ID for iOS devices.
ptiIos :: Lens' PushTokenId (Maybe PushTokenIdIos)
ptiIos = lens _ptiIos (\ s a -> s{_ptiIos = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#pushTokenId.
ptiKind :: Lens' PushTokenId Text
ptiKind = lens _ptiKind (\ s a -> s{_ptiKind = a})

instance FromJSON PushTokenId where
        parseJSON
          = withObject "PushTokenId"
              (\ o ->
                 PushTokenId <$>
                   (o .:? "ios") <*>
                     (o .:? "kind" .!= "games#pushTokenId"))

instance ToJSON PushTokenId where
        toJSON PushTokenId{..}
          = object
              (catMaybes
                 [("ios" .=) <$> _ptiIos, Just ("kind" .= _ptiKind)])

-- | This is a JSON template for an event period update resource.
--
-- /See:/ 'eventPeriodUpdate' smart constructor.
data EventPeriodUpdate = EventPeriodUpdate
    { _epuKind       :: !Text
    , _epuTimePeriod :: !(Maybe EventPeriodRange)
    , _epuUpdates    :: !(Maybe [EventUpdateRequest])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventPeriodUpdate
    { _epuKind = "games#eventPeriodUpdate"
    , _epuTimePeriod = Nothing
    , _epuUpdates = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventPeriodUpdate.
epuKind :: Lens' EventPeriodUpdate Text
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
                 EventPeriodUpdate <$>
                   (o .:? "kind" .!= "games#eventPeriodUpdate") <*>
                     (o .:? "timePeriod")
                     <*> (o .:? "updates" .!= mempty))

instance ToJSON EventPeriodUpdate where
        toJSON EventPeriodUpdate{..}
          = object
              (catMaybes
                 [Just ("kind" .= _epuKind),
                  ("timePeriod" .=) <$> _epuTimePeriod,
                  ("updates" .=) <$> _epuUpdates])

-- | This is a JSON template for a list of turn-based matches returned from a
-- sync.
--
-- /See:/ 'turnBasedMatchSync' smart constructor.
data TurnBasedMatchSync = TurnBasedMatchSync
    { _tbmsMoreAvailable :: !(Maybe Bool)
    , _tbmsNextPageToken :: !(Maybe Text)
    , _tbmsKind          :: !Text
    , _tbmsItems         :: !(Maybe [TurnBasedMatch])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchSync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmsMoreAvailable'
--
-- * 'tbmsNextPageToken'
--
-- * 'tbmsKind'
--
-- * 'tbmsItems'
turnBasedMatchSync
    :: TurnBasedMatchSync
turnBasedMatchSync =
    TurnBasedMatchSync
    { _tbmsMoreAvailable = Nothing
    , _tbmsNextPageToken = Nothing
    , _tbmsKind = "games#turnBasedMatchSync"
    , _tbmsItems = Nothing
    }

-- | True if there were more matches available to fetch at the time the
-- response was generated (which were not returned due to page size
-- limits.)
tbmsMoreAvailable :: Lens' TurnBasedMatchSync (Maybe Bool)
tbmsMoreAvailable
  = lens _tbmsMoreAvailable
      (\ s a -> s{_tbmsMoreAvailable = a})

-- | The pagination token for the next page of results.
tbmsNextPageToken :: Lens' TurnBasedMatchSync (Maybe Text)
tbmsNextPageToken
  = lens _tbmsNextPageToken
      (\ s a -> s{_tbmsNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchSync.
tbmsKind :: Lens' TurnBasedMatchSync Text
tbmsKind = lens _tbmsKind (\ s a -> s{_tbmsKind = a})

-- | The matches.
tbmsItems :: Lens' TurnBasedMatchSync [TurnBasedMatch]
tbmsItems
  = lens _tbmsItems (\ s a -> s{_tbmsItems = a}) .
      _Default
      . _Coerce

instance FromJSON TurnBasedMatchSync where
        parseJSON
          = withObject "TurnBasedMatchSync"
              (\ o ->
                 TurnBasedMatchSync <$>
                   (o .:? "moreAvailable") <*> (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "games#turnBasedMatchSync")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON TurnBasedMatchSync where
        toJSON TurnBasedMatchSync{..}
          = object
              (catMaybes
                 [("moreAvailable" .=) <$> _tbmsMoreAvailable,
                  ("nextPageToken" .=) <$> _tbmsNextPageToken,
                  Just ("kind" .= _tbmsKind),
                  ("items" .=) <$> _tbmsItems])

-- | This is a JSON template for a request to submit a score to leaderboards.
--
-- /See:/ 'scoreSubmission' smart constructor.
data ScoreSubmission = ScoreSubmission
    { _scoSignature     :: !(Maybe Text)
    , _scoScoreTag      :: !(Maybe Text)
    , _scoScore         :: !(Maybe Int64)
    , _scoKind          :: !Text
    , _scoLeaderboardId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ScoreSubmission
    { _scoSignature = Nothing
    , _scoScoreTag = Nothing
    , _scoScore = Nothing
    , _scoKind = "games#scoreSubmission"
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
scoScore = lens _scoScore (\ s a -> s{_scoScore = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#scoreSubmission.
scoKind :: Lens' ScoreSubmission Text
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
                 ScoreSubmission <$>
                   (o .:? "signature") <*> (o .:? "scoreTag") <*>
                     (o .:? "score")
                     <*> (o .:? "kind" .!= "games#scoreSubmission")
                     <*> (o .:? "leaderboardId"))

instance ToJSON ScoreSubmission where
        toJSON ScoreSubmission{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _scoSignature,
                  ("scoreTag" .=) <$> _scoScoreTag,
                  ("score" .=) <$> _scoScore,
                  Just ("kind" .= _scoKind),
                  ("leaderboardId" .=) <$> _scoLeaderboardId])

-- | This is a JSON template for room leave diagnostics.
--
-- /See:/ 'roomLeaveDiagnostics' smart constructor.
data RoomLeaveDiagnostics = RoomLeaveDiagnostics
    { _rldPeerSession           :: !(Maybe [PeerSessionDiagnostics])
    , _rldAndroidNetworkType    :: !(Maybe Int32)
    , _rldKind                  :: !Text
    , _rldNetworkOperatorCode   :: !(Maybe Text)
    , _rldNetworkOperatorName   :: !(Maybe Text)
    , _rldSocketsUsed           :: !(Maybe Bool)
    , _rldIosNetworkType        :: !(Maybe Int32)
    , _rldAndroidNetworkSubtype :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomLeaveDiagnostics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rldPeerSession'
--
-- * 'rldAndroidNetworkType'
--
-- * 'rldKind'
--
-- * 'rldNetworkOperatorCode'
--
-- * 'rldNetworkOperatorName'
--
-- * 'rldSocketsUsed'
--
-- * 'rldIosNetworkType'
--
-- * 'rldAndroidNetworkSubtype'
roomLeaveDiagnostics
    :: RoomLeaveDiagnostics
roomLeaveDiagnostics =
    RoomLeaveDiagnostics
    { _rldPeerSession = Nothing
    , _rldAndroidNetworkType = Nothing
    , _rldKind = "games#roomLeaveDiagnostics"
    , _rldNetworkOperatorCode = Nothing
    , _rldNetworkOperatorName = Nothing
    , _rldSocketsUsed = Nothing
    , _rldIosNetworkType = Nothing
    , _rldAndroidNetworkSubtype = Nothing
    }

-- | Diagnostics about all peer sessions.
rldPeerSession :: Lens' RoomLeaveDiagnostics [PeerSessionDiagnostics]
rldPeerSession
  = lens _rldPeerSession
      (\ s a -> s{_rldPeerSession = a})
      . _Default
      . _Coerce

-- | Android network type.
-- http:\/\/developer.android.com\/reference\/android\/net\/NetworkInfo.html#getType()
rldAndroidNetworkType :: Lens' RoomLeaveDiagnostics (Maybe Int32)
rldAndroidNetworkType
  = lens _rldAndroidNetworkType
      (\ s a -> s{_rldAndroidNetworkType = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#roomLeaveDiagnostics.
rldKind :: Lens' RoomLeaveDiagnostics Text
rldKind = lens _rldKind (\ s a -> s{_rldKind = a})

-- | The MCC+MNC code for the client\'s network connection. On Android:
-- http:\/\/developer.android.com\/reference\/android\/telephony\/TelephonyManager.html#getNetworkOperator()
-- On iOS, see:
-- https:\/\/developer.apple.com\/library\/ios\/documentation\/NetworkingInternet\/Reference\/CTCarrier\/Reference\/Reference.html
rldNetworkOperatorCode :: Lens' RoomLeaveDiagnostics (Maybe Text)
rldNetworkOperatorCode
  = lens _rldNetworkOperatorCode
      (\ s a -> s{_rldNetworkOperatorCode = a})

-- | The name of the carrier of the client\'s network connection. On Android:
-- http:\/\/developer.android.com\/reference\/android\/telephony\/TelephonyManager.html#getNetworkOperatorName()
-- On iOS:
-- https:\/\/developer.apple.com\/library\/ios\/documentation\/NetworkingInternet\/Reference\/CTCarrier\/Reference\/Reference.html#\/\/apple_ref\/occ\/instp\/CTCarrier\/carrierName
rldNetworkOperatorName :: Lens' RoomLeaveDiagnostics (Maybe Text)
rldNetworkOperatorName
  = lens _rldNetworkOperatorName
      (\ s a -> s{_rldNetworkOperatorName = a})

-- | Whether or not sockets were used.
rldSocketsUsed :: Lens' RoomLeaveDiagnostics (Maybe Bool)
rldSocketsUsed
  = lens _rldSocketsUsed
      (\ s a -> s{_rldSocketsUsed = a})

-- | iOS network type as defined in Reachability.h.
rldIosNetworkType :: Lens' RoomLeaveDiagnostics (Maybe Int32)
rldIosNetworkType
  = lens _rldIosNetworkType
      (\ s a -> s{_rldIosNetworkType = a})

-- | Android network subtype.
-- http:\/\/developer.android.com\/reference\/android\/net\/NetworkInfo.html#getSubtype()
rldAndroidNetworkSubtype :: Lens' RoomLeaveDiagnostics (Maybe Int32)
rldAndroidNetworkSubtype
  = lens _rldAndroidNetworkSubtype
      (\ s a -> s{_rldAndroidNetworkSubtype = a})

instance FromJSON RoomLeaveDiagnostics where
        parseJSON
          = withObject "RoomLeaveDiagnostics"
              (\ o ->
                 RoomLeaveDiagnostics <$>
                   (o .:? "peerSession" .!= mempty) <*>
                     (o .:? "androidNetworkType")
                     <*> (o .:? "kind" .!= "games#roomLeaveDiagnostics")
                     <*> (o .:? "networkOperatorCode")
                     <*> (o .:? "networkOperatorName")
                     <*> (o .:? "socketsUsed")
                     <*> (o .:? "iosNetworkType")
                     <*> (o .:? "androidNetworkSubtype"))

instance ToJSON RoomLeaveDiagnostics where
        toJSON RoomLeaveDiagnostics{..}
          = object
              (catMaybes
                 [("peerSession" .=) <$> _rldPeerSession,
                  ("androidNetworkType" .=) <$> _rldAndroidNetworkType,
                  Just ("kind" .= _rldKind),
                  ("networkOperatorCode" .=) <$>
                    _rldNetworkOperatorCode,
                  ("networkOperatorName" .=) <$>
                    _rldNetworkOperatorName,
                  ("socketsUsed" .=) <$> _rldSocketsUsed,
                  ("iosNetworkType" .=) <$> _rldIosNetworkType,
                  ("androidNetworkSubtype" .=) <$>
                    _rldAndroidNetworkSubtype])

-- | This is a JSON template for aggregate stats.
--
-- /See:/ 'aggregateStats' smart constructor.
data AggregateStats = AggregateStats
    { _asMax   :: !(Maybe Int64)
    , _asKind  :: !Text
    , _asCount :: !(Maybe Int64)
    , _asMin   :: !(Maybe Int64)
    , _asSum   :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AggregateStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asMax'
--
-- * 'asKind'
--
-- * 'asCount'
--
-- * 'asMin'
--
-- * 'asSum'
aggregateStats
    :: AggregateStats
aggregateStats =
    AggregateStats
    { _asMax = Nothing
    , _asKind = "games#aggregateStats"
    , _asCount = Nothing
    , _asMin = Nothing
    , _asSum = Nothing
    }

-- | The maximum amount.
asMax :: Lens' AggregateStats (Maybe Int64)
asMax = lens _asMax (\ s a -> s{_asMax = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#aggregateStats.
asKind :: Lens' AggregateStats Text
asKind = lens _asKind (\ s a -> s{_asKind = a})

-- | The number of messages sent between a pair of peers.
asCount :: Lens' AggregateStats (Maybe Int64)
asCount = lens _asCount (\ s a -> s{_asCount = a})

-- | The minimum amount.
asMin :: Lens' AggregateStats (Maybe Int64)
asMin = lens _asMin (\ s a -> s{_asMin = a})

-- | The total number of bytes sent for messages between a pair of peers.
asSum :: Lens' AggregateStats (Maybe Int64)
asSum = lens _asSum (\ s a -> s{_asSum = a})

instance FromJSON AggregateStats where
        parseJSON
          = withObject "AggregateStats"
              (\ o ->
                 AggregateStats <$>
                   (o .:? "max") <*>
                     (o .:? "kind" .!= "games#aggregateStats")
                     <*> (o .:? "count")
                     <*> (o .:? "min")
                     <*> (o .:? "sum"))

instance ToJSON AggregateStats where
        toJSON AggregateStats{..}
          = object
              (catMaybes
                 [("max" .=) <$> _asMax, Just ("kind" .= _asKind),
                  ("count" .=) <$> _asCount, ("min" .=) <$> _asMin,
                  ("sum" .=) <$> _asSum])

-- | This is a JSON template for the Web details resource.
--
-- /See:/ 'instanceWebDetails' smart constructor.
data InstanceWebDetails = InstanceWebDetails
    { _iwdPreferred :: !(Maybe Bool)
    , _iwdKind      :: !Text
    , _iwdLaunchURL :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    InstanceWebDetails
    { _iwdPreferred = Nothing
    , _iwdKind = "games#instanceWebDetails"
    , _iwdLaunchURL = Nothing
    }

-- | Indicates that this instance is the default for new installations.
iwdPreferred :: Lens' InstanceWebDetails (Maybe Bool)
iwdPreferred
  = lens _iwdPreferred (\ s a -> s{_iwdPreferred = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#instanceWebDetails.
iwdKind :: Lens' InstanceWebDetails Text
iwdKind = lens _iwdKind (\ s a -> s{_iwdKind = a})

-- | Launch URL for the game.
iwdLaunchURL :: Lens' InstanceWebDetails (Maybe Text)
iwdLaunchURL
  = lens _iwdLaunchURL (\ s a -> s{_iwdLaunchURL = a})

instance FromJSON InstanceWebDetails where
        parseJSON
          = withObject "InstanceWebDetails"
              (\ o ->
                 InstanceWebDetails <$>
                   (o .:? "preferred") <*>
                     (o .:? "kind" .!= "games#instanceWebDetails")
                     <*> (o .:? "launchUrl"))

instance ToJSON InstanceWebDetails where
        toJSON InstanceWebDetails{..}
          = object
              (catMaybes
                 [("preferred" .=) <$> _iwdPreferred,
                  Just ("kind" .= _iwdKind),
                  ("launchUrl" .=) <$> _iwdLaunchURL])

-- | This is a JSON template for a rematch response.
--
-- /See:/ 'turnBasedMatchRematch' smart constructor.
data TurnBasedMatchRematch = TurnBasedMatchRematch
    { _tRematch       :: !(Maybe TurnBasedMatch)
    , _tKind          :: !Text
    , _tPreviousMatch :: !(Maybe TurnBasedMatch)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchRematch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tRematch'
--
-- * 'tKind'
--
-- * 'tPreviousMatch'
turnBasedMatchRematch
    :: TurnBasedMatchRematch
turnBasedMatchRematch =
    TurnBasedMatchRematch
    { _tRematch = Nothing
    , _tKind = "games#turnBasedMatchRematch"
    , _tPreviousMatch = Nothing
    }

-- | The newly created match; a rematch of the old match with the same
-- participants.
tRematch :: Lens' TurnBasedMatchRematch (Maybe TurnBasedMatch)
tRematch = lens _tRematch (\ s a -> s{_tRematch = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchRematch.
tKind :: Lens' TurnBasedMatchRematch Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | The old match that the rematch was created from; will be updated such
-- that the rematchId field will point at the new match.
tPreviousMatch :: Lens' TurnBasedMatchRematch (Maybe TurnBasedMatch)
tPreviousMatch
  = lens _tPreviousMatch
      (\ s a -> s{_tPreviousMatch = a})

instance FromJSON TurnBasedMatchRematch where
        parseJSON
          = withObject "TurnBasedMatchRematch"
              (\ o ->
                 TurnBasedMatchRematch <$>
                   (o .:? "rematch") <*>
                     (o .:? "kind" .!= "games#turnBasedMatchRematch")
                     <*> (o .:? "previousMatch"))

instance ToJSON TurnBasedMatchRematch where
        toJSON TurnBasedMatchRematch{..}
          = object
              (catMaybes
                 [("rematch" .=) <$> _tRematch,
                  Just ("kind" .= _tKind),
                  ("previousMatch" .=) <$> _tPreviousMatch])

-- | This is a JSON template for 1P\/3P metadata about the player\'s
-- experience.
--
-- /See:/ 'playerExperienceInfo' smart constructor.
data PlayerExperienceInfo = PlayerExperienceInfo
    { _peiKind                       :: !Text
    , _peiCurrentExperiencePoints    :: !(Maybe Int64)
    , _peiCurrentLevel               :: !(Maybe PlayerLevel)
    , _peiNextLevel                  :: !(Maybe PlayerLevel)
    , _peiLastLevelUpTimestampMillis :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerExperienceInfo
    { _peiKind = "games#playerExperienceInfo"
    , _peiCurrentExperiencePoints = Nothing
    , _peiCurrentLevel = Nothing
    , _peiNextLevel = Nothing
    , _peiLastLevelUpTimestampMillis = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerExperienceInfo.
peiKind :: Lens' PlayerExperienceInfo Text
peiKind = lens _peiKind (\ s a -> s{_peiKind = a})

-- | The current number of experience points for the player.
peiCurrentExperiencePoints :: Lens' PlayerExperienceInfo (Maybe Int64)
peiCurrentExperiencePoints
  = lens _peiCurrentExperiencePoints
      (\ s a -> s{_peiCurrentExperiencePoints = a})

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

instance FromJSON PlayerExperienceInfo where
        parseJSON
          = withObject "PlayerExperienceInfo"
              (\ o ->
                 PlayerExperienceInfo <$>
                   (o .:? "kind" .!= "games#playerExperienceInfo") <*>
                     (o .:? "currentExperiencePoints")
                     <*> (o .:? "currentLevel")
                     <*> (o .:? "nextLevel")
                     <*> (o .:? "lastLevelUpTimestampMillis"))

instance ToJSON PlayerExperienceInfo where
        toJSON PlayerExperienceInfo{..}
          = object
              (catMaybes
                 [Just ("kind" .= _peiKind),
                  ("currentExperiencePoints" .=) <$>
                    _peiCurrentExperiencePoints,
                  ("currentLevel" .=) <$> _peiCurrentLevel,
                  ("nextLevel" .=) <$> _peiNextLevel,
                  ("lastLevelUpTimestampMillis" .=) <$>
                    _peiLastLevelUpTimestampMillis])

-- | This is a JSON template for the payload to request to increment an
-- achievement.
--
-- /See:/ 'gamesAchievementSetStepsAtLeast' smart constructor.
data GamesAchievementSetStepsAtLeast = GamesAchievementSetStepsAtLeast
    { _gassalKind  :: !Text
    , _gassalSteps :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    GamesAchievementSetStepsAtLeast
    { _gassalKind = "games#GamesAchievementSetStepsAtLeast"
    , _gassalSteps = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#GamesAchievementSetStepsAtLeast.
gassalKind :: Lens' GamesAchievementSetStepsAtLeast Text
gassalKind
  = lens _gassalKind (\ s a -> s{_gassalKind = a})

-- | The minimum number of steps for the achievement to be set to.
gassalSteps :: Lens' GamesAchievementSetStepsAtLeast (Maybe Int32)
gassalSteps
  = lens _gassalSteps (\ s a -> s{_gassalSteps = a})

instance FromJSON GamesAchievementSetStepsAtLeast
         where
        parseJSON
          = withObject "GamesAchievementSetStepsAtLeast"
              (\ o ->
                 GamesAchievementSetStepsAtLeast <$>
                   (o .:? "kind" .!=
                      "games#GamesAchievementSetStepsAtLeast")
                     <*> (o .:? "steps"))

instance ToJSON GamesAchievementSetStepsAtLeast where
        toJSON GamesAchievementSetStepsAtLeast{..}
          = object
              (catMaybes
                 [Just ("kind" .= _gassalKind),
                  ("steps" .=) <$> _gassalSteps])

-- | This is a JSON template for a Player resource.
--
-- /See:/ 'player' smart constructor.
data Player = Player
    { _plaLastPlayedWith :: !(Maybe Played)
    , _plaAvatarImageURL :: !(Maybe Text)
    , _plaKind           :: !Text
    , _plaExperienceInfo :: !(Maybe PlayerExperienceInfo)
    , _plaName           :: !(Maybe PlayerName)
    , _plaDisplayName    :: !(Maybe Text)
    , _plaTitle          :: !(Maybe Text)
    , _plaPlayerId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Player' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaLastPlayedWith'
--
-- * 'plaAvatarImageURL'
--
-- * 'plaKind'
--
-- * 'plaExperienceInfo'
--
-- * 'plaName'
--
-- * 'plaDisplayName'
--
-- * 'plaTitle'
--
-- * 'plaPlayerId'
player
    :: Player
player =
    Player
    { _plaLastPlayedWith = Nothing
    , _plaAvatarImageURL = Nothing
    , _plaKind = "games#player"
    , _plaExperienceInfo = Nothing
    , _plaName = Nothing
    , _plaDisplayName = Nothing
    , _plaTitle = Nothing
    , _plaPlayerId = Nothing
    }

-- | Details about the last time this player played a multiplayer game with
-- the currently authenticated player. Populated for PLAYED_WITH player
-- collection members.
plaLastPlayedWith :: Lens' Player (Maybe Played)
plaLastPlayedWith
  = lens _plaLastPlayedWith
      (\ s a -> s{_plaLastPlayedWith = a})

-- | The base URL for the image that represents the player.
plaAvatarImageURL :: Lens' Player (Maybe Text)
plaAvatarImageURL
  = lens _plaAvatarImageURL
      (\ s a -> s{_plaAvatarImageURL = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#player.
plaKind :: Lens' Player Text
plaKind = lens _plaKind (\ s a -> s{_plaKind = a})

-- | An object to represent Play Game experience information for the player.
plaExperienceInfo :: Lens' Player (Maybe PlayerExperienceInfo)
plaExperienceInfo
  = lens _plaExperienceInfo
      (\ s a -> s{_plaExperienceInfo = a})

-- | An object representation of the individual components of the player\'s
-- name. For some players, these fields may not be present.
plaName :: Lens' Player (Maybe PlayerName)
plaName = lens _plaName (\ s a -> s{_plaName = a})

-- | The name to display for the player.
plaDisplayName :: Lens' Player (Maybe Text)
plaDisplayName
  = lens _plaDisplayName
      (\ s a -> s{_plaDisplayName = a})

-- | The player\'s title rewarded for their game activities.
plaTitle :: Lens' Player (Maybe Text)
plaTitle = lens _plaTitle (\ s a -> s{_plaTitle = a})

-- | The ID of the player.
plaPlayerId :: Lens' Player (Maybe Text)
plaPlayerId
  = lens _plaPlayerId (\ s a -> s{_plaPlayerId = a})

instance FromJSON Player where
        parseJSON
          = withObject "Player"
              (\ o ->
                 Player <$>
                   (o .:? "lastPlayedWith") <*> (o .:? "avatarImageUrl")
                     <*> (o .:? "kind" .!= "games#player")
                     <*> (o .:? "experienceInfo")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "title")
                     <*> (o .:? "playerId"))

instance ToJSON Player where
        toJSON Player{..}
          = object
              (catMaybes
                 [("lastPlayedWith" .=) <$> _plaLastPlayedWith,
                  ("avatarImageUrl" .=) <$> _plaAvatarImageURL,
                  Just ("kind" .= _plaKind),
                  ("experienceInfo" .=) <$> _plaExperienceInfo,
                  ("name" .=) <$> _plaName,
                  ("displayName" .=) <$> _plaDisplayName,
                  ("title" .=) <$> _plaTitle,
                  ("playerId" .=) <$> _plaPlayerId])

-- | This is a JSON template for the payload to request to increment an
-- achievement.
--
-- /See:/ 'gamesAchievementIncrement' smart constructor.
data GamesAchievementIncrement = GamesAchievementIncrement
    { _gaiRequestId :: !(Maybe Int64)
    , _gaiKind      :: !Text
    , _gaiSteps     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    GamesAchievementIncrement
    { _gaiRequestId = Nothing
    , _gaiKind = "games#GamesAchievementIncrement"
    , _gaiSteps = Nothing
    }

-- | The requestId associated with an increment to an achievement.
gaiRequestId :: Lens' GamesAchievementIncrement (Maybe Int64)
gaiRequestId
  = lens _gaiRequestId (\ s a -> s{_gaiRequestId = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#GamesAchievementIncrement.
gaiKind :: Lens' GamesAchievementIncrement Text
gaiKind = lens _gaiKind (\ s a -> s{_gaiKind = a})

-- | The number of steps to be incremented.
gaiSteps :: Lens' GamesAchievementIncrement (Maybe Int32)
gaiSteps = lens _gaiSteps (\ s a -> s{_gaiSteps = a})

instance FromJSON GamesAchievementIncrement where
        parseJSON
          = withObject "GamesAchievementIncrement"
              (\ o ->
                 GamesAchievementIncrement <$>
                   (o .:? "requestId") <*>
                     (o .:? "kind" .!= "games#GamesAchievementIncrement")
                     <*> (o .:? "steps"))

instance ToJSON GamesAchievementIncrement where
        toJSON GamesAchievementIncrement{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _gaiRequestId,
                  Just ("kind" .= _gaiKind),
                  ("steps" .=) <$> _gaiSteps])

-- | This is a JSON template for a Quest resource.
--
-- /See:/ 'quest' smart constructor.
data Quest = Quest
    { _queLastUpdatedTimestampMillis :: !(Maybe Int64)
    , _queBannerURL                  :: !(Maybe Text)
    , _queState                      :: !(Maybe Text)
    , _queMilestones                 :: !(Maybe [QuestMilestone])
    , _queKind                       :: !Text
    , _queApplicationId              :: !(Maybe Text)
    , _queEndTimestampMillis         :: !(Maybe Int64)
    , _queName                       :: !(Maybe Text)
    , _queId                         :: !(Maybe Text)
    , _queIconURL                    :: !(Maybe Text)
    , _queStartTimestampMillis       :: !(Maybe Int64)
    , _queNotifyTimestampMillis      :: !(Maybe Int64)
    , _queDescription                :: !(Maybe Text)
    , _queIsDefaultBannerURL         :: !(Maybe Bool)
    , _queIsDefaultIconURL           :: !(Maybe Bool)
    , _queAcceptedTimestampMillis    :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Quest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'queLastUpdatedTimestampMillis'
--
-- * 'queBannerURL'
--
-- * 'queState'
--
-- * 'queMilestones'
--
-- * 'queKind'
--
-- * 'queApplicationId'
--
-- * 'queEndTimestampMillis'
--
-- * 'queName'
--
-- * 'queId'
--
-- * 'queIconURL'
--
-- * 'queStartTimestampMillis'
--
-- * 'queNotifyTimestampMillis'
--
-- * 'queDescription'
--
-- * 'queIsDefaultBannerURL'
--
-- * 'queIsDefaultIconURL'
--
-- * 'queAcceptedTimestampMillis'
quest
    :: Quest
quest =
    Quest
    { _queLastUpdatedTimestampMillis = Nothing
    , _queBannerURL = Nothing
    , _queState = Nothing
    , _queMilestones = Nothing
    , _queKind = "games#quest"
    , _queApplicationId = Nothing
    , _queEndTimestampMillis = Nothing
    , _queName = Nothing
    , _queId = Nothing
    , _queIconURL = Nothing
    , _queStartTimestampMillis = Nothing
    , _queNotifyTimestampMillis = Nothing
    , _queDescription = Nothing
    , _queIsDefaultBannerURL = Nothing
    , _queIsDefaultIconURL = Nothing
    , _queAcceptedTimestampMillis = Nothing
    }

-- | The timestamp at which the quest was last updated by the user in
-- milliseconds since the epoch in UTC. Only present if the player has
-- accepted the quest.
queLastUpdatedTimestampMillis :: Lens' Quest (Maybe Int64)
queLastUpdatedTimestampMillis
  = lens _queLastUpdatedTimestampMillis
      (\ s a -> s{_queLastUpdatedTimestampMillis = a})

-- | The banner image URL for the quest.
queBannerURL :: Lens' Quest (Maybe Text)
queBannerURL
  = lens _queBannerURL (\ s a -> s{_queBannerURL = a})

-- | The state of the quest. Possible values are: - \"UPCOMING\": The quest
-- is upcoming. The user can see the quest, but cannot accept it until it
-- is open. - \"OPEN\": The quest is currently open and may be accepted at
-- this time. - \"ACCEPTED\": The user is currently participating in this
-- quest. - \"COMPLETED\": The user has completed the quest. - \"FAILED\":
-- The quest was attempted but was not completed before the deadline
-- expired. - \"EXPIRED\": The quest has expired and was not accepted. -
-- \"DELETED\": The quest should be deleted from the local database.
queState :: Lens' Quest (Maybe Text)
queState = lens _queState (\ s a -> s{_queState = a})

-- | The quest milestones.
queMilestones :: Lens' Quest [QuestMilestone]
queMilestones
  = lens _queMilestones
      (\ s a -> s{_queMilestones = a})
      . _Default
      . _Coerce

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#quest.
queKind :: Lens' Quest Text
queKind = lens _queKind (\ s a -> s{_queKind = a})

-- | The ID of the application this quest is part of.
queApplicationId :: Lens' Quest (Maybe Text)
queApplicationId
  = lens _queApplicationId
      (\ s a -> s{_queApplicationId = a})

-- | The timestamp at which the quest ceases to be active in milliseconds
-- since the epoch in UTC.
queEndTimestampMillis :: Lens' Quest (Maybe Int64)
queEndTimestampMillis
  = lens _queEndTimestampMillis
      (\ s a -> s{_queEndTimestampMillis = a})

-- | The name of the quest.
queName :: Lens' Quest (Maybe Text)
queName = lens _queName (\ s a -> s{_queName = a})

-- | The ID of the quest.
queId :: Lens' Quest (Maybe Text)
queId = lens _queId (\ s a -> s{_queId = a})

-- | The icon image URL for the quest.
queIconURL :: Lens' Quest (Maybe Text)
queIconURL
  = lens _queIconURL (\ s a -> s{_queIconURL = a})

-- | The timestamp at which the quest becomes active in milliseconds since
-- the epoch in UTC.
queStartTimestampMillis :: Lens' Quest (Maybe Int64)
queStartTimestampMillis
  = lens _queStartTimestampMillis
      (\ s a -> s{_queStartTimestampMillis = a})

-- | The timestamp at which the user should be notified that the quest will
-- end soon in milliseconds since the epoch in UTC.
queNotifyTimestampMillis :: Lens' Quest (Maybe Int64)
queNotifyTimestampMillis
  = lens _queNotifyTimestampMillis
      (\ s a -> s{_queNotifyTimestampMillis = a})

-- | The description of the quest.
queDescription :: Lens' Quest (Maybe Text)
queDescription
  = lens _queDescription
      (\ s a -> s{_queDescription = a})

-- | Indicates whether the banner image being returned is a default image, or
-- is game-provided.
queIsDefaultBannerURL :: Lens' Quest (Maybe Bool)
queIsDefaultBannerURL
  = lens _queIsDefaultBannerURL
      (\ s a -> s{_queIsDefaultBannerURL = a})

-- | Indicates whether the icon image being returned is a default image, or
-- is game-provided.
queIsDefaultIconURL :: Lens' Quest (Maybe Bool)
queIsDefaultIconURL
  = lens _queIsDefaultIconURL
      (\ s a -> s{_queIsDefaultIconURL = a})

-- | The timestamp at which the user accepted the quest in milliseconds since
-- the epoch in UTC. Only present if the player has accepted the quest.
queAcceptedTimestampMillis :: Lens' Quest (Maybe Int64)
queAcceptedTimestampMillis
  = lens _queAcceptedTimestampMillis
      (\ s a -> s{_queAcceptedTimestampMillis = a})

instance FromJSON Quest where
        parseJSON
          = withObject "Quest"
              (\ o ->
                 Quest <$>
                   (o .:? "lastUpdatedTimestampMillis") <*>
                     (o .:? "bannerUrl")
                     <*> (o .:? "state")
                     <*> (o .:? "milestones" .!= mempty)
                     <*> (o .:? "kind" .!= "games#quest")
                     <*> (o .:? "applicationId")
                     <*> (o .:? "endTimestampMillis")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "startTimestampMillis")
                     <*> (o .:? "notifyTimestampMillis")
                     <*> (o .:? "description")
                     <*> (o .:? "isDefaultBannerUrl")
                     <*> (o .:? "isDefaultIconUrl")
                     <*> (o .:? "acceptedTimestampMillis"))

instance ToJSON Quest where
        toJSON Quest{..}
          = object
              (catMaybes
                 [("lastUpdatedTimestampMillis" .=) <$>
                    _queLastUpdatedTimestampMillis,
                  ("bannerUrl" .=) <$> _queBannerURL,
                  ("state" .=) <$> _queState,
                  ("milestones" .=) <$> _queMilestones,
                  Just ("kind" .= _queKind),
                  ("applicationId" .=) <$> _queApplicationId,
                  ("endTimestampMillis" .=) <$> _queEndTimestampMillis,
                  ("name" .=) <$> _queName, ("id" .=) <$> _queId,
                  ("iconUrl" .=) <$> _queIconURL,
                  ("startTimestampMillis" .=) <$>
                    _queStartTimestampMillis,
                  ("notifyTimestampMillis" .=) <$>
                    _queNotifyTimestampMillis,
                  ("description" .=) <$> _queDescription,
                  ("isDefaultBannerUrl" .=) <$> _queIsDefaultBannerURL,
                  ("isDefaultIconUrl" .=) <$> _queIsDefaultIconURL,
                  ("acceptedTimestampMillis" .=) <$>
                    _queAcceptedTimestampMillis])

-- | This is a JSON template for an event child relationship resource.
--
-- /See:/ 'eventChild' smart constructor.
data EventChild = EventChild
    { _ecKind    :: !Text
    , _ecChildId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventChild' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecKind'
--
-- * 'ecChildId'
eventChild
    :: EventChild
eventChild =
    EventChild
    { _ecKind = "games#eventChild"
    , _ecChildId = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventChild.
ecKind :: Lens' EventChild Text
ecKind = lens _ecKind (\ s a -> s{_ecKind = a})

-- | The ID of the child event.
ecChildId :: Lens' EventChild (Maybe Text)
ecChildId
  = lens _ecChildId (\ s a -> s{_ecChildId = a})

instance FromJSON EventChild where
        parseJSON
          = withObject "EventChild"
              (\ o ->
                 EventChild <$>
                   (o .:? "kind" .!= "games#eventChild") <*>
                     (o .:? "childId"))

instance ToJSON EventChild where
        toJSON EventChild{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ecKind),
                  ("childId" .=) <$> _ecChildId])

-- | This is a JSON template for a ListByPlayer response.
--
-- /See:/ 'playerEventListResponse' smart constructor.
data PlayerEventListResponse = PlayerEventListResponse
    { _pelrNextPageToken :: !(Maybe Text)
    , _pelrKind          :: !Text
    , _pelrItems         :: !(Maybe [PlayerEvent])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerEventListResponse
    { _pelrNextPageToken = Nothing
    , _pelrKind = "games#playerEventListResponse"
    , _pelrItems = Nothing
    }

-- | The pagination token for the next page of results.
pelrNextPageToken :: Lens' PlayerEventListResponse (Maybe Text)
pelrNextPageToken
  = lens _pelrNextPageToken
      (\ s a -> s{_pelrNextPageToken = a})

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerEventListResponse.
pelrKind :: Lens' PlayerEventListResponse Text
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
                 PlayerEventListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "games#playerEventListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PlayerEventListResponse where
        toJSON PlayerEventListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _pelrNextPageToken,
                  Just ("kind" .= _pelrKind),
                  ("items" .=) <$> _pelrItems])

-- | This is a JSON template for sending a turn-based match data object.
--
-- /See:/ 'turnBasedMatchDataRequest' smart constructor.
data TurnBasedMatchDataRequest = TurnBasedMatchDataRequest
    { _tbmdrKind :: !Text
    , _tbmdrData :: !(Maybe Word8)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmdrKind'
--
-- * 'tbmdrData'
turnBasedMatchDataRequest
    :: TurnBasedMatchDataRequest
turnBasedMatchDataRequest =
    TurnBasedMatchDataRequest
    { _tbmdrKind = "games#turnBasedMatchDataRequest"
    , _tbmdrData = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#turnBasedMatchDataRequest.
tbmdrKind :: Lens' TurnBasedMatchDataRequest Text
tbmdrKind
  = lens _tbmdrKind (\ s a -> s{_tbmdrKind = a})

-- | The byte representation of the data (limited to 128 kB), as a
-- Base64-encoded string with the URL_SAFE encoding option.
tbmdrData :: Lens' TurnBasedMatchDataRequest (Maybe Word8)
tbmdrData
  = lens _tbmdrData (\ s a -> s{_tbmdrData = a})

instance FromJSON TurnBasedMatchDataRequest where
        parseJSON
          = withObject "TurnBasedMatchDataRequest"
              (\ o ->
                 TurnBasedMatchDataRequest <$>
                   (o .:? "kind" .!= "games#turnBasedMatchDataRequest")
                     <*> (o .:? "data"))

instance ToJSON TurnBasedMatchDataRequest where
        toJSON TurnBasedMatchDataRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tbmdrKind),
                  ("data" .=) <$> _tbmdrData])

-- | This is a JSON template for an event period time range.
--
-- /See:/ 'eventPeriodRange' smart constructor.
data EventPeriodRange = EventPeriodRange
    { _eprKind              :: !Text
    , _eprPeriodStartMillis :: !(Maybe Int64)
    , _eprPeriodEndMillis   :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventPeriodRange
    { _eprKind = "games#eventPeriodRange"
    , _eprPeriodStartMillis = Nothing
    , _eprPeriodEndMillis = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventPeriodRange.
eprKind :: Lens' EventPeriodRange Text
eprKind = lens _eprKind (\ s a -> s{_eprKind = a})

-- | The time when this update period begins, in millis, since 1970 UTC (Unix
-- Epoch).
eprPeriodStartMillis :: Lens' EventPeriodRange (Maybe Int64)
eprPeriodStartMillis
  = lens _eprPeriodStartMillis
      (\ s a -> s{_eprPeriodStartMillis = a})

-- | The time when this update period ends, in millis, since 1970 UTC (Unix
-- Epoch).
eprPeriodEndMillis :: Lens' EventPeriodRange (Maybe Int64)
eprPeriodEndMillis
  = lens _eprPeriodEndMillis
      (\ s a -> s{_eprPeriodEndMillis = a})

instance FromJSON EventPeriodRange where
        parseJSON
          = withObject "EventPeriodRange"
              (\ o ->
                 EventPeriodRange <$>
                   (o .:? "kind" .!= "games#eventPeriodRange") <*>
                     (o .:? "periodStartMillis")
                     <*> (o .:? "periodEndMillis"))

instance ToJSON EventPeriodRange where
        toJSON EventPeriodRange{..}
          = object
              (catMaybes
                 [Just ("kind" .= _eprKind),
                  ("periodStartMillis" .=) <$> _eprPeriodStartMillis,
                  ("periodEndMillis" .=) <$> _eprPeriodEndMillis])

-- | This is a JSON template for an event update failure resource.
--
-- /See:/ 'eventRecordFailure' smart constructor.
data EventRecordFailure = EventRecordFailure
    { _erfKind         :: !Text
    , _erfFailureCause :: !(Maybe Text)
    , _erfEventId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    EventRecordFailure
    { _erfKind = "games#eventRecordFailure"
    , _erfFailureCause = Nothing
    , _erfEventId = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#eventRecordFailure.
erfKind :: Lens' EventRecordFailure Text
erfKind = lens _erfKind (\ s a -> s{_erfKind = a})

-- | The cause for the update failure. Possible values are: - \"NOT_FOUND\" -
-- An attempt was made to set an event that was not defined. -
-- \"INVALID_UPDATE_VALUE\" - An attempt was made to increment an event by
-- a non-positive value.
erfFailureCause :: Lens' EventRecordFailure (Maybe Text)
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
                 EventRecordFailure <$>
                   (o .:? "kind" .!= "games#eventRecordFailure") <*>
                     (o .:? "failureCause")
                     <*> (o .:? "eventId"))

instance ToJSON EventRecordFailure where
        toJSON EventRecordFailure{..}
          = object
              (catMaybes
                 [Just ("kind" .= _erfKind),
                  ("failureCause" .=) <$> _erfFailureCause,
                  ("eventId" .=) <$> _erfEventId])

-- | This is a JSON template for a list of score submission requests
--
-- /See:/ 'playerScoreSubmissionList' smart constructor.
data PlayerScoreSubmissionList = PlayerScoreSubmissionList
    { _psslKind   :: !Text
    , _psslScores :: !(Maybe [ScoreSubmission])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PlayerScoreSubmissionList
    { _psslKind = "games#playerScoreSubmissionList"
    , _psslScores = Nothing
    }

-- | Uniquely identifies the type of this resource. Value is always the fixed
-- string games#playerScoreSubmissionList.
psslKind :: Lens' PlayerScoreSubmissionList Text
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
                 PlayerScoreSubmissionList <$>
                   (o .:? "kind" .!= "games#playerScoreSubmissionList")
                     <*> (o .:? "scores" .!= mempty))

instance ToJSON PlayerScoreSubmissionList where
        toJSON PlayerScoreSubmissionList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _psslKind),
                  ("scores" .=) <$> _psslScores])

-- | This is a JSON template for the Instance resource.
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance
    { _iAndroidInstance :: !(Maybe InstanceAndroidDetails)
    , _iKind            :: !Text
    , _iWebInstance     :: !(Maybe InstanceWebDetails)
    , _iIosInstance     :: !(Maybe InstanceIosDetails)
    , _iName            :: !(Maybe Text)
    , _iAcquisitionURI  :: !(Maybe Text)
    , _iPlatformType    :: !(Maybe Text)
    , _iTurnBasedPlay   :: !(Maybe Bool)
    , _iRealtimePlay    :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Instance
    { _iAndroidInstance = Nothing
    , _iKind = "games#instance"
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
-- string games#instance.
iKind :: Lens' Instance Text
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

-- | The platform type. Possible values are: - \"ANDROID\" - Instance is for
-- Android. - \"IOS\" - Instance is for iOS - \"WEB_APP\" - Instance is for
-- Web App.
iPlatformType :: Lens' Instance (Maybe Text)
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
                 Instance <$>
                   (o .:? "androidInstance") <*>
                     (o .:? "kind" .!= "games#instance")
                     <*> (o .:? "webInstance")
                     <*> (o .:? "iosInstance")
                     <*> (o .:? "name")
                     <*> (o .:? "acquisitionUri")
                     <*> (o .:? "platformType")
                     <*> (o .:? "turnBasedPlay")
                     <*> (o .:? "realtimePlay"))

instance ToJSON Instance where
        toJSON Instance{..}
          = object
              (catMaybes
                 [("androidInstance" .=) <$> _iAndroidInstance,
                  Just ("kind" .= _iKind),
                  ("webInstance" .=) <$> _iWebInstance,
                  ("iosInstance" .=) <$> _iIosInstance,
                  ("name" .=) <$> _iName,
                  ("acquisitionUri" .=) <$> _iAcquisitionURI,
                  ("platformType" .=) <$> _iPlatformType,
                  ("turnBasedPlay" .=) <$> _iTurnBasedPlay,
                  ("realtimePlay" .=) <$> _iRealtimePlay])
