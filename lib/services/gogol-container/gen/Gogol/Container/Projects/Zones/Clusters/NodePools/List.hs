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
-- Module      : Gogol.Container.Projects.Zones.Clusters.NodePools.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the node pools for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.list@.
module Gogol.Container.Projects.Zones.Clusters.NodePools.List
  ( -- * Resource
    ContainerProjectsZonesClustersNodePoolsListResource,

    -- ** Constructing a Request
    ContainerProjectsZonesClustersNodePoolsList (..),
    newContainerProjectsZonesClustersNodePoolsList,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.zones.clusters.nodePools.list@ method which the
-- 'ContainerProjectsZonesClustersNodePoolsList' request conforms to.
type ContainerProjectsZonesClustersNodePoolsListResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.Capture "clusterId" Core.Text
    Core.:> "nodePools"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListNodePoolsResponse

-- | Lists the node pools for a cluster.
--
-- /See:/ 'newContainerProjectsZonesClustersNodePoolsList' smart constructor.
data ContainerProjectsZonesClustersNodePoolsList = ContainerProjectsZonesClustersNodePoolsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
    clusterId :: Core.Text,
    -- | The parent (project, location, cluster name) where the node pools will be listed. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    parent :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the parent field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the parent field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersNodePoolsList' with the minimum fields required to make a request.
newContainerProjectsZonesClustersNodePoolsList ::
  -- |  Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field. See 'clusterId'.
  Core.Text ->
  -- |  Deprecated. The Google Developers Console <https://developers.google.com/console/help/new/#projectnumber project ID or project number>. This field has been deprecated and replaced by the parent field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the parent field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersNodePoolsList
newContainerProjectsZonesClustersNodePoolsList clusterId projectId zone =
  ContainerProjectsZonesClustersNodePoolsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = clusterId,
      parent = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ContainerProjectsZonesClustersNodePoolsList
  where
  type
    Rs ContainerProjectsZonesClustersNodePoolsList =
      ListNodePoolsResponse
  type
    Scopes
      ContainerProjectsZonesClustersNodePoolsList =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsZonesClustersNodePoolsList {..} =
      go
        projectId
        zone
        clusterId
        xgafv
        accessToken
        callback
        parent
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsZonesClustersNodePoolsListResource
            )
            Core.mempty
