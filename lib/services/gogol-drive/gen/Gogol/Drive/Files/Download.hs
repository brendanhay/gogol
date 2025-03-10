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
-- Module      : Gogol.Drive.Files.Download
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads content of a file. Operations are valid for 24 hours from the time of creation.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.download@.
module Gogol.Drive.Files.Download
  ( -- * Resource
    DriveFilesDownloadResource,

    -- ** Constructing a Request
    DriveFilesDownload (..),
    newDriveFilesDownload,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.download@ method which the
-- 'DriveFilesDownload' request conforms to.
type DriveFilesDownloadResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "download"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "mimeType" Core.Text
    Core.:> Core.QueryParam "revisionId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Downloads content of a file. Operations are valid for 24 hours from the time of creation.
--
-- /See:/ 'newDriveFilesDownload' smart constructor.
data DriveFilesDownload = DriveFilesDownload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the file to download.
    fileId :: Core.Text,
    -- | Optional. The MIME type the file should be downloaded as. This field can only be set when downloading Google Workspace documents. See </drive/api/guides/ref-export-formats Export MIME types for Google Workspace documents> for the list of supported MIME types. If not set, a Google Workspace document is downloaded with a default MIME type. The default MIME type might change in the future.
    mimeType :: (Core.Maybe Core.Text),
    -- | Optional. The revision ID of the file to download. This field can only be set when downloading blob files, Google Docs, and Google Sheets. Returns @INVALID_ARGUMENT@ if downloading a specific revision on the file is unsupported.
    revisionId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesDownload' with the minimum fields required to make a request.
newDriveFilesDownload ::
  -- |  Required. The ID of the file to download. See 'fileId'.
  Core.Text ->
  DriveFilesDownload
newDriveFilesDownload fileId =
  DriveFilesDownload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fileId = fileId,
      mimeType = Core.Nothing,
      revisionId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesDownload where
  type Rs DriveFilesDownload = Operation
  type
    Scopes DriveFilesDownload =
      '[Drive'FullControl, Drive'File, Drive'Readonly]
  requestClient DriveFilesDownload {..} =
    go
      fileId
      xgafv
      accessToken
      callback
      mimeType
      revisionId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesDownloadResource)
          Core.mempty
