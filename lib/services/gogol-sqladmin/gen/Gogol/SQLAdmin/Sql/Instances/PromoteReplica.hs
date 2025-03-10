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
-- Module      : Gogol.SQLAdmin.Sql.Instances.PromoteReplica
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Promotes the read replica instance to be an independent Cloud SQL primary instance. Using this operation might cause your instance to restart.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.promoteReplica@.
module Gogol.SQLAdmin.Sql.Instances.PromoteReplica
  ( -- * Resource
    SqlInstancesPromoteReplicaResource,

    -- ** Constructing a Request
    SqlInstancesPromoteReplica (..),
    newSqlInstancesPromoteReplica,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.promoteReplica@ method which the
-- 'SqlInstancesPromoteReplica' request conforms to.
type SqlInstancesPromoteReplicaResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "promoteReplica"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "failover" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Promotes the read replica instance to be an independent Cloud SQL primary instance. Using this operation might cause your instance to restart.
--
-- /See:/ 'newSqlInstancesPromoteReplica' smart constructor.
data SqlInstancesPromoteReplica = SqlInstancesPromoteReplica
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Set to true to invoke a replica failover to the DR replica. As part of replica failover, the promote operation attempts to add the original primary instance as a replica of the promoted DR replica when the original primary instance comes back online. If set to false or not specified, then the original primary instance becomes an independent Cloud SQL primary instance.
    failover :: (Core.Maybe Core.Bool),
    -- | Cloud SQL read replica instance name.
    instance' :: Core.Text,
    -- | ID of the project that contains the read replica.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesPromoteReplica' with the minimum fields required to make a request.
newSqlInstancesPromoteReplica ::
  -- |  Cloud SQL read replica instance name. See 'instance''.
  Core.Text ->
  -- |  ID of the project that contains the read replica. See 'project'.
  Core.Text ->
  SqlInstancesPromoteReplica
newSqlInstancesPromoteReplica instance' project =
  SqlInstancesPromoteReplica
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      failover = Core.Nothing,
      instance' = instance',
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesPromoteReplica where
  type Rs SqlInstancesPromoteReplica = Operation
  type
    Scopes SqlInstancesPromoteReplica =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesPromoteReplica {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      failover
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlInstancesPromoteReplicaResource)
          Core.mempty
