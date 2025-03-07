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
-- Module      : Gogol.Drive.Files.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new file. This method supports an /\/upload/ URI and accepts uploaded media with the following characteristics: - /Maximum file size:/ 5,120 GB - /Accepted Media MIME types:/@*\/*@ Note: Specify a valid MIME type, rather than the literal @*\/*@ value. The literal @*\/*@ is only used to indicate that any valid MIME type can be uploaded. For more information on uploading files, see </drive/api/guides/manage-uploads Upload file data>. Apps creating shortcuts with @files.create@ must specify the MIME type @application\/vnd.google-apps.shortcut@. Apps should specify a file extension in the @name@ property when inserting files with the API. For example, an operation to insert a JPEG file should specify something like @\"name\": \"cat.jpg\"@ in the metadata. Subsequent @GET@ requests include the read-only @fileExtension@ property populated with the extension originally specified in the @title@ property. When a Google Drive user requests to download a file, or when the file is downloaded through the sync
-- client, Drive builds a full filename (with extension) based on the title. In cases where the extension is missing, Drive attempts to determine the extension based on the file\'s MIME type.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.create@.
module Gogol.Drive.Files.Create
  ( -- * Resource
    DriveFilesCreateResource,

    -- ** Constructing a Request
    DriveFilesCreate (..),
    newDriveFilesCreate,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.create@ method which the
-- 'DriveFilesCreate' request conforms to.
type DriveFilesCreateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "ignoreDefaultVisibility" Core.Bool
    Core.:> Core.QueryParam "includeLabels" Core.Text
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "keepRevisionForever" Core.Bool
    Core.:> Core.QueryParam "ocrLanguage" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useContentAsIndexableText" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] File
    Core.:> Core.Post '[Core.JSON] File
    Core.:<|> "upload"
    Core.:> "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "ignoreDefaultVisibility" Core.Bool
    Core.:> Core.QueryParam "includeLabels" Core.Text
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "keepRevisionForever" Core.Bool
    Core.:> Core.QueryParam "ocrLanguage" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useContentAsIndexableText" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] File
    Core.:> Core.Post '[Core.JSON] File

-- | Creates a new file. This method supports an /\/upload/ URI and accepts uploaded media with the following characteristics: - /Maximum file size:/ 5,120 GB - /Accepted Media MIME types:/@*\/*@ Note: Specify a valid MIME type, rather than the literal @*\/*@ value. The literal @*\/*@ is only used to indicate that any valid MIME type can be uploaded. For more information on uploading files, see </drive/api/guides/manage-uploads Upload file data>. Apps creating shortcuts with @files.create@ must specify the MIME type @application\/vnd.google-apps.shortcut@. Apps should specify a file extension in the @name@ property when inserting files with the API. For example, an operation to insert a JPEG file should specify something like @\"name\": \"cat.jpg\"@ in the metadata. Subsequent @GET@ requests include the read-only @fileExtension@ property populated with the extension originally specified in the @title@ property. When a Google Drive user requests to download a file, or when the file is downloaded through the sync
-- client, Drive builds a full filename (with extension) based on the title. In cases where the extension is missing, Drive attempts to determine the extension based on the file\'s MIME type.
--
-- /See:/ 'newDriveFilesCreate' smart constructor.
data DriveFilesCreate = DriveFilesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. Creating files in multiple folders is no longer supported.
    enforceSingleParent :: Core.Bool,
    -- | Whether to ignore the domain\'s default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
    ignoreDefaultVisibility :: Core.Bool,
    -- | A comma-separated list of IDs of labels to include in the @labelInfo@ part of the response.
    includeLabels :: (Core.Maybe Core.Text),
    -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    includePermissionsForView :: (Core.Maybe Core.Text),
    -- | Whether to set the \'keepForever\' field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.
    keepRevisionForever :: Core.Bool,
    -- | A language hint for OCR processing during image import (ISO 639-1 code).
    ocrLanguage :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: File,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated: Use @supportsAllDrives@ instead.
    supportsTeamDrives :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Whether to use the uploaded content as indexable text.
    useContentAsIndexableText :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesCreate' with the minimum fields required to make a request.
newDriveFilesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  File ->
  DriveFilesCreate
newDriveFilesCreate payload =
  DriveFilesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enforceSingleParent = Core.False,
      ignoreDefaultVisibility = Core.False,
      includeLabels = Core.Nothing,
      includePermissionsForView = Core.Nothing,
      keepRevisionForever = Core.False,
      ocrLanguage = Core.Nothing,
      payload = payload,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useContentAsIndexableText = Core.False
    }

instance Core.GoogleRequest DriveFilesCreate where
  type Rs DriveFilesCreate = File
  type
    Scopes DriveFilesCreate =
      '[Drive'FullControl, Drive'Appdata, Drive'File]
  requestClient DriveFilesCreate {..} =
    go
      xgafv
      accessToken
      callback
      (Core.Just enforceSingleParent)
      (Core.Just ignoreDefaultVisibility)
      includeLabels
      includePermissionsForView
      (Core.Just keepRevisionForever)
      ocrLanguage
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      uploadType
      uploadProtocol
      (Core.Just useContentAsIndexableText)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesCreateResource)
          Core.mempty

instance Core.GoogleRequest (Core.MediaUpload DriveFilesCreate) where
  type Rs (Core.MediaUpload DriveFilesCreate) = File
  type
    Scopes (Core.MediaUpload DriveFilesCreate) =
      Core.Scopes DriveFilesCreate
  requestClient (Core.MediaUpload DriveFilesCreate {..} body) =
    go
      xgafv
      accessToken
      callback
      (Core.Just enforceSingleParent)
      (Core.Just ignoreDefaultVisibility)
      includeLabels
      includePermissionsForView
      (Core.Just keepRevisionForever)
      ocrLanguage
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      uploadType
      uploadProtocol
      (Core.Just useContentAsIndexableText)
      (Core.Just Core.AltJSON)
      (Core.Just Core.Multipart)
      payload
      body
      driveService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesCreateResource)
          Core.mempty
