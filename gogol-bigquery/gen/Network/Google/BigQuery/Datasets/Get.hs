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
-- Module      : Network.Google.BigQuery.Datasets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the dataset specified by datasetID.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.get@.
module Network.Google.BigQuery.Datasets.Get
  ( -- * Resource
    BigQueryDatasetsGetResource,

    -- ** Constructing a Request
    newBigQueryDatasetsGet,
    BigQueryDatasetsGet,
  )
where

import Network.Google.BigQuery.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquery.datasets.get@ method which the
-- 'BigQueryDatasetsGet' request conforms to.
type BigQueryDatasetsGetResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Dataset

-- | Returns the dataset specified by datasetID.
--
-- /See:/ 'newBigQueryDatasetsGet' smart constructor.
data BigQueryDatasetsGet = BigQueryDatasetsGet
  { -- | Dataset ID of the requested dataset
    datasetId :: Core.Text,
    -- | Project ID of the requested dataset
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsGet' with the minimum fields required to make a request.
newBigQueryDatasetsGet ::
  -- |  Dataset ID of the requested dataset See 'datasetId'.
  Core.Text ->
  -- |  Project ID of the requested dataset See 'projectId'.
  Core.Text ->
  BigQueryDatasetsGet
newBigQueryDatasetsGet datasetId projectId =
  BigQueryDatasetsGet {datasetId = datasetId, projectId = projectId}

instance Core.GoogleRequest BigQueryDatasetsGet where
  type Rs BigQueryDatasetsGet = Dataset
  type
    Scopes BigQueryDatasetsGet =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient BigQueryDatasetsGet {..} =
    go
      projectId
      datasetId
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BigQueryDatasetsGetResource
          )
          Core.mempty
