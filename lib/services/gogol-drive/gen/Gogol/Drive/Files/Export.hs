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
-- Module      : Gogol.Drive.Files.Export
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a Google Workspace document to the requested MIME type and returns exported byte content. Note that the exported content is limited to 10MB.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.export@.
module Gogol.Drive.Files.Export
  ( -- * Resource
    DriveFilesExportResource,

    -- ** Constructing a Request
    DriveFilesExport (..),
    newDriveFilesExport,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.files.export@ method which the
-- 'DriveFilesExport' request conforms to.
type DriveFilesExportResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "export"
    Core.:> Core.QueryParam "mimeType" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ()
    Core.:<|> "drive"
      Core.:> "v3"
      Core.:> "files"
      Core.:> Core.Capture "fileId" Core.Text
      Core.:> "export"
      Core.:> Core.QueryParam "mimeType" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Exports a Google Workspace document to the requested MIME type and returns exported byte content. Note that the exported content is limited to 10MB.
--
-- /See:/ 'newDriveFilesExport' smart constructor.
data DriveFilesExport = DriveFilesExport
  { -- | The ID of the file.
    fileId :: Core.Text,
    -- | The MIME type of the format requested for this export.
    mimeType :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesExport' with the minimum fields required to make a request.
newDriveFilesExport ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  The MIME type of the format requested for this export. See 'mimeType'.
  Core.Text ->
  DriveFilesExport
newDriveFilesExport fileId mimeType =
  DriveFilesExport {fileId = fileId, mimeType = mimeType}

instance Core.GoogleRequest DriveFilesExport where
  type Rs DriveFilesExport = ()
  type
    Scopes DriveFilesExport =
      '[Drive'FullControl, Drive'File, Drive'Readonly]
  requestClient DriveFilesExport {..} =
    go
      fileId
      (Core.Just mimeType)
      (Core.Just Core.AltJSON)
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesExportResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload DriveFilesExport)
  where
  type
    Rs (Core.MediaDownload DriveFilesExport) =
      Core.Stream
  type
    Scopes (Core.MediaDownload DriveFilesExport) =
      Core.Scopes DriveFilesExport
  requestClient
    (Core.MediaDownload DriveFilesExport {..}) =
      go
        fileId
        (Core.Just mimeType)
        (Core.Just Core.AltMedia)
        driveService
      where
        _ Core.:<|> go =
          Core.buildClient
            (Core.Proxy :: Core.Proxy DriveFilesExportResource)
            Core.mempty
