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
-- Module      : Gogol.Monitoring.Projects.NotificationChannels.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notification channel. Fields not specified in the field mask remain unchanged.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannels.patch@.
module Gogol.Monitoring.Projects.NotificationChannels.Patch
    (
    -- * Resource
      MonitoringProjectsNotificationChannelsPatchResource

    -- ** Constructing a Request
    , newMonitoringProjectsNotificationChannelsPatch
    , MonitoringProjectsNotificationChannelsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.notificationChannels.patch@ method which the
-- 'MonitoringProjectsNotificationChannelsPatch' request conforms to.
type MonitoringProjectsNotificationChannelsPatchResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] NotificationChannel Core.:>
                         Core.Patch '[Core.JSON] NotificationChannel

-- | Updates a notification channel. Fields not specified in the field mask remain unchanged.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelsPatch' smart constructor.
data MonitoringProjectsNotificationChannelsPatch = MonitoringProjectsNotificationChannelsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The full REST resource name for this channel. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: NotificationChannel
      -- | The fields to update.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelsPatch' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelsPatch 
    ::  Core.Text
       -- ^  The full REST resource name for this channel. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannels\/[CHANNEL/ID] The [CHANNEL_ID] is automatically assigned by the server on creation. See 'name'.
    -> NotificationChannel
       -- ^  Multipart request metadata. See 'payload'.
    -> MonitoringProjectsNotificationChannelsPatch
newMonitoringProjectsNotificationChannelsPatch name payload =
  MonitoringProjectsNotificationChannelsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsNotificationChannelsPatch
         where
        type Rs MonitoringProjectsNotificationChannelsPatch =
             NotificationChannel
        type Scopes
               MonitoringProjectsNotificationChannelsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient
          MonitoringProjectsNotificationChannelsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringProjectsNotificationChannelsPatchResource)
                      Core.mempty

