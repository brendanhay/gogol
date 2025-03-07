{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DriveActivity.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DriveActivity.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ApplicationReference_Type
    ApplicationReference_Type
      ( ApplicationReference_Type_UNSPECIFIEDREFERENCETYPE,
        ApplicationReference_Type_Link,
        ApplicationReference_Type_Discuss,
        ..
      ),

    -- * AppliedLabelChangeDetail_TypesItem
    AppliedLabelChangeDetail_TypesItem
      ( AppliedLabelChangeDetail_TypesItem_TYPEUNSPECIFIED,
        AppliedLabelChangeDetail_TypesItem_LABELADDED,
        AppliedLabelChangeDetail_TypesItem_LABELREMOVED,
        AppliedLabelChangeDetail_TypesItem_LABELFIELDVALUECHANGED,
        AppliedLabelChangeDetail_TypesItem_LABELAPPLIEDBYITEMCREATE,
        ..
      ),

    -- * Assignment_Subtype
    Assignment_Subtype
      ( Assignment_Subtype_SUBTYPEUNSPECIFIED,
        Assignment_Subtype_Added,
        Assignment_Subtype_Deleted,
        Assignment_Subtype_REPLYADDED,
        Assignment_Subtype_REPLYDELETED,
        Assignment_Subtype_Resolved,
        Assignment_Subtype_Reopened,
        Assignment_Subtype_Reassigned,
        ..
      ),

    -- * DataLeakPreventionChange_Type
    DataLeakPreventionChange_Type
      ( DataLeakPreventionChange_Type_TYPEUNSPECIFIED,
        DataLeakPreventionChange_Type_Flagged,
        DataLeakPreventionChange_Type_Cleared,
        ..
      ),

    -- * Delete_Type
    Delete_Type
      ( Delete_Type_TYPEUNSPECIFIED,
        Delete_Type_Trash,
        Delete_Type_PERMANENTDELETE,
        ..
      ),

    -- * DriveFolder_Type
    DriveFolder_Type
      ( DriveFolder_Type_TYPEUNSPECIFIED,
        DriveFolder_Type_MYDRIVEROOT,
        DriveFolder_Type_SHAREDDRIVEROOT,
        DriveFolder_Type_STANDARDFOLDER,
        ..
      ),

    -- * Folder_Type
    Folder_Type
      ( Folder_Type_TYPEUNSPECIFIED,
        Folder_Type_MYDRIVEROOT,
        Folder_Type_TEAMDRIVEROOT,
        Folder_Type_STANDARDFOLDER,
        ..
      ),

    -- * Permission_Role
    Permission_Role
      ( Permission_Role_ROLEUNSPECIFIED,
        Permission_Role_Owner,
        Permission_Role_Organizer,
        Permission_Role_FILEORGANIZER,
        Permission_Role_Editor,
        Permission_Role_Commenter,
        Permission_Role_Viewer,
        Permission_Role_PUBLISHEDVIEWER,
        ..
      ),

    -- * Post_Subtype
    Post_Subtype
      ( Post_Subtype_SUBTYPEUNSPECIFIED,
        Post_Subtype_Added,
        Post_Subtype_Deleted,
        Post_Subtype_REPLYADDED,
        Post_Subtype_REPLYDELETED,
        Post_Subtype_Resolved,
        Post_Subtype_Reopened,
        ..
      ),

    -- * Restore_Type
    Restore_Type
      ( Restore_Type_TYPEUNSPECIFIED,
        Restore_Type_Untrash,
        ..
      ),

    -- * RestrictionChange_Feature
    RestrictionChange_Feature
      ( RestrictionChange_Feature_FEATUREUNSPECIFIED,
        RestrictionChange_Feature_SHARINGOUTSIDEDOMAIN,
        RestrictionChange_Feature_DIRECTSHARING,
        RestrictionChange_Feature_ITEMDUPLICATION,
        RestrictionChange_Feature_DRIVEFILESTREAM,
        RestrictionChange_Feature_FILEORGANIZERCANSHAREFOLDERS,
        ..
      ),

    -- * RestrictionChange_NewRestriction
    RestrictionChange_NewRestriction
      ( RestrictionChange_NewRestriction_RESTRICTIONUNSPECIFIED,
        RestrictionChange_NewRestriction_Unrestricted,
        RestrictionChange_NewRestriction_FULLYRESTRICTED,
        ..
      ),

    -- * Suggestion_Subtype
    Suggestion_Subtype
      ( Suggestion_Subtype_SUBTYPEUNSPECIFIED,
        Suggestion_Subtype_Added,
        Suggestion_Subtype_Deleted,
        Suggestion_Subtype_REPLYADDED,
        Suggestion_Subtype_REPLYDELETED,
        Suggestion_Subtype_Accepted,
        Suggestion_Subtype_Rejected,
        Suggestion_Subtype_ACCEPTDELETED,
        Suggestion_Subtype_REJECTDELETED,
        ..
      ),

    -- * SystemEvent_Type
    SystemEvent_Type
      ( SystemEvent_Type_TYPEUNSPECIFIED,
        SystemEvent_Type_USERDELETION,
        SystemEvent_Type_TRASHAUTOPURGE,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The reference type corresponding to this event.
newtype ApplicationReference_Type = ApplicationReference_Type {fromApplicationReference_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The type is not available.
pattern ApplicationReference_Type_UNSPECIFIEDREFERENCETYPE :: ApplicationReference_Type
pattern ApplicationReference_Type_UNSPECIFIEDREFERENCETYPE = ApplicationReference_Type "UNSPECIFIED_REFERENCE_TYPE"

-- | The links of one or more Drive items were posted.
pattern ApplicationReference_Type_Link :: ApplicationReference_Type
pattern ApplicationReference_Type_Link = ApplicationReference_Type "LINK"

-- | Comments were made regarding a Drive item.
pattern ApplicationReference_Type_Discuss :: ApplicationReference_Type
pattern ApplicationReference_Type_Discuss = ApplicationReference_Type "DISCUSS"

{-# COMPLETE
  ApplicationReference_Type_UNSPECIFIEDREFERENCETYPE,
  ApplicationReference_Type_Link,
  ApplicationReference_Type_Discuss,
  ApplicationReference_Type
  #-}

newtype AppliedLabelChangeDetail_TypesItem = AppliedLabelChangeDetail_TypesItem {fromAppliedLabelChangeDetail_TypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The type of change to this Label is not available.
pattern AppliedLabelChangeDetail_TypesItem_TYPEUNSPECIFIED :: AppliedLabelChangeDetail_TypesItem
pattern AppliedLabelChangeDetail_TypesItem_TYPEUNSPECIFIED = AppliedLabelChangeDetail_TypesItem "TYPE_UNSPECIFIED"

-- | The identified Label was added to the Target.
pattern AppliedLabelChangeDetail_TypesItem_LABELADDED :: AppliedLabelChangeDetail_TypesItem
pattern AppliedLabelChangeDetail_TypesItem_LABELADDED = AppliedLabelChangeDetail_TypesItem "LABEL_ADDED"

-- | The identified Label was removed from the Target.
pattern AppliedLabelChangeDetail_TypesItem_LABELREMOVED :: AppliedLabelChangeDetail_TypesItem
pattern AppliedLabelChangeDetail_TypesItem_LABELREMOVED = AppliedLabelChangeDetail_TypesItem "LABEL_REMOVED"

-- | Field values were changed on the Target.
pattern AppliedLabelChangeDetail_TypesItem_LABELFIELDVALUECHANGED :: AppliedLabelChangeDetail_TypesItem
pattern AppliedLabelChangeDetail_TypesItem_LABELFIELDVALUECHANGED = AppliedLabelChangeDetail_TypesItem "LABEL_FIELD_VALUE_CHANGED"

-- | The Label was applied as a side-effect of Drive item creation.
pattern AppliedLabelChangeDetail_TypesItem_LABELAPPLIEDBYITEMCREATE :: AppliedLabelChangeDetail_TypesItem
pattern AppliedLabelChangeDetail_TypesItem_LABELAPPLIEDBYITEMCREATE = AppliedLabelChangeDetail_TypesItem "LABEL_APPLIED_BY_ITEM_CREATE"

{-# COMPLETE
  AppliedLabelChangeDetail_TypesItem_TYPEUNSPECIFIED,
  AppliedLabelChangeDetail_TypesItem_LABELADDED,
  AppliedLabelChangeDetail_TypesItem_LABELREMOVED,
  AppliedLabelChangeDetail_TypesItem_LABELFIELDVALUECHANGED,
  AppliedLabelChangeDetail_TypesItem_LABELAPPLIEDBYITEMCREATE,
  AppliedLabelChangeDetail_TypesItem
  #-}

-- | The sub-type of this event.
newtype Assignment_Subtype = Assignment_Subtype {fromAssignment_Subtype :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Subtype not available.
pattern Assignment_Subtype_SUBTYPEUNSPECIFIED :: Assignment_Subtype
pattern Assignment_Subtype_SUBTYPEUNSPECIFIED = Assignment_Subtype "SUBTYPE_UNSPECIFIED"

-- | An assignment was added.
pattern Assignment_Subtype_Added :: Assignment_Subtype
pattern Assignment_Subtype_Added = Assignment_Subtype "ADDED"

-- | An assignment was deleted.
pattern Assignment_Subtype_Deleted :: Assignment_Subtype
pattern Assignment_Subtype_Deleted = Assignment_Subtype "DELETED"

-- | An assignment reply was added.
pattern Assignment_Subtype_REPLYADDED :: Assignment_Subtype
pattern Assignment_Subtype_REPLYADDED = Assignment_Subtype "REPLY_ADDED"

-- | An assignment reply was deleted.
pattern Assignment_Subtype_REPLYDELETED :: Assignment_Subtype
pattern Assignment_Subtype_REPLYDELETED = Assignment_Subtype "REPLY_DELETED"

-- | An assignment was resolved.
pattern Assignment_Subtype_Resolved :: Assignment_Subtype
pattern Assignment_Subtype_Resolved = Assignment_Subtype "RESOLVED"

-- | A resolved assignment was reopened.
pattern Assignment_Subtype_Reopened :: Assignment_Subtype
pattern Assignment_Subtype_Reopened = Assignment_Subtype "REOPENED"

-- | An assignment was reassigned.
pattern Assignment_Subtype_Reassigned :: Assignment_Subtype
pattern Assignment_Subtype_Reassigned = Assignment_Subtype "REASSIGNED"

{-# COMPLETE
  Assignment_Subtype_SUBTYPEUNSPECIFIED,
  Assignment_Subtype_Added,
  Assignment_Subtype_Deleted,
  Assignment_Subtype_REPLYADDED,
  Assignment_Subtype_REPLYDELETED,
  Assignment_Subtype_Resolved,
  Assignment_Subtype_Reopened,
  Assignment_Subtype_Reassigned,
  Assignment_Subtype
  #-}

-- | The type of Data Leak Prevention (DLP) change.
newtype DataLeakPreventionChange_Type = DataLeakPreventionChange_Type {fromDataLeakPreventionChange_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | An update to the DLP state that is neither FLAGGED or CLEARED.
pattern DataLeakPreventionChange_Type_TYPEUNSPECIFIED :: DataLeakPreventionChange_Type
pattern DataLeakPreventionChange_Type_TYPEUNSPECIFIED = DataLeakPreventionChange_Type "TYPE_UNSPECIFIED"

-- | Document has been flagged as containing sensitive content.
pattern DataLeakPreventionChange_Type_Flagged :: DataLeakPreventionChange_Type
pattern DataLeakPreventionChange_Type_Flagged = DataLeakPreventionChange_Type "FLAGGED"

-- | Document is no longer flagged as containing sensitive content.
pattern DataLeakPreventionChange_Type_Cleared :: DataLeakPreventionChange_Type
pattern DataLeakPreventionChange_Type_Cleared = DataLeakPreventionChange_Type "CLEARED"

{-# COMPLETE
  DataLeakPreventionChange_Type_TYPEUNSPECIFIED,
  DataLeakPreventionChange_Type_Flagged,
  DataLeakPreventionChange_Type_Cleared,
  DataLeakPreventionChange_Type
  #-}

-- | The type of delete action taken.
newtype Delete_Type = Delete_Type {fromDelete_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Deletion type is not available.
pattern Delete_Type_TYPEUNSPECIFIED :: Delete_Type
pattern Delete_Type_TYPEUNSPECIFIED = Delete_Type "TYPE_UNSPECIFIED"

-- | An object was put into the trash.
pattern Delete_Type_Trash :: Delete_Type
pattern Delete_Type_Trash = Delete_Type "TRASH"

-- | An object was deleted permanently.
pattern Delete_Type_PERMANENTDELETE :: Delete_Type
pattern Delete_Type_PERMANENTDELETE = Delete_Type "PERMANENT_DELETE"

{-# COMPLETE
  Delete_Type_TYPEUNSPECIFIED,
  Delete_Type_Trash,
  Delete_Type_PERMANENTDELETE,
  Delete_Type
  #-}

-- | The type of Drive folder.
newtype DriveFolder_Type = DriveFolder_Type {fromDriveFolder_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The folder type is unknown.
pattern DriveFolder_Type_TYPEUNSPECIFIED :: DriveFolder_Type
pattern DriveFolder_Type_TYPEUNSPECIFIED = DriveFolder_Type "TYPE_UNSPECIFIED"

-- | The folder is the root of a user\'s MyDrive.
pattern DriveFolder_Type_MYDRIVEROOT :: DriveFolder_Type
pattern DriveFolder_Type_MYDRIVEROOT = DriveFolder_Type "MY_DRIVE_ROOT"

-- | The folder is the root of a shared drive.
pattern DriveFolder_Type_SHAREDDRIVEROOT :: DriveFolder_Type
pattern DriveFolder_Type_SHAREDDRIVEROOT = DriveFolder_Type "SHARED_DRIVE_ROOT"

-- | The folder is a standard, non-root, folder.
pattern DriveFolder_Type_STANDARDFOLDER :: DriveFolder_Type
pattern DriveFolder_Type_STANDARDFOLDER = DriveFolder_Type "STANDARD_FOLDER"

{-# COMPLETE
  DriveFolder_Type_TYPEUNSPECIFIED,
  DriveFolder_Type_MYDRIVEROOT,
  DriveFolder_Type_SHAREDDRIVEROOT,
  DriveFolder_Type_STANDARDFOLDER,
  DriveFolder_Type
  #-}

-- | This field is deprecated; please see @DriveFolder.type@ instead.
newtype Folder_Type = Folder_Type {fromFolder_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | This item is deprecated; please see @DriveFolder.Type@ instead.
pattern Folder_Type_TYPEUNSPECIFIED :: Folder_Type
pattern Folder_Type_TYPEUNSPECIFIED = Folder_Type "TYPE_UNSPECIFIED"

-- | This item is deprecated; please see @DriveFolder.Type@ instead.
pattern Folder_Type_MYDRIVEROOT :: Folder_Type
pattern Folder_Type_MYDRIVEROOT = Folder_Type "MY_DRIVE_ROOT"

-- | This item is deprecated; please see @DriveFolder.Type@ instead.
pattern Folder_Type_TEAMDRIVEROOT :: Folder_Type
pattern Folder_Type_TEAMDRIVEROOT = Folder_Type "TEAM_DRIVE_ROOT"

-- | This item is deprecated; please see @DriveFolder.Type@ instead.
pattern Folder_Type_STANDARDFOLDER :: Folder_Type
pattern Folder_Type_STANDARDFOLDER = Folder_Type "STANDARD_FOLDER"

{-# COMPLETE
  Folder_Type_TYPEUNSPECIFIED,
  Folder_Type_MYDRIVEROOT,
  Folder_Type_TEAMDRIVEROOT,
  Folder_Type_STANDARDFOLDER,
  Folder_Type
  #-}

-- | Indicates the <https://developers.google.com/drive/web/manage-sharing#roles Google Drive permissions role>. The role determines a user\'s ability to read, write, and comment on items.
newtype Permission_Role = Permission_Role {fromPermission_Role :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The role is not available.
pattern Permission_Role_ROLEUNSPECIFIED :: Permission_Role
pattern Permission_Role_ROLEUNSPECIFIED = Permission_Role "ROLE_UNSPECIFIED"

-- | A role granting full access.
pattern Permission_Role_Owner :: Permission_Role
pattern Permission_Role_Owner = Permission_Role "OWNER"

-- | A role granting the ability to manage people and settings.
pattern Permission_Role_Organizer :: Permission_Role
pattern Permission_Role_Organizer = Permission_Role "ORGANIZER"

-- | A role granting the ability to contribute and manage content.
pattern Permission_Role_FILEORGANIZER :: Permission_Role
pattern Permission_Role_FILEORGANIZER = Permission_Role "FILE_ORGANIZER"

-- | A role granting the ability to contribute content. This role is sometimes also known as \"writer\".
pattern Permission_Role_Editor :: Permission_Role
pattern Permission_Role_Editor = Permission_Role "EDITOR"

-- | A role granting the ability to view and comment on content.
pattern Permission_Role_Commenter :: Permission_Role
pattern Permission_Role_Commenter = Permission_Role "COMMENTER"

-- | A role granting the ability to view content. This role is sometimes also known as \"reader\".
pattern Permission_Role_Viewer :: Permission_Role
pattern Permission_Role_Viewer = Permission_Role "VIEWER"

-- | A role granting the ability to view content only after it has been published to the web. This role is sometimes also known as \"published reader\". See https:\/\/support.google.com\/sites\/answer\/6372880 for more information.
pattern Permission_Role_PUBLISHEDVIEWER :: Permission_Role
pattern Permission_Role_PUBLISHEDVIEWER = Permission_Role "PUBLISHED_VIEWER"

{-# COMPLETE
  Permission_Role_ROLEUNSPECIFIED,
  Permission_Role_Owner,
  Permission_Role_Organizer,
  Permission_Role_FILEORGANIZER,
  Permission_Role_Editor,
  Permission_Role_Commenter,
  Permission_Role_Viewer,
  Permission_Role_PUBLISHEDVIEWER,
  Permission_Role
  #-}

-- | The sub-type of this event.
newtype Post_Subtype = Post_Subtype {fromPost_Subtype :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Subtype not available.
pattern Post_Subtype_SUBTYPEUNSPECIFIED :: Post_Subtype
pattern Post_Subtype_SUBTYPEUNSPECIFIED = Post_Subtype "SUBTYPE_UNSPECIFIED"

-- | A post was added.
pattern Post_Subtype_Added :: Post_Subtype
pattern Post_Subtype_Added = Post_Subtype "ADDED"

-- | A post was deleted.
pattern Post_Subtype_Deleted :: Post_Subtype
pattern Post_Subtype_Deleted = Post_Subtype "DELETED"

-- | A reply was added.
pattern Post_Subtype_REPLYADDED :: Post_Subtype
pattern Post_Subtype_REPLYADDED = Post_Subtype "REPLY_ADDED"

-- | A reply was deleted.
pattern Post_Subtype_REPLYDELETED :: Post_Subtype
pattern Post_Subtype_REPLYDELETED = Post_Subtype "REPLY_DELETED"

-- | A posted comment was resolved.
pattern Post_Subtype_Resolved :: Post_Subtype
pattern Post_Subtype_Resolved = Post_Subtype "RESOLVED"

-- | A posted comment was reopened.
pattern Post_Subtype_Reopened :: Post_Subtype
pattern Post_Subtype_Reopened = Post_Subtype "REOPENED"

{-# COMPLETE
  Post_Subtype_SUBTYPEUNSPECIFIED,
  Post_Subtype_Added,
  Post_Subtype_Deleted,
  Post_Subtype_REPLYADDED,
  Post_Subtype_REPLYDELETED,
  Post_Subtype_Resolved,
  Post_Subtype_Reopened,
  Post_Subtype
  #-}

-- | The type of restore action taken.
newtype Restore_Type = Restore_Type {fromRestore_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The type is not available.
pattern Restore_Type_TYPEUNSPECIFIED :: Restore_Type
pattern Restore_Type_TYPEUNSPECIFIED = Restore_Type "TYPE_UNSPECIFIED"

-- | An object was restored from the trash.
pattern Restore_Type_Untrash :: Restore_Type
pattern Restore_Type_Untrash = Restore_Type "UNTRASH"

{-# COMPLETE
  Restore_Type_TYPEUNSPECIFIED,
  Restore_Type_Untrash,
  Restore_Type
  #-}

-- | The feature which had a change in restriction policy.
newtype RestrictionChange_Feature = RestrictionChange_Feature {fromRestrictionChange_Feature :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The feature which changed restriction settings was not available.
pattern RestrictionChange_Feature_FEATUREUNSPECIFIED :: RestrictionChange_Feature
pattern RestrictionChange_Feature_FEATUREUNSPECIFIED = RestrictionChange_Feature "FEATURE_UNSPECIFIED"

-- | When restricted, this prevents items from being shared outside the domain.
pattern RestrictionChange_Feature_SHARINGOUTSIDEDOMAIN :: RestrictionChange_Feature
pattern RestrictionChange_Feature_SHARINGOUTSIDEDOMAIN = RestrictionChange_Feature "SHARING_OUTSIDE_DOMAIN"

-- | When restricted, this prevents direct sharing of individual items.
pattern RestrictionChange_Feature_DIRECTSHARING :: RestrictionChange_Feature
pattern RestrictionChange_Feature_DIRECTSHARING = RestrictionChange_Feature "DIRECT_SHARING"

-- | When restricted, this prevents actions like copy, download, and print that might result in uncontrolled duplicates of items.
pattern RestrictionChange_Feature_ITEMDUPLICATION :: RestrictionChange_Feature
pattern RestrictionChange_Feature_ITEMDUPLICATION = RestrictionChange_Feature "ITEM_DUPLICATION"

-- | When restricted, this prevents use of Drive File Stream.
pattern RestrictionChange_Feature_DRIVEFILESTREAM :: RestrictionChange_Feature
pattern RestrictionChange_Feature_DRIVEFILESTREAM = RestrictionChange_Feature "DRIVE_FILE_STREAM"

-- | When restricted, this limits sharing of folders to managers only.
pattern RestrictionChange_Feature_FILEORGANIZERCANSHAREFOLDERS :: RestrictionChange_Feature
pattern RestrictionChange_Feature_FILEORGANIZERCANSHAREFOLDERS = RestrictionChange_Feature "FILE_ORGANIZER_CAN_SHARE_FOLDERS"

{-# COMPLETE
  RestrictionChange_Feature_FEATUREUNSPECIFIED,
  RestrictionChange_Feature_SHARINGOUTSIDEDOMAIN,
  RestrictionChange_Feature_DIRECTSHARING,
  RestrictionChange_Feature_ITEMDUPLICATION,
  RestrictionChange_Feature_DRIVEFILESTREAM,
  RestrictionChange_Feature_FILEORGANIZERCANSHAREFOLDERS,
  RestrictionChange_Feature
  #-}

-- | The restriction in place after the change.
newtype RestrictionChange_NewRestriction = RestrictionChange_NewRestriction {fromRestrictionChange_NewRestriction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The type of restriction is not available.
pattern RestrictionChange_NewRestriction_RESTRICTIONUNSPECIFIED :: RestrictionChange_NewRestriction
pattern RestrictionChange_NewRestriction_RESTRICTIONUNSPECIFIED = RestrictionChange_NewRestriction "RESTRICTION_UNSPECIFIED"

-- | The feature is available without restriction.
pattern RestrictionChange_NewRestriction_Unrestricted :: RestrictionChange_NewRestriction
pattern RestrictionChange_NewRestriction_Unrestricted = RestrictionChange_NewRestriction "UNRESTRICTED"

-- | The use of this feature is fully restricted.
pattern RestrictionChange_NewRestriction_FULLYRESTRICTED :: RestrictionChange_NewRestriction
pattern RestrictionChange_NewRestriction_FULLYRESTRICTED = RestrictionChange_NewRestriction "FULLY_RESTRICTED"

{-# COMPLETE
  RestrictionChange_NewRestriction_RESTRICTIONUNSPECIFIED,
  RestrictionChange_NewRestriction_Unrestricted,
  RestrictionChange_NewRestriction_FULLYRESTRICTED,
  RestrictionChange_NewRestriction
  #-}

-- | The sub-type of this event.
newtype Suggestion_Subtype = Suggestion_Subtype {fromSuggestion_Subtype :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Subtype not available.
pattern Suggestion_Subtype_SUBTYPEUNSPECIFIED :: Suggestion_Subtype
pattern Suggestion_Subtype_SUBTYPEUNSPECIFIED = Suggestion_Subtype "SUBTYPE_UNSPECIFIED"

-- | A suggestion was added.
pattern Suggestion_Subtype_Added :: Suggestion_Subtype
pattern Suggestion_Subtype_Added = Suggestion_Subtype "ADDED"

-- | A suggestion was deleted.
pattern Suggestion_Subtype_Deleted :: Suggestion_Subtype
pattern Suggestion_Subtype_Deleted = Suggestion_Subtype "DELETED"

-- | A suggestion reply was added.
pattern Suggestion_Subtype_REPLYADDED :: Suggestion_Subtype
pattern Suggestion_Subtype_REPLYADDED = Suggestion_Subtype "REPLY_ADDED"

-- | A suggestion reply was deleted.
pattern Suggestion_Subtype_REPLYDELETED :: Suggestion_Subtype
pattern Suggestion_Subtype_REPLYDELETED = Suggestion_Subtype "REPLY_DELETED"

-- | A suggestion was accepted.
pattern Suggestion_Subtype_Accepted :: Suggestion_Subtype
pattern Suggestion_Subtype_Accepted = Suggestion_Subtype "ACCEPTED"

-- | A suggestion was rejected.
pattern Suggestion_Subtype_Rejected :: Suggestion_Subtype
pattern Suggestion_Subtype_Rejected = Suggestion_Subtype "REJECTED"

-- | An accepted suggestion was deleted.
pattern Suggestion_Subtype_ACCEPTDELETED :: Suggestion_Subtype
pattern Suggestion_Subtype_ACCEPTDELETED = Suggestion_Subtype "ACCEPT_DELETED"

-- | A rejected suggestion was deleted.
pattern Suggestion_Subtype_REJECTDELETED :: Suggestion_Subtype
pattern Suggestion_Subtype_REJECTDELETED = Suggestion_Subtype "REJECT_DELETED"

{-# COMPLETE
  Suggestion_Subtype_SUBTYPEUNSPECIFIED,
  Suggestion_Subtype_Added,
  Suggestion_Subtype_Deleted,
  Suggestion_Subtype_REPLYADDED,
  Suggestion_Subtype_REPLYDELETED,
  Suggestion_Subtype_Accepted,
  Suggestion_Subtype_Rejected,
  Suggestion_Subtype_ACCEPTDELETED,
  Suggestion_Subtype_REJECTDELETED,
  Suggestion_Subtype
  #-}

-- | The type of the system event that may triggered activity.
newtype SystemEvent_Type = SystemEvent_Type {fromSystemEvent_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The event type is unspecified.
pattern SystemEvent_Type_TYPEUNSPECIFIED :: SystemEvent_Type
pattern SystemEvent_Type_TYPEUNSPECIFIED = SystemEvent_Type "TYPE_UNSPECIFIED"

-- | The event is a consequence of a user account being deleted.
pattern SystemEvent_Type_USERDELETION :: SystemEvent_Type
pattern SystemEvent_Type_USERDELETION = SystemEvent_Type "USER_DELETION"

-- | The event is due to the system automatically purging trash.
pattern SystemEvent_Type_TRASHAUTOPURGE :: SystemEvent_Type
pattern SystemEvent_Type_TRASHAUTOPURGE = SystemEvent_Type "TRASH_AUTO_PURGE"

{-# COMPLETE
  SystemEvent_Type_TYPEUNSPECIFIED,
  SystemEvent_Type_USERDELETION,
  SystemEvent_Type_TRASHAUTOPURGE,
  SystemEvent_Type
  #-}
