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
-- Module      : Gogol.BigQuery.Tabledata.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the content of a table in rows.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tabledata.list@.
module Gogol.BigQuery.Tabledata.List
  ( -- * Resource
    BigQueryTabledataListResource,

    -- ** Constructing a Request
    BigQueryTabledataList (..),
    newBigQueryTabledataList,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.tabledata.list@ method which the
-- 'BigQueryTabledataList' request conforms to.
type BigQueryTabledataListResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "data"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "formatOptions.useInt64Timestamp" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "selectedFields" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TableDataList

-- | List the content of a table in rows.
--
-- /See:/ 'newBigQueryTabledataList' smart constructor.
data BigQueryTabledataList = BigQueryTabledataList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Dataset id of the table to list.
    datasetId :: Core.Text,
    -- | Optional. Output timestamp as usec int64. Default is false.
    formatOptionsUseInt64Timestamp :: (Core.Maybe Core.Bool),
    -- | Row limit of the table.
    maxResults :: (Core.Maybe Core.Word32),
    -- | To retrieve the next page of table data, set this field to the string provided in the pageToken field of the response body from your previous call to tabledata.list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Project id of the table to list.
    projectId :: Core.Text,
    -- | Subset of fields to return, supports select into sub fields. Example: selected_fields = \"a,e.d.f\";
    selectedFields :: (Core.Maybe Core.Text),
    -- | Start row index of the table.
    startIndex :: (Core.Maybe Core.Word64),
    -- | Required. Table id of the table to list.
    tableId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTabledataList' with the minimum fields required to make a request.
newBigQueryTabledataList ::
  -- |  Required. Dataset id of the table to list. See 'datasetId'.
  Core.Text ->
  -- |  Required. Project id of the table to list. See 'projectId'.
  Core.Text ->
  -- |  Required. Table id of the table to list. See 'tableId'.
  Core.Text ->
  BigQueryTabledataList
newBigQueryTabledataList datasetId projectId tableId =
  BigQueryTabledataList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      datasetId = datasetId,
      formatOptionsUseInt64Timestamp = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      selectedFields = Core.Nothing,
      startIndex = Core.Nothing,
      tableId = tableId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryTabledataList where
  type Rs BigQueryTabledataList = TableDataList
  type
    Scopes BigQueryTabledataList =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryTabledataList {..} =
    go
      projectId
      datasetId
      tableId
      xgafv
      accessToken
      callback
      formatOptionsUseInt64Timestamp
      maxResults
      pageToken
      selectedFields
      startIndex
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryTabledataListResource)
          Core.mempty
