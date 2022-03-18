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
-- Module      : Network.Google.Dataflow.Projects.Jobs.Messages.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.messages.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.messages.list@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.messages.list@.
module Network.Google.Dataflow.Projects.Jobs.Messages.List
  ( -- * Resource
    DataflowProjectsJobsMessagesListResource,

    -- ** Constructing a Request
    newDataflowProjectsJobsMessagesList,
    DataflowProjectsJobsMessagesList,
  )
where

import Network.Google.Dataflow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataflow.projects.jobs.messages.list@ method which the
-- 'DataflowProjectsJobsMessagesList' request conforms to.
type DataflowProjectsJobsMessagesListResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "messages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.DateTime'
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam
              "minimumImportance"
              ProjectsJobsMessagesListMinimumImportance
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime'
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListJobMessagesResponse

-- | Request the job status. To request the status of a job, we recommend using @projects.locations.jobs.messages.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.messages.list@ is not recommended, as you can only request the status of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsJobsMessagesList' smart constructor.
data DataflowProjectsJobsMessagesList = DataflowProjectsJobsMessagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Return only messages with timestamps \< end_time. The default is now (i.e. return up to the latest messages available).
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The job to get messages about.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: (Core.Maybe Core.Text),
    -- | Filter to only get messages with importance >= level
    minimumImportance :: (Core.Maybe ProjectsJobsMessagesListMinimumImportance),
    -- | If specified, determines the maximum number of messages to return. If unspecified, the service may choose an appropriate default, or may return an arbitrarily large number of results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If supplied, this should be the value of next/page/token returned by an earlier call. This will cause the next page of results to be returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | A project id.
    projectId :: Core.Text,
    -- | If specified, return only messages with timestamps >= start_time. The default is the job creation time (i.e. beginning of messages).
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsMessagesList' with the minimum fields required to make a request.
newDataflowProjectsJobsMessagesList ::
  -- |  The job to get messages about. See 'jobId'.
  Core.Text ->
  -- |  A project id. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsMessagesList
newDataflowProjectsJobsMessagesList jobId projectId =
  DataflowProjectsJobsMessagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      endTime = Core.Nothing,
      jobId = jobId,
      location = Core.Nothing,
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
    DataflowProjectsJobsMessagesList
  where
  type
    Rs DataflowProjectsJobsMessagesList =
      ListJobMessagesResponse
  type
    Scopes DataflowProjectsJobsMessagesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient DataflowProjectsJobsMessagesList {..} =
    go
      projectId
      jobId
      xgafv
      accessToken
      callback
      endTime
      location
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
              Core.Proxy DataflowProjectsJobsMessagesListResource
          )
          Core.mempty
