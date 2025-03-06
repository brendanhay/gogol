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
-- Module      : Gogol.Dataflow.Projects.Jobs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using @projects.locations.jobs.get@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.get@ is not recommended, as you can only get the state of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.get@.
module Gogol.Dataflow.Projects.Jobs.Get
  ( -- * Resource
    DataflowProjectsJobsGetResource,

    -- ** Constructing a Request
    DataflowProjectsJobsGet (..),
    newDataflowProjectsJobsGet,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.jobs.get@ method which the
-- 'DataflowProjectsJobsGet' request conforms to.
type DataflowProjectsJobsGetResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsJobsGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Job

-- | Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using @projects.locations.jobs.get@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.get@ is not recommended, as you can only get the state of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsJobsGet' smart constructor.
data DataflowProjectsJobsGet = DataflowProjectsJobsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job ID.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    location :: (Core.Maybe Core.Text),
    -- | The ID of the Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The level of information requested in response.
    view :: (Core.Maybe ProjectsJobsGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsGet' with the minimum fields required to make a request.
newDataflowProjectsJobsGet ::
  -- |  The job ID. See 'jobId'.
  Core.Text ->
  -- |  The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsGet
newDataflowProjectsJobsGet jobId projectId =
  DataflowProjectsJobsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      location = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsJobsGet where
  type Rs DataflowProjectsJobsGet = Job
  type
    Scopes DataflowProjectsJobsGet =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsJobsGet {..} =
    go
      projectId
      jobId
      xgafv
      accessToken
      callback
      location
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DataflowProjectsJobsGetResource)
          Core.mempty
