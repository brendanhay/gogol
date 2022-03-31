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
-- Module      : Gogol.CloudScheduler.Projects.Locations.Jobs.Pause
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses a job. If a job is paused then the system will stop executing the job until it is re-enabled via ResumeJob. The state of the job is stored in state; if paused it will be set to Job.State.PAUSED. A job must be in Job.State.ENABLED to be paused.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.pause@.
module Gogol.CloudScheduler.Projects.Locations.Jobs.Pause
  ( -- * Resource
    CloudSchedulerProjectsLocationsJobsPauseResource,

    -- ** Constructing a Request
    newCloudSchedulerProjectsLocationsJobsPause,
    CloudSchedulerProjectsLocationsJobsPause,
  )
where

import Gogol.CloudScheduler.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudscheduler.projects.locations.jobs.pause@ method which the
-- 'CloudSchedulerProjectsLocationsJobsPause' request conforms to.
type CloudSchedulerProjectsLocationsJobsPauseResource =
  "v1"
    Core.:> Core.CaptureMode "name" "pause" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PauseJobRequest
    Core.:> Core.Post '[Core.JSON] Job

-- | Pauses a job. If a job is paused then the system will stop executing the job until it is re-enabled via ResumeJob. The state of the job is stored in state; if paused it will be set to Job.State.PAUSED. A job must be in Job.State.ENABLED to be paused.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsJobsPause' smart constructor.
data CloudSchedulerProjectsLocationsJobsPause = CloudSchedulerProjectsLocationsJobsPause
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PauseJobRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsJobsPause' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsJobsPause ::
  -- |  Required. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PauseJobRequest ->
  CloudSchedulerProjectsLocationsJobsPause
newCloudSchedulerProjectsLocationsJobsPause name payload =
  CloudSchedulerProjectsLocationsJobsPause
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSchedulerProjectsLocationsJobsPause
  where
  type
    Rs CloudSchedulerProjectsLocationsJobsPause =
      Job
  type
    Scopes CloudSchedulerProjectsLocationsJobsPause =
      '[CloudPlatform'FullControl]
  requestClient
    CloudSchedulerProjectsLocationsJobsPause {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudSchedulerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSchedulerProjectsLocationsJobsPauseResource
            )
            Core.mempty
