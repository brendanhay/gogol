{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring.Projects.NotificationChannels.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the notification channels that have been created for the project. To list the types of notification channels that are supported, use the ListNotificationChannelDescriptors method.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.list@.
module Gogol.Monitoring.Projects.NotificationChannels.List
    (
    -- * Resource
      MonitoringProjectsNotificationChannelsListResource

    -- ** Constructing a Request
    , MonitoringProjectsNotificationChannelsList (..)
    , newMonitoringProjectsNotificationChannelsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.notificationChannels.list@ method which the
-- 'MonitoringProjectsNotificationChannelsList' request conforms to.
type MonitoringProjectsNotificationChannelsListResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "notificationChannels" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "orderBy" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON]
                                 ListNotificationChannelsResponse

-- | Lists the notification channels that have been created for the project. To list the types of notification channels that are supported, use the ListNotificationChannelDescriptors method.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelsList' smart constructor.
data MonitoringProjectsNotificationChannelsList = MonitoringProjectsNotificationChannelsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. If provided, this field specifies the criteria that must be met by notification channels to be included in the response.For more details, see sorting and filtering (https:\/\/cloud.google.com\/monitoring\/api\/v3\/sorting-and-filtering).
    , filter :: (Core.Maybe Core.Text)
      -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] This names the container in which to look for the notification channels; it does not name a specific channel. To query a specific channel by REST resource name, use the GetNotificationChannel operation.
    , name :: Core.Text
      -- | Optional. A comma-separated list of fields by which to sort the result. Supports the same set of fields as in filter. Entries can be prefixed with a minus sign to sort in descending rather than ascending order.For more details, see sorting and filtering (https:\/\/cloud.google.com\/monitoring\/api\/v3\/sorting-and-filtering).
    , orderBy :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to return in a single response. If not set to a positive number, a reasonable value will be chosen by the service.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If non-empty, page/token must contain a value returned as the next/page_token in a previous response to request the next set of results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelsList' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelsList 
    ::  Core.Text
       -- ^  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] This names the container in which to look for the notification channels; it does not name a specific channel. To query a specific channel by REST resource name, use the GetNotificationChannel operation. See 'name'.
    -> MonitoringProjectsNotificationChannelsList
newMonitoringProjectsNotificationChannelsList name =
  MonitoringProjectsNotificationChannelsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , name = name
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsNotificationChannelsList
         where
        type Rs MonitoringProjectsNotificationChannelsList =
             ListNotificationChannelsResponse
        type Scopes
               MonitoringProjectsNotificationChannelsList
             =
             '[CloudPlatform'FullControl, Monitoring'FullControl,
               Monitoring'Read]
        requestClient
          MonitoringProjectsNotificationChannelsList{..}
          = go name xgafv accessToken callback filter orderBy
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringProjectsNotificationChannelsListResource)
                      Core.mempty

