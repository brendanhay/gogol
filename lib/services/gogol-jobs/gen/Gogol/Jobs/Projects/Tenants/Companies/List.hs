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
-- Module      : Gogol.Jobs.Projects.Tenants.Companies.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all companies associated with the project.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.list@.
module Gogol.Jobs.Projects.Tenants.Companies.List
  ( -- * Resource
    JobsProjectsTenantsCompaniesListResource,

    -- ** Constructing a Request
    JobsProjectsTenantsCompaniesList (..),
    newJobsProjectsTenantsCompaniesList,
  )
where

import Gogol.Jobs.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @jobs.projects.tenants.companies.list@ method which the
-- 'JobsProjectsTenantsCompaniesList' request conforms to.
type JobsProjectsTenantsCompaniesListResource =
  "v4"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "companies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "requireOpenJobs" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListCompaniesResponse

-- | Lists all companies associated with the project.
--
-- /See:/ 'newJobsProjectsTenantsCompaniesList' smart constructor.
data JobsProjectsTenantsCompaniesList = JobsProjectsTenantsCompaniesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of companies to be returned, at most 100. Default is 100 if a non-positive number is provided.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The starting indicator from which to return results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the tenant under which the company is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\".
    parent :: Core.Text,
    -- | Set to true if the companies requested must have open jobs. Defaults to false. If true, at most page_size of companies are fetched, among which only those with open jobs are returned.
    requireOpenJobs :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsCompaniesList' with the minimum fields required to make a request.
newJobsProjectsTenantsCompaniesList ::
  -- |  Required. Resource name of the tenant under which the company is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\". See 'parent'.
  Core.Text ->
  JobsProjectsTenantsCompaniesList
newJobsProjectsTenantsCompaniesList parent =
  JobsProjectsTenantsCompaniesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      requireOpenJobs = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest JobsProjectsTenantsCompaniesList where
  type Rs JobsProjectsTenantsCompaniesList = ListCompaniesResponse
  type
    Scopes JobsProjectsTenantsCompaniesList =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsCompaniesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      requireOpenJobs
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      jobsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy JobsProjectsTenantsCompaniesListResource)
          Core.mempty
