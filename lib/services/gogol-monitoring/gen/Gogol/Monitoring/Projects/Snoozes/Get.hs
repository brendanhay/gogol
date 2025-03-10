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
-- Module      : Gogol.Monitoring.Projects.Snoozes.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Snooze by name.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.snoozes.get@.
module Gogol.Monitoring.Projects.Snoozes.Get
  ( -- * Resource
    MonitoringProjectsSnoozesGetResource,

    -- ** Constructing a Request
    MonitoringProjectsSnoozesGet (..),
    newMonitoringProjectsSnoozesGet,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.snoozes.get@ method which the
-- 'MonitoringProjectsSnoozesGet' request conforms to.
type MonitoringProjectsSnoozesGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Snooze

-- | Retrieves a Snooze by name.
--
-- /See:/ 'newMonitoringProjectsSnoozesGet' smart constructor.
data MonitoringProjectsSnoozesGet = MonitoringProjectsSnoozesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the Snooze to retrieve. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/snoozes\/[SNOOZE/ID]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsSnoozesGet' with the minimum fields required to make a request.
newMonitoringProjectsSnoozesGet ::
  -- |  Required. The ID of the Snooze to retrieve. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/snoozes\/[SNOOZE/ID] See 'name'.
  Core.Text ->
  MonitoringProjectsSnoozesGet
newMonitoringProjectsSnoozesGet name =
  MonitoringProjectsSnoozesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsSnoozesGet where
  type Rs MonitoringProjectsSnoozesGet = Snooze
  type
    Scopes MonitoringProjectsSnoozesGet =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read
       ]
  requestClient MonitoringProjectsSnoozesGet {..} =
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
          (Core.Proxy :: Core.Proxy MonitoringProjectsSnoozesGetResource)
          Core.mempty
