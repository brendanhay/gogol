{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DriveActivity.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DriveActivity.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Indicates the [Google Drive permissions
-- role](https:\/\/developers.google.com\/drive\/web\/manage-sharing#roles).
-- The role determines a user\'s ability to read, write, and comment on
-- items.
data PermissionRole
    = PRRoleUnspecified
      -- ^ @ROLE_UNSPECIFIED@
      -- The role is not available.
    | PROwner
      -- ^ @OWNER@
      -- A role granting full access.
    | PROrganizer
      -- ^ @ORGANIZER@
      -- A role granting the ability to manage people and settings.
    | PRFileOrganizer
      -- ^ @FILE_ORGANIZER@
      -- A role granting the ability to contribute and manage content.
    | PREditor
      -- ^ @EDITOR@
      -- A role granting the ability to contribute content. This role is
      -- sometimes also known as \"writer\".
    | PRCommenter
      -- ^ @COMMENTER@
      -- A role granting the ability to view and comment on content.
    | PRViewer
      -- ^ @VIEWER@
      -- A role granting the ability to view content. This role is sometimes also
      -- known as \"reader\".
    | PRPublishedViewer
      -- ^ @PUBLISHED_VIEWER@
      -- A role granting the ability to view content only after it has been
      -- published to the web. This role is sometimes also known as \"published
      -- reader\". See https:\/\/support.google.com\/sites\/answer\/6372880 for
      -- more information.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PermissionRole

instance FromHttpApiData PermissionRole where
    parseQueryParam = \case
        "ROLE_UNSPECIFIED" -> Right PRRoleUnspecified
        "OWNER" -> Right PROwner
        "ORGANIZER" -> Right PROrganizer
        "FILE_ORGANIZER" -> Right PRFileOrganizer
        "EDITOR" -> Right PREditor
        "COMMENTER" -> Right PRCommenter
        "VIEWER" -> Right PRViewer
        "PUBLISHED_VIEWER" -> Right PRPublishedViewer
        x -> Left ("Unable to parse PermissionRole from: " <> x)

instance ToHttpApiData PermissionRole where
    toQueryParam = \case
        PRRoleUnspecified -> "ROLE_UNSPECIFIED"
        PROwner -> "OWNER"
        PROrganizer -> "ORGANIZER"
        PRFileOrganizer -> "FILE_ORGANIZER"
        PREditor -> "EDITOR"
        PRCommenter -> "COMMENTER"
        PRViewer -> "VIEWER"
        PRPublishedViewer -> "PUBLISHED_VIEWER"

instance FromJSON PermissionRole where
    parseJSON = parseJSONText "PermissionRole"

instance ToJSON PermissionRole where
    toJSON = toJSONText

-- | The restriction in place after the change.
data RestrictionChangeNewRestriction
    = RestrictionUnspecified
      -- ^ @RESTRICTION_UNSPECIFIED@
      -- The type of restriction is not available.
    | Unrestricted
      -- ^ @UNRESTRICTED@
      -- The feature is available without restriction.
    | FullyRestricted
      -- ^ @FULLY_RESTRICTED@
      -- The use of this feature is fully restricted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestrictionChangeNewRestriction

instance FromHttpApiData RestrictionChangeNewRestriction where
    parseQueryParam = \case
        "RESTRICTION_UNSPECIFIED" -> Right RestrictionUnspecified
        "UNRESTRICTED" -> Right Unrestricted
        "FULLY_RESTRICTED" -> Right FullyRestricted
        x -> Left ("Unable to parse RestrictionChangeNewRestriction from: " <> x)

instance ToHttpApiData RestrictionChangeNewRestriction where
    toQueryParam = \case
        RestrictionUnspecified -> "RESTRICTION_UNSPECIFIED"
        Unrestricted -> "UNRESTRICTED"
        FullyRestricted -> "FULLY_RESTRICTED"

instance FromJSON RestrictionChangeNewRestriction where
    parseJSON = parseJSONText "RestrictionChangeNewRestriction"

instance ToJSON RestrictionChangeNewRestriction where
    toJSON = toJSONText

-- | The type of Drive folder.
data DriveFolderType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The folder type is unknown.
    | MyDriveRoot
      -- ^ @MY_DRIVE_ROOT@
      -- The folder is the root of a user\'s MyDrive.
    | SharedDriveRoot
      -- ^ @SHARED_DRIVE_ROOT@
      -- The folder is the root of a shared drive.
    | StandardFolder
      -- ^ @STANDARD_FOLDER@
      -- The folder is a standard, non-root, folder.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DriveFolderType

instance FromHttpApiData DriveFolderType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "MY_DRIVE_ROOT" -> Right MyDriveRoot
        "SHARED_DRIVE_ROOT" -> Right SharedDriveRoot
        "STANDARD_FOLDER" -> Right StandardFolder
        x -> Left ("Unable to parse DriveFolderType from: " <> x)

instance ToHttpApiData DriveFolderType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        MyDriveRoot -> "MY_DRIVE_ROOT"
        SharedDriveRoot -> "SHARED_DRIVE_ROOT"
        StandardFolder -> "STANDARD_FOLDER"

instance FromJSON DriveFolderType where
    parseJSON = parseJSONText "DriveFolderType"

instance ToJSON DriveFolderType where
    toJSON = toJSONText

-- | The feature which had a change in restriction policy.
data RestrictionChangeFeature
    = FeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- The feature which changed restriction settings was not available.
    | SharingOutsideDomain
      -- ^ @SHARING_OUTSIDE_DOMAIN@
      -- When restricted, this prevents items from being shared outside the
      -- domain.
    | DirectSharing
      -- ^ @DIRECT_SHARING@
      -- When restricted, this prevents direct sharing of individual items.
    | ItemDuplication
      -- ^ @ITEM_DUPLICATION@
      -- When restricted, this prevents actions like copy, download, and print
      -- that might result in uncontrolled duplicates of items.
    | DriveFileStream
      -- ^ @DRIVE_FILE_STREAM@
      -- When restricted, this prevents use of Drive File Stream.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestrictionChangeFeature

instance FromHttpApiData RestrictionChangeFeature where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right FeatureUnspecified
        "SHARING_OUTSIDE_DOMAIN" -> Right SharingOutsideDomain
        "DIRECT_SHARING" -> Right DirectSharing
        "ITEM_DUPLICATION" -> Right ItemDuplication
        "DRIVE_FILE_STREAM" -> Right DriveFileStream
        x -> Left ("Unable to parse RestrictionChangeFeature from: " <> x)

instance ToHttpApiData RestrictionChangeFeature where
    toQueryParam = \case
        FeatureUnspecified -> "FEATURE_UNSPECIFIED"
        SharingOutsideDomain -> "SHARING_OUTSIDE_DOMAIN"
        DirectSharing -> "DIRECT_SHARING"
        ItemDuplication -> "ITEM_DUPLICATION"
        DriveFileStream -> "DRIVE_FILE_STREAM"

instance FromJSON RestrictionChangeFeature where
    parseJSON = parseJSONText "RestrictionChangeFeature"

instance ToJSON RestrictionChangeFeature where
    toJSON = toJSONText

-- | The type of the system event that may triggered activity.
data SystemEventType
    = SETTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The event type is unspecified.
    | SETUserDeletion
      -- ^ @USER_DELETION@
      -- The event is a consequence of a user account being deleted.
    | SETTrashAutoPurge
      -- ^ @TRASH_AUTO_PURGE@
      -- The event is due to the system automatically purging trash.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SystemEventType

instance FromHttpApiData SystemEventType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right SETTypeUnspecified
        "USER_DELETION" -> Right SETUserDeletion
        "TRASH_AUTO_PURGE" -> Right SETTrashAutoPurge
        x -> Left ("Unable to parse SystemEventType from: " <> x)

instance ToHttpApiData SystemEventType where
    toQueryParam = \case
        SETTypeUnspecified -> "TYPE_UNSPECIFIED"
        SETUserDeletion -> "USER_DELETION"
        SETTrashAutoPurge -> "TRASH_AUTO_PURGE"

instance FromJSON SystemEventType where
    parseJSON = parseJSONText "SystemEventType"

instance ToJSON SystemEventType where
    toJSON = toJSONText

-- | The type of delete action taken.
data DeleteType
    = DTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Deletion type is not available.
    | DTTrash
      -- ^ @TRASH@
      -- An object was put into the trash.
    | DTPermanentDelete
      -- ^ @PERMANENT_DELETE@
      -- An object was deleted permanently.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeleteType

instance FromHttpApiData DeleteType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right DTTypeUnspecified
        "TRASH" -> Right DTTrash
        "PERMANENT_DELETE" -> Right DTPermanentDelete
        x -> Left ("Unable to parse DeleteType from: " <> x)

instance ToHttpApiData DeleteType where
    toQueryParam = \case
        DTTypeUnspecified -> "TYPE_UNSPECIFIED"
        DTTrash -> "TRASH"
        DTPermanentDelete -> "PERMANENT_DELETE"

instance FromJSON DeleteType where
    parseJSON = parseJSONText "DeleteType"

instance ToJSON DeleteType where
    toJSON = toJSONText

-- | The sub-type of this event.
data PostSubtype
    = SubtypeUnspecified
      -- ^ @SUBTYPE_UNSPECIFIED@
      -- Subtype not available.
    | Added
      -- ^ @ADDED@
      -- A post was added.
    | Deleted
      -- ^ @DELETED@
      -- A post was deleted.
    | ReplyAdded
      -- ^ @REPLY_ADDED@
      -- A reply was added.
    | ReplyDeleted
      -- ^ @REPLY_DELETED@
      -- A reply was deleted.
    | Resolved
      -- ^ @RESOLVED@
      -- A posted comment was resolved.
    | Reopened
      -- ^ @REOPENED@
      -- A posted comment was reopened.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostSubtype

instance FromHttpApiData PostSubtype where
    parseQueryParam = \case
        "SUBTYPE_UNSPECIFIED" -> Right SubtypeUnspecified
        "ADDED" -> Right Added
        "DELETED" -> Right Deleted
        "REPLY_ADDED" -> Right ReplyAdded
        "REPLY_DELETED" -> Right ReplyDeleted
        "RESOLVED" -> Right Resolved
        "REOPENED" -> Right Reopened
        x -> Left ("Unable to parse PostSubtype from: " <> x)

instance ToHttpApiData PostSubtype where
    toQueryParam = \case
        SubtypeUnspecified -> "SUBTYPE_UNSPECIFIED"
        Added -> "ADDED"
        Deleted -> "DELETED"
        ReplyAdded -> "REPLY_ADDED"
        ReplyDeleted -> "REPLY_DELETED"
        Resolved -> "RESOLVED"
        Reopened -> "REOPENED"

instance FromJSON PostSubtype where
    parseJSON = parseJSONText "PostSubtype"

instance ToJSON PostSubtype where
    toJSON = toJSONText

-- | The sub-type of this event.
data AssignmentSubtype
    = ASSubtypeUnspecified
      -- ^ @SUBTYPE_UNSPECIFIED@
      -- Subtype not available.
    | ASAdded
      -- ^ @ADDED@
      -- An assignment was added.
    | ASDeleted
      -- ^ @DELETED@
      -- An assignment was deleted.
    | ASReplyAdded
      -- ^ @REPLY_ADDED@
      -- An assignment reply was added.
    | ASReplyDeleted
      -- ^ @REPLY_DELETED@
      -- An assignment reply was deleted.
    | ASResolved
      -- ^ @RESOLVED@
      -- An assignment was resolved.
    | ASReopened
      -- ^ @REOPENED@
      -- A resolved assignment was reopened.
    | ASReassigned
      -- ^ @REASSIGNED@
      -- An assignment was reassigned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AssignmentSubtype

instance FromHttpApiData AssignmentSubtype where
    parseQueryParam = \case
        "SUBTYPE_UNSPECIFIED" -> Right ASSubtypeUnspecified
        "ADDED" -> Right ASAdded
        "DELETED" -> Right ASDeleted
        "REPLY_ADDED" -> Right ASReplyAdded
        "REPLY_DELETED" -> Right ASReplyDeleted
        "RESOLVED" -> Right ASResolved
        "REOPENED" -> Right ASReopened
        "REASSIGNED" -> Right ASReassigned
        x -> Left ("Unable to parse AssignmentSubtype from: " <> x)

instance ToHttpApiData AssignmentSubtype where
    toQueryParam = \case
        ASSubtypeUnspecified -> "SUBTYPE_UNSPECIFIED"
        ASAdded -> "ADDED"
        ASDeleted -> "DELETED"
        ASReplyAdded -> "REPLY_ADDED"
        ASReplyDeleted -> "REPLY_DELETED"
        ASResolved -> "RESOLVED"
        ASReopened -> "REOPENED"
        ASReassigned -> "REASSIGNED"

instance FromJSON AssignmentSubtype where
    parseJSON = parseJSONText "AssignmentSubtype"

instance ToJSON AssignmentSubtype where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of restore action taken.
data RestoreType
    = RTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The type is not available.
    | RTUntrash
      -- ^ @UNTRASH@
      -- An object was restored from the trash.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RestoreType

instance FromHttpApiData RestoreType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right RTTypeUnspecified
        "UNTRASH" -> Right RTUntrash
        x -> Left ("Unable to parse RestoreType from: " <> x)

instance ToHttpApiData RestoreType where
    toQueryParam = \case
        RTTypeUnspecified -> "TYPE_UNSPECIFIED"
        RTUntrash -> "UNTRASH"

instance FromJSON RestoreType where
    parseJSON = parseJSONText "RestoreType"

instance ToJSON RestoreType where
    toJSON = toJSONText

-- | The sub-type of this event.
data SuggestionSubtype
    = SSSubtypeUnspecified
      -- ^ @SUBTYPE_UNSPECIFIED@
      -- Subtype not available.
    | SSAdded
      -- ^ @ADDED@
      -- A suggestion was added.
    | SSDeleted
      -- ^ @DELETED@
      -- A suggestion was deleted.
    | SSReplyAdded
      -- ^ @REPLY_ADDED@
      -- A suggestion reply was added.
    | SSReplyDeleted
      -- ^ @REPLY_DELETED@
      -- A suggestion reply was deleted.
    | SSAccepted
      -- ^ @ACCEPTED@
      -- A suggestion was accepted.
    | SSRejected
      -- ^ @REJECTED@
      -- A suggestion was rejected.
    | SSAcceptDeleted
      -- ^ @ACCEPT_DELETED@
      -- An accepted suggestion was deleted.
    | SSRejectDeleted
      -- ^ @REJECT_DELETED@
      -- A rejected suggestion was deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SuggestionSubtype

instance FromHttpApiData SuggestionSubtype where
    parseQueryParam = \case
        "SUBTYPE_UNSPECIFIED" -> Right SSSubtypeUnspecified
        "ADDED" -> Right SSAdded
        "DELETED" -> Right SSDeleted
        "REPLY_ADDED" -> Right SSReplyAdded
        "REPLY_DELETED" -> Right SSReplyDeleted
        "ACCEPTED" -> Right SSAccepted
        "REJECTED" -> Right SSRejected
        "ACCEPT_DELETED" -> Right SSAcceptDeleted
        "REJECT_DELETED" -> Right SSRejectDeleted
        x -> Left ("Unable to parse SuggestionSubtype from: " <> x)

instance ToHttpApiData SuggestionSubtype where
    toQueryParam = \case
        SSSubtypeUnspecified -> "SUBTYPE_UNSPECIFIED"
        SSAdded -> "ADDED"
        SSDeleted -> "DELETED"
        SSReplyAdded -> "REPLY_ADDED"
        SSReplyDeleted -> "REPLY_DELETED"
        SSAccepted -> "ACCEPTED"
        SSRejected -> "REJECTED"
        SSAcceptDeleted -> "ACCEPT_DELETED"
        SSRejectDeleted -> "REJECT_DELETED"

instance FromJSON SuggestionSubtype where
    parseJSON = parseJSONText "SuggestionSubtype"

instance ToJSON SuggestionSubtype where
    toJSON = toJSONText

-- | The type of Data Leak Prevention (DLP) change.
data DataLeakPreventionChangeType
    = DLPCTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- An update to the DLP state that is neither FLAGGED or CLEARED.
    | DLPCTFlagged
      -- ^ @FLAGGED@
      -- Document has been flagged as containing sensitive content.
    | DLPCTCleared
      -- ^ @CLEARED@
      -- Document is no longer flagged as containing sensitive content.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataLeakPreventionChangeType

instance FromHttpApiData DataLeakPreventionChangeType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right DLPCTTypeUnspecified
        "FLAGGED" -> Right DLPCTFlagged
        "CLEARED" -> Right DLPCTCleared
        x -> Left ("Unable to parse DataLeakPreventionChangeType from: " <> x)

instance ToHttpApiData DataLeakPreventionChangeType where
    toQueryParam = \case
        DLPCTTypeUnspecified -> "TYPE_UNSPECIFIED"
        DLPCTFlagged -> "FLAGGED"
        DLPCTCleared -> "CLEARED"

instance FromJSON DataLeakPreventionChangeType where
    parseJSON = parseJSONText "DataLeakPreventionChangeType"

instance ToJSON DataLeakPreventionChangeType where
    toJSON = toJSONText

-- | This field is deprecated; please see \`DriveFolder.type\` instead.
data FolderType
    = FTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- This item is deprecated; please see \`DriveFolder.Type\` instead.
    | FTMyDriveRoot
      -- ^ @MY_DRIVE_ROOT@
      -- This item is deprecated; please see \`DriveFolder.Type\` instead.
    | FTTeamDriveRoot
      -- ^ @TEAM_DRIVE_ROOT@
      -- This item is deprecated; please see \`DriveFolder.Type\` instead.
    | FTStandardFolder
      -- ^ @STANDARD_FOLDER@
      -- This item is deprecated; please see \`DriveFolder.Type\` instead.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FolderType

instance FromHttpApiData FolderType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right FTTypeUnspecified
        "MY_DRIVE_ROOT" -> Right FTMyDriveRoot
        "TEAM_DRIVE_ROOT" -> Right FTTeamDriveRoot
        "STANDARD_FOLDER" -> Right FTStandardFolder
        x -> Left ("Unable to parse FolderType from: " <> x)

instance ToHttpApiData FolderType where
    toQueryParam = \case
        FTTypeUnspecified -> "TYPE_UNSPECIFIED"
        FTMyDriveRoot -> "MY_DRIVE_ROOT"
        FTTeamDriveRoot -> "TEAM_DRIVE_ROOT"
        FTStandardFolder -> "STANDARD_FOLDER"

instance FromJSON FolderType where
    parseJSON = parseJSONText "FolderType"

instance ToJSON FolderType where
    toJSON = toJSONText

-- | The reference type corresponding to this event.
data ApplicationReferenceType
    = UnspecifiedReferenceType
      -- ^ @UNSPECIFIED_REFERENCE_TYPE@
      -- The type is not available.
    | Link
      -- ^ @LINK@
      -- The links of one or more Drive items were posted.
    | Discuss
      -- ^ @DISCUSS@
      -- Comments were made regarding a Drive item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationReferenceType

instance FromHttpApiData ApplicationReferenceType where
    parseQueryParam = \case
        "UNSPECIFIED_REFERENCE_TYPE" -> Right UnspecifiedReferenceType
        "LINK" -> Right Link
        "DISCUSS" -> Right Discuss
        x -> Left ("Unable to parse ApplicationReferenceType from: " <> x)

instance ToHttpApiData ApplicationReferenceType where
    toQueryParam = \case
        UnspecifiedReferenceType -> "UNSPECIFIED_REFERENCE_TYPE"
        Link -> "LINK"
        Discuss -> "DISCUSS"

instance FromJSON ApplicationReferenceType where
    parseJSON = parseJSONText "ApplicationReferenceType"

instance ToJSON ApplicationReferenceType where
    toJSON = toJSONText
