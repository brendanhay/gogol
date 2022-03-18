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
-- Module      : Gogol.BigQuery.Datasets.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new empty dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.insert@.
module Gogol.BigQuery.Datasets.Insert
  ( -- * Resource
    BigQueryDatasetsInsertResource,

    -- ** Constructing a Request
    newBigQueryDatasetsInsert,
    BigQueryDatasetsInsert,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.datasets.insert@ method which the
-- 'BigQueryDatasetsInsert' request conforms to.
type BigQueryDatasetsInsertResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Dataset
    Core.:> Core.Post '[Core.JSON] Dataset

-- | Creates a new empty dataset.
--
-- /See:/ 'newBigQueryDatasetsInsert' smart constructor.
data BigQueryDatasetsInsert = BigQueryDatasetsInsert
  { -- | Multipart request metadata.
    payload :: Dataset,
    -- | Project ID of the new dataset
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsInsert' with the minimum fields required to make a request.
newBigQueryDatasetsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Dataset ->
  -- |  Project ID of the new dataset See 'projectId'.
  Core.Text ->
  BigQueryDatasetsInsert
newBigQueryDatasetsInsert payload projectId =
  BigQueryDatasetsInsert {payload = payload, projectId = projectId}

instance Core.GoogleRequest BigQueryDatasetsInsert where
  type Rs BigQueryDatasetsInsert = Dataset
  type
    Scopes BigQueryDatasetsInsert =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient BigQueryDatasetsInsert {..} =
    go
      projectId
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryDatasetsInsertResource
          )
          Core.mempty
