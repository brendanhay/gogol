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
-- Module      : Gogol.Dataflow.Projects.Jobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the jobs of a project. To list the jobs of a project in a region, we recommend using @projects.locations.jobs.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). To list the all jobs across all regions, use @projects.jobs.aggregated@. Using @projects.jobs.list@ is not recommended, as you can only get the list of jobs that are running in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.list@.
module Gogol.Dataflow.Projects.Jobs.List
  ( -- * Resource
    DataflowProjectsJobsListResource,

    -- ** Constructing a Request
    DataflowProjectsJobsList (..),
    newDataflowProjectsJobsList,
  )
where

import Gogol.Dataflow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataflow.projects.jobs.list@ method which the
-- 'DataflowProjectsJobsList' request conforms to.
type DataflowProjectsJobsListResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" ProjectsJobsListFilter
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsJobsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobsResponse

-- | List the jobs of a project. To list the jobs of a project in a region, we recommend using @projects.locations.jobs.list@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). To list the all jobs across all regions, use @projects.jobs.aggregated@. Using @projects.jobs.list@ is not recommended, as you can only get the list of jobs that are running in @us-central1@.
--
-- /See:/ 'newDataflowProjectsJobsList' smart constructor.
data DataflowProjectsJobsList = DataflowProjectsJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The kind of filter to use.
    filter :: (Core.Maybe ProjectsJobsListFilter),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) that contains this job.
    location :: (Core.Maybe Core.Text),
    -- | If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of max_responses and an unspecified server-defined limit.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Set this to the \'next/page/token\' field of a previous response to request additional results in a long list.
    pageToken :: (Core.Maybe Core.Text),
    -- | The project which owns the jobs.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.
    view :: (Core.Maybe ProjectsJobsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsList' with the minimum fields required to make a request.
newDataflowProjectsJobsList ::
  -- |  The project which owns the jobs. See 'projectId'.
  Core.Text ->
  DataflowProjectsJobsList
newDataflowProjectsJobsList projectId =
  DataflowProjectsJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      location = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsJobsList where
  type Rs DataflowProjectsJobsList = ListJobsResponse
  type
    Scopes DataflowProjectsJobsList =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly,
         Userinfo'Email
       ]
  requestClient DataflowProjectsJobsList {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      filter
      location
      pageSize
      pageToken
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsJobsListResource
          )
          Core.mempty
