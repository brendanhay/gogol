{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

-- | An Activity resource is a combined view of multiple events. An activity
-- has a list of individual events and a combined view of the common fields
-- among all events.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity
    { _aSingleEvents  :: !(Maybe [Maybe Event])
    , _aCombinedEvent :: !(Maybe (Maybe Event))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
aSingleEvents :: Lens' Activity [Maybe Event]
aSingleEvents
  = lens _aSingleEvents
      (\ s a -> s{_aSingleEvents = a})
      . _Default
      . _Coerce

-- | The fields common to all of the singleEvents that make up the Activity.
aCombinedEvent :: Lens' Activity (Maybe (Maybe Event))
aCombinedEvent
  = lens _aCombinedEvent
      (\ s a -> s{_aCombinedEvent = a})

-- | Represents the changes associated with an action taken by a user.
--
-- /See:/ 'event' smart constructor.
data Event = Event
    { _ePrimaryEventType     :: !(Maybe EventPrimaryEventType)
    , _eUser                 :: !(Maybe (Maybe User))
    , _eEventTimeMillis      :: !(Maybe Word64)
    , _eRename               :: !(Maybe (Maybe Rename))
    , _eFromUserDeletion     :: !(Maybe Bool)
    , _eAdditionalEventTypes :: !(Maybe [EventItemAdditionalEventTypes])
    , _ePermissionChanges    :: !(Maybe [Maybe PermissionChange])
    , _eTarget               :: !(Maybe (Maybe Target))
    , _eMove                 :: !(Maybe (Maybe Move))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
eUser :: Lens' Event (Maybe (Maybe User))
eUser = lens _eUser (\ s a -> s{_eUser = a})

-- | The time at which the event occurred formatted as Unix time in
-- milliseconds.
eEventTimeMillis :: Lens' Event (Maybe Word64)
eEventTimeMillis
  = lens _eEventTimeMillis
      (\ s a -> s{_eEventTimeMillis = a})

-- | Extra information for rename type events, such as the old and new names.
eRename :: Lens' Event (Maybe (Maybe Rename))
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
eAdditionalEventTypes :: Lens' Event [EventItemAdditionalEventTypes]
eAdditionalEventTypes
  = lens _eAdditionalEventTypes
      (\ s a -> s{_eAdditionalEventTypes = a})
      . _Default
      . _Coerce

-- | Extra information for permissionChange type events, such as the user or
-- group the new permission applies to.
ePermissionChanges :: Lens' Event [Maybe PermissionChange]
ePermissionChanges
  = lens _ePermissionChanges
      (\ s a -> s{_ePermissionChanges = a})
      . _Default
      . _Coerce

-- | Information specific to the Target object modified by the event.
eTarget :: Lens' Event (Maybe (Maybe Target))
eTarget = lens _eTarget (\ s a -> s{_eTarget = a})

-- | Extra information for move type events, such as changes in an object\'s
-- parents.
eMove :: Lens' Event (Maybe (Maybe Move))
eMove = lens _eMove (\ s a -> s{_eMove = a})

-- | The response from the list request. Contains a list of activities and a
-- token to retrieve the next page of results.
--
-- /See:/ 'listActivitiesResponse' smart constructor.
data ListActivitiesResponse = ListActivitiesResponse
    { _larNextPageToken :: !(Maybe Text)
    , _larActivities    :: !(Maybe [Maybe Activity])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
larActivities :: Lens' ListActivitiesResponse [Maybe Activity]
larActivities
  = lens _larActivities
      (\ s a -> s{_larActivities = a})
      . _Default
      . _Coerce

-- | Contains information about changes in an object\'s parents as a result
-- of a move type event.
--
-- /See:/ 'move' smart constructor.
data Move = Move
    { _mAddedParents   :: !(Maybe [Maybe Parent])
    , _mRemovedParents :: !(Maybe [Maybe Parent])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
mAddedParents :: Lens' Move [Maybe Parent]
mAddedParents
  = lens _mAddedParents
      (\ s a -> s{_mAddedParents = a})
      . _Default
      . _Coerce

-- | The removed parent(s).
mRemovedParents :: Lens' Move [Maybe Parent]
mRemovedParents
  = lens _mRemovedParents
      (\ s a -> s{_mRemovedParents = a})
      . _Default
      . _Coerce

-- | Contains information about a parent object. For example, a folder in
-- Drive is a parent for all files within it.
--
-- /See:/ 'parent' smart constructor.
data Parent = Parent
    { _pIsRoot :: !(Maybe Bool)
    , _pId     :: !(Maybe Text)
    , _pTitle  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Contains information about the permissions and type of access allowed
-- with regards to a Google Drive object. This is a subset of the fields
-- contained in a corresponding Drive Permissions object.
--
-- /See:/ 'permission' smart constructor.
data Permission = Permission
    { _pWithLink     :: !(Maybe Bool)
    , _pUser         :: !(Maybe (Maybe User))
    , _pRole         :: !(Maybe PermissionRole)
    , _pName         :: !(Maybe Text)
    , _pType         :: !(Maybe PermissionType)
    , _pPermissionId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pUser :: Lens' Permission (Maybe (Maybe User))
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

-- | Contains information about a Drive object\'s permissions that changed as
-- a result of a permissionChange type event.
--
-- /See:/ 'permissionChange' smart constructor.
data PermissionChange = PermissionChange
    { _pcAddedPermissions   :: !(Maybe [Maybe Permission])
    , _pcRemovedPermissions :: !(Maybe [Maybe Permission])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
pcAddedPermissions :: Lens' PermissionChange [Maybe Permission]
pcAddedPermissions
  = lens _pcAddedPermissions
      (\ s a -> s{_pcAddedPermissions = a})
      . _Default
      . _Coerce

-- | Lists all Permission objects removed.
pcRemovedPermissions :: Lens' PermissionChange [Maybe Permission]
pcRemovedPermissions
  = lens _pcRemovedPermissions
      (\ s a -> s{_pcRemovedPermissions = a})
      . _Default
      . _Coerce

-- | Photo information for a user.
--
-- /See:/ 'photo' smart constructor.
newtype Photo = Photo
    { _pUrl :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pUrl'
photo
    :: Photo
photo =
    Photo
    { _pUrl = Nothing
    }

-- | The URL of the photo.
pUrl :: Lens' Photo (Maybe Text)
pUrl = lens _pUrl (\ s a -> s{_pUrl = a})

-- | Contains information about a renametype event.
--
-- /See:/ 'rename' smart constructor.
data Rename = Rename
    { _rNewTitle :: !(Maybe Text)
    , _rOldTitle :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | Information about the object modified by the event.
--
-- /See:/ 'target' smart constructor.
data Target = Target
    { _tMimeType :: !(Maybe Text)
    , _tName     :: !(Maybe Text)
    , _tId       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

-- | A representation of a user.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _uPhoto :: !(Maybe (Maybe Photo))
    , _uName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
uPhoto :: Lens' User (Maybe (Maybe Photo))
uPhoto = lens _uPhoto (\ s a -> s{_uPhoto = a})

-- | The displayable name of the user.
uName :: Lens' User (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})
