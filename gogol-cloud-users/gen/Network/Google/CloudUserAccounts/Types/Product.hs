{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudUserAccounts.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudUserAccounts.Types.Product where

import           Network.Google.CloudUserAccounts.Types.Sum
import           Network.Google.Prelude

-- | A list of authorized public keys for a user account.
--
-- /See:/ 'authorizedKeysView' smart constructor.
data AuthorizedKeysView = AuthorizedKeysView
    { _akvSudoer :: !(Maybe Bool)
    , _akvKeys   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuthorizedKeysView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'akvSudoer'
--
-- * 'akvKeys'
authorizedKeysView
    :: AuthorizedKeysView
authorizedKeysView =
    AuthorizedKeysView
    { _akvSudoer = Nothing
    , _akvKeys = Nothing
    }

-- | [Output Only] Whether the user has the ability to elevate on the
-- instance that requested the authorized keys.
akvSudoer :: Lens' AuthorizedKeysView (Maybe Bool)
akvSudoer
  = lens _akvSudoer (\ s a -> s{_akvSudoer = a})

-- | [Output Only] The list of authorized public keys in SSH format.
akvKeys :: Lens' AuthorizedKeysView [Text]
akvKeys
  = lens _akvKeys (\ s a -> s{_akvKeys = a}) . _Default
      . _Coerce

-- | A Group resource.
--
-- /See:/ 'group'' smart constructor.
data Group = Group
    { _gKind              :: !Text
    , _gMembers           :: !(Maybe [Text])
    , _gSelfLink          :: !(Maybe Text)
    , _gName              :: !(Maybe Text)
    , _gCreationTimestamp :: !(Maybe Text)
    , _gId                :: !(Maybe Word64)
    , _gDescription       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gKind'
--
-- * 'gMembers'
--
-- * 'gSelfLink'
--
-- * 'gName'
--
-- * 'gCreationTimestamp'
--
-- * 'gId'
--
-- * 'gDescription'
group'
    :: Group
group' =
    Group
    { _gKind = "clouduseraccounts#group"
    , _gMembers = Nothing
    , _gSelfLink = Nothing
    , _gName = Nothing
    , _gCreationTimestamp = Nothing
    , _gId = Nothing
    , _gDescription = Nothing
    }

-- | [Output Only] Type of the resource. Always clouduseraccounts#group for
-- groups.
gKind :: Lens' Group Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | [Output Only] A list of URLs to User resources who belong to the group.
-- Users may only be members of groups in the same project.
gMembers :: Lens' Group [Text]
gMembers
  = lens _gMembers (\ s a -> s{_gMembers = a}) .
      _Default
      . _Coerce

-- | [Output Only] Server defined URL for the resource.
gSelfLink :: Lens' Group (Maybe Text)
gSelfLink
  = lens _gSelfLink (\ s a -> s{_gSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created.
gName :: Lens' Group (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
gCreationTimestamp :: Lens' Group (Maybe Text)
gCreationTimestamp
  = lens _gCreationTimestamp
      (\ s a -> s{_gCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
gId :: Lens' Group (Maybe Word64)
gId = lens _gId (\ s a -> s{_gId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
gDescription :: Lens' Group (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

--
-- /See:/ 'groupList' smart constructor.
data GroupList = GroupList
    { _glNextPageToken :: !(Maybe Text)
    , _glKind          :: !Text
    , _glItems         :: !(Maybe [Maybe Group])
    , _glSelfLink      :: !(Maybe Text)
    , _glId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glNextPageToken'
--
-- * 'glKind'
--
-- * 'glItems'
--
-- * 'glSelfLink'
--
-- * 'glId'
groupList
    :: GroupList
groupList =
    GroupList
    { _glNextPageToken = Nothing
    , _glKind = "clouduseraccounts#groupList"
    , _glItems = Nothing
    , _glSelfLink = Nothing
    , _glId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
glNextPageToken :: Lens' GroupList (Maybe Text)
glNextPageToken
  = lens _glNextPageToken
      (\ s a -> s{_glNextPageToken = a})

-- | [Output Only] Type of resource. Always clouduseraccounts#groupList for
-- lists of groups.
glKind :: Lens' GroupList Text
glKind = lens _glKind (\ s a -> s{_glKind = a})

-- | [Output Only] A list of Group resources.
glItems :: Lens' GroupList [Maybe Group]
glItems
  = lens _glItems (\ s a -> s{_glItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server defined URL for this resource.
glSelfLink :: Lens' GroupList (Maybe Text)
glSelfLink
  = lens _glSelfLink (\ s a -> s{_glSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
glId :: Lens' GroupList (Maybe Text)
glId = lens _glId (\ s a -> s{_glId = a})

--
-- /See:/ 'groupsAddMemberRequest' smart constructor.
newtype GroupsAddMemberRequest = GroupsAddMemberRequest
    { _gamrUsers :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsAddMemberRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gamrUsers'
groupsAddMemberRequest
    :: GroupsAddMemberRequest
groupsAddMemberRequest =
    GroupsAddMemberRequest
    { _gamrUsers = Nothing
    }

-- | Fully-qualified URLs of the User resources to add.
gamrUsers :: Lens' GroupsAddMemberRequest [Text]
gamrUsers
  = lens _gamrUsers (\ s a -> s{_gamrUsers = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'groupsRemoveMemberRequest' smart constructor.
newtype GroupsRemoveMemberRequest = GroupsRemoveMemberRequest
    { _grmrUsers :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsRemoveMemberRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grmrUsers'
groupsRemoveMemberRequest
    :: GroupsRemoveMemberRequest
groupsRemoveMemberRequest =
    GroupsRemoveMemberRequest
    { _grmrUsers = Nothing
    }

-- | Fully-qualified URLs of the User resources to remove.
grmrUsers :: Lens' GroupsRemoveMemberRequest [Text]
grmrUsers
  = lens _grmrUsers (\ s a -> s{_grmrUsers = a}) .
      _Default
      . _Coerce

-- | A list of all Linux accounts for this project. This API is only used by
-- Compute Engine virtual machines to get information about user accounts
-- for a project or instance. Linux resources are read-only views into
-- users and groups managed by the Compute Engine Accounts API.
--
-- /See:/ 'linuxAccountViews' smart constructor.
data LinuxAccountViews = LinuxAccountViews
    { _lavUserViews  :: !(Maybe [Maybe LinuxUserView])
    , _lavKind       :: !Text
    , _lavGroupViews :: !(Maybe [Maybe LinuxGroupView])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxAccountViews' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lavUserViews'
--
-- * 'lavKind'
--
-- * 'lavGroupViews'
linuxAccountViews
    :: LinuxAccountViews
linuxAccountViews =
    LinuxAccountViews
    { _lavUserViews = Nothing
    , _lavKind = "clouduseraccounts#linuxAccountViews"
    , _lavGroupViews = Nothing
    }

-- | [Output Only] A list of all users within a project.
lavUserViews :: Lens' LinuxAccountViews [Maybe LinuxUserView]
lavUserViews
  = lens _lavUserViews (\ s a -> s{_lavUserViews = a})
      . _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always
-- clouduseraccounts#linuxAccountViews for Linux resources.
lavKind :: Lens' LinuxAccountViews Text
lavKind = lens _lavKind (\ s a -> s{_lavKind = a})

-- | [Output Only] A list of all groups within a project.
lavGroupViews :: Lens' LinuxAccountViews [Maybe LinuxGroupView]
lavGroupViews
  = lens _lavGroupViews
      (\ s a -> s{_lavGroupViews = a})
      . _Default
      . _Coerce

--
-- /See:/ 'linuxGetAuthorizedKeysViewResponse' smart constructor.
newtype LinuxGetAuthorizedKeysViewResponse = LinuxGetAuthorizedKeysViewResponse
    { _lgakvrResource :: Maybe (Maybe AuthorizedKeysView)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxGetAuthorizedKeysViewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgakvrResource'
linuxGetAuthorizedKeysViewResponse
    :: LinuxGetAuthorizedKeysViewResponse
linuxGetAuthorizedKeysViewResponse =
    LinuxGetAuthorizedKeysViewResponse
    { _lgakvrResource = Nothing
    }

-- | [Output Only] A list of authorized public keys for a user.
lgakvrResource :: Lens' LinuxGetAuthorizedKeysViewResponse (Maybe (Maybe AuthorizedKeysView))
lgakvrResource
  = lens _lgakvrResource
      (\ s a -> s{_lgakvrResource = a})

--
-- /See:/ 'linuxGetLinuxAccountViewsResponse' smart constructor.
newtype LinuxGetLinuxAccountViewsResponse = LinuxGetLinuxAccountViewsResponse
    { _lglavrResource :: Maybe (Maybe LinuxAccountViews)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxGetLinuxAccountViewsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lglavrResource'
linuxGetLinuxAccountViewsResponse
    :: LinuxGetLinuxAccountViewsResponse
linuxGetLinuxAccountViewsResponse =
    LinuxGetLinuxAccountViewsResponse
    { _lglavrResource = Nothing
    }

-- | [Output Only] A list of authorized user accounts and groups.
lglavrResource :: Lens' LinuxGetLinuxAccountViewsResponse (Maybe (Maybe LinuxAccountViews))
lglavrResource
  = lens _lglavrResource
      (\ s a -> s{_lglavrResource = a})

-- | A detailed view of a Linux group.
--
-- /See:/ 'linuxGroupView' smart constructor.
data LinuxGroupView = LinuxGroupView
    { _lgvMembers   :: !(Maybe [Text])
    , _lgvGid       :: !(Maybe Word32)
    , _lgvGroupName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxGroupView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgvMembers'
--
-- * 'lgvGid'
--
-- * 'lgvGroupName'
linuxGroupView
    :: LinuxGroupView
linuxGroupView =
    LinuxGroupView
    { _lgvMembers = Nothing
    , _lgvGid = Nothing
    , _lgvGroupName = Nothing
    }

-- | [Output Only] List of user accounts that belong to the group.
lgvMembers :: Lens' LinuxGroupView [Text]
lgvMembers
  = lens _lgvMembers (\ s a -> s{_lgvMembers = a}) .
      _Default
      . _Coerce

-- | [Output Only] The Group ID.
lgvGid :: Lens' LinuxGroupView (Maybe Word32)
lgvGid = lens _lgvGid (\ s a -> s{_lgvGid = a})

-- | [Output Only] Group name.
lgvGroupName :: Lens' LinuxGroupView (Maybe Text)
lgvGroupName
  = lens _lgvGroupName (\ s a -> s{_lgvGroupName = a})

-- | A detailed view of a Linux user account.
--
-- /See:/ 'linuxUserView' smart constructor.
data LinuxUserView = LinuxUserView
    { _luvGecos         :: !(Maybe Text)
    , _luvUid           :: !(Maybe Word32)
    , _luvUsername      :: !(Maybe Text)
    , _luvShell         :: !(Maybe Text)
    , _luvGid           :: !(Maybe Word32)
    , _luvHomeDirectory :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxUserView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luvGecos'
--
-- * 'luvUid'
--
-- * 'luvUsername'
--
-- * 'luvShell'
--
-- * 'luvGid'
--
-- * 'luvHomeDirectory'
linuxUserView
    :: LinuxUserView
linuxUserView =
    LinuxUserView
    { _luvGecos = Nothing
    , _luvUid = Nothing
    , _luvUsername = Nothing
    , _luvShell = Nothing
    , _luvGid = Nothing
    , _luvHomeDirectory = Nothing
    }

-- | [Output Only] The GECOS (user information) entry for this account.
luvGecos :: Lens' LinuxUserView (Maybe Text)
luvGecos = lens _luvGecos (\ s a -> s{_luvGecos = a})

-- | [Output Only] User ID.
luvUid :: Lens' LinuxUserView (Maybe Word32)
luvUid = lens _luvUid (\ s a -> s{_luvUid = a})

-- | [Output Only] The username of the account.
luvUsername :: Lens' LinuxUserView (Maybe Text)
luvUsername
  = lens _luvUsername (\ s a -> s{_luvUsername = a})

-- | [Output Only] The path to the login shell for this account.
luvShell :: Lens' LinuxUserView (Maybe Text)
luvShell = lens _luvShell (\ s a -> s{_luvShell = a})

-- | [Output Only] User\'s default group ID.
luvGid :: Lens' LinuxUserView (Maybe Word32)
luvGid = lens _luvGid (\ s a -> s{_luvGid = a})

-- | [Output Only] The path to the home directory for this account.
luvHomeDirectory :: Lens' LinuxUserView (Maybe Text)
luvHomeDirectory
  = lens _luvHomeDirectory
      (\ s a -> s{_luvHomeDirectory = a})

-- | An Operation resource, used to manage asynchronous API requests.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oTargetId            :: !(Maybe Word64)
    , _oStatus              :: !(Maybe OperationStatus)
    , _oInsertTime          :: !(Maybe Text)
    , _oProgress            :: !(Maybe Int32)
    , _oStartTime           :: !(Maybe Text)
    , _oKind                :: !Text
    , _oError               :: !(Maybe OperationError)
    , _oHttpErrorMessage    :: !(Maybe Text)
    , _oZone                :: !(Maybe Text)
    , _oWarnings            :: !(Maybe [OperationItemWarnings])
    , _oHttpErrorStatusCode :: !(Maybe Int32)
    , _oUser                :: !(Maybe Text)
    , _oSelfLink            :: !(Maybe Text)
    , _oName                :: !(Maybe Text)
    , _oStatusMessage       :: !(Maybe Text)
    , _oCreationTimestamp   :: !(Maybe Text)
    , _oEndTime             :: !(Maybe Text)
    , _oId                  :: !(Maybe Word64)
    , _oOperationType       :: !(Maybe Text)
    , _oRegion              :: !(Maybe Text)
    , _oTargetLink          :: !(Maybe Text)
    , _oClientOperationId   :: !(Maybe Text)
    }

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oTargetId'
--
-- * 'oStatus'
--
-- * 'oInsertTime'
--
-- * 'oProgress'
--
-- * 'oStartTime'
--
-- * 'oKind'
--
-- * 'oError'
--
-- * 'oHttpErrorMessage'
--
-- * 'oZone'
--
-- * 'oWarnings'
--
-- * 'oHttpErrorStatusCode'
--
-- * 'oUser'
--
-- * 'oSelfLink'
--
-- * 'oName'
--
-- * 'oStatusMessage'
--
-- * 'oCreationTimestamp'
--
-- * 'oEndTime'
--
-- * 'oId'
--
-- * 'oOperationType'
--
-- * 'oRegion'
--
-- * 'oTargetLink'
--
-- * 'oClientOperationId'
operation
    :: Operation
operation =
    Operation
    { _oTargetId = Nothing
    , _oStatus = Nothing
    , _oInsertTime = Nothing
    , _oProgress = Nothing
    , _oStartTime = Nothing
    , _oKind = "clouduseraccounts#operation"
    , _oError = Nothing
    , _oHttpErrorMessage = Nothing
    , _oZone = Nothing
    , _oWarnings = Nothing
    , _oHttpErrorStatusCode = Nothing
    , _oUser = Nothing
    , _oSelfLink = Nothing
    , _oName = Nothing
    , _oStatusMessage = Nothing
    , _oCreationTimestamp = Nothing
    , _oEndTime = Nothing
    , _oId = Nothing
    , _oOperationType = Nothing
    , _oRegion = Nothing
    , _oTargetLink = Nothing
    , _oClientOperationId = Nothing
    }

-- | [Output Only] Unique target ID which identifies a particular incarnation
-- of the target.
oTargetId :: Lens' Operation (Maybe Word64)
oTargetId
  = lens _oTargetId (\ s a -> s{_oTargetId = a})

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | [Output Only] The time that this operation was requested. This is in
-- RFC3339 text format.
oInsertTime :: Lens' Operation (Maybe Text)
oInsertTime
  = lens _oInsertTime (\ s a -> s{_oInsertTime = a})

-- | [Output Only] An optional progress indicator that ranges from 0 to 100.
-- There is no requirement that this be linear or support any granularity
-- of operations. This should not be used to guess at when the operation
-- will be complete. This number should monotonically increase as the
-- operation progresses.
oProgress :: Lens' Operation (Maybe Int32)
oProgress
  = lens _oProgress (\ s a -> s{_oProgress = a})

-- | [Output Only] The time that this operation was started by the server.
-- This is in RFC3339 text format.
oStartTime :: Lens' Operation (Maybe Text)
oStartTime
  = lens _oStartTime (\ s a -> s{_oStartTime = a})

-- | [Output Only] Type of the resource. Always compute#operation for
-- Operation resources.
oKind :: Lens' Operation Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
oError :: Lens' Operation (Maybe OperationError)
oError = lens _oError (\ s a -> s{_oError = a})

-- | [Output Only] If the operation fails, this field contains the HTTP error
-- message that was returned, such as NOT FOUND.
oHttpErrorMessage :: Lens' Operation (Maybe Text)
oHttpErrorMessage
  = lens _oHttpErrorMessage
      (\ s a -> s{_oHttpErrorMessage = a})

-- | [Output Only] URL of the zone where the operation resides.
oZone :: Lens' Operation (Maybe Text)
oZone = lens _oZone (\ s a -> s{_oZone = a})

-- | [Output Only] If warning messages are generated during processing of the
-- operation, this field will be populated.
oWarnings :: Lens' Operation [OperationItemWarnings]
oWarnings
  = lens _oWarnings (\ s a -> s{_oWarnings = a}) .
      _Default
      . _Coerce

-- | [Output Only] If the operation fails, this field contains the HTTP error
-- message that was returned, such as 404.
oHttpErrorStatusCode :: Lens' Operation (Maybe Int32)
oHttpErrorStatusCode
  = lens _oHttpErrorStatusCode
      (\ s a -> s{_oHttpErrorStatusCode = a})

-- | [Output Only] User who requested the operation, for example:
-- user\'example.com.
oUser :: Lens' Operation (Maybe Text)
oUser = lens _oUser (\ s a -> s{_oUser = a})

-- | [Output Only] Server-defined URL for the resource.
oSelfLink :: Lens' Operation (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | [Output Only] Name of the resource.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | [Output Only] An optional textual description of the current status of
-- the operation.
oStatusMessage :: Lens' Operation (Maybe Text)
oStatusMessage
  = lens _oStatusMessage
      (\ s a -> s{_oStatusMessage = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
oCreationTimestamp :: Lens' Operation (Maybe Text)
oCreationTimestamp
  = lens _oCreationTimestamp
      (\ s a -> s{_oCreationTimestamp = a})

-- | [Output Only] The time that this operation was completed. This is in
-- RFC3339 text format.
oEndTime :: Lens' Operation (Maybe Text)
oEndTime = lens _oEndTime (\ s a -> s{_oEndTime = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
oId :: Lens' Operation (Maybe Word64)
oId = lens _oId (\ s a -> s{_oId = a})

-- | [Output Only] Type of the operation, such as insert,
-- compute.instanceGroups.update, or compute.instanceGroups.delete.
oOperationType :: Lens' Operation (Maybe Text)
oOperationType
  = lens _oOperationType
      (\ s a -> s{_oOperationType = a})

-- | [Output Only] URL of the region where the operation resides. Only
-- applicable for regional resources.
oRegion :: Lens' Operation (Maybe Text)
oRegion = lens _oRegion (\ s a -> s{_oRegion = a})

-- | [Output Only] URL of the resource the operation is mutating.
oTargetLink :: Lens' Operation (Maybe Text)
oTargetLink
  = lens _oTargetLink (\ s a -> s{_oTargetLink = a})

-- | [Output Only] An optional identifier specified by the client when the
-- mutation was initiated. Must be unique for all Operation resources in
-- the project.
oClientOperationId :: Lens' Operation (Maybe Text)
oClientOperationId
  = lens _oClientOperationId
      (\ s a -> s{_oClientOperationId = a})

-- | [Output Only] If errors are generated during processing of the
-- operation, this field will be populated.
--
-- /See:/ 'operationError' smart constructor.
newtype OperationError = OperationError
    { _oeErrors :: Maybe [OperationItemErrorsError]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeErrors'
operationError
    :: OperationError
operationError =
    OperationError
    { _oeErrors = Nothing
    }

-- | [Output Only] The array of errors encountered while processing this
-- operation.
oeErrors :: Lens' OperationError [OperationItemErrorsError]
oeErrors
  = lens _oeErrors (\ s a -> s{_oeErrors = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'operationItemDataItemWarnings' smart constructor.
data OperationItemDataItemWarnings = OperationItemDataItemWarnings
    { _oidiwValue :: !(Maybe Text)
    , _oidiwKey   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationItemDataItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oidiwValue'
--
-- * 'oidiwKey'
operationItemDataItemWarnings
    :: OperationItemDataItemWarnings
operationItemDataItemWarnings =
    OperationItemDataItemWarnings
    { _oidiwValue = Nothing
    , _oidiwKey = Nothing
    }

-- | [Output Only] A warning data value corresponding to the key.
oidiwValue :: Lens' OperationItemDataItemWarnings (Maybe Text)
oidiwValue
  = lens _oidiwValue (\ s a -> s{_oidiwValue = a})

-- | [Output Only] A key for the warning data.
oidiwKey :: Lens' OperationItemDataItemWarnings (Maybe Text)
oidiwKey = lens _oidiwKey (\ s a -> s{_oidiwKey = a})

--
-- /See:/ 'operationItemErrorsError' smart constructor.
data OperationItemErrorsError = OperationItemErrorsError
    { _oieeLocation :: !(Maybe Text)
    , _oieeCode     :: !(Maybe Text)
    , _oieeMessage  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationItemErrorsError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oieeLocation'
--
-- * 'oieeCode'
--
-- * 'oieeMessage'
operationItemErrorsError
    :: OperationItemErrorsError
operationItemErrorsError =
    OperationItemErrorsError
    { _oieeLocation = Nothing
    , _oieeCode = Nothing
    , _oieeMessage = Nothing
    }

-- | [Output Only] Indicates the field in the request which caused the error.
-- This property is optional.
oieeLocation :: Lens' OperationItemErrorsError (Maybe Text)
oieeLocation
  = lens _oieeLocation (\ s a -> s{_oieeLocation = a})

-- | [Output Only] The error type identifier for this error.
oieeCode :: Lens' OperationItemErrorsError (Maybe Text)
oieeCode = lens _oieeCode (\ s a -> s{_oieeCode = a})

-- | [Output Only] An optional, human-readable error message.
oieeMessage :: Lens' OperationItemErrorsError (Maybe Text)
oieeMessage
  = lens _oieeMessage (\ s a -> s{_oieeMessage = a})

--
-- /See:/ 'operationItemWarnings' smart constructor.
data OperationItemWarnings = OperationItemWarnings
    { _oiwData    :: !(Maybe [OperationItemDataItemWarnings])
    , _oiwCode    :: !(Maybe OperationCodeItemWarnings)
    , _oiwMessage :: !(Maybe Text)
    }

-- | Creates a value of 'OperationItemWarnings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiwData'
--
-- * 'oiwCode'
--
-- * 'oiwMessage'
operationItemWarnings
    :: OperationItemWarnings
operationItemWarnings =
    OperationItemWarnings
    { _oiwData = Nothing
    , _oiwCode = Nothing
    , _oiwMessage = Nothing
    }

-- | [Output Only] Metadata for this warning in key: value format.
oiwData :: Lens' OperationItemWarnings [OperationItemDataItemWarnings]
oiwData
  = lens _oiwData (\ s a -> s{_oiwData = a}) . _Default
      . _Coerce

-- | [Output Only] The warning type identifier for this warning.
oiwCode :: Lens' OperationItemWarnings (Maybe OperationCodeItemWarnings)
oiwCode = lens _oiwCode (\ s a -> s{_oiwCode = a})

-- | [Output Only] Optional human-readable details for this warning.
oiwMessage :: Lens' OperationItemWarnings (Maybe Text)
oiwMessage
  = lens _oiwMessage (\ s a -> s{_oiwMessage = a})

-- | Contains a list of Operation resources.
--
-- /See:/ 'operationList' smart constructor.
data OperationList = OperationList
    { _olNextPageToken :: !(Maybe Text)
    , _olKind          :: !Text
    , _olItems         :: !(Maybe [Maybe Operation])
    , _olSelfLink      :: !(Maybe Text)
    , _olId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olNextPageToken'
--
-- * 'olKind'
--
-- * 'olItems'
--
-- * 'olSelfLink'
--
-- * 'olId'
operationList
    :: OperationList
operationList =
    OperationList
    { _olNextPageToken = Nothing
    , _olKind = "clouduseraccounts#operationList"
    , _olItems = Nothing
    , _olSelfLink = Nothing
    , _olId = Nothing
    }

-- | [Output Only] A token used to continue a truncate.
olNextPageToken :: Lens' OperationList (Maybe Text)
olNextPageToken
  = lens _olNextPageToken
      (\ s a -> s{_olNextPageToken = a})

-- | [Output Only] Type of resource. Always compute#operations for Operations
-- resource.
olKind :: Lens' OperationList Text
olKind = lens _olKind (\ s a -> s{_olKind = a})

-- | [Output Only] The Operation resources.
olItems :: Lens' OperationList [Maybe Operation]
olItems
  = lens _olItems (\ s a -> s{_olItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server-defined URL for this resource.
olSelfLink :: Lens' OperationList (Maybe Text)
olSelfLink
  = lens _olSelfLink (\ s a -> s{_olSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
olId :: Lens' OperationList (Maybe Text)
olId = lens _olId (\ s a -> s{_olId = a})

-- | A public key for authenticating to guests.
--
-- /See:/ 'publicKey' smart constructor.
data PublicKey = PublicKey
    { _pkFingerprint         :: !(Maybe Text)
    , _pkKey                 :: !(Maybe Text)
    , _pkCreationTimestamp   :: !(Maybe Text)
    , _pkExpirationTimestamp :: !(Maybe Text)
    , _pkDescription         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pkFingerprint'
--
-- * 'pkKey'
--
-- * 'pkCreationTimestamp'
--
-- * 'pkExpirationTimestamp'
--
-- * 'pkDescription'
publicKey
    :: PublicKey
publicKey =
    PublicKey
    { _pkFingerprint = Nothing
    , _pkKey = Nothing
    , _pkCreationTimestamp = Nothing
    , _pkExpirationTimestamp = Nothing
    , _pkDescription = Nothing
    }

-- | [Output Only] The fingerprint of the key is defined by RFC4716 to be the
-- MD5 digest of the public key.
pkFingerprint :: Lens' PublicKey (Maybe Text)
pkFingerprint
  = lens _pkFingerprint
      (\ s a -> s{_pkFingerprint = a})

-- | Public key text in SSH format, defined by RFC4253 section 6.6.
pkKey :: Lens' PublicKey (Maybe Text)
pkKey = lens _pkKey (\ s a -> s{_pkKey = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
pkCreationTimestamp :: Lens' PublicKey (Maybe Text)
pkCreationTimestamp
  = lens _pkCreationTimestamp
      (\ s a -> s{_pkCreationTimestamp = a})

-- | Optional expiration timestamp. If provided, the timestamp must be in
-- RFC3339 text format. If not provided, the public key never expires.
pkExpirationTimestamp :: Lens' PublicKey (Maybe Text)
pkExpirationTimestamp
  = lens _pkExpirationTimestamp
      (\ s a -> s{_pkExpirationTimestamp = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
pkDescription :: Lens' PublicKey (Maybe Text)
pkDescription
  = lens _pkDescription
      (\ s a -> s{_pkDescription = a})

-- | A User resource.
--
-- /See:/ 'user' smart constructor.
data User = User
    { _uGroups            :: !(Maybe [Text])
    , _uPublicKeys        :: !(Maybe [Maybe PublicKey])
    , _uKind              :: !Text
    , _uOwner             :: !(Maybe Text)
    , _uSelfLink          :: !(Maybe Text)
    , _uName              :: !(Maybe Text)
    , _uCreationTimestamp :: !(Maybe Text)
    , _uId                :: !(Maybe Word64)
    , _uDescription       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uGroups'
--
-- * 'uPublicKeys'
--
-- * 'uKind'
--
-- * 'uOwner'
--
-- * 'uSelfLink'
--
-- * 'uName'
--
-- * 'uCreationTimestamp'
--
-- * 'uId'
--
-- * 'uDescription'
user
    :: User
user =
    User
    { _uGroups = Nothing
    , _uPublicKeys = Nothing
    , _uKind = "clouduseraccounts#user"
    , _uOwner = Nothing
    , _uSelfLink = Nothing
    , _uName = Nothing
    , _uCreationTimestamp = Nothing
    , _uId = Nothing
    , _uDescription = Nothing
    }

-- | [Output Only] A list of URLs to Group resources who contain the user.
-- Users are only members of groups in the same project.
uGroups :: Lens' User [Text]
uGroups
  = lens _uGroups (\ s a -> s{_uGroups = a}) . _Default
      . _Coerce

-- | [Output Only] Public keys that this user may use to login.
uPublicKeys :: Lens' User [Maybe PublicKey]
uPublicKeys
  = lens _uPublicKeys (\ s a -> s{_uPublicKeys = a}) .
      _Default
      . _Coerce

-- | [Output Only] Type of the resource. Always clouduseraccounts#user for
-- users.
uKind :: Lens' User Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | Email address of account\'s owner. This account will be validated to
-- make sure it exists. The email can belong to any domain, but it must be
-- tied to a Google account.
uOwner :: Lens' User (Maybe Text)
uOwner = lens _uOwner (\ s a -> s{_uOwner = a})

-- | [Output Only] Server defined URL for the resource.
uSelfLink :: Lens' User (Maybe Text)
uSelfLink
  = lens _uSelfLink (\ s a -> s{_uSelfLink = a})

-- | Name of the resource; provided by the client when the resource is
-- created.
uName :: Lens' User (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})

-- | [Output Only] Creation timestamp in RFC3339 text format.
uCreationTimestamp :: Lens' User (Maybe Text)
uCreationTimestamp
  = lens _uCreationTimestamp
      (\ s a -> s{_uCreationTimestamp = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
uId :: Lens' User (Maybe Word64)
uId = lens _uId (\ s a -> s{_uId = a})

-- | An optional textual description of the resource; provided by the client
-- when the resource is created.
uDescription :: Lens' User (Maybe Text)
uDescription
  = lens _uDescription (\ s a -> s{_uDescription = a})

--
-- /See:/ 'userList' smart constructor.
data UserList = UserList
    { _ulNextPageToken :: !(Maybe Text)
    , _ulKind          :: !Text
    , _ulItems         :: !(Maybe [Maybe User])
    , _ulSelfLink      :: !(Maybe Text)
    , _ulId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulNextPageToken'
--
-- * 'ulKind'
--
-- * 'ulItems'
--
-- * 'ulSelfLink'
--
-- * 'ulId'
userList
    :: UserList
userList =
    UserList
    { _ulNextPageToken = Nothing
    , _ulKind = "clouduseraccounts#userList"
    , _ulItems = Nothing
    , _ulSelfLink = Nothing
    , _ulId = Nothing
    }

-- | [Output Only] A token used to continue a truncated list request.
ulNextPageToken :: Lens' UserList (Maybe Text)
ulNextPageToken
  = lens _ulNextPageToken
      (\ s a -> s{_ulNextPageToken = a})

-- | [Output Only] Type of resource. Always clouduseraccounts#userList for
-- lists of users.
ulKind :: Lens' UserList Text
ulKind = lens _ulKind (\ s a -> s{_ulKind = a})

-- | [Output Only] A list of User resources.
ulItems :: Lens' UserList [Maybe User]
ulItems
  = lens _ulItems (\ s a -> s{_ulItems = a}) . _Default
      . _Coerce

-- | [Output Only] Server defined URL for this resource.
ulSelfLink :: Lens' UserList (Maybe Text)
ulSelfLink
  = lens _ulSelfLink (\ s a -> s{_ulSelfLink = a})

-- | [Output Only] Unique identifier for the resource; defined by the server.
ulId :: Lens' UserList (Maybe Text)
ulId = lens _ulId (\ s a -> s{_ulId = a})
