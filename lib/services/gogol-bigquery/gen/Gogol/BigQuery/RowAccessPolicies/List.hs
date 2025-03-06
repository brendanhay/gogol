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
-- Module      : Gogol.BigQuery.RowAccessPolicies.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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
    BigQueryRowAccessPoliciesList (..),
    newBigQueryRowAccessPoliciesList,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

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
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRowAccessPoliciesResponse

-- | Lists all row access policies on the specified table.
--
-- /See:/ 'newBigQueryRowAccessPoliciesList' smart constructor.
data BigQueryRowAccessPoliciesList = BigQueryRowAccessPoliciesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of row access policies to list.
    datasetId :: Core.Text,
    -- | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Page token, returned by a previous call, to request the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Project ID of the row access policies to list.
    projectId :: Core.Text,
    -- | Required. Table ID of the table to list row access policies.
    tableId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
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
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datasetId = datasetId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      tableId = tableId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryRowAccessPoliciesList where
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
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryRowAccessPoliciesListResource)
          Core.mempty
