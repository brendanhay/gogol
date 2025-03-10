{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Drive.Files.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a file\'s metadata or content by ID. If you provide the URL parameter @alt=media@, then the response includes the file contents in the response body. Downloading content with @alt=media@ only works if the file is stored in Drive. To download Google Docs, Sheets, and Slides use </drive/api/reference/rest/v3/files/export files.export> instead. For more information, see </drive/api/guides/manage-downloads Download & export files>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.get@.
module Gogol.Drive.Files.Get
  ( -- * Resource
    DriveFilesGetResource,

    -- ** Constructing a Request
    DriveFilesGet (..),
    newDriveFilesGet,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.get@ method which the
-- 'DriveFilesGet' request conforms to.
type DriveFilesGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeLabels" Core.Text
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] File
    Core.:<|> "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeLabels" Core.Text
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltMedia
    Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Gets a file\'s metadata or content by ID. If you provide the URL parameter @alt=media@, then the response includes the file contents in the response body. Downloading content with @alt=media@ only works if the file is stored in Drive. To download Google Docs, Sheets, and Slides use </drive/api/reference/rest/v3/files/export files.export> instead. For more information, see </drive/api/guides/manage-downloads Download & export files>.
--
-- /See:/ 'newDriveFilesGet' smart constructor.
data DriveFilesGet = DriveFilesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when the @alt@ parameter is set to @media@ and the user is the owner of the file or an organizer of the shared drive in which the file resides.
    acknowledgeAbuse :: Core.Bool,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | A comma-separated list of IDs of labels to include in the @labelInfo@ part of the response.
    includeLabels :: (Core.Maybe Core.Text),
    -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    includePermissionsForView :: (Core.Maybe Core.Text),
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

-- | Creates a value of 'DriveFilesGet' with the minimum fields required to make a request.
newDriveFilesGet ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveFilesGet
newDriveFilesGet fileId =
  DriveFilesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      acknowledgeAbuse = Core.False,
      callback = Core.Nothing,
      fileId = fileId,
      includeLabels = Core.Nothing,
      includePermissionsForView = Core.Nothing,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesGet where
  type Rs DriveFilesGet = File
  type
    Scopes DriveFilesGet =
      '[ Drive'FullControl,
         Drive'Appdata,
         Drive'File,
         Drive'Meet'Readonly,
         Drive'Metadata,
         Drive'Metadata'Readonly,
         Drive'Photos'Readonly,
         Drive'Readonly
       ]
  requestClient DriveFilesGet {..} =
    go
      fileId
      xgafv
      accessToken
      (Core.Just acknowledgeAbuse)
      callback
      includeLabels
      includePermissionsForView
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesGetResource)
          Core.mempty

instance Core.GoogleRequest (Core.MediaDownload DriveFilesGet) where
  type Rs (Core.MediaDownload DriveFilesGet) = Core.Stream
  type
    Scopes (Core.MediaDownload DriveFilesGet) =
      Core.Scopes DriveFilesGet
  requestClient (Core.MediaDownload DriveFilesGet {..}) =
    go
      fileId
      xgafv
      accessToken
      (Core.Just acknowledgeAbuse)
      callback
      includeLabels
      includePermissionsForView
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      uploadType
      uploadProtocol
      (Core.Just Core.AltMedia)
      driveService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesGetResource)
          Core.mempty
