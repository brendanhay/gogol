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
-- Module      : Gogol.BigQuery.Models.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all models in the specified dataset. Requires the READER dataset role. After retrieving the list of models, you can get information about a particular model by calling the models.get method.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.models.list@.
module Gogol.BigQuery.Models.List
    (
    -- * Resource
      BigQueryModelsListResource

    -- ** Constructing a Request
    , newBigQueryModelsList
    , BigQueryModelsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.models.list@ method which the
-- 'BigQueryModelsList' request conforms to.
type BigQueryModelsListResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.Capture "datasetId" Core.Text Core.:>
                 "models" Core.:>
                   Core.QueryParam "maxResults" Core.Word32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ListModelsResponse

-- | Lists all models in the specified dataset. Requires the READER dataset role. After retrieving the list of models, you can get information about a particular model by calling the models.get method.
--
-- /See:/ 'newBigQueryModelsList' smart constructor.
data BigQueryModelsList = BigQueryModelsList
    {
      -- | Required. Dataset ID of the models to list.
      datasetId :: Core.Text
      -- | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | Page token, returned by a previous call to request the next page of results
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Project ID of the models to list.
    , projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryModelsList' with the minimum fields required to make a request.
newBigQueryModelsList 
    ::  Core.Text
       -- ^  Required. Dataset ID of the models to list. See 'datasetId'.
    -> Core.Text
       -- ^  Required. Project ID of the models to list. See 'projectId'.
    -> BigQueryModelsList
newBigQueryModelsList datasetId projectId =
  BigQueryModelsList
    { datasetId = datasetId
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , projectId = projectId
    }

instance Core.GoogleRequest BigQueryModelsList where
        type Rs BigQueryModelsList = ListModelsResponse
        type Scopes BigQueryModelsList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient BigQueryModelsList{..}
          = go projectId datasetId maxResults pageToken
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BigQueryModelsListResource)
                      Core.mempty

