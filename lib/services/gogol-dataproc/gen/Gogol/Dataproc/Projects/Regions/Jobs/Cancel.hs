{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Dataproc.Projects.Regions.Jobs.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a job cancellation request. To access the job resource after cancellation, call regions\/{region}\/jobs.list (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/projects.regions.jobs\/list) or regions\/{region}\/jobs.get (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/projects.regions.jobs\/get).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.cancel@.
module Gogol.Dataproc.Projects.Regions.Jobs.Cancel
  ( -- * Resource
    DataprocProjectsRegionsJobsCancelResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsJobsCancel (..),
    newDataprocProjectsRegionsJobsCancel,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.regions.jobs.cancel@ method which the
-- 'DataprocProjectsRegionsJobsCancel' request conforms to.
type DataprocProjectsRegionsJobsCancelResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "jobs"
    Core.:> Core.CaptureMode "jobId" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelJobRequest
    Core.:> Core.Post '[Core.JSON] Job

-- | Starts a job cancellation request. To access the job resource after cancellation, call regions\/{region}\/jobs.list (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/projects.regions.jobs\/list) or regions\/{region}\/jobs.get (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rest\/v1\/projects.regions.jobs\/get).
--
-- /See:/ 'newDataprocProjectsRegionsJobsCancel' smart constructor.
data DataprocProjectsRegionsJobsCancel = DataprocProjectsRegionsJobsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The job ID.
    jobId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelJobRequest,
    -- | Required. The ID of the Google Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Required. The Dataproc region in which to handle the request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsJobsCancel' with the minimum fields required to make a request.
newDataprocProjectsRegionsJobsCancel ::
  -- |  Required. The job ID. See 'jobId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelJobRequest ->
  -- |  Required. The ID of the Google Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsJobsCancel
newDataprocProjectsRegionsJobsCancel jobId payload projectId region =
  DataprocProjectsRegionsJobsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      payload = payload,
      projectId = projectId,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataprocProjectsRegionsJobsCancel where
  type Rs DataprocProjectsRegionsJobsCancel = Job
  type
    Scopes DataprocProjectsRegionsJobsCancel =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsRegionsJobsCancel {..} =
    go
      projectId
      region
      jobId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsRegionsJobsCancelResource
          )
          Core.mempty
