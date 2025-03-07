{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Container.Projects.Locations.Clusters.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project\'s <https://cloud.google.com/compute/docs/networks-and-firewalls#networks default network>. One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project\'s global metadata indicating which CIDR range the cluster is using.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.create@.
module Gogol.Container.Projects.Locations.Clusters.Create
  ( -- * Resource
    ContainerProjectsLocationsClustersCreateResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersCreate (..),
    newContainerProjectsLocationsClustersCreate,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.clusters.create@ method which the
-- 'ContainerProjectsLocationsClustersCreate' request conforms to.
type ContainerProjectsLocationsClustersCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
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
-- /See:/ 'newContainerProjectsLocationsClustersCreate' smart constructor.
data ContainerProjectsLocationsClustersCreate = ContainerProjectsLocationsClustersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The parent (project and location) where the cluster will be created. Specified in the format @projects\/*\/locations\/*@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateClusterRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersCreate' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersCreate ::
  -- |  The parent (project and location) where the cluster will be created. Specified in the format @projects\/*\/locations\/*@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateClusterRequest ->
  ContainerProjectsLocationsClustersCreate
newContainerProjectsLocationsClustersCreate parent payload =
  ContainerProjectsLocationsClustersCreate
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
    ContainerProjectsLocationsClustersCreate
  where
  type Rs ContainerProjectsLocationsClustersCreate = Operation
  type
    Scopes ContainerProjectsLocationsClustersCreate =
      '[CloudPlatform'FullControl]
  requestClient ContainerProjectsLocationsClustersCreate {..} =
    go
      parent
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
              Core.Proxy ContainerProjectsLocationsClustersCreateResource
          )
          Core.mempty
