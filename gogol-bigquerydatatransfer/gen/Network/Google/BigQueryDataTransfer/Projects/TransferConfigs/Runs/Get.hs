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
-- Module      : Network.Google.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the particular transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.runs.get@.
module Network.Google.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Get
  ( -- * Resource
    BigQueryDataTransferProjectsTransferConfigsRunsGetResource,

    -- ** Constructing a Request
    newBigQueryDataTransferProjectsTransferConfigsRunsGet,
    BigQueryDataTransferProjectsTransferConfigsRunsGet,
  )
where

import Network.Google.BigQueryDataTransfer.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.runs.get@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsRunsGet' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsRunsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TransferRun

-- | Returns information about the particular transfer run.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsRunsGet' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsRunsGet = BigQueryDataTransferProjectsTransferConfigsRunsGet
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

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsRunsGet' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsRunsGet ::
  -- |  Required. The field will contain name of the resource requested, for example: @projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}@ See 'name'.
  Core.Text ->
  BigQueryDataTransferProjectsTransferConfigsRunsGet
newBigQueryDataTransferProjectsTransferConfigsRunsGet name =
  BigQueryDataTransferProjectsTransferConfigsRunsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsTransferConfigsRunsGet
  where
  type
    Rs
      BigQueryDataTransferProjectsTransferConfigsRunsGet =
      TransferRun
  type
    Scopes
      BigQueryDataTransferProjectsTransferConfigsRunsGet =
      '[ "https://www.googleapis.com/auth/bigquery",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient
    BigQueryDataTransferProjectsTransferConfigsRunsGet {..} =
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
                  BigQueryDataTransferProjectsTransferConfigsRunsGetResource
            )
            Core.mempty
