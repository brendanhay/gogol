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
-- Module      : Gogol.Monitoring.Projects.NotificationChannels.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a notification channel.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.delete@.
module Gogol.Monitoring.Projects.NotificationChannels.Delete
  ( -- * Resource
    MonitoringProjectsNotificationChannelsDeleteResource,

    -- ** Constructing a Request
    MonitoringProjectsNotificationChannelsDelete (..),
    newMonitoringProjectsNotificationChannelsDelete,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.notificationChannels.delete@ method which the
-- 'MonitoringProjectsNotificationChannelsDelete' request conforms to.
type MonitoringProjectsNotificationChannelsDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a notification channel.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelsDelete' smart constructor.
data MonitoringProjectsNotificationChannelsDelete = MonitoringProjectsNotificationChannelsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If true, the notification channel will be deleted regardless of its use in alert policies (the policies will be updated to remove the channel). If false, channels that are still referenced by an existing alerting policy will fail to be deleted in a delete operation.
    force :: (Core.Maybe Core.Bool),
    -- | Required. The channel for which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelsDelete' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelsDelete ::
  -- |  Required. The channel for which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID] See 'name'.
  Core.Text ->
  MonitoringProjectsNotificationChannelsDelete
newMonitoringProjectsNotificationChannelsDelete name =
  MonitoringProjectsNotificationChannelsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsNotificationChannelsDelete
  where
  type
    Rs MonitoringProjectsNotificationChannelsDelete =
      Empty
  type
    Scopes
      MonitoringProjectsNotificationChannelsDelete =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient
    MonitoringProjectsNotificationChannelsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        force
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        monitoringService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  MonitoringProjectsNotificationChannelsDeleteResource
            )
            Core.mempty
