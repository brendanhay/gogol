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
-- Module      : Gogol.Monitoring.Projects.NotificationChannelDescriptors.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the descriptors for supported channel types. The use of descriptors makes it possible for new channel types to be dynamically added.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannelDescriptors.list@.
module Gogol.Monitoring.Projects.NotificationChannelDescriptors.List
  ( -- * Resource
    MonitoringProjectsNotificationChannelDescriptorsListResource,

    -- ** Constructing a Request
    newMonitoringProjectsNotificationChannelDescriptorsList,
    MonitoringProjectsNotificationChannelDescriptorsList,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.notificationChannelDescriptors.list@ method which the
-- 'MonitoringProjectsNotificationChannelDescriptorsList' request conforms to.
type MonitoringProjectsNotificationChannelDescriptorsListResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "notificationChannelDescriptors"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListNotificationChannelDescriptorsResponse

-- | Lists the descriptors for supported channel types. The use of descriptors makes it possible for new channel types to be dynamically added.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelDescriptorsList' smart constructor.
data MonitoringProjectsNotificationChannelDescriptorsList = MonitoringProjectsNotificationChannelDescriptorsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The REST resource name of the parent from which to retrieve the notification channel descriptors. The expected syntax is: projects\/[PROJECT/ID/OR/NUMBER] Note that this names (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) the parent container in which to look for the descriptors; to retrieve a single descriptor by name, use the GetNotificationChannelDescriptor operation, instead.
    name :: Core.Text,
    -- | The maximum number of results to return in a single response. If not set to a positive number, a reasonable value will be chosen by the service.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If non-empty, page/token must contain a value returned as the next/page_token in a previous response to request the next set of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelDescriptorsList' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelDescriptorsList ::
  -- |  Required. The REST resource name of the parent from which to retrieve the notification channel descriptors. The expected syntax is: projects\/[PROJECT/ID/OR/NUMBER] Note that this names (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) the parent container in which to look for the descriptors; to retrieve a single descriptor by name, use the GetNotificationChannelDescriptor operation, instead. See 'name'.
  Core.Text ->
  MonitoringProjectsNotificationChannelDescriptorsList
newMonitoringProjectsNotificationChannelDescriptorsList name =
  MonitoringProjectsNotificationChannelDescriptorsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsNotificationChannelDescriptorsList
  where
  type
    Rs
      MonitoringProjectsNotificationChannelDescriptorsList =
      ListNotificationChannelDescriptorsResponse
  type
    Scopes
      MonitoringProjectsNotificationChannelDescriptorsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring",
         "https://www.googleapis.com/auth/monitoring.read"
       ]
  requestClient
    MonitoringProjectsNotificationChannelDescriptorsList {..} =
      go
        name
        xgafv
        accessToken
        callback
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
                  MonitoringProjectsNotificationChannelDescriptorsListResource
            )
            Core.mempty
