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
-- Module      : Gogol.Drive.Files.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.create@.
module Gogol.Drive.Files.Create
  ( -- * Resource
    DriveFilesCreateResource,

    -- ** Constructing a Request
    newDriveFilesCreate,
    DriveFilesCreate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.files.create@ method which the
-- 'DriveFilesCreate' request conforms to.
type DriveFilesCreateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "ignoreDefaultVisibility" Core.Bool
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "keepRevisionForever" Core.Bool
    Core.:> Core.QueryParam "ocrLanguage" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "useContentAsIndexableText" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] File
    Core.:> Core.Post '[Core.JSON] File
    Core.:<|> "upload"
      Core.:> "drive"
      Core.:> "v3"
      Core.:> "files"
      Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
      Core.:> Core.QueryParam "ignoreDefaultVisibility" Core.Bool
      Core.:> Core.QueryParam "includePermissionsForView" Core.Text
      Core.:> Core.QueryParam "keepRevisionForever" Core.Bool
      Core.:> Core.QueryParam "ocrLanguage" Core.Text
      Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
      Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
      Core.:> Core.QueryParam
                "useContentAsIndexableText"
                Core.Bool
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] File
      Core.:> Core.Post '[Core.JSON] File

-- | Creates a new file.
--
-- /See:/ 'newDriveFilesCreate' smart constructor.
data DriveFilesCreate = DriveFilesCreate
  { -- | Deprecated. Creating files in multiple folders is no longer supported.
    enforceSingleParent :: Core.Bool,
    -- | Whether to ignore the domain\'s default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
    ignoreDefaultVisibility :: Core.Bool,
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
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool,
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
    { enforceSingleParent = Core.False,
      ignoreDefaultVisibility = Core.False,
      includePermissionsForView = Core.Nothing,
      keepRevisionForever = Core.False,
      ocrLanguage = Core.Nothing,
      payload = payload,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      useContentAsIndexableText = Core.False
    }

instance Core.GoogleRequest DriveFilesCreate where
  type Rs DriveFilesCreate = File
  type
    Scopes DriveFilesCreate =
      '[Drive'FullControl, Drive'Appdata, Drive'File]
  requestClient DriveFilesCreate {..} =
    go
      (Core.Just enforceSingleParent)
      (Core.Just ignoreDefaultVisibility)
      includePermissionsForView
      (Core.Just keepRevisionForever)
      ocrLanguage
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just useContentAsIndexableText)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesCreateResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload DriveFilesCreate)
  where
  type Rs (Core.MediaUpload DriveFilesCreate) = File
  type
    Scopes (Core.MediaUpload DriveFilesCreate) =
      Core.Scopes DriveFilesCreate
  requestClient
    (Core.MediaUpload DriveFilesCreate {..} body) =
      go
        (Core.Just enforceSingleParent)
        (Core.Just ignoreDefaultVisibility)
        includePermissionsForView
        (Core.Just keepRevisionForever)
        ocrLanguage
        (Core.Just supportsAllDrives)
        (Core.Just supportsTeamDrives)
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
