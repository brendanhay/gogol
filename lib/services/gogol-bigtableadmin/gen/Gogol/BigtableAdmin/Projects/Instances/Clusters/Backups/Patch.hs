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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a pending or completed Cloud Bigtable Backup.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.patch@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Patch
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersBackupsPatchResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesClustersBackupsPatch (..),
    newBigtableAdminProjectsInstancesClustersBackupsPatch,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.patch@ method which the
-- 'BigtableAdminProjectsInstancesClustersBackupsPatch' request conforms to.
type BigtableAdminProjectsInstancesClustersBackupsPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Backup
    Core.:> Core.Patch '[Core.JSON] Backup

-- | Updates a pending or completed Cloud Bigtable Backup.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersBackupsPatch' smart constructor.
data BigtableAdminProjectsInstancesClustersBackupsPatch = BigtableAdminProjectsInstancesClustersBackupsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A globally unique identifier for the backup which cannot be changed. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/ backups\/_a-zA-Z0-9*@ The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Backup,
    -- | Required. A mask specifying which fields (e.g. @expire_time@) in the Backup resource should be updated. This mask is relative to the Backup resource, not to the request message. The field mask must always be specified; this prevents any future fields from being erased accidentally by clients that do not know about them.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersBackupsPatch' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersBackupsPatch ::
  -- |  A globally unique identifier for the backup which cannot be changed. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/ backups\/_a-zA-Z0-9*@ The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Backup ->
  BigtableAdminProjectsInstancesClustersBackupsPatch
newBigtableAdminProjectsInstancesClustersBackupsPatch name payload =
  BigtableAdminProjectsInstancesClustersBackupsPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersBackupsPatch
  where
  type Rs BigtableAdminProjectsInstancesClustersBackupsPatch = Backup
  type
    Scopes BigtableAdminProjectsInstancesClustersBackupsPatch =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersBackupsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  BigtableAdminProjectsInstancesClustersBackupsPatchResource
            )
            Core.mempty
