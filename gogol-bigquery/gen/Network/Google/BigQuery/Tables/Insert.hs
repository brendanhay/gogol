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
-- Module      : Network.Google.BigQuery.Tables.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new, empty table in the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.insert@.
module Network.Google.BigQuery.Tables.Insert
  ( -- * Resource
    BigQueryTablesInsertResource,

    -- ** Constructing a Request
    newBigQueryTablesInsert,
    BigQueryTablesInsert,
  )
where

import Network.Google.BigQuery.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquery.tables.insert@ method which the
-- 'BigQueryTablesInsert' request conforms to.
type BigQueryTablesInsertResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Table
    Core.:> Core.Post '[Core.JSON] Table

-- | Creates a new, empty table in the dataset.
--
-- /See:/ 'newBigQueryTablesInsert' smart constructor.
data BigQueryTablesInsert = BigQueryTablesInsert
  { -- | Dataset ID of the new table
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Table,
    -- | Project ID of the new table
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesInsert' with the minimum fields required to make a request.
newBigQueryTablesInsert ::
  -- |  Dataset ID of the new table See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Table ->
  -- |  Project ID of the new table See 'projectId'.
  Core.Text ->
  BigQueryTablesInsert
newBigQueryTablesInsert datasetId payload projectId =
  BigQueryTablesInsert
    { datasetId = datasetId,
      payload = payload,
      projectId = projectId
    }

instance Core.GoogleRequest BigQueryTablesInsert where
  type Rs BigQueryTablesInsert = Table
  type
    Scopes BigQueryTablesInsert =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient BigQueryTablesInsert {..} =
    go
      projectId
      datasetId
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryTablesInsertResource
          )
          Core.mempty
