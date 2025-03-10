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
-- Module      : Gogol.Monitoring.Projects.Groups.Members.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the monitored resources that are members of a group.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.groups.members.list@.
module Gogol.Monitoring.Projects.Groups.Members.List
  ( -- * Resource
    MonitoringProjectsGroupsMembersListResource,

    -- ** Constructing a Request
    MonitoringProjectsGroupsMembersList (..),
    newMonitoringProjectsGroupsMembersList,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.groups.members.list@ method which the
-- 'MonitoringProjectsGroupsMembersList' request conforms to.
type MonitoringProjectsGroupsMembersListResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "members"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "interval.endTime" Core.DateTime
    Core.:> Core.QueryParam "interval.startTime" Core.DateTime
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGroupMembersResponse

-- | Lists the monitored resources that are members of a group.
--
-- /See:/ 'newMonitoringProjectsGroupsMembersList' smart constructor.
data MonitoringProjectsGroupsMembersList = MonitoringProjectsGroupsMembersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An optional list filter (https:\/\/cloud.google.com\/monitoring\/api\/learn_more#filtering) describing the members to be returned. The filter may reference the type, labels, and metadata of monitored resources that comprise the group. For example, to return only resources representing Compute Engine VM instances, use this filter: @resource.type = \"gce_instance\"@
    filter :: (Core.Maybe Core.Text),
    -- | Required. The end of the time interval.
    intervalEndTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.
    intervalStartTime :: (Core.Maybe Core.DateTime),
    -- | Required. The group whose members are listed. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID]
    name :: Core.Text,
    -- | A positive number that is the maximum number of results to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If this field is not empty then it must contain the next/page/token value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsGroupsMembersList' with the minimum fields required to make a request.
newMonitoringProjectsGroupsMembersList ::
  -- |  Required. The group whose members are listed. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] See 'name'.
  Core.Text ->
  MonitoringProjectsGroupsMembersList
newMonitoringProjectsGroupsMembersList name =
  MonitoringProjectsGroupsMembersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      intervalEndTime = Core.Nothing,
      intervalStartTime = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsGroupsMembersList where
  type
    Rs MonitoringProjectsGroupsMembersList =
      ListGroupMembersResponse
  type
    Scopes MonitoringProjectsGroupsMembersList =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read
       ]
  requestClient MonitoringProjectsGroupsMembersList {..} =
    go
      name
      xgafv
      accessToken
      callback
      filter
      intervalEndTime
      intervalStartTime
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
              Core.Proxy MonitoringProjectsGroupsMembersListResource
          )
          Core.mempty
