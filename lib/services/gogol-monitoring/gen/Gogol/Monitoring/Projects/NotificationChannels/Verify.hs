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
-- Module      : Gogol.Monitoring.Projects.NotificationChannels.Verify
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies a NotificationChannel by proving receipt of the code delivered to the channel as a result of calling SendNotificationChannelVerificationCode.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.verify@.
module Gogol.Monitoring.Projects.NotificationChannels.Verify
  ( -- * Resource
    MonitoringProjectsNotificationChannelsVerifyResource,

    -- ** Constructing a Request
    newMonitoringProjectsNotificationChannelsVerify,
    MonitoringProjectsNotificationChannelsVerify,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.notificationChannels.verify@ method which the
-- 'MonitoringProjectsNotificationChannelsVerify' request conforms to.
type MonitoringProjectsNotificationChannelsVerifyResource =
  "v3"
    Core.:> Core.CaptureMode "name" "verify" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              VerifyNotificationChannelRequest
    Core.:> Core.Post '[Core.JSON] NotificationChannel

-- | Verifies a NotificationChannel by proving receipt of the code delivered to the channel as a result of calling SendNotificationChannelVerificationCode.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelsVerify' smart constructor.
data MonitoringProjectsNotificationChannelsVerify = MonitoringProjectsNotificationChannelsVerify
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The notification channel to verify.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: VerifyNotificationChannelRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelsVerify' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelsVerify ::
  -- |  Required. The notification channel to verify. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  VerifyNotificationChannelRequest ->
  MonitoringProjectsNotificationChannelsVerify
newMonitoringProjectsNotificationChannelsVerify name payload =
  MonitoringProjectsNotificationChannelsVerify
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
    MonitoringProjectsNotificationChannelsVerify
  where
  type
    Rs MonitoringProjectsNotificationChannelsVerify =
      NotificationChannel
  type
    Scopes
      MonitoringProjectsNotificationChannelsVerify =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring"
       ]
  requestClient
    MonitoringProjectsNotificationChannelsVerify {..} =
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
                  MonitoringProjectsNotificationChannelsVerifyResource
            )
            Core.mempty
