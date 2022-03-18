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
-- Module      : Network.Google.Monitoring.Services.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Services for this workspace.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.list@.
module Network.Google.Monitoring.Services.List
  ( -- * Resource
    MonitoringServicesListResource,

    -- ** Constructing a Request
    newMonitoringServicesList,
    MonitoringServicesList,
  )
where

import Network.Google.Monitoring.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @monitoring.services.list@ method which the
-- 'MonitoringServicesList' request conforms to.
type MonitoringServicesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "services"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServicesResponse

-- | List Services for this workspace.
--
-- /See:/ 'newMonitoringServicesList' smart constructor.
data MonitoringServicesList = MonitoringServicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter specifying what Services to return. The filter currently supports the following fields: - @identifier_case@ - @app_engine.module_id@ - @cloud_endpoints.service@ (reserved for future use) - @mesh_istio.mesh_uid@ - @mesh_istio.service_namespace@ - @mesh_istio.service_name@ - @cluster_istio.location@ (deprecated) - @cluster_istio.cluster_name@ (deprecated) - @cluster_istio.service_namespace@ (deprecated) - @cluster_istio.service_name@ (deprecated) identifier/case refers to which option in the identifier oneof is populated. For example, the filter identifier/case = \"CUSTOM\" would match all services with a value for the custom field. Valid options are \"CUSTOM\", \"APP/ENGINE\", \"MESH/ISTIO\", plus \"CLUSTER/ISTIO\" (deprecated) and \"CLOUD/ENDPOINTS\" (reserved for future use).
    filter :: (Core.Maybe Core.Text),
    -- | A non-negative number that is the maximum number of results to return. When 0, use default page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the parent containing the listed services, either a project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) or a Monitoring Workspace. The formats are: projects\/[PROJECT/ID/OR/NUMBER] workspaces\/[HOST/PROJECT/ID/OR/NUMBER]
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesList' with the minimum fields required to make a request.
newMonitoringServicesList ::
  -- |  Required. Resource name of the parent containing the listed services, either a project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) or a Monitoring Workspace. The formats are: projects\/[PROJECT/ID/OR/NUMBER] workspaces\/[HOST/PROJECT/ID/OR/NUMBER] See 'parent'.
  Core.Text ->
  MonitoringServicesList
newMonitoringServicesList parent =
  MonitoringServicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringServicesList where
  type Rs MonitoringServicesList = ListServicesResponse
  type
    Scopes MonitoringServicesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring",
         "https://www.googleapis.com/auth/monitoring.read"
       ]
  requestClient MonitoringServicesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      monitoringService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MonitoringServicesListResource
          )
          Core.mempty
