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
-- Module      : Network.Google.Dataflow.Projects.Locations.Snapshots.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.snapshots.delete@.
module Network.Google.Dataflow.Projects.Locations.Snapshots.Delete
  ( -- * Resource
    DataflowProjectsLocationsSnapshotsDeleteResource,

    -- ** Constructing a Request
    newDataflowProjectsLocationsSnapshotsDelete,
    DataflowProjectsLocationsSnapshotsDelete,
  )
where

import Network.Google.Dataflow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataflow.projects.locations.snapshots.delete@ method which the
-- 'DataflowProjectsLocationsSnapshotsDelete' request conforms to.
type DataflowProjectsLocationsSnapshotsDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] DeleteSnapshotResponse

-- | Deletes a snapshot.
--
-- /See:/ 'newDataflowProjectsLocationsSnapshotsDelete' smart constructor.
data DataflowProjectsLocationsSnapshotsDelete = DataflowProjectsLocationsSnapshotsDelete
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

-- | Creates a value of 'DataflowProjectsLocationsSnapshotsDelete' with the minimum fields required to make a request.
newDataflowProjectsLocationsSnapshotsDelete ::
  -- |  The location that contains this snapshot. See 'location'.
  Core.Text ->
  -- |  The ID of the Cloud Platform project that the snapshot belongs to. See 'projectId'.
  Core.Text ->
  -- |  The ID of the snapshot. See 'snapshotId'.
  Core.Text ->
  DataflowProjectsLocationsSnapshotsDelete
newDataflowProjectsLocationsSnapshotsDelete location projectId snapshotId =
  DataflowProjectsLocationsSnapshotsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = location,
      projectId = projectId,
      snapshotId = snapshotId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsSnapshotsDelete
  where
  type
    Rs DataflowProjectsLocationsSnapshotsDelete =
      DeleteSnapshotResponse
  type
    Scopes DataflowProjectsLocationsSnapshotsDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient
    DataflowProjectsLocationsSnapshotsDelete {..} =
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
                Core.Proxy
                  DataflowProjectsLocationsSnapshotsDeleteResource
            )
            Core.mempty
