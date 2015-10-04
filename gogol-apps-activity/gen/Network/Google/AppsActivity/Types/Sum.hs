{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsActivity.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsActivity.Types.Sum where

import           Network.Google.Prelude

-- | The main type of event that occurred.
data PrimaryEventType
    = PETComment
      -- ^ @comment@
    | PETCreate
      -- ^ @create@
    | PETEdit
      -- ^ @edit@
    | PETEmptyTrash
      -- ^ @emptyTrash@
    | PETMove
      -- ^ @move@
    | PETPermissionChange
      -- ^ @permissionChange@
    | PETRename
      -- ^ @rename@
    | PETTrash
      -- ^ @trash@
    | PETUnknown
      -- ^ @unknown@
    | PETUntrash
      -- ^ @untrash@
    | PETUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PrimaryEventType

instance FromText PrimaryEventType where
    fromText = \case
        "comment" -> Just PETComment
        "create" -> Just PETCreate
        "edit" -> Just PETEdit
        "emptyTrash" -> Just PETEmptyTrash
        "move" -> Just PETMove
        "permissionChange" -> Just PETPermissionChange
        "rename" -> Just PETRename
        "trash" -> Just PETTrash
        "unknown" -> Just PETUnknown
        "untrash" -> Just PETUntrash
        "upload" -> Just PETUpload
        _ -> Nothing

instance ToText PrimaryEventType where
    toText = \case
        PETComment -> "comment"
        PETCreate -> "create"
        PETEdit -> "edit"
        PETEmptyTrash -> "emptyTrash"
        PETMove -> "move"
        PETPermissionChange -> "permissionChange"
        PETRename -> "rename"
        PETTrash -> "trash"
        PETUnknown -> "unknown"
        PETUntrash -> "untrash"
        PETUpload -> "upload"

instance FromJSON PrimaryEventType where
    parseJSON = parseJSONText "PrimaryEventType"

instance ToJSON PrimaryEventType where
    toJSON = toJSONText

-- | Indicates the strategy to use when grouping singleEvents items in the
-- associated combinedEvent object.
data GroupingStrategy
    = DriveUi
      -- ^ @driveUi@
    | None
      -- ^ @none@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GroupingStrategy

instance FromText GroupingStrategy where
    fromText = \case
        "driveUi" -> Just DriveUi
        "none" -> Just None
        _ -> Nothing

instance ToText GroupingStrategy where
    toText = \case
        DriveUi -> "driveUi"
        None -> "none"

instance FromJSON GroupingStrategy where
    parseJSON = parseJSONText "GroupingStrategy"

instance ToJSON GroupingStrategy where
    toJSON = toJSONText

-- | Indicates the Google Drive permissions role. The role determines a
-- user\'s ability to read, write, or comment on the file.
data Role
    = Commenter
      -- ^ @commenter@
    | Owner
      -- ^ @owner@
    | Reader
      -- ^ @reader@
    | Writer
      -- ^ @writer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Role

instance FromText Role where
    fromText = \case
        "commenter" -> Just Commenter
        "owner" -> Just Owner
        "reader" -> Just Reader
        "writer" -> Just Writer
        _ -> Nothing

instance ToText Role where
    toText = \case
        Commenter -> "commenter"
        Owner -> "owner"
        Reader -> "reader"
        Writer -> "writer"

instance FromJSON Role where
    parseJSON = parseJSONText "Role"

instance ToJSON Role where
    toJSON = toJSONText

-- | Indicates how widely permissions are granted.
data Type
    = TAnyone
      -- ^ @anyone@
    | TDomain
      -- ^ @domain@
    | TGroup
      -- ^ @group@
    | TUser
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Type

instance FromText Type where
    fromText = \case
        "anyone" -> Just TAnyone
        "domain" -> Just TDomain
        "group" -> Just TGroup
        "user" -> Just TUser
        _ -> Nothing

instance ToText Type where
    toText = \case
        TAnyone -> "anyone"
        TDomain -> "domain"
        TGroup -> "group"
        TUser -> "user"

instance FromJSON Type where
    parseJSON = parseJSONText "Type"

instance ToJSON Type where
    toJSON = toJSONText

data AdditionalEventTypesItem
    = AETIComment
      -- ^ @comment@
    | AETICreate
      -- ^ @create@
    | AETIEdit
      -- ^ @edit@
    | AETIEmptyTrash
      -- ^ @emptyTrash@
    | AETIMove
      -- ^ @move@
    | AETIPermissionChange
      -- ^ @permissionChange@
    | AETIRename
      -- ^ @rename@
    | AETITrash
      -- ^ @trash@
    | AETIUnknown
      -- ^ @unknown@
    | AETIUntrash
      -- ^ @untrash@
    | AETIUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AdditionalEventTypesItem

instance FromText AdditionalEventTypesItem where
    fromText = \case
        "comment" -> Just AETIComment
        "create" -> Just AETICreate
        "edit" -> Just AETIEdit
        "emptyTrash" -> Just AETIEmptyTrash
        "move" -> Just AETIMove
        "permissionChange" -> Just AETIPermissionChange
        "rename" -> Just AETIRename
        "trash" -> Just AETITrash
        "unknown" -> Just AETIUnknown
        "untrash" -> Just AETIUntrash
        "upload" -> Just AETIUpload
        _ -> Nothing

instance ToText AdditionalEventTypesItem where
    toText = \case
        AETIComment -> "comment"
        AETICreate -> "create"
        AETIEdit -> "edit"
        AETIEmptyTrash -> "emptyTrash"
        AETIMove -> "move"
        AETIPermissionChange -> "permissionChange"
        AETIRename -> "rename"
        AETITrash -> "trash"
        AETIUnknown -> "unknown"
        AETIUntrash -> "untrash"
        AETIUpload -> "upload"

instance FromJSON AdditionalEventTypesItem where
    parseJSON = parseJSONText "AdditionalEventTypesItem"

instance ToJSON AdditionalEventTypesItem where
    toJSON = toJSONText
