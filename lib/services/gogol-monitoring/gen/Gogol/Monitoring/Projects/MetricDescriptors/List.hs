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
-- Module      : Gogol.Monitoring.Projects.MetricDescriptors.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists metric descriptors that match a filter.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.metricDescriptors.list@.
module Gogol.Monitoring.Projects.MetricDescriptors.List
    (
    -- * Resource
      MonitoringProjectsMetricDescriptorsListResource

    -- ** Constructing a Request
    , newMonitoringProjectsMetricDescriptorsList
    , MonitoringProjectsMetricDescriptorsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.metricDescriptors.list@ method which the
-- 'MonitoringProjectsMetricDescriptorsList' request conforms to.
type MonitoringProjectsMetricDescriptorsListResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "metricDescriptors" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListMetricDescriptorsResponse

-- | Lists metric descriptors that match a filter.
--
-- /See:/ 'newMonitoringProjectsMetricDescriptorsList' smart constructor.
data MonitoringProjectsMetricDescriptorsList = MonitoringProjectsMetricDescriptorsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | If this field is empty, all custom and system-defined metric descriptors are returned. Otherwise, the filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) specifies which metric descriptors are to be returned. For example, the following filter matches all custom metrics (https:\/\/cloud.google.com\/monitoring\/custom-metrics): metric.type = starts_with(\"custom.googleapis.com\/\")
    , filter :: (Core.Maybe Core.Text)
      -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    , name :: Core.Text
      -- | A positive number that is the maximum number of results to return.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMetricDescriptorsList' with the minimum fields required to make a request.
newMonitoringProjectsMetricDescriptorsList 
    ::  Core.Text
       -- ^  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'name'.
    -> MonitoringProjectsMetricDescriptorsList
newMonitoringProjectsMetricDescriptorsList name =
  MonitoringProjectsMetricDescriptorsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , name = name
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsMetricDescriptorsList
         where
        type Rs MonitoringProjectsMetricDescriptorsList =
             ListMetricDescriptorsResponse
        type Scopes MonitoringProjectsMetricDescriptorsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient
          MonitoringProjectsMetricDescriptorsList{..}
          = go name xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringProjectsMetricDescriptorsListResource)
                      Core.mempty

