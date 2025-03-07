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
-- Module      : Gogol.SQLAdmin.Sql.Projects.Instances.PerformDiskShrink
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Perform Disk Shrink on primary instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.performDiskShrink@.
module Gogol.SQLAdmin.Sql.Projects.Instances.PerformDiskShrink
  ( -- * Resource
    SqlProjectsInstancesPerformDiskShrinkResource,

    -- ** Constructing a Request
    SqlProjectsInstancesPerformDiskShrink (..),
    newSqlProjectsInstancesPerformDiskShrink,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.performDiskShrink@ method which the
-- 'SqlProjectsInstancesPerformDiskShrink' request conforms to.
type SqlProjectsInstancesPerformDiskShrinkResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "performDiskShrink"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PerformDiskShrinkContext
    Core.:> Core.Post '[Core.JSON] Operation

-- | Perform Disk Shrink on primary instance.
--
-- /See:/ 'newSqlProjectsInstancesPerformDiskShrink' smart constructor.
data SqlProjectsInstancesPerformDiskShrink = SqlProjectsInstancesPerformDiskShrink
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud SQL instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: PerformDiskShrinkContext,
    -- | Project ID of the project that contains the instance.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlProjectsInstancesPerformDiskShrink' with the minimum fields required to make a request.
newSqlProjectsInstancesPerformDiskShrink ::
  -- |  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PerformDiskShrinkContext ->
  -- |  Project ID of the project that contains the instance. See 'project'.
  Core.Text ->
  SqlProjectsInstancesPerformDiskShrink
newSqlProjectsInstancesPerformDiskShrink instance' payload project =
  SqlProjectsInstancesPerformDiskShrink
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlProjectsInstancesPerformDiskShrink where
  type Rs SqlProjectsInstancesPerformDiskShrink = Operation
  type
    Scopes SqlProjectsInstancesPerformDiskShrink =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlProjectsInstancesPerformDiskShrink {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      sQLAdminService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SqlProjectsInstancesPerformDiskShrinkResource
          )
          Core.mempty
