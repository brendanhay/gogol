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
-- Module      : Gogol.Monitoring.Projects.Groups.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing groups.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.groups.list@.
module Gogol.Monitoring.Projects.Groups.List
  ( -- * Resource
    MonitoringProjectsGroupsListResource,

    -- ** Constructing a Request
    MonitoringProjectsGroupsList (..),
    newMonitoringProjectsGroupsList,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.groups.list@ method which the
-- 'MonitoringProjectsGroupsList' request conforms to.
type MonitoringProjectsGroupsListResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "groups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "ancestorsOfGroup" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "childrenOfGroup" Core.Text
    Core.:> Core.QueryParam "descendantsOfGroup" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGroupsResponse

-- | Lists the existing groups.
--
-- /See:/ 'newMonitoringProjectsGroupsList' smart constructor.
data MonitoringProjectsGroupsList = MonitoringProjectsGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | A group name. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] Returns groups that are ancestors of the specified group. The groups are returned in order, starting with the immediate parent and ending with the most distant ancestor. If the specified group has no immediate parent, the results are empty.
    ancestorsOfGroup :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A group name. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] Returns groups whose parent_name field contains the group name. If no groups have this parent, the results are empty.
    childrenOfGroup :: (Core.Maybe Core.Text),
    -- | A group name. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] Returns the descendants of the specified group. This is a superset of the results returned by the children/of/group filter, and includes children-of-children, and so forth.
    descendantsOfGroup :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose groups are to be listed. The format is: projects\/[PROJECT/ID/OR/NUMBER]
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

-- | Creates a value of 'MonitoringProjectsGroupsList' with the minimum fields required to make a request.
newMonitoringProjectsGroupsList ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose groups are to be listed. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'name'.
  Core.Text ->
  MonitoringProjectsGroupsList
newMonitoringProjectsGroupsList name =
  MonitoringProjectsGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      ancestorsOfGroup = Core.Nothing,
      callback = Core.Nothing,
      childrenOfGroup = Core.Nothing,
      descendantsOfGroup = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsGroupsList where
  type Rs MonitoringProjectsGroupsList = ListGroupsResponse
  type
    Scopes MonitoringProjectsGroupsList =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read
       ]
  requestClient MonitoringProjectsGroupsList {..} =
    go
      name
      xgafv
      accessToken
      ancestorsOfGroup
      callback
      childrenOfGroup
      descendantsOfGroup
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      monitoringService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MonitoringProjectsGroupsListResource)
          Core.mempty
