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
-- Module      : Gogol.Monitoring.Projects.Groups.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing group.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.groups.delete@.
module Gogol.Monitoring.Projects.Groups.Delete
  ( -- * Resource
    MonitoringProjectsGroupsDeleteResource,

    -- ** Constructing a Request
    MonitoringProjectsGroupsDelete (..),
    newMonitoringProjectsGroupsDelete,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.groups.delete@ method which the
-- 'MonitoringProjectsGroupsDelete' request conforms to.
type MonitoringProjectsGroupsDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "recursive" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an existing group.
--
-- /See:/ 'newMonitoringProjectsGroupsDelete' smart constructor.
data MonitoringProjectsGroupsDelete = MonitoringProjectsGroupsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The group to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID]
    name :: Core.Text,
    -- | If this field is true, then the request means to delete a group with all its descendants. Otherwise, the request means to delete a group only when it has no descendants. The default value is false.
    recursive :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsGroupsDelete' with the minimum fields required to make a request.
newMonitoringProjectsGroupsDelete ::
  -- |  Required. The group to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] See 'name'.
  Core.Text ->
  MonitoringProjectsGroupsDelete
newMonitoringProjectsGroupsDelete name =
  MonitoringProjectsGroupsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      recursive = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsGroupsDelete where
  type Rs MonitoringProjectsGroupsDelete = Empty
  type
    Scopes MonitoringProjectsGroupsDelete =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient MonitoringProjectsGroupsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      recursive
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      monitoringService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MonitoringProjectsGroupsDeleteResource)
          Core.mempty
