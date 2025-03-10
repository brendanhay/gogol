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
-- Module      : Gogol.BigQuery.RowAccessPolicies.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a row access policy.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.insert@.
module Gogol.BigQuery.RowAccessPolicies.Insert
  ( -- * Resource
    BigQueryRowAccessPoliciesInsertResource,

    -- ** Constructing a Request
    BigQueryRowAccessPoliciesInsert (..),
    newBigQueryRowAccessPoliciesInsert,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.rowAccessPolicies.insert@ method which the
-- 'BigQueryRowAccessPoliciesInsert' request conforms to.
type BigQueryRowAccessPoliciesInsertResource =
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
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RowAccessPolicy
    Core.:> Core.Post '[Core.JSON] RowAccessPolicy

-- | Creates a row access policy.
--
-- /See:/ 'newBigQueryRowAccessPoliciesInsert' smart constructor.
data BigQueryRowAccessPoliciesInsert = BigQueryRowAccessPoliciesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the table to get the row access policy.
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: RowAccessPolicy,
    -- | Required. Project ID of the table to get the row access policy.
    projectId :: Core.Text,
    -- | Required. Table ID of the table to get the row access policy.
    tableId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRowAccessPoliciesInsert' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesInsert ::
  -- |  Required. Dataset ID of the table to get the row access policy. See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RowAccessPolicy ->
  -- |  Required. Project ID of the table to get the row access policy. See 'projectId'.
  Core.Text ->
  -- |  Required. Table ID of the table to get the row access policy. See 'tableId'.
  Core.Text ->
  BigQueryRowAccessPoliciesInsert
newBigQueryRowAccessPoliciesInsert
  datasetId
  payload
  projectId
  tableId =
    BigQueryRowAccessPoliciesInsert
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        datasetId = datasetId,
        payload = payload,
        projectId = projectId,
        tableId = tableId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest BigQueryRowAccessPoliciesInsert where
  type Rs BigQueryRowAccessPoliciesInsert = RowAccessPolicy
  type
    Scopes BigQueryRowAccessPoliciesInsert =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryRowAccessPoliciesInsert {..} =
    go
      projectId
      datasetId
      tableId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryRowAccessPoliciesInsertResource)
          Core.mempty
