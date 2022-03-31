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
-- Module      : Gogol.Monitoring.Projects.MonitoredResourceDescriptors.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists monitored resource descriptors that match a filter.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.monitoredResourceDescriptors.list@.
module Gogol.Monitoring.Projects.MonitoredResourceDescriptors.List
  ( -- * Resource
    MonitoringProjectsMonitoredResourceDescriptorsListResource,

    -- ** Constructing a Request
    newMonitoringProjectsMonitoredResourceDescriptorsList,
    MonitoringProjectsMonitoredResourceDescriptorsList,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.monitoredResourceDescriptors.list@ method which the
-- 'MonitoringProjectsMonitoredResourceDescriptorsList' request conforms to.
type MonitoringProjectsMonitoredResourceDescriptorsListResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "monitoredResourceDescriptors"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListMonitoredResourceDescriptorsResponse

-- | Lists monitored resource descriptors that match a filter.
--
-- /See:/ 'newMonitoringProjectsMonitoredResourceDescriptorsList' smart constructor.
data MonitoringProjectsMonitoredResourceDescriptorsList = MonitoringProjectsMonitoredResourceDescriptorsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An optional filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) describing the descriptors to be returned. The filter can reference the descriptor\'s type and labels. For example, the following filter returns only Google Compute Engine descriptors that have an id label: resource.type = starts/with(\"gce/\") AND resource.label:id
    filter :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    name :: Core.Text,
    -- | A positive number that is the maximum number of results to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMonitoredResourceDescriptorsList' with the minimum fields required to make a request.
newMonitoringProjectsMonitoredResourceDescriptorsList ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'name'.
  Core.Text ->
  MonitoringProjectsMonitoredResourceDescriptorsList
newMonitoringProjectsMonitoredResourceDescriptorsList name =
  MonitoringProjectsMonitoredResourceDescriptorsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsMonitoredResourceDescriptorsList
  where
  type
    Rs
      MonitoringProjectsMonitoredResourceDescriptorsList =
      ListMonitoredResourceDescriptorsResponse
  type
    Scopes
      MonitoringProjectsMonitoredResourceDescriptorsList =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read,
         Monitoring'Write
       ]
  requestClient
    MonitoringProjectsMonitoredResourceDescriptorsList {..} =
      go
        name
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
                Core.Proxy
                  MonitoringProjectsMonitoredResourceDescriptorsListResource
            )
            Core.mempty
