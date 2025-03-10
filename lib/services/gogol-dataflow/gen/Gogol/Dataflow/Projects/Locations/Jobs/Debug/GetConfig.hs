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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Debug.GetConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get encoded debug configuration for component. Not cacheable.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.debug.getConfig@.
module Gogol.Dataflow.Projects.Locations.Jobs.Debug.GetConfig
  ( -- * Resource
    DataflowProjectsLocationsJobsDebugGetConfigResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsJobsDebugGetConfig (..),
    newDataflowProjectsLocationsJobsDebugGetConfig,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.jobs.debug.getConfig@ method which the
-- 'DataflowProjectsLocationsJobsDebugGetConfig' request conforms to.
type DataflowProjectsLocationsJobsDebugGetConfigResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "debug"
    Core.:> "getConfig"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetDebugConfigRequest
    Core.:> Core.Post '[Core.JSON] GetDebugConfigResponse

-- | Get encoded debug configuration for component. Not cacheable.
--
-- /See:/ 'newDataflowProjectsLocationsJobsDebugGetConfig' smart constructor.
data DataflowProjectsLocationsJobsDebugGetConfig = DataflowProjectsLocationsJobsDebugGetConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job id.
    jobId :: Core.Text,
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: GetDebugConfigRequest,
    -- | The project id.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsDebugGetConfig' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsDebugGetConfig ::
  -- |  The job id. See 'jobId'.
  Core.Text ->
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id. See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GetDebugConfigRequest ->
  -- |  The project id. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsJobsDebugGetConfig
newDataflowProjectsLocationsJobsDebugGetConfig
  jobId
  location
  payload
  projectId =
    DataflowProjectsLocationsJobsDebugGetConfig
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        jobId = jobId,
        location = location,
        payload = payload,
        projectId = projectId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsJobsDebugGetConfig
  where
  type
    Rs DataflowProjectsLocationsJobsDebugGetConfig =
      GetDebugConfigResponse
  type
    Scopes DataflowProjectsLocationsJobsDebugGetConfig =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsJobsDebugGetConfig {..} =
    go
      projectId
      location
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
              Core.Proxy DataflowProjectsLocationsJobsDebugGetConfigResource
          )
          Core.mempty
