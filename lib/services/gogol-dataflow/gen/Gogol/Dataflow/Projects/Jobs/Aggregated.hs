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
-- Module      : Gogol.Dataflow.Projects.Jobs.Aggregated
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the jobs of a project across all regions. __Note:__ This method doesn\'t support filtering the list of jobs by name.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.aggregated@.
module Gogol.Dataflow.Projects.Jobs.Aggregated
  ( -- * Resource
    DataflowProjectsJobsAggregatedResource,

    -- ** Constructing a Request
    DataflowProjectsJobsAggregated (..),
    newDataflowProjectsJobsAggregated,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.jobs.aggregated@ method which the
-- 'DataflowProjectsJobsAggregated' request conforms to.
type DataflowProjectsJobsAggregatedResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs:aggregated"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" ProjectsJobsAggregatedFilter
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsJobsAggregatedView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobsResponse

-- | List the jobs of a project across all regions. __Note:__ This method doesn\'t support filtering the list of jobs by name.
--
-- /See:/ 'newDataflowProjectsJobsAggregated' smart constructor.
data DataflowProjectsJobsAggregated = DataflowProjectsJobsAggregated
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The kind of filter to use.
    filter :: (Core.Maybe ProjectsJobsAggregatedFilter),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    location :: (Core.Maybe Core.Text),
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
    view :: (Core.Maybe ProjectsJobsAggregatedView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsAggregated' with the minimum fields required to make a request.
newDataflowProjectsJobsAggregated ::
  -- |  The project which owns the jobs. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsAggregated
newDataflowProjectsJobsAggregated projectId =
  DataflowProjectsJobsAggregated
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      location = Core.Nothing,
      name = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsJobsAggregated where
  type Rs DataflowProjectsJobsAggregated = ListJobsResponse
  type
    Scopes DataflowProjectsJobsAggregated =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsJobsAggregated {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      filter
      location
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
          (Core.Proxy :: Core.Proxy DataflowProjectsJobsAggregatedResource)
          Core.mempty
