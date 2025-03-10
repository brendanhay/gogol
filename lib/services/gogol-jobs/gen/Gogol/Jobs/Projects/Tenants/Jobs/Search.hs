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
-- Module      : Gogol.Jobs.Projects.Tenants.Jobs.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for jobs using the provided SearchJobsRequest. This call constrains the visibility of jobs present in the database, and only returns jobs that the caller has permission to search against.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.search@.
module Gogol.Jobs.Projects.Tenants.Jobs.Search
  ( -- * Resource
    JobsProjectsTenantsJobsSearchResource,

    -- ** Constructing a Request
    JobsProjectsTenantsJobsSearch (..),
    newJobsProjectsTenantsJobsSearch,
  )
where

import Gogol.Jobs.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @jobs.projects.tenants.jobs.search@ method which the
-- 'JobsProjectsTenantsJobsSearch' request conforms to.
type JobsProjectsTenantsJobsSearchResource =
  "v4"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobs:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchJobsRequest
    Core.:> Core.Post '[Core.JSON] SearchJobsResponse

-- | Searches for jobs using the provided SearchJobsRequest. This call constrains the visibility of jobs present in the database, and only returns jobs that the caller has permission to search against.
--
-- /See:/ 'newJobsProjectsTenantsJobsSearch' smart constructor.
data JobsProjectsTenantsJobsSearch = JobsProjectsTenantsJobsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the tenant to search within. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: SearchJobsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsJobsSearch' with the minimum fields required to make a request.
newJobsProjectsTenantsJobsSearch ::
  -- |  Required. The resource name of the tenant to search within. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SearchJobsRequest ->
  JobsProjectsTenantsJobsSearch
newJobsProjectsTenantsJobsSearch parent payload =
  JobsProjectsTenantsJobsSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest JobsProjectsTenantsJobsSearch where
  type Rs JobsProjectsTenantsJobsSearch = SearchJobsResponse
  type
    Scopes JobsProjectsTenantsJobsSearch =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsJobsSearch {..} =
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
          (Core.Proxy :: Core.Proxy JobsProjectsTenantsJobsSearchResource)
          Core.mempty
