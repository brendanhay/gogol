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
-- Module      : Network.Google.BigQuery.Jobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.list@.
module Network.Google.BigQuery.Jobs.List
  ( -- * Resource
    BigQueryJobsListResource,

    -- ** Constructing a Request
    newBigQueryJobsList,
    BigQueryJobsList,
  )
where

import Network.Google.BigQuery.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquery.jobs.list@ method which the
-- 'BigQueryJobsList' request conforms to.
type BigQueryJobsListResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "allUsers" Core.Bool
    Core.:> Core.QueryParam "maxCreationTime" Core.Word64
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "minCreationTime" Core.Word64
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parentJobId" Core.Text
    Core.:> Core.QueryParam "projection" JobsListProjection
    Core.:> Core.QueryParams "stateFilter" JobsListStateFilter
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] JobList

-- | Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property.
--
-- /See:/ 'newBigQueryJobsList' smart constructor.
data BigQueryJobsList = BigQueryJobsList
  { -- | Whether to display jobs owned by all users in the project. Default false
    allUsers :: (Core.Maybe Core.Bool),
    -- | Max value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created before or at this timestamp are returned
    maxCreationTime :: (Core.Maybe Core.Word64),
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | Min value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created after or at this timestamp are returned
    minCreationTime :: (Core.Maybe Core.Word64),
    -- | Page token, returned by a previous call, to request the next page of results
    pageToken :: (Core.Maybe Core.Text),
    -- | If set, retrieves only jobs whose parent is this job. Otherwise, retrieves only jobs which have no parent
    parentJobId :: (Core.Maybe Core.Text),
    -- | Project ID of the jobs to list
    projectId :: Core.Text,
    -- | Restrict information returned to a set of selected fields
    projection :: (Core.Maybe JobsListProjection),
    -- | Filter for job state
    stateFilter :: (Core.Maybe [JobsListStateFilter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsList' with the minimum fields required to make a request.
newBigQueryJobsList ::
  -- |  Project ID of the jobs to list See 'projectId'.
  Core.Text ->
  BigQueryJobsList
newBigQueryJobsList projectId =
  BigQueryJobsList
    { allUsers = Core.Nothing,
      maxCreationTime = Core.Nothing,
      maxResults = Core.Nothing,
      minCreationTime = Core.Nothing,
      pageToken = Core.Nothing,
      parentJobId = Core.Nothing,
      projectId = projectId,
      projection = Core.Nothing,
      stateFilter = Core.Nothing
    }

instance Core.GoogleRequest BigQueryJobsList where
  type Rs BigQueryJobsList = JobList
  type
    Scopes BigQueryJobsList =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient BigQueryJobsList {..} =
    go
      projectId
      allUsers
      maxCreationTime
      maxResults
      minCreationTime
      pageToken
      parentJobId
      projection
      (stateFilter Core.^. Core._Default)
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryJobsListResource)
          Core.mempty
