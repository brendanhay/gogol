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
-- Module      : Gogol.File.Projects.Locations.Instances.Snapshots.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a specific snapshot.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.snapshots.patch@.
module Gogol.File.Projects.Locations.Instances.Snapshots.Patch
  ( -- * Resource
    FileProjectsLocationsInstancesSnapshotsPatchResource,

    -- ** Constructing a Request
    FileProjectsLocationsInstancesSnapshotsPatch (..),
    newFileProjectsLocationsInstancesSnapshotsPatch,
  )
where

import Gogol.File.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @file.projects.locations.instances.snapshots.patch@ method which the
-- 'FileProjectsLocationsInstancesSnapshotsPatch' request conforms to.
type FileProjectsLocationsInstancesSnapshotsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Snapshot
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the settings of a specific snapshot.
--
-- /See:/ 'newFileProjectsLocationsInstancesSnapshotsPatch' smart constructor.
data FileProjectsLocationsInstancesSnapshotsPatch = FileProjectsLocationsInstancesSnapshotsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the snapshot, in the format @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\/snapshots\/{snapshot_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Snapshot,
    -- | Required. Mask of fields to update. At least one path must be supplied in this field.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesSnapshotsPatch' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesSnapshotsPatch ::
  -- |  Output only. The resource name of the snapshot, in the format @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\/snapshots\/{snapshot_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Snapshot ->
  FileProjectsLocationsInstancesSnapshotsPatch
newFileProjectsLocationsInstancesSnapshotsPatch name payload =
  FileProjectsLocationsInstancesSnapshotsPatch
    { xgafv =
        Core.Nothing,
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
    FileProjectsLocationsInstancesSnapshotsPatch
  where
  type Rs FileProjectsLocationsInstancesSnapshotsPatch = Operation
  type
    Scopes FileProjectsLocationsInstancesSnapshotsPatch =
      '[CloudPlatform'FullControl]
  requestClient FileProjectsLocationsInstancesSnapshotsPatch {..} =
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
              Core.Proxy FileProjectsLocationsInstancesSnapshotsPatchResource
          )
          Core.mempty
