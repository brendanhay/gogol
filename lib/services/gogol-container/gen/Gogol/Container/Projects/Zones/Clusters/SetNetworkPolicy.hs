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
-- Module      : Gogol.Container.Projects.Zones.Clusters.SetNetworkPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables Network Policy for a cluster.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.setNetworkPolicy@.
module Gogol.Container.Projects.Zones.Clusters.SetNetworkPolicy
  ( -- * Resource
    ContainerProjectsZonesClustersSetNetworkPolicyResource,

    -- ** Constructing a Request
    ContainerProjectsZonesClustersSetNetworkPolicy (..),
    newContainerProjectsZonesClustersSetNetworkPolicy,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.zones.clusters.setNetworkPolicy@ method which the
-- 'ContainerProjectsZonesClustersSetNetworkPolicy' request conforms to.
type ContainerProjectsZonesClustersSetNetworkPolicyResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.CaptureMode "clusterId" "setNetworkPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetNetworkPolicyRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enables or disables Network Policy for a cluster.
--
-- /See:/ 'newContainerProjectsZonesClustersSetNetworkPolicy' smart constructor.
data ContainerProjectsZonesClustersSetNetworkPolicy = ContainerProjectsZonesClustersSetNetworkPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    clusterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetNetworkPolicyRequest,
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

-- | Creates a value of 'ContainerProjectsZonesClustersSetNetworkPolicy' with the minimum fields required to make a request.
newContainerProjectsZonesClustersSetNetworkPolicy ::
  -- |  Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. See 'clusterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetNetworkPolicyRequest ->
  -- |  Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersSetNetworkPolicy
newContainerProjectsZonesClustersSetNetworkPolicy
  clusterId
  payload
  projectId
  zone =
    ContainerProjectsZonesClustersSetNetworkPolicy
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        clusterId = clusterId,
        payload = payload,
        projectId = projectId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        zone = zone
      }

instance
  Core.GoogleRequest
    ContainerProjectsZonesClustersSetNetworkPolicy
  where
  type Rs ContainerProjectsZonesClustersSetNetworkPolicy = Operation
  type
    Scopes ContainerProjectsZonesClustersSetNetworkPolicy =
      '[CloudPlatform'FullControl]
  requestClient ContainerProjectsZonesClustersSetNetworkPolicy {..} =
    go
      projectId
      zone
      clusterId
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
              Core.Proxy ContainerProjectsZonesClustersSetNetworkPolicyResource
          )
          Core.mempty
