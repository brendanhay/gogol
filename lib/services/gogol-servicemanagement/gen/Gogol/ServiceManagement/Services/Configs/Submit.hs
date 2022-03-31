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
-- Module      : Gogol.ServiceManagement.Services.Configs.Submit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new service configuration (version) for a managed service based on user-supplied configuration source files (for example: OpenAPI Specification). This method stores the source configurations as well as the generated service configuration. To rollout the service configuration to other services, please call CreateServiceRollout. Only the 100 most recent configuration sources and ones referenced by existing service configurtions are kept for each service. The rest will be deleted eventually. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.configs.submit@.
module Gogol.ServiceManagement.Services.Configs.Submit
  ( -- * Resource
    ServiceManagementServicesConfigsSubmitResource,

    -- ** Constructing a Request
    newServiceManagementServicesConfigsSubmit,
    ServiceManagementServicesConfigsSubmit,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.submit@ method which the
-- 'ServiceManagementServicesConfigsSubmit' request conforms to.
type ServiceManagementServicesConfigsSubmitResource =
  "v1"
    Core.:> "services"
    Core.:> Core.Capture "serviceName" Core.Text
    Core.:> "configs:submit"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SubmitConfigSourceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new service configuration (version) for a managed service based on user-supplied configuration source files (for example: OpenAPI Specification). This method stores the source configurations as well as the generated service configuration. To rollout the service configuration to other services, please call CreateServiceRollout. Only the 100 most recent configuration sources and ones referenced by existing service configurtions are kept for each service. The rest will be deleted eventually. Operation
--
-- /See:/ 'newServiceManagementServicesConfigsSubmit' smart constructor.
data ServiceManagementServicesConfigsSubmit = ServiceManagementServicesConfigsSubmit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SubmitConfigSourceRequest,
    -- | Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesConfigsSubmit' with the minimum fields required to make a request.
newServiceManagementServicesConfigsSubmit ::
  -- |  Multipart request metadata. See 'payload'.
  SubmitConfigSourceRequest ->
  -- |  Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
  Core.Text ->
  ServiceManagementServicesConfigsSubmit
newServiceManagementServicesConfigsSubmit payload serviceName =
  ServiceManagementServicesConfigsSubmit
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      serviceName = serviceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceManagementServicesConfigsSubmit
  where
  type
    Rs ServiceManagementServicesConfigsSubmit =
      Operation
  type
    Scopes ServiceManagementServicesConfigsSubmit =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceManagementServicesConfigsSubmit {..} =
      go
        serviceName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        serviceManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ServiceManagementServicesConfigsSubmitResource
            )
            Core.mempty
