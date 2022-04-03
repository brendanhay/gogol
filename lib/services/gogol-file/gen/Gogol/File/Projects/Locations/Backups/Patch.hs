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
-- Module      : Gogol.File.Projects.Locations.Backups.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a specific backup.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.patch@.
module Gogol.File.Projects.Locations.Backups.Patch
  ( -- * Resource
    FileProjectsLocationsBackupsPatchResource,

    -- ** Constructing a Request
    FileProjectsLocationsBackupsPatch (..),
    newFileProjectsLocationsBackupsPatch,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.backups.patch@ method which the
-- 'FileProjectsLocationsBackupsPatch' request conforms to.
type FileProjectsLocationsBackupsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Backup
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the settings of a specific backup.
--
-- /See:/ 'newFileProjectsLocationsBackupsPatch' smart constructor.
data FileProjectsLocationsBackupsPatch = FileProjectsLocationsBackupsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the backup, in the format @projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Backup,
    -- | Required. Mask of fields to update. At least one path must be supplied in this field.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsBackupsPatch' with the minimum fields required to make a request.
newFileProjectsLocationsBackupsPatch ::
  -- |  Output only. The resource name of the backup, in the format @projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Backup ->
  FileProjectsLocationsBackupsPatch
newFileProjectsLocationsBackupsPatch name payload =
  FileProjectsLocationsBackupsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsBackupsPatch
  where
  type Rs FileProjectsLocationsBackupsPatch = Operation
  type
    Scopes FileProjectsLocationsBackupsPatch =
      '[CloudPlatform'FullControl]
  requestClient FileProjectsLocationsBackupsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fileService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FileProjectsLocationsBackupsPatchResource
          )
          Core.mempty
