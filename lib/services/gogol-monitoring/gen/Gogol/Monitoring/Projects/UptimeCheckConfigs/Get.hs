{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring.Projects.UptimeCheckConfigs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single Uptime check configuration.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.uptimeCheckConfigs.get@.
module Gogol.Monitoring.Projects.UptimeCheckConfigs.Get
  ( -- * Resource
    MonitoringProjectsUptimeCheckConfigsGetResource,

    -- ** Constructing a Request
    MonitoringProjectsUptimeCheckConfigsGet (..),
    newMonitoringProjectsUptimeCheckConfigsGet,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.uptimeCheckConfigs.get@ method which the
-- 'MonitoringProjectsUptimeCheckConfigsGet' request conforms to.
type MonitoringProjectsUptimeCheckConfigsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UptimeCheckConfig

-- | Gets a single Uptime check configuration.
--
-- /See:/ 'newMonitoringProjectsUptimeCheckConfigsGet' smart constructor.
data MonitoringProjectsUptimeCheckConfigsGet = MonitoringProjectsUptimeCheckConfigsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Uptime check configuration to retrieve. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/uptimeCheckConfigs\/[UPTIME/CHECK_ID]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsUptimeCheckConfigsGet' with the minimum fields required to make a request.
newMonitoringProjectsUptimeCheckConfigsGet ::
  -- |  Required. The Uptime check configuration to retrieve. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/uptimeCheckConfigs\/[UPTIME/CHECK_ID] See 'name'.
  Core.Text ->
  MonitoringProjectsUptimeCheckConfigsGet
newMonitoringProjectsUptimeCheckConfigsGet name =
  MonitoringProjectsUptimeCheckConfigsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsUptimeCheckConfigsGet where
  type Rs MonitoringProjectsUptimeCheckConfigsGet = UptimeCheckConfig
  type
    Scopes MonitoringProjectsUptimeCheckConfigsGet =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read
       ]
  requestClient MonitoringProjectsUptimeCheckConfigsGet {..} =
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
              Core.Proxy MonitoringProjectsUptimeCheckConfigsGetResource
          )
          Core.mempty
