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
-- Module      : Gogol.Jobs.Projects.Tenants.Jobs.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates specified job. Typically, updated contents become visible in search results within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.patch@.
module Gogol.Jobs.Projects.Tenants.Jobs.Patch
  ( -- * Resource
    JobsProjectsTenantsJobsPatchResource,

    -- ** Constructing a Request
    JobsProjectsTenantsJobsPatch (..),
    newJobsProjectsTenantsJobsPatch,
  )
where

import Gogol.Jobs.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @jobs.projects.tenants.jobs.patch@ method which the
-- 'JobsProjectsTenantsJobsPatch' request conforms to.
type JobsProjectsTenantsJobsPatchResource =
  "v4"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Job
    Core.:> Core.Patch '[Core.JSON] Job

-- | Updates specified job. Typically, updated contents become visible in search results within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ 'newJobsProjectsTenantsJobsPatch' smart constructor.
data JobsProjectsTenantsJobsPatch = JobsProjectsTenantsJobsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/jobs\/{job/id}\". For example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". Use of this field in job queries and API calls is preferred over the use of requisition/id since this value is unique.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Job,
    -- | Strongly recommended for the best service experience. If update_mask is provided, only the specified fields in job are updated. Otherwise all the fields are updated. A field mask to restrict the fields that are updated. Only top level fields of Job are supported.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsJobsPatch' with the minimum fields required to make a request.
newJobsProjectsTenantsJobsPatch ::
  -- |  Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/jobs\/{job/id}\". For example, \"projects\/foo\/tenants\/bar\/jobs\/baz\". Use of this field in job queries and API calls is preferred over the use of requisition/id since this value is unique. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Job ->
  JobsProjectsTenantsJobsPatch
newJobsProjectsTenantsJobsPatch name payload =
  JobsProjectsTenantsJobsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest JobsProjectsTenantsJobsPatch where
  type Rs JobsProjectsTenantsJobsPatch = Job
  type
    Scopes JobsProjectsTenantsJobsPatch =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsJobsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      jobsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy JobsProjectsTenantsJobsPatchResource)
          Core.mempty
