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
-- Module      : Gogol.CloudScheduler.Projects.Locations.Jobs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.create@.
module Gogol.CloudScheduler.Projects.Locations.Jobs.Create
  ( -- * Resource
    CloudSchedulerProjectsLocationsJobsCreateResource,

    -- ** Constructing a Request
    newCloudSchedulerProjectsLocationsJobsCreate,
    CloudSchedulerProjectsLocationsJobsCreate,
  )
where

import Gogol.CloudScheduler.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudscheduler.projects.locations.jobs.create@ method which the
-- 'CloudSchedulerProjectsLocationsJobsCreate' request conforms to.
type CloudSchedulerProjectsLocationsJobsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Job
    Core.:> Core.Post '[Core.JSON] Job

-- | Creates a job.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsJobsCreate' smart constructor.
data CloudSchedulerProjectsLocationsJobsCreate = CloudSchedulerProjectsLocationsJobsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The location name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Job,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsJobsCreate' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsJobsCreate ::
  -- |  Required. The location name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Job ->
  CloudSchedulerProjectsLocationsJobsCreate
newCloudSchedulerProjectsLocationsJobsCreate parent payload =
  CloudSchedulerProjectsLocationsJobsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSchedulerProjectsLocationsJobsCreate
  where
  type
    Rs CloudSchedulerProjectsLocationsJobsCreate =
      Job
  type
    Scopes CloudSchedulerProjectsLocationsJobsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudSchedulerProjectsLocationsJobsCreate {..} =
      go
        parent
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
                  CloudSchedulerProjectsLocationsJobsCreateResource
            )
            Core.mempty
