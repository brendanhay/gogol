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
-- Module      : Gogol.SQLAdmin.Sql.Projects.Instances.ResetReplicaSize
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset Replica Size to primary instance disk size.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.resetReplicaSize@.
module Gogol.SQLAdmin.Sql.Projects.Instances.ResetReplicaSize
  ( -- * Resource
    SqlProjectsInstancesResetReplicaSizeResource,

    -- ** Constructing a Request
    SqlProjectsInstancesResetReplicaSize (..),
    newSqlProjectsInstancesResetReplicaSize,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.resetReplicaSize@ method which the
-- 'SqlProjectsInstancesResetReplicaSize' request conforms to.
type SqlProjectsInstancesResetReplicaSizeResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "resetReplicaSize"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SqlInstancesResetReplicaSizeRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Reset Replica Size to primary instance disk size.
--
-- /See:/ 'newSqlProjectsInstancesResetReplicaSize' smart constructor.
data SqlProjectsInstancesResetReplicaSize = SqlProjectsInstancesResetReplicaSize
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud SQL read replica instance name.
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: SqlInstancesResetReplicaSizeRequest,
    -- | ID of the project that contains the read replica.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlProjectsInstancesResetReplicaSize' with the minimum fields required to make a request.
newSqlProjectsInstancesResetReplicaSize ::
  -- |  Cloud SQL read replica instance name. See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SqlInstancesResetReplicaSizeRequest ->
  -- |  ID of the project that contains the read replica. See 'project'.
  Core.Text ->
  SqlProjectsInstancesResetReplicaSize
newSqlProjectsInstancesResetReplicaSize instance' payload project =
  SqlProjectsInstancesResetReplicaSize
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlProjectsInstancesResetReplicaSize where
  type Rs SqlProjectsInstancesResetReplicaSize = Operation
  type
    Scopes SqlProjectsInstancesResetReplicaSize =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlProjectsInstancesResetReplicaSize {..} =
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
              Core.Proxy SqlProjectsInstancesResetReplicaSizeResource
          )
          Core.mempty
