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
-- Module      : Gogol.Monitoring.Projects.NotificationChannelDescriptors.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single channel descriptor. The descriptor indicates which fields are expected \/ permitted for a notification channel of the given type.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannelDescriptors.get@.
module Gogol.Monitoring.Projects.NotificationChannelDescriptors.Get
  ( -- * Resource
    MonitoringProjectsNotificationChannelDescriptorsGetResource,

    -- ** Constructing a Request
    newMonitoringProjectsNotificationChannelDescriptorsGet,
    MonitoringProjectsNotificationChannelDescriptorsGet,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.notificationChannelDescriptors.get@ method which the
-- 'MonitoringProjectsNotificationChannelDescriptorsGet' request conforms to.
type MonitoringProjectsNotificationChannelDescriptorsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] NotificationChannelDescriptor

-- | Gets a single channel descriptor. The descriptor indicates which fields are expected \/ permitted for a notification channel of the given type.
--
-- /See:/ 'newMonitoringProjectsNotificationChannelDescriptorsGet' smart constructor.
data MonitoringProjectsNotificationChannelDescriptorsGet = MonitoringProjectsNotificationChannelDescriptorsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The channel type for which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannelDescriptors\/[CHANNEL/TYPE]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsNotificationChannelDescriptorsGet' with the minimum fields required to make a request.
newMonitoringProjectsNotificationChannelDescriptorsGet ::
  -- |  Required. The channel type for which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/notificationChannelDescriptors\/[CHANNEL/TYPE] See 'name'.
  Core.Text ->
  MonitoringProjectsNotificationChannelDescriptorsGet
newMonitoringProjectsNotificationChannelDescriptorsGet name =
  MonitoringProjectsNotificationChannelDescriptorsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsNotificationChannelDescriptorsGet
  where
  type
    Rs
      MonitoringProjectsNotificationChannelDescriptorsGet =
      NotificationChannelDescriptor
  type
    Scopes
      MonitoringProjectsNotificationChannelDescriptorsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring",
         "https://www.googleapis.com/auth/monitoring.read"
       ]
  requestClient
    MonitoringProjectsNotificationChannelDescriptorsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        monitoringService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  MonitoringProjectsNotificationChannelDescriptorsGetResource
            )
            Core.mempty
