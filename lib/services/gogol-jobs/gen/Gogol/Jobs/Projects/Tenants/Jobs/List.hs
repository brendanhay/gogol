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
-- Module      : Gogol.Jobs.Projects.Tenants.Jobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists jobs by filter.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.list@.
module Gogol.Jobs.Projects.Tenants.Jobs.List
  ( -- * Resource
    JobsProjectsTenantsJobsListResource,

    -- ** Constructing a Request
    newJobsProjectsTenantsJobsList,
    JobsProjectsTenantsJobsList,
  )
where

import Gogol.Jobs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.jobs.list@ method which the
-- 'JobsProjectsTenantsJobsList' request conforms to.
type JobsProjectsTenantsJobsListResource =
  "v4"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam
              "jobView"
              ProjectsTenantsJobsListJobView
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobsResponse

-- | Lists jobs by filter.
--
-- /See:/ 'newJobsProjectsTenantsJobsList' smart constructor.
data JobsProjectsTenantsJobsList = JobsProjectsTenantsJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The filter string specifies the jobs to be enumerated. Supported operator: =, AND The fields eligible for filtering are: * @companyName@ * @requisitionId@ * @status@ Available values: OPEN, EXPIRED, ALL. Defaults to OPEN if no value is specified. At least one of @companyName@ and @requisitionId@ must present or an INVALID_ARGUMENT error is thrown. Sample Query: * companyName = \"projects\/foo\/tenants\/bar\/companies\/baz\" * companyName = \"projects\/foo\/tenants\/bar\/companies\/baz\" AND requisitionId = \"req-1\" * companyName = \"projects\/foo\/tenants\/bar\/companies\/baz\" AND status = \"EXPIRED\" * requisitionId = \"req-1\" * requisitionId = \"req-1\" AND status = \"EXPIRED\"
    filter :: (Core.Maybe Core.Text),
    -- | The desired job attributes returned for jobs in the search response. Defaults to JobView.JOB/VIEW/FULL if no value is specified.
    jobView :: (Core.Maybe ProjectsTenantsJobsListJobView),
    -- | The maximum number of jobs to be returned per page of results. If job/view is set to JobView.JOB/VIEW/ID/ONLY, the maximum allowed page size is 1000. Otherwise, the maximum allowed page size is 100. Default is 100 if empty or a number \< 1 is specified.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The starting point of a query result.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\".
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsJobsList' with the minimum fields required to make a request.
newJobsProjectsTenantsJobsList ::
  -- |  Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\". See 'parent'.
  Core.Text ->
  JobsProjectsTenantsJobsList
newJobsProjectsTenantsJobsList parent =
  JobsProjectsTenantsJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      jobView = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    JobsProjectsTenantsJobsList
  where
  type
    Rs JobsProjectsTenantsJobsList =
      ListJobsResponse
  type
    Scopes JobsProjectsTenantsJobsList =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsJobsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      jobView
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      jobsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy JobsProjectsTenantsJobsListResource
          )
          Core.mempty
