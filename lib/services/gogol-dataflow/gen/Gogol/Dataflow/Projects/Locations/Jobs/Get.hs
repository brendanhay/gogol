{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using @projects.locations.jobs.get@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.get@ is not recommended, as you can only get the state of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.get@.
module Gogol.Dataflow.Projects.Locations.Jobs.Get
    (
    -- * Resource
      DataflowProjectsLocationsJobsGetResource

    -- ** Constructing a Request
    , newDataflowProjectsLocationsJobsGet
    , DataflowProjectsLocationsJobsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataflow.Types

-- | A resource alias for @dataflow.projects.locations.jobs.get@ method which the
-- 'DataflowProjectsLocationsJobsGet' request conforms to.
type DataflowProjectsLocationsJobsGetResource =
     "v1b3" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "location" Core.Text Core.:>
               "jobs" Core.:>
                 Core.Capture "jobId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "view" ProjectsLocationsJobsGetView
                               Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] Job

-- | Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using @projects.locations.jobs.get@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.get@ is not recommended, as you can only get the state of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsLocationsJobsGet' smart constructor.
data DataflowProjectsLocationsJobsGet = DataflowProjectsLocationsJobsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The job ID.
    , jobId :: Core.Text
      -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    , location :: Core.Text
      -- | The ID of the Cloud Platform project that the job belongs to.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The level of information requested in response.
    , view :: (Core.Maybe ProjectsLocationsJobsGetView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsGet' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsGet 
    ::  Core.Text
       -- ^  The job ID. See 'jobId'.
    -> Core.Text
       -- ^  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job. See 'location'.
    -> Core.Text
       -- ^  The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
    -> DataflowProjectsLocationsJobsGet
newDataflowProjectsLocationsJobsGet jobId location projectId =
  DataflowProjectsLocationsJobsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = jobId
    , location = location
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest
           DataflowProjectsLocationsJobsGet
         where
        type Rs DataflowProjectsLocationsJobsGet = Job
        type Scopes DataflowProjectsLocationsJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient DataflowProjectsLocationsJobsGet{..}
          = go projectId location jobId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              dataflowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DataflowProjectsLocationsJobsGetResource)
                      Core.mempty

