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
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Debug.SendCapture
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send encoded debug capture data for component.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.debug.sendCapture@.
module Gogol.Dataflow.Projects.Locations.Jobs.Debug.SendCapture
    (
    -- * Resource
      DataflowProjectsLocationsJobsDebugSendCaptureResource

    -- ** Constructing a Request
    , DataflowProjectsLocationsJobsDebugSendCapture (..)
    , newDataflowProjectsLocationsJobsDebugSendCapture
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataflow.Types

-- | A resource alias for @dataflow.projects.locations.jobs.debug.sendCapture@ method which the
-- 'DataflowProjectsLocationsJobsDebugSendCapture' request conforms to.
type DataflowProjectsLocationsJobsDebugSendCaptureResource
     =
     "v1b3" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "location" Core.Text Core.:>
               "jobs" Core.:>
                 Core.Capture "jobId" Core.Text Core.:>
                   "debug" Core.:>
                     "sendCapture" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     SendDebugCaptureRequest
                                     Core.:>
                                     Core.Post '[Core.JSON]
                                       SendDebugCaptureResponse

-- | Send encoded debug capture data for component.
--
-- /See:/ 'newDataflowProjectsLocationsJobsDebugSendCapture' smart constructor.
data DataflowProjectsLocationsJobsDebugSendCapture = DataflowProjectsLocationsJobsDebugSendCapture
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The job id.
    , jobId :: Core.Text
      -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id.
    , location :: Core.Text
      -- | Multipart request metadata.
    , payload :: SendDebugCaptureRequest
      -- | The project id.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsDebugSendCapture' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsDebugSendCapture 
    ::  Core.Text
       -- ^  The job id. See 'jobId'.
    -> Core.Text
       -- ^  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains the job specified by job_id. See 'location'.
    -> SendDebugCaptureRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The project id. See 'projectId'.
    -> DataflowProjectsLocationsJobsDebugSendCapture
newDataflowProjectsLocationsJobsDebugSendCapture jobId location payload projectId =
  DataflowProjectsLocationsJobsDebugSendCapture
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = jobId
    , location = location
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataflowProjectsLocationsJobsDebugSendCapture
         where
        type Rs DataflowProjectsLocationsJobsDebugSendCapture
             = SendDebugCaptureResponse
        type Scopes
               DataflowProjectsLocationsJobsDebugSendCapture
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          DataflowProjectsLocationsJobsDebugSendCapture{..}
          = go projectId location jobId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataflowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataflowProjectsLocationsJobsDebugSendCaptureResource)
                      Core.mempty

