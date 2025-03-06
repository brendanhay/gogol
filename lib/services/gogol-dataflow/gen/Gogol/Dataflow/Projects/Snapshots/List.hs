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
-- Module      : Gogol.Dataflow.Projects.Snapshots.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists snapshots.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.snapshots.list@.
module Gogol.Dataflow.Projects.Snapshots.List
  ( -- * Resource
    DataflowProjectsSnapshotsListResource,

    -- ** Constructing a Request
    DataflowProjectsSnapshotsList (..),
    newDataflowProjectsSnapshotsList,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.snapshots.list@ method which the
-- 'DataflowProjectsSnapshotsList' request conforms to.
type DataflowProjectsSnapshotsListResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "snapshots"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "jobId" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSnapshotsResponse

-- | Lists snapshots.
--
-- /See:/ 'newDataflowProjectsSnapshotsList' smart constructor.
data DataflowProjectsSnapshotsList = DataflowProjectsSnapshotsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If specified, list snapshots created from this job.
    jobId :: (Core.Maybe Core.Text),
    -- | The location to list snapshots in.
    location :: (Core.Maybe Core.Text),
    -- | The project ID to list snapshots for.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsSnapshotsList' with the minimum fields required to make a request.
newDataflowProjectsSnapshotsList ::
  -- |  The project ID to list snapshots for. See 'projectId'.
  Core.Text ->
  DataflowProjectsSnapshotsList
newDataflowProjectsSnapshotsList projectId =
  DataflowProjectsSnapshotsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = Core.Nothing,
      location = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsSnapshotsList where
  type Rs DataflowProjectsSnapshotsList = ListSnapshotsResponse
  type
    Scopes DataflowProjectsSnapshotsList =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsSnapshotsList {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      jobId
      location
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DataflowProjectsSnapshotsListResource)
          Core.mempty
