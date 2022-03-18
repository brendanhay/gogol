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
-- Module      : Gogol.Dataflow.Projects.Jobs.WorkItems.ReportStatus
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.workItems.reportStatus@.
module Gogol.Dataflow.Projects.Jobs.WorkItems.ReportStatus
  ( -- * Resource
    DataflowProjectsJobsWorkItemsReportStatusResource,

    -- ** Constructing a Request
    newDataflowProjectsJobsWorkItemsReportStatus,
    DataflowProjectsJobsWorkItemsReportStatus,
  )
where

import Gogol.Dataflow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataflow.projects.jobs.workItems.reportStatus@ method which the
-- 'DataflowProjectsJobsWorkItemsReportStatus' request conforms to.
type DataflowProjectsJobsWorkItemsReportStatusResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "workItems:reportStatus"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ReportWorkItemStatusRequest
    Core.:> Core.Post
              '[Core.JSON]
              ReportWorkItemStatusResponse

-- | Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ 'newDataflowProjectsJobsWorkItemsReportStatus' smart constructor.
data DataflowProjectsJobsWorkItemsReportStatus = DataflowProjectsJobsWorkItemsReportStatus
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job which the WorkItem is part of.
    jobId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ReportWorkItemStatusRequest,
    -- | The project which owns the WorkItem\'s job.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsWorkItemsReportStatus' with the minimum fields required to make a request.
newDataflowProjectsJobsWorkItemsReportStatus ::
  -- |  The job which the WorkItem is part of. See 'jobId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ReportWorkItemStatusRequest ->
  -- |  The project which owns the WorkItem\'s job. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsWorkItemsReportStatus
newDataflowProjectsJobsWorkItemsReportStatus jobId payload projectId =
  DataflowProjectsJobsWorkItemsReportStatus
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataflowProjectsJobsWorkItemsReportStatus
  where
  type
    Rs DataflowProjectsJobsWorkItemsReportStatus =
      ReportWorkItemStatusResponse
  type
    Scopes DataflowProjectsJobsWorkItemsReportStatus =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient
    DataflowProjectsJobsWorkItemsReportStatus {..} =
      go
        projectId
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
                Core.Proxy
                  DataflowProjectsJobsWorkItemsReportStatusResource
            )
            Core.mempty
