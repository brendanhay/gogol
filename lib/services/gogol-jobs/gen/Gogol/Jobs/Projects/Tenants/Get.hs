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
-- Module      : Gogol.Jobs.Projects.Tenants.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves specified tenant.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.get@.
module Gogol.Jobs.Projects.Tenants.Get
  ( -- * Resource
    JobsProjectsTenantsGetResource,

    -- ** Constructing a Request
    newJobsProjectsTenantsGet,
    JobsProjectsTenantsGet,
  )
where

import Gogol.Jobs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.get@ method which the
-- 'JobsProjectsTenantsGet' request conforms to.
type JobsProjectsTenantsGetResource =
  "v4"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Tenant

-- | Retrieves specified tenant.
--
-- /See:/ 'newJobsProjectsTenantsGet' smart constructor.
data JobsProjectsTenantsGet = JobsProjectsTenantsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the tenant to be retrieved. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsGet' with the minimum fields required to make a request.
newJobsProjectsTenantsGet ::
  -- |  Required. The resource name of the tenant to be retrieved. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\". See 'name'.
  Core.Text ->
  JobsProjectsTenantsGet
newJobsProjectsTenantsGet name =
  JobsProjectsTenantsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest JobsProjectsTenantsGet where
  type Rs JobsProjectsTenantsGet = Tenant
  type
    Scopes JobsProjectsTenantsGet =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsGet {..} =
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
              Core.Proxy JobsProjectsTenantsGetResource
          )
          Core.mempty
