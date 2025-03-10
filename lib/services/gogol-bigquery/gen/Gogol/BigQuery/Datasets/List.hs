{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery.Datasets.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all datasets in the specified project to which the user has been granted the READER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.datasets.list@.
module Gogol.BigQuery.Datasets.List
  ( -- * Resource
    BigQueryDatasetsListResource,

    -- ** Constructing a Request
    BigQueryDatasetsList (..),
    newBigQueryDatasetsList,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.datasets.list@ method which the
-- 'BigQueryDatasetsList' request conforms to.
type BigQueryDatasetsListResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "datasets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "all" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DatasetList

-- | Lists all datasets in the specified project to which the user has been granted the READER dataset role.
--
-- /See:/ 'newBigQueryDatasetsList' smart constructor.
data BigQueryDatasetsList = BigQueryDatasetsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether to list all datasets, including hidden ones
    all :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An expression for filtering the results of the request by label. The syntax is @labels.[:]@. Multiple filters can be AND-ed together by connecting with a space. Example: @labels.department:receiving labels.active@. See <https://cloud.google.com/bigquery/docs/filtering-labels#filtering_datasets_using_labels Filtering datasets using labels> for details.
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Page token, returned by a previous call, to request the next page of results
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Project ID of the datasets to be listed
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDatasetsList' with the minimum fields required to make a request.
newBigQueryDatasetsList ::
  -- |  Required. Project ID of the datasets to be listed See 'projectId'.
  Core.Text ->
  BigQueryDatasetsList
newBigQueryDatasetsList projectId =
  BigQueryDatasetsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      all = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryDatasetsList where
  type Rs BigQueryDatasetsList = DatasetList
  type
    Scopes BigQueryDatasetsList =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryDatasetsList {..} =
    go
      projectId
      xgafv
      accessToken
      all
      callback
      filter
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryDatasetsListResource)
          Core.mempty
