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
-- Module      : Gogol.BigQuery.RowAccessPolicies.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified row access policy by policy ID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.get@.
module Gogol.BigQuery.RowAccessPolicies.Get
  ( -- * Resource
    BigQueryRowAccessPoliciesGetResource,

    -- ** Constructing a Request
    BigQueryRowAccessPoliciesGet (..),
    newBigQueryRowAccessPoliciesGet,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.rowAccessPolicies.get@ method which the
-- 'BigQueryRowAccessPoliciesGet' request conforms to.
type BigQueryRowAccessPoliciesGetResource =
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
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RowAccessPolicy

-- | Gets the specified row access policy by policy ID.
--
-- /See:/ 'newBigQueryRowAccessPoliciesGet' smart constructor.
data BigQueryRowAccessPoliciesGet = BigQueryRowAccessPoliciesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the table to get the row access policy.
    datasetId :: Core.Text,
    -- | Required. Policy ID of the row access policy.
    policyId :: Core.Text,
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

-- | Creates a value of 'BigQueryRowAccessPoliciesGet' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesGet ::
  -- |  Required. Dataset ID of the table to get the row access policy. See 'datasetId'.
  Core.Text ->
  -- |  Required. Policy ID of the row access policy. See 'policyId'.
  Core.Text ->
  -- |  Required. Project ID of the table to get the row access policy. See 'projectId'.
  Core.Text ->
  -- |  Required. Table ID of the table to get the row access policy. See 'tableId'.
  Core.Text ->
  BigQueryRowAccessPoliciesGet
newBigQueryRowAccessPoliciesGet
  datasetId
  policyId
  projectId
  tableId =
    BigQueryRowAccessPoliciesGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        datasetId = datasetId,
        policyId = policyId,
        projectId = projectId,
        tableId = tableId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest BigQueryRowAccessPoliciesGet where
  type Rs BigQueryRowAccessPoliciesGet = RowAccessPolicy
  type
    Scopes BigQueryRowAccessPoliciesGet =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryRowAccessPoliciesGet {..} =
    go
      projectId
      datasetId
      tableId
      policyId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryRowAccessPoliciesGetResource)
          Core.mempty
