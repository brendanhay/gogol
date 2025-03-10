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
-- Module      : Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about running and completed transfer runs.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.runs.list@.
module Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.List
  ( -- * Resource
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsListResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsList (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsList,
  )
where

import Gogol.BigQueryDataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.runs.list@ method which the
-- 'BigQueryDataTransferProjectsLocationsTransferConfigsRunsList' request conforms to.
type BigQueryDataTransferProjectsLocationsTransferConfigsRunsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "runs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "runAttempt"
              ProjectsLocationsTransferConfigsRunsListRunAttempt
    Core.:> Core.QueryParams
              "states"
              ProjectsLocationsTransferConfigsRunsListStates
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTransferRunsResponse

-- | Returns information about running and completed transfer runs.
--
-- /See:/ 'newBigQueryDataTransferProjectsLocationsTransferConfigsRunsList' smart constructor.
data BigQueryDataTransferProjectsLocationsTransferConfigsRunsList = BigQueryDataTransferProjectsLocationsTransferConfigsRunsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Page size. The default page size is the maximum value of 1000 results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Pagination token, which can be used to request a specific page of @ListTransferRunsRequest@ list results. For multiple-page results, @ListTransferRunsResponse@ outputs a @next_page@ token, which can be used as the @page_token@ value to request the next page of list results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of transfer configuration for which transfer runs should be retrieved. Format of transfer configuration resource name is: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@.
    parent :: Core.Text,
    -- | Indicates how run attempts are to be pulled.
    runAttempt :: (Core.Maybe ProjectsLocationsTransferConfigsRunsListRunAttempt),
    -- | When specified, only transfer runs with requested states are returned.
    states :: (Core.Maybe [ProjectsLocationsTransferConfigsRunsListStates]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsLocationsTransferConfigsRunsList' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsLocationsTransferConfigsRunsList ::
  -- |  Required. Name of transfer configuration for which transfer runs should be retrieved. Format of transfer configuration resource name is: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@. See 'parent'.
  Core.Text ->
  BigQueryDataTransferProjectsLocationsTransferConfigsRunsList
newBigQueryDataTransferProjectsLocationsTransferConfigsRunsList
  parent =
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = parent,
        runAttempt = Core.Nothing,
        states = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsList
  where
  type
    Rs
      BigQueryDataTransferProjectsLocationsTransferConfigsRunsList =
      ListTransferRunsResponse
  type
    Scopes
      BigQueryDataTransferProjectsLocationsTransferConfigsRunsList =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        runAttempt
        (states Core.^. Core._Default)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        bigQueryDataTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryDataTransferProjectsLocationsTransferConfigsRunsListResource
            )
            Core.mempty
