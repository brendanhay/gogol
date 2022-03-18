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
-- Module      : Gogol.BigQuery.Tables.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource. This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.patch@.
module Gogol.BigQuery.Tables.Patch
  ( -- * Resource
    BigQueryTablesPatchResource,

    -- ** Constructing a Request
    newBigQueryTablesPatch,
    BigQueryTablesPatch,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.tables.patch@ method which the
-- 'BigQueryTablesPatch' request conforms to.
type BigQueryTablesPatchResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> Core.QueryParam "autodetect_schema" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Table
    Core.:> Core.Patch '[Core.JSON] Table

-- | Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource. This method supports patch semantics.
--
-- /See:/ 'newBigQueryTablesPatch' smart constructor.
data BigQueryTablesPatch = BigQueryTablesPatch
  { -- | When true will autodetect schema, else will keep original schema
    autodetectSchema :: (Core.Maybe Core.Bool),
    -- | Dataset ID of the table to update
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Table,
    -- | Project ID of the table to update
    projectId :: Core.Text,
    -- | Table ID of the table to update
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTablesPatch' with the minimum fields required to make a request.
newBigQueryTablesPatch ::
  -- |  Dataset ID of the table to update See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Table ->
  -- |  Project ID of the table to update See 'projectId'.
  Core.Text ->
  -- |  Table ID of the table to update See 'tableId'.
  Core.Text ->
  BigQueryTablesPatch
newBigQueryTablesPatch datasetId payload projectId tableId =
  BigQueryTablesPatch
    { autodetectSchema = Core.Nothing,
      datasetId = datasetId,
      payload = payload,
      projectId = projectId,
      tableId = tableId
    }

instance Core.GoogleRequest BigQueryTablesPatch where
  type Rs BigQueryTablesPatch = Table
  type
    Scopes BigQueryTablesPatch =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient BigQueryTablesPatch {..} =
    go
      projectId
      datasetId
      tableId
      autodetectSchema
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryTablesPatchResource
          )
          Core.mempty
