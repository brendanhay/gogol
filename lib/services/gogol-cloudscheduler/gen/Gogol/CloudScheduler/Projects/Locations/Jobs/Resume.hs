{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudScheduler.Projects.Locations.Jobs.Resume
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resume a job. This method reenables a job after it has been Job.State.PAUSED. The state of a job is stored in Job.state; after calling this method it will be set to Job.State.ENABLED. A job must be in Job.State.PAUSED to be resumed.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.resume@.
module Gogol.CloudScheduler.Projects.Locations.Jobs.Resume
    (
    -- * Resource
      CloudSchedulerProjectsLocationsJobsResumeResource

    -- ** Constructing a Request
    , CloudSchedulerProjectsLocationsJobsResume (..)
    , newCloudSchedulerProjectsLocationsJobsResume
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudScheduler.Types

-- | A resource alias for @cloudscheduler.projects.locations.jobs.resume@ method which the
-- 'CloudSchedulerProjectsLocationsJobsResume' request conforms to.
type CloudSchedulerProjectsLocationsJobsResumeResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "resume" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ResumeJobRequest Core.:>
                       Core.Post '[Core.JSON] Job

-- | Resume a job. This method reenables a job after it has been Job.State.PAUSED. The state of a job is stored in Job.state; after calling this method it will be set to Job.State.ENABLED. A job must be in Job.State.PAUSED to be resumed.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsJobsResume' smart constructor.
data CloudSchedulerProjectsLocationsJobsResume = CloudSchedulerProjectsLocationsJobsResume
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ResumeJobRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsJobsResume' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsJobsResume 
    ::  Core.Text
       -- ^  Required. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@. See 'name'.
    -> ResumeJobRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSchedulerProjectsLocationsJobsResume
newCloudSchedulerProjectsLocationsJobsResume name payload =
  CloudSchedulerProjectsLocationsJobsResume
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSchedulerProjectsLocationsJobsResume
         where
        type Rs CloudSchedulerProjectsLocationsJobsResume =
             Job
        type Scopes CloudSchedulerProjectsLocationsJobsResume
             = '[CloudPlatform'FullControl]
        requestClient
          CloudSchedulerProjectsLocationsJobsResume{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSchedulerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSchedulerProjectsLocationsJobsResumeResource)
                      Core.mempty

