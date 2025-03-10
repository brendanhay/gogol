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
-- Module      : Gogol.Drive.Files.Export
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a Google Workspace document to the requested MIME type and returns exported byte content. Note that the exported content is limited to 10MB.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.export@.
module Gogol.Drive.Files.Export
  ( -- * Resource
    DriveFilesExportResource,

    -- ** Constructing a Request
    DriveFilesExport (..),
    newDriveFilesExport,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.export@ method which the
-- 'DriveFilesExport' request conforms to.
type DriveFilesExportResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "export"
    Core.:> Core.QueryParam "mimeType" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ()
    Core.:<|> "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "export"
    Core.:> Core.QueryParam "mimeType" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltMedia
    Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Exports a Google Workspace document to the requested MIME type and returns exported byte content. Note that the exported content is limited to 10MB.
--
-- /See:/ 'newDriveFilesExport' smart constructor.
data DriveFilesExport = DriveFilesExport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Required. The MIME type of the format requested for this export.
    mimeType :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesExport' with the minimum fields required to make a request.
newDriveFilesExport ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Required. The MIME type of the format requested for this export. See 'mimeType'.
  Core.Text ->
  DriveFilesExport
newDriveFilesExport fileId mimeType =
  DriveFilesExport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fileId = fileId,
      mimeType = mimeType,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesExport where
  type Rs DriveFilesExport = ()
  type
    Scopes DriveFilesExport =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Meet'Readonly,
         Drive'Readonly
       ]
  requestClient DriveFilesExport {..} =
    go
      fileId
      (Core.Just mimeType)
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesExportResource)
          Core.mempty

instance Core.GoogleRequest (Core.MediaDownload DriveFilesExport) where
  type Rs (Core.MediaDownload DriveFilesExport) = Core.Stream
  type
    Scopes (Core.MediaDownload DriveFilesExport) =
      Core.Scopes DriveFilesExport
  requestClient (Core.MediaDownload DriveFilesExport {..}) =
    go
      fileId
      (Core.Just mimeType)
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltMedia)
      driveService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesExportResource)
          Core.mempty
