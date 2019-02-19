{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DriveActivity.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DriveActivity.Types.Product where

import           Network.Google.DriveActivity.Types.Sum
import           Network.Google.Prelude

-- | A suggestion.
--
-- /See:/ 'suggestion' smart constructor.
newtype Suggestion =
  Suggestion'
    { _sSubtype :: Maybe SuggestionSubtype
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Suggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSubtype'
suggestion
    :: Suggestion
suggestion = Suggestion' {_sSubtype = Nothing}

-- | The sub-type of this event.
sSubtype :: Lens' Suggestion (Maybe SuggestionSubtype)
sSubtype = lens _sSubtype (\ s a -> s{_sSubtype = a})

instance FromJSON Suggestion where
        parseJSON
          = withObject "Suggestion"
              (\ o -> Suggestion' <$> (o .:? "subtype"))

instance ToJSON Suggestion where
        toJSON Suggestion'{..}
          = object (catMaybes [("subtype" .=) <$> _sSubtype])

-- | Information about an impersonation, where an admin acts on behalf of an
-- end user. Information about the acting admin is not currently available.
--
-- /See:/ 'impersonation' smart constructor.
newtype Impersonation =
  Impersonation'
    { _iImpersonatedUser :: Maybe User
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Impersonation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iImpersonatedUser'
impersonation
    :: Impersonation
impersonation = Impersonation' {_iImpersonatedUser = Nothing}

-- | The impersonated user.
iImpersonatedUser :: Lens' Impersonation (Maybe User)
iImpersonatedUser
  = lens _iImpersonatedUser
      (\ s a -> s{_iImpersonatedUser = a})

instance FromJSON Impersonation where
        parseJSON
          = withObject "Impersonation"
              (\ o ->
                 Impersonation' <$> (o .:? "impersonatedUser"))

instance ToJSON Impersonation where
        toJSON Impersonation'{..}
          = object
              (catMaybes
                 [("impersonatedUser" .=) <$> _iImpersonatedUser])

-- | An empty message indicating an object was edited.
--
-- /See:/ 'edit' smart constructor.
data Edit =
  Edit'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Edit' with the minimum fields required to make a request.
--
edit
    :: Edit
edit = Edit'

instance FromJSON Edit where
        parseJSON = withObject "Edit" (\ o -> pure Edit')

instance ToJSON Edit where
        toJSON = const emptyObject

-- | Data describing the type and additional information of an action.
--
-- /See:/ 'actionDetail' smart constructor.
data ActionDetail =
  ActionDetail'
    { _adEdit             :: !(Maybe Edit)
    , _adPermissionChange :: !(Maybe PermissionChange)
    , _adRestore          :: !(Maybe Restore)
    , _adReference        :: !(Maybe ApplicationReference)
    , _adCreate           :: !(Maybe Create)
    , _adRename           :: !(Maybe Rename)
    , _adComment          :: !(Maybe Comment)
    , _adSettingsChange   :: !(Maybe SettingsChange)
    , _adDlpChange        :: !(Maybe DataLeakPreventionChange)
    , _adDelete           :: !(Maybe Delete')
    , _adMove             :: !(Maybe Move)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adEdit'
--
-- * 'adPermissionChange'
--
-- * 'adRestore'
--
-- * 'adReference'
--
-- * 'adCreate'
--
-- * 'adRename'
--
-- * 'adComment'
--
-- * 'adSettingsChange'
--
-- * 'adDlpChange'
--
-- * 'adDelete'
--
-- * 'adMove'
actionDetail
    :: ActionDetail
actionDetail =
  ActionDetail'
    { _adEdit = Nothing
    , _adPermissionChange = Nothing
    , _adRestore = Nothing
    , _adReference = Nothing
    , _adCreate = Nothing
    , _adRename = Nothing
    , _adComment = Nothing
    , _adSettingsChange = Nothing
    , _adDlpChange = Nothing
    , _adDelete = Nothing
    , _adMove = Nothing
    }

-- | An object was edited.
adEdit :: Lens' ActionDetail (Maybe Edit)
adEdit = lens _adEdit (\ s a -> s{_adEdit = a})

-- | The permission on an object was changed.
adPermissionChange :: Lens' ActionDetail (Maybe PermissionChange)
adPermissionChange
  = lens _adPermissionChange
      (\ s a -> s{_adPermissionChange = a})

-- | A deleted object was restored.
adRestore :: Lens' ActionDetail (Maybe Restore)
adRestore
  = lens _adRestore (\ s a -> s{_adRestore = a})

-- | An object was referenced in an application outside of Drive\/Docs.
adReference :: Lens' ActionDetail (Maybe ApplicationReference)
adReference
  = lens _adReference (\ s a -> s{_adReference = a})

-- | An object was created.
adCreate :: Lens' ActionDetail (Maybe Create)
adCreate = lens _adCreate (\ s a -> s{_adCreate = a})

-- | An object was renamed.
adRename :: Lens' ActionDetail (Maybe Rename)
adRename = lens _adRename (\ s a -> s{_adRename = a})

-- | A change about comments was made.
adComment :: Lens' ActionDetail (Maybe Comment)
adComment
  = lens _adComment (\ s a -> s{_adComment = a})

-- | Settings were changed.
adSettingsChange :: Lens' ActionDetail (Maybe SettingsChange)
adSettingsChange
  = lens _adSettingsChange
      (\ s a -> s{_adSettingsChange = a})

-- | A change happened in data leak prevention status.
adDlpChange :: Lens' ActionDetail (Maybe DataLeakPreventionChange)
adDlpChange
  = lens _adDlpChange (\ s a -> s{_adDlpChange = a})

-- | An object was deleted.
adDelete :: Lens' ActionDetail (Maybe Delete')
adDelete = lens _adDelete (\ s a -> s{_adDelete = a})

-- | An object was moved.
adMove :: Lens' ActionDetail (Maybe Move)
adMove = lens _adMove (\ s a -> s{_adMove = a})

instance FromJSON ActionDetail where
        parseJSON
          = withObject "ActionDetail"
              (\ o ->
                 ActionDetail' <$>
                   (o .:? "edit") <*> (o .:? "permissionChange") <*>
                     (o .:? "restore")
                     <*> (o .:? "reference")
                     <*> (o .:? "create")
                     <*> (o .:? "rename")
                     <*> (o .:? "comment")
                     <*> (o .:? "settingsChange")
                     <*> (o .:? "dlpChange")
                     <*> (o .:? "delete")
                     <*> (o .:? "move"))

instance ToJSON ActionDetail where
        toJSON ActionDetail'{..}
          = object
              (catMaybes
                 [("edit" .=) <$> _adEdit,
                  ("permissionChange" .=) <$> _adPermissionChange,
                  ("restore" .=) <$> _adRestore,
                  ("reference" .=) <$> _adReference,
                  ("create" .=) <$> _adCreate,
                  ("rename" .=) <$> _adRename,
                  ("comment" .=) <$> _adComment,
                  ("settingsChange" .=) <$> _adSettingsChange,
                  ("dlpChange" .=) <$> _adDlpChange,
                  ("delete" .=) <$> _adDelete,
                  ("move" .=) <$> _adMove])

-- | Information about a group.
--
-- /See:/ 'group'' smart constructor.
data Group =
  Group'
    { _gEmail :: !(Maybe Text)
    , _gTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gEmail'
--
-- * 'gTitle'
group'
    :: Group
group' = Group' {_gEmail = Nothing, _gTitle = Nothing}

-- | The email address of the group.
gEmail :: Lens' Group (Maybe Text)
gEmail = lens _gEmail (\ s a -> s{_gEmail = a})

-- | The title of the group.
gTitle :: Lens' Group (Maybe Text)
gTitle = lens _gTitle (\ s a -> s{_gTitle = a})

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group' <$> (o .:? "email") <*> (o .:? "title"))

instance ToJSON Group where
        toJSON Group'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gEmail, ("title" .=) <$> _gTitle])

-- | Information about time ranges.
--
-- /See:/ 'timeRange' smart constructor.
data TimeRange =
  TimeRange'
    { _trStartTime :: !(Maybe DateTime')
    , _trEndTime   :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TimeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trStartTime'
--
-- * 'trEndTime'
timeRange
    :: TimeRange
timeRange = TimeRange' {_trStartTime = Nothing, _trEndTime = Nothing}

-- | The start of the time range.
trStartTime :: Lens' TimeRange (Maybe UTCTime)
trStartTime
  = lens _trStartTime (\ s a -> s{_trStartTime = a}) .
      mapping _DateTime

-- | The end of the time range.
trEndTime :: Lens' TimeRange (Maybe UTCTime)
trEndTime
  = lens _trEndTime (\ s a -> s{_trEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeRange where
        parseJSON
          = withObject "TimeRange"
              (\ o ->
                 TimeRange' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeRange where
        toJSON TimeRange'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _trStartTime,
                  ("endTime" .=) <$> _trEndTime])

-- | The request message for querying Drive activity.
--
-- /See:/ 'queryDriveActivityRequest' smart constructor.
data QueryDriveActivityRequest =
  QueryDriveActivityRequest'
    { _qdarAncestorName          :: !(Maybe Text)
    , _qdarItemName              :: !(Maybe Text)
    , _qdarConsolidationStrategy :: !(Maybe ConsolidationStrategy)
    , _qdarFilter                :: !(Maybe Text)
    , _qdarPageToken             :: !(Maybe Text)
    , _qdarPageSize              :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryDriveActivityRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qdarAncestorName'
--
-- * 'qdarItemName'
--
-- * 'qdarConsolidationStrategy'
--
-- * 'qdarFilter'
--
-- * 'qdarPageToken'
--
-- * 'qdarPageSize'
queryDriveActivityRequest
    :: QueryDriveActivityRequest
queryDriveActivityRequest =
  QueryDriveActivityRequest'
    { _qdarAncestorName = Nothing
    , _qdarItemName = Nothing
    , _qdarConsolidationStrategy = Nothing
    , _qdarFilter = Nothing
    , _qdarPageToken = Nothing
    , _qdarPageSize = Nothing
    }

-- | Return activities for this Drive folder and all children and
-- descendants. The format is \"items\/ITEM_ID\".
qdarAncestorName :: Lens' QueryDriveActivityRequest (Maybe Text)
qdarAncestorName
  = lens _qdarAncestorName
      (\ s a -> s{_qdarAncestorName = a})

-- | Return activities for this Drive item. The format is \"items\/ITEM_ID\".
qdarItemName :: Lens' QueryDriveActivityRequest (Maybe Text)
qdarItemName
  = lens _qdarItemName (\ s a -> s{_qdarItemName = a})

-- | Details on how to consolidate related actions that make up the activity.
-- If not set, then related actions will not be consolidated.
qdarConsolidationStrategy :: Lens' QueryDriveActivityRequest (Maybe ConsolidationStrategy)
qdarConsolidationStrategy
  = lens _qdarConsolidationStrategy
      (\ s a -> s{_qdarConsolidationStrategy = a})

-- | The filtering for items returned from this query request. The format of
-- the filter string is a sequence of expressions, joined by an optional
-- \"AND\", where each expression is of the form \"field operator value\".
-- Supported fields: - 'time': Uses numerical operators on date values
-- either in terms of milliseconds since Jan 1, 1970 or in RFC 3339 format.
-- Examples: - 'time > 1452409200000 AND time \<= 1492812924310' -
-- 'time >= \"2016-01-10T01:02:03-05:00\"' - 'detail.action_detail_case':
-- Uses the \"has\" operator (:) and either a singular value or a list of
-- allowed action types enclosed in parentheses. Examples: -
-- 'detail.action_detail_case: RENAME' -
-- 'detail.action_detail_case:(CREATE UPLOAD)' -
-- '-detail.action_detail_case:MOVE'
qdarFilter :: Lens' QueryDriveActivityRequest (Maybe Text)
qdarFilter
  = lens _qdarFilter (\ s a -> s{_qdarFilter = a})

-- | The next_page_token value returned from a previous QueryDriveActivity
-- request, if any.
qdarPageToken :: Lens' QueryDriveActivityRequest (Maybe Text)
qdarPageToken
  = lens _qdarPageToken
      (\ s a -> s{_qdarPageToken = a})

-- | The requested number of activity to return. If not set, a default value
-- will be used.
qdarPageSize :: Lens' QueryDriveActivityRequest (Maybe Int32)
qdarPageSize
  = lens _qdarPageSize (\ s a -> s{_qdarPageSize = a})
      . mapping _Coerce

instance FromJSON QueryDriveActivityRequest where
        parseJSON
          = withObject "QueryDriveActivityRequest"
              (\ o ->
                 QueryDriveActivityRequest' <$>
                   (o .:? "ancestorName") <*> (o .:? "itemName") <*>
                     (o .:? "consolidationStrategy")
                     <*> (o .:? "filter")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON QueryDriveActivityRequest where
        toJSON QueryDriveActivityRequest'{..}
          = object
              (catMaybes
                 [("ancestorName" .=) <$> _qdarAncestorName,
                  ("itemName" .=) <$> _qdarItemName,
                  ("consolidationStrategy" .=) <$>
                    _qdarConsolidationStrategy,
                  ("filter" .=) <$> _qdarFilter,
                  ("pageToken" .=) <$> _qdarPageToken,
                  ("pageSize" .=) <$> _qdarPageSize])

-- | A lightweight reference to a Drive item, such as a file or folder.
--
-- /See:/ 'driveItemReference' smart constructor.
data DriveItemReference =
  DriveItemReference'
    { _dirFolder :: !(Maybe Folder)
    , _dirName   :: !(Maybe Text)
    , _dirTitle  :: !(Maybe Text)
    , _dirFile   :: !(Maybe File)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DriveItemReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirFolder'
--
-- * 'dirName'
--
-- * 'dirTitle'
--
-- * 'dirFile'
driveItemReference
    :: DriveItemReference
driveItemReference =
  DriveItemReference'
    { _dirFolder = Nothing
    , _dirName = Nothing
    , _dirTitle = Nothing
    , _dirFile = Nothing
    }

-- | The Drive item is a folder.
dirFolder :: Lens' DriveItemReference (Maybe Folder)
dirFolder
  = lens _dirFolder (\ s a -> s{_dirFolder = a})

-- | The target Drive item. The format is \"items\/ITEM_ID\".
dirName :: Lens' DriveItemReference (Maybe Text)
dirName = lens _dirName (\ s a -> s{_dirName = a})

-- | The title of the Drive item.
dirTitle :: Lens' DriveItemReference (Maybe Text)
dirTitle = lens _dirTitle (\ s a -> s{_dirTitle = a})

-- | The Drive item is a file.
dirFile :: Lens' DriveItemReference (Maybe File)
dirFile = lens _dirFile (\ s a -> s{_dirFile = a})

instance FromJSON DriveItemReference where
        parseJSON
          = withObject "DriveItemReference"
              (\ o ->
                 DriveItemReference' <$>
                   (o .:? "folder") <*> (o .:? "name") <*>
                     (o .:? "title")
                     <*> (o .:? "file"))

instance ToJSON DriveItemReference where
        toJSON DriveItemReference'{..}
          = object
              (catMaybes
                 [("folder" .=) <$> _dirFolder,
                  ("name" .=) <$> _dirName, ("title" .=) <$> _dirTitle,
                  ("file" .=) <$> _dirFile])

-- | A known user.
--
-- /See:/ 'knownUser' smart constructor.
data KnownUser =
  KnownUser'
    { _kuPersonName    :: !(Maybe Text)
    , _kuIsCurrentUser :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'KnownUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kuPersonName'
--
-- * 'kuIsCurrentUser'
knownUser
    :: KnownUser
knownUser = KnownUser' {_kuPersonName = Nothing, _kuIsCurrentUser = Nothing}

-- | The identifier for this user that can be used with the People API to get
-- more information. The format is \"people\/ACCOUNT_ID\". See
-- https:\/\/developers.google.com\/people\/.
kuPersonName :: Lens' KnownUser (Maybe Text)
kuPersonName
  = lens _kuPersonName (\ s a -> s{_kuPersonName = a})

-- | True if this is the user making the request.
kuIsCurrentUser :: Lens' KnownUser (Maybe Bool)
kuIsCurrentUser
  = lens _kuIsCurrentUser
      (\ s a -> s{_kuIsCurrentUser = a})

instance FromJSON KnownUser where
        parseJSON
          = withObject "KnownUser"
              (\ o ->
                 KnownUser' <$>
                   (o .:? "personName") <*> (o .:? "isCurrentUser"))

instance ToJSON KnownUser where
        toJSON KnownUser'{..}
          = object
              (catMaybes
                 [("personName" .=) <$> _kuPersonName,
                  ("isCurrentUser" .=) <$> _kuIsCurrentUser])

-- | A lightweight reference to the target of activity.
--
-- /See:/ 'targetReference' smart constructor.
data TargetReference =
  TargetReference'
    { _trTeamDrive :: !(Maybe TeamDriveReference)
    , _trDriveItem :: !(Maybe DriveItemReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trTeamDrive'
--
-- * 'trDriveItem'
targetReference
    :: TargetReference
targetReference =
  TargetReference' {_trTeamDrive = Nothing, _trDriveItem = Nothing}

-- | The target is a Team Drive.
trTeamDrive :: Lens' TargetReference (Maybe TeamDriveReference)
trTeamDrive
  = lens _trTeamDrive (\ s a -> s{_trTeamDrive = a})

-- | The target is a Drive item.
trDriveItem :: Lens' TargetReference (Maybe DriveItemReference)
trDriveItem
  = lens _trDriveItem (\ s a -> s{_trDriveItem = a})

instance FromJSON TargetReference where
        parseJSON
          = withObject "TargetReference"
              (\ o ->
                 TargetReference' <$>
                   (o .:? "teamDrive") <*> (o .:? "driveItem"))

instance ToJSON TargetReference where
        toJSON TargetReference'{..}
          = object
              (catMaybes
                 [("teamDrive" .=) <$> _trTeamDrive,
                  ("driveItem" .=) <$> _trDriveItem])

-- | An object was created by copying an existing object.
--
-- /See:/ 'copy' smart constructor.
newtype Copy =
  Copy'
    { _cOriginalObject :: Maybe TargetReference
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Copy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cOriginalObject'
copy
    :: Copy
copy = Copy' {_cOriginalObject = Nothing}

-- | The the original object.
cOriginalObject :: Lens' Copy (Maybe TargetReference)
cOriginalObject
  = lens _cOriginalObject
      (\ s a -> s{_cOriginalObject = a})

instance FromJSON Copy where
        parseJSON
          = withObject "Copy"
              (\ o -> Copy' <$> (o .:? "originalObject"))

instance ToJSON Copy where
        toJSON Copy'{..}
          = object
              (catMaybes
                 [("originalObject" .=) <$> _cOriginalObject])

-- | A change of the permission setting on an item.
--
-- /See:/ 'permissionChange' smart constructor.
data PermissionChange =
  PermissionChange'
    { _pcAddedPermissions   :: !(Maybe [Permission])
    , _pcRemovedPermissions :: !(Maybe [Permission])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
  PermissionChange'
    {_pcAddedPermissions = Nothing, _pcRemovedPermissions = Nothing}

-- | The set of permissions added by this change.
pcAddedPermissions :: Lens' PermissionChange [Permission]
pcAddedPermissions
  = lens _pcAddedPermissions
      (\ s a -> s{_pcAddedPermissions = a})
      . _Default
      . _Coerce

-- | The set of permissions removed by this change.
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
                 PermissionChange' <$>
                   (o .:? "addedPermissions" .!= mempty) <*>
                     (o .:? "removedPermissions" .!= mempty))

instance ToJSON PermissionChange where
        toJSON PermissionChange'{..}
          = object
              (catMaybes
                 [("addedPermissions" .=) <$> _pcAddedPermissions,
                  ("removedPermissions" .=) <$> _pcRemovedPermissions])

-- | Response message for querying Drive activity.
--
-- /See:/ 'queryDriveActivityResponse' smart constructor.
data QueryDriveActivityResponse =
  QueryDriveActivityResponse'
    { _qdarNextPageToken :: !(Maybe Text)
    , _qdarActivities    :: !(Maybe [DriveActivity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryDriveActivityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qdarNextPageToken'
--
-- * 'qdarActivities'
queryDriveActivityResponse
    :: QueryDriveActivityResponse
queryDriveActivityResponse =
  QueryDriveActivityResponse'
    {_qdarNextPageToken = Nothing, _qdarActivities = Nothing}

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
qdarNextPageToken :: Lens' QueryDriveActivityResponse (Maybe Text)
qdarNextPageToken
  = lens _qdarNextPageToken
      (\ s a -> s{_qdarNextPageToken = a})

-- | List of activity requested.
qdarActivities :: Lens' QueryDriveActivityResponse [DriveActivity]
qdarActivities
  = lens _qdarActivities
      (\ s a -> s{_qdarActivities = a})
      . _Default
      . _Coerce

instance FromJSON QueryDriveActivityResponse where
        parseJSON
          = withObject "QueryDriveActivityResponse"
              (\ o ->
                 QueryDriveActivityResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "activities" .!= mempty))

instance ToJSON QueryDriveActivityResponse where
        toJSON QueryDriveActivityResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _qdarNextPageToken,
                  ("activities" .=) <$> _qdarActivities])

-- | A regular posted comment.
--
-- /See:/ 'post' smart constructor.
newtype Post' =
  Post''
    { _pSubtype :: Maybe PostSubtype
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Post' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSubtype'
post
    :: Post'
post = Post'' {_pSubtype = Nothing}

-- | The sub-type of this event.
pSubtype :: Lens' Post' (Maybe PostSubtype)
pSubtype = lens _pSubtype (\ s a -> s{_pSubtype = a})

instance FromJSON Post' where
        parseJSON
          = withObject "Post"
              (\ o -> Post'' <$> (o .:? "subtype"))

instance ToJSON Post' where
        toJSON Post''{..}
          = object (catMaybes [("subtype" .=) <$> _pSubtype])

-- | A deleted object was restored.
--
-- /See:/ 'restore' smart constructor.
newtype Restore =
  Restore'
    { _rType :: Maybe RestoreType
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Restore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rType'
restore
    :: Restore
restore = Restore' {_rType = Nothing}

-- | The type of restore action taken.
rType :: Lens' Restore (Maybe RestoreType)
rType = lens _rType (\ s a -> s{_rType = a})

instance FromJSON Restore where
        parseJSON
          = withObject "Restore"
              (\ o -> Restore' <$> (o .:? "type"))

instance ToJSON Restore where
        toJSON Restore'{..}
          = object (catMaybes [("type" .=) <$> _rType])

-- | Information about a domain.
--
-- /See:/ 'domain' smart constructor.
data Domain =
  Domain'
    { _dLegacyId :: !(Maybe Text)
    , _dName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Domain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLegacyId'
--
-- * 'dName'
domain
    :: Domain
domain = Domain' {_dLegacyId = Nothing, _dName = Nothing}

-- | An opaque string used to identify this domain.
dLegacyId :: Lens' Domain (Maybe Text)
dLegacyId
  = lens _dLegacyId (\ s a -> s{_dLegacyId = a})

-- | The name of the domain, e.g. \"google.com\".
dName :: Lens' Domain (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

instance FromJSON Domain where
        parseJSON
          = withObject "Domain"
              (\ o ->
                 Domain' <$> (o .:? "legacyId") <*> (o .:? "name"))

instance ToJSON Domain where
        toJSON Domain'{..}
          = object
              (catMaybes
                 [("legacyId" .=) <$> _dLegacyId,
                  ("name" .=) <$> _dName])

-- | Empty message representing an administrator.
--
-- /See:/ 'administrator' smart constructor.
data Administrator =
  Administrator'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Administrator' with the minimum fields required to make a request.
--
administrator
    :: Administrator
administrator = Administrator'

instance FromJSON Administrator where
        parseJSON
          = withObject "Administrator"
              (\ o -> pure Administrator')

instance ToJSON Administrator where
        toJSON = const emptyObject

-- | A change in the object\'s data leak prevention status.
--
-- /See:/ 'dataLeakPreventionChange' smart constructor.
newtype DataLeakPreventionChange =
  DataLeakPreventionChange'
    { _dlpcType :: Maybe DataLeakPreventionChangeType
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataLeakPreventionChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlpcType'
dataLeakPreventionChange
    :: DataLeakPreventionChange
dataLeakPreventionChange = DataLeakPreventionChange' {_dlpcType = Nothing}

-- | The type of Data Leak Prevention (DLP) change.
dlpcType :: Lens' DataLeakPreventionChange (Maybe DataLeakPreventionChangeType)
dlpcType = lens _dlpcType (\ s a -> s{_dlpcType = a})

instance FromJSON DataLeakPreventionChange where
        parseJSON
          = withObject "DataLeakPreventionChange"
              (\ o -> DataLeakPreventionChange' <$> (o .:? "type"))

instance ToJSON DataLeakPreventionChange where
        toJSON DataLeakPreventionChange'{..}
          = object (catMaybes [("type" .=) <$> _dlpcType])

-- | The actor of a Drive activity.
--
-- /See:/ 'actor' smart constructor.
data Actor =
  Actor'
    { _aImpersonation :: !(Maybe Impersonation)
    , _aSystem        :: !(Maybe SystemEvent)
    , _aAdministrator :: !(Maybe Administrator)
    , _aUser          :: !(Maybe User)
    , _aAnonymous     :: !(Maybe AnonymousUser)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Actor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aImpersonation'
--
-- * 'aSystem'
--
-- * 'aAdministrator'
--
-- * 'aUser'
--
-- * 'aAnonymous'
actor
    :: Actor
actor =
  Actor'
    { _aImpersonation = Nothing
    , _aSystem = Nothing
    , _aAdministrator = Nothing
    , _aUser = Nothing
    , _aAnonymous = Nothing
    }

-- | An account acting on behalf of another.
aImpersonation :: Lens' Actor (Maybe Impersonation)
aImpersonation
  = lens _aImpersonation
      (\ s a -> s{_aImpersonation = a})

-- | A non-user actor (i.e. system triggered).
aSystem :: Lens' Actor (Maybe SystemEvent)
aSystem = lens _aSystem (\ s a -> s{_aSystem = a})

-- | An administrator.
aAdministrator :: Lens' Actor (Maybe Administrator)
aAdministrator
  = lens _aAdministrator
      (\ s a -> s{_aAdministrator = a})

-- | An end user.
aUser :: Lens' Actor (Maybe User)
aUser = lens _aUser (\ s a -> s{_aUser = a})

-- | An anonymous user.
aAnonymous :: Lens' Actor (Maybe AnonymousUser)
aAnonymous
  = lens _aAnonymous (\ s a -> s{_aAnonymous = a})

instance FromJSON Actor where
        parseJSON
          = withObject "Actor"
              (\ o ->
                 Actor' <$>
                   (o .:? "impersonation") <*> (o .:? "system") <*>
                     (o .:? "administrator")
                     <*> (o .:? "user")
                     <*> (o .:? "anonymous"))

instance ToJSON Actor where
        toJSON Actor'{..}
          = object
              (catMaybes
                 [("impersonation" .=) <$> _aImpersonation,
                  ("system" .=) <$> _aSystem,
                  ("administrator" .=) <$> _aAdministrator,
                  ("user" .=) <$> _aUser,
                  ("anonymous" .=) <$> _aAnonymous])

-- | A Drive item which is a folder.
--
-- /See:/ 'folder' smart constructor.
newtype Folder =
  Folder'
    { _fType :: Maybe FolderType
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Folder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fType'
folder
    :: Folder
folder = Folder' {_fType = Nothing}

-- | The type of Drive folder.
fType :: Lens' Folder (Maybe FolderType)
fType = lens _fType (\ s a -> s{_fType = a})

instance FromJSON Folder where
        parseJSON
          = withObject "Folder"
              (\ o -> Folder' <$> (o .:? "type"))

instance ToJSON Folder where
        toJSON Folder'{..}
          = object (catMaybes [("type" .=) <$> _fType])

-- | Information about the action.
--
-- /See:/ 'action' smart constructor.
data Action =
  Action'
    { _aTimeRange :: !(Maybe TimeRange)
    , _aActor     :: !(Maybe Actor)
    , _aTimestamp :: !(Maybe DateTime')
    , _aTarget    :: !(Maybe Target)
    , _aDetail    :: !(Maybe ActionDetail)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTimeRange'
--
-- * 'aActor'
--
-- * 'aTimestamp'
--
-- * 'aTarget'
--
-- * 'aDetail'
action
    :: Action
action =
  Action'
    { _aTimeRange = Nothing
    , _aActor = Nothing
    , _aTimestamp = Nothing
    , _aTarget = Nothing
    , _aDetail = Nothing
    }

-- | The action occurred over this time range.
aTimeRange :: Lens' Action (Maybe TimeRange)
aTimeRange
  = lens _aTimeRange (\ s a -> s{_aTimeRange = a})

-- | The actor responsible for this action (or empty if all actors are
-- responsible).
aActor :: Lens' Action (Maybe Actor)
aActor = lens _aActor (\ s a -> s{_aActor = a})

-- | The action occurred at this specific time.
aTimestamp :: Lens' Action (Maybe UTCTime)
aTimestamp
  = lens _aTimestamp (\ s a -> s{_aTimestamp = a}) .
      mapping _DateTime

-- | The target this action affects (or empty if affecting all targets). This
-- represents the state of the target immediately after this action
-- occurred.
aTarget :: Lens' Action (Maybe Target)
aTarget = lens _aTarget (\ s a -> s{_aTarget = a})

-- | The type and detailed information about the action.
aDetail :: Lens' Action (Maybe ActionDetail)
aDetail = lens _aDetail (\ s a -> s{_aDetail = a})

instance FromJSON Action where
        parseJSON
          = withObject "Action"
              (\ o ->
                 Action' <$>
                   (o .:? "timeRange") <*> (o .:? "actor") <*>
                     (o .:? "timestamp")
                     <*> (o .:? "target")
                     <*> (o .:? "detail"))

instance ToJSON Action where
        toJSON Action'{..}
          = object
              (catMaybes
                 [("timeRange" .=) <$> _aTimeRange,
                  ("actor" .=) <$> _aActor,
                  ("timestamp" .=) <$> _aTimestamp,
                  ("target" .=) <$> _aTarget,
                  ("detail" .=) <$> _aDetail])

-- | Information about a Team Drive.
--
-- /See:/ 'teamDrive' smart constructor.
data TeamDrive =
  TeamDrive'
    { _tdRoot  :: !(Maybe DriveItem)
    , _tdName  :: !(Maybe Text)
    , _tdTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TeamDrive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdRoot'
--
-- * 'tdName'
--
-- * 'tdTitle'
teamDrive
    :: TeamDrive
teamDrive =
  TeamDrive' {_tdRoot = Nothing, _tdName = Nothing, _tdTitle = Nothing}

-- | The root of this Team Drive.
tdRoot :: Lens' TeamDrive (Maybe DriveItem)
tdRoot = lens _tdRoot (\ s a -> s{_tdRoot = a})

-- | The resource name of the Team Drive. The format is
-- \"teamDrives\/TEAM_DRIVE_ID\".
tdName :: Lens' TeamDrive (Maybe Text)
tdName = lens _tdName (\ s a -> s{_tdName = a})

-- | The title of the Team Drive.
tdTitle :: Lens' TeamDrive (Maybe Text)
tdTitle = lens _tdTitle (\ s a -> s{_tdTitle = a})

instance FromJSON TeamDrive where
        parseJSON
          = withObject "TeamDrive"
              (\ o ->
                 TeamDrive' <$>
                   (o .:? "root") <*> (o .:? "name") <*>
                     (o .:? "title"))

instance ToJSON TeamDrive where
        toJSON TeamDrive'{..}
          = object
              (catMaybes
                 [("root" .=) <$> _tdRoot, ("name" .=) <$> _tdName,
                  ("title" .=) <$> _tdTitle])

-- | A user about whom nothing is currently known.
--
-- /See:/ 'unknownUser' smart constructor.
data UnknownUser =
  UnknownUser'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnknownUser' with the minimum fields required to make a request.
--
unknownUser
    :: UnknownUser
unknownUser = UnknownUser'

instance FromJSON UnknownUser where
        parseJSON
          = withObject "UnknownUser" (\ o -> pure UnknownUser')

instance ToJSON UnknownUser where
        toJSON = const emptyObject

-- | Information about the owner of a Drive item.
--
-- /See:/ 'owner' smart constructor.
data Owner =
  Owner'
    { _oDomain    :: !(Maybe Domain)
    , _oTeamDrive :: !(Maybe TeamDriveReference)
    , _oUser      :: !(Maybe User)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Owner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDomain'
--
-- * 'oTeamDrive'
--
-- * 'oUser'
owner
    :: Owner
owner = Owner' {_oDomain = Nothing, _oTeamDrive = Nothing, _oUser = Nothing}

-- | The domain of the Drive item owner.
oDomain :: Lens' Owner (Maybe Domain)
oDomain = lens _oDomain (\ s a -> s{_oDomain = a})

-- | The Team Drive that owns the Drive item.
oTeamDrive :: Lens' Owner (Maybe TeamDriveReference)
oTeamDrive
  = lens _oTeamDrive (\ s a -> s{_oTeamDrive = a})

-- | The user that owns the Drive item.
oUser :: Lens' Owner (Maybe User)
oUser = lens _oUser (\ s a -> s{_oUser = a})

instance FromJSON Owner where
        parseJSON
          = withObject "Owner"
              (\ o ->
                 Owner' <$>
                   (o .:? "domain") <*> (o .:? "teamDrive") <*>
                     (o .:? "user"))

instance ToJSON Owner where
        toJSON Owner'{..}
          = object
              (catMaybes
                 [("domain" .=) <$> _oDomain,
                  ("teamDrive" .=) <$> _oTeamDrive,
                  ("user" .=) <$> _oUser])

-- | Activity in applications other than Drive.
--
-- /See:/ 'applicationReference' smart constructor.
newtype ApplicationReference =
  ApplicationReference'
    { _arType :: Maybe ApplicationReferenceType
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arType'
applicationReference
    :: ApplicationReference
applicationReference = ApplicationReference' {_arType = Nothing}

-- | The reference type corresponding to this event.
arType :: Lens' ApplicationReference (Maybe ApplicationReferenceType)
arType = lens _arType (\ s a -> s{_arType = a})

instance FromJSON ApplicationReference where
        parseJSON
          = withObject "ApplicationReference"
              (\ o -> ApplicationReference' <$> (o .:? "type"))

instance ToJSON ApplicationReference where
        toJSON ApplicationReference'{..}
          = object (catMaybes [("type" .=) <$> _arType])

-- | How the individual activities are consolidated. A set of activities may
-- be consolidated into one combined activity if they are related in some
-- way, such as one actor performing the same action on multiple targets,
-- or multiple actors performing the same action on a single target. The
-- strategy defines the rules for which activities are related.
--
-- /See:/ 'consolidationStrategy' smart constructor.
data ConsolidationStrategy =
  ConsolidationStrategy'
    { _csNone   :: !(Maybe NoConsolidation)
    , _csLegacy :: !(Maybe Legacy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConsolidationStrategy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csNone'
--
-- * 'csLegacy'
consolidationStrategy
    :: ConsolidationStrategy
consolidationStrategy =
  ConsolidationStrategy' {_csNone = Nothing, _csLegacy = Nothing}

-- | The individual activities are not consolidated.
csNone :: Lens' ConsolidationStrategy (Maybe NoConsolidation)
csNone = lens _csNone (\ s a -> s{_csNone = a})

-- | The individual activities are consolidated using the legacy strategy.
csLegacy :: Lens' ConsolidationStrategy (Maybe Legacy)
csLegacy = lens _csLegacy (\ s a -> s{_csLegacy = a})

instance FromJSON ConsolidationStrategy where
        parseJSON
          = withObject "ConsolidationStrategy"
              (\ o ->
                 ConsolidationStrategy' <$>
                   (o .:? "none") <*> (o .:? "legacy"))

instance ToJSON ConsolidationStrategy where
        toJSON ConsolidationStrategy'{..}
          = object
              (catMaybes
                 [("none" .=) <$> _csNone,
                  ("legacy" .=) <$> _csLegacy])

-- | Information about an end user.
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _uKnownUser   :: !(Maybe KnownUser)
    , _uUnknownUser :: !(Maybe UnknownUser)
    , _uDeletedUser :: !(Maybe DeletedUser)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uKnownUser'
--
-- * 'uUnknownUser'
--
-- * 'uDeletedUser'
user
    :: User
user =
  User'
    {_uKnownUser = Nothing, _uUnknownUser = Nothing, _uDeletedUser = Nothing}

-- | A known user.
uKnownUser :: Lens' User (Maybe KnownUser)
uKnownUser
  = lens _uKnownUser (\ s a -> s{_uKnownUser = a})

-- | A user about whom nothing is currently known.
uUnknownUser :: Lens' User (Maybe UnknownUser)
uUnknownUser
  = lens _uUnknownUser (\ s a -> s{_uUnknownUser = a})

-- | A user whose account has since been deleted.
uDeletedUser :: Lens' User (Maybe DeletedUser)
uDeletedUser
  = lens _uDeletedUser (\ s a -> s{_uDeletedUser = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "knownUser") <*> (o .:? "unknownUser") <*>
                     (o .:? "deletedUser"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("knownUser" .=) <$> _uKnownUser,
                  ("unknownUser" .=) <$> _uUnknownUser,
                  ("deletedUser" .=) <$> _uDeletedUser])

-- | A user whose account has since been deleted.
--
-- /See:/ 'deletedUser' smart constructor.
data DeletedUser =
  DeletedUser'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletedUser' with the minimum fields required to make a request.
--
deletedUser
    :: DeletedUser
deletedUser = DeletedUser'

instance FromJSON DeletedUser where
        parseJSON
          = withObject "DeletedUser" (\ o -> pure DeletedUser')

instance ToJSON DeletedUser where
        toJSON = const emptyObject

-- | An object was created.
--
-- /See:/ 'create' smart constructor.
data Create =
  Create'
    { _cCopy   :: !(Maybe Copy)
    , _cNew    :: !(Maybe New)
    , _cUpload :: !(Maybe Upload)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Create' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCopy'
--
-- * 'cNew'
--
-- * 'cUpload'
create
    :: Create
create = Create' {_cCopy = Nothing, _cNew = Nothing, _cUpload = Nothing}

-- | If present, indicates the object was created by copying an existing
-- Drive object.
cCopy :: Lens' Create (Maybe Copy)
cCopy = lens _cCopy (\ s a -> s{_cCopy = a})

-- | If present, indicates the object was newly created (e.g. as a blank
-- document), not derived from a Drive object or external object.
cNew :: Lens' Create (Maybe New)
cNew = lens _cNew (\ s a -> s{_cNew = a})

-- | If present, indicates the object originated externally and was uploaded
-- to Drive.
cUpload :: Lens' Create (Maybe Upload)
cUpload = lens _cUpload (\ s a -> s{_cUpload = a})

instance FromJSON Create where
        parseJSON
          = withObject "Create"
              (\ o ->
                 Create' <$>
                   (o .:? "copy") <*> (o .:? "new") <*>
                     (o .:? "upload"))

instance ToJSON Create where
        toJSON Create'{..}
          = object
              (catMaybes
                 [("copy" .=) <$> _cCopy, ("new" .=) <$> _cNew,
                  ("upload" .=) <$> _cUpload])

-- | An object was created from scratch.
--
-- /See:/ 'new' smart constructor.
data New =
  New'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'New' with the minimum fields required to make a request.
--
new
    :: New
new = New'

instance FromJSON New where
        parseJSON = withObject "New" (\ o -> pure New')

instance ToJSON New where
        toJSON = const emptyObject

-- | A lightweight reference to a Team Drive.
--
-- /See:/ 'teamDriveReference' smart constructor.
data TeamDriveReference =
  TeamDriveReference'
    { _tdrName  :: !(Maybe Text)
    , _tdrTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TeamDriveReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdrName'
--
-- * 'tdrTitle'
teamDriveReference
    :: TeamDriveReference
teamDriveReference =
  TeamDriveReference' {_tdrName = Nothing, _tdrTitle = Nothing}

-- | The resource name of the Team Drive. The format is
-- \"teamDrives\/TEAM_DRIVE_ID\".
tdrName :: Lens' TeamDriveReference (Maybe Text)
tdrName = lens _tdrName (\ s a -> s{_tdrName = a})

-- | The title of the Team Drive.
tdrTitle :: Lens' TeamDriveReference (Maybe Text)
tdrTitle = lens _tdrTitle (\ s a -> s{_tdrTitle = a})

instance FromJSON TeamDriveReference where
        parseJSON
          = withObject "TeamDriveReference"
              (\ o ->
                 TeamDriveReference' <$>
                   (o .:? "name") <*> (o .:? "title"))

instance ToJSON TeamDriveReference where
        toJSON TeamDriveReference'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tdrName,
                  ("title" .=) <$> _tdrTitle])

-- | Empty message representing an anonymous user or indicating the
-- authenticated user should be anonymized.
--
-- /See:/ 'anonymousUser' smart constructor.
data AnonymousUser =
  AnonymousUser'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnonymousUser' with the minimum fields required to make a request.
--
anonymousUser
    :: AnonymousUser
anonymousUser = AnonymousUser'

instance FromJSON AnonymousUser where
        parseJSON
          = withObject "AnonymousUser"
              (\ o -> pure AnonymousUser')

instance ToJSON AnonymousUser where
        toJSON = const emptyObject

-- | Represents any user (including a logged out user).
--
-- /See:/ 'anyone' smart constructor.
data Anyone =
  Anyone'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Anyone' with the minimum fields required to make a request.
--
anyone
    :: Anyone
anyone = Anyone'

instance FromJSON Anyone where
        parseJSON = withObject "Anyone" (\ o -> pure Anyone')

instance ToJSON Anyone where
        toJSON = const emptyObject

-- | Information about restriction policy changes to a feature.
--
-- /See:/ 'restrictionChange' smart constructor.
data RestrictionChange =
  RestrictionChange'
    { _rcFeature        :: !(Maybe RestrictionChangeFeature)
    , _rcNewRestriction :: !(Maybe RestrictionChangeNewRestriction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RestrictionChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcFeature'
--
-- * 'rcNewRestriction'
restrictionChange
    :: RestrictionChange
restrictionChange =
  RestrictionChange' {_rcFeature = Nothing, _rcNewRestriction = Nothing}

-- | The feature which had a change in restriction policy.
rcFeature :: Lens' RestrictionChange (Maybe RestrictionChangeFeature)
rcFeature
  = lens _rcFeature (\ s a -> s{_rcFeature = a})

-- | The restriction in place after the change.
rcNewRestriction :: Lens' RestrictionChange (Maybe RestrictionChangeNewRestriction)
rcNewRestriction
  = lens _rcNewRestriction
      (\ s a -> s{_rcNewRestriction = a})

instance FromJSON RestrictionChange where
        parseJSON
          = withObject "RestrictionChange"
              (\ o ->
                 RestrictionChange' <$>
                   (o .:? "feature") <*> (o .:? "newRestriction"))

instance ToJSON RestrictionChange where
        toJSON RestrictionChange'{..}
          = object
              (catMaybes
                 [("feature" .=) <$> _rcFeature,
                  ("newRestriction" .=) <$> _rcNewRestriction])

-- | A strategy which consolidates activities using the grouping rules from
-- the legacy V1 Activity API. Similar actions occurring within a window of
-- time can be grouped across multiple targets (such as moving a set of
-- files at once) or multiple actors (such as several users editing the
-- same item). Grouping rules for this strategy are specific to each type
-- of action.
--
-- /See:/ 'legacy' smart constructor.
data Legacy =
  Legacy'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Legacy' with the minimum fields required to make a request.
--
legacy
    :: Legacy
legacy = Legacy'

instance FromJSON Legacy where
        parseJSON = withObject "Legacy" (\ o -> pure Legacy')

instance ToJSON Legacy where
        toJSON = const emptyObject

-- | A comment on a file.
--
-- /See:/ 'fileComment' smart constructor.
data FileComment =
  FileComment'
    { _fcParent             :: !(Maybe DriveItem)
    , _fcLegacyDiscussionId :: !(Maybe Text)
    , _fcLegacyCommentId    :: !(Maybe Text)
    , _fcLinkToDiscussion   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FileComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcParent'
--
-- * 'fcLegacyDiscussionId'
--
-- * 'fcLegacyCommentId'
--
-- * 'fcLinkToDiscussion'
fileComment
    :: FileComment
fileComment =
  FileComment'
    { _fcParent = Nothing
    , _fcLegacyDiscussionId = Nothing
    , _fcLegacyCommentId = Nothing
    , _fcLinkToDiscussion = Nothing
    }

-- | The Drive item containing this comment.
fcParent :: Lens' FileComment (Maybe DriveItem)
fcParent = lens _fcParent (\ s a -> s{_fcParent = a})

-- | The discussion thread to which the comment was added. This identifier is
-- an opaque string compatible with the Drive API and references the first
-- comment in a discussion; see
-- https:\/\/developers.google.com\/drive\/v3\/reference\/comments\/get
fcLegacyDiscussionId :: Lens' FileComment (Maybe Text)
fcLegacyDiscussionId
  = lens _fcLegacyDiscussionId
      (\ s a -> s{_fcLegacyDiscussionId = a})

-- | The comment in the discussion thread. This identifier is an opaque
-- string compatible with the Drive API; see
-- https:\/\/developers.google.com\/drive\/v3\/reference\/comments\/get
fcLegacyCommentId :: Lens' FileComment (Maybe Text)
fcLegacyCommentId
  = lens _fcLegacyCommentId
      (\ s a -> s{_fcLegacyCommentId = a})

-- | The link to the discussion thread containing this comment, for example,
-- \"https:\/\/docs.google.com\/DOCUMENT_ID\/edit?disco=THREAD_ID\".
fcLinkToDiscussion :: Lens' FileComment (Maybe Text)
fcLinkToDiscussion
  = lens _fcLinkToDiscussion
      (\ s a -> s{_fcLinkToDiscussion = a})

instance FromJSON FileComment where
        parseJSON
          = withObject "FileComment"
              (\ o ->
                 FileComment' <$>
                   (o .:? "parent") <*> (o .:? "legacyDiscussionId") <*>
                     (o .:? "legacyCommentId")
                     <*> (o .:? "linkToDiscussion"))

instance ToJSON FileComment where
        toJSON FileComment'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _fcParent,
                  ("legacyDiscussionId" .=) <$> _fcLegacyDiscussionId,
                  ("legacyCommentId" .=) <$> _fcLegacyCommentId,
                  ("linkToDiscussion" .=) <$> _fcLinkToDiscussion])

-- | An object was renamed.
--
-- /See:/ 'rename' smart constructor.
data Rename =
  Rename'
    { _rNewTitle :: !(Maybe Text)
    , _rOldTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Rename' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rNewTitle'
--
-- * 'rOldTitle'
rename
    :: Rename
rename = Rename' {_rNewTitle = Nothing, _rOldTitle = Nothing}

-- | The new title of the drive object.
rNewTitle :: Lens' Rename (Maybe Text)
rNewTitle
  = lens _rNewTitle (\ s a -> s{_rNewTitle = a})

-- | The previous title of the drive object.
rOldTitle :: Lens' Rename (Maybe Text)
rOldTitle
  = lens _rOldTitle (\ s a -> s{_rOldTitle = a})

instance FromJSON Rename where
        parseJSON
          = withObject "Rename"
              (\ o ->
                 Rename' <$>
                   (o .:? "newTitle") <*> (o .:? "oldTitle"))

instance ToJSON Rename where
        toJSON Rename'{..}
          = object
              (catMaybes
                 [("newTitle" .=) <$> _rNewTitle,
                  ("oldTitle" .=) <$> _rOldTitle])

-- | An object was uploaded into Drive.
--
-- /See:/ 'upload' smart constructor.
data Upload =
  Upload'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Upload' with the minimum fields required to make a request.
--
upload
    :: Upload
upload = Upload'

instance FromJSON Upload where
        parseJSON = withObject "Upload" (\ o -> pure Upload')

instance ToJSON Upload where
        toJSON = const emptyObject

-- | A strategy which does no consolidation of individual activities.
--
-- /See:/ 'noConsolidation' smart constructor.
data NoConsolidation =
  NoConsolidation'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NoConsolidation' with the minimum fields required to make a request.
--
noConsolidation
    :: NoConsolidation
noConsolidation = NoConsolidation'

instance FromJSON NoConsolidation where
        parseJSON
          = withObject "NoConsolidation"
              (\ o -> pure NoConsolidation')

instance ToJSON NoConsolidation where
        toJSON = const emptyObject

-- | A comment with an assignment.
--
-- /See:/ 'assignment' smart constructor.
newtype Assignment =
  Assignment'
    { _aSubtype :: Maybe AssignmentSubtype
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Assignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aSubtype'
assignment
    :: Assignment
assignment = Assignment' {_aSubtype = Nothing}

-- | The sub-type of this event.
aSubtype :: Lens' Assignment (Maybe AssignmentSubtype)
aSubtype = lens _aSubtype (\ s a -> s{_aSubtype = a})

instance FromJSON Assignment where
        parseJSON
          = withObject "Assignment"
              (\ o -> Assignment' <$> (o .:? "subtype"))

instance ToJSON Assignment where
        toJSON Assignment'{..}
          = object (catMaybes [("subtype" .=) <$> _aSubtype])

-- | Information about settings changes.
--
-- /See:/ 'settingsChange' smart constructor.
newtype SettingsChange =
  SettingsChange'
    { _scRestrictionChanges :: Maybe [RestrictionChange]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SettingsChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scRestrictionChanges'
settingsChange
    :: SettingsChange
settingsChange = SettingsChange' {_scRestrictionChanges = Nothing}

-- | The set of changes made to restrictions.
scRestrictionChanges :: Lens' SettingsChange [RestrictionChange]
scRestrictionChanges
  = lens _scRestrictionChanges
      (\ s a -> s{_scRestrictionChanges = a})
      . _Default
      . _Coerce

instance FromJSON SettingsChange where
        parseJSON
          = withObject "SettingsChange"
              (\ o ->
                 SettingsChange' <$>
                   (o .:? "restrictionChanges" .!= mempty))

instance ToJSON SettingsChange where
        toJSON SettingsChange'{..}
          = object
              (catMaybes
                 [("restrictionChanges" .=) <$>
                    _scRestrictionChanges])

-- | A change about comments on an object.
--
-- /See:/ 'comment' smart constructor.
data Comment =
  Comment'
    { _cSuggestion     :: !(Maybe Suggestion)
    , _cPost           :: !(Maybe Post')
    , _cMentionedUsers :: !(Maybe [User])
    , _cAssignment     :: !(Maybe Assignment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cSuggestion'
--
-- * 'cPost'
--
-- * 'cMentionedUsers'
--
-- * 'cAssignment'
comment
    :: Comment
comment =
  Comment'
    { _cSuggestion = Nothing
    , _cPost = Nothing
    , _cMentionedUsers = Nothing
    , _cAssignment = Nothing
    }

-- | A change on a suggestion.
cSuggestion :: Lens' Comment (Maybe Suggestion)
cSuggestion
  = lens _cSuggestion (\ s a -> s{_cSuggestion = a})

-- | A change on a regular posted comment.
cPost :: Lens' Comment (Maybe Post')
cPost = lens _cPost (\ s a -> s{_cPost = a})

-- | Users who are mentioned in this comment.
cMentionedUsers :: Lens' Comment [User]
cMentionedUsers
  = lens _cMentionedUsers
      (\ s a -> s{_cMentionedUsers = a})
      . _Default
      . _Coerce

-- | A change on an assignment.
cAssignment :: Lens' Comment (Maybe Assignment)
cAssignment
  = lens _cAssignment (\ s a -> s{_cAssignment = a})

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment' <$>
                   (o .:? "suggestion") <*> (o .:? "post") <*>
                     (o .:? "mentionedUsers" .!= mempty)
                     <*> (o .:? "assignment"))

instance ToJSON Comment where
        toJSON Comment'{..}
          = object
              (catMaybes
                 [("suggestion" .=) <$> _cSuggestion,
                  ("post" .=) <$> _cPost,
                  ("mentionedUsers" .=) <$> _cMentionedUsers,
                  ("assignment" .=) <$> _cAssignment])

-- | The permission setting of an object.
--
-- /See:/ 'permission' smart constructor.
data Permission =
  Permission'
    { _pGroup          :: !(Maybe Group)
    , _pDomain         :: !(Maybe Domain)
    , _pUser           :: !(Maybe User)
    , _pRole           :: !(Maybe PermissionRole)
    , _pAnyone         :: !(Maybe Anyone)
    , _pAllowDiscovery :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pGroup'
--
-- * 'pDomain'
--
-- * 'pUser'
--
-- * 'pRole'
--
-- * 'pAnyone'
--
-- * 'pAllowDiscovery'
permission
    :: Permission
permission =
  Permission'
    { _pGroup = Nothing
    , _pDomain = Nothing
    , _pUser = Nothing
    , _pRole = Nothing
    , _pAnyone = Nothing
    , _pAllowDiscovery = Nothing
    }

-- | The group to whom this permission applies.
pGroup :: Lens' Permission (Maybe Group)
pGroup = lens _pGroup (\ s a -> s{_pGroup = a})

-- | The domain to whom this permission applies.
pDomain :: Lens' Permission (Maybe Domain)
pDomain = lens _pDomain (\ s a -> s{_pDomain = a})

-- | The user to whom this permission applies.
pUser :: Lens' Permission (Maybe User)
pUser = lens _pUser (\ s a -> s{_pUser = a})

-- | Indicates the
-- </drive/web/manage-sharing#roles Google Drive permissions role>. The
-- role determines a user\'s ability to read, write, and comment on items.
pRole :: Lens' Permission (Maybe PermissionRole)
pRole = lens _pRole (\ s a -> s{_pRole = a})

-- | If set, this permission applies to anyone, even logged out users.
pAnyone :: Lens' Permission (Maybe Anyone)
pAnyone = lens _pAnyone (\ s a -> s{_pAnyone = a})

-- | If true, the item can be discovered (e.g. in the user\'s \"Shared with
-- me\" collection) without needing a link to the item.
pAllowDiscovery :: Lens' Permission (Maybe Bool)
pAllowDiscovery
  = lens _pAllowDiscovery
      (\ s a -> s{_pAllowDiscovery = a})

instance FromJSON Permission where
        parseJSON
          = withObject "Permission"
              (\ o ->
                 Permission' <$>
                   (o .:? "group") <*> (o .:? "domain") <*>
                     (o .:? "user")
                     <*> (o .:? "role")
                     <*> (o .:? "anyone")
                     <*> (o .:? "allowDiscovery"))

instance ToJSON Permission where
        toJSON Permission'{..}
          = object
              (catMaybes
                 [("group" .=) <$> _pGroup,
                  ("domain" .=) <$> _pDomain, ("user" .=) <$> _pUser,
                  ("role" .=) <$> _pRole, ("anyone" .=) <$> _pAnyone,
                  ("allowDiscovery" .=) <$> _pAllowDiscovery])

-- | A Drive item which is a file.
--
-- /See:/ 'file' smart constructor.
data File =
  File'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
--
file
    :: File
file = File'

instance FromJSON File where
        parseJSON = withObject "File" (\ o -> pure File')

instance ToJSON File where
        toJSON = const emptyObject

-- | An object was deleted.
--
-- /See:/ 'delete'' smart constructor.
newtype Delete' =
  Delete''
    { _dType :: Maybe DeleteType
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Delete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dType'
delete'
    :: Delete'
delete' = Delete'' {_dType = Nothing}

-- | The type of delete action taken.
dType :: Lens' Delete' (Maybe DeleteType)
dType = lens _dType (\ s a -> s{_dType = a})

instance FromJSON Delete' where
        parseJSON
          = withObject "Delete"
              (\ o -> Delete'' <$> (o .:? "type"))

instance ToJSON Delete' where
        toJSON Delete''{..}
          = object (catMaybes [("type" .=) <$> _dType])

-- | Information about the target of activity.
--
-- /See:/ 'target' smart constructor.
data Target =
  Target'
    { _tTeamDrive   :: !(Maybe TeamDrive)
    , _tFileComment :: !(Maybe FileComment)
    , _tDriveItem   :: !(Maybe DriveItem)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Target' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTeamDrive'
--
-- * 'tFileComment'
--
-- * 'tDriveItem'
target
    :: Target
target =
  Target'
    {_tTeamDrive = Nothing, _tFileComment = Nothing, _tDriveItem = Nothing}

-- | The target is a Team Drive.
tTeamDrive :: Lens' Target (Maybe TeamDrive)
tTeamDrive
  = lens _tTeamDrive (\ s a -> s{_tTeamDrive = a})

-- | The target is a comment on a Drive file.
tFileComment :: Lens' Target (Maybe FileComment)
tFileComment
  = lens _tFileComment (\ s a -> s{_tFileComment = a})

-- | The target is a Drive item.
tDriveItem :: Lens' Target (Maybe DriveItem)
tDriveItem
  = lens _tDriveItem (\ s a -> s{_tDriveItem = a})

instance FromJSON Target where
        parseJSON
          = withObject "Target"
              (\ o ->
                 Target' <$>
                   (o .:? "teamDrive") <*> (o .:? "fileComment") <*>
                     (o .:? "driveItem"))

instance ToJSON Target where
        toJSON Target'{..}
          = object
              (catMaybes
                 [("teamDrive" .=) <$> _tTeamDrive,
                  ("fileComment" .=) <$> _tFileComment,
                  ("driveItem" .=) <$> _tDriveItem])

-- | An object was moved.
--
-- /See:/ 'move' smart constructor.
data Move =
  Move'
    { _mAddedParents   :: !(Maybe [TargetReference])
    , _mRemovedParents :: !(Maybe [TargetReference])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Move' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mAddedParents'
--
-- * 'mRemovedParents'
move
    :: Move
move = Move' {_mAddedParents = Nothing, _mRemovedParents = Nothing}

-- | The added parent object(s).
mAddedParents :: Lens' Move [TargetReference]
mAddedParents
  = lens _mAddedParents
      (\ s a -> s{_mAddedParents = a})
      . _Default
      . _Coerce

-- | The removed parent object(s).
mRemovedParents :: Lens' Move [TargetReference]
mRemovedParents
  = lens _mRemovedParents
      (\ s a -> s{_mRemovedParents = a})
      . _Default
      . _Coerce

instance FromJSON Move where
        parseJSON
          = withObject "Move"
              (\ o ->
                 Move' <$>
                   (o .:? "addedParents" .!= mempty) <*>
                     (o .:? "removedParents" .!= mempty))

instance ToJSON Move where
        toJSON Move'{..}
          = object
              (catMaybes
                 [("addedParents" .=) <$> _mAddedParents,
                  ("removedParents" .=) <$> _mRemovedParents])

-- | A single Drive activity comprising one or more Actions by one or more
-- Actors on one or more Targets. Some Action groupings occur
-- spontaneously, such as moving an item into a shared folder triggering a
-- permission change. Other groupings of related Actions, such as multiple
-- Actors editing one item or moving multiple files into a new folder, are
-- controlled by the selection of a ConsolidationStrategy in the
-- QueryDriveActivityRequest.
--
-- /See:/ 'driveActivity' smart constructor.
data DriveActivity =
  DriveActivity'
    { _daTimeRange           :: !(Maybe TimeRange)
    , _daActions             :: !(Maybe [Action])
    , _daActors              :: !(Maybe [Actor])
    , _daTargets             :: !(Maybe [Target])
    , _daPrimaryActionDetail :: !(Maybe ActionDetail)
    , _daTimestamp           :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DriveActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daTimeRange'
--
-- * 'daActions'
--
-- * 'daActors'
--
-- * 'daTargets'
--
-- * 'daPrimaryActionDetail'
--
-- * 'daTimestamp'
driveActivity
    :: DriveActivity
driveActivity =
  DriveActivity'
    { _daTimeRange = Nothing
    , _daActions = Nothing
    , _daActors = Nothing
    , _daTargets = Nothing
    , _daPrimaryActionDetail = Nothing
    , _daTimestamp = Nothing
    }

-- | The activity occurred over this time range.
daTimeRange :: Lens' DriveActivity (Maybe TimeRange)
daTimeRange
  = lens _daTimeRange (\ s a -> s{_daTimeRange = a})

-- | Details on all actions in this activity.
daActions :: Lens' DriveActivity [Action]
daActions
  = lens _daActions (\ s a -> s{_daActions = a}) .
      _Default
      . _Coerce

-- | All actor(s) responsible for the activity.
daActors :: Lens' DriveActivity [Actor]
daActors
  = lens _daActors (\ s a -> s{_daActors = a}) .
      _Default
      . _Coerce

-- | All Drive objects this activity is about (e.g. file, folder, Team
-- Drive). This represents the state of the target immediately after the
-- actions occurred.
daTargets :: Lens' DriveActivity [Target]
daTargets
  = lens _daTargets (\ s a -> s{_daTargets = a}) .
      _Default
      . _Coerce

-- | Key information about the primary action for this activity. This is
-- either representative, or the most important, of all actions in the
-- activity, according to the ConsolidationStrategy in the request.
daPrimaryActionDetail :: Lens' DriveActivity (Maybe ActionDetail)
daPrimaryActionDetail
  = lens _daPrimaryActionDetail
      (\ s a -> s{_daPrimaryActionDetail = a})

-- | The activity occurred at this specific time.
daTimestamp :: Lens' DriveActivity (Maybe UTCTime)
daTimestamp
  = lens _daTimestamp (\ s a -> s{_daTimestamp = a}) .
      mapping _DateTime

instance FromJSON DriveActivity where
        parseJSON
          = withObject "DriveActivity"
              (\ o ->
                 DriveActivity' <$>
                   (o .:? "timeRange") <*> (o .:? "actions" .!= mempty)
                     <*> (o .:? "actors" .!= mempty)
                     <*> (o .:? "targets" .!= mempty)
                     <*> (o .:? "primaryActionDetail")
                     <*> (o .:? "timestamp"))

instance ToJSON DriveActivity where
        toJSON DriveActivity'{..}
          = object
              (catMaybes
                 [("timeRange" .=) <$> _daTimeRange,
                  ("actions" .=) <$> _daActions,
                  ("actors" .=) <$> _daActors,
                  ("targets" .=) <$> _daTargets,
                  ("primaryActionDetail" .=) <$>
                    _daPrimaryActionDetail,
                  ("timestamp" .=) <$> _daTimestamp])

-- | A Drive item, such as a file or folder.
--
-- /See:/ 'driveItem' smart constructor.
data DriveItem =
  DriveItem'
    { _diFolder   :: !(Maybe Folder)
    , _diOwner    :: !(Maybe Owner)
    , _diMimeType :: !(Maybe Text)
    , _diName     :: !(Maybe Text)
    , _diTitle    :: !(Maybe Text)
    , _diFile     :: !(Maybe File)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DriveItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diFolder'
--
-- * 'diOwner'
--
-- * 'diMimeType'
--
-- * 'diName'
--
-- * 'diTitle'
--
-- * 'diFile'
driveItem
    :: DriveItem
driveItem =
  DriveItem'
    { _diFolder = Nothing
    , _diOwner = Nothing
    , _diMimeType = Nothing
    , _diName = Nothing
    , _diTitle = Nothing
    , _diFile = Nothing
    }

-- | The Drive item is a folder.
diFolder :: Lens' DriveItem (Maybe Folder)
diFolder = lens _diFolder (\ s a -> s{_diFolder = a})

-- | Information about the owner of this Drive item.
diOwner :: Lens' DriveItem (Maybe Owner)
diOwner = lens _diOwner (\ s a -> s{_diOwner = a})

-- | The MIME type of the Drive item. See
-- https:\/\/developers.google.com\/drive\/v3\/web\/mime-types.
diMimeType :: Lens' DriveItem (Maybe Text)
diMimeType
  = lens _diMimeType (\ s a -> s{_diMimeType = a})

-- | The target Drive item. The format is \"items\/ITEM_ID\".
diName :: Lens' DriveItem (Maybe Text)
diName = lens _diName (\ s a -> s{_diName = a})

-- | The title of the Drive item.
diTitle :: Lens' DriveItem (Maybe Text)
diTitle = lens _diTitle (\ s a -> s{_diTitle = a})

-- | The Drive item is a file.
diFile :: Lens' DriveItem (Maybe File)
diFile = lens _diFile (\ s a -> s{_diFile = a})

instance FromJSON DriveItem where
        parseJSON
          = withObject "DriveItem"
              (\ o ->
                 DriveItem' <$>
                   (o .:? "folder") <*> (o .:? "owner") <*>
                     (o .:? "mimeType")
                     <*> (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "file"))

instance ToJSON DriveItem where
        toJSON DriveItem'{..}
          = object
              (catMaybes
                 [("folder" .=) <$> _diFolder,
                  ("owner" .=) <$> _diOwner,
                  ("mimeType" .=) <$> _diMimeType,
                  ("name" .=) <$> _diName, ("title" .=) <$> _diTitle,
                  ("file" .=) <$> _diFile])

-- | Event triggered by system operations instead of end users.
--
-- /See:/ 'systemEvent' smart constructor.
newtype SystemEvent =
  SystemEvent'
    { _seType :: Maybe SystemEventType
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SystemEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seType'
systemEvent
    :: SystemEvent
systemEvent = SystemEvent' {_seType = Nothing}

-- | The type of the system event that may triggered activity.
seType :: Lens' SystemEvent (Maybe SystemEventType)
seType = lens _seType (\ s a -> s{_seType = a})

instance FromJSON SystemEvent where
        parseJSON
          = withObject "SystemEvent"
              (\ o -> SystemEvent' <$> (o .:? "type"))

instance ToJSON SystemEvent where
        toJSON SystemEvent'{..}
          = object (catMaybes [("type" .=) <$> _seType])
