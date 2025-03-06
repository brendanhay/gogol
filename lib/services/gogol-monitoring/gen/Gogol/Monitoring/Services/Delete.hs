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
-- Module      : Gogol.Monitoring.Services.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Soft delete this Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.delete@.
module Gogol.Monitoring.Services.Delete
  ( -- * Resource
    MonitoringServicesDeleteResource,

    -- ** Constructing a Request
    MonitoringServicesDelete (..),
    newMonitoringServicesDelete,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.services.delete@ method which the
-- 'MonitoringServicesDelete' request conforms to.
type MonitoringServicesDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Soft delete this Service.
--
-- /See:/ 'newMonitoringServicesDelete' smart constructor.
data MonitoringServicesDelete = MonitoringServicesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the Service to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesDelete' with the minimum fields required to make a request.
newMonitoringServicesDelete ::
  -- |  Required. Resource name of the Service to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID] See 'name'.
  Core.Text ->
  MonitoringServicesDelete
newMonitoringServicesDelete name =
  MonitoringServicesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringServicesDelete where
  type Rs MonitoringServicesDelete = Empty
  type
    Scopes MonitoringServicesDelete =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient MonitoringServicesDelete {..} =
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
          (Core.Proxy :: Core.Proxy MonitoringServicesDeleteResource)
          Core.mempty
