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
-- Module      : Network.Google.Monitoring.Projects.NotificationChannels.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new notification channel, representing a single notification endpoint such as an email address, SMS number, or PagerDuty service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.create@.
module Network.Google.Monitoring.Projects.NotificationChannels.Create
  ( -- * Resource
    MonitoringProjectsNotificationChannelsCreateResource,

    -- ** Constructing a Request
    newMonitoringProjectsNotificationChannelsCreate,
    MonitoringProjectsNotificationChannelsCreate,
  )
where

import Network.Google.Monitoring.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @monitoring.projects.notificationChannels.create@ method which the
-- 'MonitoringProjectsNotificationChannelsCreate' request conforms to.
type MonitoringProjectsNotificationChannelsCreateResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "notificationChannels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] NotificationChannel
    Core.:> Core.Post '[Core.JSON] NotificationChannel

-- | Creates a new notification channel, representing a single notification endpoint such as an email address, SMS number, or PagerDuty service.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelsCreate' smart constructor.
data MonitoringProjectsNotificationChannelsCreate = MonitoringProjectsNotificationChannelsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] This names the container into which the channel will be written, this does not name the newly created channel. The resulting channel\'s name will have a normalized version of this field as a prefix, but will add \/notificationChannels\/[CHANNEL_ID] to identify the channel.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: NotificationChannel,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelsCreate' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelsCreate ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] This names the container into which the channel will be written, this does not name the newly created channel. The resulting channel\'s name will have a normalized version of this field as a prefix, but will add \/notificationChannels\/[CHANNEL_ID] to identify the channel. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  NotificationChannel ->
  MonitoringProjectsNotificationChannelsCreate
newMonitoringProjectsNotificationChannelsCreate name payload =
  MonitoringProjectsNotificationChannelsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsNotificationChannelsCreate
  where
  type
    Rs MonitoringProjectsNotificationChannelsCreate =
      NotificationChannel
  type
    Scopes
      MonitoringProjectsNotificationChannelsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring"
       ]
  requestClient
    MonitoringProjectsNotificationChannelsCreate {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        monitoringService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  MonitoringProjectsNotificationChannelsCreateResource
            )
            Core.mempty
