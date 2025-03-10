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
-- Module      : Gogol.SQLAdmin.Sql.Projects.Instances.GetLatestRecoveryTime
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get Latest Recovery Time for a given instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.getLatestRecoveryTime@.
module Gogol.SQLAdmin.Sql.Projects.Instances.GetLatestRecoveryTime
  ( -- * Resource
    SqlProjectsInstancesGetLatestRecoveryTimeResource,

    -- ** Constructing a Request
    SqlProjectsInstancesGetLatestRecoveryTime (..),
    newSqlProjectsInstancesGetLatestRecoveryTime,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.getLatestRecoveryTime@ method which the
-- 'SqlProjectsInstancesGetLatestRecoveryTime' request conforms to.
type SqlProjectsInstancesGetLatestRecoveryTimeResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "getLatestRecoveryTime"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SqlInstancesGetLatestRecoveryTimeResponse

-- | Get Latest Recovery Time for a given instance.
--
-- /See:/ 'newSqlProjectsInstancesGetLatestRecoveryTime' smart constructor.
data SqlProjectsInstancesGetLatestRecoveryTime = SqlProjectsInstancesGetLatestRecoveryTime
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud SQL instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Project ID of the project that contains the instance.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlProjectsInstancesGetLatestRecoveryTime' with the minimum fields required to make a request.
newSqlProjectsInstancesGetLatestRecoveryTime ::
  -- |  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Project ID of the project that contains the instance. See 'project'.
  Core.Text ->
  SqlProjectsInstancesGetLatestRecoveryTime
newSqlProjectsInstancesGetLatestRecoveryTime instance' project =
  SqlProjectsInstancesGetLatestRecoveryTime
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SqlProjectsInstancesGetLatestRecoveryTime
  where
  type
    Rs SqlProjectsInstancesGetLatestRecoveryTime =
      SqlInstancesGetLatestRecoveryTimeResponse
  type
    Scopes SqlProjectsInstancesGetLatestRecoveryTime =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlProjectsInstancesGetLatestRecoveryTime {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SqlProjectsInstancesGetLatestRecoveryTimeResource
          )
          Core.mempty
