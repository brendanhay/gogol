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
-- Module      : Gogol.Dataproc.Projects.Regions.Jobs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists regions\/{region}\/jobs in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.list@.
module Gogol.Dataproc.Projects.Regions.Jobs.List
  ( -- * Resource
    DataprocProjectsRegionsJobsListResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsJobsList (..),
    newDataprocProjectsRegionsJobsList,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.regions.jobs.list@ method which the
-- 'DataprocProjectsRegionsJobsList' request conforms to.
type DataprocProjectsRegionsJobsListResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clusterName" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam
              "jobStateMatcher"
              ProjectsRegionsJobsListJobStateMatcher
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobsResponse

-- | Lists regions\/{region}\/jobs in a project.
--
-- /See:/ 'newDataprocProjectsRegionsJobsList' smart constructor.
data DataprocProjectsRegionsJobsList = DataprocProjectsRegionsJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. If set, the returned jobs list includes only jobs that were submitted to the named cluster.
    clusterName :: (Core.Maybe Core.Text),
    -- | Optional. A filter constraining the jobs to list. Filters are case-sensitive and have the following syntax:field = value AND field = value ...where field is status.state or labels.[KEY], and [KEY] is a label key. value can be * to match all values. status.state can be either ACTIVE or NON_ACTIVE. Only the logical AND operator is supported; space-separated items are treated as having an implicit AND operator.Example filter:status.state = ACTIVE AND labels.env = staging AND labels.starred = *
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Specifies enumerated categories of jobs to list. (default = match ALL jobs).If filter is provided, jobStateMatcher will be ignored.
    jobStateMatcher :: (Core.Maybe ProjectsRegionsJobsListJobStateMatcher),
    -- | Optional. The number of results to return in each response.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The page token, returned by a previous call, to request the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The ID of the Google Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Required. The Dataproc region in which to handle the request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsJobsList' with the minimum fields required to make a request.
newDataprocProjectsRegionsJobsList ::
  -- |  Required. The ID of the Google Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  -- |  Required. The Dataproc region in which to handle the request. See 'region'.
  Core.Text ->
  DataprocProjectsRegionsJobsList
newDataprocProjectsRegionsJobsList projectId region =
  DataprocProjectsRegionsJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterName = Core.Nothing,
      filter = Core.Nothing,
      jobStateMatcher = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DataprocProjectsRegionsJobsList where
  type Rs DataprocProjectsRegionsJobsList = ListJobsResponse
  type
    Scopes DataprocProjectsRegionsJobsList =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsRegionsJobsList {..} =
    go
      projectId
      region
      xgafv
      accessToken
      callback
      clusterName
      filter
      jobStateMatcher
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataprocService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DataprocProjectsRegionsJobsListResource)
          Core.mempty
