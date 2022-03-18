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
-- Module      : Network.Google.Monitoring.Projects.NotificationChannels.SendVerificationCode
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Causes a verification code to be delivered to the channel. The code can then be supplied in VerifyNotificationChannel to verify the channel.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.sendVerificationCode@.
module Network.Google.Monitoring.Projects.NotificationChannels.SendVerificationCode
  ( -- * Resource
    MonitoringProjectsNotificationChannelsSendVerificationCodeResource,

    -- ** Constructing a Request
    newMonitoringProjectsNotificationChannelsSendVerificationCode,
    MonitoringProjectsNotificationChannelsSendVerificationCode,
  )
where

import Network.Google.Monitoring.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @monitoring.projects.notificationChannels.sendVerificationCode@ method which the
-- 'MonitoringProjectsNotificationChannelsSendVerificationCode' request conforms to.
type MonitoringProjectsNotificationChannelsSendVerificationCodeResource =
  "v3"
    Core.:> Core.CaptureMode
              "name"
              "sendVerificationCode"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SendNotificationChannelVerificationCodeRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Causes a verification code to be delivered to the channel. The code can then be supplied in VerifyNotificationChannel to verify the channel.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelsSendVerificationCode' smart constructor.
data MonitoringProjectsNotificationChannelsSendVerificationCode = MonitoringProjectsNotificationChannelsSendVerificationCode
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The notification channel to which to send a verification code.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SendNotificationChannelVerificationCodeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelsSendVerificationCode' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelsSendVerificationCode ::
  -- |  Required. The notification channel to which to send a verification code. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SendNotificationChannelVerificationCodeRequest ->
  MonitoringProjectsNotificationChannelsSendVerificationCode
newMonitoringProjectsNotificationChannelsSendVerificationCode name payload =
  MonitoringProjectsNotificationChannelsSendVerificationCode
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
    MonitoringProjectsNotificationChannelsSendVerificationCode
  where
  type
    Rs
      MonitoringProjectsNotificationChannelsSendVerificationCode =
      Empty
  type
    Scopes
      MonitoringProjectsNotificationChannelsSendVerificationCode =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring"
       ]
  requestClient
    MonitoringProjectsNotificationChannelsSendVerificationCode {..} =
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
                  MonitoringProjectsNotificationChannelsSendVerificationCodeResource
            )
            Core.mempty
