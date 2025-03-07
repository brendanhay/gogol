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
-- Module      : Gogol.ServiceManagement.Services.Configs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a service configuration (version) for a managed service.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.configs.get@.
module Gogol.ServiceManagement.Services.Configs.Get
  ( -- * Resource
    ServiceManagementServicesConfigsGetResource,

    -- ** Constructing a Request
    ServiceManagementServicesConfigsGet (..),
    newServiceManagementServicesConfigsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.get@ method which the
-- 'ServiceManagementServicesConfigsGet' request conforms to.
type ServiceManagementServicesConfigsGetResource =
  "v1"
    Core.:> "services"
    Core.:> Core.Capture "serviceName" Core.Text
    Core.:> "configs"
    Core.:> Core.Capture "configId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ServicesConfigsGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Service

-- | Gets a service configuration (version) for a managed service.
--
-- /See:/ 'newServiceManagementServicesConfigsGet' smart constructor.
data ServiceManagementServicesConfigsGet = ServiceManagementServicesConfigsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The id of the service configuration resource. This field must be specified for the server to return all fields, including @SourceInfo@.
    configId :: Core.Text,
    -- | Required. The name of the service. See the <https://cloud.google.com/service-management/overview overview> for naming requirements. For example: @example.googleapis.com@.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies which parts of the Service Config should be returned in the response.
    view :: (Core.Maybe ServicesConfigsGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesConfigsGet' with the minimum fields required to make a request.
newServiceManagementServicesConfigsGet ::
  -- |  Required. The id of the service configuration resource. This field must be specified for the server to return all fields, including @SourceInfo@. See 'configId'.
  Core.Text ->
  -- |  Required. The name of the service. See the <https://cloud.google.com/service-management/overview overview> for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
  Core.Text ->
  ServiceManagementServicesConfigsGet
newServiceManagementServicesConfigsGet configId serviceName =
  ServiceManagementServicesConfigsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      configId = configId,
      serviceName = serviceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest ServiceManagementServicesConfigsGet where
  type Rs ServiceManagementServicesConfigsGet = Service
  type
    Scopes ServiceManagementServicesConfigsGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Service'Management,
         Service'Management'Readonly
       ]
  requestClient ServiceManagementServicesConfigsGet {..} =
    go
      serviceName
      configId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      serviceManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceManagementServicesConfigsGetResource
          )
          Core.mempty
