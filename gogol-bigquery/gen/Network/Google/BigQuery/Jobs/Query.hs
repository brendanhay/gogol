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
-- Module      : Network.Google.BigQuery.Jobs.Query
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a BigQuery SQL query synchronously and returns query results if the query completes within a specified timeout.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.query@.
module Network.Google.BigQuery.Jobs.Query
  ( -- * Resource
    BigQueryJobsQueryResource,

    -- ** Constructing a Request
    newBigQueryJobsQuery,
    BigQueryJobsQuery,
  )
where

import Network.Google.BigQuery.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquery.jobs.query@ method which the
-- 'BigQueryJobsQuery' request conforms to.
type BigQueryJobsQueryResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "queries"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] QueryRequest
    Core.:> Core.Post '[Core.JSON] QueryResponse

-- | Runs a BigQuery SQL query synchronously and returns query results if the query completes within a specified timeout.
--
-- /See:/ 'newBigQueryJobsQuery' smart constructor.
data BigQueryJobsQuery = BigQueryJobsQuery
  { -- | Multipart request metadata.
    payload :: QueryRequest,
    -- | Project ID of the project billed for the query
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsQuery' with the minimum fields required to make a request.
newBigQueryJobsQuery ::
  -- |  Multipart request metadata. See 'payload'.
  QueryRequest ->
  -- |  Project ID of the project billed for the query See 'projectId'.
  Core.Text ->
  BigQueryJobsQuery
newBigQueryJobsQuery payload projectId =
  BigQueryJobsQuery {payload = payload, projectId = projectId}

instance Core.GoogleRequest BigQueryJobsQuery where
  type Rs BigQueryJobsQuery = QueryResponse
  type
    Scopes BigQueryJobsQuery =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient BigQueryJobsQuery {..} =
    go
      projectId
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryJobsQueryResource)
          Core.mempty
