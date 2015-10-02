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
data EventPrimaryEventType
    = EPETComment
      -- ^ @comment@
    | EPETCreate
      -- ^ @create@
    | EPETEdit
      -- ^ @edit@
    | EPETEmptyTrash
      -- ^ @emptyTrash@
    | EPETMove
      -- ^ @move@
    | EPETPermissionChange
      -- ^ @permissionChange@
    | EPETRename
      -- ^ @rename@
    | EPETTrash
      -- ^ @trash@
    | EPETUnknown
      -- ^ @unknown@
    | EPETUntrash
      -- ^ @untrash@
    | EPETUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventPrimaryEventType

instance FromText EventPrimaryEventType where
    fromText = \case
        "comment" -> Just EPETComment
        "create" -> Just EPETCreate
        "edit" -> Just EPETEdit
        "emptyTrash" -> Just EPETEmptyTrash
        "move" -> Just EPETMove
        "permissionChange" -> Just EPETPermissionChange
        "rename" -> Just EPETRename
        "trash" -> Just EPETTrash
        "unknown" -> Just EPETUnknown
        "untrash" -> Just EPETUntrash
        "upload" -> Just EPETUpload
        _ -> Nothing

instance ToText EventPrimaryEventType where
    toText = \case
        EPETComment -> "comment"
        EPETCreate -> "create"
        EPETEdit -> "edit"
        EPETEmptyTrash -> "emptyTrash"
        EPETMove -> "move"
        EPETPermissionChange -> "permissionChange"
        EPETRename -> "rename"
        EPETTrash -> "trash"
        EPETUnknown -> "unknown"
        EPETUntrash -> "untrash"
        EPETUpload -> "upload"

instance FromJSON EventPrimaryEventType where
    parseJSON = parseJSONText "EventPrimaryEventType"

instance ToJSON EventPrimaryEventType where
    toJSON = toJSONText

-- | Indicates the Google Drive permissions role. The role determines a
-- user\'s ability to read, write, or comment on the file.
data PermissionRole
    = Commenter
      -- ^ @commenter@
    | Owner
      -- ^ @owner@
    | Reader
      -- ^ @reader@
    | Writer
      -- ^ @writer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionRole

instance FromText PermissionRole where
    fromText = \case
        "commenter" -> Just Commenter
        "owner" -> Just Owner
        "reader" -> Just Reader
        "writer" -> Just Writer
        _ -> Nothing

instance ToText PermissionRole where
    toText = \case
        Commenter -> "commenter"
        Owner -> "owner"
        Reader -> "reader"
        Writer -> "writer"

instance FromJSON PermissionRole where
    parseJSON = parseJSONText "PermissionRole"

instance ToJSON PermissionRole where
    toJSON = toJSONText

data EventAdditionalEventTypes
    = EAETComment
      -- ^ @comment@
    | EAETCreate
      -- ^ @create@
    | EAETEdit
      -- ^ @edit@
    | EAETEmptyTrash
      -- ^ @emptyTrash@
    | EAETMove
      -- ^ @move@
    | EAETPermissionChange
      -- ^ @permissionChange@
    | EAETRename
      -- ^ @rename@
    | EAETTrash
      -- ^ @trash@
    | EAETUnknown
      -- ^ @unknown@
    | EAETUntrash
      -- ^ @untrash@
    | EAETUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventAdditionalEventTypes

instance FromText EventAdditionalEventTypes where
    fromText = \case
        "comment" -> Just EAETComment
        "create" -> Just EAETCreate
        "edit" -> Just EAETEdit
        "emptyTrash" -> Just EAETEmptyTrash
        "move" -> Just EAETMove
        "permissionChange" -> Just EAETPermissionChange
        "rename" -> Just EAETRename
        "trash" -> Just EAETTrash
        "unknown" -> Just EAETUnknown
        "untrash" -> Just EAETUntrash
        "upload" -> Just EAETUpload
        _ -> Nothing

instance ToText EventAdditionalEventTypes where
    toText = \case
        EAETComment -> "comment"
        EAETCreate -> "create"
        EAETEdit -> "edit"
        EAETEmptyTrash -> "emptyTrash"
        EAETMove -> "move"
        EAETPermissionChange -> "permissionChange"
        EAETRename -> "rename"
        EAETTrash -> "trash"
        EAETUnknown -> "unknown"
        EAETUntrash -> "untrash"
        EAETUpload -> "upload"

instance FromJSON EventAdditionalEventTypes where
    parseJSON = parseJSONText "EventAdditionalEventTypes"

instance ToJSON EventAdditionalEventTypes where
    toJSON = toJSONText

-- | Indicates the strategy to use when grouping singleEvents items in the
-- associated combinedEvent object.
data AppsactivityActivitiesListGroupingStrategy
    = DriveUi
      -- ^ @driveUi@
    | None
      -- ^ @none@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AppsactivityActivitiesListGroupingStrategy

instance FromText AppsactivityActivitiesListGroupingStrategy where
    fromText = \case
        "driveUi" -> Just DriveUi
        "none" -> Just None
        _ -> Nothing

instance ToText AppsactivityActivitiesListGroupingStrategy where
    toText = \case
        DriveUi -> "driveUi"
        None -> "none"

instance FromJSON AppsactivityActivitiesListGroupingStrategy where
    parseJSON = parseJSONText "AppsactivityActivitiesListGroupingStrategy"

instance ToJSON AppsactivityActivitiesListGroupingStrategy where
    toJSON = toJSONText

-- | Indicates how widely permissions are granted.
data PermissionType
    = PTAnyone
      -- ^ @anyone@
    | PTDomain
      -- ^ @domain@
    | PTGroup
      -- ^ @group@
    | PTUser
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionType

instance FromText PermissionType where
    fromText = \case
        "anyone" -> Just PTAnyone
        "domain" -> Just PTDomain
        "group" -> Just PTGroup
        "user" -> Just PTUser
        _ -> Nothing

instance ToText PermissionType where
    toText = \case
        PTAnyone -> "anyone"
        PTDomain -> "domain"
        PTGroup -> "group"
        PTUser -> "user"

instance FromJSON PermissionType where
    parseJSON = parseJSONText "PermissionType"

instance ToJSON PermissionType where
    toJSON = toJSONText
