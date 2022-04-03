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
-- Module      : Gogol.Container.Projects.Zones.Clusters.NodePools.Autoscaling
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the autoscaling settings for the specified node pool.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.nodePools.autoscaling@.
module Gogol.Container.Projects.Zones.Clusters.NodePools.Autoscaling
  ( -- * Resource
    ContainerProjectsZonesClustersNodePoolsAutoscalingResource,

    -- ** Constructing a Request
    ContainerProjectsZonesClustersNodePoolsAutoscaling (..),
    newContainerProjectsZonesClustersNodePoolsAutoscaling,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.zones.clusters.nodePools.autoscaling@ method which the
-- 'ContainerProjectsZonesClustersNodePoolsAutoscaling' request conforms to.
type ContainerProjectsZonesClustersNodePoolsAutoscalingResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.Capture "clusterId" Core.Text
    Core.:> "nodePools"
    Core.:> Core.Capture "nodePoolId" Core.Text
    Core.:> "autoscaling"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SetNodePoolAutoscalingRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the autoscaling settings for the specified node pool.
--
-- /See:/ 'newContainerProjectsZonesClustersNodePoolsAutoscaling' smart constructor.
data ContainerProjectsZonesClustersNodePoolsAutoscaling = ContainerProjectsZonesClustersNodePoolsAutoscaling
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    clusterId :: Core.Text,
    -- | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.
    nodePoolId :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetNodePoolAutoscalingRequest,
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

-- | Creates a value of 'ContainerProjectsZonesClustersNodePoolsAutoscaling' with the minimum fields required to make a request.
newContainerProjectsZonesClustersNodePoolsAutoscaling ::
  -- |  Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. See 'clusterId'.
  Core.Text ->
  -- |  Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field. See 'nodePoolId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetNodePoolAutoscalingRequest ->
  -- |  Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersNodePoolsAutoscaling
newContainerProjectsZonesClustersNodePoolsAutoscaling clusterId nodePoolId payload projectId zone =
  ContainerProjectsZonesClustersNodePoolsAutoscaling
    { xgafv = Core.Nothing,
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
    ContainerProjectsZonesClustersNodePoolsAutoscaling
  where
  type
    Rs
      ContainerProjectsZonesClustersNodePoolsAutoscaling =
      Operation
  type
    Scopes
      ContainerProjectsZonesClustersNodePoolsAutoscaling =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsZonesClustersNodePoolsAutoscaling {..} =
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
                  ContainerProjectsZonesClustersNodePoolsAutoscalingResource
            )
            Core.mempty
