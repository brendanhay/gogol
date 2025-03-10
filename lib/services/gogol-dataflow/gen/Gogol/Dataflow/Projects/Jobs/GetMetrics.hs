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
-- Module      : Gogol.Dataflow.Projects.Jobs.GetMetrics
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.getMetrics@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.getMetrics@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.getMetrics@.
module Gogol.Dataflow.Projects.Jobs.GetMetrics
  ( -- * Resource
    DataflowProjectsJobsGetMetricsResource,

    -- ** Constructing a Request
    DataflowProjectsJobsGetMetrics (..),
    newDataflowProjectsJobsGetMetrics,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.jobs.getMetrics@ method which the
-- 'DataflowProjectsJobsGetMetrics' request conforms to.
type DataflowProjectsJobsGetMetricsResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "metrics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] JobMetrics

-- | Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.getMetrics@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.getMetrics@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsJobsGetMetrics' smart constructor.
data DataflowProjectsJobsGetMetrics = DataflowProjectsJobsGetMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job to get metrics for.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: (Core.Maybe Core.Text),
    -- | A project id.
    projectId :: Core.Text,
    -- | Return only metric data that has changed since this time. Default is to return all information about all metrics for the job.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsGetMetrics' with the minimum fields required to make a request.
newDataflowProjectsJobsGetMetrics ::
  -- |  The job to get metrics for. See 'jobId'.
  Core.Text ->
  -- |  A project id. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsGetMetrics
newDataflowProjectsJobsGetMetrics jobId projectId =
  DataflowProjectsJobsGetMetrics
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      location = Core.Nothing,
      projectId = projectId,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsJobsGetMetrics where
  type Rs DataflowProjectsJobsGetMetrics = JobMetrics
  type
    Scopes DataflowProjectsJobsGetMetrics =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsJobsGetMetrics {..} =
    go
      projectId
      jobId
      xgafv
      accessToken
      callback
      location
      startTime
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DataflowProjectsJobsGetMetricsResource)
          Core.mempty
