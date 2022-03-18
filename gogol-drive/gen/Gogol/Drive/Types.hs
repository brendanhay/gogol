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
-- Module      : Gogol.Drive.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Drive.Types
  ( -- * Configuration
    driveService,

    -- * OAuth Scopes
    driveScope,
    driveAppdataScope,
    driveFileScope,
    driveMetadataScope,
    driveMetadataReadOnlyScope,
    drivePhotosReadOnlyScope,
    driveReadOnlyScope,
    driveScriptsScope,

    -- * Types

    -- ** About
    About (..),
    newAbout,

    -- ** About_DriveThemesItem
    About_DriveThemesItem (..),
    newAbout_DriveThemesItem,

    -- ** About_ExportFormats
    About_ExportFormats (..),
    newAbout_ExportFormats,

    -- ** About_ImportFormats
    About_ImportFormats (..),
    newAbout_ImportFormats,

    -- ** About_MaxImportSizes
    About_MaxImportSizes (..),
    newAbout_MaxImportSizes,

    -- ** About_StorageQuota
    About_StorageQuota (..),
    newAbout_StorageQuota,

    -- ** About_TeamDriveThemesItem
    About_TeamDriveThemesItem (..),
    newAbout_TeamDriveThemesItem,

    -- ** Change
    Change (..),
    newChange,

    -- ** ChangeList
    ChangeList (..),
    newChangeList,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** Comment_QuotedFileContent
    Comment_QuotedFileContent (..),
    newComment_QuotedFileContent,

    -- ** CommentList
    CommentList (..),
    newCommentList,

    -- ** ContentRestriction
    ContentRestriction (..),
    newContentRestriction,

    -- ** Drive
    Drive (..),
    newDrive,

    -- ** Drive_BackgroundImageFile
    Drive_BackgroundImageFile (..),
    newDrive_BackgroundImageFile,

    -- ** Drive_Capabilities
    Drive_Capabilities (..),
    newDrive_Capabilities,

    -- ** Drive_Restrictions
    Drive_Restrictions (..),
    newDrive_Restrictions,

    -- ** DriveList
    DriveList (..),
    newDriveList,

    -- ** File
    File (..),
    newFile,

    -- ** File_AppProperties
    File_AppProperties (..),
    newFile_AppProperties,

    -- ** File_Capabilities
    File_Capabilities (..),
    newFile_Capabilities,

    -- ** File_ContentHints
    File_ContentHints (..),
    newFile_ContentHints,

    -- ** File_ContentHints_Thumbnail
    File_ContentHints_Thumbnail (..),
    newFile_ContentHints_Thumbnail,

    -- ** File_ExportLinks
    File_ExportLinks (..),
    newFile_ExportLinks,

    -- ** File_ImageMediaMetadata
    File_ImageMediaMetadata (..),
    newFile_ImageMediaMetadata,

    -- ** File_ImageMediaMetadata_Location
    File_ImageMediaMetadata_Location (..),
    newFile_ImageMediaMetadata_Location,

    -- ** File_LinkShareMetadata
    File_LinkShareMetadata (..),
    newFile_LinkShareMetadata,

    -- ** File_Properties
    File_Properties (..),
    newFile_Properties,

    -- ** File_ShortcutDetails
    File_ShortcutDetails (..),
    newFile_ShortcutDetails,

    -- ** File_VideoMediaMetadata
    File_VideoMediaMetadata (..),
    newFile_VideoMediaMetadata,

    -- ** FileList
    FileList (..),
    newFileList,

    -- ** GeneratedIds
    GeneratedIds (..),
    newGeneratedIds,

    -- ** Permission
    Permission (..),
    newPermission,

    -- ** Permission_PermissionDetailsItem
    Permission_PermissionDetailsItem (..),
    newPermission_PermissionDetailsItem,

    -- ** Permission_TeamDrivePermissionDetailsItem
    Permission_TeamDrivePermissionDetailsItem (..),
    newPermission_TeamDrivePermissionDetailsItem,

    -- ** PermissionList
    PermissionList (..),
    newPermissionList,

    -- ** Reply
    Reply (..),
    newReply,

    -- ** ReplyList
    ReplyList (..),
    newReplyList,

    -- ** Revision
    Revision (..),
    newRevision,

    -- ** Revision_ExportLinks
    Revision_ExportLinks (..),
    newRevision_ExportLinks,

    -- ** RevisionList
    RevisionList (..),
    newRevisionList,

    -- ** StartPageToken
    StartPageToken (..),
    newStartPageToken,

    -- ** TeamDrive
    TeamDrive (..),
    newTeamDrive,

    -- ** TeamDrive_BackgroundImageFile
    TeamDrive_BackgroundImageFile (..),
    newTeamDrive_BackgroundImageFile,

    -- ** TeamDrive_Capabilities
    TeamDrive_Capabilities (..),
    newTeamDrive_Capabilities,

    -- ** TeamDrive_Restrictions
    TeamDrive_Restrictions (..),
    newTeamDrive_Restrictions,

    -- ** TeamDriveList
    TeamDriveList (..),
    newTeamDriveList,

    -- ** User
    User (..),
    newUser,

    -- ** FilesListCorpus
    FilesListCorpus (..),
  )
where

import Gogol.Drive.Internal.Product
import Gogol.Drive.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v3@ of the Drive API. This contains the host and root path used as a starting point for constructing service requests.
driveService :: Core.ServiceConfig
driveService =
  Core.defaultService
    (Core.ServiceId "drive:v3")
    "www.googleapis.com"

-- | See, edit, create, and delete all of your Google Drive files
driveScope :: Core.Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Core.Proxy

-- | See, create, and delete its own configuration data in your Google Drive
driveAppdataScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.appdata"]
driveAppdataScope = Core.Proxy

-- | See, edit, create, and delete only the specific Google Drive files you use with this app
driveFileScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.file"]
driveFileScope = Core.Proxy

-- | View and manage metadata of files in your Google Drive
driveMetadataScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.metadata"]
driveMetadataScope = Core.Proxy

-- | See information about your Google Drive files
driveMetadataReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.metadata.readonly"]
driveMetadataReadOnlyScope = Core.Proxy

-- | View the photos, videos and albums in your Google Photos
drivePhotosReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.photos.readonly"]
drivePhotosReadOnlyScope = Core.Proxy

-- | See and download all your Google Drive files
driveReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.readonly"]
driveReadOnlyScope = Core.Proxy

-- | Modify your Google Apps Script scripts\' behavior
driveScriptsScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.scripts"]
driveScriptsScope = Core.Proxy
