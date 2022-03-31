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
-- Module      : Gogol.BigQuery.Tabledata.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves table data from a specified set of rows. Requires the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tabledata.list@.
module Gogol.BigQuery.Tabledata.List
  ( -- * Resource
    BigQueryTabledataListResource,

    -- ** Constructing a Request
    newBigQueryTabledataList,
    BigQueryTabledataList,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

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
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "selectedFields" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TableDataList

-- | Retrieves table data from a specified set of rows. Requires the READER dataset role.
--
-- /See:/ 'newBigQueryTabledataList' smart constructor.
data BigQueryTabledataList = BigQueryTabledataList
  { -- | Dataset ID of the table to read
    datasetId :: Core.Text,
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | Page token, returned by a previous call, identifying the result set
    pageToken :: (Core.Maybe Core.Text),
    -- | Project ID of the table to read
    projectId :: Core.Text,
    -- | List of fields to return (comma-separated). If unspecified, all fields are returned
    selectedFields :: (Core.Maybe Core.Text),
    -- | Zero-based index of the starting row to read
    startIndex :: (Core.Maybe Core.Word64),
    -- | Table ID of the table to read
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTabledataList' with the minimum fields required to make a request.
newBigQueryTabledataList ::
  -- |  Dataset ID of the table to read See 'datasetId'.
  Core.Text ->
  -- |  Project ID of the table to read See 'projectId'.
  Core.Text ->
  -- |  Table ID of the table to read See 'tableId'.
  Core.Text ->
  BigQueryTabledataList
newBigQueryTabledataList datasetId projectId tableId =
  BigQueryTabledataList
    { datasetId = datasetId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      selectedFields = Core.Nothing,
      startIndex = Core.Nothing,
      tableId = tableId
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
      maxResults
      pageToken
      selectedFields
      startIndex
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryTabledataListResource
          )
          Core.mempty
