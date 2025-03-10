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
-- Module      : Gogol.SQLAdmin.Sql.Instances.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.delete@.
module Gogol.SQLAdmin.Sql.Instances.Delete
  ( -- * Resource
    SqlInstancesDeleteResource,

    -- ** Constructing a Request
    SqlInstancesDelete (..),
    newSqlInstancesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.delete@ method which the
-- 'SqlInstancesDelete' request conforms to.
type SqlInstancesDeleteResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "enableFinalBackup" Core.Bool
    Core.:> Core.QueryParam "finalBackupDescription" Core.Text
    Core.:> Core.QueryParam "finalBackupExpiryTime" Core.DateTime
    Core.:> Core.QueryParam "finalBackupTtlDays" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a Cloud SQL instance.
--
-- /See:/ 'newSqlInstancesDelete' smart constructor.
data SqlInstancesDelete = SqlInstancesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Flag to opt-in for final backup. By default, it is turned off.
    enableFinalBackup :: (Core.Maybe Core.Bool),
    -- | Optional. The description of the final backup.
    finalBackupDescription :: (Core.Maybe Core.Text),
    -- | Optional. Final Backup expiration time. Timestamp in UTC of when this resource is considered expired.
    finalBackupExpiryTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Retention period of the final backup.
    finalBackupTtlDays :: (Core.Maybe Core.Int64),
    -- | Cloud SQL instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Project ID of the project that contains the instance to be deleted.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesDelete' with the minimum fields required to make a request.
newSqlInstancesDelete ::
  -- |  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Project ID of the project that contains the instance to be deleted. See 'project'.
  Core.Text ->
  SqlInstancesDelete
newSqlInstancesDelete instance' project =
  SqlInstancesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enableFinalBackup = Core.Nothing,
      finalBackupDescription = Core.Nothing,
      finalBackupExpiryTime = Core.Nothing,
      finalBackupTtlDays = Core.Nothing,
      instance' = instance',
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesDelete where
  type Rs SqlInstancesDelete = Operation
  type
    Scopes SqlInstancesDelete =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesDelete {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      enableFinalBackup
      finalBackupDescription
      finalBackupExpiryTime
      finalBackupTtlDays
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlInstancesDeleteResource)
          Core.mempty
