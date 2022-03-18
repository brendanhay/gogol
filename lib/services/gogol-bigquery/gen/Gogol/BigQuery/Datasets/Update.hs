{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery.Datasets.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.update@.
module Gogol.BigQuery.Datasets.Update
    (
    -- * Resource
      BigQueryDatasetsUpdateResource

    -- ** Constructing a Request
    , newBigQueryDatasetsUpdate
    , BigQueryDatasetsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.datasets.update@ method which the
-- 'BigQueryDatasetsUpdate' request conforms to.
type BigQueryDatasetsUpdateResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.ReqBody '[Core.JSON] Dataset Core.:>
                     Core.Put '[Core.JSON] Dataset

-- | Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource.
--
-- /See:/ 'newBigQueryDatasetsUpdate' smart constructor.
data BigQueryDatasetsUpdate = BigQueryDatasetsUpdate
    {
      -- | Dataset ID of the dataset being updated
      datasetId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Dataset
      -- | Project ID of the dataset being updated
    , projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsUpdate' with the minimum fields required to make a request.
newBigQueryDatasetsUpdate 
    ::  Core.Text
       -- ^  Dataset ID of the dataset being updated See 'datasetId'.
    -> Dataset
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID of the dataset being updated See 'projectId'.
    -> BigQueryDatasetsUpdate
newBigQueryDatasetsUpdate datasetId payload projectId =
  BigQueryDatasetsUpdate
    {datasetId = datasetId, payload = payload, projectId = projectId}

instance Core.GoogleRequest BigQueryDatasetsUpdate
         where
        type Rs BigQueryDatasetsUpdate = Dataset
        type Scopes BigQueryDatasetsUpdate =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BigQueryDatasetsUpdate{..}
          = go projectId datasetId (Core.Just Core.AltJSON)
              payload
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryDatasetsUpdateResource)
                      Core.mempty

