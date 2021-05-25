{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsActivity.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsActivity.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventPrimaryEventType

instance FromHttpApiData EventPrimaryEventType where
    parseQueryParam = \case
        "comment" -> Right EPETComment
        "create" -> Right EPETCreate
        "edit" -> Right EPETEdit
        "emptyTrash" -> Right EPETEmptyTrash
        "move" -> Right EPETMove
        "permissionChange" -> Right EPETPermissionChange
        "rename" -> Right EPETRename
        "trash" -> Right EPETTrash
        "unknown" -> Right EPETUnknown
        "untrash" -> Right EPETUntrash
        "upload" -> Right EPETUpload
        x -> Left ("Unable to parse EventPrimaryEventType from: " <> x)

instance ToHttpApiData EventPrimaryEventType where
    toQueryParam = \case
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
    | FileOrganizer
      -- ^ @fileOrganizer@
    | Owner
      -- ^ @owner@
    | PublishedReader
      -- ^ @publishedReader@
    | Reader
      -- ^ @reader@
    | Writer
      -- ^ @writer@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PermissionRole

instance FromHttpApiData PermissionRole where
    parseQueryParam = \case
        "commenter" -> Right Commenter
        "fileOrganizer" -> Right FileOrganizer
        "owner" -> Right Owner
        "publishedReader" -> Right PublishedReader
        "reader" -> Right Reader
        "writer" -> Right Writer
        x -> Left ("Unable to parse PermissionRole from: " <> x)

instance ToHttpApiData PermissionRole where
    toQueryParam = \case
        Commenter -> "commenter"
        FileOrganizer -> "fileOrganizer"
        Owner -> "owner"
        PublishedReader -> "publishedReader"
        Reader -> "reader"
        Writer -> "writer"

instance FromJSON PermissionRole where
    parseJSON = parseJSONText "PermissionRole"

instance ToJSON PermissionRole where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PermissionType

instance FromHttpApiData PermissionType where
    parseQueryParam = \case
        "anyone" -> Right PTAnyone
        "domain" -> Right PTDomain
        "group" -> Right PTGroup
        "user" -> Right PTUser
        x -> Left ("Unable to parse PermissionType from: " <> x)

instance ToHttpApiData PermissionType where
    toQueryParam = \case
        PTAnyone -> "anyone"
        PTDomain -> "domain"
        PTGroup -> "group"
        PTUser -> "user"

instance FromJSON PermissionType where
    parseJSON = parseJSONText "PermissionType"

instance ToJSON PermissionType where
    toJSON = toJSONText

data EventAdditionalEventTypesItem
    = EAETIComment
      -- ^ @comment@
    | EAETICreate
      -- ^ @create@
    | EAETIEdit
      -- ^ @edit@
    | EAETIEmptyTrash
      -- ^ @emptyTrash@
    | EAETIMove
      -- ^ @move@
    | EAETIPermissionChange
      -- ^ @permissionChange@
    | EAETIRename
      -- ^ @rename@
    | EAETITrash
      -- ^ @trash@
    | EAETIUnknown
      -- ^ @unknown@
    | EAETIUntrash
      -- ^ @untrash@
    | EAETIUpload
      -- ^ @upload@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EventAdditionalEventTypesItem

instance FromHttpApiData EventAdditionalEventTypesItem where
    parseQueryParam = \case
        "comment" -> Right EAETIComment
        "create" -> Right EAETICreate
        "edit" -> Right EAETIEdit
        "emptyTrash" -> Right EAETIEmptyTrash
        "move" -> Right EAETIMove
        "permissionChange" -> Right EAETIPermissionChange
        "rename" -> Right EAETIRename
        "trash" -> Right EAETITrash
        "unknown" -> Right EAETIUnknown
        "untrash" -> Right EAETIUntrash
        "upload" -> Right EAETIUpload
        x -> Left ("Unable to parse EventAdditionalEventTypesItem from: " <> x)

instance ToHttpApiData EventAdditionalEventTypesItem where
    toQueryParam = \case
        EAETIComment -> "comment"
        EAETICreate -> "create"
        EAETIEdit -> "edit"
        EAETIEmptyTrash -> "emptyTrash"
        EAETIMove -> "move"
        EAETIPermissionChange -> "permissionChange"
        EAETIRename -> "rename"
        EAETITrash -> "trash"
        EAETIUnknown -> "unknown"
        EAETIUntrash -> "untrash"
        EAETIUpload -> "upload"

instance FromJSON EventAdditionalEventTypesItem where
    parseJSON = parseJSONText "EventAdditionalEventTypesItem"

instance ToJSON EventAdditionalEventTypesItem where
    toJSON = toJSONText

-- | Indicates the strategy to use when grouping singleEvents items in the
-- associated combinedEvent object.
data ActivitiesListGroupingStrategy
    = DriveUi
      -- ^ @driveUi@
    | None
      -- ^ @none@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitiesListGroupingStrategy

instance FromHttpApiData ActivitiesListGroupingStrategy where
    parseQueryParam = \case
        "driveUi" -> Right DriveUi
        "none" -> Right None
        x -> Left ("Unable to parse ActivitiesListGroupingStrategy from: " <> x)

instance ToHttpApiData ActivitiesListGroupingStrategy where
    toQueryParam = \case
        DriveUi -> "driveUi"
        None -> "none"

instance FromJSON ActivitiesListGroupingStrategy where
    parseJSON = parseJSONText "ActivitiesListGroupingStrategy"

instance ToJSON ActivitiesListGroupingStrategy where
    toJSON = toJSONText
