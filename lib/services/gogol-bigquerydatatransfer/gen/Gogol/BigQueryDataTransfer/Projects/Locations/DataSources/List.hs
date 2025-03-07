{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.BigQueryDataTransfer.Projects.Locations.DataSources.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists supported data sources and returns their settings.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.dataSources.list@.
module Gogol.BigQueryDataTransfer.Projects.Locations.DataSources.List
  ( -- * Resource
    BigQueryDataTransferProjectsLocationsDataSourcesListResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsLocationsDataSourcesList (..),
    newBigQueryDataTransferProjectsLocationsDataSourcesList,
  )
where

import Gogol.BigQueryDataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquerydatatransfer.projects.locations.dataSources.list@ method which the
-- 'BigQueryDataTransferProjectsLocationsDataSourcesList' request conforms to.
type BigQueryDataTransferProjectsLocationsDataSourcesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dataSources"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDataSourcesResponse

-- | Lists supported data sources and returns their settings.
--
-- /See:/ 'newBigQueryDataTransferProjectsLocationsDataSourcesList' smart constructor.
data BigQueryDataTransferProjectsLocationsDataSourcesList = BigQueryDataTransferProjectsLocationsDataSourcesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Page size. The default page size is the maximum value of 1000 results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Pagination token, which can be used to request a specific page of @ListDataSourcesRequest@ list results. For multiple-page results, @ListDataSourcesResponse@ outputs a @next_page@ token, which can be used as the @page_token@ value to request the next page of list results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The BigQuery project id for which data sources should be returned. Must be in the form: @projects\/{project_id}@ or @projects\/{project_id}\/locations\/{location_id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsLocationsDataSourcesList' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsLocationsDataSourcesList ::
  -- |  Required. The BigQuery project id for which data sources should be returned. Must be in the form: @projects\/{project_id}@ or @projects\/{project_id}\/locations\/{location_id}@ See 'parent'.
  Core.Text ->
  BigQueryDataTransferProjectsLocationsDataSourcesList
newBigQueryDataTransferProjectsLocationsDataSourcesList parent =
  BigQueryDataTransferProjectsLocationsDataSourcesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsLocationsDataSourcesList
  where
  type
    Rs BigQueryDataTransferProjectsLocationsDataSourcesList =
      ListDataSourcesResponse
  type
    Scopes BigQueryDataTransferProjectsLocationsDataSourcesList =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    BigQueryDataTransferProjectsLocationsDataSourcesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        bigQueryDataTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryDataTransferProjectsLocationsDataSourcesListResource
            )
            Core.mempty
