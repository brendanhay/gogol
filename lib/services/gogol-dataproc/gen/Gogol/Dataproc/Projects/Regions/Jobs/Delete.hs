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
-- Module      : Gogol.Dataproc.Projects.Regions.Jobs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the job from the project. If the job is active, the delete fails, and the response returns FAILED_PRECONDITION.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.delete@.
module Gogol.Dataproc.Projects.Regions.Jobs.Delete
  ( -- * Resource
    DataprocProjectsRegionsJobsDeleteResource,

    -- ** Constructing a Request
    newDataprocProjectsRegionsJobsDelete,
    DataprocProjectsRegionsJobsDelete,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.jobs.delete@ method which the
-- 'DataprocProjectsRegionsJobsDelete' request conforms to.
type DataprocProjectsRegionsJobsDeleteResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the job from the project. If the job is active, the delete fails, and the response returns FAILED_PRECONDITION.
--
-- /See:/ 'newDataprocProjectsRegionsJobsDelete' smart constructor.
data DataprocProjectsRegionsJobsDelete = DataprocProjectsRegionsJobsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The job ID.
    jobId :: Core.Text,
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

-- | Creates a value of 'DataprocProjectsRegionsJobsDelete' with the minimum fields required to make a request.
newDataprocProjectsRegionsJobsDelete ::
  -- |  Required. The job ID. See 'jobId'.
  Core.Text ->
  -- |  Required. The ID of the Google Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsJobsDelete
newDataprocProjectsRegionsJobsDelete jobId projectId region =
  DataprocProjectsRegionsJobsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      projectId = projectId,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsJobsDelete
  where
  type Rs DataprocProjectsRegionsJobsDelete = Empty
  type
    Scopes DataprocProjectsRegionsJobsDelete =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsRegionsJobsDelete {..} =
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
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsRegionsJobsDeleteResource
          )
          Core.mempty
