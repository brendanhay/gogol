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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Stages.GetExecutionDetails
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request detailed information about the execution status of a stage of the job. EXPERIMENTAL. This API is subject to change or removal without notice.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.stages.getExecutionDetails@.
module Gogol.Dataflow.Projects.Locations.Jobs.Stages.GetExecutionDetails
  ( -- * Resource
    DataflowProjectsLocationsJobsStagesGetExecutionDetailsResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsJobsStagesGetExecutionDetails (..),
    newDataflowProjectsLocationsJobsStagesGetExecutionDetails,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.jobs.stages.getExecutionDetails@ method which the
-- 'DataflowProjectsLocationsJobsStagesGetExecutionDetails' request conforms to.
type DataflowProjectsLocationsJobsStagesGetExecutionDetailsResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "stages"
    Core.:> Core.Capture "stageId" Core.Text
    Core.:> "executionDetails"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.DateTime
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StageExecutionDetails

-- | Request detailed information about the execution status of a stage of the job. EXPERIMENTAL. This API is subject to change or removal without notice.
--
-- /See:/ 'newDataflowProjectsLocationsJobsStagesGetExecutionDetails' smart constructor.
data DataflowProjectsLocationsJobsStagesGetExecutionDetails = DataflowProjectsLocationsJobsStagesGetExecutionDetails
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Upper time bound of work items to include, by start time.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The job to get execution details for.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: Core.Text,
    -- | If specified, determines the maximum number of work items to return. If unspecified, the service may choose an appropriate default, or may return an arbitrarily large number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If supplied, this should be the value of next/page/token returned by an earlier call. This will cause the next page of results to be returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | A project id.
    projectId :: Core.Text,
    -- | The stage for which to fetch information.
    stageId :: Core.Text,
    -- | Lower time bound of work items to include, by start time.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsStagesGetExecutionDetails' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsStagesGetExecutionDetails ::
  -- |  The job to get execution details for. See 'jobId'.
  Core.Text ->
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id. See 'location'.
  Core.Text ->
  -- |  A project id. See 'projectId'.
  Core.Text ->
  -- |  The stage for which to fetch information. See 'stageId'.
  Core.Text ->
  DataflowProjectsLocationsJobsStagesGetExecutionDetails
newDataflowProjectsLocationsJobsStagesGetExecutionDetails
  jobId
  location
  projectId
  stageId =
    DataflowProjectsLocationsJobsStagesGetExecutionDetails
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        endTime = Core.Nothing,
        jobId = jobId,
        location = location,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        projectId = projectId,
        stageId = stageId,
        startTime = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsJobsStagesGetExecutionDetails
  where
  type
    Rs DataflowProjectsLocationsJobsStagesGetExecutionDetails =
      StageExecutionDetails
  type
    Scopes DataflowProjectsLocationsJobsStagesGetExecutionDetails =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    DataflowProjectsLocationsJobsStagesGetExecutionDetails {..} =
      go
        projectId
        location
        jobId
        stageId
        xgafv
        accessToken
        callback
        endTime
        pageSize
        pageToken
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
                  DataflowProjectsLocationsJobsStagesGetExecutionDetailsResource
            )
            Core.mempty
