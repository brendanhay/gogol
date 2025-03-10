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
-- Module      : Gogol.Dataflow.Projects.Jobs.Debug.SendCapture
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send encoded debug capture data for component.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.debug.sendCapture@.
module Gogol.Dataflow.Projects.Jobs.Debug.SendCapture
  ( -- * Resource
    DataflowProjectsJobsDebugSendCaptureResource,

    -- ** Constructing a Request
    DataflowProjectsJobsDebugSendCapture (..),
    newDataflowProjectsJobsDebugSendCapture,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.jobs.debug.sendCapture@ method which the
-- 'DataflowProjectsJobsDebugSendCapture' request conforms to.
type DataflowProjectsJobsDebugSendCaptureResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "debug"
    Core.:> "sendCapture"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SendDebugCaptureRequest
    Core.:> Core.Post '[Core.JSON] SendDebugCaptureResponse

-- | Send encoded debug capture data for component.
--
-- /See:/ 'newDataflowProjectsJobsDebugSendCapture' smart constructor.
data DataflowProjectsJobsDebugSendCapture = DataflowProjectsJobsDebugSendCapture
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job id.
    jobId :: Core.Text,
    -- | Multipart request metadata.
    payload :: SendDebugCaptureRequest,
    -- | The project id.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsDebugSendCapture' with the minimum fields required to make a request.
newDataflowProjectsJobsDebugSendCapture ::
  -- |  The job id. See 'jobId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SendDebugCaptureRequest ->
  -- |  The project id. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsDebugSendCapture
newDataflowProjectsJobsDebugSendCapture jobId payload projectId =
  DataflowProjectsJobsDebugSendCapture
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsJobsDebugSendCapture where
  type
    Rs DataflowProjectsJobsDebugSendCapture =
      SendDebugCaptureResponse
  type
    Scopes DataflowProjectsJobsDebugSendCapture =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsJobsDebugSendCapture {..} =
    go
      projectId
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
              Core.Proxy DataflowProjectsJobsDebugSendCaptureResource
          )
          Core.mempty
