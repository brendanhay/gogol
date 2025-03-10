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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partially updates a cluster within a project. This method is the preferred way to update a Cluster. To enable and update autoscaling, set cluster/config.cluster/autoscaling/config. When autoscaling is enabled, serve/nodes is treated as an OUTPUT/ONLY field, meaning that updates to it are ignored. Note that an update cannot simultaneously set serve/nodes to non-zero and cluster/config.cluster/autoscaling/config to non-empty, and also specify both in the update/mask. To disable autoscaling, clear cluster/config.cluster/autoscaling/config, and explicitly set a serve/node count via the update_mask.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.partialUpdateCluster@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.PartialUpdateCluster
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersPartialUpdateClusterResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesClustersPartialUpdateCluster (..),
    newBigtableAdminProjectsInstancesClustersPartialUpdateCluster,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.partialUpdateCluster@ method which the
-- 'BigtableAdminProjectsInstancesClustersPartialUpdateCluster' request conforms to.
type BigtableAdminProjectsInstancesClustersPartialUpdateClusterResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Cluster
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Partially updates a cluster within a project. This method is the preferred way to update a Cluster. To enable and update autoscaling, set cluster/config.cluster/autoscaling/config. When autoscaling is enabled, serve/nodes is treated as an OUTPUT/ONLY field, meaning that updates to it are ignored. Note that an update cannot simultaneously set serve/nodes to non-zero and cluster/config.cluster/autoscaling/config to non-empty, and also specify both in the update/mask. To disable autoscaling, clear cluster/config.cluster/autoscaling/config, and explicitly set a serve/node count via the update_mask.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersPartialUpdateCluster' smart constructor.
data BigtableAdminProjectsInstancesClustersPartialUpdateCluster = BigtableAdminProjectsInstancesClustersPartialUpdateCluster
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique name of the cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/a-z*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Cluster,
    -- | Required. The subset of Cluster fields which should be replaced.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersPartialUpdateCluster' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersPartialUpdateCluster ::
  -- |  The unique name of the cluster. Values are of the form @projects\/{project}\/instances\/{instance}\/clusters\/a-z*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Cluster ->
  BigtableAdminProjectsInstancesClustersPartialUpdateCluster
newBigtableAdminProjectsInstancesClustersPartialUpdateCluster
  name
  payload =
    BigtableAdminProjectsInstancesClustersPartialUpdateCluster
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
    BigtableAdminProjectsInstancesClustersPartialUpdateCluster
  where
  type
    Rs BigtableAdminProjectsInstancesClustersPartialUpdateCluster =
      Operation
  type
    Scopes
      BigtableAdminProjectsInstancesClustersPartialUpdateCluster =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersPartialUpdateCluster {..} =
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
                  BigtableAdminProjectsInstancesClustersPartialUpdateClusterResource
            )
            Core.mempty
