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
-- Module      : Gogol.Run.Projects.Locations.Jobs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Job.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.create@.
module Gogol.Run.Projects.Locations.Jobs.Create
  ( -- * Resource
    RunProjectsLocationsJobsCreateResource,

    -- ** Constructing a Request
    RunProjectsLocationsJobsCreate (..),
    newRunProjectsLocationsJobsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.create@ method which the
-- 'RunProjectsLocationsJobsCreate' request conforms to.
type RunProjectsLocationsJobsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "jobId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2Job
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a Job.
--
-- /See:/ 'newRunProjectsLocationsJobsCreate' smart constructor.
data RunProjectsLocationsJobsCreate = RunProjectsLocationsJobsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique identifier for the Job. The name of the job becomes {parent}\/jobs\/{job_id}.
    jobId :: (Core.Maybe Core.Text),
    -- | Required. The location and project in which this Job should be created. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2Job,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Indicates that the request should be validated and default values populated, without persisting the request or creating any resources.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsCreate' with the minimum fields required to make a request.
newRunProjectsLocationsJobsCreate ::
  -- |  Required. The location and project in which this Job should be created. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2Job ->
  RunProjectsLocationsJobsCreate
newRunProjectsLocationsJobsCreate parent payload =
  RunProjectsLocationsJobsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsJobsCreate
  where
  type
    Rs RunProjectsLocationsJobsCreate =
      GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsJobsCreate =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsJobsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      jobId
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsJobsCreateResource
          )
          Core.mempty
