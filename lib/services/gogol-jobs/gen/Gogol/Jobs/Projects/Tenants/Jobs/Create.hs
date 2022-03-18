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
-- Module      : Gogol.Jobs.Projects.Tenants.Jobs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new job. Typically, the job becomes searchable within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.create@.
module Gogol.Jobs.Projects.Tenants.Jobs.Create
  ( -- * Resource
    JobsProjectsTenantsJobsCreateResource,

    -- ** Constructing a Request
    newJobsProjectsTenantsJobsCreate,
    JobsProjectsTenantsJobsCreate,
  )
where

import Gogol.Jobs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.jobs.create@ method which the
-- 'JobsProjectsTenantsJobsCreate' request conforms to.
type JobsProjectsTenantsJobsCreateResource =
  "v4"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Job
    Core.:> Core.Post '[Core.JSON] Job

-- | Creates a new job. Typically, the job becomes searchable within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ 'newJobsProjectsTenantsJobsCreate' smart constructor.
data JobsProjectsTenantsJobsCreate = JobsProjectsTenantsJobsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Job,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsJobsCreate' with the minimum fields required to make a request.
newJobsProjectsTenantsJobsCreate ::
  -- |  Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Job ->
  JobsProjectsTenantsJobsCreate
newJobsProjectsTenantsJobsCreate parent payload =
  JobsProjectsTenantsJobsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    JobsProjectsTenantsJobsCreate
  where
  type Rs JobsProjectsTenantsJobsCreate = Job
  type
    Scopes JobsProjectsTenantsJobsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/jobs"
       ]
  requestClient JobsProjectsTenantsJobsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      jobsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy JobsProjectsTenantsJobsCreateResource
          )
          Core.mempty
