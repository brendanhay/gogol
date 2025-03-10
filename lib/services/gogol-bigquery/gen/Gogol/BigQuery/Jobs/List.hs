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
-- Module      : Gogol.BigQuery.Jobs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.list@.
module Gogol.BigQuery.Jobs.List
  ( -- * Resource
    BigQueryJobsListResource,

    -- ** Constructing a Request
    BigQueryJobsList (..),
    newBigQueryJobsList,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.jobs.list@ method which the
-- 'BigQueryJobsList' request conforms to.
type BigQueryJobsListResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allUsers" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxCreationTime" Core.Word64
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "minCreationTime" Core.Word64
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parentJobId" Core.Text
    Core.:> Core.QueryParam "projection" JobsListProjection
    Core.:> Core.QueryParams "stateFilter" JobsListStateFilter
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] JobList

-- | Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property.
--
-- /See:/ 'newBigQueryJobsList' smart constructor.
data BigQueryJobsList = BigQueryJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether to display jobs owned by all users in the project. Default False.
    allUsers :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Max value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created before or at this timestamp are returned.
    maxCreationTime :: (Core.Maybe Core.Word64),
    -- | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Min value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created after or at this timestamp are returned.
    minCreationTime :: (Core.Maybe Core.Word64),
    -- | Page token, returned by a previous call, to request the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | If set, show only child jobs of the specified parent. Otherwise, show all top-level jobs.
    parentJobId :: (Core.Maybe Core.Text),
    -- | Project ID of the jobs to list.
    projectId :: Core.Text,
    -- | Restrict information returned to a set of selected fields
    projection :: (Core.Maybe JobsListProjection),
    -- | Filter for job state
    stateFilter :: (Core.Maybe [JobsListStateFilter]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsList' with the minimum fields required to make a request.
newBigQueryJobsList ::
  -- |  Project ID of the jobs to list. See 'projectId'.
  Core.Text ->
  BigQueryJobsList
newBigQueryJobsList projectId =
  BigQueryJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allUsers = Core.Nothing,
      callback = Core.Nothing,
      maxCreationTime = Core.Nothing,
      maxResults = Core.Nothing,
      minCreationTime = Core.Nothing,
      pageToken = Core.Nothing,
      parentJobId = Core.Nothing,
      projectId = projectId,
      projection = Core.Nothing,
      stateFilter = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryJobsList where
  type Rs BigQueryJobsList = JobList
  type
    Scopes BigQueryJobsList =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryJobsList {..} =
    go
      projectId
      xgafv
      accessToken
      allUsers
      callback
      maxCreationTime
      maxResults
      minCreationTime
      pageToken
      parentJobId
      projection
      (stateFilter Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryJobsListResource)
          Core.mempty
