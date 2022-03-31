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
-- Module      : Gogol.Monitoring.Projects.UptimeCheckConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Uptime check configuration. Note that this method will fail if the Uptime check configuration is referenced by an alert policy or other dependent configs that would be rendered invalid by the deletion.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.uptimeCheckConfigs.delete@.
module Gogol.Monitoring.Projects.UptimeCheckConfigs.Delete
  ( -- * Resource
    MonitoringProjectsUptimeCheckConfigsDeleteResource,

    -- ** Constructing a Request
    newMonitoringProjectsUptimeCheckConfigsDelete,
    MonitoringProjectsUptimeCheckConfigsDelete,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.uptimeCheckConfigs.delete@ method which the
-- 'MonitoringProjectsUptimeCheckConfigsDelete' request conforms to.
type MonitoringProjectsUptimeCheckConfigsDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an Uptime check configuration. Note that this method will fail if the Uptime check configuration is referenced by an alert policy or other dependent configs that would be rendered invalid by the deletion.
--
-- /See:/ 'newMonitoringProjectsUptimeCheckConfigsDelete' smart constructor.
data MonitoringProjectsUptimeCheckConfigsDelete = MonitoringProjectsUptimeCheckConfigsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Uptime check configuration to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/uptimeCheckConfigs\/[UPTIME/CHECK_ID]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsUptimeCheckConfigsDelete' with the minimum fields required to make a request.
newMonitoringProjectsUptimeCheckConfigsDelete ::
  -- |  Required. The Uptime check configuration to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/uptimeCheckConfigs\/[UPTIME/CHECK_ID] See 'name'.
  Core.Text ->
  MonitoringProjectsUptimeCheckConfigsDelete
newMonitoringProjectsUptimeCheckConfigsDelete name =
  MonitoringProjectsUptimeCheckConfigsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsUptimeCheckConfigsDelete
  where
  type
    Rs MonitoringProjectsUptimeCheckConfigsDelete =
      Empty
  type
    Scopes
      MonitoringProjectsUptimeCheckConfigsDelete =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient
    MonitoringProjectsUptimeCheckConfigsDelete {..} =
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
                  MonitoringProjectsUptimeCheckConfigsDeleteResource
            )
            Core.mempty
