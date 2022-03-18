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
-- Module      : Network.Google.Drive.Files.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a file\'s metadata and\/or content. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might change automatically, such as modifiedDate. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.update@.
module Network.Google.Drive.Files.Update
  ( -- * Resource
    DriveFilesUpdateResource,

    -- ** Constructing a Request
    newDriveFilesUpdate,
    DriveFilesUpdate,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.files.update@ method which the
-- 'DriveFilesUpdate' request conforms to.
type DriveFilesUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> Core.QueryParam "addParents" Core.Text
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "keepRevisionForever" Core.Bool
    Core.:> Core.QueryParam "ocrLanguage" Core.Text
    Core.:> Core.QueryParam "removeParents" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam
              "useContentAsIndexableText"
              Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] File
    Core.:> Core.Patch '[Core.JSON] File
    Core.:<|> "upload"
      Core.:> "drive"
      Core.:> "v3"
      Core.:> "files"
      Core.:> Core.Capture "fileId" Core.Text
      Core.:> Core.QueryParam "addParents" Core.Text
      Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
      Core.:> Core.QueryParam "includePermissionsForView" Core.Text
      Core.:> Core.QueryParam "keepRevisionForever" Core.Bool
      Core.:> Core.QueryParam "ocrLanguage" Core.Text
      Core.:> Core.QueryParam "removeParents" Core.Text
      Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
      Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
      Core.:> Core.QueryParam
                "useContentAsIndexableText"
                Core.Bool
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] File
      Core.:> Core.Patch '[Core.JSON] File

-- | Updates a file\'s metadata and\/or content. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might change automatically, such as modifiedDate. This method supports patch semantics.
--
-- /See:/ 'newDriveFilesUpdate' smart constructor.
data DriveFilesUpdate = DriveFilesUpdate
  { -- | A comma-separated list of parent IDs to add.
    addParents :: (Core.Maybe Core.Text),
    -- | Deprecated. Adding files to multiple folders is no longer supported. Use shortcuts instead.
    enforceSingleParent :: Core.Bool,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    includePermissionsForView :: (Core.Maybe Core.Text),
    -- | Whether to set the \'keepForever\' field in the new head revision. This is only applicable to files with binary content in Google Drive. Only 200 revisions for the file can be kept forever. If the limit is reached, try deleting pinned revisions.
    keepRevisionForever :: Core.Bool,
    -- | A language hint for OCR processing during image import (ISO 639-1 code).
    ocrLanguage :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: File,
    -- | A comma-separated list of parent IDs to remove.
    removeParents :: (Core.Maybe Core.Text),
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool,
    -- | Whether to use the uploaded content as indexable text.
    useContentAsIndexableText :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesUpdate' with the minimum fields required to make a request.
newDriveFilesUpdate ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  File ->
  DriveFilesUpdate
newDriveFilesUpdate fileId payload =
  DriveFilesUpdate
    { addParents = Core.Nothing,
      enforceSingleParent = Core.False,
      fileId = fileId,
      includePermissionsForView = Core.Nothing,
      keepRevisionForever = Core.False,
      ocrLanguage = Core.Nothing,
      payload = payload,
      removeParents = Core.Nothing,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      useContentAsIndexableText = Core.False
    }

instance Core.GoogleRequest DriveFilesUpdate where
  type Rs DriveFilesUpdate = File
  type
    Scopes DriveFilesUpdate =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.appdata",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.metadata",
         "https://www.googleapis.com/auth/drive.scripts"
       ]
  requestClient DriveFilesUpdate {..} =
    go
      fileId
      addParents
      (Core.Just enforceSingleParent)
      includePermissionsForView
      (Core.Just keepRevisionForever)
      ocrLanguage
      removeParents
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just useContentAsIndexableText)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesUpdateResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload DriveFilesUpdate)
  where
  type Rs (Core.MediaUpload DriveFilesUpdate) = File
  type
    Scopes (Core.MediaUpload DriveFilesUpdate) =
      Core.Scopes DriveFilesUpdate
  requestClient
    (Core.MediaUpload DriveFilesUpdate {..} body) =
      go
        fileId
        addParents
        (Core.Just enforceSingleParent)
        includePermissionsForView
        (Core.Just keepRevisionForever)
        ocrLanguage
        removeParents
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
            (Core.Proxy :: Core.Proxy DriveFilesUpdateResource)
            Core.mempty
