{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Monitoring.Projects.Snoozes.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Snooze that will prevent alerts, which match the provided criteria, from being opened. The Snooze applies for a specific time interval.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.snoozes.create@.
module Gogol.Monitoring.Projects.Snoozes.Create
  ( -- * Resource
    MonitoringProjectsSnoozesCreateResource,

    -- ** Constructing a Request
    MonitoringProjectsSnoozesCreate (..),
    newMonitoringProjectsSnoozesCreate,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.snoozes.create@ method which the
-- 'MonitoringProjectsSnoozesCreate' request conforms to.
type MonitoringProjectsSnoozesCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "snoozes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Snooze
    Core.:> Core.Post '[Core.JSON] Snooze

-- | Creates a Snooze that will prevent alerts, which match the provided criteria, from being opened. The Snooze applies for a specific time interval.
--
-- /See:/ 'newMonitoringProjectsSnoozesCreate' smart constructor.
data MonitoringProjectsSnoozesCreate = MonitoringProjectsSnoozesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which a Snooze should be created. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Snooze,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsSnoozesCreate' with the minimum fields required to make a request.
newMonitoringProjectsSnoozesCreate ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which a Snooze should be created. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Snooze ->
  MonitoringProjectsSnoozesCreate
newMonitoringProjectsSnoozesCreate parent payload =
  MonitoringProjectsSnoozesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsSnoozesCreate where
  type Rs MonitoringProjectsSnoozesCreate = Snooze
  type
    Scopes MonitoringProjectsSnoozesCreate =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient MonitoringProjectsSnoozesCreate {..} =
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
          (Core.Proxy :: Core.Proxy MonitoringProjectsSnoozesCreateResource)
          Core.mempty
