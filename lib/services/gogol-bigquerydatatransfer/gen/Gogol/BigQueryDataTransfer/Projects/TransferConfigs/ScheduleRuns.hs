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
-- Module      : Gogol.BigQueryDataTransfer.Projects.TransferConfigs.ScheduleRuns
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates transfer runs for a time range [start/time, end/time]. For each date - or whatever granularity the data source supports - in the range, one transfer run is created. Note that runs are created per UTC time in the time range. DEPRECATED: use StartManualTransferRuns instead.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.scheduleRuns@.
module Gogol.BigQueryDataTransfer.Projects.TransferConfigs.ScheduleRuns
  ( -- * Resource
    BigQueryDataTransferProjectsTransferConfigsScheduleRunsResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsTransferConfigsScheduleRuns (..),
    newBigQueryDataTransferProjectsTransferConfigsScheduleRuns,
  )
where

import Gogol.BigQueryDataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.scheduleRuns@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsScheduleRuns' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsScheduleRunsResource =
  "v1"
    Core.:> Core.CaptureMode "parent" "scheduleRuns" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ScheduleTransferRunsRequest
    Core.:> Core.Post '[Core.JSON] ScheduleTransferRunsResponse

-- | Creates transfer runs for a time range [start/time, end/time]. For each date - or whatever granularity the data source supports - in the range, one transfer run is created. Note that runs are created per UTC time in the time range. DEPRECATED: use StartManualTransferRuns instead.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsScheduleRuns' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsScheduleRuns = BigQueryDataTransferProjectsTransferConfigsScheduleRuns
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Transfer configuration name in the form: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ScheduleTransferRunsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsScheduleRuns' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsScheduleRuns ::
  -- |  Required. Transfer configuration name in the form: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ScheduleTransferRunsRequest ->
  BigQueryDataTransferProjectsTransferConfigsScheduleRuns
newBigQueryDataTransferProjectsTransferConfigsScheduleRuns
  parent
  payload =
    BigQueryDataTransferProjectsTransferConfigsScheduleRuns
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsTransferConfigsScheduleRuns
  where
  type
    Rs BigQueryDataTransferProjectsTransferConfigsScheduleRuns =
      ScheduleTransferRunsResponse
  type
    Scopes BigQueryDataTransferProjectsTransferConfigsScheduleRuns =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient
    BigQueryDataTransferProjectsTransferConfigsScheduleRuns {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigQueryDataTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryDataTransferProjectsTransferConfigsScheduleRunsResource
            )
            Core.mempty
