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
-- Module      : Network.Google.BigQuery.Models.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified model resource by model ID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.get@.
module Network.Google.BigQuery.Models.Get
  ( -- * Resource
    BigQueryModelsGetResource,

    -- ** Constructing a Request
    newBigQueryModelsGet,
    BigQueryModelsGet,
  )
where

import Network.Google.BigQuery.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquery.models.get@ method which the
-- 'BigQueryModelsGet' request conforms to.
type BigQueryModelsGetResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> "models"
    Core.:> Core.Capture "modelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Model

-- | Gets the specified model resource by model ID.
--
-- /See:/ 'newBigQueryModelsGet' smart constructor.
data BigQueryModelsGet = BigQueryModelsGet
  { -- | Required. Dataset ID of the requested model.
    datasetId :: Core.Text,
    -- | Required. Model ID of the requested model.
    modelId :: Core.Text,
    -- | Required. Project ID of the requested model.
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryModelsGet' with the minimum fields required to make a request.
newBigQueryModelsGet ::
  -- |  Required. Dataset ID of the requested model. See 'datasetId'.
  Core.Text ->
  -- |  Required. Model ID of the requested model. See 'modelId'.
  Core.Text ->
  -- |  Required. Project ID of the requested model. See 'projectId'.
  Core.Text ->
  BigQueryModelsGet
newBigQueryModelsGet datasetId modelId projectId =
  BigQueryModelsGet
    { datasetId = datasetId,
      modelId = modelId,
      projectId = projectId
    }

instance Core.GoogleRequest BigQueryModelsGet where
  type Rs BigQueryModelsGet = Model
  type
    Scopes BigQueryModelsGet =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient BigQueryModelsGet {..} =
    go
      projectId
      datasetId
      modelId
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryModelsGetResource)
          Core.mempty
