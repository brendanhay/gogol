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
-- Module      : Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.runs.delete@.
module Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Delete
  ( -- * Resource
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDeleteResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete,
  )
where

import Gogol.BigQueryDataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.runs.delete@ method which the
-- 'BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete' request conforms to.
type BigQueryDataTransferProjectsLocationsTransferConfigsRunsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the specified transfer run.
--
-- /See:/ 'newBigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete' smart constructor.
data BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete = BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The field will contain name of the resource requested, for example: @projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete ::
  -- |  Required. The field will contain name of the resource requested, for example: @projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ See 'name'.
  Core.Text ->
  BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete
newBigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete
  name =
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete
  where
  type
    Rs
      BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete =
      Empty
  type
    Scopes
      BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        bigQueryDataTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryDataTransferProjectsLocationsTransferConfigsRunsDeleteResource
            )
            Core.mempty
