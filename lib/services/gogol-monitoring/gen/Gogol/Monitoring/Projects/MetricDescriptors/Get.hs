{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring.Projects.MetricDescriptors.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single metric descriptor.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.metricDescriptors.get@.
module Gogol.Monitoring.Projects.MetricDescriptors.Get
    (
    -- * Resource
      MonitoringProjectsMetricDescriptorsGetResource

    -- ** Constructing a Request
    , newMonitoringProjectsMetricDescriptorsGet
    , MonitoringProjectsMetricDescriptorsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.metricDescriptors.get@ method which the
-- 'MonitoringProjectsMetricDescriptorsGet' request conforms to.
type MonitoringProjectsMetricDescriptorsGetResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] MetricDescriptor

-- | Gets a single metric descriptor.
--
-- /See:/ 'newMonitoringProjectsMetricDescriptorsGet' smart constructor.
data MonitoringProjectsMetricDescriptorsGet = MonitoringProjectsMetricDescriptorsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The metric descriptor on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/metricDescriptors\/[METRIC/ID] An example value of [METRIC/ID] is \"compute.googleapis.com\/instance\/disk\/read/bytes_count\".
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMetricDescriptorsGet' with the minimum fields required to make a request.
newMonitoringProjectsMetricDescriptorsGet 
    ::  Core.Text
       -- ^  Required. The metric descriptor on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/metricDescriptors\/[METRIC/ID] An example value of [METRIC/ID] is \"compute.googleapis.com\/instance\/disk\/read/bytes_count\". See 'name'.
    -> MonitoringProjectsMetricDescriptorsGet
newMonitoringProjectsMetricDescriptorsGet name =
  MonitoringProjectsMetricDescriptorsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsMetricDescriptorsGet
         where
        type Rs MonitoringProjectsMetricDescriptorsGet =
             MetricDescriptor
        type Scopes MonitoringProjectsMetricDescriptorsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient
          MonitoringProjectsMetricDescriptorsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringProjectsMetricDescriptorsGetResource)
                      Core.mempty

