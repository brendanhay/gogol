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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Messages.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.messages.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.messages.list@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.messages.list@.
module Gogol.Dataflow.Projects.Locations.Jobs.Messages.List
  ( -- * Resource
    DataflowProjectsLocationsJobsMessagesListResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsJobsMessagesList (..),
    newDataflowProjectsLocationsJobsMessagesList,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.jobs.messages.list@ method which the
-- 'DataflowProjectsLocationsJobsMessagesList' request conforms to.
type DataflowProjectsLocationsJobsMessagesListResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "messages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.DateTime
    Core.:> Core.QueryParam
              "minimumImportance"
              ProjectsLocationsJobsMessagesListMinimumImportance
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobMessagesResponse

-- | Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.messages.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.messages.list@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsLocationsJobsMessagesList' smart constructor.
data DataflowProjectsLocationsJobsMessagesList = DataflowProjectsLocationsJobsMessagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Return only messages with timestamps \< end_time. The default is now (i.e. return up to the latest messages available).
    endTime :: (Core.Maybe Core.DateTime),
    -- | The job to get messages about.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: Core.Text,
    -- | Filter to only get messages with importance >= level
    minimumImportance :: (Core.Maybe ProjectsLocationsJobsMessagesListMinimumImportance),
    -- | If specified, determines the maximum number of messages to return. If unspecified, the service may choose an appropriate default, or may return an arbitrarily large number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If supplied, this should be the value of next/page/token returned by an earlier call. This will cause the next page of results to be returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | A project id.
    projectId :: Core.Text,
    -- | If specified, return only messages with timestamps >= start_time. The default is the job creation time (i.e. beginning of messages).
    startTime :: (Core.Maybe Core.DateTime),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsMessagesList' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsMessagesList ::
  -- |  The job to get messages about. See 'jobId'.
  Core.Text ->
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id. See 'location'.
  Core.Text ->
  -- |  A project id. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsJobsMessagesList
newDataflowProjectsLocationsJobsMessagesList
  jobId
  location
  projectId =
    DataflowProjectsLocationsJobsMessagesList
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        endTime = Core.Nothing,
        jobId = jobId,
        location = location,
        minimumImportance = Core.Nothing,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        projectId = projectId,
        startTime = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsJobsMessagesList
  where
  type
    Rs DataflowProjectsLocationsJobsMessagesList =
      ListJobMessagesResponse
  type
    Scopes DataflowProjectsLocationsJobsMessagesList =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsJobsMessagesList {..} =
    go
      projectId
      location
      jobId
      xgafv
      accessToken
      callback
      endTime
      minimumImportance
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
              Core.Proxy DataflowProjectsLocationsJobsMessagesListResource
          )
          Core.mempty
