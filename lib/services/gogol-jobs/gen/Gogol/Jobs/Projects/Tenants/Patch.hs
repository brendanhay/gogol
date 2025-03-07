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
-- Module      : Gogol.Jobs.Projects.Tenants.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates specified tenant.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.patch@.
module Gogol.Jobs.Projects.Tenants.Patch
  ( -- * Resource
    JobsProjectsTenantsPatchResource,

    -- ** Constructing a Request
    JobsProjectsTenantsPatch (..),
    newJobsProjectsTenantsPatch,
  )
where

import Gogol.Jobs.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @jobs.projects.tenants.patch@ method which the
-- 'JobsProjectsTenantsPatch' request conforms to.
type JobsProjectsTenantsPatchResource =
  "v4"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Tenant
    Core.:> Core.Patch '[Core.JSON] Tenant

-- | Updates specified tenant.
--
-- /See:/ 'newJobsProjectsTenantsPatch' smart constructor.
data JobsProjectsTenantsPatch = JobsProjectsTenantsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required during tenant update. The resource name for a tenant. This is generated by the service when a tenant is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\".
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Tenant,
    -- | Strongly recommended for the best service experience. If update_mask is provided, only the specified fields in tenant are updated. Otherwise all the fields are updated. A field mask to specify the tenant fields to be updated. Only top level fields of Tenant are supported.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsPatch' with the minimum fields required to make a request.
newJobsProjectsTenantsPatch ::
  -- |  Required during tenant update. The resource name for a tenant. This is generated by the service when a tenant is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\". See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Tenant ->
  JobsProjectsTenantsPatch
newJobsProjectsTenantsPatch name payload =
  JobsProjectsTenantsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest JobsProjectsTenantsPatch where
  type Rs JobsProjectsTenantsPatch = Tenant
  type
    Scopes JobsProjectsTenantsPatch =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsPatch {..} =
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
          (Core.Proxy :: Core.Proxy JobsProjectsTenantsPatchResource)
          Core.mempty
