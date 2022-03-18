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
-- Module      : Gogol.BigQuery.Datasets.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.patch@.
module Gogol.BigQuery.Datasets.Patch
  ( -- * Resource
    BigQueryDatasetsPatchResource,

    -- ** Constructing a Request
    newBigQueryDatasetsPatch,
    BigQueryDatasetsPatch,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.datasets.patch@ method which the
-- 'BigQueryDatasetsPatch' request conforms to.
type BigQueryDatasetsPatchResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Dataset
    Core.:> Core.Patch '[Core.JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports patch semantics.
--
-- /See:/ 'newBigQueryDatasetsPatch' smart constructor.
data BigQueryDatasetsPatch = BigQueryDatasetsPatch
  { -- | Dataset ID of the dataset being updated
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Dataset,
    -- | Project ID of the dataset being updated
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsPatch' with the minimum fields required to make a request.
newBigQueryDatasetsPatch ::
  -- |  Dataset ID of the dataset being updated See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Dataset ->
  -- |  Project ID of the dataset being updated See 'projectId'.
  Core.Text ->
  BigQueryDatasetsPatch
newBigQueryDatasetsPatch datasetId payload projectId =
  BigQueryDatasetsPatch
    { datasetId = datasetId,
      payload = payload,
      projectId = projectId
    }

instance Core.GoogleRequest BigQueryDatasetsPatch where
  type Rs BigQueryDatasetsPatch = Dataset
  type
    Scopes BigQueryDatasetsPatch =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient BigQueryDatasetsPatch {..} =
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
              Core.Proxy BigQueryDatasetsPatchResource
          )
          Core.mempty
