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
-- Module      : Gogol.Dataflow.Projects.Locations.Snapshots.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists snapshots.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.snapshots.list@.
module Gogol.Dataflow.Projects.Locations.Snapshots.List
  ( -- * Resource
    DataflowProjectsLocationsSnapshotsListResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsSnapshotsList (..),
    newDataflowProjectsLocationsSnapshotsList,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.snapshots.list@ method which the
-- 'DataflowProjectsLocationsSnapshotsList' request conforms to.
type DataflowProjectsLocationsSnapshotsListResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "snapshots"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "jobId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSnapshotsResponse

-- | Lists snapshots.
--
-- /See:/ 'newDataflowProjectsLocationsSnapshotsList' smart constructor.
data DataflowProjectsLocationsSnapshotsList = DataflowProjectsLocationsSnapshotsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If specified, list snapshots created from this job.
    jobId :: (Core.Maybe Core.Text),
    -- | The location to list snapshots in.
    location :: Core.Text,
    -- | The project ID to list snapshots for.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsSnapshotsList' with the minimum fields required to make a request.
newDataflowProjectsLocationsSnapshotsList ::
  -- |  The location to list snapshots in. See 'location'.
  Core.Text ->
  -- |  The project ID to list snapshots for. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsSnapshotsList
newDataflowProjectsLocationsSnapshotsList location projectId =
  DataflowProjectsLocationsSnapshotsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = Core.Nothing,
      location = location,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsLocationsSnapshotsList where
  type
    Rs DataflowProjectsLocationsSnapshotsList =
      ListSnapshotsResponse
  type
    Scopes DataflowProjectsLocationsSnapshotsList =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsSnapshotsList {..} =
    go
      projectId
      location
      xgafv
      accessToken
      callback
      jobId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsLocationsSnapshotsListResource
          )
          Core.mempty
