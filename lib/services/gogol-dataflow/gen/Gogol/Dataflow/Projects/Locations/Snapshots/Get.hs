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
-- Module      : Gogol.Dataflow.Projects.Locations.Snapshots.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.snapshots.get@.
module Gogol.Dataflow.Projects.Locations.Snapshots.Get
  ( -- * Resource
    DataflowProjectsLocationsSnapshotsGetResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsSnapshotsGet (..),
    newDataflowProjectsLocationsSnapshotsGet,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.snapshots.get@ method which the
-- 'DataflowProjectsLocationsSnapshotsGet' request conforms to.
type DataflowProjectsLocationsSnapshotsGetResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "snapshots"
    Core.:> Core.Capture "snapshotId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Snapshot

-- | Gets information about a snapshot.
--
-- /See:/ 'newDataflowProjectsLocationsSnapshotsGet' smart constructor.
data DataflowProjectsLocationsSnapshotsGet = DataflowProjectsLocationsSnapshotsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The location that contains this snapshot.
    location :: Core.Text,
    -- | The ID of the Cloud Platform project that the snapshot belongs to.
    projectId :: Core.Text,
    -- | The ID of the snapshot.
    snapshotId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsSnapshotsGet' with the minimum fields required to make a request.
newDataflowProjectsLocationsSnapshotsGet ::
  -- |  The location that contains this snapshot. See 'location'.
  Core.Text ->
  -- |  The ID of the Cloud Platform project that the snapshot belongs to. See 'projectId'.
  Core.Text ->
  -- |  The ID of the snapshot. See 'snapshotId'.
  Core.Text ->
  DataflowProjectsLocationsSnapshotsGet
newDataflowProjectsLocationsSnapshotsGet
  location
  projectId
  snapshotId =
    DataflowProjectsLocationsSnapshotsGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        location = location,
        projectId = projectId,
        snapshotId = snapshotId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest DataflowProjectsLocationsSnapshotsGet where
  type Rs DataflowProjectsLocationsSnapshotsGet = Snapshot
  type
    Scopes DataflowProjectsLocationsSnapshotsGet =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsSnapshotsGet {..} =
    go
      projectId
      location
      snapshotId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsLocationsSnapshotsGetResource
          )
          Core.mempty
