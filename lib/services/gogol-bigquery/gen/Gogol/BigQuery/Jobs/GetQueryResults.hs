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
-- Module      : Gogol.BigQuery.Jobs.GetQueryResults
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RPC to get the results of a query job.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.getQueryResults@.
module Gogol.BigQuery.Jobs.GetQueryResults
  ( -- * Resource
    BigQueryJobsGetQueryResultsResource,

    -- ** Constructing a Request
    BigQueryJobsGetQueryResults (..),
    newBigQueryJobsGetQueryResults,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.jobs.getQueryResults@ method which the
-- 'BigQueryJobsGetQueryResults' request conforms to.
type BigQueryJobsGetQueryResultsResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "queries"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "formatOptions.useInt64Timestamp" Core.Bool
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word64
    Core.:> Core.QueryParam "timeoutMs" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetQueryResultsResponse

-- | RPC to get the results of a query job.
--
-- /See:/ 'newBigQueryJobsGetQueryResults' smart constructor.
data BigQueryJobsGetQueryResults = BigQueryJobsGetQueryResults
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Output timestamp as usec int64. Default is false.
    formatOptionsUseInt64Timestamp :: (Core.Maybe Core.Bool),
    -- | Required. Job ID of the query job.
    jobId :: Core.Text,
    -- | The geographic location of the job. You must specify the location to run the job for the following scenarios: * If the location to run a job is not in the @us@ or the @eu@ multi-regional location * If the job\'s location is in a single region (for example, @us-central1@) For more information, see how to <https://cloud.google.com/bigquery/docs/locations#specify_locations specify locations>.
    location :: (Core.Maybe Core.Text),
    -- | Maximum number of results to read.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Page token, returned by a previous call, to request the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Project ID of the query job.
    projectId :: Core.Text,
    -- | Zero-based index of the starting row.
    startIndex :: (Core.Maybe Core.Word64),
    -- | Optional: Specifies the maximum amount of time, in milliseconds, that the client is willing to wait for the query to complete. By default, this limit is 10 seconds (10,000 milliseconds). If the query is complete, the jobComplete field in the response is true. If the query has not yet completed, jobComplete is false. You can request a longer timeout period in the timeoutMs field. However, the call is not guaranteed to wait for the specified timeout; it typically returns after around 200 seconds (200,000 milliseconds), even if the query is not complete. If jobComplete is false, you can continue to wait for the query to complete by calling the getQueryResults method until the jobComplete field in the getQueryResults response is true.
    timeoutMs :: (Core.Maybe Core.Word32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsGetQueryResults' with the minimum fields required to make a request.
newBigQueryJobsGetQueryResults ::
  -- |  Required. Job ID of the query job. See 'jobId'.
  Core.Text ->
  -- |  Required. Project ID of the query job. See 'projectId'.
  Core.Text ->
  BigQueryJobsGetQueryResults
newBigQueryJobsGetQueryResults jobId projectId =
  BigQueryJobsGetQueryResults
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      formatOptionsUseInt64Timestamp = Core.Nothing,
      jobId = jobId,
      location = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      startIndex = Core.Nothing,
      timeoutMs = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryJobsGetQueryResults where
  type Rs BigQueryJobsGetQueryResults = GetQueryResultsResponse
  type
    Scopes BigQueryJobsGetQueryResults =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryJobsGetQueryResults {..} =
    go
      projectId
      jobId
      xgafv
      accessToken
      callback
      formatOptionsUseInt64Timestamp
      location
      maxResults
      pageToken
      startIndex
      timeoutMs
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryJobsGetQueryResultsResource)
          Core.mempty
