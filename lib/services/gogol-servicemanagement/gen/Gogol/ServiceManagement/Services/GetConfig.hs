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
-- Module      : Gogol.ServiceManagement.Services.GetConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a service configuration (version) for a managed service.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.getConfig@.
module Gogol.ServiceManagement.Services.GetConfig
  ( -- * Resource
    ServiceManagementServicesGetConfigResource,

    -- ** Constructing a Request
    newServiceManagementServicesGetConfig,
    ServiceManagementServicesGetConfig,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.getConfig@ method which the
-- 'ServiceManagementServicesGetConfig' request conforms to.
type ServiceManagementServicesGetConfigResource =
  "v1"
    Core.:> "services"
    Core.:> Core.Capture "serviceName" Core.Text
    Core.:> "config"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "configId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ServicesGetConfigView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Service

-- | Gets a service configuration (version) for a managed service.
--
-- /See:/ 'newServiceManagementServicesGetConfig' smart constructor.
data ServiceManagementServicesGetConfig = ServiceManagementServicesGetConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The id of the service configuration resource. This field must be specified for the server to return all fields, including @SourceInfo@.
    configId :: (Core.Maybe Core.Text),
    -- | Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies which parts of the Service Config should be returned in the response.
    view :: (Core.Maybe ServicesGetConfigView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesGetConfig' with the minimum fields required to make a request.
newServiceManagementServicesGetConfig ::
  -- |  Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
  Core.Text ->
  ServiceManagementServicesGetConfig
newServiceManagementServicesGetConfig serviceName =
  ServiceManagementServicesGetConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      configId = Core.Nothing,
      serviceName = serviceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceManagementServicesGetConfig
  where
  type Rs ServiceManagementServicesGetConfig = Service
  type
    Scopes ServiceManagementServicesGetConfig =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/service.management",
         "https://www.googleapis.com/auth/service.management.readonly"
       ]
  requestClient ServiceManagementServicesGetConfig {..} =
    go
      serviceName
      xgafv
      accessToken
      callback
      configId
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      serviceManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ServiceManagementServicesGetConfigResource
          )
          Core.mempty
