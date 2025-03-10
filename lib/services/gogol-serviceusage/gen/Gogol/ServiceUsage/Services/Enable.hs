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
-- Module      : Gogol.ServiceUsage.Services.Enable
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable a service so that it can be used with a project.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.enable@.
module Gogol.ServiceUsage.Services.Enable
  ( -- * Resource
    ServiceUsageServicesEnableResource,

    -- ** Constructing a Request
    ServiceUsageServicesEnable (..),
    newServiceUsageServicesEnable,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.enable@ method which the
-- 'ServiceUsageServicesEnable' request conforms to.
type ServiceUsageServicesEnableResource =
  "v1"
    Core.:> Core.CaptureMode "name" "enable" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EnableServiceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enable a service so that it can be used with a project.
--
-- /See:/ 'newServiceUsageServicesEnable' smart constructor.
data ServiceUsageServicesEnable = ServiceUsageServicesEnable
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the consumer and service to enable the service on. The @EnableService@ and @DisableService@ methods currently only support projects. Enabling a service requires that the service is public or is shared with the user enabling the service. An example name would be: @projects\/123\/services\/serviceusage.googleapis.com@ where @123@ is the project number.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: EnableServiceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceUsageServicesEnable' with the minimum fields required to make a request.
newServiceUsageServicesEnable ::
  -- |  Name of the consumer and service to enable the service on. The @EnableService@ and @DisableService@ methods currently only support projects. Enabling a service requires that the service is public or is shared with the user enabling the service. An example name would be: @projects\/123\/services\/serviceusage.googleapis.com@ where @123@ is the project number. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EnableServiceRequest ->
  ServiceUsageServicesEnable
newServiceUsageServicesEnable name payload =
  ServiceUsageServicesEnable
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceUsageServicesEnable where
  type Rs ServiceUsageServicesEnable = Operation
  type
    Scopes ServiceUsageServicesEnable =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceUsageServicesEnable {..} =
    go
      name
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
          (Core.Proxy :: Core.Proxy ServiceUsageServicesEnableResource)
          Core.mempty
