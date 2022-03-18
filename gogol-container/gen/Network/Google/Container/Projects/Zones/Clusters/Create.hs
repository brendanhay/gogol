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
-- Module      : Network.Google.Container.Projects.Zones.Clusters.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project\'s <https://cloud.google.com/compute/docs/networks-and-firewalls#networks default network>. One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project\'s global metadata indicating which CIDR range the cluster is using.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.create@.
module Network.Google.Container.Projects.Zones.Clusters.Create
  ( -- * Resource
    ContainerProjectsZonesClustersCreateResource,

    -- ** Constructing a Request
    newContainerProjectsZonesClustersCreate,
    ContainerProjectsZonesClustersCreate,
  )
where

import Network.Google.Container.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @container.projects.zones.clusters.create@ method which the
-- 'ContainerProjectsZonesClustersCreate' request conforms to.
type ContainerProjectsZonesClustersCreateResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateClusterRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project\'s <https://cloud.google.com/compute/docs/networks-and-firewalls#networks default network>. One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project\'s global metadata indicating which CIDR range the cluster is using.
--
-- /See:/ 'newContainerProjectsZonesClustersCreate' smart constructor.
data ContainerProjectsZonesClustersCreate = ContainerProjectsZonesClustersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CreateClusterRequest,
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the parent field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the parent field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersCreate' with the minimum fields required to make a request.
newContainerProjectsZonesClustersCreate ::
  -- |  Multipart request metadata. See 'payload'.
  CreateClusterRequest ->
  -- |  Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the parent field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the parent field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersCreate
newContainerProjectsZonesClustersCreate payload projectId zone =
  ContainerProjectsZonesClustersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ContainerProjectsZonesClustersCreate
  where
  type
    Rs ContainerProjectsZonesClustersCreate =
      Operation
  type
    Scopes ContainerProjectsZonesClustersCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerProjectsZonesClustersCreate {..} =
      go
        projectId
        zone
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
                  ContainerProjectsZonesClustersCreateResource
            )
            Core.mempty
