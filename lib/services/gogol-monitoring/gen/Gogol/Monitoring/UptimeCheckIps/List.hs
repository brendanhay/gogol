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
-- Module      : Gogol.Monitoring.UptimeCheckIps.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of IP addresses that checkers run from.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.uptimeCheckIps.list@.
module Gogol.Monitoring.UptimeCheckIps.List
  ( -- * Resource
    MonitoringUptimeCheckIpsListResource,

    -- ** Constructing a Request
    MonitoringUptimeCheckIpsList (..),
    newMonitoringUptimeCheckIpsList,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.uptimeCheckIps.list@ method which the
-- 'MonitoringUptimeCheckIpsList' request conforms to.
type MonitoringUptimeCheckIpsListResource =
  "v3"
    Core.:> "uptimeCheckIps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUptimeCheckIpsResponse

-- | Returns the list of IP addresses that checkers run from.
--
-- /See:/ 'newMonitoringUptimeCheckIpsList' smart constructor.
data MonitoringUptimeCheckIpsList = MonitoringUptimeCheckIpsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return in a single response. The server may further constrain the maximum number of results returned in a single page. If the page_size is \<=0, the server will decide the number of results to be returned. NOTE: this field is not yet implemented
    pageSize :: (Core.Maybe Core.Int32),
    -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return more results from the previous method call. NOTE: this field is not yet implemented
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringUptimeCheckIpsList' with the minimum fields required to make a request.
newMonitoringUptimeCheckIpsList ::
  MonitoringUptimeCheckIpsList
newMonitoringUptimeCheckIpsList =
  MonitoringUptimeCheckIpsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringUptimeCheckIpsList where
  type Rs MonitoringUptimeCheckIpsList = ListUptimeCheckIpsResponse
  type
    Scopes MonitoringUptimeCheckIpsList =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read
       ]
  requestClient MonitoringUptimeCheckIpsList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      monitoringService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MonitoringUptimeCheckIpsListResource)
          Core.mempty
