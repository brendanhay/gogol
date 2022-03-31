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
-- Module      : Gogol.ServiceManagement.Services.GenerateConfigReport
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates and returns a report (errors, warnings and changes from existing configurations) associated with GenerateConfigReportRequest.new/value If GenerateConfigReportRequest.old/value is specified, GenerateConfigReportRequest will contain a single ChangeReport based on the comparison between GenerateConfigReportRequest.new/value and GenerateConfigReportRequest.old/value. If GenerateConfigReportRequest.old/value is not specified, this method will compare GenerateConfigReportRequest.new/value with the last pushed service configuration.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.generateConfigReport@.
module Gogol.ServiceManagement.Services.GenerateConfigReport
  ( -- * Resource
    ServiceManagementServicesGenerateConfigReportResource,

    -- ** Constructing a Request
    newServiceManagementServicesGenerateConfigReport,
    ServiceManagementServicesGenerateConfigReport,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.generateConfigReport@ method which the
-- 'ServiceManagementServicesGenerateConfigReport' request conforms to.
type ServiceManagementServicesGenerateConfigReportResource =
  "v1"
    Core.:> "services:generateConfigReport"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GenerateConfigReportRequest
    Core.:> Core.Post '[Core.JSON] GenerateConfigReportResponse

-- | Generates and returns a report (errors, warnings and changes from existing configurations) associated with GenerateConfigReportRequest.new/value If GenerateConfigReportRequest.old/value is specified, GenerateConfigReportRequest will contain a single ChangeReport based on the comparison between GenerateConfigReportRequest.new/value and GenerateConfigReportRequest.old/value. If GenerateConfigReportRequest.old/value is not specified, this method will compare GenerateConfigReportRequest.new/value with the last pushed service configuration.
--
-- /See:/ 'newServiceManagementServicesGenerateConfigReport' smart constructor.
data ServiceManagementServicesGenerateConfigReport = ServiceManagementServicesGenerateConfigReport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GenerateConfigReportRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesGenerateConfigReport' with the minimum fields required to make a request.
newServiceManagementServicesGenerateConfigReport ::
  -- |  Multipart request metadata. See 'payload'.
  GenerateConfigReportRequest ->
  ServiceManagementServicesGenerateConfigReport
newServiceManagementServicesGenerateConfigReport payload =
  ServiceManagementServicesGenerateConfigReport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceManagementServicesGenerateConfigReport
  where
  type
    Rs ServiceManagementServicesGenerateConfigReport =
      GenerateConfigReportResponse
  type
    Scopes
      ServiceManagementServicesGenerateConfigReport =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceManagementServicesGenerateConfigReport {..} =
      go
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
                  ServiceManagementServicesGenerateConfigReportResource
            )
            Core.mempty
