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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the jobs of a project. To list the jobs of a project in a region, we recommend using @projects.locations.jobs.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). To list the all jobs across all regions, use @projects.jobs.aggregated@. Using @projects.jobs.list@ is not recommended, because you can only get the list of jobs that are running in @us-central1@. @projects.locations.jobs.list@ and @projects.jobs.list@ support filtering the list of jobs by name. Filtering by name isn\'t supported by @projects.jobs.aggregated@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.list@.
module Gogol.Dataflow.Projects.Locations.Jobs.List
  ( -- * Resource
    DataflowProjectsLocationsJobsListResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsJobsList (..),
    newDataflowProjectsLocationsJobsList,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.jobs.list@ method which the
-- 'DataflowProjectsLocationsJobsList' request conforms to.
type DataflowProjectsLocationsJobsListResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" ProjectsLocationsJobsListFilter
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsLocationsJobsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobsResponse

-- | List the jobs of a project. To list the jobs of a project in a region, we recommend using @projects.locations.jobs.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). To list the all jobs across all regions, use @projects.jobs.aggregated@. Using @projects.jobs.list@ is not recommended, because you can only get the list of jobs that are running in @us-central1@. @projects.locations.jobs.list@ and @projects.jobs.list@ support filtering the list of jobs by name. Filtering by name isn\'t supported by @projects.jobs.aggregated@.
--
-- /See:/ 'newDataflowProjectsLocationsJobsList' smart constructor.
data DataflowProjectsLocationsJobsList = DataflowProjectsLocationsJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The kind of filter to use.
    filter :: (Core.Maybe ProjectsLocationsJobsListFilter),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    location :: Core.Text,
    -- | Optional. The job name.
    name :: (Core.Maybe Core.Text),
    -- | If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of max_responses and an unspecified server-defined limit.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Set this to the \'next/page/token\' field of a previous response to request additional results in a long list.
    pageToken :: (Core.Maybe Core.Text),
    -- | The project which owns the jobs.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.
    view :: (Core.Maybe ProjectsLocationsJobsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsList' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsList ::
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job. See 'location'.
  Core.Text ->
  -- |  The project which owns the jobs. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsJobsList
newDataflowProjectsLocationsJobsList location projectId =
  DataflowProjectsLocationsJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      location = location,
      name = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsLocationsJobsList where
  type Rs DataflowProjectsLocationsJobsList = ListJobsResponse
  type
    Scopes DataflowProjectsLocationsJobsList =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsJobsList {..} =
    go
      projectId
      location
      xgafv
      accessToken
      callback
      filter
      name
      pageSize
      pageToken
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsLocationsJobsListResource
          )
          Core.mempty
