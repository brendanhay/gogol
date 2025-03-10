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
-- Module      : Gogol.Container.Projects.Zones.Clusters.NodePools.SetManagement
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the NodeManagement options for a node pool.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.setManagement@.
module Gogol.Container.Projects.Zones.Clusters.NodePools.SetManagement
  ( -- * Resource
    ContainerProjectsZonesClustersNodePoolsSetManagementResource,

    -- ** Constructing a Request
    ContainerProjectsZonesClustersNodePoolsSetManagement (..),
    newContainerProjectsZonesClustersNodePoolsSetManagement,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.zones.clusters.nodePools.setManagement@ method which the
-- 'ContainerProjectsZonesClustersNodePoolsSetManagement' request conforms to.
type ContainerProjectsZonesClustersNodePoolsSetManagementResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.Capture "clusterId" Core.Text
    Core.:> "nodePools"
    Core.:> Core.Capture "nodePoolId" Core.Text
    Core.:> "setManagement"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetNodePoolManagementRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the NodeManagement options for a node pool.
--
-- /See:/ 'newContainerProjectsZonesClustersNodePoolsSetManagement' smart constructor.
data ContainerProjectsZonesClustersNodePoolsSetManagement = ContainerProjectsZonesClustersNodePoolsSetManagement
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.
    clusterId :: Core.Text,
    -- | Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field.
    nodePoolId :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetNodePoolManagementRequest,
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersNodePoolsSetManagement' with the minimum fields required to make a request.
newContainerProjectsZonesClustersNodePoolsSetManagement ::
  -- |  Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field. See 'clusterId'.
  Core.Text ->
  -- |  Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field. See 'nodePoolId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetNodePoolManagementRequest ->
  -- |  Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersNodePoolsSetManagement
newContainerProjectsZonesClustersNodePoolsSetManagement
  clusterId
  nodePoolId
  payload
  projectId
  zone =
    ContainerProjectsZonesClustersNodePoolsSetManagement
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        clusterId = clusterId,
        nodePoolId = nodePoolId,
        payload = payload,
        projectId = projectId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        zone = zone
      }

instance
  Core.GoogleRequest
    ContainerProjectsZonesClustersNodePoolsSetManagement
  where
  type
    Rs ContainerProjectsZonesClustersNodePoolsSetManagement =
      Operation
  type
    Scopes ContainerProjectsZonesClustersNodePoolsSetManagement =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsZonesClustersNodePoolsSetManagement {..} =
      go
        projectId
        zone
        clusterId
        nodePoolId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsZonesClustersNodePoolsSetManagementResource
            )
            Core.mempty
