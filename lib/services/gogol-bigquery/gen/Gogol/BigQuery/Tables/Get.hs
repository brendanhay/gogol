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
-- Module      : Gogol.BigQuery.Tables.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.get@.
module Gogol.BigQuery.Tables.Get
  ( -- * Resource
    BigQueryTablesGetResource,

    -- ** Constructing a Request
    newBigQueryTablesGet,
    BigQueryTablesGet,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.tables.get@ method which the
-- 'BigQueryTablesGet' request conforms to.
type BigQueryTablesGetResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> Core.QueryParam "selectedFields" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Table

-- | Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.
--
-- /See:/ 'newBigQueryTablesGet' smart constructor.
data BigQueryTablesGet = BigQueryTablesGet
  { -- | Dataset ID of the requested table
    datasetId :: Core.Text,
    -- | Project ID of the requested table
    projectId :: Core.Text,
    -- | List of fields to return (comma-separated). If unspecified, all fields are returned
    selectedFields :: (Core.Maybe Core.Text),
    -- | Table ID of the requested table
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesGet' with the minimum fields required to make a request.
newBigQueryTablesGet ::
  -- |  Dataset ID of the requested table See 'datasetId'.
  Core.Text ->
  -- |  Project ID of the requested table See 'projectId'.
  Core.Text ->
  -- |  Table ID of the requested table See 'tableId'.
  Core.Text ->
  BigQueryTablesGet
newBigQueryTablesGet datasetId projectId tableId =
  BigQueryTablesGet
    { datasetId = datasetId,
      projectId = projectId,
      selectedFields = Core.Nothing,
      tableId = tableId
    }

instance Core.GoogleRequest BigQueryTablesGet where
  type Rs BigQueryTablesGet = Table
  type
    Scopes BigQueryTablesGet =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient BigQueryTablesGet {..} =
    go
      projectId
      datasetId
      tableId
      selectedFields
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryTablesGetResource)
          Core.mempty
