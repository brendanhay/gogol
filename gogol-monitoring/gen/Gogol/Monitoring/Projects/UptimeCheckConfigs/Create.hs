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
-- Module      : Gogol.Monitoring.Projects.UptimeCheckConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Uptime check configuration.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.uptimeCheckConfigs.create@.
module Gogol.Monitoring.Projects.UptimeCheckConfigs.Create
  ( -- * Resource
    MonitoringProjectsUptimeCheckConfigsCreateResource,

    -- ** Constructing a Request
    newMonitoringProjectsUptimeCheckConfigsCreate,
    MonitoringProjectsUptimeCheckConfigsCreate,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.uptimeCheckConfigs.create@ method which the
-- 'MonitoringProjectsUptimeCheckConfigsCreate' request conforms to.
type MonitoringProjectsUptimeCheckConfigsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "uptimeCheckConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UptimeCheckConfig
    Core.:> Core.Post '[Core.JSON] UptimeCheckConfig

-- | Creates a new Uptime check configuration.
--
-- /See:/ 'newMonitoringProjectsUptimeCheckConfigsCreate' smart constructor.
data MonitoringProjectsUptimeCheckConfigsCreate = MonitoringProjectsUptimeCheckConfigsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which to create the Uptime check. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: UptimeCheckConfig,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsUptimeCheckConfigsCreate' with the minimum fields required to make a request.
newMonitoringProjectsUptimeCheckConfigsCreate ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which to create the Uptime check. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UptimeCheckConfig ->
  MonitoringProjectsUptimeCheckConfigsCreate
newMonitoringProjectsUptimeCheckConfigsCreate parent payload =
  MonitoringProjectsUptimeCheckConfigsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsUptimeCheckConfigsCreate
  where
  type
    Rs MonitoringProjectsUptimeCheckConfigsCreate =
      UptimeCheckConfig
  type
    Scopes
      MonitoringProjectsUptimeCheckConfigsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring"
       ]
  requestClient
    MonitoringProjectsUptimeCheckConfigsCreate {..} =
      go
        parent
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
                  MonitoringProjectsUptimeCheckConfigsCreateResource
            )
            Core.mempty
