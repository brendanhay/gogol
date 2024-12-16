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
-- Module      : Gogol.CloudScheduler.Projects.Locations.Jobs.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forces a job to run now. When this method is called, Cloud Scheduler will dispatch the job, even if the job is already running.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.run@.
module Gogol.CloudScheduler.Projects.Locations.Jobs.Run
    (
    -- * Resource
      CloudSchedulerProjectsLocationsJobsRunResource

    -- ** Constructing a Request
    , CloudSchedulerProjectsLocationsJobsRun (..)
    , newCloudSchedulerProjectsLocationsJobsRun
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudScheduler.Types

-- | A resource alias for @cloudscheduler.projects.locations.jobs.run@ method which the
-- 'CloudSchedulerProjectsLocationsJobsRun' request conforms to.
type CloudSchedulerProjectsLocationsJobsRunResource =
     "v1" Core.:>
       Core.CaptureMode "name" "run" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RunJobRequest Core.:>
                       Core.Post '[Core.JSON] Job

-- | Forces a job to run now. When this method is called, Cloud Scheduler will dispatch the job, even if the job is already running.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsJobsRun' smart constructor.
data CloudSchedulerProjectsLocationsJobsRun = CloudSchedulerProjectsLocationsJobsRun
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
    , payload :: RunJobRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsJobsRun' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsJobsRun 
    ::  Core.Text
       -- ^  Required. The job name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID@. See 'name'.
    -> RunJobRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudSchedulerProjectsLocationsJobsRun
newCloudSchedulerProjectsLocationsJobsRun name payload =
  CloudSchedulerProjectsLocationsJobsRun
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSchedulerProjectsLocationsJobsRun
         where
        type Rs CloudSchedulerProjectsLocationsJobsRun = Job
        type Scopes CloudSchedulerProjectsLocationsJobsRun =
             '[CloudPlatform'FullControl]
        requestClient
          CloudSchedulerProjectsLocationsJobsRun{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudSchedulerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSchedulerProjectsLocationsJobsRunResource)
                      Core.mempty

