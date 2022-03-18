{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a pending or completed Cloud Bigtable backup.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.delete@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Delete
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersBackupsDeleteResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesClustersBackupsDelete,
    BigtableAdminProjectsInstancesClustersBackupsDelete,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.delete@ method which the
-- 'BigtableAdminProjectsInstancesClustersBackupsDelete' request conforms to.
type BigtableAdminProjectsInstancesClustersBackupsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a pending or completed Cloud Bigtable backup.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersBackupsDelete' smart constructor.
data BigtableAdminProjectsInstancesClustersBackupsDelete = BigtableAdminProjectsInstancesClustersBackupsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the backup to delete. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersBackupsDelete' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersBackupsDelete ::
  -- |  Required. Name of the backup to delete. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup}@. See 'name'.
  Core.Text ->
  BigtableAdminProjectsInstancesClustersBackupsDelete
newBigtableAdminProjectsInstancesClustersBackupsDelete name =
  BigtableAdminProjectsInstancesClustersBackupsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersBackupsDelete
  where
  type
    Rs
      BigtableAdminProjectsInstancesClustersBackupsDelete =
      Empty
  type
    Scopes
      BigtableAdminProjectsInstancesClustersBackupsDelete =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersBackupsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesClustersBackupsDeleteResource
            )
            Core.mempty
