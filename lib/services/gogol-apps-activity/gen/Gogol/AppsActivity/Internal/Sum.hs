{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsActivity.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AppsActivity.Internal.Sum
  ( -- * Event_AdditionalEventTypesItem
    Event_AdditionalEventTypesItem
      ( Event_AdditionalEventTypesItem_Comment,
        Event_AdditionalEventTypesItem_Create,
        Event_AdditionalEventTypesItem_Edit,
        Event_AdditionalEventTypesItem_EmptyTrash,
        Event_AdditionalEventTypesItem_Move,
        Event_AdditionalEventTypesItem_PermissionChange,
        Event_AdditionalEventTypesItem_Rename,
        Event_AdditionalEventTypesItem_Trash,
        Event_AdditionalEventTypesItem_Unknown,
        Event_AdditionalEventTypesItem_Untrash,
        Event_AdditionalEventTypesItem_Upload,
        ..
      ),

    -- * Event_PrimaryEventType
    Event_PrimaryEventType
      ( Event_PrimaryEventType_Comment,
        Event_PrimaryEventType_Create,
        Event_PrimaryEventType_Edit,
        Event_PrimaryEventType_EmptyTrash,
        Event_PrimaryEventType_Move,
        Event_PrimaryEventType_PermissionChange,
        Event_PrimaryEventType_Rename,
        Event_PrimaryEventType_Trash,
        Event_PrimaryEventType_Unknown,
        Event_PrimaryEventType_Untrash,
        Event_PrimaryEventType_Upload,
        ..
      ),

    -- * Permission_Role
    Permission_Role
      ( Permission_Role_Commenter,
        Permission_Role_FileOrganizer,
        Permission_Role_Owner,
        Permission_Role_PublishedReader,
        Permission_Role_Reader,
        Permission_Role_Writer,
        ..
      ),

    -- * Permission_Type
    Permission_Type
      ( Permission_Type_Anyone,
        Permission_Type_Domain,
        Permission_Type_Group,
        Permission_Type_User,
        ..
      ),

    -- * ActivitiesListGroupingStrategy
    ActivitiesListGroupingStrategy
      ( ActivitiesListGroupingStrategy_DriveUi,
        ActivitiesListGroupingStrategy_None,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

newtype Event_AdditionalEventTypesItem = Event_AdditionalEventTypesItem {fromEvent_AdditionalEventTypesItem :: Core.Text}
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

-- |
pattern Event_AdditionalEventTypesItem_Comment :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Comment = Event_AdditionalEventTypesItem "comment"

-- |
pattern Event_AdditionalEventTypesItem_Create :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Create = Event_AdditionalEventTypesItem "create"

-- |
pattern Event_AdditionalEventTypesItem_Edit :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Edit = Event_AdditionalEventTypesItem "edit"

-- |
pattern Event_AdditionalEventTypesItem_EmptyTrash :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_EmptyTrash = Event_AdditionalEventTypesItem "emptyTrash"

-- |
pattern Event_AdditionalEventTypesItem_Move :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Move = Event_AdditionalEventTypesItem "move"

-- |
pattern Event_AdditionalEventTypesItem_PermissionChange :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_PermissionChange = Event_AdditionalEventTypesItem "permissionChange"

-- |
pattern Event_AdditionalEventTypesItem_Rename :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Rename = Event_AdditionalEventTypesItem "rename"

-- |
pattern Event_AdditionalEventTypesItem_Trash :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Trash = Event_AdditionalEventTypesItem "trash"

-- |
pattern Event_AdditionalEventTypesItem_Unknown :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Unknown = Event_AdditionalEventTypesItem "unknown"

-- |
pattern Event_AdditionalEventTypesItem_Untrash :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Untrash = Event_AdditionalEventTypesItem "untrash"

-- |
pattern Event_AdditionalEventTypesItem_Upload :: Event_AdditionalEventTypesItem
pattern Event_AdditionalEventTypesItem_Upload = Event_AdditionalEventTypesItem "upload"

{-# COMPLETE
  Event_AdditionalEventTypesItem_Comment,
  Event_AdditionalEventTypesItem_Create,
  Event_AdditionalEventTypesItem_Edit,
  Event_AdditionalEventTypesItem_EmptyTrash,
  Event_AdditionalEventTypesItem_Move,
  Event_AdditionalEventTypesItem_PermissionChange,
  Event_AdditionalEventTypesItem_Rename,
  Event_AdditionalEventTypesItem_Trash,
  Event_AdditionalEventTypesItem_Unknown,
  Event_AdditionalEventTypesItem_Untrash,
  Event_AdditionalEventTypesItem_Upload,
  Event_AdditionalEventTypesItem
  #-}

-- | The main type of event that occurred.
newtype Event_PrimaryEventType = Event_PrimaryEventType {fromEvent_PrimaryEventType :: Core.Text}
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

-- |
pattern Event_PrimaryEventType_Comment :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Comment = Event_PrimaryEventType "comment"

-- |
pattern Event_PrimaryEventType_Create :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Create = Event_PrimaryEventType "create"

-- |
pattern Event_PrimaryEventType_Edit :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Edit = Event_PrimaryEventType "edit"

-- |
pattern Event_PrimaryEventType_EmptyTrash :: Event_PrimaryEventType
pattern Event_PrimaryEventType_EmptyTrash = Event_PrimaryEventType "emptyTrash"

-- |
pattern Event_PrimaryEventType_Move :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Move = Event_PrimaryEventType "move"

-- |
pattern Event_PrimaryEventType_PermissionChange :: Event_PrimaryEventType
pattern Event_PrimaryEventType_PermissionChange = Event_PrimaryEventType "permissionChange"

-- |
pattern Event_PrimaryEventType_Rename :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Rename = Event_PrimaryEventType "rename"

-- |
pattern Event_PrimaryEventType_Trash :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Trash = Event_PrimaryEventType "trash"

-- |
pattern Event_PrimaryEventType_Unknown :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Unknown = Event_PrimaryEventType "unknown"

-- |
pattern Event_PrimaryEventType_Untrash :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Untrash = Event_PrimaryEventType "untrash"

-- |
pattern Event_PrimaryEventType_Upload :: Event_PrimaryEventType
pattern Event_PrimaryEventType_Upload = Event_PrimaryEventType "upload"

{-# COMPLETE
  Event_PrimaryEventType_Comment,
  Event_PrimaryEventType_Create,
  Event_PrimaryEventType_Edit,
  Event_PrimaryEventType_EmptyTrash,
  Event_PrimaryEventType_Move,
  Event_PrimaryEventType_PermissionChange,
  Event_PrimaryEventType_Rename,
  Event_PrimaryEventType_Trash,
  Event_PrimaryEventType_Unknown,
  Event_PrimaryEventType_Untrash,
  Event_PrimaryEventType_Upload,
  Event_PrimaryEventType
  #-}

-- | Indicates the Google Drive permissions role. The role determines a user\'s ability to read, write, or comment on the file.
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

-- |
pattern Permission_Role_Commenter :: Permission_Role
pattern Permission_Role_Commenter = Permission_Role "commenter"

-- |
pattern Permission_Role_FileOrganizer :: Permission_Role
pattern Permission_Role_FileOrganizer = Permission_Role "fileOrganizer"

-- |
pattern Permission_Role_Owner :: Permission_Role
pattern Permission_Role_Owner = Permission_Role "owner"

-- |
pattern Permission_Role_PublishedReader :: Permission_Role
pattern Permission_Role_PublishedReader = Permission_Role "publishedReader"

-- |
pattern Permission_Role_Reader :: Permission_Role
pattern Permission_Role_Reader = Permission_Role "reader"

-- |
pattern Permission_Role_Writer :: Permission_Role
pattern Permission_Role_Writer = Permission_Role "writer"

{-# COMPLETE
  Permission_Role_Commenter,
  Permission_Role_FileOrganizer,
  Permission_Role_Owner,
  Permission_Role_PublishedReader,
  Permission_Role_Reader,
  Permission_Role_Writer,
  Permission_Role
  #-}

-- | Indicates how widely permissions are granted.
newtype Permission_Type = Permission_Type {fromPermission_Type :: Core.Text}
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

-- |
pattern Permission_Type_Anyone :: Permission_Type
pattern Permission_Type_Anyone = Permission_Type "anyone"

-- |
pattern Permission_Type_Domain :: Permission_Type
pattern Permission_Type_Domain = Permission_Type "domain"

-- |
pattern Permission_Type_Group :: Permission_Type
pattern Permission_Type_Group = Permission_Type "group"

-- |
pattern Permission_Type_User :: Permission_Type
pattern Permission_Type_User = Permission_Type "user"

{-# COMPLETE
  Permission_Type_Anyone,
  Permission_Type_Domain,
  Permission_Type_Group,
  Permission_Type_User,
  Permission_Type
  #-}

-- | Indicates the strategy to use when grouping singleEvents items in the associated combinedEvent object.
newtype ActivitiesListGroupingStrategy = ActivitiesListGroupingStrategy {fromActivitiesListGroupingStrategy :: Core.Text}
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

-- |
pattern ActivitiesListGroupingStrategy_DriveUi :: ActivitiesListGroupingStrategy
pattern ActivitiesListGroupingStrategy_DriveUi = ActivitiesListGroupingStrategy "driveUi"

-- |
pattern ActivitiesListGroupingStrategy_None :: ActivitiesListGroupingStrategy
pattern ActivitiesListGroupingStrategy_None = ActivitiesListGroupingStrategy "none"

{-# COMPLETE
  ActivitiesListGroupingStrategy_DriveUi,
  ActivitiesListGroupingStrategy_None,
  ActivitiesListGroupingStrategy
  #-}
