{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Leases a dataflow WorkItem to run.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.workItems.lease@.
module Gogol.Dataflow.Projects.Locations.Jobs.WorkItems.Lease
  ( -- * Resource
    DataflowProjectsLocationsJobsWorkItemsLeaseResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsJobsWorkItemsLease (..),
    newDataflowProjectsLocationsJobsWorkItemsLease,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.jobs.workItems.lease@ method which the
-- 'DataflowProjectsLocationsJobsWorkItemsLease' request conforms to.
type DataflowProjectsLocationsJobsWorkItemsLeaseResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "workItems:lease"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LeaseWorkItemRequest
    Core.:> Core.Post '[Core.JSON] LeaseWorkItemResponse

-- | Leases a dataflow WorkItem to run.
--
-- /See:/ 'newDataflowProjectsLocationsJobsWorkItemsLease' smart constructor.
data DataflowProjectsLocationsJobsWorkItemsLease = DataflowProjectsLocationsJobsWorkItemsLease
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifies the workflow job this worker belongs to.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the WorkItem\'s job.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: LeaseWorkItemRequest,
    -- | Identifies the project this worker belongs to.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsWorkItemsLease' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsWorkItemsLease ::
  -- |  Identifies the workflow job this worker belongs to. See 'jobId'.
  Core.Text ->
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the WorkItem\'s job. See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LeaseWorkItemRequest ->
  -- |  Identifies the project this worker belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsJobsWorkItemsLease
newDataflowProjectsLocationsJobsWorkItemsLease
  jobId
  location
  payload
  projectId =
    DataflowProjectsLocationsJobsWorkItemsLease
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        jobId = jobId,
        location = location,
        payload = payload,
        projectId = projectId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsJobsWorkItemsLease
  where
  type
    Rs DataflowProjectsLocationsJobsWorkItemsLease =
      LeaseWorkItemResponse
  type
    Scopes DataflowProjectsLocationsJobsWorkItemsLease =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsJobsWorkItemsLease {..} =
    go
      projectId
      location
      jobId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsLocationsJobsWorkItemsLeaseResource
          )
          Core.mempty
