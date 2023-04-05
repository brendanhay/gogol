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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Copy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copy a Cloud Bigtable backup to a new backup in the destination cluster located in the destination instance and project.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.copy@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.Backups.Copy
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersBackupsCopyResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesClustersBackupsCopy (..),
    newBigtableAdminProjectsInstancesClustersBackupsCopy,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.copy@ method which the
-- 'BigtableAdminProjectsInstancesClustersBackupsCopy' request conforms to.
type BigtableAdminProjectsInstancesClustersBackupsCopyResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups:copy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CopyBackupRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Copy a Cloud Bigtable backup to a new backup in the destination cluster located in the destination instance and project.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersBackupsCopy' smart constructor.
data BigtableAdminProjectsInstancesClustersBackupsCopy = BigtableAdminProjectsInstancesClustersBackupsCopy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the destination cluster that will contain the backup copy. The cluster must already exists. Values are of the form: @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CopyBackupRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersBackupsCopy' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersBackupsCopy ::
  -- |  Required. The name of the destination cluster that will contain the backup copy. The cluster must already exists. Values are of the form: @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CopyBackupRequest ->
  BigtableAdminProjectsInstancesClustersBackupsCopy
newBigtableAdminProjectsInstancesClustersBackupsCopy parent payload =
  BigtableAdminProjectsInstancesClustersBackupsCopy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersBackupsCopy
  where
  type
    Rs
      BigtableAdminProjectsInstancesClustersBackupsCopy =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesClustersBackupsCopy =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersBackupsCopy {..} =
      go
        parent
        xgafv
        accessToken
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
                  BigtableAdminProjectsInstancesClustersBackupsCopyResource
            )
            Core.mempty
