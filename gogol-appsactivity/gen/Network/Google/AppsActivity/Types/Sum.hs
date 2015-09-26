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

-- | Indicates the Google Drive permissions role. The role determines a
-- user\'s ability to read, write, or comment on the file.
data PermissionRole
    = PRCommenter
      -- ^ @commenter@
    | PROwner
      -- ^ @owner@
    | PRReader
      -- ^ @reader@
    | PRWriter
      -- ^ @writer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionRole

instance FromText PermissionRole where
    fromText = \case
        "commenter" -> Just PRCommenter
        "owner" -> Just PROwner
        "reader" -> Just PRReader
        "writer" -> Just PRWriter
        _ -> Nothing

instance ToText PermissionRole where
    toText = \case
        PRCommenter -> "commenter"
        PROwner -> "owner"
        PRReader -> "reader"
        PRWriter -> "writer"

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
