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
-- Module      : Gogol.BigQuery.Tables.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing table. The update method replaces the entire Table resource, whereas the patch method only replaces fields that are provided in the submitted Table resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.update@.
module Gogol.BigQuery.Tables.Update
  ( -- * Resource
    BigQueryTablesUpdateResource,

    -- ** Constructing a Request
    BigQueryTablesUpdate (..),
    newBigQueryTablesUpdate,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.tables.update@ method which the
-- 'BigQueryTablesUpdate' request conforms to.
type BigQueryTablesUpdateResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "autodetect_schema" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Table
    Core.:> Core.Put '[Core.JSON] Table

-- | Updates information in an existing table. The update method replaces the entire Table resource, whereas the patch method only replaces fields that are provided in the submitted Table resource.
--
-- /See:/ 'newBigQueryTablesUpdate' smart constructor.
data BigQueryTablesUpdate = BigQueryTablesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. When true will autodetect schema, else will keep original schema
    autodetectSchema :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the table to update
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Table,
    -- | Required. Project ID of the table to update
    projectId :: Core.Text,
    -- | Required. Table ID of the table to update
    tableId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesUpdate' with the minimum fields required to make a request.
newBigQueryTablesUpdate ::
  -- |  Required. Dataset ID of the table to update See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Table ->
  -- |  Required. Project ID of the table to update See 'projectId'.
  Core.Text ->
  -- |  Required. Table ID of the table to update See 'tableId'.
  Core.Text ->
  BigQueryTablesUpdate
newBigQueryTablesUpdate datasetId payload projectId tableId =
  BigQueryTablesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      autodetectSchema = Core.Nothing,
      callback = Core.Nothing,
      datasetId = datasetId,
      payload = payload,
      projectId = projectId,
      tableId = tableId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryTablesUpdate where
  type Rs BigQueryTablesUpdate = Table
  type
    Scopes BigQueryTablesUpdate =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryTablesUpdate {..} =
    go
      projectId
      datasetId
      tableId
      xgafv
      accessToken
      autodetectSchema
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryTablesUpdateResource)
          Core.mempty
