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
-- Module      : Gogol.ServiceConsumerManagement.Services.TenancyUnits.ApplyProjectConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Apply a configuration to an existing tenant project. This project must exist in an active state and have the original owner account. The caller must have permission to add a project to the given tenancy unit. The configuration is applied, but any existing settings on the project aren\'t modified. Specified policy bindings are applied. Existing bindings aren\'t modified. Specified services are activated. No service is deactivated. If specified, new billing configuration is applied. Omit a billing configuration to keep the existing one. A service account in the project is created if previously non existed. Specified labels will be appended to tenant project, note that the value of existing label key will be updated if the same label key is requested. The specified folder is ignored, as moving a tenant project to a different folder isn\'t supported. The operation fails if any of the steps fail, but no rollback of already applied configuration changes is attempted. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.applyProjectConfig@.
module Gogol.ServiceConsumerManagement.Services.TenancyUnits.ApplyProjectConfig
  ( -- * Resource
    ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfigResource,

    -- ** Constructing a Request
    ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig (..),
    newServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.applyProjectConfig@ method which the
-- 'ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig' request conforms to.
type ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfigResource =
  "v1"
    Core.:> Core.CaptureMode "name" "applyProjectConfig" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ApplyTenantProjectConfigRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Apply a configuration to an existing tenant project. This project must exist in an active state and have the original owner account. The caller must have permission to add a project to the given tenancy unit. The configuration is applied, but any existing settings on the project aren\'t modified. Specified policy bindings are applied. Existing bindings aren\'t modified. Specified services are activated. No service is deactivated. If specified, new billing configuration is applied. Omit a billing configuration to keep the existing one. A service account in the project is created if previously non existed. Specified labels will be appended to tenant project, note that the value of existing label key will be updated if the same label key is requested. The specified folder is ignored, as moving a tenant project to a different folder isn\'t supported. The operation fails if any of the steps fail, but no rollback of already applied configuration changes is attempted. Operation.
--
-- /See:/ 'newServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig' smart constructor.
data ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig = ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ApplyTenantProjectConfigRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig' with the minimum fields required to make a request.
newServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig ::
  -- |  Required. Name of the tenancy unit. Such as \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ApplyTenantProjectConfigRequest ->
  ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig
newServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig
  name
  payload =
    ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig
  where
  type
    Rs
      ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig =
      Operation
  type
    Scopes
      ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig =
      '[CloudPlatform'FullControl]
  requestClient
    ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfig {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        serviceConsumerManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ServiceConsumerManagementServicesTenancyUnitsApplyProjectConfigResource
            )
            Core.mempty
