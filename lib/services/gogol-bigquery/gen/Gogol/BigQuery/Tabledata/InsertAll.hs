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
-- Module      : Gogol.BigQuery.Tabledata.InsertAll
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streams data into BigQuery one record at a time without needing to run a load job. Requires the WRITER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tabledata.insertAll@.
module Gogol.BigQuery.Tabledata.InsertAll
  ( -- * Resource
    BigQueryTabledataInsertAllResource,

    -- ** Constructing a Request
    newBigQueryTabledataInsertAll,
    BigQueryTabledataInsertAll,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.tabledata.insertAll@ method which the
-- 'BigQueryTabledataInsertAll' request conforms to.
type BigQueryTabledataInsertAllResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "insertAll"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TableDataInsertAllRequest
    Core.:> Core.Post '[Core.JSON] TableDataInsertAllResponse

-- | Streams data into BigQuery one record at a time without needing to run a load job. Requires the WRITER dataset role.
--
-- /See:/ 'newBigQueryTabledataInsertAll' smart constructor.
data BigQueryTabledataInsertAll = BigQueryTabledataInsertAll
  { -- | Dataset ID of the destination table.
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: TableDataInsertAllRequest,
    -- | Project ID of the destination table.
    projectId :: Core.Text,
    -- | Table ID of the destination table.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTabledataInsertAll' with the minimum fields required to make a request.
newBigQueryTabledataInsertAll ::
  -- |  Dataset ID of the destination table. See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TableDataInsertAllRequest ->
  -- |  Project ID of the destination table. See 'projectId'.
  Core.Text ->
  -- |  Table ID of the destination table. See 'tableId'.
  Core.Text ->
  BigQueryTabledataInsertAll
newBigQueryTabledataInsertAll datasetId payload projectId tableId =
  BigQueryTabledataInsertAll
    { datasetId = datasetId,
      payload = payload,
      projectId = projectId,
      tableId = tableId
    }

instance
  Core.GoogleRequest
    BigQueryTabledataInsertAll
  where
  type
    Rs BigQueryTabledataInsertAll =
      TableDataInsertAllResponse
  type
    Scopes BigQueryTabledataInsertAll =
      '[ Bigquery'FullControl,
         Bigquery'Insertdata,
         CloudPlatform'FullControl
       ]
  requestClient BigQueryTabledataInsertAll {..} =
    go
      projectId
      datasetId
      tableId
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryTabledataInsertAllResource
          )
          Core.mempty
