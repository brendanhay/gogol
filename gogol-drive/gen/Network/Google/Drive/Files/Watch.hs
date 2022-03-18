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
-- Module      : Network.Google.Drive.Files.Watch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Subscribes to changes to a file. While you can establish a channel forchanges to a file on a shared drive, a change to a shared drive file won\'t create a notification.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.watch@.
module Network.Google.Drive.Files.Watch
  ( -- * Resource
    DriveFilesWatchResource,

    -- ** Constructing a Request
    newDriveFilesWatch,
    DriveFilesWatch,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.files.watch@ method which the
-- 'DriveFilesWatch' request conforms to.
type DriveFilesWatchResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "watch"
    Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Channel
    Core.:> Core.Post '[Core.JSON] Channel
    Core.:<|> "drive"
      Core.:> "v3"
      Core.:> "files"
      Core.:> Core.Capture "fileId" Core.Text
      Core.:> "watch"
      Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
      Core.:> Core.QueryParam "includePermissionsForView" Core.Text
      Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
      Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Post '[Core.OctetStream] Core.Stream

-- | Subscribes to changes to a file. While you can establish a channel forchanges to a file on a shared drive, a change to a shared drive file won\'t create a notification.
--
-- /See:/ 'newDriveFilesWatch' smart constructor.
data DriveFilesWatch = DriveFilesWatch
  { -- | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.
    acknowledgeAbuse :: Core.Bool,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    includePermissionsForView :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Channel,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesWatch' with the minimum fields required to make a request.
newDriveFilesWatch ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  DriveFilesWatch
newDriveFilesWatch fileId payload =
  DriveFilesWatch
    { acknowledgeAbuse = Core.False,
      fileId = fileId,
      includePermissionsForView = Core.Nothing,
      payload = payload,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False
    }

instance Core.GoogleRequest DriveFilesWatch where
  type Rs DriveFilesWatch = Channel
  type
    Scopes DriveFilesWatch =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.appdata",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.metadata",
         "https://www.googleapis.com/auth/drive.metadata.readonly",
         "https://www.googleapis.com/auth/drive.photos.readonly",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveFilesWatch {..} =
    go
      fileId
      (Core.Just acknowledgeAbuse)
      includePermissionsForView
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesWatchResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload DriveFilesWatch)
  where
  type
    Rs (Core.MediaDownload DriveFilesWatch) =
      Core.Stream
  type
    Scopes (Core.MediaDownload DriveFilesWatch) =
      Core.Scopes DriveFilesWatch
  requestClient
    (Core.MediaDownload DriveFilesWatch {..}) =
      go
        fileId
        (Core.Just acknowledgeAbuse)
        includePermissionsForView
        (Core.Just supportsAllDrives)
        (Core.Just supportsTeamDrives)
        (Core.Just Core.AltMedia)
        driveService
      where
        _ Core.:<|> go =
          Core.buildClient
            (Core.Proxy :: Core.Proxy DriveFilesWatchResource)
            Core.mempty
