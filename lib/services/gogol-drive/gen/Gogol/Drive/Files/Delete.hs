{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Files.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a file owned by the user without moving it to the trash. If the file belongs to a shared drive, the user must be an @organizer@ on the parent folder. If the target is a folder, all descendants owned by the user are also deleted.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.delete@.
module Gogol.Drive.Files.Delete
  ( -- * Resource
    DriveFilesDeleteResource,

    -- ** Constructing a Request
    DriveFilesDelete (..),
    newDriveFilesDelete,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.delete@ method which the
-- 'DriveFilesDelete' request conforms to.
type DriveFilesDeleteResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Permanently deletes a file owned by the user without moving it to the trash. If the file belongs to a shared drive, the user must be an @organizer@ on the parent folder. If the target is a folder, all descendants owned by the user are also deleted.
--
-- /See:/ 'newDriveFilesDelete' smart constructor.
data DriveFilesDelete = DriveFilesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated: If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner\'s root.
    enforceSingleParent :: Core.Bool,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated: Use @supportsAllDrives@ instead.
    supportsTeamDrives :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesDelete' with the minimum fields required to make a request.
newDriveFilesDelete ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveFilesDelete
newDriveFilesDelete fileId =
  DriveFilesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enforceSingleParent = Core.False,
      fileId = fileId,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesDelete where
  type Rs DriveFilesDelete = ()
  type
    Scopes DriveFilesDelete =
      '[Drive'FullControl, Drive'Appdata, Drive'File]
  requestClient DriveFilesDelete {..} =
    go
      fileId
      xgafv
      accessToken
      callback
      (Core.Just enforceSingleParent)
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesDeleteResource)
          Core.mempty
