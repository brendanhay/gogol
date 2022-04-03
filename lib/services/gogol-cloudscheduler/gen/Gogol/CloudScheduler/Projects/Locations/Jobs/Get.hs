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
-- Module      : Gogol.CloudScheduler.Projects.Locations.Jobs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a job.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.get@.
module Gogol.CloudScheduler.Projects.Locations.Jobs.Get
  ( -- * Resource
    CloudSchedulerProjectsLocationsJobsGetResource,

    -- ** Constructing a Request
    CloudSchedulerProjectsLocationsJobsGet (..),
    newCloudSchedulerProjectsLocationsJobsGet,
  )
where

import Gogol.CloudScheduler.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudscheduler.projects.locations.jobs.get@ method which the
-- 'CloudSchedulerProjectsLocationsJobsGet' request conforms to.
type CloudSchedulerProjectsLocationsJobsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Job

-- | Gets a job.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsJobsGet' smart constructor.
data CloudSchedulerProjectsLocationsJobsGet = CloudSchedulerProjectsLocationsJobsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsJobsGet' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsJobsGet ::
  -- |  Required. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@. See 'name'.
  Core.Text ->
  CloudSchedulerProjectsLocationsJobsGet
newCloudSchedulerProjectsLocationsJobsGet name =
  CloudSchedulerProjectsLocationsJobsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSchedulerProjectsLocationsJobsGet
  where
  type Rs CloudSchedulerProjectsLocationsJobsGet = Job
  type
    Scopes CloudSchedulerProjectsLocationsJobsGet =
      '[CloudPlatform'FullControl]
  requestClient
    CloudSchedulerProjectsLocationsJobsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSchedulerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSchedulerProjectsLocationsJobsGetResource
            )
            Core.mempty
