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
-- Module      : Gogol.DriveActivity.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DriveActivity.Types
  ( -- * Configuration
    driveActivityService,

    -- * OAuth Scopes
    Drive'Activity,
    Drive'Activity'Readonly,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Action
    Action (..),
    newAction,

    -- ** ActionDetail
    ActionDetail (..),
    newActionDetail,

    -- ** Actor
    Actor (..),
    newActor,

    -- ** Administrator
    Administrator (..),
    newAdministrator,

    -- ** AnonymousUser
    AnonymousUser (..),
    newAnonymousUser,

    -- ** Anyone
    Anyone (..),
    newAnyone,

    -- ** ApplicationReference
    ApplicationReference (..),
    newApplicationReference,

    -- ** ApplicationReference_Type
    ApplicationReference_Type (..),

    -- ** Assignment
    Assignment (..),
    newAssignment,

    -- ** Assignment_Subtype
    Assignment_Subtype (..),

    -- ** Comment
    Comment (..),
    newComment,

    -- ** ConsolidationStrategy
    ConsolidationStrategy (..),
    newConsolidationStrategy,

    -- ** Copy
    Copy (..),
    newCopy,

    -- ** Create
    Create (..),
    newCreate,

    -- ** DataLeakPreventionChange
    DataLeakPreventionChange (..),
    newDataLeakPreventionChange,

    -- ** DataLeakPreventionChange_Type
    DataLeakPreventionChange_Type (..),

    -- ** Delete'
    Delete' (..),
    newDelete,

    -- ** Delete_Type
    Delete_Type (..),

    -- ** DeletedUser
    DeletedUser (..),
    newDeletedUser,

    -- ** Domain
    Domain (..),
    newDomain,

    -- ** Drive
    Drive (..),
    newDrive,

    -- ** DriveActivity
    DriveActivity (..),
    newDriveActivity,

    -- ** DriveFile
    DriveFile (..),
    newDriveFile,

    -- ** DriveFolder
    DriveFolder (..),
    newDriveFolder,

    -- ** DriveFolder_Type
    DriveFolder_Type (..),

    -- ** DriveItem
    DriveItem (..),
    newDriveItem,

    -- ** DriveItemReference
    DriveItemReference (..),
    newDriveItemReference,

    -- ** DriveReference
    DriveReference (..),
    newDriveReference,

    -- ** Edit
    Edit (..),
    newEdit,

    -- ** File
    File (..),
    newFile,

    -- ** FileComment
    FileComment (..),
    newFileComment,

    -- ** Folder
    Folder (..),
    newFolder,

    -- ** Folder_Type
    Folder_Type (..),

    -- ** Group
    Group (..),
    newGroup,

    -- ** Impersonation
    Impersonation (..),
    newImpersonation,

    -- ** KnownUser
    KnownUser (..),
    newKnownUser,

    -- ** Legacy
    Legacy (..),
    newLegacy,

    -- ** Move
    Move (..),
    newMove,

    -- ** New
    New (..),
    newNew,

    -- ** NoConsolidation
    NoConsolidation (..),
    newNoConsolidation,

    -- ** Owner
    Owner (..),
    newOwner,

    -- ** Permission
    Permission (..),
    newPermission,

    -- ** Permission_Role
    Permission_Role (..),

    -- ** PermissionChange
    PermissionChange (..),
    newPermissionChange,

    -- ** Post'
    Post' (..),
    newPost,

    -- ** Post_Subtype
    Post_Subtype (..),

    -- ** QueryDriveActivityRequest
    QueryDriveActivityRequest (..),
    newQueryDriveActivityRequest,

    -- ** QueryDriveActivityResponse
    QueryDriveActivityResponse (..),
    newQueryDriveActivityResponse,

    -- ** Rename
    Rename (..),
    newRename,

    -- ** Restore
    Restore (..),
    newRestore,

    -- ** Restore_Type
    Restore_Type (..),

    -- ** RestrictionChange
    RestrictionChange (..),
    newRestrictionChange,

    -- ** RestrictionChange_Feature
    RestrictionChange_Feature (..),

    -- ** RestrictionChange_NewRestriction
    RestrictionChange_NewRestriction (..),

    -- ** SettingsChange
    SettingsChange (..),
    newSettingsChange,

    -- ** Suggestion
    Suggestion (..),
    newSuggestion,

    -- ** Suggestion_Subtype
    Suggestion_Subtype (..),

    -- ** SystemEvent
    SystemEvent (..),
    newSystemEvent,

    -- ** SystemEvent_Type
    SystemEvent_Type (..),

    -- ** Target
    Target (..),
    newTarget,

    -- ** TargetReference
    TargetReference (..),
    newTargetReference,

    -- ** TeamDrive
    TeamDrive (..),
    newTeamDrive,

    -- ** TeamDriveReference
    TeamDriveReference (..),
    newTeamDriveReference,

    -- ** TimeRange
    TimeRange (..),
    newTimeRange,

    -- ** UnknownUser
    UnknownUser (..),
    newUnknownUser,

    -- ** Upload
    Upload (..),
    newUpload,

    -- ** User
    User (..),
    newUser,
  )
where

import Gogol.DriveActivity.Internal.Product
import Gogol.DriveActivity.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v2@ of the Drive Activity API. This contains the host and root path used as a starting point for constructing service requests.
driveActivityService :: Core.ServiceConfig
driveActivityService =
  Core.defaultService
    (Core.ServiceId "driveactivity:v2")
    "driveactivity.googleapis.com"

-- | View and add to the activity record of files in your Google Drive
type Drive'Activity = "https://www.googleapis.com/auth/drive.activity"

-- | View the activity record of files in your Google Drive
type Drive'Activity'Readonly = "https://www.googleapis.com/auth/drive.activity.readonly"
