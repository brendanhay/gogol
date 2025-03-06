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
-- Module      : Gogol.Monitoring.Projects.Groups.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing group. You can change any group attributes except name.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.groups.update@.
module Gogol.Monitoring.Projects.Groups.Update
  ( -- * Resource
    MonitoringProjectsGroupsUpdateResource,

    -- ** Constructing a Request
    MonitoringProjectsGroupsUpdate (..),
    newMonitoringProjectsGroupsUpdate,
  )
where

import Gogol.Monitoring.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @monitoring.projects.groups.update@ method which the
-- 'MonitoringProjectsGroupsUpdate' request conforms to.
type MonitoringProjectsGroupsUpdateResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Group
    Core.:> Core.Put '[Core.JSON] Group

-- | Updates an existing group. You can change any group attributes except name.
--
-- /See:/ 'newMonitoringProjectsGroupsUpdate' smart constructor.
data MonitoringProjectsGroupsUpdate = MonitoringProjectsGroupsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The name of this group. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Group,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | If true, validate this request but do not update the existing group.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsGroupsUpdate' with the minimum fields required to make a request.
newMonitoringProjectsGroupsUpdate ::
  -- |  Output only. The name of this group. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/groups\/[GROUP/ID] When creating a group, this field is ignored and a new name is created consisting of the project specified in the call to CreateGroup and a unique [GROUP_ID] that is generated automatically. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Group ->
  MonitoringProjectsGroupsUpdate
newMonitoringProjectsGroupsUpdate name payload =
  MonitoringProjectsGroupsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.GoogleRequest MonitoringProjectsGroupsUpdate where
  type Rs MonitoringProjectsGroupsUpdate = Group
  type
    Scopes MonitoringProjectsGroupsUpdate =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient MonitoringProjectsGroupsUpdate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      monitoringService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MonitoringProjectsGroupsUpdateResource)
          Core.mempty
