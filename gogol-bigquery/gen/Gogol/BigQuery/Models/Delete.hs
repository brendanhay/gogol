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
-- Module      : Gogol.BigQuery.Models.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the model specified by modelId from the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.delete@.
module Gogol.BigQuery.Models.Delete
  ( -- * Resource
    BigQueryModelsDeleteResource,

    -- ** Constructing a Request
    newBigQueryModelsDelete,
    BigQueryModelsDelete,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.models.delete@ method which the
-- 'BigQueryModelsDelete' request conforms to.
type BigQueryModelsDeleteResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "models"
    Core.:> Core.Capture "modelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes the model specified by modelId from the dataset.
--
-- /See:/ 'newBigQueryModelsDelete' smart constructor.
data BigQueryModelsDelete = BigQueryModelsDelete
  { -- | Required. Dataset ID of the model to delete.
    datasetId :: Core.Text,
    -- | Required. Model ID of the model to delete.
    modelId :: Core.Text,
    -- | Required. Project ID of the model to delete.
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryModelsDelete' with the minimum fields required to make a request.
newBigQueryModelsDelete ::
  -- |  Required. Dataset ID of the model to delete. See 'datasetId'.
  Core.Text ->
  -- |  Required. Model ID of the model to delete. See 'modelId'.
  Core.Text ->
  -- |  Required. Project ID of the model to delete. See 'projectId'.
  Core.Text ->
  BigQueryModelsDelete
newBigQueryModelsDelete datasetId modelId projectId =
  BigQueryModelsDelete
    { datasetId = datasetId,
      modelId = modelId,
      projectId = projectId
    }

instance Core.GoogleRequest BigQueryModelsDelete where
  type Rs BigQueryModelsDelete = ()
  type
    Scopes BigQueryModelsDelete =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient BigQueryModelsDelete {..} =
    go
      projectId
      datasetId
      modelId
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryModelsDeleteResource
          )
          Core.mempty
