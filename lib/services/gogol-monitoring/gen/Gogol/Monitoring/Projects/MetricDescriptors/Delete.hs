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
-- Module      : Gogol.Monitoring.Projects.MetricDescriptors.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a metric descriptor. Only user-created custom metrics (https:\/\/cloud.google.com\/monitoring\/custom-metrics) can be deleted.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.metricDescriptors.delete@.
module Gogol.Monitoring.Projects.MetricDescriptors.Delete
  ( -- * Resource
    MonitoringProjectsMetricDescriptorsDeleteResource,

    -- ** Constructing a Request
    newMonitoringProjectsMetricDescriptorsDelete,
    MonitoringProjectsMetricDescriptorsDelete,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.metricDescriptors.delete@ method which the
-- 'MonitoringProjectsMetricDescriptorsDelete' request conforms to.
type MonitoringProjectsMetricDescriptorsDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a metric descriptor. Only user-created custom metrics (https:\/\/cloud.google.com\/monitoring\/custom-metrics) can be deleted.
--
-- /See:/ 'newMonitoringProjectsMetricDescriptorsDelete' smart constructor.
data MonitoringProjectsMetricDescriptorsDelete = MonitoringProjectsMetricDescriptorsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The metric descriptor on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/metricDescriptors\/[METRIC/ID] An example of [METRIC/ID] is: \"custom.googleapis.com\/my/test_metric\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMetricDescriptorsDelete' with the minimum fields required to make a request.
newMonitoringProjectsMetricDescriptorsDelete ::
  -- |  Required. The metric descriptor on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/metricDescriptors\/[METRIC/ID] An example of [METRIC/ID] is: \"custom.googleapis.com\/my/test_metric\". See 'name'.
  Core.Text ->
  MonitoringProjectsMetricDescriptorsDelete
newMonitoringProjectsMetricDescriptorsDelete name =
  MonitoringProjectsMetricDescriptorsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsMetricDescriptorsDelete
  where
  type
    Rs MonitoringProjectsMetricDescriptorsDelete =
      Empty
  type
    Scopes MonitoringProjectsMetricDescriptorsDelete =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient
    MonitoringProjectsMetricDescriptorsDelete {..} =
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
                Core.Proxy
                  MonitoringProjectsMetricDescriptorsDeleteResource
            )
            Core.mempty
