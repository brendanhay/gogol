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
-- Module      : Gogol.Drive.Files.EmptyTrash
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes all of the user\'s trashed files.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.emptyTrash@.
module Gogol.Drive.Files.EmptyTrash
  ( -- * Resource
    DriveFilesEmptyTrashResource,

    -- ** Constructing a Request
    DriveFilesEmptyTrash (..),
    newDriveFilesEmptyTrash,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.emptyTrash@ method which the
-- 'DriveFilesEmptyTrash' request conforms to.
type DriveFilesEmptyTrashResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> "trash"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "driveId" Core.Text
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Permanently deletes all of the user\'s trashed files.
--
-- /See:/ 'newDriveFilesEmptyTrash' smart constructor.
data DriveFilesEmptyTrash = DriveFilesEmptyTrash
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If set, empties the trash of the provided shared drive.
    driveId :: (Core.Maybe Core.Text),
    -- | Deprecated: If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner\'s root.
    enforceSingleParent :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesEmptyTrash' with the minimum fields required to make a request.
newDriveFilesEmptyTrash ::
  DriveFilesEmptyTrash
newDriveFilesEmptyTrash =
  DriveFilesEmptyTrash
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      driveId = Core.Nothing,
      enforceSingleParent = Core.False,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesEmptyTrash where
  type Rs DriveFilesEmptyTrash = ()
  type Scopes DriveFilesEmptyTrash = '[Drive'FullControl]
  requestClient DriveFilesEmptyTrash {..} =
    go
      xgafv
      accessToken
      callback
      driveId
      (Core.Just enforceSingleParent)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesEmptyTrashResource)
          Core.mempty
