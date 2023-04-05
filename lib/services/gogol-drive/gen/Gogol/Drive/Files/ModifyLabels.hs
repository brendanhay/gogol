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
-- Module      : Gogol.Drive.Files.ModifyLabels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the set of labels on a file.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.modifyLabels@.
module Gogol.Drive.Files.ModifyLabels
  ( -- * Resource
    DriveFilesModifyLabelsResource,

    -- ** Constructing a Request
    DriveFilesModifyLabels (..),
    newDriveFilesModifyLabels,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.files.modifyLabels@ method which the
-- 'DriveFilesModifyLabels' request conforms to.
type DriveFilesModifyLabelsResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "modifyLabels"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ModifyLabelsRequest
    Core.:> Core.Post '[Core.JSON] ModifyLabelsResponse

-- | Modifies the set of labels on a file.
--
-- /See:/ 'newDriveFilesModifyLabels' smart constructor.
data DriveFilesModifyLabels = DriveFilesModifyLabels
  { -- | The ID of the file for which the labels are modified.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ModifyLabelsRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesModifyLabels' with the minimum fields required to make a request.
newDriveFilesModifyLabels ::
  -- |  The ID of the file for which the labels are modified. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ModifyLabelsRequest ->
  DriveFilesModifyLabels
newDriveFilesModifyLabels fileId payload =
  DriveFilesModifyLabels {fileId = fileId, payload = payload}

instance Core.GoogleRequest DriveFilesModifyLabels where
  type Rs DriveFilesModifyLabels = ModifyLabelsResponse
  type
    Scopes DriveFilesModifyLabels =
      '[Drive'FullControl, Drive'File, Drive'Metadata]
  requestClient DriveFilesModifyLabels {..} =
    go
      fileId
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveFilesModifyLabelsResource
          )
          Core.mempty
