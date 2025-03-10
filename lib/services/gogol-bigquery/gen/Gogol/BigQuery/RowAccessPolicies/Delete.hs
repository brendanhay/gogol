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
-- Module      : Gogol.BigQuery.RowAccessPolicies.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a row access policy.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.delete@.
module Gogol.BigQuery.RowAccessPolicies.Delete
  ( -- * Resource
    BigQueryRowAccessPoliciesDeleteResource,

    -- ** Constructing a Request
    BigQueryRowAccessPoliciesDelete (..),
    newBigQueryRowAccessPoliciesDelete,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.rowAccessPolicies.delete@ method which the
-- 'BigQueryRowAccessPoliciesDelete' request conforms to.
type BigQueryRowAccessPoliciesDeleteResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "rowAccessPolicies"
    Core.:> Core.Capture "policyId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a row access policy.
--
-- /See:/ 'newBigQueryRowAccessPoliciesDelete' smart constructor.
data BigQueryRowAccessPoliciesDelete = BigQueryRowAccessPoliciesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the table to delete the row access policy.
    datasetId :: Core.Text,
    -- | If set to true, it deletes the row access policy even if it\'s the last row access policy on the table and the deletion will widen the access rather narrowing it.
    force :: (Core.Maybe Core.Bool),
    -- | Required. Policy ID of the row access policy.
    policyId :: Core.Text,
    -- | Required. Project ID of the table to delete the row access policy.
    projectId :: Core.Text,
    -- | Required. Table ID of the table to delete the row access policy.
    tableId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRowAccessPoliciesDelete' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesDelete ::
  -- |  Required. Dataset ID of the table to delete the row access policy. See 'datasetId'.
  Core.Text ->
  -- |  Required. Policy ID of the row access policy. See 'policyId'.
  Core.Text ->
  -- |  Required. Project ID of the table to delete the row access policy. See 'projectId'.
  Core.Text ->
  -- |  Required. Table ID of the table to delete the row access policy. See 'tableId'.
  Core.Text ->
  BigQueryRowAccessPoliciesDelete
newBigQueryRowAccessPoliciesDelete
  datasetId
  policyId
  projectId
  tableId =
    BigQueryRowAccessPoliciesDelete
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        datasetId = datasetId,
        force = Core.Nothing,
        policyId = policyId,
        projectId = projectId,
        tableId = tableId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest BigQueryRowAccessPoliciesDelete where
  type Rs BigQueryRowAccessPoliciesDelete = ()
  type
    Scopes BigQueryRowAccessPoliciesDelete =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryRowAccessPoliciesDelete {..} =
    go
      projectId
      datasetId
      tableId
      policyId
      xgafv
      accessToken
      callback
      force
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryRowAccessPoliciesDeleteResource)
          Core.mempty
