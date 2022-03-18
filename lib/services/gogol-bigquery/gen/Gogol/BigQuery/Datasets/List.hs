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
-- Module      : Gogol.BigQuery.Datasets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all datasets in the specified project to which you have been granted the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.list@.
module Gogol.BigQuery.Datasets.List
    (
    -- * Resource
      BigQueryDatasetsListResource

    -- ** Constructing a Request
    , newBigQueryDatasetsList
    , BigQueryDatasetsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.datasets.list@ method which the
-- 'BigQueryDatasetsList' request conforms to.
type BigQueryDatasetsListResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "datasets" Core.:>
               Core.QueryParam "all" Core.Bool Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "maxResults" Core.Word32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] DatasetList

-- | Lists all datasets in the specified project to which you have been granted the READER dataset role.
--
-- /See:/ 'newBigQueryDatasetsList' smart constructor.
data BigQueryDatasetsList = BigQueryDatasetsList
    {
      -- | Whether to list all datasets, including hidden ones
      all :: (Core.Maybe Core.Bool)
      -- | An expression for filtering the results of the request by label. The syntax is \"labels.\<name>[:\<value>]\". Multiple filters can be ANDed together by connecting with a space. Example: \"labels.department:receiving labels.active\". See Filtering datasets using labels for details.
    , filter :: (Core.Maybe Core.Text)
      -- | The maximum number of results to return
    , maxResults :: (Core.Maybe Core.Word32)
      -- | Page token, returned by a previous call, to request the next page of results
    , pageToken :: (Core.Maybe Core.Text)
      -- | Project ID of the datasets to be listed
    , projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsList' with the minimum fields required to make a request.
newBigQueryDatasetsList 
    ::  Core.Text
       -- ^  Project ID of the datasets to be listed See 'projectId'.
    -> BigQueryDatasetsList
newBigQueryDatasetsList projectId =
  BigQueryDatasetsList
    { all = Core.Nothing
    , filter = Core.Nothing
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , projectId = projectId
    }

instance Core.GoogleRequest BigQueryDatasetsList
         where
        type Rs BigQueryDatasetsList = DatasetList
        type Scopes BigQueryDatasetsList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient BigQueryDatasetsList{..}
          = go projectId all filter maxResults pageToken
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BigQueryDatasetsListResource)
                      Core.mempty

