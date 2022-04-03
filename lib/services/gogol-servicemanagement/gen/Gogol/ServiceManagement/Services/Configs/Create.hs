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
-- Module      : Gogol.ServiceManagement.Services.Configs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new service configuration (version) for a managed service. This method only stores the service configuration. To roll out the service configuration to backend systems please call CreateServiceRollout. Only the 100 most recent service configurations and ones referenced by existing rollouts are kept for each service. The rest will be deleted eventually.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.configs.create@.
module Gogol.ServiceManagement.Services.Configs.Create
  ( -- * Resource
    ServiceManagementServicesConfigsCreateResource,

    -- ** Constructing a Request
    ServiceManagementServicesConfigsCreate (..),
    newServiceManagementServicesConfigsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.create@ method which the
-- 'ServiceManagementServicesConfigsCreate' request conforms to.
type ServiceManagementServicesConfigsCreateResource =
  "v1"
    Core.:> "services"
    Core.:> Core.Capture "serviceName" Core.Text
    Core.:> "configs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Service
    Core.:> Core.Post '[Core.JSON] Service

-- | Creates a new service configuration (version) for a managed service. This method only stores the service configuration. To roll out the service configuration to backend systems please call CreateServiceRollout. Only the 100 most recent service configurations and ones referenced by existing rollouts are kept for each service. The rest will be deleted eventually.
--
-- /See:/ 'newServiceManagementServicesConfigsCreate' smart constructor.
data ServiceManagementServicesConfigsCreate = ServiceManagementServicesConfigsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Service,
    -- | Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesConfigsCreate' with the minimum fields required to make a request.
newServiceManagementServicesConfigsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Service ->
  -- |  Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
  Core.Text ->
  ServiceManagementServicesConfigsCreate
newServiceManagementServicesConfigsCreate payload serviceName =
  ServiceManagementServicesConfigsCreate
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
    ServiceManagementServicesConfigsCreate
  where
  type
    Rs ServiceManagementServicesConfigsCreate =
      Service
  type
    Scopes ServiceManagementServicesConfigsCreate =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceManagementServicesConfigsCreate {..} =
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
                  ServiceManagementServicesConfigsCreateResource
            )
            Core.mempty
