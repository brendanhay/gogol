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
-- Module      : Gogol.Container.Projects.Locations.Clusters.NodePools.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the requested node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.get@.
module Gogol.Container.Projects.Locations.Clusters.NodePools.Get
  ( -- * Resource
    ContainerProjectsLocationsClustersNodePoolsGetResource,

    -- ** Constructing a Request
    newContainerProjectsLocationsClustersNodePoolsGet,
    ContainerProjectsLocationsClustersNodePoolsGet,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.nodePools.get@ method which the
-- 'ContainerProjectsLocationsClustersNodePoolsGet' request conforms to.
type ContainerProjectsLocationsClustersNodePoolsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clusterId" Core.Text
    Core.:> Core.QueryParam "nodePoolId" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "zone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] NodePool

-- | Retrieves the requested node pool.
--
-- /See:/ 'newContainerProjectsLocationsClustersNodePoolsGet' smart constructor.
data ContainerProjectsLocationsClustersNodePoolsGet = ContainerProjectsLocationsClustersNodePoolsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster, node pool id) of the node pool to get. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: Core.Text,
    -- | Deprecated. The name of the node pool. This field has been deprecated and replaced by the name field.
    nodePoolId :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersNodePoolsGet' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersNodePoolsGet ::
  -- |  The name (project, location, cluster, node pool id) of the node pool to get. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@. See 'name'.
  Core.Text ->
  ContainerProjectsLocationsClustersNodePoolsGet
newContainerProjectsLocationsClustersNodePoolsGet name =
  ContainerProjectsLocationsClustersNodePoolsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = Core.Nothing,
      name = name,
      nodePoolId = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersNodePoolsGet
  where
  type
    Rs
      ContainerProjectsLocationsClustersNodePoolsGet =
      NodePool
  type
    Scopes
      ContainerProjectsLocationsClustersNodePoolsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerProjectsLocationsClustersNodePoolsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        clusterId
        nodePoolId
        projectId
        uploadType
        uploadProtocol
        zone
        (Core.Just Core.AltJSON)
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsLocationsClustersNodePoolsGetResource
            )
            Core.mempty
