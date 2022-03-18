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
-- Module      : Gogol.ServiceControl.Services.Check
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Private Preview. This feature is only available for approved services. This method provides admission control for services that are integrated with </service-infrastructure Service Infrastructure>. It checks whether an operation should be allowed based on the service configuration and relevant policies. It must be called before the operation is executed. For more information, see </service-infrastructure/docs/admission-control Admission Control>. NOTE: The admission control has an expected policy propagation delay of 60s. The caller __must__ not depend on the most recent policy changes. NOTE: The admission control has a hard limit of 1 referenced resources per call. If an operation refers to more than 1 resources, the caller must call the Check method multiple times. This method requires the @servicemanagement.services.check@ permission on the specified service. For more information, see <https://cloud.google.com/service-infrastructure/docs/service-control/access-control Service Control API Access Control>.
--
-- /See:/ <https://cloud.google.com/service-control/ Service Control API Reference> for @servicecontrol.services.check@.
module Gogol.ServiceControl.Services.Check
  ( -- * Resource
    ServiceControlServicesCheckResource,

    -- ** Constructing a Request
    newServiceControlServicesCheck,
    ServiceControlServicesCheck,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceControl.Types

-- | A resource alias for @servicecontrol.services.check@ method which the
-- 'ServiceControlServicesCheck' request conforms to.
type ServiceControlServicesCheckResource =
  "v2"
    Core.:> "services"
    Core.:> Core.CaptureMode "serviceName" "check" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CheckRequest
    Core.:> Core.Post '[Core.JSON] CheckResponse

-- | Private Preview. This feature is only available for approved services. This method provides admission control for services that are integrated with </service-infrastructure Service Infrastructure>. It checks whether an operation should be allowed based on the service configuration and relevant policies. It must be called before the operation is executed. For more information, see </service-infrastructure/docs/admission-control Admission Control>. NOTE: The admission control has an expected policy propagation delay of 60s. The caller __must__ not depend on the most recent policy changes. NOTE: The admission control has a hard limit of 1 referenced resources per call. If an operation refers to more than 1 resources, the caller must call the Check method multiple times. This method requires the @servicemanagement.services.check@ permission on the specified service. For more information, see <https://cloud.google.com/service-infrastructure/docs/service-control/access-control Service Control API Access Control>.
--
-- /See:/ 'newServiceControlServicesCheck' smart constructor.
data ServiceControlServicesCheck = ServiceControlServicesCheck
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CheckRequest,
    -- | The service name as specified in its service configuration. For example, @\"pubsub.googleapis.com\"@. See <https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service google.api.Service> for the definition of a service name.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceControlServicesCheck' with the minimum fields required to make a request.
newServiceControlServicesCheck ::
  -- |  Multipart request metadata. See 'payload'.
  CheckRequest ->
  -- |  The service name as specified in its service configuration. For example, @\"pubsub.googleapis.com\"@. See <https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service google.api.Service> for the definition of a service name. See 'serviceName'.
  Core.Text ->
  ServiceControlServicesCheck
newServiceControlServicesCheck payload serviceName =
  ServiceControlServicesCheck
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
    ServiceControlServicesCheck
  where
  type Rs ServiceControlServicesCheck = CheckResponse
  type
    Scopes ServiceControlServicesCheck =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/servicecontrol"
       ]
  requestClient ServiceControlServicesCheck {..} =
    go
      serviceName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      serviceControlService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ServiceControlServicesCheckResource
          )
          Core.mempty
