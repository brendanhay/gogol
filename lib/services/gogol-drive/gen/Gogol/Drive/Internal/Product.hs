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
-- Module      : Gogol.Drive.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Drive.Internal.Product
  ( -- * About
    About (..),
    newAbout,

    -- * About_DriveThemesItem
    About_DriveThemesItem (..),
    newAbout_DriveThemesItem,

    -- * About_ExportFormats
    About_ExportFormats (..),
    newAbout_ExportFormats,

    -- * About_ImportFormats
    About_ImportFormats (..),
    newAbout_ImportFormats,

    -- * About_MaxImportSizes
    About_MaxImportSizes (..),
    newAbout_MaxImportSizes,

    -- * About_StorageQuota
    About_StorageQuota (..),
    newAbout_StorageQuota,

    -- * About_TeamDriveThemesItem
    About_TeamDriveThemesItem (..),
    newAbout_TeamDriveThemesItem,

    -- * Change
    Change (..),
    newChange,

    -- * ChangeList
    ChangeList (..),
    newChangeList,

    -- * Channel
    Channel (..),
    newChannel,

    -- * Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- * Comment
    Comment (..),
    newComment,

    -- * Comment_QuotedFileContent
    Comment_QuotedFileContent (..),
    newComment_QuotedFileContent,

    -- * CommentList
    CommentList (..),
    newCommentList,

    -- * ContentRestriction
    ContentRestriction (..),
    newContentRestriction,

    -- * Drive
    Drive (..),
    newDrive,

    -- * Drive_BackgroundImageFile
    Drive_BackgroundImageFile (..),
    newDrive_BackgroundImageFile,

    -- * Drive_Capabilities
    Drive_Capabilities (..),
    newDrive_Capabilities,

    -- * Drive_Restrictions
    Drive_Restrictions (..),
    newDrive_Restrictions,

    -- * DriveList
    DriveList (..),
    newDriveList,

    -- * File
    File (..),
    newFile,

    -- * File_AppProperties
    File_AppProperties (..),
    newFile_AppProperties,

    -- * File_Capabilities
    File_Capabilities (..),
    newFile_Capabilities,

    -- * File_ContentHints
    File_ContentHints (..),
    newFile_ContentHints,

    -- * File_ContentHints_Thumbnail
    File_ContentHints_Thumbnail (..),
    newFile_ContentHints_Thumbnail,

    -- * File_ExportLinks
    File_ExportLinks (..),
    newFile_ExportLinks,

    -- * File_ImageMediaMetadata
    File_ImageMediaMetadata (..),
    newFile_ImageMediaMetadata,

    -- * File_ImageMediaMetadata_Location
    File_ImageMediaMetadata_Location (..),
    newFile_ImageMediaMetadata_Location,

    -- * File_LinkShareMetadata
    File_LinkShareMetadata (..),
    newFile_LinkShareMetadata,

    -- * File_Properties
    File_Properties (..),
    newFile_Properties,

    -- * File_ShortcutDetails
    File_ShortcutDetails (..),
    newFile_ShortcutDetails,

    -- * File_VideoMediaMetadata
    File_VideoMediaMetadata (..),
    newFile_VideoMediaMetadata,

    -- * FileList
    FileList (..),
    newFileList,

    -- * GeneratedIds
    GeneratedIds (..),
    newGeneratedIds,

    -- * Permission
    Permission (..),
    newPermission,

    -- * Permission_PermissionDetailsItem
    Permission_PermissionDetailsItem (..),
    newPermission_PermissionDetailsItem,

    -- * Permission_TeamDrivePermissionDetailsItem
    Permission_TeamDrivePermissionDetailsItem (..),
    newPermission_TeamDrivePermissionDetailsItem,

    -- * PermissionList
    PermissionList (..),
    newPermissionList,

    -- * Reply
    Reply (..),
    newReply,

    -- * ReplyList
    ReplyList (..),
    newReplyList,

    -- * Revision
    Revision (..),
    newRevision,

    -- * Revision_ExportLinks
    Revision_ExportLinks (..),
    newRevision_ExportLinks,

    -- * RevisionList
    RevisionList (..),
    newRevisionList,

    -- * StartPageToken
    StartPageToken (..),
    newStartPageToken,

    -- * TeamDrive
    TeamDrive (..),
    newTeamDrive,

    -- * TeamDrive_BackgroundImageFile
    TeamDrive_BackgroundImageFile (..),
    newTeamDrive_BackgroundImageFile,

    -- * TeamDrive_Capabilities
    TeamDrive_Capabilities (..),
    newTeamDrive_Capabilities,

    -- * TeamDrive_Restrictions
    TeamDrive_Restrictions (..),
    newTeamDrive_Restrictions,

    -- * TeamDriveList
    TeamDriveList (..),
    newTeamDriveList,

    -- * User
    User (..),
    newUser,
  )
where

import Gogol.Drive.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Information about the user, the user\'s Drive, and system capabilities.
--
-- /See:/ 'newAbout' smart constructor.
data About = About
  { -- | Whether the user has installed the requesting app.
    appInstalled :: (Core.Maybe Core.Bool),
    -- | Whether the user can create shared drives.
    canCreateDrives :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canCreateDrives instead.
    canCreateTeamDrives :: (Core.Maybe Core.Bool),
    -- | A list of themes that are supported for shared drives.
    driveThemes :: (Core.Maybe [About_DriveThemesItem]),
    -- | A map of source MIME type to possible targets for all supported exports.
    exportFormats :: (Core.Maybe About_ExportFormats),
    -- | The currently supported folder colors as RGB hex strings.
    folderColorPalette :: (Core.Maybe [Core.Text]),
    -- | A map of source MIME type to possible targets for all supported imports.
    importFormats :: (Core.Maybe About_ImportFormats),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#about\".
    kind :: Core.Text,
    -- | A map of maximum import sizes by MIME type, in bytes.
    maxImportSizes :: (Core.Maybe About_MaxImportSizes),
    -- | The maximum upload size in bytes.
    maxUploadSize :: (Core.Maybe Core.Int64),
    -- | The user\'s storage quota limits and usage. All fields are measured in bytes.
    storageQuota :: (Core.Maybe About_StorageQuota),
    -- | Deprecated - use driveThemes instead.
    teamDriveThemes :: (Core.Maybe [About_TeamDriveThemesItem]),
    -- | The authenticated user.
    user :: (Core.Maybe User)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About' with the minimum fields required to make a request.
newAbout ::
  About
newAbout =
  About
    { appInstalled = Core.Nothing,
      canCreateDrives = Core.Nothing,
      canCreateTeamDrives = Core.Nothing,
      driveThemes = Core.Nothing,
      exportFormats = Core.Nothing,
      folderColorPalette = Core.Nothing,
      importFormats = Core.Nothing,
      kind = "drive#about",
      maxImportSizes = Core.Nothing,
      maxUploadSize = Core.Nothing,
      storageQuota = Core.Nothing,
      teamDriveThemes = Core.Nothing,
      user = Core.Nothing
    }

instance Core.FromJSON About where
  parseJSON =
    Core.withObject
      "About"
      ( \o ->
          About
            Core.<$> (o Core..:? "appInstalled")
            Core.<*> (o Core..:? "canCreateDrives")
            Core.<*> (o Core..:? "canCreateTeamDrives")
            Core.<*> (o Core..:? "driveThemes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "exportFormats")
            Core.<*> ( o Core..:? "folderColorPalette"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "importFormats")
            Core.<*> (o Core..:? "kind" Core..!= "drive#about")
            Core.<*> (o Core..:? "maxImportSizes")
            Core.<*> (o Core..:? "maxUploadSize")
            Core.<*> (o Core..:? "storageQuota")
            Core.<*> (o Core..:? "teamDriveThemes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "user")
      )

instance Core.ToJSON About where
  toJSON About {..} =
    Core.object
      ( Core.catMaybes
          [ ("appInstalled" Core..=) Core.<$> appInstalled,
            ("canCreateDrives" Core..=) Core.<$> canCreateDrives,
            ("canCreateTeamDrives" Core..=)
              Core.<$> canCreateTeamDrives,
            ("driveThemes" Core..=) Core.<$> driveThemes,
            ("exportFormats" Core..=) Core.<$> exportFormats,
            ("folderColorPalette" Core..=)
              Core.<$> folderColorPalette,
            ("importFormats" Core..=) Core.<$> importFormats,
            Core.Just ("kind" Core..= kind),
            ("maxImportSizes" Core..=) Core.<$> maxImportSizes,
            ("maxUploadSize" Core..=) Core.. Core.AsText
              Core.<$> maxUploadSize,
            ("storageQuota" Core..=) Core.<$> storageQuota,
            ("teamDriveThemes" Core..=) Core.<$> teamDriveThemes,
            ("user" Core..=) Core.<$> user
          ]
      )

--
-- /See:/ 'newAbout_DriveThemesItem' smart constructor.
data About_DriveThemesItem = About_DriveThemesItem
  { -- | A link to this theme\'s background image.
    backgroundImageLink :: (Core.Maybe Core.Text),
    -- | The color of this theme as an RGB hex string.
    colorRgb :: (Core.Maybe Core.Text),
    -- | The ID of the theme.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_DriveThemesItem' with the minimum fields required to make a request.
newAbout_DriveThemesItem ::
  About_DriveThemesItem
newAbout_DriveThemesItem =
  About_DriveThemesItem
    { backgroundImageLink = Core.Nothing,
      colorRgb = Core.Nothing,
      id = Core.Nothing
    }

instance Core.FromJSON About_DriveThemesItem where
  parseJSON =
    Core.withObject
      "About_DriveThemesItem"
      ( \o ->
          About_DriveThemesItem
            Core.<$> (o Core..:? "backgroundImageLink")
            Core.<*> (o Core..:? "colorRgb")
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON About_DriveThemesItem where
  toJSON About_DriveThemesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundImageLink" Core..=)
              Core.<$> backgroundImageLink,
            ("colorRgb" Core..=) Core.<$> colorRgb,
            ("id" Core..=) Core.<$> id
          ]
      )

-- | A map of source MIME type to possible targets for all supported exports.
--
-- /See:/ 'newAbout_ExportFormats' smart constructor.
newtype About_ExportFormats = About_ExportFormats
  { -- |
    addtional :: (Core.HashMap Core.Text [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_ExportFormats' with the minimum fields required to make a request.
newAbout_ExportFormats ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text [Core.Text] ->
  About_ExportFormats
newAbout_ExportFormats addtional = About_ExportFormats {addtional = addtional}

instance Core.FromJSON About_ExportFormats where
  parseJSON =
    Core.withObject
      "About_ExportFormats"
      ( \o ->
          About_ExportFormats
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON About_ExportFormats where
  toJSON About_ExportFormats {..} =
    Core.toJSON addtional

-- | A map of source MIME type to possible targets for all supported imports.
--
-- /See:/ 'newAbout_ImportFormats' smart constructor.
newtype About_ImportFormats = About_ImportFormats
  { -- |
    addtional :: (Core.HashMap Core.Text [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_ImportFormats' with the minimum fields required to make a request.
newAbout_ImportFormats ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text [Core.Text] ->
  About_ImportFormats
newAbout_ImportFormats addtional = About_ImportFormats {addtional = addtional}

instance Core.FromJSON About_ImportFormats where
  parseJSON =
    Core.withObject
      "About_ImportFormats"
      ( \o ->
          About_ImportFormats
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON About_ImportFormats where
  toJSON About_ImportFormats {..} =
    Core.toJSON addtional

-- | A map of maximum import sizes by MIME type, in bytes.
--
-- /See:/ 'newAbout_MaxImportSizes' smart constructor.
newtype About_MaxImportSizes = About_MaxImportSizes
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_MaxImportSizes' with the minimum fields required to make a request.
newAbout_MaxImportSizes ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Int64 ->
  About_MaxImportSizes
newAbout_MaxImportSizes addtional = About_MaxImportSizes {addtional = addtional}

instance Core.FromJSON About_MaxImportSizes where
  parseJSON =
    Core.withObject
      "About_MaxImportSizes"
      ( \o ->
          About_MaxImportSizes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON About_MaxImportSizes where
  toJSON About_MaxImportSizes {..} =
    Core.toJSON addtional

-- | The user\'s storage quota limits and usage. All fields are measured in bytes.
--
-- /See:/ 'newAbout_StorageQuota' smart constructor.
data About_StorageQuota = About_StorageQuota
  { -- | The usage limit, if applicable. This will not be present if the user has unlimited storage.
    limit :: (Core.Maybe Core.Int64),
    -- | The total usage across all services.
    usage :: (Core.Maybe Core.Int64),
    -- | The usage by all files in Google Drive.
    usageInDrive :: (Core.Maybe Core.Int64),
    -- | The usage by trashed files in Google Drive.
    usageInDriveTrash :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_StorageQuota' with the minimum fields required to make a request.
newAbout_StorageQuota ::
  About_StorageQuota
newAbout_StorageQuota =
  About_StorageQuota
    { limit = Core.Nothing,
      usage = Core.Nothing,
      usageInDrive = Core.Nothing,
      usageInDriveTrash = Core.Nothing
    }

instance Core.FromJSON About_StorageQuota where
  parseJSON =
    Core.withObject
      "About_StorageQuota"
      ( \o ->
          About_StorageQuota
            Core.<$> (o Core..:? "limit")
            Core.<*> (o Core..:? "usage")
            Core.<*> (o Core..:? "usageInDrive")
            Core.<*> (o Core..:? "usageInDriveTrash")
      )

instance Core.ToJSON About_StorageQuota where
  toJSON About_StorageQuota {..} =
    Core.object
      ( Core.catMaybes
          [ ("limit" Core..=) Core.. Core.AsText Core.<$> limit,
            ("usage" Core..=) Core.. Core.AsText Core.<$> usage,
            ("usageInDrive" Core..=) Core.. Core.AsText
              Core.<$> usageInDrive,
            ("usageInDriveTrash" Core..=) Core.. Core.AsText
              Core.<$> usageInDriveTrash
          ]
      )

--
-- /See:/ 'newAbout_TeamDriveThemesItem' smart constructor.
data About_TeamDriveThemesItem = About_TeamDriveThemesItem
  { -- | Deprecated - use driveThemes\/backgroundImageLink instead.
    backgroundImageLink :: (Core.Maybe Core.Text),
    -- | Deprecated - use driveThemes\/colorRgb instead.
    colorRgb :: (Core.Maybe Core.Text),
    -- | Deprecated - use driveThemes\/id instead.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'About_TeamDriveThemesItem' with the minimum fields required to make a request.
newAbout_TeamDriveThemesItem ::
  About_TeamDriveThemesItem
newAbout_TeamDriveThemesItem =
  About_TeamDriveThemesItem
    { backgroundImageLink = Core.Nothing,
      colorRgb = Core.Nothing,
      id = Core.Nothing
    }

instance Core.FromJSON About_TeamDriveThemesItem where
  parseJSON =
    Core.withObject
      "About_TeamDriveThemesItem"
      ( \o ->
          About_TeamDriveThemesItem
            Core.<$> (o Core..:? "backgroundImageLink")
            Core.<*> (o Core..:? "colorRgb")
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON About_TeamDriveThemesItem where
  toJSON About_TeamDriveThemesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundImageLink" Core..=)
              Core.<$> backgroundImageLink,
            ("colorRgb" Core..=) Core.<$> colorRgb,
            ("id" Core..=) Core.<$> id
          ]
      )

-- | A change to a file or shared drive.
--
-- /See:/ 'newChange' smart constructor.
data Change = Change
  { -- | The type of the change. Possible values are file and drive.
    changeType :: (Core.Maybe Core.Text),
    -- | The updated state of the shared drive. Present if the changeType is drive, the user is still a member of the shared drive, and the shared drive has not been deleted.
    drive :: (Core.Maybe Drive),
    -- | The ID of the shared drive associated with this change.
    driveId :: (Core.Maybe Core.Text),
    -- | The updated state of the file. Present if the type is file and the file has not been removed from this list of changes.
    file :: (Core.Maybe File),
    -- | The ID of the file which has changed.
    fileId :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#change\".
    kind :: Core.Text,
    -- | Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access.
    removed :: (Core.Maybe Core.Bool),
    -- | Deprecated - use drive instead.
    teamDrive :: (Core.Maybe TeamDrive),
    -- | Deprecated - use driveId instead.
    teamDriveId :: (Core.Maybe Core.Text),
    -- | The time of this change (RFC 3339 date-time).
    time :: (Core.Maybe Core.DateTime'),
    -- | Deprecated - use changeType instead.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Change' with the minimum fields required to make a request.
newChange ::
  Change
newChange =
  Change
    { changeType = Core.Nothing,
      drive = Core.Nothing,
      driveId = Core.Nothing,
      file = Core.Nothing,
      fileId = Core.Nothing,
      kind = "drive#change",
      removed = Core.Nothing,
      teamDrive = Core.Nothing,
      teamDriveId = Core.Nothing,
      time = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Change where
  parseJSON =
    Core.withObject
      "Change"
      ( \o ->
          Change
            Core.<$> (o Core..:? "changeType")
            Core.<*> (o Core..:? "drive")
            Core.<*> (o Core..:? "driveId")
            Core.<*> (o Core..:? "file")
            Core.<*> (o Core..:? "fileId")
            Core.<*> (o Core..:? "kind" Core..!= "drive#change")
            Core.<*> (o Core..:? "removed")
            Core.<*> (o Core..:? "teamDrive")
            Core.<*> (o Core..:? "teamDriveId")
            Core.<*> (o Core..:? "time")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Change where
  toJSON Change {..} =
    Core.object
      ( Core.catMaybes
          [ ("changeType" Core..=) Core.<$> changeType,
            ("drive" Core..=) Core.<$> drive,
            ("driveId" Core..=) Core.<$> driveId,
            ("file" Core..=) Core.<$> file,
            ("fileId" Core..=) Core.<$> fileId,
            Core.Just ("kind" Core..= kind),
            ("removed" Core..=) Core.<$> removed,
            ("teamDrive" Core..=) Core.<$> teamDrive,
            ("teamDriveId" Core..=) Core.<$> teamDriveId,
            ("time" Core..=) Core.<$> time,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A list of changes for a user.
--
-- /See:/ 'newChangeList' smart constructor.
data ChangeList = ChangeList
  { -- | The list of changes. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    changes :: (Core.Maybe [Change]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#changeList\".
    kind :: Core.Text,
    -- | The starting page token for future changes. This will be present only if the end of the current changes list has been reached.
    newStartPageToken' :: (Core.Maybe Core.Text),
    -- | The page token for the next page of changes. This will be absent if the end of the changes list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChangeList' with the minimum fields required to make a request.
newChangeList ::
  ChangeList
newChangeList =
  ChangeList
    { changes = Core.Nothing,
      kind = "drive#changeList",
      newStartPageToken' = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ChangeList where
  parseJSON =
    Core.withObject
      "ChangeList"
      ( \o ->
          ChangeList
            Core.<$> (o Core..:? "changes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "drive#changeList")
            Core.<*> (o Core..:? "newStartPageToken")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ChangeList where
  toJSON ChangeList {..} =
    Core.object
      ( Core.catMaybes
          [ ("changes" Core..=) Core.<$> changes,
            Core.Just ("kind" Core..= kind),
            ("newStartPageToken" Core..=)
              Core.<$> newStartPageToken',
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | An notification channel used to watch for resource changes.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel
  { -- | The address where notifications are delivered for this channel.
    address :: (Core.Maybe Core.Text),
    -- | Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.
    expiration :: (Core.Maybe Core.Int64),
    -- | A UUID or similar unique string that identifies this channel.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".
    kind :: Core.Text,
    -- | Additional parameters controlling delivery channel behavior. Optional.
    params :: (Core.Maybe Channel_Params),
    -- | A Boolean value to indicate whether payload is wanted. Optional.
    payload :: (Core.Maybe Core.Bool),
    -- | An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.
    resourceId :: (Core.Maybe Core.Text),
    -- | A version-specific identifier for the watched resource.
    resourceUri :: (Core.Maybe Core.Text),
    -- | An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.
    token :: (Core.Maybe Core.Text),
    -- | The type of delivery mechanism used for this channel. Valid values are \"web_hook\" (or \"webhook\"). Both values refer to a channel where Http requests are used to deliver messages.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
newChannel ::
  Channel
newChannel =
  Channel
    { address = Core.Nothing,
      expiration = Core.Nothing,
      id = Core.Nothing,
      kind = "api#channel",
      params = Core.Nothing,
      payload = Core.Nothing,
      resourceId = Core.Nothing,
      resourceUri = Core.Nothing,
      token = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \o ->
          Channel
            Core.<$> (o Core..:? "address")
            Core.<*> (o Core..:? "expiration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "api#channel")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "resourceId")
            Core.<*> (o Core..:? "resourceUri")
            Core.<*> (o Core..:? "token")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Channel where
  toJSON Channel {..} =
    Core.object
      ( Core.catMaybes
          [ ("address" Core..=) Core.<$> address,
            ("expiration" Core..=) Core.. Core.AsText
              Core.<$> expiration,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("params" Core..=) Core.<$> params,
            ("payload" Core..=) Core.<$> payload,
            ("resourceId" Core..=) Core.<$> resourceId,
            ("resourceUri" Core..=) Core.<$> resourceUri,
            ("token" Core..=) Core.<$> token,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Additional parameters controlling delivery channel behavior. Optional.
--
-- /See:/ 'newChannel_Params' smart constructor.
newtype Channel_Params = Channel_Params
  { -- | Declares a new parameter by name.
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Channel_Params' with the minimum fields required to make a request.
newChannel_Params ::
  -- |  Declares a new parameter by name. See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Channel_Params
newChannel_Params addtional = Channel_Params {addtional = addtional}

instance Core.FromJSON Channel_Params where
  parseJSON =
    Core.withObject
      "Channel_Params"
      ( \o ->
          Channel_Params Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Channel_Params where
  toJSON Channel_Params {..} = Core.toJSON addtional

-- | A comment on a file.
--
-- /See:/ 'newComment' smart constructor.
data Comment = Comment
  { -- | A region of the document represented as a JSON string. For details on defining anchor properties, refer to Add comments and replies.
    anchor :: (Core.Maybe Core.Text),
    -- | The author of the comment. The author\'s email address and permission ID will not be populated.
    author :: (Core.Maybe User),
    -- | The plain text content of the comment. This field is used for setting the content, while htmlContent should be displayed.
    content :: (Core.Maybe Core.Text),
    -- | The time at which the comment was created (RFC 3339 date-time).
    createdTime :: (Core.Maybe Core.DateTime'),
    -- | Whether the comment has been deleted. A deleted comment has no content.
    deleted :: (Core.Maybe Core.Bool),
    -- | The content of the comment with HTML formatting.
    htmlContent :: (Core.Maybe Core.Text),
    -- | The ID of the comment.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#comment\".
    kind :: Core.Text,
    -- | The last time the comment or any of its replies was modified (RFC 3339 date-time).
    modifiedTime :: (Core.Maybe Core.DateTime'),
    -- | The file content to which the comment refers, typically within the anchor region. For a text file, for example, this would be the text at the location of the comment.
    quotedFileContent :: (Core.Maybe Comment_QuotedFileContent),
    -- | The full list of replies to the comment in chronological order.
    replies :: (Core.Maybe [Reply]),
    -- | Whether the comment has been resolved by one of its replies.
    resolved :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
newComment ::
  Comment
newComment =
  Comment
    { anchor = Core.Nothing,
      author = Core.Nothing,
      content = Core.Nothing,
      createdTime = Core.Nothing,
      deleted = Core.Nothing,
      htmlContent = Core.Nothing,
      id = Core.Nothing,
      kind = "drive#comment",
      modifiedTime = Core.Nothing,
      quotedFileContent = Core.Nothing,
      replies = Core.Nothing,
      resolved = Core.Nothing
    }

instance Core.FromJSON Comment where
  parseJSON =
    Core.withObject
      "Comment"
      ( \o ->
          Comment
            Core.<$> (o Core..:? "anchor")
            Core.<*> (o Core..:? "author")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "createdTime")
            Core.<*> (o Core..:? "deleted")
            Core.<*> (o Core..:? "htmlContent")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "drive#comment")
            Core.<*> (o Core..:? "modifiedTime")
            Core.<*> (o Core..:? "quotedFileContent")
            Core.<*> (o Core..:? "replies" Core..!= Core.mempty)
            Core.<*> (o Core..:? "resolved")
      )

instance Core.ToJSON Comment where
  toJSON Comment {..} =
    Core.object
      ( Core.catMaybes
          [ ("anchor" Core..=) Core.<$> anchor,
            ("author" Core..=) Core.<$> author,
            ("content" Core..=) Core.<$> content,
            ("createdTime" Core..=) Core.<$> createdTime,
            ("deleted" Core..=) Core.<$> deleted,
            ("htmlContent" Core..=) Core.<$> htmlContent,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("modifiedTime" Core..=) Core.<$> modifiedTime,
            ("quotedFileContent" Core..=)
              Core.<$> quotedFileContent,
            ("replies" Core..=) Core.<$> replies,
            ("resolved" Core..=) Core.<$> resolved
          ]
      )

-- | The file content to which the comment refers, typically within the anchor region. For a text file, for example, this would be the text at the location of the comment.
--
-- /See:/ 'newComment_QuotedFileContent' smart constructor.
data Comment_QuotedFileContent = Comment_QuotedFileContent
  { -- | The MIME type of the quoted content.
    mimeType :: (Core.Maybe Core.Text),
    -- | The quoted content itself. This is interpreted as plain text if set through the API.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_QuotedFileContent' with the minimum fields required to make a request.
newComment_QuotedFileContent ::
  Comment_QuotedFileContent
newComment_QuotedFileContent =
  Comment_QuotedFileContent {mimeType = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Comment_QuotedFileContent where
  parseJSON =
    Core.withObject
      "Comment_QuotedFileContent"
      ( \o ->
          Comment_QuotedFileContent
            Core.<$> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Comment_QuotedFileContent where
  toJSON Comment_QuotedFileContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("mimeType" Core..=) Core.<$> mimeType,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A list of comments on a file.
--
-- /See:/ 'newCommentList' smart constructor.
data CommentList = CommentList
  { -- | The list of comments. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    comments :: (Core.Maybe [Comment]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#commentList\".
    kind :: Core.Text,
    -- | The page token for the next page of comments. This will be absent if the end of the comments list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentList' with the minimum fields required to make a request.
newCommentList ::
  CommentList
newCommentList =
  CommentList
    { comments = Core.Nothing,
      kind = "drive#commentList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CommentList where
  parseJSON =
    Core.withObject
      "CommentList"
      ( \o ->
          CommentList
            Core.<$> (o Core..:? "comments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "drive#commentList")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CommentList where
  toJSON CommentList {..} =
    Core.object
      ( Core.catMaybes
          [ ("comments" Core..=) Core.<$> comments,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A restriction for accessing the content of the file.
--
-- /See:/ 'newContentRestriction' smart constructor.
data ContentRestriction = ContentRestriction
  { -- | Whether the content of the file is read-only. If a file is read-only, a new revision of the file may not be added, comments may not be added or modified, and the title of the file may not be modified.
    readOnly :: (Core.Maybe Core.Bool),
    -- | Reason for why the content of the file is restricted. This is only mutable on requests that also set readOnly=true.
    reason :: (Core.Maybe Core.Text),
    -- | The user who set the content restriction. Only populated if readOnly is true.
    restrictingUser :: (Core.Maybe User),
    -- | The time at which the content restriction was set (formatted RFC 3339 timestamp). Only populated if readOnly is true.
    restrictionTime :: (Core.Maybe Core.DateTime'),
    -- | The type of the content restriction. Currently the only possible value is globalContentRestriction.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRestriction' with the minimum fields required to make a request.
newContentRestriction ::
  ContentRestriction
newContentRestriction =
  ContentRestriction
    { readOnly = Core.Nothing,
      reason = Core.Nothing,
      restrictingUser = Core.Nothing,
      restrictionTime = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ContentRestriction where
  parseJSON =
    Core.withObject
      "ContentRestriction"
      ( \o ->
          ContentRestriction
            Core.<$> (o Core..:? "readOnly")
            Core.<*> (o Core..:? "reason")
            Core.<*> (o Core..:? "restrictingUser")
            Core.<*> (o Core..:? "restrictionTime")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ContentRestriction where
  toJSON ContentRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("readOnly" Core..=) Core.<$> readOnly,
            ("reason" Core..=) Core.<$> reason,
            ("restrictingUser" Core..=) Core.<$> restrictingUser,
            ("restrictionTime" Core..=) Core.<$> restrictionTime,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Representation of a shared drive.
--
-- /See:/ 'newDrive' smart constructor.
data Drive = Drive
  { -- | An image file and cropping parameters from which a background image for this shared drive is set. This is a write only field; it can only be set on drive.drives.update requests that don\'t set themeId. When specified, all fields of the backgroundImageFile must be set.
    backgroundImageFile :: (Core.Maybe Drive_BackgroundImageFile),
    -- | A short-lived link to this shared drive\'s background image.
    backgroundImageLink :: (Core.Maybe Core.Text),
    -- | Capabilities the current user has on this shared drive.
    capabilities :: (Core.Maybe Drive_Capabilities),
    -- | The color of this shared drive as an RGB hex string. It can only be set on a drive.drives.update request that does not set themeId.
    colorRgb :: (Core.Maybe Core.Text),
    -- | The time at which the shared drive was created (RFC 3339 date-time).
    createdTime :: (Core.Maybe Core.DateTime'),
    -- | Whether the shared drive is hidden from default view.
    hidden :: (Core.Maybe Core.Bool),
    -- | The ID of this shared drive which is also the ID of the top level folder of this shared drive.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#drive\".
    kind :: Core.Text,
    -- | The name of this shared drive.
    name :: (Core.Maybe Core.Text),
    -- | The organizational unit of this shared drive. This field is only populated on drives.list responses when the useDomainAdminAccess parameter is set to true.
    orgUnitId :: (Core.Maybe Core.Text),
    -- | A set of restrictions that apply to this shared drive or items inside this shared drive.
    restrictions :: (Core.Maybe Drive_Restrictions),
    -- | The ID of the theme from which the background image and color will be set. The set of possible driveThemes can be retrieved from a drive.about.get response. When not specified on a drive.drives.create request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don\'t set colorRgb or backgroundImageFile.
    themeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive' with the minimum fields required to make a request.
newDrive ::
  Drive
newDrive =
  Drive
    { backgroundImageFile = Core.Nothing,
      backgroundImageLink = Core.Nothing,
      capabilities = Core.Nothing,
      colorRgb = Core.Nothing,
      createdTime = Core.Nothing,
      hidden = Core.Nothing,
      id = Core.Nothing,
      kind = "drive#drive",
      name = Core.Nothing,
      orgUnitId = Core.Nothing,
      restrictions = Core.Nothing,
      themeId = Core.Nothing
    }

instance Core.FromJSON Drive where
  parseJSON =
    Core.withObject
      "Drive"
      ( \o ->
          Drive
            Core.<$> (o Core..:? "backgroundImageFile")
            Core.<*> (o Core..:? "backgroundImageLink")
            Core.<*> (o Core..:? "capabilities")
            Core.<*> (o Core..:? "colorRgb")
            Core.<*> (o Core..:? "createdTime")
            Core.<*> (o Core..:? "hidden")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "drive#drive")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgUnitId")
            Core.<*> (o Core..:? "restrictions")
            Core.<*> (o Core..:? "themeId")
      )

instance Core.ToJSON Drive where
  toJSON Drive {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundImageFile" Core..=)
              Core.<$> backgroundImageFile,
            ("backgroundImageLink" Core..=)
              Core.<$> backgroundImageLink,
            ("capabilities" Core..=) Core.<$> capabilities,
            ("colorRgb" Core..=) Core.<$> colorRgb,
            ("createdTime" Core..=) Core.<$> createdTime,
            ("hidden" Core..=) Core.<$> hidden,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("orgUnitId" Core..=) Core.<$> orgUnitId,
            ("restrictions" Core..=) Core.<$> restrictions,
            ("themeId" Core..=) Core.<$> themeId
          ]
      )

-- | An image file and cropping parameters from which a background image for this shared drive is set. This is a write only field; it can only be set on drive.drives.update requests that don\'t set themeId. When specified, all fields of the backgroundImageFile must be set.
--
-- /See:/ 'newDrive_BackgroundImageFile' smart constructor.
data Drive_BackgroundImageFile = Drive_BackgroundImageFile
  { -- | The ID of an image file in Google Drive to use for the background image.
    id :: (Core.Maybe Core.Text),
    -- | The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.
    width :: (Core.Maybe Core.Double),
    -- | The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.
    xCoordinate :: (Core.Maybe Core.Double),
    -- | The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.
    yCoordinate :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive_BackgroundImageFile' with the minimum fields required to make a request.
newDrive_BackgroundImageFile ::
  Drive_BackgroundImageFile
newDrive_BackgroundImageFile =
  Drive_BackgroundImageFile
    { id = Core.Nothing,
      width = Core.Nothing,
      xCoordinate = Core.Nothing,
      yCoordinate = Core.Nothing
    }

instance Core.FromJSON Drive_BackgroundImageFile where
  parseJSON =
    Core.withObject
      "Drive_BackgroundImageFile"
      ( \o ->
          Drive_BackgroundImageFile
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "width")
            Core.<*> (o Core..:? "xCoordinate")
            Core.<*> (o Core..:? "yCoordinate")
      )

instance Core.ToJSON Drive_BackgroundImageFile where
  toJSON Drive_BackgroundImageFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("width" Core..=) Core.<$> width,
            ("xCoordinate" Core..=) Core.<$> xCoordinate,
            ("yCoordinate" Core..=) Core.<$> yCoordinate
          ]
      )

-- | Capabilities the current user has on this shared drive.
--
-- /See:/ 'newDrive_Capabilities' smart constructor.
data Drive_Capabilities = Drive_Capabilities
  { -- | Whether the current user can add children to folders in this shared drive.
    canAddChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the copyRequiresWriterPermission restriction of this shared drive.
    canChangeCopyRequiresWriterPermissionRestriction :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the domainUsersOnly restriction of this shared drive.
    canChangeDomainUsersOnlyRestriction :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the background of this shared drive.
    canChangeDriveBackground :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the driveMembersOnly restriction of this shared drive.
    canChangeDriveMembersOnlyRestriction :: (Core.Maybe Core.Bool),
    -- | Whether the current user can comment on files in this shared drive.
    canComment :: (Core.Maybe Core.Bool),
    -- | Whether the current user can copy files in this shared drive.
    canCopy :: (Core.Maybe Core.Bool),
    -- | Whether the current user can delete children from folders in this shared drive.
    canDeleteChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can delete this shared drive. Attempting to delete the shared drive may still fail if there are untrashed items inside the shared drive.
    canDeleteDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can download files in this shared drive.
    canDownload :: (Core.Maybe Core.Bool),
    -- | Whether the current user can edit files in this shared drive
    canEdit :: (Core.Maybe Core.Bool),
    -- | Whether the current user can list the children of folders in this shared drive.
    canListChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can add members to this shared drive or remove them or change their role.
    canManageMembers :: (Core.Maybe Core.Bool),
    -- | Whether the current user can read the revisions resource of files in this shared drive.
    canReadRevisions :: (Core.Maybe Core.Bool),
    -- | Whether the current user can rename files or folders in this shared drive.
    canRename :: (Core.Maybe Core.Bool),
    -- | Whether the current user can rename this shared drive.
    canRenameDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can share files or folders in this shared drive.
    canShare :: (Core.Maybe Core.Bool),
    -- | Whether the current user can trash children from folders in this shared drive.
    canTrashChildren :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive_Capabilities' with the minimum fields required to make a request.
newDrive_Capabilities ::
  Drive_Capabilities
newDrive_Capabilities =
  Drive_Capabilities
    { canAddChildren = Core.Nothing,
      canChangeCopyRequiresWriterPermissionRestriction = Core.Nothing,
      canChangeDomainUsersOnlyRestriction = Core.Nothing,
      canChangeDriveBackground = Core.Nothing,
      canChangeDriveMembersOnlyRestriction = Core.Nothing,
      canComment = Core.Nothing,
      canCopy = Core.Nothing,
      canDeleteChildren = Core.Nothing,
      canDeleteDrive = Core.Nothing,
      canDownload = Core.Nothing,
      canEdit = Core.Nothing,
      canListChildren = Core.Nothing,
      canManageMembers = Core.Nothing,
      canReadRevisions = Core.Nothing,
      canRename = Core.Nothing,
      canRenameDrive = Core.Nothing,
      canShare = Core.Nothing,
      canTrashChildren = Core.Nothing
    }

instance Core.FromJSON Drive_Capabilities where
  parseJSON =
    Core.withObject
      "Drive_Capabilities"
      ( \o ->
          Drive_Capabilities
            Core.<$> (o Core..:? "canAddChildren")
            Core.<*> ( o
                         Core..:? "canChangeCopyRequiresWriterPermissionRestriction"
                     )
            Core.<*> (o Core..:? "canChangeDomainUsersOnlyRestriction")
            Core.<*> (o Core..:? "canChangeDriveBackground")
            Core.<*> (o Core..:? "canChangeDriveMembersOnlyRestriction")
            Core.<*> (o Core..:? "canComment")
            Core.<*> (o Core..:? "canCopy")
            Core.<*> (o Core..:? "canDeleteChildren")
            Core.<*> (o Core..:? "canDeleteDrive")
            Core.<*> (o Core..:? "canDownload")
            Core.<*> (o Core..:? "canEdit")
            Core.<*> (o Core..:? "canListChildren")
            Core.<*> (o Core..:? "canManageMembers")
            Core.<*> (o Core..:? "canReadRevisions")
            Core.<*> (o Core..:? "canRename")
            Core.<*> (o Core..:? "canRenameDrive")
            Core.<*> (o Core..:? "canShare")
            Core.<*> (o Core..:? "canTrashChildren")
      )

instance Core.ToJSON Drive_Capabilities where
  toJSON Drive_Capabilities {..} =
    Core.object
      ( Core.catMaybes
          [ ("canAddChildren" Core..=) Core.<$> canAddChildren,
            ( "canChangeCopyRequiresWriterPermissionRestriction"
                Core..=
            )
              Core.<$> canChangeCopyRequiresWriterPermissionRestriction,
            ("canChangeDomainUsersOnlyRestriction" Core..=)
              Core.<$> canChangeDomainUsersOnlyRestriction,
            ("canChangeDriveBackground" Core..=)
              Core.<$> canChangeDriveBackground,
            ("canChangeDriveMembersOnlyRestriction" Core..=)
              Core.<$> canChangeDriveMembersOnlyRestriction,
            ("canComment" Core..=) Core.<$> canComment,
            ("canCopy" Core..=) Core.<$> canCopy,
            ("canDeleteChildren" Core..=)
              Core.<$> canDeleteChildren,
            ("canDeleteDrive" Core..=) Core.<$> canDeleteDrive,
            ("canDownload" Core..=) Core.<$> canDownload,
            ("canEdit" Core..=) Core.<$> canEdit,
            ("canListChildren" Core..=) Core.<$> canListChildren,
            ("canManageMembers" Core..=)
              Core.<$> canManageMembers,
            ("canReadRevisions" Core..=)
              Core.<$> canReadRevisions,
            ("canRename" Core..=) Core.<$> canRename,
            ("canRenameDrive" Core..=) Core.<$> canRenameDrive,
            ("canShare" Core..=) Core.<$> canShare,
            ("canTrashChildren" Core..=)
              Core.<$> canTrashChildren
          ]
      )

-- | A set of restrictions that apply to this shared drive or items inside this shared drive.
--
-- /See:/ 'newDrive_Restrictions' smart constructor.
data Drive_Restrictions = Drive_Restrictions
  { -- | Whether administrative privileges on this shared drive are required to modify restrictions.
    adminManagedRestrictions :: (Core.Maybe Core.Bool),
    -- | Whether the options to copy, print, or download files inside this shared drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this shared drive.
    copyRequiresWriterPermission :: (Core.Maybe Core.Bool),
    -- | Whether access to this shared drive and items inside this shared drive is restricted to users of the domain to which this shared drive belongs. This restriction may be overridden by other sharing policies controlled outside of this shared drive.
    domainUsersOnly :: (Core.Maybe Core.Bool),
    -- | Whether access to items inside this shared drive is restricted to its members.
    driveMembersOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Drive_Restrictions' with the minimum fields required to make a request.
newDrive_Restrictions ::
  Drive_Restrictions
newDrive_Restrictions =
  Drive_Restrictions
    { adminManagedRestrictions = Core.Nothing,
      copyRequiresWriterPermission = Core.Nothing,
      domainUsersOnly = Core.Nothing,
      driveMembersOnly = Core.Nothing
    }

instance Core.FromJSON Drive_Restrictions where
  parseJSON =
    Core.withObject
      "Drive_Restrictions"
      ( \o ->
          Drive_Restrictions
            Core.<$> (o Core..:? "adminManagedRestrictions")
            Core.<*> (o Core..:? "copyRequiresWriterPermission")
            Core.<*> (o Core..:? "domainUsersOnly")
            Core.<*> (o Core..:? "driveMembersOnly")
      )

instance Core.ToJSON Drive_Restrictions where
  toJSON Drive_Restrictions {..} =
    Core.object
      ( Core.catMaybes
          [ ("adminManagedRestrictions" Core..=)
              Core.<$> adminManagedRestrictions,
            ("copyRequiresWriterPermission" Core..=)
              Core.<$> copyRequiresWriterPermission,
            ("domainUsersOnly" Core..=) Core.<$> domainUsersOnly,
            ("driveMembersOnly" Core..=)
              Core.<$> driveMembersOnly
          ]
      )

-- | A list of shared drives.
--
-- /See:/ 'newDriveList' smart constructor.
data DriveList = DriveList
  { -- | The list of shared drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    drives :: (Core.Maybe [Drive]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#driveList\".
    kind :: Core.Text,
    -- | The page token for the next page of shared drives. This will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveList' with the minimum fields required to make a request.
newDriveList ::
  DriveList
newDriveList =
  DriveList
    { drives = Core.Nothing,
      kind = "drive#driveList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON DriveList where
  parseJSON =
    Core.withObject
      "DriveList"
      ( \o ->
          DriveList
            Core.<$> (o Core..:? "drives" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "drive#driveList")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON DriveList where
  toJSON DriveList {..} =
    Core.object
      ( Core.catMaybes
          [ ("drives" Core..=) Core.<$> drives,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The metadata for a file.
--
-- /See:/ 'newFile' smart constructor.
data File = File
  { -- | A collection of arbitrary key-value pairs which are private to the requesting app. Entries with null values are cleared in update and copy requests. These properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.
    appProperties :: (Core.Maybe File_AppProperties),
    -- | Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.
    capabilities :: (Core.Maybe File_Capabilities),
    -- | Additional information about the content of the file. These fields are never populated in responses.
    contentHints :: (Core.Maybe File_ContentHints),
    -- | Restrictions for accessing the content of the file. Only populated if such a restriction exists.
    contentRestrictions :: (Core.Maybe [ContentRestriction]),
    -- | Whether the options to copy, print, or download this file, should be disabled for readers and commenters.
    copyRequiresWriterPermission :: (Core.Maybe Core.Bool),
    -- | The time at which the file was created (RFC 3339 date-time).
    createdTime :: (Core.Maybe Core.DateTime'),
    -- | A short description of the file.
    description :: (Core.Maybe Core.Text),
    -- | ID of the shared drive the file resides in. Only populated for items in shared drives.
    driveId :: (Core.Maybe Core.Text),
    -- | Whether the file has been explicitly trashed, as opposed to recursively trashed from a parent folder.
    explicitlyTrashed :: (Core.Maybe Core.Bool),
    -- | Links for exporting Docs Editors files to specific formats.
    exportLinks :: (Core.Maybe File_ExportLinks),
    -- | The final component of fullFileExtension. This is only available for files with binary content in Google Drive.
    fileExtension :: (Core.Maybe Core.Text),
    -- | The color for a folder or shortcut to a folder as an RGB hex string. The supported colors are published in the folderColorPalette field of the About resource. If an unsupported color is specified, the closest color in the palette will be used instead.
    folderColorRgb :: (Core.Maybe Core.Text),
    -- | The full file extension extracted from the name field. May contain multiple concatenated extensions, such as \"tar.gz\". This is only available for files with binary content in Google Drive. This is automatically updated when the name field changes, however it is not cleared if the new name does not contain a valid extension.
    fullFileExtension :: (Core.Maybe Core.Text),
    -- | Whether there are permissions directly on this file. This field is only populated for items in shared drives.
    hasAugmentedPermissions :: (Core.Maybe Core.Bool),
    -- | Whether this file has a thumbnail. This does not indicate whether the requesting app has access to the thumbnail. To check access, look for the presence of the thumbnailLink field.
    hasThumbnail :: (Core.Maybe Core.Bool),
    -- | The ID of the file\'s head revision. This is currently only available for files with binary content in Google Drive.
    headRevisionId :: (Core.Maybe Core.Text),
    -- | A static, unauthenticated link to the file\'s icon.
    iconLink :: (Core.Maybe Core.Text),
    -- | The ID of the file.
    id :: (Core.Maybe Core.Text),
    -- | Additional metadata about image media, if available.
    imageMediaMetadata :: (Core.Maybe File_ImageMediaMetadata),
    -- | Whether the file was created or opened by the requesting app.
    isAppAuthorized :: (Core.Maybe Core.Bool),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#file\".
    kind :: Core.Text,
    -- | The last user to modify the file.
    lastModifyingUser :: (Core.Maybe User),
    -- | Contains details about the link URLs that clients are using to refer to this item.
    linkShareMetadata :: (Core.Maybe File_LinkShareMetadata),
    -- | The MD5 checksum for the content of the file. This is only applicable to files with binary content in Google Drive.
    md5Checksum :: (Core.Maybe Core.Text),
    -- | The MIME type of the file. Google Drive will attempt to automatically detect an appropriate value from uploaded content if no value is provided. The value cannot be changed unless a new revision is uploaded. If a file is created with a Google Doc MIME type, the uploaded content will be imported if possible. The supported import formats are published in the About resource.
    mimeType :: (Core.Maybe Core.Text),
    -- | Whether the file has been modified by this user.
    modifiedByMe :: (Core.Maybe Core.Bool),
    -- | The last time the file was modified by the user (RFC 3339 date-time).
    modifiedByMeTime :: (Core.Maybe Core.DateTime'),
    -- | The last time the file was modified by anyone (RFC 3339 date-time). Note that setting modifiedTime will also update modifiedByMeTime for the user.
    modifiedTime :: (Core.Maybe Core.DateTime'),
    -- | The name of the file. This is not necessarily unique within a folder. Note that for immutable items such as the top level folders of shared drives, My Drive root folder, and Application Data folder the name is constant.
    name :: (Core.Maybe Core.Text),
    -- | The original filename of the uploaded content if available, or else the original value of the name field. This is only available for files with binary content in Google Drive.
    originalFilename :: (Core.Maybe Core.Text),
    -- | Whether the user owns the file. Not populated for items in shared drives.
    ownedByMe :: (Core.Maybe Core.Bool),
    -- | The owner of this file. Only certain legacy files may have more than one owner. This field isn\'t populated for items in shared drives.
    owners :: (Core.Maybe [User]),
    -- | The IDs of the parent folders which contain the file. If not specified as part of a create request, the file will be placed directly in the user\'s My Drive folder. If not specified as part of a copy request, the file will inherit any discoverable parents of the source file. Update requests must use the addParents and removeParents parameters to modify the parents list.
    parents :: (Core.Maybe [Core.Text]),
    -- | List of permission IDs for users with access to this file.
    permissionIds :: (Core.Maybe [Core.Text]),
    -- | The full list of permissions for the file. This is only available if the requesting user can share the file. Not populated for items in shared drives.
    permissions :: (Core.Maybe [Permission]),
    -- | A collection of arbitrary key-value pairs which are visible to all apps. Entries with null values are cleared in update and copy requests.
    properties :: (Core.Maybe File_Properties),
    -- | The number of storage quota bytes used by the file. This includes the head revision as well as previous revisions with keepForever enabled.
    quotaBytesUsed :: (Core.Maybe Core.Int64),
    -- | A key needed to access the item via a shared link.
    resourceKey :: (Core.Maybe Core.Text),
    -- | Whether the file has been shared. Not populated for items in shared drives.
    shared :: (Core.Maybe Core.Bool),
    -- | The time at which the file was shared with the user, if applicable (RFC 3339 date-time).
    sharedWithMeTime :: (Core.Maybe Core.DateTime'),
    -- | The user who shared the file with the requesting user, if applicable.
    sharingUser :: (Core.Maybe User),
    -- | Shortcut file details. Only populated for shortcut files, which have the mimeType field set to application\/vnd.google-apps.shortcut.
    shortcutDetails :: (Core.Maybe File_ShortcutDetails),
    -- | The size of the file\'s content in bytes. This is applicable to binary files in Google Drive and Google Docs files.
    size :: (Core.Maybe Core.Int64),
    -- | The list of spaces which contain the file. The currently supported values are \'drive\', \'appDataFolder\' and \'photos\'.
    spaces :: (Core.Maybe [Core.Text]),
    -- | Whether the user has starred the file.
    starred :: (Core.Maybe Core.Bool),
    -- | Deprecated - use driveId instead.
    teamDriveId :: (Core.Maybe Core.Text),
    -- | A short-lived link to the file\'s thumbnail, if available. Typically lasts on the order of hours. Only populated when the requesting app can access the file\'s content. If the file isn\'t shared publicly, the URL returned in Files.thumbnailLink must be fetched using a credentialed request.
    thumbnailLink :: (Core.Maybe Core.Text),
    -- | The thumbnail version for use in thumbnail cache invalidation.
    thumbnailVersion :: (Core.Maybe Core.Int64),
    -- | Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the owner may trash a file. The trashed item is excluded from all files.list responses returned for any user who does not own the file. However, all users with access to the file can see the trashed item metadata in an API response. All users with access can copy, download, export, and share the file.
    trashed :: (Core.Maybe Core.Bool),
    -- | The time that the item was trashed (RFC 3339 date-time). Only populated for items in shared drives.
    trashedTime :: (Core.Maybe Core.DateTime'),
    -- | If the file has been explicitly trashed, the user who trashed it. Only populated for items in shared drives.
    trashingUser :: (Core.Maybe User),
    -- | A monotonically increasing version number for the file. This reflects every change made to the file on the server, even those not visible to the user.
    version :: (Core.Maybe Core.Int64),
    -- | Additional metadata about video media. This may not be available immediately upon upload.
    videoMediaMetadata :: (Core.Maybe File_VideoMediaMetadata),
    -- | Whether the file has been viewed by this user.
    viewedByMe :: (Core.Maybe Core.Bool),
    -- | The last time the file was viewed by the user (RFC 3339 date-time).
    viewedByMeTime :: (Core.Maybe Core.DateTime'),
    -- | Deprecated - use copyRequiresWriterPermission instead.
    viewersCanCopyContent :: (Core.Maybe Core.Bool),
    -- | A link for downloading the content of the file in a browser. This is only available for files with binary content in Google Drive.
    webContentLink :: (Core.Maybe Core.Text),
    -- | A link for opening the file in a relevant Google editor or viewer in a browser.
    webViewLink :: (Core.Maybe Core.Text),
    -- | Whether users with only writer permission can modify the file\'s permissions. Not populated for items in shared drives.
    writersCanShare :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File' with the minimum fields required to make a request.
newFile ::
  File
newFile =
  File
    { appProperties = Core.Nothing,
      capabilities = Core.Nothing,
      contentHints = Core.Nothing,
      contentRestrictions = Core.Nothing,
      copyRequiresWriterPermission = Core.Nothing,
      createdTime = Core.Nothing,
      description = Core.Nothing,
      driveId = Core.Nothing,
      explicitlyTrashed = Core.Nothing,
      exportLinks = Core.Nothing,
      fileExtension = Core.Nothing,
      folderColorRgb = Core.Nothing,
      fullFileExtension = Core.Nothing,
      hasAugmentedPermissions = Core.Nothing,
      hasThumbnail = Core.Nothing,
      headRevisionId = Core.Nothing,
      iconLink = Core.Nothing,
      id = Core.Nothing,
      imageMediaMetadata = Core.Nothing,
      isAppAuthorized = Core.Nothing,
      kind = "drive#file",
      lastModifyingUser = Core.Nothing,
      linkShareMetadata = Core.Nothing,
      md5Checksum = Core.Nothing,
      mimeType = Core.Nothing,
      modifiedByMe = Core.Nothing,
      modifiedByMeTime = Core.Nothing,
      modifiedTime = Core.Nothing,
      name = Core.Nothing,
      originalFilename = Core.Nothing,
      ownedByMe = Core.Nothing,
      owners = Core.Nothing,
      parents = Core.Nothing,
      permissionIds = Core.Nothing,
      permissions = Core.Nothing,
      properties = Core.Nothing,
      quotaBytesUsed = Core.Nothing,
      resourceKey = Core.Nothing,
      shared = Core.Nothing,
      sharedWithMeTime = Core.Nothing,
      sharingUser = Core.Nothing,
      shortcutDetails = Core.Nothing,
      size = Core.Nothing,
      spaces = Core.Nothing,
      starred = Core.Nothing,
      teamDriveId = Core.Nothing,
      thumbnailLink = Core.Nothing,
      thumbnailVersion = Core.Nothing,
      trashed = Core.Nothing,
      trashedTime = Core.Nothing,
      trashingUser = Core.Nothing,
      version = Core.Nothing,
      videoMediaMetadata = Core.Nothing,
      viewedByMe = Core.Nothing,
      viewedByMeTime = Core.Nothing,
      viewersCanCopyContent = Core.Nothing,
      webContentLink = Core.Nothing,
      webViewLink = Core.Nothing,
      writersCanShare = Core.Nothing
    }

instance Core.FromJSON File where
  parseJSON =
    Core.withObject
      "File"
      ( \o ->
          File
            Core.<$> (o Core..:? "appProperties")
            Core.<*> (o Core..:? "capabilities")
            Core.<*> (o Core..:? "contentHints")
            Core.<*> ( o Core..:? "contentRestrictions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "copyRequiresWriterPermission")
            Core.<*> (o Core..:? "createdTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "driveId")
            Core.<*> (o Core..:? "explicitlyTrashed")
            Core.<*> (o Core..:? "exportLinks")
            Core.<*> (o Core..:? "fileExtension")
            Core.<*> (o Core..:? "folderColorRgb")
            Core.<*> (o Core..:? "fullFileExtension")
            Core.<*> (o Core..:? "hasAugmentedPermissions")
            Core.<*> (o Core..:? "hasThumbnail")
            Core.<*> (o Core..:? "headRevisionId")
            Core.<*> (o Core..:? "iconLink")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "imageMediaMetadata")
            Core.<*> (o Core..:? "isAppAuthorized")
            Core.<*> (o Core..:? "kind" Core..!= "drive#file")
            Core.<*> (o Core..:? "lastModifyingUser")
            Core.<*> (o Core..:? "linkShareMetadata")
            Core.<*> (o Core..:? "md5Checksum")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "modifiedByMe")
            Core.<*> (o Core..:? "modifiedByMeTime")
            Core.<*> (o Core..:? "modifiedTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "originalFilename")
            Core.<*> (o Core..:? "ownedByMe")
            Core.<*> (o Core..:? "owners" Core..!= Core.mempty)
            Core.<*> (o Core..:? "parents" Core..!= Core.mempty)
            Core.<*> (o Core..:? "permissionIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "permissions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "quotaBytesUsed")
            Core.<*> (o Core..:? "resourceKey")
            Core.<*> (o Core..:? "shared")
            Core.<*> (o Core..:? "sharedWithMeTime")
            Core.<*> (o Core..:? "sharingUser")
            Core.<*> (o Core..:? "shortcutDetails")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "spaces" Core..!= Core.mempty)
            Core.<*> (o Core..:? "starred")
            Core.<*> (o Core..:? "teamDriveId")
            Core.<*> (o Core..:? "thumbnailLink")
            Core.<*> (o Core..:? "thumbnailVersion")
            Core.<*> (o Core..:? "trashed")
            Core.<*> (o Core..:? "trashedTime")
            Core.<*> (o Core..:? "trashingUser")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "videoMediaMetadata")
            Core.<*> (o Core..:? "viewedByMe")
            Core.<*> (o Core..:? "viewedByMeTime")
            Core.<*> (o Core..:? "viewersCanCopyContent")
            Core.<*> (o Core..:? "webContentLink")
            Core.<*> (o Core..:? "webViewLink")
            Core.<*> (o Core..:? "writersCanShare")
      )

instance Core.ToJSON File where
  toJSON File {..} =
    Core.object
      ( Core.catMaybes
          [ ("appProperties" Core..=) Core.<$> appProperties,
            ("capabilities" Core..=) Core.<$> capabilities,
            ("contentHints" Core..=) Core.<$> contentHints,
            ("contentRestrictions" Core..=)
              Core.<$> contentRestrictions,
            ("copyRequiresWriterPermission" Core..=)
              Core.<$> copyRequiresWriterPermission,
            ("createdTime" Core..=) Core.<$> createdTime,
            ("description" Core..=) Core.<$> description,
            ("driveId" Core..=) Core.<$> driveId,
            ("explicitlyTrashed" Core..=)
              Core.<$> explicitlyTrashed,
            ("exportLinks" Core..=) Core.<$> exportLinks,
            ("fileExtension" Core..=) Core.<$> fileExtension,
            ("folderColorRgb" Core..=) Core.<$> folderColorRgb,
            ("fullFileExtension" Core..=)
              Core.<$> fullFileExtension,
            ("hasAugmentedPermissions" Core..=)
              Core.<$> hasAugmentedPermissions,
            ("hasThumbnail" Core..=) Core.<$> hasThumbnail,
            ("headRevisionId" Core..=) Core.<$> headRevisionId,
            ("iconLink" Core..=) Core.<$> iconLink,
            ("id" Core..=) Core.<$> id,
            ("imageMediaMetadata" Core..=)
              Core.<$> imageMediaMetadata,
            ("isAppAuthorized" Core..=) Core.<$> isAppAuthorized,
            Core.Just ("kind" Core..= kind),
            ("lastModifyingUser" Core..=)
              Core.<$> lastModifyingUser,
            ("linkShareMetadata" Core..=)
              Core.<$> linkShareMetadata,
            ("md5Checksum" Core..=) Core.<$> md5Checksum,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("modifiedByMe" Core..=) Core.<$> modifiedByMe,
            ("modifiedByMeTime" Core..=)
              Core.<$> modifiedByMeTime,
            ("modifiedTime" Core..=) Core.<$> modifiedTime,
            ("name" Core..=) Core.<$> name,
            ("originalFilename" Core..=)
              Core.<$> originalFilename,
            ("ownedByMe" Core..=) Core.<$> ownedByMe,
            ("owners" Core..=) Core.<$> owners,
            ("parents" Core..=) Core.<$> parents,
            ("permissionIds" Core..=) Core.<$> permissionIds,
            ("permissions" Core..=) Core.<$> permissions,
            ("properties" Core..=) Core.<$> properties,
            ("quotaBytesUsed" Core..=) Core.. Core.AsText
              Core.<$> quotaBytesUsed,
            ("resourceKey" Core..=) Core.<$> resourceKey,
            ("shared" Core..=) Core.<$> shared,
            ("sharedWithMeTime" Core..=)
              Core.<$> sharedWithMeTime,
            ("sharingUser" Core..=) Core.<$> sharingUser,
            ("shortcutDetails" Core..=) Core.<$> shortcutDetails,
            ("size" Core..=) Core.. Core.AsText Core.<$> size,
            ("spaces" Core..=) Core.<$> spaces,
            ("starred" Core..=) Core.<$> starred,
            ("teamDriveId" Core..=) Core.<$> teamDriveId,
            ("thumbnailLink" Core..=) Core.<$> thumbnailLink,
            ("thumbnailVersion" Core..=) Core.. Core.AsText
              Core.<$> thumbnailVersion,
            ("trashed" Core..=) Core.<$> trashed,
            ("trashedTime" Core..=) Core.<$> trashedTime,
            ("trashingUser" Core..=) Core.<$> trashingUser,
            ("version" Core..=) Core.. Core.AsText
              Core.<$> version,
            ("videoMediaMetadata" Core..=)
              Core.<$> videoMediaMetadata,
            ("viewedByMe" Core..=) Core.<$> viewedByMe,
            ("viewedByMeTime" Core..=) Core.<$> viewedByMeTime,
            ("viewersCanCopyContent" Core..=)
              Core.<$> viewersCanCopyContent,
            ("webContentLink" Core..=) Core.<$> webContentLink,
            ("webViewLink" Core..=) Core.<$> webViewLink,
            ("writersCanShare" Core..=)
              Core.<$> writersCanShare
          ]
      )

-- | A collection of arbitrary key-value pairs which are private to the requesting app. Entries with null values are cleared in update and copy requests. These properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.
--
-- /See:/ 'newFile_AppProperties' smart constructor.
newtype File_AppProperties = File_AppProperties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_AppProperties' with the minimum fields required to make a request.
newFile_AppProperties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  File_AppProperties
newFile_AppProperties addtional = File_AppProperties {addtional = addtional}

instance Core.FromJSON File_AppProperties where
  parseJSON =
    Core.withObject
      "File_AppProperties"
      ( \o ->
          File_AppProperties Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON File_AppProperties where
  toJSON File_AppProperties {..} = Core.toJSON addtional

-- | Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.
--
-- /See:/ 'newFile_Capabilities' smart constructor.
data File_Capabilities = File_Capabilities
  { -- | Whether the current user is the pending owner of the file. Not populated for shared drive files.
    canAcceptOwnership :: (Core.Maybe Core.Bool),
    -- | Whether the current user can add children to this folder. This is always false when the item is not a folder.
    canAddChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can add a folder from another drive (different shared drive or My Drive) to this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    canAddFolderFromAnotherDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can add a parent for the item without removing an existing parent in the same request. Not populated for shared drive files.
    canAddMyDriveParent :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the copyRequiresWriterPermission restriction of this file.
    canChangeCopyRequiresWriterPermission :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the securityUpdateEnabled field on link share metadata.
    canChangeSecurityUpdateEnabled :: (Core.Maybe Core.Bool),
    -- | Deprecated
    canChangeViewersCanCopyContent :: (Core.Maybe Core.Bool),
    -- | Whether the current user can comment on this file.
    canComment :: (Core.Maybe Core.Bool),
    -- | Whether the current user can copy this file. For an item in a shared drive, whether the current user can copy non-folder descendants of this item, or this item itself if it is not a folder.
    canCopy :: (Core.Maybe Core.Bool),
    -- | Whether the current user can delete this file.
    canDelete :: (Core.Maybe Core.Bool),
    -- | Whether the current user can delete children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    canDeleteChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can download this file.
    canDownload :: (Core.Maybe Core.Bool),
    -- | Whether the current user can edit this file. Other factors may limit the type of changes a user can make to a file. For example, see canChangeCopyRequiresWriterPermission or canModifyContent.
    canEdit :: (Core.Maybe Core.Bool),
    -- | Whether the current user can list the children of this folder. This is always false when the item is not a folder.
    canListChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can modify the content of this file.
    canModifyContent :: (Core.Maybe Core.Bool),
    -- | Whether the current user can modify restrictions on content of this file.
    canModifyContentRestriction :: (Core.Maybe Core.Bool),
    -- | Whether the current user can move children of this folder outside of the shared drive. This is false when the item is not a folder. Only populated for items in shared drives.
    canMoveChildrenOutOfDrive :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canMoveChildrenOutOfDrive instead.
    canMoveChildrenOutOfTeamDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can move children of this folder within this drive. This is false when the item is not a folder. Note that a request to move the child may still fail depending on the current user\'s access to the child and to the destination folder.
    canMoveChildrenWithinDrive :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canMoveChildrenWithinDrive instead.
    canMoveChildrenWithinTeamDrive :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canMoveItemOutOfDrive instead.
    canMoveItemIntoTeamDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can move this item outside of this drive by changing its parent. Note that a request to change the parent of the item may still fail depending on the new parent that is being added.
    canMoveItemOutOfDrive :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canMoveItemOutOfDrive instead.
    canMoveItemOutOfTeamDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can move this item within this drive. Note that a request to change the parent of the item may still fail depending on the new parent that is being added and the parent that is being removed.
    canMoveItemWithinDrive :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canMoveItemWithinDrive instead.
    canMoveItemWithinTeamDrive :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canMoveItemWithinDrive or canMoveItemOutOfDrive instead.
    canMoveTeamDriveItem :: (Core.Maybe Core.Bool),
    -- | Whether the current user can read the shared drive to which this file belongs. Only populated for items in shared drives.
    canReadDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can read the revisions resource of this file. For a shared drive item, whether revisions of non-folder descendants of this item, or this item itself if it is not a folder, can be read.
    canReadRevisions :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canReadDrive instead.
    canReadTeamDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can remove children from this folder. This is always false when the item is not a folder. For a folder in a shared drive, use canDeleteChildren or canTrashChildren instead.
    canRemoveChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can remove a parent from the item without adding another parent in the same request. Not populated for shared drive files.
    canRemoveMyDriveParent :: (Core.Maybe Core.Bool),
    -- | Whether the current user can rename this file.
    canRename :: (Core.Maybe Core.Bool),
    -- | Whether the current user can modify the sharing settings for this file.
    canShare :: (Core.Maybe Core.Bool),
    -- | Whether the current user can move this file to trash.
    canTrash :: (Core.Maybe Core.Bool),
    -- | Whether the current user can trash children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.
    canTrashChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can restore this file from trash.
    canUntrash :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_Capabilities' with the minimum fields required to make a request.
newFile_Capabilities ::
  File_Capabilities
newFile_Capabilities =
  File_Capabilities
    { canAcceptOwnership = Core.Nothing,
      canAddChildren = Core.Nothing,
      canAddFolderFromAnotherDrive = Core.Nothing,
      canAddMyDriveParent = Core.Nothing,
      canChangeCopyRequiresWriterPermission = Core.Nothing,
      canChangeSecurityUpdateEnabled = Core.Nothing,
      canChangeViewersCanCopyContent = Core.Nothing,
      canComment = Core.Nothing,
      canCopy = Core.Nothing,
      canDelete = Core.Nothing,
      canDeleteChildren = Core.Nothing,
      canDownload = Core.Nothing,
      canEdit = Core.Nothing,
      canListChildren = Core.Nothing,
      canModifyContent = Core.Nothing,
      canModifyContentRestriction = Core.Nothing,
      canMoveChildrenOutOfDrive = Core.Nothing,
      canMoveChildrenOutOfTeamDrive = Core.Nothing,
      canMoveChildrenWithinDrive = Core.Nothing,
      canMoveChildrenWithinTeamDrive = Core.Nothing,
      canMoveItemIntoTeamDrive = Core.Nothing,
      canMoveItemOutOfDrive = Core.Nothing,
      canMoveItemOutOfTeamDrive = Core.Nothing,
      canMoveItemWithinDrive = Core.Nothing,
      canMoveItemWithinTeamDrive = Core.Nothing,
      canMoveTeamDriveItem = Core.Nothing,
      canReadDrive = Core.Nothing,
      canReadRevisions = Core.Nothing,
      canReadTeamDrive = Core.Nothing,
      canRemoveChildren = Core.Nothing,
      canRemoveMyDriveParent = Core.Nothing,
      canRename = Core.Nothing,
      canShare = Core.Nothing,
      canTrash = Core.Nothing,
      canTrashChildren = Core.Nothing,
      canUntrash = Core.Nothing
    }

instance Core.FromJSON File_Capabilities where
  parseJSON =
    Core.withObject
      "File_Capabilities"
      ( \o ->
          File_Capabilities
            Core.<$> (o Core..:? "canAcceptOwnership")
            Core.<*> (o Core..:? "canAddChildren")
            Core.<*> (o Core..:? "canAddFolderFromAnotherDrive")
            Core.<*> (o Core..:? "canAddMyDriveParent")
            Core.<*> (o Core..:? "canChangeCopyRequiresWriterPermission")
            Core.<*> (o Core..:? "canChangeSecurityUpdateEnabled")
            Core.<*> (o Core..:? "canChangeViewersCanCopyContent")
            Core.<*> (o Core..:? "canComment")
            Core.<*> (o Core..:? "canCopy")
            Core.<*> (o Core..:? "canDelete")
            Core.<*> (o Core..:? "canDeleteChildren")
            Core.<*> (o Core..:? "canDownload")
            Core.<*> (o Core..:? "canEdit")
            Core.<*> (o Core..:? "canListChildren")
            Core.<*> (o Core..:? "canModifyContent")
            Core.<*> (o Core..:? "canModifyContentRestriction")
            Core.<*> (o Core..:? "canMoveChildrenOutOfDrive")
            Core.<*> (o Core..:? "canMoveChildrenOutOfTeamDrive")
            Core.<*> (o Core..:? "canMoveChildrenWithinDrive")
            Core.<*> (o Core..:? "canMoveChildrenWithinTeamDrive")
            Core.<*> (o Core..:? "canMoveItemIntoTeamDrive")
            Core.<*> (o Core..:? "canMoveItemOutOfDrive")
            Core.<*> (o Core..:? "canMoveItemOutOfTeamDrive")
            Core.<*> (o Core..:? "canMoveItemWithinDrive")
            Core.<*> (o Core..:? "canMoveItemWithinTeamDrive")
            Core.<*> (o Core..:? "canMoveTeamDriveItem")
            Core.<*> (o Core..:? "canReadDrive")
            Core.<*> (o Core..:? "canReadRevisions")
            Core.<*> (o Core..:? "canReadTeamDrive")
            Core.<*> (o Core..:? "canRemoveChildren")
            Core.<*> (o Core..:? "canRemoveMyDriveParent")
            Core.<*> (o Core..:? "canRename")
            Core.<*> (o Core..:? "canShare")
            Core.<*> (o Core..:? "canTrash")
            Core.<*> (o Core..:? "canTrashChildren")
            Core.<*> (o Core..:? "canUntrash")
      )

instance Core.ToJSON File_Capabilities where
  toJSON File_Capabilities {..} =
    Core.object
      ( Core.catMaybes
          [ ("canAcceptOwnership" Core..=)
              Core.<$> canAcceptOwnership,
            ("canAddChildren" Core..=) Core.<$> canAddChildren,
            ("canAddFolderFromAnotherDrive" Core..=)
              Core.<$> canAddFolderFromAnotherDrive,
            ("canAddMyDriveParent" Core..=)
              Core.<$> canAddMyDriveParent,
            ("canChangeCopyRequiresWriterPermission" Core..=)
              Core.<$> canChangeCopyRequiresWriterPermission,
            ("canChangeSecurityUpdateEnabled" Core..=)
              Core.<$> canChangeSecurityUpdateEnabled,
            ("canChangeViewersCanCopyContent" Core..=)
              Core.<$> canChangeViewersCanCopyContent,
            ("canComment" Core..=) Core.<$> canComment,
            ("canCopy" Core..=) Core.<$> canCopy,
            ("canDelete" Core..=) Core.<$> canDelete,
            ("canDeleteChildren" Core..=)
              Core.<$> canDeleteChildren,
            ("canDownload" Core..=) Core.<$> canDownload,
            ("canEdit" Core..=) Core.<$> canEdit,
            ("canListChildren" Core..=) Core.<$> canListChildren,
            ("canModifyContent" Core..=)
              Core.<$> canModifyContent,
            ("canModifyContentRestriction" Core..=)
              Core.<$> canModifyContentRestriction,
            ("canMoveChildrenOutOfDrive" Core..=)
              Core.<$> canMoveChildrenOutOfDrive,
            ("canMoveChildrenOutOfTeamDrive" Core..=)
              Core.<$> canMoveChildrenOutOfTeamDrive,
            ("canMoveChildrenWithinDrive" Core..=)
              Core.<$> canMoveChildrenWithinDrive,
            ("canMoveChildrenWithinTeamDrive" Core..=)
              Core.<$> canMoveChildrenWithinTeamDrive,
            ("canMoveItemIntoTeamDrive" Core..=)
              Core.<$> canMoveItemIntoTeamDrive,
            ("canMoveItemOutOfDrive" Core..=)
              Core.<$> canMoveItemOutOfDrive,
            ("canMoveItemOutOfTeamDrive" Core..=)
              Core.<$> canMoveItemOutOfTeamDrive,
            ("canMoveItemWithinDrive" Core..=)
              Core.<$> canMoveItemWithinDrive,
            ("canMoveItemWithinTeamDrive" Core..=)
              Core.<$> canMoveItemWithinTeamDrive,
            ("canMoveTeamDriveItem" Core..=)
              Core.<$> canMoveTeamDriveItem,
            ("canReadDrive" Core..=) Core.<$> canReadDrive,
            ("canReadRevisions" Core..=)
              Core.<$> canReadRevisions,
            ("canReadTeamDrive" Core..=)
              Core.<$> canReadTeamDrive,
            ("canRemoveChildren" Core..=)
              Core.<$> canRemoveChildren,
            ("canRemoveMyDriveParent" Core..=)
              Core.<$> canRemoveMyDriveParent,
            ("canRename" Core..=) Core.<$> canRename,
            ("canShare" Core..=) Core.<$> canShare,
            ("canTrash" Core..=) Core.<$> canTrash,
            ("canTrashChildren" Core..=)
              Core.<$> canTrashChildren,
            ("canUntrash" Core..=) Core.<$> canUntrash
          ]
      )

-- | Additional information about the content of the file. These fields are never populated in responses.
--
-- /See:/ 'newFile_ContentHints' smart constructor.
data File_ContentHints = File_ContentHints
  { -- | Text to be indexed for the file to improve fullText queries. This is limited to 128KB in length and may contain HTML elements.
    indexableText :: (Core.Maybe Core.Text),
    -- | A thumbnail for the file. This will only be used if Google Drive cannot generate a standard thumbnail.
    thumbnail :: (Core.Maybe File_ContentHints_Thumbnail)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ContentHints' with the minimum fields required to make a request.
newFile_ContentHints ::
  File_ContentHints
newFile_ContentHints =
  File_ContentHints {indexableText = Core.Nothing, thumbnail = Core.Nothing}

instance Core.FromJSON File_ContentHints where
  parseJSON =
    Core.withObject
      "File_ContentHints"
      ( \o ->
          File_ContentHints
            Core.<$> (o Core..:? "indexableText")
            Core.<*> (o Core..:? "thumbnail")
      )

instance Core.ToJSON File_ContentHints where
  toJSON File_ContentHints {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexableText" Core..=) Core.<$> indexableText,
            ("thumbnail" Core..=) Core.<$> thumbnail
          ]
      )

-- | A thumbnail for the file. This will only be used if Google Drive cannot generate a standard thumbnail.
--
-- /See:/ 'newFile_ContentHints_Thumbnail' smart constructor.
data File_ContentHints_Thumbnail = File_ContentHints_Thumbnail
  { -- | The thumbnail data encoded with URL-safe Base64 (RFC 4648 section 5).
    image :: (Core.Maybe Core.Base64),
    -- | The MIME type of the thumbnail.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ContentHints_Thumbnail' with the minimum fields required to make a request.
newFile_ContentHints_Thumbnail ::
  File_ContentHints_Thumbnail
newFile_ContentHints_Thumbnail =
  File_ContentHints_Thumbnail {image = Core.Nothing, mimeType = Core.Nothing}

instance Core.FromJSON File_ContentHints_Thumbnail where
  parseJSON =
    Core.withObject
      "File_ContentHints_Thumbnail"
      ( \o ->
          File_ContentHints_Thumbnail
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON File_ContentHints_Thumbnail where
  toJSON File_ContentHints_Thumbnail {..} =
    Core.object
      ( Core.catMaybes
          [ ("image" Core..=) Core.<$> image,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | Links for exporting Docs Editors files to specific formats.
--
-- /See:/ 'newFile_ExportLinks' smart constructor.
newtype File_ExportLinks = File_ExportLinks
  { -- | A mapping from export format to URL
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ExportLinks' with the minimum fields required to make a request.
newFile_ExportLinks ::
  -- |  A mapping from export format to URL See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  File_ExportLinks
newFile_ExportLinks addtional = File_ExportLinks {addtional = addtional}

instance Core.FromJSON File_ExportLinks where
  parseJSON =
    Core.withObject
      "File_ExportLinks"
      ( \o ->
          File_ExportLinks Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON File_ExportLinks where
  toJSON File_ExportLinks {..} = Core.toJSON addtional

-- | Additional metadata about image media, if available.
--
-- /See:/ 'newFile_ImageMediaMetadata' smart constructor.
data File_ImageMediaMetadata = File_ImageMediaMetadata
  { -- | The aperture used to create the photo (f-number).
    aperture :: (Core.Maybe Core.Double),
    -- | The make of the camera used to create the photo.
    cameraMake :: (Core.Maybe Core.Text),
    -- | The model of the camera used to create the photo.
    cameraModel :: (Core.Maybe Core.Text),
    -- | The color space of the photo.
    colorSpace :: (Core.Maybe Core.Text),
    -- | The exposure bias of the photo (APEX value).
    exposureBias :: (Core.Maybe Core.Double),
    -- | The exposure mode used to create the photo.
    exposureMode :: (Core.Maybe Core.Text),
    -- | The length of the exposure, in seconds.
    exposureTime :: (Core.Maybe Core.Double),
    -- | Whether a flash was used to create the photo.
    flashUsed :: (Core.Maybe Core.Bool),
    -- | The focal length used to create the photo, in millimeters.
    focalLength :: (Core.Maybe Core.Double),
    -- | The height of the image in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | The ISO speed used to create the photo.
    isoSpeed :: (Core.Maybe Core.Int32),
    -- | The lens used to create the photo.
    lens :: (Core.Maybe Core.Text),
    -- | Geographic location information stored in the image.
    location :: (Core.Maybe File_ImageMediaMetadata_Location),
    -- | The smallest f-number of the lens at the focal length used to create the photo (APEX value).
    maxApertureValue :: (Core.Maybe Core.Double),
    -- | The metering mode used to create the photo.
    meteringMode :: (Core.Maybe Core.Text),
    -- | The number of clockwise 90 degree rotations applied from the image\'s original orientation.
    rotation :: (Core.Maybe Core.Int32),
    -- | The type of sensor used to create the photo.
    sensor :: (Core.Maybe Core.Text),
    -- | The distance to the subject of the photo, in meters.
    subjectDistance :: (Core.Maybe Core.Int32),
    -- | The date and time the photo was taken (EXIF DateTime).
    time :: (Core.Maybe Core.Text),
    -- | The white balance mode used to create the photo.
    whiteBalance :: (Core.Maybe Core.Text),
    -- | The width of the image in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ImageMediaMetadata' with the minimum fields required to make a request.
newFile_ImageMediaMetadata ::
  File_ImageMediaMetadata
newFile_ImageMediaMetadata =
  File_ImageMediaMetadata
    { aperture = Core.Nothing,
      cameraMake = Core.Nothing,
      cameraModel = Core.Nothing,
      colorSpace = Core.Nothing,
      exposureBias = Core.Nothing,
      exposureMode = Core.Nothing,
      exposureTime = Core.Nothing,
      flashUsed = Core.Nothing,
      focalLength = Core.Nothing,
      height = Core.Nothing,
      isoSpeed = Core.Nothing,
      lens = Core.Nothing,
      location = Core.Nothing,
      maxApertureValue = Core.Nothing,
      meteringMode = Core.Nothing,
      rotation = Core.Nothing,
      sensor = Core.Nothing,
      subjectDistance = Core.Nothing,
      time = Core.Nothing,
      whiteBalance = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON File_ImageMediaMetadata where
  parseJSON =
    Core.withObject
      "File_ImageMediaMetadata"
      ( \o ->
          File_ImageMediaMetadata
            Core.<$> (o Core..:? "aperture")
            Core.<*> (o Core..:? "cameraMake")
            Core.<*> (o Core..:? "cameraModel")
            Core.<*> (o Core..:? "colorSpace")
            Core.<*> (o Core..:? "exposureBias")
            Core.<*> (o Core..:? "exposureMode")
            Core.<*> (o Core..:? "exposureTime")
            Core.<*> (o Core..:? "flashUsed")
            Core.<*> (o Core..:? "focalLength")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "isoSpeed")
            Core.<*> (o Core..:? "lens")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "maxApertureValue")
            Core.<*> (o Core..:? "meteringMode")
            Core.<*> (o Core..:? "rotation")
            Core.<*> (o Core..:? "sensor")
            Core.<*> (o Core..:? "subjectDistance")
            Core.<*> (o Core..:? "time")
            Core.<*> (o Core..:? "whiteBalance")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON File_ImageMediaMetadata where
  toJSON File_ImageMediaMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("aperture" Core..=) Core.<$> aperture,
            ("cameraMake" Core..=) Core.<$> cameraMake,
            ("cameraModel" Core..=) Core.<$> cameraModel,
            ("colorSpace" Core..=) Core.<$> colorSpace,
            ("exposureBias" Core..=) Core.<$> exposureBias,
            ("exposureMode" Core..=) Core.<$> exposureMode,
            ("exposureTime" Core..=) Core.<$> exposureTime,
            ("flashUsed" Core..=) Core.<$> flashUsed,
            ("focalLength" Core..=) Core.<$> focalLength,
            ("height" Core..=) Core.<$> height,
            ("isoSpeed" Core..=) Core.<$> isoSpeed,
            ("lens" Core..=) Core.<$> lens,
            ("location" Core..=) Core.<$> location,
            ("maxApertureValue" Core..=)
              Core.<$> maxApertureValue,
            ("meteringMode" Core..=) Core.<$> meteringMode,
            ("rotation" Core..=) Core.<$> rotation,
            ("sensor" Core..=) Core.<$> sensor,
            ("subjectDistance" Core..=) Core.<$> subjectDistance,
            ("time" Core..=) Core.<$> time,
            ("whiteBalance" Core..=) Core.<$> whiteBalance,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Geographic location information stored in the image.
--
-- /See:/ 'newFile_ImageMediaMetadata_Location' smart constructor.
data File_ImageMediaMetadata_Location = File_ImageMediaMetadata_Location
  { -- | The altitude stored in the image.
    altitude :: (Core.Maybe Core.Double),
    -- | The latitude stored in the image.
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude stored in the image.
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ImageMediaMetadata_Location' with the minimum fields required to make a request.
newFile_ImageMediaMetadata_Location ::
  File_ImageMediaMetadata_Location
newFile_ImageMediaMetadata_Location =
  File_ImageMediaMetadata_Location
    { altitude = Core.Nothing,
      latitude = Core.Nothing,
      longitude = Core.Nothing
    }

instance
  Core.FromJSON
    File_ImageMediaMetadata_Location
  where
  parseJSON =
    Core.withObject
      "File_ImageMediaMetadata_Location"
      ( \o ->
          File_ImageMediaMetadata_Location
            Core.<$> (o Core..:? "altitude")
            Core.<*> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON File_ImageMediaMetadata_Location where
  toJSON File_ImageMediaMetadata_Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("altitude" Core..=) Core.<$> altitude,
            ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | Contains details about the link URLs that clients are using to refer to this item.
--
-- /See:/ 'newFile_LinkShareMetadata' smart constructor.
data File_LinkShareMetadata = File_LinkShareMetadata
  { -- | Whether the file is eligible for security update.
    securityUpdateEligible :: (Core.Maybe Core.Bool),
    -- | Whether the security update is enabled for this file.
    securityUpdateEnabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_LinkShareMetadata' with the minimum fields required to make a request.
newFile_LinkShareMetadata ::
  File_LinkShareMetadata
newFile_LinkShareMetadata =
  File_LinkShareMetadata
    { securityUpdateEligible = Core.Nothing,
      securityUpdateEnabled = Core.Nothing
    }

instance Core.FromJSON File_LinkShareMetadata where
  parseJSON =
    Core.withObject
      "File_LinkShareMetadata"
      ( \o ->
          File_LinkShareMetadata
            Core.<$> (o Core..:? "securityUpdateEligible")
            Core.<*> (o Core..:? "securityUpdateEnabled")
      )

instance Core.ToJSON File_LinkShareMetadata where
  toJSON File_LinkShareMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("securityUpdateEligible" Core..=)
              Core.<$> securityUpdateEligible,
            ("securityUpdateEnabled" Core..=)
              Core.<$> securityUpdateEnabled
          ]
      )

-- | A collection of arbitrary key-value pairs which are visible to all apps. Entries with null values are cleared in update and copy requests.
--
-- /See:/ 'newFile_Properties' smart constructor.
newtype File_Properties = File_Properties
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_Properties' with the minimum fields required to make a request.
newFile_Properties ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  File_Properties
newFile_Properties addtional = File_Properties {addtional = addtional}

instance Core.FromJSON File_Properties where
  parseJSON =
    Core.withObject
      "File_Properties"
      ( \o ->
          File_Properties Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON File_Properties where
  toJSON File_Properties {..} = Core.toJSON addtional

-- | Shortcut file details. Only populated for shortcut files, which have the mimeType field set to application\/vnd.google-apps.shortcut.
--
-- /See:/ 'newFile_ShortcutDetails' smart constructor.
data File_ShortcutDetails = File_ShortcutDetails
  { -- | The ID of the file that this shortcut points to.
    targetId :: (Core.Maybe Core.Text),
    -- | The MIME type of the file that this shortcut points to. The value of this field is a snapshot of the target\'s MIME type, captured when the shortcut is created.
    targetMimeType :: (Core.Maybe Core.Text),
    -- | The ResourceKey for the target file.
    targetResourceKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_ShortcutDetails' with the minimum fields required to make a request.
newFile_ShortcutDetails ::
  File_ShortcutDetails
newFile_ShortcutDetails =
  File_ShortcutDetails
    { targetId = Core.Nothing,
      targetMimeType = Core.Nothing,
      targetResourceKey = Core.Nothing
    }

instance Core.FromJSON File_ShortcutDetails where
  parseJSON =
    Core.withObject
      "File_ShortcutDetails"
      ( \o ->
          File_ShortcutDetails
            Core.<$> (o Core..:? "targetId")
            Core.<*> (o Core..:? "targetMimeType")
            Core.<*> (o Core..:? "targetResourceKey")
      )

instance Core.ToJSON File_ShortcutDetails where
  toJSON File_ShortcutDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("targetId" Core..=) Core.<$> targetId,
            ("targetMimeType" Core..=) Core.<$> targetMimeType,
            ("targetResourceKey" Core..=)
              Core.<$> targetResourceKey
          ]
      )

-- | Additional metadata about video media. This may not be available immediately upon upload.
--
-- /See:/ 'newFile_VideoMediaMetadata' smart constructor.
data File_VideoMediaMetadata = File_VideoMediaMetadata
  { -- | The duration of the video in milliseconds.
    durationMillis :: (Core.Maybe Core.Int64),
    -- | The height of the video in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | The width of the video in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'File_VideoMediaMetadata' with the minimum fields required to make a request.
newFile_VideoMediaMetadata ::
  File_VideoMediaMetadata
newFile_VideoMediaMetadata =
  File_VideoMediaMetadata
    { durationMillis = Core.Nothing,
      height = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON File_VideoMediaMetadata where
  parseJSON =
    Core.withObject
      "File_VideoMediaMetadata"
      ( \o ->
          File_VideoMediaMetadata
            Core.<$> (o Core..:? "durationMillis")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON File_VideoMediaMetadata where
  toJSON File_VideoMediaMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationMillis" Core..=) Core.. Core.AsText
              Core.<$> durationMillis,
            ("height" Core..=) Core.<$> height,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A list of files.
--
-- /See:/ 'newFileList' smart constructor.
data FileList = FileList
  { -- | The list of files. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    files :: (Core.Maybe [File]),
    -- | Whether the search process was incomplete. If true, then some search results may be missing, since all documents were not searched. This may occur when searching multiple drives with the \"allDrives\" corpora, but all corpora could not be searched. When this happens, it is suggested that clients narrow their query by choosing a different corpus such as \"user\" or \"drive\".
    incompleteSearch :: (Core.Maybe Core.Bool),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#fileList\".
    kind :: Core.Text,
    -- | The page token for the next page of files. This will be absent if the end of the files list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileList' with the minimum fields required to make a request.
newFileList ::
  FileList
newFileList =
  FileList
    { files = Core.Nothing,
      incompleteSearch = Core.Nothing,
      kind = "drive#fileList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON FileList where
  parseJSON =
    Core.withObject
      "FileList"
      ( \o ->
          FileList
            Core.<$> (o Core..:? "files" Core..!= Core.mempty)
            Core.<*> (o Core..:? "incompleteSearch")
            Core.<*> (o Core..:? "kind" Core..!= "drive#fileList")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON FileList where
  toJSON FileList {..} =
    Core.object
      ( Core.catMaybes
          [ ("files" Core..=) Core.<$> files,
            ("incompleteSearch" Core..=)
              Core.<$> incompleteSearch,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A list of generated file IDs which can be provided in create requests.
--
-- /See:/ 'newGeneratedIds' smart constructor.
data GeneratedIds = GeneratedIds
  { -- | The IDs generated for the requesting user in the specified space.
    ids :: (Core.Maybe [Core.Text]),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#generatedIds\".
    kind :: Core.Text,
    -- | The type of file that can be created with these IDs.
    space :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedIds' with the minimum fields required to make a request.
newGeneratedIds ::
  GeneratedIds
newGeneratedIds =
  GeneratedIds
    { ids = Core.Nothing,
      kind = "drive#generatedIds",
      space = Core.Nothing
    }

instance Core.FromJSON GeneratedIds where
  parseJSON =
    Core.withObject
      "GeneratedIds"
      ( \o ->
          GeneratedIds
            Core.<$> (o Core..:? "ids" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "drive#generatedIds")
            Core.<*> (o Core..:? "space")
      )

instance Core.ToJSON GeneratedIds where
  toJSON GeneratedIds {..} =
    Core.object
      ( Core.catMaybes
          [ ("ids" Core..=) Core.<$> ids,
            Core.Just ("kind" Core..= kind),
            ("space" Core..=) Core.<$> space
          ]
      )

-- | A permission for a file. A permission grants a user, group, domain or the world access to a file or a folder hierarchy.
--
-- /See:/ 'newPermission' smart constructor.
data Permission = Permission
  { -- | Whether the permission allows the file to be discovered through search. This is only applicable for permissions of type domain or anyone.
    allowFileDiscovery :: (Core.Maybe Core.Bool),
    -- | Whether the account associated with this permission has been deleted. This field only pertains to user and group permissions.
    deleted :: (Core.Maybe Core.Bool),
    -- | The \"pretty\" name of the value of the permission. The following is a list of examples for each type of permission:
    -- - user - User\'s full name, as defined for their Google account, such as \"Joe Smith.\" - group - Name of the Google Group, such as \"The Company Administrators.\" - domain - String domain name, such as \"thecompany.com.\" - anyone - No displayName is present.
    displayName :: (Core.Maybe Core.Text),
    -- | The domain to which this permission refers.
    domain :: (Core.Maybe Core.Text),
    -- | The email address of the user or group to which this permission refers.
    emailAddress :: (Core.Maybe Core.Text),
    -- | The time at which this permission will expire (RFC 3339 date-time). Expiration times have the following restrictions:
    -- - They can only be set on user and group permissions - The time must be in the future - The time cannot be more than a year in the future
    expirationTime :: (Core.Maybe Core.DateTime'),
    -- | The ID of this permission. This is a unique identifier for the grantee, and is published in User resources as permissionId. IDs should be treated as opaque values.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#permission\".
    kind :: Core.Text,
    -- | Whether the account associated with this permission is a pending owner. Only populated for user type permissions for files that are not in a shared drive.
    pendingOwner :: (Core.Maybe Core.Bool),
    -- | Details of whether the permissions on this shared drive item are inherited or directly on this item. This is an output-only field which is present only for shared drive items.
    permissionDetails :: (Core.Maybe [Permission_PermissionDetailsItem]),
    -- | A link to the user\'s profile photo, if available.
    photoLink :: (Core.Maybe Core.Text),
    -- | The role granted by this permission. While new values may be supported in the future, the following are currently allowed:
    -- - owner - organizer - fileOrganizer - writer - commenter - reader
    role' :: (Core.Maybe Core.Text),
    -- | Deprecated - use permissionDetails instead.
    teamDrivePermissionDetails :: (Core.Maybe [Permission_TeamDrivePermissionDetailsItem]),
    -- | The type of the grantee. Valid values are:
    -- - user - group - domain - anyone When creating a permission, if type is user or group, you must provide an emailAddress for the user or group. When type is domain, you must provide a domain. There isn\'t extra information required for a anyone type.
    type' :: (Core.Maybe Core.Text),
    -- | Indicates the view for this permission. Only populated for permissions that belong to a view. published is the only supported value.
    view :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
newPermission ::
  Permission
newPermission =
  Permission
    { allowFileDiscovery = Core.Nothing,
      deleted = Core.Nothing,
      displayName = Core.Nothing,
      domain = Core.Nothing,
      emailAddress = Core.Nothing,
      expirationTime = Core.Nothing,
      id = Core.Nothing,
      kind = "drive#permission",
      pendingOwner = Core.Nothing,
      permissionDetails = Core.Nothing,
      photoLink = Core.Nothing,
      role' = Core.Nothing,
      teamDrivePermissionDetails = Core.Nothing,
      type' = Core.Nothing,
      view = Core.Nothing
    }

instance Core.FromJSON Permission where
  parseJSON =
    Core.withObject
      "Permission"
      ( \o ->
          Permission
            Core.<$> (o Core..:? "allowFileDiscovery")
            Core.<*> (o Core..:? "deleted")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "drive#permission")
            Core.<*> (o Core..:? "pendingOwner")
            Core.<*> (o Core..:? "permissionDetails" Core..!= Core.mempty)
            Core.<*> (o Core..:? "photoLink")
            Core.<*> (o Core..:? "role")
            Core.<*> ( o Core..:? "teamDrivePermissionDetails"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON Permission where
  toJSON Permission {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowFileDiscovery" Core..=)
              Core.<$> allowFileDiscovery,
            ("deleted" Core..=) Core.<$> deleted,
            ("displayName" Core..=) Core.<$> displayName,
            ("domain" Core..=) Core.<$> domain,
            ("emailAddress" Core..=) Core.<$> emailAddress,
            ("expirationTime" Core..=) Core.<$> expirationTime,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("pendingOwner" Core..=) Core.<$> pendingOwner,
            ("permissionDetails" Core..=)
              Core.<$> permissionDetails,
            ("photoLink" Core..=) Core.<$> photoLink,
            ("role" Core..=) Core.<$> role',
            ("teamDrivePermissionDetails" Core..=)
              Core.<$> teamDrivePermissionDetails,
            ("type" Core..=) Core.<$> type',
            ("view" Core..=) Core.<$> view
          ]
      )

--
-- /See:/ 'newPermission_PermissionDetailsItem' smart constructor.
data Permission_PermissionDetailsItem = Permission_PermissionDetailsItem
  { -- | Whether this permission is inherited. This field is always populated. This is an output-only field.
    inherited :: (Core.Maybe Core.Bool),
    -- | The ID of the item from which this permission is inherited. This is an output-only field.
    inheritedFrom :: (Core.Maybe Core.Text),
    -- | The permission type for this user. While new values may be added in future, the following are currently possible:
    -- - file - member
    permissionType :: (Core.Maybe Core.Text),
    -- | The primary role for this user. While new values may be added in the future, the following are currently possible:
    -- - organizer - fileOrganizer - writer - commenter - reader
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission_PermissionDetailsItem' with the minimum fields required to make a request.
newPermission_PermissionDetailsItem ::
  Permission_PermissionDetailsItem
newPermission_PermissionDetailsItem =
  Permission_PermissionDetailsItem
    { inherited = Core.Nothing,
      inheritedFrom = Core.Nothing,
      permissionType = Core.Nothing,
      role' = Core.Nothing
    }

instance
  Core.FromJSON
    Permission_PermissionDetailsItem
  where
  parseJSON =
    Core.withObject
      "Permission_PermissionDetailsItem"
      ( \o ->
          Permission_PermissionDetailsItem
            Core.<$> (o Core..:? "inherited")
            Core.<*> (o Core..:? "inheritedFrom")
            Core.<*> (o Core..:? "permissionType")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Permission_PermissionDetailsItem where
  toJSON Permission_PermissionDetailsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("inherited" Core..=) Core.<$> inherited,
            ("inheritedFrom" Core..=) Core.<$> inheritedFrom,
            ("permissionType" Core..=) Core.<$> permissionType,
            ("role" Core..=) Core.<$> role'
          ]
      )

--
-- /See:/ 'newPermission_TeamDrivePermissionDetailsItem' smart constructor.
data Permission_TeamDrivePermissionDetailsItem = Permission_TeamDrivePermissionDetailsItem
  { -- | Deprecated - use permissionDetails\/inherited instead.
    inherited :: (Core.Maybe Core.Bool),
    -- | Deprecated - use permissionDetails\/inheritedFrom instead.
    inheritedFrom :: (Core.Maybe Core.Text),
    -- | Deprecated - use permissionDetails\/role instead.
    role' :: (Core.Maybe Core.Text),
    -- | Deprecated - use permissionDetails\/permissionType instead.
    teamDrivePermissionType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission_TeamDrivePermissionDetailsItem' with the minimum fields required to make a request.
newPermission_TeamDrivePermissionDetailsItem ::
  Permission_TeamDrivePermissionDetailsItem
newPermission_TeamDrivePermissionDetailsItem =
  Permission_TeamDrivePermissionDetailsItem
    { inherited = Core.Nothing,
      inheritedFrom = Core.Nothing,
      role' = Core.Nothing,
      teamDrivePermissionType = Core.Nothing
    }

instance
  Core.FromJSON
    Permission_TeamDrivePermissionDetailsItem
  where
  parseJSON =
    Core.withObject
      "Permission_TeamDrivePermissionDetailsItem"
      ( \o ->
          Permission_TeamDrivePermissionDetailsItem
            Core.<$> (o Core..:? "inherited")
            Core.<*> (o Core..:? "inheritedFrom")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "teamDrivePermissionType")
      )

instance
  Core.ToJSON
    Permission_TeamDrivePermissionDetailsItem
  where
  toJSON Permission_TeamDrivePermissionDetailsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("inherited" Core..=) Core.<$> inherited,
            ("inheritedFrom" Core..=) Core.<$> inheritedFrom,
            ("role" Core..=) Core.<$> role',
            ("teamDrivePermissionType" Core..=)
              Core.<$> teamDrivePermissionType
          ]
      )

-- | A list of permissions for a file.
--
-- /See:/ 'newPermissionList' smart constructor.
data PermissionList = PermissionList
  { -- | Identifies what kind of resource this is. Value: the fixed string \"drive#permissionList\".
    kind :: Core.Text,
    -- | The page token for the next page of permissions. This field will be absent if the end of the permissions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of permissions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    permissions :: (Core.Maybe [Permission])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PermissionList' with the minimum fields required to make a request.
newPermissionList ::
  PermissionList
newPermissionList =
  PermissionList
    { kind = "drive#permissionList",
      nextPageToken = Core.Nothing,
      permissions = Core.Nothing
    }

instance Core.FromJSON PermissionList where
  parseJSON =
    Core.withObject
      "PermissionList"
      ( \o ->
          PermissionList
            Core.<$> (o Core..:? "kind" Core..!= "drive#permissionList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON PermissionList where
  toJSON PermissionList {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("permissions" Core..=) Core.<$> permissions
          ]
      )

-- | A reply to a comment on a file.
--
-- /See:/ 'newReply' smart constructor.
data Reply = Reply
  { -- | The action the reply performed to the parent comment. Valid values are:
    -- - resolve - reopen
    action :: (Core.Maybe Core.Text),
    -- | The author of the reply. The author\'s email address and permission ID will not be populated.
    author :: (Core.Maybe User),
    -- | The plain text content of the reply. This field is used for setting the content, while htmlContent should be displayed. This is required on creates if no action is specified.
    content :: (Core.Maybe Core.Text),
    -- | The time at which the reply was created (RFC 3339 date-time).
    createdTime :: (Core.Maybe Core.DateTime'),
    -- | Whether the reply has been deleted. A deleted reply has no content.
    deleted :: (Core.Maybe Core.Bool),
    -- | The content of the reply with HTML formatting.
    htmlContent :: (Core.Maybe Core.Text),
    -- | The ID of the reply.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#reply\".
    kind :: Core.Text,
    -- | The last time the reply was modified (RFC 3339 date-time).
    modifiedTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Reply' with the minimum fields required to make a request.
newReply ::
  Reply
newReply =
  Reply
    { action = Core.Nothing,
      author = Core.Nothing,
      content = Core.Nothing,
      createdTime = Core.Nothing,
      deleted = Core.Nothing,
      htmlContent = Core.Nothing,
      id = Core.Nothing,
      kind = "drive#reply",
      modifiedTime = Core.Nothing
    }

instance Core.FromJSON Reply where
  parseJSON =
    Core.withObject
      "Reply"
      ( \o ->
          Reply
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "author")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "createdTime")
            Core.<*> (o Core..:? "deleted")
            Core.<*> (o Core..:? "htmlContent")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "drive#reply")
            Core.<*> (o Core..:? "modifiedTime")
      )

instance Core.ToJSON Reply where
  toJSON Reply {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("author" Core..=) Core.<$> author,
            ("content" Core..=) Core.<$> content,
            ("createdTime" Core..=) Core.<$> createdTime,
            ("deleted" Core..=) Core.<$> deleted,
            ("htmlContent" Core..=) Core.<$> htmlContent,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("modifiedTime" Core..=) Core.<$> modifiedTime
          ]
      )

-- | A list of replies to a comment on a file.
--
-- /See:/ 'newReplyList' smart constructor.
data ReplyList = ReplyList
  { -- | Identifies what kind of resource this is. Value: the fixed string \"drive#replyList\".
    kind :: Core.Text,
    -- | The page token for the next page of replies. This will be absent if the end of the replies list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of replies. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    replies :: (Core.Maybe [Reply])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplyList' with the minimum fields required to make a request.
newReplyList ::
  ReplyList
newReplyList =
  ReplyList
    { kind = "drive#replyList",
      nextPageToken = Core.Nothing,
      replies = Core.Nothing
    }

instance Core.FromJSON ReplyList where
  parseJSON =
    Core.withObject
      "ReplyList"
      ( \o ->
          ReplyList
            Core.<$> (o Core..:? "kind" Core..!= "drive#replyList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "replies" Core..!= Core.mempty)
      )

instance Core.ToJSON ReplyList where
  toJSON ReplyList {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("replies" Core..=) Core.<$> replies
          ]
      )

-- | The metadata for a revision to a file.
--
-- /See:/ 'newRevision' smart constructor.
data Revision = Revision
  { -- | Links for exporting Docs Editors files to specific formats.
    exportLinks :: (Core.Maybe Revision_ExportLinks),
    -- | The ID of the revision.
    id :: (Core.Maybe Core.Text),
    -- | Whether to keep this revision forever, even if it is no longer the head revision. If not set, the revision will be automatically purged 30 days after newer content is uploaded. This can be set on a maximum of 200 revisions for a file. This field is only applicable to files with binary content in Drive.
    keepForever :: (Core.Maybe Core.Bool),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#revision\".
    kind :: Core.Text,
    -- | The last user to modify this revision.
    lastModifyingUser :: (Core.Maybe User),
    -- | The MD5 checksum of the revision\'s content. This is only applicable to files with binary content in Drive.
    md5Checksum :: (Core.Maybe Core.Text),
    -- | The MIME type of the revision.
    mimeType :: (Core.Maybe Core.Text),
    -- | The last time the revision was modified (RFC 3339 date-time).
    modifiedTime :: (Core.Maybe Core.DateTime'),
    -- | The original filename used to create this revision. This is only applicable to files with binary content in Drive.
    originalFilename :: (Core.Maybe Core.Text),
    -- | Whether subsequent revisions will be automatically republished. This is only applicable to Docs Editors files.
    publishAuto :: (Core.Maybe Core.Bool),
    -- | Whether this revision is published. This is only applicable to Docs Editors files.
    published :: (Core.Maybe Core.Bool),
    -- | A link to the published revision. This is only populated for Google Sites files.
    publishedLink :: (Core.Maybe Core.Text),
    -- | Whether this revision is published outside the domain. This is only applicable to Docs Editors files.
    publishedOutsideDomain :: (Core.Maybe Core.Bool),
    -- | The size of the revision\'s content in bytes. This is only applicable to files with binary content in Drive.
    size :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Revision' with the minimum fields required to make a request.
newRevision ::
  Revision
newRevision =
  Revision
    { exportLinks = Core.Nothing,
      id = Core.Nothing,
      keepForever = Core.Nothing,
      kind = "drive#revision",
      lastModifyingUser = Core.Nothing,
      md5Checksum = Core.Nothing,
      mimeType = Core.Nothing,
      modifiedTime = Core.Nothing,
      originalFilename = Core.Nothing,
      publishAuto = Core.Nothing,
      published = Core.Nothing,
      publishedLink = Core.Nothing,
      publishedOutsideDomain = Core.Nothing,
      size = Core.Nothing
    }

instance Core.FromJSON Revision where
  parseJSON =
    Core.withObject
      "Revision"
      ( \o ->
          Revision
            Core.<$> (o Core..:? "exportLinks")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "keepForever")
            Core.<*> (o Core..:? "kind" Core..!= "drive#revision")
            Core.<*> (o Core..:? "lastModifyingUser")
            Core.<*> (o Core..:? "md5Checksum")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "modifiedTime")
            Core.<*> (o Core..:? "originalFilename")
            Core.<*> (o Core..:? "publishAuto")
            Core.<*> (o Core..:? "published")
            Core.<*> (o Core..:? "publishedLink")
            Core.<*> (o Core..:? "publishedOutsideDomain")
            Core.<*> (o Core..:? "size")
      )

instance Core.ToJSON Revision where
  toJSON Revision {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportLinks" Core..=) Core.<$> exportLinks,
            ("id" Core..=) Core.<$> id,
            ("keepForever" Core..=) Core.<$> keepForever,
            Core.Just ("kind" Core..= kind),
            ("lastModifyingUser" Core..=)
              Core.<$> lastModifyingUser,
            ("md5Checksum" Core..=) Core.<$> md5Checksum,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("modifiedTime" Core..=) Core.<$> modifiedTime,
            ("originalFilename" Core..=)
              Core.<$> originalFilename,
            ("publishAuto" Core..=) Core.<$> publishAuto,
            ("published" Core..=) Core.<$> published,
            ("publishedLink" Core..=) Core.<$> publishedLink,
            ("publishedOutsideDomain" Core..=)
              Core.<$> publishedOutsideDomain,
            ("size" Core..=) Core.. Core.AsText Core.<$> size
          ]
      )

-- | Links for exporting Docs Editors files to specific formats.
--
-- /See:/ 'newRevision_ExportLinks' smart constructor.
newtype Revision_ExportLinks = Revision_ExportLinks
  { -- | A mapping from export format to URL
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Revision_ExportLinks' with the minimum fields required to make a request.
newRevision_ExportLinks ::
  -- |  A mapping from export format to URL See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Revision_ExportLinks
newRevision_ExportLinks addtional = Revision_ExportLinks {addtional = addtional}

instance Core.FromJSON Revision_ExportLinks where
  parseJSON =
    Core.withObject
      "Revision_ExportLinks"
      ( \o ->
          Revision_ExportLinks
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Revision_ExportLinks where
  toJSON Revision_ExportLinks {..} =
    Core.toJSON addtional

-- | A list of revisions of a file.
--
-- /See:/ 'newRevisionList' smart constructor.
data RevisionList = RevisionList
  { -- | Identifies what kind of resource this is. Value: the fixed string \"drive#revisionList\".
    kind :: Core.Text,
    -- | The page token for the next page of revisions. This will be absent if the end of the revisions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of revisions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    revisions :: (Core.Maybe [Revision])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RevisionList' with the minimum fields required to make a request.
newRevisionList ::
  RevisionList
newRevisionList =
  RevisionList
    { kind = "drive#revisionList",
      nextPageToken = Core.Nothing,
      revisions = Core.Nothing
    }

instance Core.FromJSON RevisionList where
  parseJSON =
    Core.withObject
      "RevisionList"
      ( \o ->
          RevisionList
            Core.<$> (o Core..:? "kind" Core..!= "drive#revisionList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "revisions" Core..!= Core.mempty)
      )

instance Core.ToJSON RevisionList where
  toJSON RevisionList {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("revisions" Core..=) Core.<$> revisions
          ]
      )

--
-- /See:/ 'newStartPageToken' smart constructor.
data StartPageToken = StartPageToken
  { -- | Identifies what kind of resource this is. Value: the fixed string \"drive#startPageToken\".
    kind :: Core.Text,
    -- | The starting page token for listing changes.
    startPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartPageToken' with the minimum fields required to make a request.
newStartPageToken ::
  StartPageToken
newStartPageToken =
  StartPageToken {kind = "drive#startPageToken", startPageToken = Core.Nothing}

instance Core.FromJSON StartPageToken where
  parseJSON =
    Core.withObject
      "StartPageToken"
      ( \o ->
          StartPageToken
            Core.<$> (o Core..:? "kind" Core..!= "drive#startPageToken")
            Core.<*> (o Core..:? "startPageToken")
      )

instance Core.ToJSON StartPageToken where
  toJSON StartPageToken {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("startPageToken" Core..=) Core.<$> startPageToken
          ]
      )

-- | Deprecated: use the drive collection instead.
--
-- /See:/ 'newTeamDrive' smart constructor.
data TeamDrive = TeamDrive
  { -- | An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on drive.teamdrives.update requests that don\'t set themeId. When specified, all fields of the backgroundImageFile must be set.
    backgroundImageFile :: (Core.Maybe TeamDrive_BackgroundImageFile),
    -- | A short-lived link to this Team Drive\'s background image.
    backgroundImageLink :: (Core.Maybe Core.Text),
    -- | Capabilities the current user has on this Team Drive.
    capabilities :: (Core.Maybe TeamDrive_Capabilities),
    -- | The color of this Team Drive as an RGB hex string. It can only be set on a drive.teamdrives.update request that does not set themeId.
    colorRgb :: (Core.Maybe Core.Text),
    -- | The time at which the Team Drive was created (RFC 3339 date-time).
    createdTime :: (Core.Maybe Core.DateTime'),
    -- | The ID of this Team Drive which is also the ID of the top level folder of this Team Drive.
    id :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#teamDrive\".
    kind :: Core.Text,
    -- | The name of this Team Drive.
    name :: (Core.Maybe Core.Text),
    -- | The organizational unit of this shared drive. This field is only populated on drives.list responses when the useDomainAdminAccess parameter is set to true.
    orgUnitId :: (Core.Maybe Core.Text),
    -- | A set of restrictions that apply to this Team Drive or items inside this Team Drive.
    restrictions :: (Core.Maybe TeamDrive_Restrictions),
    -- | The ID of the theme from which the background image and color will be set. The set of possible teamDriveThemes can be retrieved from a drive.about.get response. When not specified on a drive.teamdrives.create request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don\'t set colorRgb or backgroundImageFile.
    themeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive' with the minimum fields required to make a request.
newTeamDrive ::
  TeamDrive
newTeamDrive =
  TeamDrive
    { backgroundImageFile = Core.Nothing,
      backgroundImageLink = Core.Nothing,
      capabilities = Core.Nothing,
      colorRgb = Core.Nothing,
      createdTime = Core.Nothing,
      id = Core.Nothing,
      kind = "drive#teamDrive",
      name = Core.Nothing,
      orgUnitId = Core.Nothing,
      restrictions = Core.Nothing,
      themeId = Core.Nothing
    }

instance Core.FromJSON TeamDrive where
  parseJSON =
    Core.withObject
      "TeamDrive"
      ( \o ->
          TeamDrive
            Core.<$> (o Core..:? "backgroundImageFile")
            Core.<*> (o Core..:? "backgroundImageLink")
            Core.<*> (o Core..:? "capabilities")
            Core.<*> (o Core..:? "colorRgb")
            Core.<*> (o Core..:? "createdTime")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "drive#teamDrive")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "orgUnitId")
            Core.<*> (o Core..:? "restrictions")
            Core.<*> (o Core..:? "themeId")
      )

instance Core.ToJSON TeamDrive where
  toJSON TeamDrive {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundImageFile" Core..=)
              Core.<$> backgroundImageFile,
            ("backgroundImageLink" Core..=)
              Core.<$> backgroundImageLink,
            ("capabilities" Core..=) Core.<$> capabilities,
            ("colorRgb" Core..=) Core.<$> colorRgb,
            ("createdTime" Core..=) Core.<$> createdTime,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("orgUnitId" Core..=) Core.<$> orgUnitId,
            ("restrictions" Core..=) Core.<$> restrictions,
            ("themeId" Core..=) Core.<$> themeId
          ]
      )

-- | An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on drive.teamdrives.update requests that don\'t set themeId. When specified, all fields of the backgroundImageFile must be set.
--
-- /See:/ 'newTeamDrive_BackgroundImageFile' smart constructor.
data TeamDrive_BackgroundImageFile = TeamDrive_BackgroundImageFile
  { -- | The ID of an image file in Drive to use for the background image.
    id :: (Core.Maybe Core.Text),
    -- | The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.
    width :: (Core.Maybe Core.Double),
    -- | The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.
    xCoordinate :: (Core.Maybe Core.Double),
    -- | The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.
    yCoordinate :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive_BackgroundImageFile' with the minimum fields required to make a request.
newTeamDrive_BackgroundImageFile ::
  TeamDrive_BackgroundImageFile
newTeamDrive_BackgroundImageFile =
  TeamDrive_BackgroundImageFile
    { id = Core.Nothing,
      width = Core.Nothing,
      xCoordinate = Core.Nothing,
      yCoordinate = Core.Nothing
    }

instance Core.FromJSON TeamDrive_BackgroundImageFile where
  parseJSON =
    Core.withObject
      "TeamDrive_BackgroundImageFile"
      ( \o ->
          TeamDrive_BackgroundImageFile
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "width")
            Core.<*> (o Core..:? "xCoordinate")
            Core.<*> (o Core..:? "yCoordinate")
      )

instance Core.ToJSON TeamDrive_BackgroundImageFile where
  toJSON TeamDrive_BackgroundImageFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("width" Core..=) Core.<$> width,
            ("xCoordinate" Core..=) Core.<$> xCoordinate,
            ("yCoordinate" Core..=) Core.<$> yCoordinate
          ]
      )

-- | Capabilities the current user has on this Team Drive.
--
-- /See:/ 'newTeamDrive_Capabilities' smart constructor.
data TeamDrive_Capabilities = TeamDrive_Capabilities
  { -- | Whether the current user can add children to folders in this Team Drive.
    canAddChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the copyRequiresWriterPermission restriction of this Team Drive.
    canChangeCopyRequiresWriterPermissionRestriction :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the domainUsersOnly restriction of this Team Drive.
    canChangeDomainUsersOnlyRestriction :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the background of this Team Drive.
    canChangeTeamDriveBackground :: (Core.Maybe Core.Bool),
    -- | Whether the current user can change the teamMembersOnly restriction of this Team Drive.
    canChangeTeamMembersOnlyRestriction :: (Core.Maybe Core.Bool),
    -- | Whether the current user can comment on files in this Team Drive.
    canComment :: (Core.Maybe Core.Bool),
    -- | Whether the current user can copy files in this Team Drive.
    canCopy :: (Core.Maybe Core.Bool),
    -- | Whether the current user can delete children from folders in this Team Drive.
    canDeleteChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can delete this Team Drive. Attempting to delete the Team Drive may still fail if there are untrashed items inside the Team Drive.
    canDeleteTeamDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can download files in this Team Drive.
    canDownload :: (Core.Maybe Core.Bool),
    -- | Whether the current user can edit files in this Team Drive
    canEdit :: (Core.Maybe Core.Bool),
    -- | Whether the current user can list the children of folders in this Team Drive.
    canListChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can add members to this Team Drive or remove them or change their role.
    canManageMembers :: (Core.Maybe Core.Bool),
    -- | Whether the current user can read the revisions resource of files in this Team Drive.
    canReadRevisions :: (Core.Maybe Core.Bool),
    -- | Deprecated - use canDeleteChildren or canTrashChildren instead.
    canRemoveChildren :: (Core.Maybe Core.Bool),
    -- | Whether the current user can rename files or folders in this Team Drive.
    canRename :: (Core.Maybe Core.Bool),
    -- | Whether the current user can rename this Team Drive.
    canRenameTeamDrive :: (Core.Maybe Core.Bool),
    -- | Whether the current user can share files or folders in this Team Drive.
    canShare :: (Core.Maybe Core.Bool),
    -- | Whether the current user can trash children from folders in this Team Drive.
    canTrashChildren :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive_Capabilities' with the minimum fields required to make a request.
newTeamDrive_Capabilities ::
  TeamDrive_Capabilities
newTeamDrive_Capabilities =
  TeamDrive_Capabilities
    { canAddChildren = Core.Nothing,
      canChangeCopyRequiresWriterPermissionRestriction = Core.Nothing,
      canChangeDomainUsersOnlyRestriction = Core.Nothing,
      canChangeTeamDriveBackground = Core.Nothing,
      canChangeTeamMembersOnlyRestriction = Core.Nothing,
      canComment = Core.Nothing,
      canCopy = Core.Nothing,
      canDeleteChildren = Core.Nothing,
      canDeleteTeamDrive = Core.Nothing,
      canDownload = Core.Nothing,
      canEdit = Core.Nothing,
      canListChildren = Core.Nothing,
      canManageMembers = Core.Nothing,
      canReadRevisions = Core.Nothing,
      canRemoveChildren = Core.Nothing,
      canRename = Core.Nothing,
      canRenameTeamDrive = Core.Nothing,
      canShare = Core.Nothing,
      canTrashChildren = Core.Nothing
    }

instance Core.FromJSON TeamDrive_Capabilities where
  parseJSON =
    Core.withObject
      "TeamDrive_Capabilities"
      ( \o ->
          TeamDrive_Capabilities
            Core.<$> (o Core..:? "canAddChildren")
            Core.<*> ( o
                         Core..:? "canChangeCopyRequiresWriterPermissionRestriction"
                     )
            Core.<*> (o Core..:? "canChangeDomainUsersOnlyRestriction")
            Core.<*> (o Core..:? "canChangeTeamDriveBackground")
            Core.<*> (o Core..:? "canChangeTeamMembersOnlyRestriction")
            Core.<*> (o Core..:? "canComment")
            Core.<*> (o Core..:? "canCopy")
            Core.<*> (o Core..:? "canDeleteChildren")
            Core.<*> (o Core..:? "canDeleteTeamDrive")
            Core.<*> (o Core..:? "canDownload")
            Core.<*> (o Core..:? "canEdit")
            Core.<*> (o Core..:? "canListChildren")
            Core.<*> (o Core..:? "canManageMembers")
            Core.<*> (o Core..:? "canReadRevisions")
            Core.<*> (o Core..:? "canRemoveChildren")
            Core.<*> (o Core..:? "canRename")
            Core.<*> (o Core..:? "canRenameTeamDrive")
            Core.<*> (o Core..:? "canShare")
            Core.<*> (o Core..:? "canTrashChildren")
      )

instance Core.ToJSON TeamDrive_Capabilities where
  toJSON TeamDrive_Capabilities {..} =
    Core.object
      ( Core.catMaybes
          [ ("canAddChildren" Core..=) Core.<$> canAddChildren,
            ( "canChangeCopyRequiresWriterPermissionRestriction"
                Core..=
            )
              Core.<$> canChangeCopyRequiresWriterPermissionRestriction,
            ("canChangeDomainUsersOnlyRestriction" Core..=)
              Core.<$> canChangeDomainUsersOnlyRestriction,
            ("canChangeTeamDriveBackground" Core..=)
              Core.<$> canChangeTeamDriveBackground,
            ("canChangeTeamMembersOnlyRestriction" Core..=)
              Core.<$> canChangeTeamMembersOnlyRestriction,
            ("canComment" Core..=) Core.<$> canComment,
            ("canCopy" Core..=) Core.<$> canCopy,
            ("canDeleteChildren" Core..=)
              Core.<$> canDeleteChildren,
            ("canDeleteTeamDrive" Core..=)
              Core.<$> canDeleteTeamDrive,
            ("canDownload" Core..=) Core.<$> canDownload,
            ("canEdit" Core..=) Core.<$> canEdit,
            ("canListChildren" Core..=) Core.<$> canListChildren,
            ("canManageMembers" Core..=)
              Core.<$> canManageMembers,
            ("canReadRevisions" Core..=)
              Core.<$> canReadRevisions,
            ("canRemoveChildren" Core..=)
              Core.<$> canRemoveChildren,
            ("canRename" Core..=) Core.<$> canRename,
            ("canRenameTeamDrive" Core..=)
              Core.<$> canRenameTeamDrive,
            ("canShare" Core..=) Core.<$> canShare,
            ("canTrashChildren" Core..=)
              Core.<$> canTrashChildren
          ]
      )

-- | A set of restrictions that apply to this Team Drive or items inside this Team Drive.
--
-- /See:/ 'newTeamDrive_Restrictions' smart constructor.
data TeamDrive_Restrictions = TeamDrive_Restrictions
  { -- | Whether administrative privileges on this Team Drive are required to modify restrictions.
    adminManagedRestrictions :: (Core.Maybe Core.Bool),
    -- | Whether the options to copy, print, or download files inside this Team Drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this Team Drive.
    copyRequiresWriterPermission :: (Core.Maybe Core.Bool),
    -- | Whether access to this Team Drive and items inside this Team Drive is restricted to users of the domain to which this Team Drive belongs. This restriction may be overridden by other sharing policies controlled outside of this Team Drive.
    domainUsersOnly :: (Core.Maybe Core.Bool),
    -- | Whether access to items inside this Team Drive is restricted to members of this Team Drive.
    teamMembersOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDrive_Restrictions' with the minimum fields required to make a request.
newTeamDrive_Restrictions ::
  TeamDrive_Restrictions
newTeamDrive_Restrictions =
  TeamDrive_Restrictions
    { adminManagedRestrictions = Core.Nothing,
      copyRequiresWriterPermission = Core.Nothing,
      domainUsersOnly = Core.Nothing,
      teamMembersOnly = Core.Nothing
    }

instance Core.FromJSON TeamDrive_Restrictions where
  parseJSON =
    Core.withObject
      "TeamDrive_Restrictions"
      ( \o ->
          TeamDrive_Restrictions
            Core.<$> (o Core..:? "adminManagedRestrictions")
            Core.<*> (o Core..:? "copyRequiresWriterPermission")
            Core.<*> (o Core..:? "domainUsersOnly")
            Core.<*> (o Core..:? "teamMembersOnly")
      )

instance Core.ToJSON TeamDrive_Restrictions where
  toJSON TeamDrive_Restrictions {..} =
    Core.object
      ( Core.catMaybes
          [ ("adminManagedRestrictions" Core..=)
              Core.<$> adminManagedRestrictions,
            ("copyRequiresWriterPermission" Core..=)
              Core.<$> copyRequiresWriterPermission,
            ("domainUsersOnly" Core..=) Core.<$> domainUsersOnly,
            ("teamMembersOnly" Core..=)
              Core.<$> teamMembersOnly
          ]
      )

-- | A list of Team Drives.
--
-- /See:/ 'newTeamDriveList' smart constructor.
data TeamDriveList = TeamDriveList
  { -- | Identifies what kind of resource this is. Value: the fixed string \"drive#teamDriveList\".
    kind :: Core.Text,
    -- | The page token for the next page of Team Drives. This will be absent if the end of the Team Drives list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of Team Drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
    teamDrives :: (Core.Maybe [TeamDrive])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeamDriveList' with the minimum fields required to make a request.
newTeamDriveList ::
  TeamDriveList
newTeamDriveList =
  TeamDriveList
    { kind = "drive#teamDriveList",
      nextPageToken = Core.Nothing,
      teamDrives = Core.Nothing
    }

instance Core.FromJSON TeamDriveList where
  parseJSON =
    Core.withObject
      "TeamDriveList"
      ( \o ->
          TeamDriveList
            Core.<$> (o Core..:? "kind" Core..!= "drive#teamDriveList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "teamDrives" Core..!= Core.mempty)
      )

instance Core.ToJSON TeamDriveList where
  toJSON TeamDriveList {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("teamDrives" Core..=) Core.<$> teamDrives
          ]
      )

-- | Information about a Drive user.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | A plain text displayable name for this user.
    displayName :: (Core.Maybe Core.Text),
    -- | The email address of the user. This may not be present in certain contexts if the user has not made their email address visible to the requester.
    emailAddress :: (Core.Maybe Core.Text),
    -- | Identifies what kind of resource this is. Value: the fixed string \"drive#user\".
    kind :: Core.Text,
    -- | Whether this user is the requesting user.
    me :: (Core.Maybe Core.Bool),
    -- | The user\'s ID as visible in Permission resources.
    permissionId :: (Core.Maybe Core.Text),
    -- | A link to the user\'s profile photo, if available.
    photoLink :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { displayName = Core.Nothing,
      emailAddress = Core.Nothing,
      kind = "drive#user",
      me = Core.Nothing,
      permissionId = Core.Nothing,
      photoLink = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "kind" Core..!= "drive#user")
            Core.<*> (o Core..:? "me")
            Core.<*> (o Core..:? "permissionId")
            Core.<*> (o Core..:? "photoLink")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("emailAddress" Core..=) Core.<$> emailAddress,
            Core.Just ("kind" Core..= kind),
            ("me" Core..=) Core.<$> me,
            ("permissionId" Core..=) Core.<$> permissionId,
            ("photoLink" Core..=) Core.<$> photoLink
          ]
      )
