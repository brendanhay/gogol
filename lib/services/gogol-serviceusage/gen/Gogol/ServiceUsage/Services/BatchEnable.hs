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
-- Module      : Gogol.ServiceUsage.Services.BatchEnable
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable multiple services on a project. The operation is atomic: if enabling any service fails, then the entire batch fails, and no state changes occur. To enable a single service, use the @EnableService@ method instead.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.batchEnable@.
module Gogol.ServiceUsage.Services.BatchEnable
  ( -- * Resource
    ServiceUsageServicesBatchEnableResource,

    -- ** Constructing a Request
    newServiceUsageServicesBatchEnable,
    ServiceUsageServicesBatchEnable,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.batchEnable@ method which the
-- 'ServiceUsageServicesBatchEnable' request conforms to.
type ServiceUsageServicesBatchEnableResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "services:batchEnable"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchEnableServicesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enable multiple services on a project. The operation is atomic: if enabling any service fails, then the entire batch fails, and no state changes occur. To enable a single service, use the @EnableService@ method instead.
--
-- /See:/ 'newServiceUsageServicesBatchEnable' smart constructor.
data ServiceUsageServicesBatchEnable = ServiceUsageServicesBatchEnable
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Parent to enable services on. An example name would be: @projects\/123@ where @123@ is the project number. The @BatchEnableServices@ method currently only supports projects.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchEnableServicesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUsageServicesBatchEnable' with the minimum fields required to make a request.
newServiceUsageServicesBatchEnable ::
  -- |  Parent to enable services on. An example name would be: @projects\/123@ where @123@ is the project number. The @BatchEnableServices@ method currently only supports projects. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchEnableServicesRequest ->
  ServiceUsageServicesBatchEnable
newServiceUsageServicesBatchEnable parent payload =
  ServiceUsageServicesBatchEnable
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceUsageServicesBatchEnable
  where
  type Rs ServiceUsageServicesBatchEnable = Operation
  type
    Scopes ServiceUsageServicesBatchEnable =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceUsageServicesBatchEnable {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      serviceUsageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceUsageServicesBatchEnableResource
          )
          Core.mempty
