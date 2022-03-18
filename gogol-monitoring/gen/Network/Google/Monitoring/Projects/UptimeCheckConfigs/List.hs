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
-- Module      : Network.Google.Monitoring.Projects.UptimeCheckConfigs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing valid Uptime check configurations for the project (leaving out any invalid configurations).
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.uptimeCheckConfigs.list@.
module Network.Google.Monitoring.Projects.UptimeCheckConfigs.List
  ( -- * Resource
    MonitoringProjectsUptimeCheckConfigsListResource,

    -- ** Constructing a Request
    newMonitoringProjectsUptimeCheckConfigsList,
    MonitoringProjectsUptimeCheckConfigsList,
  )
where

import Network.Google.Monitoring.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @monitoring.projects.uptimeCheckConfigs.list@ method which the
-- 'MonitoringProjectsUptimeCheckConfigsList' request conforms to.
type MonitoringProjectsUptimeCheckConfigsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "uptimeCheckConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUptimeCheckConfigsResponse

-- | Lists the existing valid Uptime check configurations for the project (leaving out any invalid configurations).
--
-- /See:/ 'newMonitoringProjectsUptimeCheckConfigsList' smart constructor.
data MonitoringProjectsUptimeCheckConfigsList = MonitoringProjectsUptimeCheckConfigsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return in a single response. The server may further constrain the maximum number of results returned in a single page. If the page_size is \<=0, the server will decide the number of results to be returned.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return more results from the previous method call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose Uptime check configurations are listed. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsUptimeCheckConfigsList' with the minimum fields required to make a request.
newMonitoringProjectsUptimeCheckConfigsList ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose Uptime check configurations are listed. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'parent'.
  Core.Text ->
  MonitoringProjectsUptimeCheckConfigsList
newMonitoringProjectsUptimeCheckConfigsList parent =
  MonitoringProjectsUptimeCheckConfigsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsUptimeCheckConfigsList
  where
  type
    Rs MonitoringProjectsUptimeCheckConfigsList =
      ListUptimeCheckConfigsResponse
  type
    Scopes MonitoringProjectsUptimeCheckConfigsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring",
         "https://www.googleapis.com/auth/monitoring.read"
       ]
  requestClient
    MonitoringProjectsUptimeCheckConfigsList {..} =
      go
        parent
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
            ( Core.Proxy ::
                Core.Proxy
                  MonitoringProjectsUptimeCheckConfigsListResource
            )
            Core.mempty
