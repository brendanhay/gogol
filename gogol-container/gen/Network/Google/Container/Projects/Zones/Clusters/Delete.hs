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
-- Module      : Network.Google.Container.Projects.Zones.Clusters.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes that were configured during cluster creation are also deleted. Other Google Compute Engine resources that might be in use by the cluster, such as load balancer resources, are not deleted if they weren\'t present when the cluster was initially created.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.delete@.
module Network.Google.Container.Projects.Zones.Clusters.Delete
  ( -- * Resource
    ContainerProjectsZonesClustersDeleteResource,

    -- ** Constructing a Request
    newContainerProjectsZonesClustersDelete,
    ContainerProjectsZonesClustersDelete,
  )
where

import Network.Google.Container.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @container.projects.zones.clusters.delete@ method which the
-- 'ContainerProjectsZonesClustersDelete' request conforms to.
type ContainerProjectsZonesClustersDeleteResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.Capture "clusterId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes that were configured during cluster creation are also deleted. Other Google Compute Engine resources that might be in use by the cluster, such as load balancer resources, are not deleted if they weren\'t present when the cluster was initially created.
--
-- /See:/ 'newContainerProjectsZonesClustersDelete' smart constructor.
data ContainerProjectsZonesClustersDelete = ContainerProjectsZonesClustersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster to delete. This field has been deprecated and replaced by the name field.
    clusterId :: Core.Text,
    -- | The name (project, location, cluster) of the cluster to delete. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersDelete' with the minimum fields required to make a request.
newContainerProjectsZonesClustersDelete ::
  -- |  Deprecated. The name of the cluster to delete. This field has been deprecated and replaced by the name field. See 'clusterId'.
  Core.Text ->
  -- |  Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersDelete
newContainerProjectsZonesClustersDelete clusterId projectId zone =
  ContainerProjectsZonesClustersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = clusterId,
      name = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ContainerProjectsZonesClustersDelete
  where
  type
    Rs ContainerProjectsZonesClustersDelete =
      Operation
  type
    Scopes ContainerProjectsZonesClustersDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerProjectsZonesClustersDelete {..} =
      go
        projectId
        zone
        clusterId
        xgafv
        accessToken
        callback
        name
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsZonesClustersDeleteResource
            )
            Core.mempty
