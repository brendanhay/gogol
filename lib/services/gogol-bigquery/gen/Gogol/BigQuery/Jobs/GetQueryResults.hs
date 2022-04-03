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
-- Module      : Gogol.BigQuery.Jobs.GetQueryResults
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the results of a query job.
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
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.jobs.getQueryResults@ method which the
-- 'BigQueryJobsGetQueryResults' request conforms to.
type BigQueryJobsGetQueryResultsResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "queries"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word64
    Core.:> Core.QueryParam "timeoutMs" Core.Word32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetQueryResultsResponse

-- | Retrieves the results of a query job.
--
-- /See:/ 'newBigQueryJobsGetQueryResults' smart constructor.
data BigQueryJobsGetQueryResults = BigQueryJobsGetQueryResults
  { -- | [Required] Job ID of the query job
    jobId :: Core.Text,
    -- | The geographic location where the job should run. Required except for US and EU. See details at https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying/your/location.
    location :: (Core.Maybe Core.Text),
    -- | Maximum number of results to read
    maxResults :: (Core.Maybe Core.Word32),
    -- | Page token, returned by a previous call, to request the next page of results
    pageToken :: (Core.Maybe Core.Text),
    -- | [Required] Project ID of the query job
    projectId :: Core.Text,
    -- | Zero-based index of the starting row
    startIndex :: (Core.Maybe Core.Word64),
    -- | How long to wait for the query to complete, in milliseconds, before returning. Default is 10 seconds. If the timeout passes before the job completes, the \'jobComplete\' field in the response will be false
    timeoutMs :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsGetQueryResults' with the minimum fields required to make a request.
newBigQueryJobsGetQueryResults ::
  -- |  [Required] Job ID of the query job See 'jobId'.
  Core.Text ->
  -- |  [Required] Project ID of the query job See 'projectId'.
  Core.Text ->
  BigQueryJobsGetQueryResults
newBigQueryJobsGetQueryResults jobId projectId =
  BigQueryJobsGetQueryResults
    { jobId = jobId,
      location = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      startIndex = Core.Nothing,
      timeoutMs = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryJobsGetQueryResults
  where
  type
    Rs BigQueryJobsGetQueryResults =
      GetQueryResultsResponse
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
      location
      maxResults
      pageToken
      startIndex
      timeoutMs
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryJobsGetQueryResultsResource
          )
          Core.mempty
