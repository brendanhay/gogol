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
-- Module      : Gogol.Drive.Files.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a file\'s metadata or content by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.get@.
module Gogol.Drive.Files.Get
  ( -- * Resource
    DriveFilesGetResource,

    -- ** Constructing a Request
    DriveFilesGet (..),
    newDriveFilesGet,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.files.get@ method which the
-- 'DriveFilesGet' request conforms to.
type DriveFilesGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
    Core.:> Core.QueryParam "includeLabels" Core.Text
    Core.:> Core.QueryParam "includePermissionsForView" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] File
    Core.:<|> "drive"
      Core.:> "v3"
      Core.:> "files"
      Core.:> Core.Capture "fileId" Core.Text
      Core.:> Core.QueryParam "acknowledgeAbuse" Core.Bool
      Core.:> Core.QueryParam "includeLabels" Core.Text
      Core.:> Core.QueryParam "includePermissionsForView" Core.Text
      Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
      Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Gets a file\'s metadata or content by ID.
--
-- /See:/ 'newDriveFilesGet' smart constructor.
data DriveFilesGet = DriveFilesGet
  { -- | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.
    acknowledgeAbuse :: Core.Bool,
    -- | The ID of the file.
    fileId :: Core.Text,
    -- | A comma-separated list of IDs of labels to include in the labelInfo part of the response.
    includeLabels :: (Core.Maybe Core.Text),
    -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    includePermissionsForView :: (Core.Maybe Core.Text),
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesGet' with the minimum fields required to make a request.
newDriveFilesGet ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  DriveFilesGet
newDriveFilesGet fileId =
  DriveFilesGet
    { acknowledgeAbuse = Core.False,
      fileId = fileId,
      includeLabels = Core.Nothing,
      includePermissionsForView = Core.Nothing,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False
    }

instance Core.GoogleRequest DriveFilesGet where
  type Rs DriveFilesGet = File
  type
    Scopes DriveFilesGet =
      '[ Drive'FullControl,
         Drive'Appdata,
         Drive'File,
         Drive'Metadata,
         Drive'Metadata'Readonly,
         Drive'Photos'Readonly,
         Drive'Readonly
       ]
  requestClient DriveFilesGet {..} =
    go
      fileId
      (Core.Just acknowledgeAbuse)
      includeLabels
      includePermissionsForView
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just Core.AltJSON)
      driveService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesGetResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload DriveFilesGet)
  where
  type
    Rs (Core.MediaDownload DriveFilesGet) =
      Core.Stream
  type
    Scopes (Core.MediaDownload DriveFilesGet) =
      Core.Scopes DriveFilesGet
  requestClient (Core.MediaDownload DriveFilesGet {..}) =
    go
      fileId
      (Core.Just acknowledgeAbuse)
      includeLabels
      includePermissionsForView
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just Core.AltMedia)
      driveService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesGetResource)
          Core.mempty
