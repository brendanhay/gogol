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
-- Module      : Gogol.BigQuery.RowAccessPolicies.BatchDelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes provided row access policies.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.batchDelete@.
module Gogol.BigQuery.RowAccessPolicies.BatchDelete
  ( -- * Resource
    BigQueryRowAccessPoliciesBatchDeleteResource,

    -- ** Constructing a Request
    BigQueryRowAccessPoliciesBatchDelete (..),
    newBigQueryRowAccessPoliciesBatchDelete,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.rowAccessPolicies.batchDelete@ method which the
-- 'BigQueryRowAccessPoliciesBatchDelete' request conforms to.
type BigQueryRowAccessPoliciesBatchDeleteResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "rowAccessPolicies:batchDelete"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchDeleteRowAccessPoliciesRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Deletes provided row access policies.
--
-- /See:/ 'newBigQueryRowAccessPoliciesBatchDelete' smart constructor.
data BigQueryRowAccessPoliciesBatchDelete = BigQueryRowAccessPoliciesBatchDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the table to delete the row access policies.
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchDeleteRowAccessPoliciesRequest,
    -- | Required. Project ID of the table to delete the row access policies.
    projectId :: Core.Text,
    -- | Required. Table ID of the table to delete the row access policies.
    tableId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRowAccessPoliciesBatchDelete' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesBatchDelete ::
  -- |  Required. Dataset ID of the table to delete the row access policies. See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchDeleteRowAccessPoliciesRequest ->
  -- |  Required. Project ID of the table to delete the row access policies. See 'projectId'.
  Core.Text ->
  -- |  Required. Table ID of the table to delete the row access policies. See 'tableId'.
  Core.Text ->
  BigQueryRowAccessPoliciesBatchDelete
newBigQueryRowAccessPoliciesBatchDelete
  datasetId
  payload
  projectId
  tableId =
    BigQueryRowAccessPoliciesBatchDelete
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

instance Core.GoogleRequest BigQueryRowAccessPoliciesBatchDelete where
  type Rs BigQueryRowAccessPoliciesBatchDelete = ()
  type
    Scopes BigQueryRowAccessPoliciesBatchDelete =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryRowAccessPoliciesBatchDelete {..} =
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
          ( Core.Proxy ::
              Core.Proxy BigQueryRowAccessPoliciesBatchDeleteResource
          )
          Core.mempty
