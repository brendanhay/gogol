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
-- Module      : Gogol.BigQuery.Datasets.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.delete@.
module Gogol.BigQuery.Datasets.Delete
    (
    -- * Resource
      BigQueryDatasetsDeleteResource

    -- ** Constructing a Request
    , newBigQueryDatasetsDelete
    , BigQueryDatasetsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.datasets.delete@ method which the
-- 'BigQueryDatasetsDelete' request conforms to.
type BigQueryDatasetsDeleteResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 Core.QueryParam "deleteContents" Core.Bool Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] ()

-- | Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name.
--
-- /See:/ 'newBigQueryDatasetsDelete' smart constructor.
data BigQueryDatasetsDelete = BigQueryDatasetsDelete
    {
      -- | Dataset ID of dataset being deleted
      datasetId :: Core.Text
      -- | If True, delete all the tables in the dataset. If False and the dataset contains tables, the request will fail. Default is False
    , deleteContents :: (Core.Maybe Core.Bool)
      -- | Project ID of the dataset being deleted
    , projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsDelete' with the minimum fields required to make a request.
newBigQueryDatasetsDelete 
    ::  Core.Text
       -- ^  Dataset ID of dataset being deleted See 'datasetId'.
    -> Core.Text
       -- ^  Project ID of the dataset being deleted See 'projectId'.
    -> BigQueryDatasetsDelete
newBigQueryDatasetsDelete datasetId projectId =
  BigQueryDatasetsDelete
    { datasetId = datasetId
    , deleteContents = Core.Nothing
    , projectId = projectId
    }

instance Core.GoogleRequest BigQueryDatasetsDelete
         where
        type Rs BigQueryDatasetsDelete = ()
        type Scopes BigQueryDatasetsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BigQueryDatasetsDelete{..}
          = go projectId datasetId deleteContents
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryDatasetsDeleteResource)
                      Core.mempty

