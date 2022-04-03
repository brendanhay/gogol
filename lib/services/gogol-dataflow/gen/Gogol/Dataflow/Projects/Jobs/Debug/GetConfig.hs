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
-- Module      : Gogol.Dataflow.Projects.Jobs.Debug.GetConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get encoded debug configuration for component. Not cacheable.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.debug.getConfig@.
module Gogol.Dataflow.Projects.Jobs.Debug.GetConfig
  ( -- * Resource
    DataflowProjectsJobsDebugGetConfigResource,

    -- ** Constructing a Request
    DataflowProjectsJobsDebugGetConfig (..),
    newDataflowProjectsJobsDebugGetConfig,
  )
where

import Gogol.Dataflow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataflow.projects.jobs.debug.getConfig@ method which the
-- 'DataflowProjectsJobsDebugGetConfig' request conforms to.
type DataflowProjectsJobsDebugGetConfigResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
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
-- /See:/ 'newDataflowProjectsJobsDebugGetConfig' smart constructor.
data DataflowProjectsJobsDebugGetConfig = DataflowProjectsJobsDebugGetConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The job id.
    jobId :: Core.Text,
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

-- | Creates a value of 'DataflowProjectsJobsDebugGetConfig' with the minimum fields required to make a request.
newDataflowProjectsJobsDebugGetConfig ::
  -- |  The job id. See 'jobId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GetDebugConfigRequest ->
  -- |  The project id. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsDebugGetConfig
newDataflowProjectsJobsDebugGetConfig jobId payload projectId =
  DataflowProjectsJobsDebugGetConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataflowProjectsJobsDebugGetConfig
  where
  type
    Rs DataflowProjectsJobsDebugGetConfig =
      GetDebugConfigResponse
  type
    Scopes DataflowProjectsJobsDebugGetConfig =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly,
         Userinfo'Email
       ]
  requestClient DataflowProjectsJobsDebugGetConfig {..} =
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
              Core.Proxy
                DataflowProjectsJobsDebugGetConfigResource
          )
          Core.mempty
