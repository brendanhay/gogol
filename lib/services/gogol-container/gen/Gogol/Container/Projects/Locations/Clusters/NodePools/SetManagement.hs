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
-- Module      : Gogol.Container.Projects.Locations.Clusters.NodePools.SetManagement
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the NodeManagement options for a node pool.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.setManagement@.
module Gogol.Container.Projects.Locations.Clusters.NodePools.SetManagement
  ( -- * Resource
    ContainerProjectsLocationsClustersNodePoolsSetManagementResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersNodePoolsSetManagement (..),
    newContainerProjectsLocationsClustersNodePoolsSetManagement,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.clusters.nodePools.setManagement@ method which the
-- 'ContainerProjectsLocationsClustersNodePoolsSetManagement' request conforms to.
type ContainerProjectsLocationsClustersNodePoolsSetManagementResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setManagement" Core.Text
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
-- /See:/ 'newContainerProjectsLocationsClustersNodePoolsSetManagement' smart constructor.
data ContainerProjectsLocationsClustersNodePoolsSetManagement = ContainerProjectsLocationsClustersNodePoolsSetManagement
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster, node pool id) of the node pool to set management properties. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetNodePoolManagementRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersNodePoolsSetManagement' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersNodePoolsSetManagement ::
  -- |  The name (project, location, cluster, node pool id) of the node pool to set management properties. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetNodePoolManagementRequest ->
  ContainerProjectsLocationsClustersNodePoolsSetManagement
newContainerProjectsLocationsClustersNodePoolsSetManagement
  name
  payload =
    ContainerProjectsLocationsClustersNodePoolsSetManagement
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersNodePoolsSetManagement
  where
  type
    Rs ContainerProjectsLocationsClustersNodePoolsSetManagement =
      Operation
  type
    Scopes
      ContainerProjectsLocationsClustersNodePoolsSetManagement =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsClustersNodePoolsSetManagement {..} =
      go
        name
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
                  ContainerProjectsLocationsClustersNodePoolsSetManagementResource
            )
            Core.mempty
