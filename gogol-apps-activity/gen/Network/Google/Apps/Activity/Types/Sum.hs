{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Activity.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Activity.Types.Sum where

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

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Indicates the strategy to use when grouping singleEvents items in the
-- associated combinedEvent object.
data ActivitiesList'GroupingStrategy
    = DriveUi
      -- ^ @driveUi@
    | None
      -- ^ @none@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitiesList'GroupingStrategy

instance FromText ActivitiesList'GroupingStrategy where
    fromText = \case
        "driveUi" -> Just DriveUi
        "none" -> Just None
        _ -> Nothing

instance ToText ActivitiesList'GroupingStrategy where
    toText = \case
        DriveUi -> "driveUi"
        None -> "none"

instance FromJSON ActivitiesList'GroupingStrategy where
    parseJSON = parseJSONText "ActivitiesList'GroupingStrategy"

instance ToJSON ActivitiesList'GroupingStrategy where
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

data EventItemAdditionalEventTypes
    = EIAETComment
      -- ^ @comment@
    | EIAETCreate
      -- ^ @create@
    | EIAETEdit
      -- ^ @edit@
    | EIAETEmptyTrash
      -- ^ @emptyTrash@
    | EIAETMove
      -- ^ @move@
    | EIAETPermissionChange
      -- ^ @permissionChange@
    | EIAETRename
      -- ^ @rename@
    | EIAETTrash
      -- ^ @trash@
    | EIAETUnknown
      -- ^ @unknown@
    | EIAETUntrash
      -- ^ @untrash@
    | EIAETUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventItemAdditionalEventTypes

instance FromText EventItemAdditionalEventTypes where
    fromText = \case
        "comment" -> Just EIAETComment
        "create" -> Just EIAETCreate
        "edit" -> Just EIAETEdit
        "emptyTrash" -> Just EIAETEmptyTrash
        "move" -> Just EIAETMove
        "permissionChange" -> Just EIAETPermissionChange
        "rename" -> Just EIAETRename
        "trash" -> Just EIAETTrash
        "unknown" -> Just EIAETUnknown
        "untrash" -> Just EIAETUntrash
        "upload" -> Just EIAETUpload
        _ -> Nothing

instance ToText EventItemAdditionalEventTypes where
    toText = \case
        EIAETComment -> "comment"
        EIAETCreate -> "create"
        EIAETEdit -> "edit"
        EIAETEmptyTrash -> "emptyTrash"
        EIAETMove -> "move"
        EIAETPermissionChange -> "permissionChange"
        EIAETRename -> "rename"
        EIAETTrash -> "trash"
        EIAETUnknown -> "unknown"
        EIAETUntrash -> "untrash"
        EIAETUpload -> "upload"

instance FromJSON EventItemAdditionalEventTypes where
    parseJSON = parseJSONText "EventItemAdditionalEventTypes"

instance ToJSON EventItemAdditionalEventTypes where
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
