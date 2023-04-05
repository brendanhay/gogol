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
-- Module      : Gogol.ServiceManagement.Services.Rollouts.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new service configuration rollout. Based on rollout, the Google Service Management will roll out the service configurations to different backend services. For example, the logging configuration will be pushed to Google Cloud Logging. Please note that any previous pending and running Rollouts and associated Operations will be automatically cancelled so that the latest Rollout will not be blocked by previous Rollouts. Only the 100 most recent (in any state) and the last 10 successful (if not already part of the set of 100 most recent) rollouts are kept for each service. The rest will be deleted eventually. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.rollouts.create@.
module Gogol.ServiceManagement.Services.Rollouts.Create
  ( -- * Resource
    ServiceManagementServicesRolloutsCreateResource,

    -- ** Constructing a Request
    ServiceManagementServicesRolloutsCreate (..),
    newServiceManagementServicesRolloutsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.rollouts.create@ method which the
-- 'ServiceManagementServicesRolloutsCreate' request conforms to.
type ServiceManagementServicesRolloutsCreateResource =
  "v1"
    Core.:> "services"
    Core.:> Core.Capture "serviceName" Core.Text
    Core.:> "rollouts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Rollout
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new service configuration rollout. Based on rollout, the Google Service Management will roll out the service configurations to different backend services. For example, the logging configuration will be pushed to Google Cloud Logging. Please note that any previous pending and running Rollouts and associated Operations will be automatically cancelled so that the latest Rollout will not be blocked by previous Rollouts. Only the 100 most recent (in any state) and the last 10 successful (if not already part of the set of 100 most recent) rollouts are kept for each service. The rest will be deleted eventually. Operation
--
-- /See:/ 'newServiceManagementServicesRolloutsCreate' smart constructor.
data ServiceManagementServicesRolloutsCreate = ServiceManagementServicesRolloutsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Rollout,
    -- | Required. The name of the service. See the <https://cloud.google.com/service-management/overview overview> for naming requirements. For example: @example.googleapis.com@.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesRolloutsCreate' with the minimum fields required to make a request.
newServiceManagementServicesRolloutsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Rollout ->
  -- |  Required. The name of the service. See the <https://cloud.google.com/service-management/overview overview> for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
  Core.Text ->
  ServiceManagementServicesRolloutsCreate
newServiceManagementServicesRolloutsCreate payload serviceName =
  ServiceManagementServicesRolloutsCreate
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
    ServiceManagementServicesRolloutsCreate
  where
  type
    Rs ServiceManagementServicesRolloutsCreate =
      Operation
  type
    Scopes ServiceManagementServicesRolloutsCreate =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceManagementServicesRolloutsCreate {..} =
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
                  ServiceManagementServicesRolloutsCreateResource
            )
            Core.mempty
