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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we recommend using @projects.locations.jobs.update@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.update@ is not recommended, as you can only update the state of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.update@.
module Gogol.Dataflow.Projects.Locations.Jobs.Update
  ( -- * Resource
    DataflowProjectsLocationsJobsUpdateResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsJobsUpdate (..),
    newDataflowProjectsLocationsJobsUpdate,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.jobs.update@ method which the
-- 'DataflowProjectsLocationsJobsUpdate' request conforms to.
type DataflowProjectsLocationsJobsUpdateResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Job
    Core.:> Core.Put '[Core.JSON] Job

-- | Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we recommend using @projects.locations.jobs.update@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.update@ is not recommended, as you can only update the state of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsLocationsJobsUpdate' smart constructor.
data DataflowProjectsLocationsJobsUpdate = DataflowProjectsLocationsJobsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job ID.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: Job,
    -- | The ID of the Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | The list of fields to update relative to Job. If empty, only RequestedJobState will be considered for update. If the FieldMask is not empty and RequestedJobState is none\/empty, The fields specified in the update mask will be the only ones considered for update. If both RequestedJobState and update_mask are specified, an error will be returned as we cannot update both state and mask.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsUpdate' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsUpdate ::
  -- |  The job ID. See 'jobId'.
  Core.Text ->
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job. See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Job ->
  -- |  The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsJobsUpdate
newDataflowProjectsLocationsJobsUpdate
  jobId
  location
  payload
  projectId =
    DataflowProjectsLocationsJobsUpdate
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        jobId = jobId,
        location = location,
        payload = payload,
        projectId = projectId,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest DataflowProjectsLocationsJobsUpdate where
  type Rs DataflowProjectsLocationsJobsUpdate = Job
  type
    Scopes DataflowProjectsLocationsJobsUpdate =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsJobsUpdate {..} =
    go
      projectId
      location
      jobId
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsLocationsJobsUpdateResource
          )
          Core.mempty
