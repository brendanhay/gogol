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
-- Module      : Gogol.Monitoring.Projects.MetricDescriptors.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single metric descriptor.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.metricDescriptors.get@.
module Gogol.Monitoring.Projects.MetricDescriptors.Get
  ( -- * Resource
    MonitoringProjectsMetricDescriptorsGetResource,

    -- ** Constructing a Request
    MonitoringProjectsMetricDescriptorsGet (..),
    newMonitoringProjectsMetricDescriptorsGet,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.metricDescriptors.get@ method which the
-- 'MonitoringProjectsMetricDescriptorsGet' request conforms to.
type MonitoringProjectsMetricDescriptorsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MetricDescriptor

-- | Gets a single metric descriptor.
--
-- /See:/ 'newMonitoringProjectsMetricDescriptorsGet' smart constructor.
data MonitoringProjectsMetricDescriptorsGet = MonitoringProjectsMetricDescriptorsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The metric descriptor on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/metricDescriptors\/[METRIC/ID] An example value of [METRIC/ID] is \"compute.googleapis.com\/instance\/disk\/read/bytes_count\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMetricDescriptorsGet' with the minimum fields required to make a request.
newMonitoringProjectsMetricDescriptorsGet ::
  -- |  Required. The metric descriptor on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/metricDescriptors\/[METRIC/ID] An example value of [METRIC/ID] is \"compute.googleapis.com\/instance\/disk\/read/bytes_count\". See 'name'.
  Core.Text ->
  MonitoringProjectsMetricDescriptorsGet
newMonitoringProjectsMetricDescriptorsGet name =
  MonitoringProjectsMetricDescriptorsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsMetricDescriptorsGet where
  type Rs MonitoringProjectsMetricDescriptorsGet = MetricDescriptor
  type
    Scopes MonitoringProjectsMetricDescriptorsGet =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read,
         Monitoring'Write
       ]
  requestClient MonitoringProjectsMetricDescriptorsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      monitoringService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MonitoringProjectsMetricDescriptorsGetResource
          )
          Core.mempty
