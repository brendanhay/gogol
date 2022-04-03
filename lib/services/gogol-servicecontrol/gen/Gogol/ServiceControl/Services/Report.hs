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
-- Module      : Gogol.ServiceControl.Services.Report
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Private Preview. This feature is only available for approved services. This method provides telemetry reporting for services that are integrated with </service-infrastructure Service Infrastructure>. It reports a list of operations that have occurred on a service. It must be called after the operations have been executed. For more information, see </service-infrastructure/docs/telemetry-reporting Telemetry Reporting>. NOTE: The telemetry reporting has a hard limit of 1000 operations and 1MB per Report call. It is recommended to have no more than 100 operations per call. This method requires the @servicemanagement.services.report@ permission on the specified service. For more information, see <https://cloud.google.com/service-infrastructure/docs/service-control/access-control Service Control API Access Control>.
--
-- /See:/ <https://cloud.google.com/service-control/ Service Control API Reference> for @servicecontrol.services.report@.
module Gogol.ServiceControl.Services.Report
  ( -- * Resource
    ServiceControlServicesReportResource,

    -- ** Constructing a Request
    ServiceControlServicesReport (..),
    newServiceControlServicesReport,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceControl.Types

-- | A resource alias for @servicecontrol.services.report@ method which the
-- 'ServiceControlServicesReport' request conforms to.
type ServiceControlServicesReportResource =
  "v2"
    Core.:> "services"
    Core.:> Core.CaptureMode "serviceName" "report" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReportRequest
    Core.:> Core.Post '[Core.JSON] ReportResponse

-- | Private Preview. This feature is only available for approved services. This method provides telemetry reporting for services that are integrated with </service-infrastructure Service Infrastructure>. It reports a list of operations that have occurred on a service. It must be called after the operations have been executed. For more information, see </service-infrastructure/docs/telemetry-reporting Telemetry Reporting>. NOTE: The telemetry reporting has a hard limit of 1000 operations and 1MB per Report call. It is recommended to have no more than 100 operations per call. This method requires the @servicemanagement.services.report@ permission on the specified service. For more information, see <https://cloud.google.com/service-infrastructure/docs/service-control/access-control Service Control API Access Control>.
--
-- /See:/ 'newServiceControlServicesReport' smart constructor.
data ServiceControlServicesReport = ServiceControlServicesReport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ReportRequest,
    -- | The service name as specified in its service configuration. For example, @\"pubsub.googleapis.com\"@. See <https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service google.api.Service> for the definition of a service name.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceControlServicesReport' with the minimum fields required to make a request.
newServiceControlServicesReport ::
  -- |  Multipart request metadata. See 'payload'.
  ReportRequest ->
  -- |  The service name as specified in its service configuration. For example, @\"pubsub.googleapis.com\"@. See <https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service google.api.Service> for the definition of a service name. See 'serviceName'.
  Core.Text ->
  ServiceControlServicesReport
newServiceControlServicesReport payload serviceName =
  ServiceControlServicesReport
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
    ServiceControlServicesReport
  where
  type Rs ServiceControlServicesReport = ReportResponse
  type
    Scopes ServiceControlServicesReport =
      '[ CloudPlatform'FullControl,
         Servicecontrol'FullControl
       ]
  requestClient ServiceControlServicesReport {..} =
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
              Core.Proxy ServiceControlServicesReportResource
          )
          Core.mempty
