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
-- Module      : Gogol.Jobs.Projects.Tenants.Jobs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.get@.
module Gogol.Jobs.Projects.Tenants.Jobs.Get
  ( -- * Resource
    JobsProjectsTenantsJobsGetResource,

    -- ** Constructing a Request
    newJobsProjectsTenantsJobsGet,
    JobsProjectsTenantsJobsGet,
  )
where

import Gogol.Jobs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.jobs.get@ method which the
-- 'JobsProjectsTenantsJobsGet' request conforms to.
type JobsProjectsTenantsJobsGetResource =
  "v4"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Job

-- | Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
--
-- /See:/ 'newJobsProjectsTenantsJobsGet' smart constructor.
data JobsProjectsTenantsJobsGet = JobsProjectsTenantsJobsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the job to retrieve. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/jobs\/{job_id}\". For example, \"projects\/foo\/tenants\/bar\/jobs\/baz\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsJobsGet' with the minimum fields required to make a request.
newJobsProjectsTenantsJobsGet ::
  -- |  Required. The resource name of the job to retrieve. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/jobs\/{job_id}\". For example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". See 'name'.
  Core.Text ->
  JobsProjectsTenantsJobsGet
newJobsProjectsTenantsJobsGet name =
  JobsProjectsTenantsJobsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    JobsProjectsTenantsJobsGet
  where
  type Rs JobsProjectsTenantsJobsGet = Job
  type
    Scopes JobsProjectsTenantsJobsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/jobs"
       ]
  requestClient JobsProjectsTenantsJobsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      jobsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy JobsProjectsTenantsJobsGetResource
          )
          Core.mempty
