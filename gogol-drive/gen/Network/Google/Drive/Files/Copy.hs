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
-- Module      : Network.Google.Drive.Files.Copy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a copy of a file and applies any requested updates with patch semantics. Folders cannot be copied.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.copy@.
module Network.Google.Drive.Files.Copy
  ( -- * Resource
    DriveFilesCopyResource,

    -- ** Constructing a Request
    newDriveFilesCopy,
    DriveFilesCopy,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.files.copy@ method which the
-- 'DriveFilesCopy' request conforms to.
type DriveFilesCopyResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "copy"
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "ignoreDefaultVisibility" Core.Bool
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "keepRevisionForever" Core.Bool
    Core.:> Core.QueryParam "ocrLanguage" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] File
    Core.:> Core.Post '[Core.JSON] File

-- | Creates a copy of a file and applies any requested updates with patch semantics. Folders cannot be copied.
--
-- /See:/ 'newDriveFilesCopy' smart constructor.
data DriveFilesCopy = DriveFilesCopy
  { -- | Deprecated. Copying files into multiple folders is no longer supported. Use shortcuts instead.
    enforceSingleParent :: Core.Bool,
    -- | The ID of the file.
    fileId :: Core.Text,
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
    supportsTeamDrives :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesCopy' with the minimum fields required to make a request.
newDriveFilesCopy ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  File ->
  DriveFilesCopy
newDriveFilesCopy fileId payload =
  DriveFilesCopy
    { enforceSingleParent = Core.False,
      fileId = fileId,
      ignoreDefaultVisibility = Core.False,
      includePermissionsForView = Core.Nothing,
      keepRevisionForever = Core.False,
      ocrLanguage = Core.Nothing,
      payload = payload,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False
    }

instance Core.GoogleRequest DriveFilesCopy where
  type Rs DriveFilesCopy = File
  type
    Scopes DriveFilesCopy =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.appdata",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.photos.readonly"
       ]
  requestClient DriveFilesCopy {..} =
    go
      fileId
      (Core.Just enforceSingleParent)
      (Core.Just ignoreDefaultVisibility)
      includePermissionsForView
      (Core.Just keepRevisionForever)
      ocrLanguage
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesCopyResource)
          Core.mempty
