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
-- Module      : Gogol.Container.Projects.Locations.Clusters.NodePools.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the node pools for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.list@.
module Gogol.Container.Projects.Locations.Clusters.NodePools.List
  ( -- * Resource
    ContainerProjectsLocationsClustersNodePoolsListResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersNodePoolsList (..),
    newContainerProjectsLocationsClustersNodePoolsList,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.nodePools.list@ method which the
-- 'ContainerProjectsLocationsClustersNodePoolsList' request conforms to.
type ContainerProjectsLocationsClustersNodePoolsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "nodePools"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clusterId" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "zone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListNodePoolsResponse

-- | Lists the node pools for a cluster.
--
-- /See:/ 'newContainerProjectsLocationsClustersNodePoolsList' smart constructor.
data ContainerProjectsLocationsClustersNodePoolsList = ContainerProjectsLocationsClustersNodePoolsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The parent (project, location, cluster name) where the node pools will be listed. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    parent :: Core.Text,
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the parent field.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the parent field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersNodePoolsList' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersNodePoolsList ::
  -- |  The parent (project, location, cluster name) where the node pools will be listed. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'parent'.
  Core.Text ->
  ContainerProjectsLocationsClustersNodePoolsList
newContainerProjectsLocationsClustersNodePoolsList parent =
  ContainerProjectsLocationsClustersNodePoolsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = Core.Nothing,
      parent = parent,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersNodePoolsList
  where
  type
    Rs
      ContainerProjectsLocationsClustersNodePoolsList =
      ListNodePoolsResponse
  type
    Scopes
      ContainerProjectsLocationsClustersNodePoolsList =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsClustersNodePoolsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        clusterId
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
                  ContainerProjectsLocationsClustersNodePoolsListResource
            )
            Core.mempty
