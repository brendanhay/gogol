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
-- Module      : Gogol.BigQuery.Tables.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.delete@.
module Gogol.BigQuery.Tables.Delete
  ( -- * Resource
    BigQueryTablesDeleteResource,

    -- ** Constructing a Request
    BigQueryTablesDelete (..),
    newBigQueryTablesDelete,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.tables.delete@ method which the
-- 'BigQueryTablesDelete' request conforms to.
type BigQueryTablesDeleteResource =
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
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.
--
-- /See:/ 'newBigQueryTablesDelete' smart constructor.
data BigQueryTablesDelete = BigQueryTablesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset ID of the table to delete
    datasetId :: Core.Text,
    -- | Required. Project ID of the table to delete
    projectId :: Core.Text,
    -- | Required. Table ID of the table to delete
    tableId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesDelete' with the minimum fields required to make a request.
newBigQueryTablesDelete ::
  -- |  Required. Dataset ID of the table to delete See 'datasetId'.
  Core.Text ->
  -- |  Required. Project ID of the table to delete See 'projectId'.
  Core.Text ->
  -- |  Required. Table ID of the table to delete See 'tableId'.
  Core.Text ->
  BigQueryTablesDelete
newBigQueryTablesDelete datasetId projectId tableId =
  BigQueryTablesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datasetId = datasetId,
      projectId = projectId,
      tableId = tableId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryTablesDelete where
  type Rs BigQueryTablesDelete = ()
  type
    Scopes BigQueryTablesDelete =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient BigQueryTablesDelete {..} =
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
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryTablesDeleteResource)
          Core.mempty
