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
-- Module      : Network.Google.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.TransferLogs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns log messages for the transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list@.
module Network.Google.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.TransferLogs.List
  ( -- * Resource
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsListResource,

    -- ** Constructing a Request
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList,
  )
where

import Network.Google.BigQueryDataTransfer.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list@ method which the
-- 'BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList' request conforms to.
type BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "transferLogs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "messageTypes"
              ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTransferLogsResponse

-- | Returns log messages for the transfer run.
--
-- /See:/ 'newBigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList' smart constructor.
data BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList = BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Message types to return. If not populated - INFO, WARNING and ERROR messages are returned.
    messageTypes ::
      ( Core.Maybe
          [ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes]
      ),
    -- | Page size. The default page size is the maximum value of 1000 results.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Pagination token, which can be used to request a specific page of @ListTransferLogsRequest@ list results. For multiple-page results, @ListTransferLogsResponse@ outputs a @next_page@ token, which can be used as the @page_token@ value to request the next page of list results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Transfer run name in the form: @projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList ::
  -- |  Required. Transfer run name in the form: @projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ See 'parent'.
  Core.Text ->
  BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList
newBigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList parent =
  BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      messageTypes = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList
  where
  type
    Rs
      BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList =
      ListTransferLogsResponse
  type
    Scopes
      BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        (messageTypes Core.^. Core._Default)
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
                  BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsListResource
            )
            Core.mempty
