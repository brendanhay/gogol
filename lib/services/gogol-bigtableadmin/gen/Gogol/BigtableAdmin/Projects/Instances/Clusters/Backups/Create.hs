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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts creating a new Cloud Bigtable Backup. The returned backup long-running operation can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.create@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Create
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersBackupsCreateResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesClustersBackupsCreate (..),
    newBigtableAdminProjectsInstancesClustersBackupsCreate,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.create@ method which the
-- 'BigtableAdminProjectsInstancesClustersBackupsCreate' request conforms to.
type BigtableAdminProjectsInstancesClustersBackupsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "backupId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Backup
    Core.:> Core.Post '[Core.JSON] Operation

-- | Starts creating a new Cloud Bigtable Backup. The returned backup long-running operation can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersBackupsCreate' smart constructor.
data BigtableAdminProjectsInstancesClustersBackupsCreate = BigtableAdminProjectsInstancesClustersBackupsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The id of the backup to be created. The @backup_id@ along with the parent @parent@ are combined as {parent}\/backups\/{backup/id} to create the full backup name, of the form: @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup_id}@. This string must be between 1 and 50 characters in length and match the regex /a-zA-Z0-9*.
    backupId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. This must be one of the clusters in the instance in which this table is located. The backup will be stored in this cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Backup,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersBackupsCreate' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersBackupsCreate ::
  -- |  Required. This must be one of the clusters in the instance in which this table is located. The backup will be stored in this cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Backup ->
  BigtableAdminProjectsInstancesClustersBackupsCreate
newBigtableAdminProjectsInstancesClustersBackupsCreate
  parent
  payload =
    BigtableAdminProjectsInstancesClustersBackupsCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        backupId = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersBackupsCreate
  where
  type
    Rs BigtableAdminProjectsInstancesClustersBackupsCreate =
      Operation
  type
    Scopes BigtableAdminProjectsInstancesClustersBackupsCreate =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersBackupsCreate {..} =
      go
        parent
        xgafv
        accessToken
        backupId
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesClustersBackupsCreateResource
            )
            Core.mempty
