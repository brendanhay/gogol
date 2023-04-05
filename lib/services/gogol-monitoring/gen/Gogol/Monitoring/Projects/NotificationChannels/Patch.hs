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
-- Module      : Gogol.Monitoring.Projects.NotificationChannels.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notification channel. Fields not specified in the field mask remain unchanged.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.patch@.
module Gogol.Monitoring.Projects.NotificationChannels.Patch
  ( -- * Resource
    MonitoringProjectsNotificationChannelsPatchResource,

    -- ** Constructing a Request
    MonitoringProjectsNotificationChannelsPatch (..),
    newMonitoringProjectsNotificationChannelsPatch,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.notificationChannels.patch@ method which the
-- 'MonitoringProjectsNotificationChannelsPatch' request conforms to.
type MonitoringProjectsNotificationChannelsPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] NotificationChannel
    Core.:> Core.Patch '[Core.JSON] NotificationChannel

-- | Updates a notification channel. Fields not specified in the field mask remain unchanged.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelsPatch' smart constructor.
data MonitoringProjectsNotificationChannelsPatch = MonitoringProjectsNotificationChannelsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The full REST resource name for this channel. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: NotificationChannel,
    -- | The fields to update.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelsPatch' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelsPatch ::
  -- |  The full REST resource name for this channel. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID] The [CHANNEL_ID] is automatically assigned by the server on creation. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  NotificationChannel ->
  MonitoringProjectsNotificationChannelsPatch
newMonitoringProjectsNotificationChannelsPatch name payload =
  MonitoringProjectsNotificationChannelsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsNotificationChannelsPatch
  where
  type
    Rs MonitoringProjectsNotificationChannelsPatch =
      NotificationChannel
  type
    Scopes
      MonitoringProjectsNotificationChannelsPatch =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient
    MonitoringProjectsNotificationChannelsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  MonitoringProjectsNotificationChannelsPatchResource
            )
            Core.mempty
