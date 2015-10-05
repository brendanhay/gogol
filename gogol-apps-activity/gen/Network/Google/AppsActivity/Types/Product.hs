{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsActivity.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsActivity.Types.Product where

import           Network.Google.AppsActivity.Types.Sum
import           Network.Google.Prelude

-- | Contains information about a parent object. For example, a folder in
-- Drive is a parent for all files within it.
--
-- /See:/ 'parent' smart constructor.
data Parent = Parent
    { _pIsRoot :: !(Maybe Bool)
    , _pId     :: !(Maybe Text)
    , _pTitle  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Parent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pIsRoot'
--
-- * 'pId'
--
-- * 'pTitle'
parent
    :: Parent
parent =
    Parent
    { _pIsRoot = Nothing
    , _pId = Nothing
    , _pTitle = Nothing
    }

-- | Whether this is the root folder.
pIsRoot :: Lens' Parent (Maybe Bool)
pIsRoot = lens _pIsRoot (\ s a -> s{_pIsRoot = a})

-- | The parent\'s ID.
pId :: Lens' Parent (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The parent\'s title.
pTitle :: Lens' Parent (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

instance FromJSON Parent where
        parseJSON
          = withObject "Parent"
              (\ o ->
                 Parent <$>
                   (o .:? "isRoot") <*> (o .:? "id") <*>
                     (o .:? "title"))

instance ToJSON Parent where
        toJSON Parent{..}
          = object
              (catMaybes
                 [("isRoot" .=) <$> _pIsRoot, ("id" .=) <$> _pId,
                  ("title" .=) <$> _pTitle])

-- | Photo information for a user.
--
-- /See:/ 'photo' smart constructor.
newtype Photo = Photo
    { _pURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pURL'
photo
    :: Photo
photo =
    Photo
    { _pURL = Nothing
    }

-- | The URL of the photo.
pURL :: Lens' Photo (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

instance FromJSON Photo where
        parseJSON
          = withObject "Photo" (\ o -> Photo <$> (o .:? "url"))

instance ToJSON Photo where
        toJSON Photo{..}
          = object (catMaybes [("url" .=) <$> _pURL])

-- | Represents the changes associated with an action taken by a user.
--
-- /See:/ 'event' smart constructor.
data Event = Event
    { _ePrimaryEventType     :: !(Maybe EventPrimaryEventType)
    , _eUser                 :: !(Maybe User)
    , _eEventTimeMillis      :: !(Maybe Word64)
    , _eRename               :: !(Maybe Rename)
    , _eFromUserDeletion     :: !(Maybe Bool)
    , _eAdditionalEventTypes :: !(Maybe [EventAdditionalEventTypesItem])
    , _ePermissionChanges    :: !(Maybe [PermissionChange])
    , _eTarget               :: !(Maybe Target)
    , _eMove                 :: !(Maybe Move)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ePrimaryEventType'
--
-- * 'eUser'
--
-- * 'eEventTimeMillis'
--
-- * 'eRename'
--
-- * 'eFromUserDeletion'
--
-- * 'eAdditionalEventTypes'
--
-- * 'ePermissionChanges'
--
-- * 'eTarget'
--
-- * 'eMove'
event
    :: Event
event =
    Event
    { _ePrimaryEventType = Nothing
    , _eUser = Nothing
    , _eEventTimeMillis = Nothing
    , _eRename = Nothing
    , _eFromUserDeletion = Nothing
    , _eAdditionalEventTypes = Nothing
    , _ePermissionChanges = Nothing
    , _eTarget = Nothing
    , _eMove = Nothing
    }

-- | The main type of event that occurred.
ePrimaryEventType :: Lens' Event (Maybe EventPrimaryEventType)
ePrimaryEventType
  = lens _ePrimaryEventType
      (\ s a -> s{_ePrimaryEventType = a})

-- | Represents the user responsible for the event.
eUser :: Lens' Event (Maybe User)
eUser = lens _eUser (\ s a -> s{_eUser = a})

-- | The time at which the event occurred formatted as Unix time in
-- milliseconds.
eEventTimeMillis :: Lens' Event (Maybe Word64)
eEventTimeMillis
  = lens _eEventTimeMillis
      (\ s a -> s{_eEventTimeMillis = a})

-- | Extra information for rename type events, such as the old and new names.
eRename :: Lens' Event (Maybe Rename)
eRename = lens _eRename (\ s a -> s{_eRename = a})

-- | Whether this event is caused by a user being deleted.
eFromUserDeletion :: Lens' Event (Maybe Bool)
eFromUserDeletion
  = lens _eFromUserDeletion
      (\ s a -> s{_eFromUserDeletion = a})

-- | Additional event types. Some events may have multiple types when
-- multiple actions are part of a single event. For example, creating a
-- document, renaming it, and sharing it may be part of a single
-- file-creation event.
eAdditionalEventTypes :: Lens' Event [EventAdditionalEventTypesItem]
eAdditionalEventTypes
  = lens _eAdditionalEventTypes
      (\ s a -> s{_eAdditionalEventTypes = a})
      . _Default
      . _Coerce

-- | Extra information for permissionChange type events, such as the user or
-- group the new permission applies to.
ePermissionChanges :: Lens' Event [PermissionChange]
ePermissionChanges
  = lens _ePermissionChanges
      (\ s a -> s{_ePermissionChanges = a})
      . _Default
      . _Coerce

-- | Information specific to the Target object modified by the event.
eTarget :: Lens' Event (Maybe Target)
eTarget = lens _eTarget (\ s a -> s{_eTarget = a})

-- | Extra information for move type events, such as changes in an object\'s
-- parents.
eMove :: Lens' Event (Maybe Move)
eMove = lens _eMove (\ s a -> s{_eMove = a})

instance FromJSON Event where
        parseJSON
          = withObject "Event"
              (\ o ->
                 Event <$>
                   (o .:? "primaryEventType") <*> (o .:? "user") <*>
                     (o .:? "eventTimeMillis")
                     <*> (o .:? "rename")
                     <*> (o .:? "fromUserDeletion")
                     <*> (o .:? "additionalEventTypes" .!= mempty)
                     <*> (o .:? "permissionChanges" .!= mempty)
                     <*> (o .:? "target")
                     <*> (o .:? "move"))

instance ToJSON Event where
        toJSON Event{..}
          = object
              (catMaybes
                 [("primaryEventType" .=) <$> _ePrimaryEventType,
                  ("user" .=) <$> _eUser,
                  ("eventTimeMillis" .=) <$> _eEventTimeMillis,
                  ("rename" .=) <$> _eRename,
                  ("fromUserDeletion" .=) <$> _eFromUserDeletion,
                  ("additionalEventTypes" .=) <$>
                    _eAdditionalEventTypes,
                  ("permissionChanges" .=) <$> _ePermissionChanges,
                  ("target" .=) <$> _eTarget, ("move" .=) <$> _eMove])

-- | The response from the list request. Contains a list of activities and a
-- token to retrieve the next page of results.
--
-- /See:/ 'listActivitiesResponse' smart constructor.
data ListActivitiesResponse = ListActivitiesResponse
    { _larNextPageToken :: !(Maybe Text)
    , _larActivities    :: !(Maybe [Activity])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListActivitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larActivities'
listActivitiesResponse
    :: ListActivitiesResponse
listActivitiesResponse =
    ListActivitiesResponse
    { _larNextPageToken = Nothing
    , _larActivities = Nothing
    }

-- | Token for the next page of results.
larNextPageToken :: Lens' ListActivitiesResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | List of activities.
larActivities :: Lens' ListActivitiesResponse [Activity]
larActivities
  = lens _larActivities
      (\ s a -> s{_larActivities = a})
      . _Default
      . _Coerce

instance FromJSON ListActivitiesResponse where
        parseJSON
          = withObject "ListActivitiesResponse"
              (\ o ->
                 ListActivitiesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "activities" .!= mempty))

instance ToJSON ListActivitiesResponse where
        toJSON ListActivitiesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("activities" .=) <$> _larActivities])

-- | Contains information about a Drive object\'s permissions that changed as
-- a result of a permissionChange type event.
--
-- /See:/ 'permissionChange' smart constructor.
data PermissionChange = PermissionChange
    { _pcAddedPermissions   :: !(Maybe [Permission])
    , _pcRemovedPermissions :: !(Maybe [Permission])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcAddedPermissions'
--
-- * 'pcRemovedPermissions'
permissionChange
    :: PermissionChange
permissionChange =
    PermissionChange
    { _pcAddedPermissions = Nothing
    , _pcRemovedPermissions = Nothing
    }

-- | Lists all Permission objects added.
pcAddedPermissions :: Lens' PermissionChange [Permission]
pcAddedPermissions
  = lens _pcAddedPermissions
      (\ s a -> s{_pcAddedPermissions = a})
      . _Default
      . _Coerce

-- | Lists all Permission objects removed.
pcRemovedPermissions :: Lens' PermissionChange [Permission]
pcRemovedPermissions
  = lens _pcRemovedPermissions
      (\ s a -> s{_pcRemovedPermissions = a})
      . _Default
      . _Coerce

instance FromJSON PermissionChange where
        parseJSON
          = withObject "PermissionChange"
              (\ o ->
                 PermissionChange <$>
                   (o .:? "addedPermissions" .!= mempty) <*>
                     (o .:? "removedPermissions" .!= mempty))

instance ToJSON PermissionChange where
        toJSON PermissionChange{..}
          = object
              (catMaybes
                 [("addedPermissions" .=) <$> _pcAddedPermissions,
                  ("removedPermissions" .=) <$> _pcRemovedPermissions])

-- | A representation of a user.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _uPhoto :: !(Maybe Photo)
    , _uName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uPhoto'
--
-- * 'uName'
user
    :: User
user =
    User
    { _uPhoto = Nothing
    , _uName = Nothing
    }

-- | The profile photo of the user.
uPhoto :: Lens' User (Maybe Photo)
uPhoto = lens _uPhoto (\ s a -> s{_uPhoto = a})

-- | The displayable name of the user.
uName :: Lens' User (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o -> User <$> (o .:? "photo") <*> (o .:? "name"))

instance ToJSON User where
        toJSON User{..}
          = object
              (catMaybes
                 [("photo" .=) <$> _uPhoto, ("name" .=) <$> _uName])

-- | An Activity resource is a combined view of multiple events. An activity
-- has a list of individual events and a combined view of the common fields
-- among all events.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aSingleEvents  :: !(Maybe [Event])
    , _aCombinedEvent :: !(Maybe Event)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aSingleEvents'
--
-- * 'aCombinedEvent'
activity
    :: Activity
activity =
    Activity
    { _aSingleEvents = Nothing
    , _aCombinedEvent = Nothing
    }

-- | A list of all the Events that make up the Activity.
aSingleEvents :: Lens' Activity [Event]
aSingleEvents
  = lens _aSingleEvents
      (\ s a -> s{_aSingleEvents = a})
      . _Default
      . _Coerce

-- | The fields common to all of the singleEvents that make up the Activity.
aCombinedEvent :: Lens' Activity (Maybe Event)
aCombinedEvent
  = lens _aCombinedEvent
      (\ s a -> s{_aCombinedEvent = a})

instance FromJSON Activity where
        parseJSON
          = withObject "Activity"
              (\ o ->
                 Activity <$>
                   (o .:? "singleEvents" .!= mempty) <*>
                     (o .:? "combinedEvent"))

instance ToJSON Activity where
        toJSON Activity{..}
          = object
              (catMaybes
                 [("singleEvents" .=) <$> _aSingleEvents,
                  ("combinedEvent" .=) <$> _aCombinedEvent])

-- | Contains information about a renametype event.
--
-- /See:/ 'rename' smart constructor.
data Rename = Rename
    { _rNewTitle :: !(Maybe Text)
    , _rOldTitle :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Rename' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rNewTitle'
--
-- * 'rOldTitle'
rename
    :: Rename
rename =
    Rename
    { _rNewTitle = Nothing
    , _rOldTitle = Nothing
    }

-- | The new title.
rNewTitle :: Lens' Rename (Maybe Text)
rNewTitle
  = lens _rNewTitle (\ s a -> s{_rNewTitle = a})

-- | The old title.
rOldTitle :: Lens' Rename (Maybe Text)
rOldTitle
  = lens _rOldTitle (\ s a -> s{_rOldTitle = a})

instance FromJSON Rename where
        parseJSON
          = withObject "Rename"
              (\ o ->
                 Rename <$> (o .:? "newTitle") <*> (o .:? "oldTitle"))

instance ToJSON Rename where
        toJSON Rename{..}
          = object
              (catMaybes
                 [("newTitle" .=) <$> _rNewTitle,
                  ("oldTitle" .=) <$> _rOldTitle])

-- | Contains information about the permissions and type of access allowed
-- with regards to a Google Drive object. This is a subset of the fields
-- contained in a corresponding Drive Permissions object.
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission
    { _pWithLink     :: !(Maybe Bool)
    , _pUser         :: !(Maybe User)
    , _pRole         :: !(Maybe PermissionRole)
    , _pName         :: !(Maybe Text)
    , _pType         :: !(Maybe PermissionType)
    , _pPermissionId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pWithLink'
--
-- * 'pUser'
--
-- * 'pRole'
--
-- * 'pName'
--
-- * 'pType'
--
-- * 'pPermissionId'
permission
    :: Permission
permission =
    Permission
    { _pWithLink = Nothing
    , _pUser = Nothing
    , _pRole = Nothing
    , _pName = Nothing
    , _pType = Nothing
    , _pPermissionId = Nothing
    }

-- | Whether the permission requires a link to the file.
pWithLink :: Lens' Permission (Maybe Bool)
pWithLink
  = lens _pWithLink (\ s a -> s{_pWithLink = a})

-- | The user\'s information if the type is USER.
pUser :: Lens' Permission (Maybe User)
pUser = lens _pUser (\ s a -> s{_pUser = a})

-- | Indicates the Google Drive permissions role. The role determines a
-- user\'s ability to read, write, or comment on the file.
pRole :: Lens' Permission (Maybe PermissionRole)
pRole = lens _pRole (\ s a -> s{_pRole = a})

-- | The name of the user or group the permission applies to.
pName :: Lens' Permission (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Indicates how widely permissions are granted.
pType :: Lens' Permission (Maybe PermissionType)
pType = lens _pType (\ s a -> s{_pType = a})

-- | The ID for this permission. Corresponds to the Drive API\'s permission
-- ID returned as part of the Drive Permissions resource.
pPermissionId :: Lens' Permission (Maybe Text)
pPermissionId
  = lens _pPermissionId
      (\ s a -> s{_pPermissionId = a})

instance FromJSON Permission where
        parseJSON
          = withObject "Permission"
              (\ o ->
                 Permission <$>
                   (o .:? "withLink") <*> (o .:? "user") <*>
                     (o .:? "role")
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "permissionId"))

instance ToJSON Permission where
        toJSON Permission{..}
          = object
              (catMaybes
                 [("withLink" .=) <$> _pWithLink,
                  ("user" .=) <$> _pUser, ("role" .=) <$> _pRole,
                  ("name" .=) <$> _pName, ("type" .=) <$> _pType,
                  ("permissionId" .=) <$> _pPermissionId])

-- | Information about the object modified by the event.
--
-- /See:/ 'target' smart constructor.
data Target = Target
    { _tMimeType :: !(Maybe Text)
    , _tName     :: !(Maybe Text)
    , _tId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Target' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tMimeType'
--
-- * 'tName'
--
-- * 'tId'
target
    :: Target
target =
    Target
    { _tMimeType = Nothing
    , _tName = Nothing
    , _tId = Nothing
    }

-- | The MIME type of the target.
tMimeType :: Lens' Target (Maybe Text)
tMimeType
  = lens _tMimeType (\ s a -> s{_tMimeType = a})

-- | The name of the target. For example, in Google Drive, this is the title
-- of the file.
tName :: Lens' Target (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | The ID of the target. For example, in Google Drive, this is the file or
-- folder ID.
tId :: Lens' Target (Maybe Text)
tId = lens _tId (\ s a -> s{_tId = a})

instance FromJSON Target where
        parseJSON
          = withObject "Target"
              (\ o ->
                 Target <$>
                   (o .:? "mimeType") <*> (o .:? "name") <*>
                     (o .:? "id"))

instance ToJSON Target where
        toJSON Target{..}
          = object
              (catMaybes
                 [("mimeType" .=) <$> _tMimeType,
                  ("name" .=) <$> _tName, ("id" .=) <$> _tId])

-- | Contains information about changes in an object\'s parents as a result
-- of a move type event.
--
-- /See:/ 'move' smart constructor.
data Move = Move
    { _mAddedParents   :: !(Maybe [Parent])
    , _mRemovedParents :: !(Maybe [Parent])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Move' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mAddedParents'
--
-- * 'mRemovedParents'
move
    :: Move
move =
    Move
    { _mAddedParents = Nothing
    , _mRemovedParents = Nothing
    }

-- | The added parent(s).
mAddedParents :: Lens' Move [Parent]
mAddedParents
  = lens _mAddedParents
      (\ s a -> s{_mAddedParents = a})
      . _Default
      . _Coerce

-- | The removed parent(s).
mRemovedParents :: Lens' Move [Parent]
mRemovedParents
  = lens _mRemovedParents
      (\ s a -> s{_mRemovedParents = a})
      . _Default
      . _Coerce

instance FromJSON Move where
        parseJSON
          = withObject "Move"
              (\ o ->
                 Move <$>
                   (o .:? "addedParents" .!= mempty) <*>
                     (o .:? "removedParents" .!= mempty))

instance ToJSON Move where
        toJSON Move{..}
          = object
              (catMaybes
                 [("addedParents" .=) <$> _mAddedParents,
                  ("removedParents" .=) <$> _mRemovedParents])
