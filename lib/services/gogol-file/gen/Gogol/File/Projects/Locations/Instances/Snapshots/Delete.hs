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
-- Module      : Gogol.File.Projects.Locations.Instances.Snapshots.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a snapshot.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.snapshots.delete@.
module Gogol.File.Projects.Locations.Instances.Snapshots.Delete
  ( -- * Resource
    FileProjectsLocationsInstancesSnapshotsDeleteResource,

    -- ** Constructing a Request
    FileProjectsLocationsInstancesSnapshotsDelete (..),
    newFileProjectsLocationsInstancesSnapshotsDelete,
  )
where

import Gogol.File.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @file.projects.locations.instances.snapshots.delete@ method which the
-- 'FileProjectsLocationsInstancesSnapshotsDelete' request conforms to.
type FileProjectsLocationsInstancesSnapshotsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a snapshot.
--
-- /See:/ 'newFileProjectsLocationsInstancesSnapshotsDelete' smart constructor.
data FileProjectsLocationsInstancesSnapshotsDelete = FileProjectsLocationsInstancesSnapshotsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The snapshot resource name, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}\/snapshots\/{snapshot_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesSnapshotsDelete' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesSnapshotsDelete ::
  -- |  Required. The snapshot resource name, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}\/snapshots\/{snapshot_id}@ See 'name'.
  Core.Text ->
  FileProjectsLocationsInstancesSnapshotsDelete
newFileProjectsLocationsInstancesSnapshotsDelete name =
  FileProjectsLocationsInstancesSnapshotsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsInstancesSnapshotsDelete
  where
  type Rs FileProjectsLocationsInstancesSnapshotsDelete = Operation
  type
    Scopes FileProjectsLocationsInstancesSnapshotsDelete =
      '[CloudPlatform'FullControl]
  requestClient FileProjectsLocationsInstancesSnapshotsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fileService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FileProjectsLocationsInstancesSnapshotsDeleteResource
          )
          Core.mempty
