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
-- Module      : Gogol.BigQuery.RowAccessPolicies.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all row access policies on the specified table.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.list@.
module Gogol.BigQuery.RowAccessPolicies.List
  ( -- * Resource
    BigQueryRowAccessPoliciesListResource,

    -- ** Constructing a Request
    newBigQueryRowAccessPoliciesList,
    BigQueryRowAccessPoliciesList,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.rowAccessPolicies.list@ method which the
-- 'BigQueryRowAccessPoliciesList' request conforms to.
type BigQueryRowAccessPoliciesListResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "rowAccessPolicies"
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRowAccessPoliciesResponse

-- | Lists all row access policies on the specified table.
--
-- /See:/ 'newBigQueryRowAccessPoliciesList' smart constructor.
data BigQueryRowAccessPoliciesList = BigQueryRowAccessPoliciesList
  { -- | Required. Dataset ID of row access policies to list.
    datasetId :: Core.Text,
    -- | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Page token, returned by a previous call, to request the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Project ID of the row access policies to list.
    projectId :: Core.Text,
    -- | Required. Table ID of the table to list row access policies.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRowAccessPoliciesList' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesList ::
  -- |  Required. Dataset ID of row access policies to list. See 'datasetId'.
  Core.Text ->
  -- |  Required. Project ID of the row access policies to list. See 'projectId'.
  Core.Text ->
  -- |  Required. Table ID of the table to list row access policies. See 'tableId'.
  Core.Text ->
  BigQueryRowAccessPoliciesList
newBigQueryRowAccessPoliciesList datasetId projectId tableId =
  BigQueryRowAccessPoliciesList
    { datasetId = datasetId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      tableId = tableId
    }

instance
  Core.GoogleRequest
    BigQueryRowAccessPoliciesList
  where
  type
    Rs BigQueryRowAccessPoliciesList =
      ListRowAccessPoliciesResponse
  type
    Scopes BigQueryRowAccessPoliciesList =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryRowAccessPoliciesList {..} =
    go
      projectId
      datasetId
      tableId
      pageSize
      pageToken
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryRowAccessPoliciesListResource
          )
          Core.mempty
