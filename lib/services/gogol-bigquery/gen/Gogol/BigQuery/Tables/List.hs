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
-- Module      : Gogol.BigQuery.Tables.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tables in the specified dataset. Requires the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.list@.
module Gogol.BigQuery.Tables.List
  ( -- * Resource
    BigQueryTablesListResource,

    -- ** Constructing a Request
    newBigQueryTablesList,
    BigQueryTablesList,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.tables.list@ method which the
-- 'BigQueryTablesList' request conforms to.
type BigQueryTablesListResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TableList

-- | Lists all tables in the specified dataset. Requires the READER dataset role.
--
-- /See:/ 'newBigQueryTablesList' smart constructor.
data BigQueryTablesList = BigQueryTablesList
  { -- | Dataset ID of the tables to list
    datasetId :: Core.Text,
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | Page token, returned by a previous call, to request the next page of results
    pageToken :: (Core.Maybe Core.Text),
    -- | Project ID of the tables to list
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesList' with the minimum fields required to make a request.
newBigQueryTablesList ::
  -- |  Dataset ID of the tables to list See 'datasetId'.
  Core.Text ->
  -- |  Project ID of the tables to list See 'projectId'.
  Core.Text ->
  BigQueryTablesList
newBigQueryTablesList datasetId projectId =
  BigQueryTablesList
    { datasetId = datasetId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId
    }

instance Core.GoogleRequest BigQueryTablesList where
  type Rs BigQueryTablesList = TableList
  type
    Scopes BigQueryTablesList =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient BigQueryTablesList {..} =
    go
      projectId
      datasetId
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryTablesListResource)
          Core.mempty
