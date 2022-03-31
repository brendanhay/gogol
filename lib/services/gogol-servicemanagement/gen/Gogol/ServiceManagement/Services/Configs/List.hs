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
-- Module      : Gogol.ServiceManagement.Services.Configs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the history of the service configuration for a managed service, from the newest to the oldest.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.configs.list@.
module Gogol.ServiceManagement.Services.Configs.List
  ( -- * Resource
    ServiceManagementServicesConfigsListResource,

    -- ** Constructing a Request
    newServiceManagementServicesConfigsList,
    ServiceManagementServicesConfigsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.list@ method which the
-- 'ServiceManagementServicesConfigsList' request conforms to.
type ServiceManagementServicesConfigsListResource =
  "v1"
    Core.:> "services"
    Core.:> Core.Capture "serviceName" Core.Text
    Core.:> "configs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServiceConfigsResponse

-- | Lists the history of the service configuration for a managed service, from the newest to the oldest.
--
-- /See:/ 'newServiceManagementServicesConfigsList' smart constructor.
data ServiceManagementServicesConfigsList = ServiceManagementServicesConfigsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The max number of items to include in the response list. Page size is 50 if not specified. Maximum value is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The token of the page to retrieve.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@.
    serviceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceManagementServicesConfigsList' with the minimum fields required to make a request.
newServiceManagementServicesConfigsList ::
  -- |  Required. The name of the service. See the </service-management/overview overview> for naming requirements. For example: @example.googleapis.com@. See 'serviceName'.
  Core.Text ->
  ServiceManagementServicesConfigsList
newServiceManagementServicesConfigsList serviceName =
  ServiceManagementServicesConfigsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      serviceName = serviceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceManagementServicesConfigsList
  where
  type
    Rs ServiceManagementServicesConfigsList =
      ListServiceConfigsResponse
  type
    Scopes ServiceManagementServicesConfigsList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Service'Management,
         Service'Management'Readonly
       ]
  requestClient
    ServiceManagementServicesConfigsList {..} =
      go
        serviceName
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        serviceManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ServiceManagementServicesConfigsListResource
            )
            Core.mempty
