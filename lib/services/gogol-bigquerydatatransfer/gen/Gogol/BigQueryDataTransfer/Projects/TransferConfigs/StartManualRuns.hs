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
-- Module      : Gogol.BigQueryDataTransfer.Projects.TransferConfigs.StartManualRuns
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start manual transfer runs to be executed now with schedule/time equal to current time. The transfer runs can be created for a time range where the run/time is between start/time (inclusive) and end/time (exclusive), or for a specific run_time.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.startManualRuns@.
module Gogol.BigQueryDataTransfer.Projects.TransferConfigs.StartManualRuns
  ( -- * Resource
    BigQueryDataTransferProjectsTransferConfigsStartManualRunsResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsTransferConfigsStartManualRuns (..),
    newBigQueryDataTransferProjectsTransferConfigsStartManualRuns,
  )
where

import Gogol.BigQueryDataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.startManualRuns@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsStartManualRuns' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsStartManualRunsResource =
  "v1"
    Core.:> Core.CaptureMode "parent" "startManualRuns" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StartManualTransferRunsRequest
    Core.:> Core.Post '[Core.JSON] StartManualTransferRunsResponse

-- | Start manual transfer runs to be executed now with schedule/time equal to current time. The transfer runs can be created for a time range where the run/time is between start/time (inclusive) and end/time (exclusive), or for a specific run_time.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsStartManualRuns' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsStartManualRuns = BigQueryDataTransferProjectsTransferConfigsStartManualRuns
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Transfer configuration name in the form: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: StartManualTransferRunsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsStartManualRuns' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsStartManualRuns ::
  -- |  Required. Transfer configuration name in the form: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StartManualTransferRunsRequest ->
  BigQueryDataTransferProjectsTransferConfigsStartManualRuns
newBigQueryDataTransferProjectsTransferConfigsStartManualRuns
  parent
  payload =
    BigQueryDataTransferProjectsTransferConfigsStartManualRuns
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
    BigQueryDataTransferProjectsTransferConfigsStartManualRuns
  where
  type
    Rs BigQueryDataTransferProjectsTransferConfigsStartManualRuns =
      StartManualTransferRunsResponse
  type
    Scopes
      BigQueryDataTransferProjectsTransferConfigsStartManualRuns =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient
    BigQueryDataTransferProjectsTransferConfigsStartManualRuns {..} =
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
                  BigQueryDataTransferProjectsTransferConfigsStartManualRunsResource
            )
            Core.mempty
