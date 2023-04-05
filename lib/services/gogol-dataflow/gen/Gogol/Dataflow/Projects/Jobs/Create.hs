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
-- Module      : Gogol.Dataflow.Projects.Jobs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Cloud Dataflow job. To create a job, we recommend using @projects.locations.jobs.create@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.create@ is not recommended, as your job will always start in @us-central1@. Do not enter confidential information when you supply string values using the API.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.create@.
module Gogol.Dataflow.Projects.Jobs.Create
  ( -- * Resource
    DataflowProjectsJobsCreateResource,

    -- ** Constructing a Request
    DataflowProjectsJobsCreate (..),
    newDataflowProjectsJobsCreate,
  )
where

import Gogol.Dataflow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataflow.projects.jobs.create@ method which the
-- 'DataflowProjectsJobsCreate' request conforms to.
type DataflowProjectsJobsCreateResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "replaceJobId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsJobsCreateView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Job
    Core.:> Core.Post '[Core.JSON] Job

-- | Creates a Cloud Dataflow job. To create a job, we recommend using @projects.locations.jobs.create@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.jobs.create@ is not recommended, as your job will always start in @us-central1@. Do not enter confidential information when you supply string values using the API.
--
-- /See:/ 'newDataflowProjectsJobsCreate' smart constructor.
data DataflowProjectsJobsCreate = DataflowProjectsJobsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    location :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Job,
    -- | The ID of the Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Deprecated. This field is now in the Job message.
    replaceJobId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The level of information requested in response.
    view :: (Core.Maybe ProjectsJobsCreateView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsCreate' with the minimum fields required to make a request.
newDataflowProjectsJobsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Job ->
  -- |  The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsCreate
newDataflowProjectsJobsCreate payload projectId =
  DataflowProjectsJobsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = Core.Nothing,
      payload = payload,
      projectId = projectId,
      replaceJobId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataflowProjectsJobsCreate
  where
  type Rs DataflowProjectsJobsCreate = Job
  type
    Scopes DataflowProjectsJobsCreate =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly,
         Userinfo'Email
       ]
  requestClient DataflowProjectsJobsCreate {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      location
      replaceJobId
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      payload
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsJobsCreateResource
          )
          Core.mempty
