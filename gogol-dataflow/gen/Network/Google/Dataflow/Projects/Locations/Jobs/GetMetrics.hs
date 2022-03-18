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
-- Module      : Network.Google.Dataflow.Projects.Locations.Jobs.GetMetrics
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.getMetrics@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.getMetrics@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.getMetrics@.
module Network.Google.Dataflow.Projects.Locations.Jobs.GetMetrics
  ( -- * Resource
    DataflowProjectsLocationsJobsGetMetricsResource,

    -- ** Constructing a Request
    newDataflowProjectsLocationsJobsGetMetrics,
    DataflowProjectsLocationsJobsGetMetrics,
  )
where

import Network.Google.Dataflow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataflow.projects.locations.jobs.getMetrics@ method which the
-- 'DataflowProjectsLocationsJobsGetMetrics' request conforms to.
type DataflowProjectsLocationsJobsGetMetricsResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "metrics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime'
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] JobMetrics

-- | Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.getMetrics@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.getMetrics@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsLocationsJobsGetMetrics' smart constructor.
data DataflowProjectsLocationsJobsGetMetrics = DataflowProjectsLocationsJobsGetMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job to get metrics for.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: Core.Text,
    -- | A project id.
    projectId :: Core.Text,
    -- | Return only metric data that has changed since this time. Default is to return all information about all metrics for the job.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsGetMetrics' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsGetMetrics ::
  -- |  The job to get metrics for. See 'jobId'.
  Core.Text ->
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id. See 'location'.
  Core.Text ->
  -- |  A project id. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsJobsGetMetrics
newDataflowProjectsLocationsJobsGetMetrics jobId location projectId =
  DataflowProjectsLocationsJobsGetMetrics
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      location = location,
      projectId = projectId,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsJobsGetMetrics
  where
  type
    Rs DataflowProjectsLocationsJobsGetMetrics =
      JobMetrics
  type
    Scopes DataflowProjectsLocationsJobsGetMetrics =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient
    DataflowProjectsLocationsJobsGetMetrics {..} =
      go
        projectId
        location
        jobId
        xgafv
        accessToken
        callback
        startTime
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataflowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataflowProjectsLocationsJobsGetMetricsResource
            )
            Core.mempty
