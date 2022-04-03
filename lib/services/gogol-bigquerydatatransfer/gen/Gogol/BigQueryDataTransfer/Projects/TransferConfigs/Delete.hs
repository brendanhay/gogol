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
-- Module      : Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a data transfer configuration, including any associated transfer runs and logs.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.delete@.
module Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Delete
  ( -- * Resource
    BigQueryDataTransferProjectsTransferConfigsDeleteResource,

    -- ** Constructing a Request
    BigQueryDataTransferProjectsTransferConfigsDelete (..),
    newBigQueryDataTransferProjectsTransferConfigsDelete,
  )
where

import Gogol.BigQueryDataTransfer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.delete@ method which the
-- 'BigQueryDataTransferProjectsTransferConfigsDelete' request conforms to.
type BigQueryDataTransferProjectsTransferConfigsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a data transfer configuration, including any associated transfer runs and logs.
--
-- /See:/ 'newBigQueryDataTransferProjectsTransferConfigsDelete' smart constructor.
data BigQueryDataTransferProjectsTransferConfigsDelete = BigQueryDataTransferProjectsTransferConfigsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The field will contain name of the resource requested, for example: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataTransferProjectsTransferConfigsDelete' with the minimum fields required to make a request.
newBigQueryDataTransferProjectsTransferConfigsDelete ::
  -- |  Required. The field will contain name of the resource requested, for example: @projects\/{project_id}\/transferConfigs\/{config_id}@ or @projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}@ See 'name'.
  Core.Text ->
  BigQueryDataTransferProjectsTransferConfigsDelete
newBigQueryDataTransferProjectsTransferConfigsDelete name =
  BigQueryDataTransferProjectsTransferConfigsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigQueryDataTransferProjectsTransferConfigsDelete
  where
  type
    Rs
      BigQueryDataTransferProjectsTransferConfigsDelete =
      Empty
  type
    Scopes
      BigQueryDataTransferProjectsTransferConfigsDelete =
      '[Bigquery'FullControl, CloudPlatform'FullControl]
  requestClient
    BigQueryDataTransferProjectsTransferConfigsDelete {..} =
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
                  BigQueryDataTransferProjectsTransferConfigsDeleteResource
            )
            Core.mempty
