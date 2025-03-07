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
-- Module      : Gogol.Drive.Files.GenerateIds
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a set of file IDs which can be provided in create or copy requests.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.generateIds@.
module Gogol.Drive.Files.GenerateIds
  ( -- * Resource
    DriveFilesGenerateIdsResource,

    -- ** Constructing a Request
    DriveFilesGenerateIds (..),
    newDriveFilesGenerateIds,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.files.generateIds@ method which the
-- 'DriveFilesGenerateIds' request conforms to.
type DriveFilesGenerateIdsResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> "generateIds"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "count" Core.Int32
    Core.:> Core.QueryParam "space" Core.Text
    Core.:> Core.QueryParam "type" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GeneratedIds

-- | Generates a set of file IDs which can be provided in create or copy requests.
--
-- /See:/ 'newDriveFilesGenerateIds' smart constructor.
data DriveFilesGenerateIds = DriveFilesGenerateIds
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The number of IDs to return.
    count :: Core.Int32,
    -- | The space in which the IDs can be used to create new files. Supported values are \'drive\' and \'appDataFolder\'. (Default: \'drive\')
    space :: Core.Text,
    -- | The type of items which the IDs can be used for. Supported values are \'files\' and \'shortcuts\'. Note that \'shortcuts\' are only supported in the @drive@ \'space\'. (Default: \'files\')
    type' :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesGenerateIds' with the minimum fields required to make a request.
newDriveFilesGenerateIds ::
  DriveFilesGenerateIds
newDriveFilesGenerateIds =
  DriveFilesGenerateIds
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      count = 10,
      space = "drive",
      type' = "files",
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesGenerateIds where
  type Rs DriveFilesGenerateIds = GeneratedIds
  type
    Scopes DriveFilesGenerateIds =
      '[Drive'FullControl, Drive'Appdata, Drive'File]
  requestClient DriveFilesGenerateIds {..} =
    go
      xgafv
      accessToken
      callback
      (Core.Just count)
      (Core.Just space)
      (Core.Just type')
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveFilesGenerateIdsResource)
          Core.mempty
