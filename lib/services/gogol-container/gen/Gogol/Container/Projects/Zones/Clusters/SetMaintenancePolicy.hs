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
-- Module      : Gogol.Container.Projects.Zones.Clusters.SetMaintenancePolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the maintenance policy for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.setMaintenancePolicy@.
module Gogol.Container.Projects.Zones.Clusters.SetMaintenancePolicy
  ( -- * Resource
    ContainerProjectsZonesClustersSetMaintenancePolicyResource,

    -- ** Constructing a Request
    newContainerProjectsZonesClustersSetMaintenancePolicy,
    ContainerProjectsZonesClustersSetMaintenancePolicy,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.zones.clusters.setMaintenancePolicy@ method which the
-- 'ContainerProjectsZonesClustersSetMaintenancePolicy' request conforms to.
type ContainerProjectsZonesClustersSetMaintenancePolicyResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.CaptureMode
              "clusterId"
              "setMaintenancePolicy"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SetMaintenancePolicyRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the maintenance policy for a cluster.
--
-- /See:/ 'newContainerProjectsZonesClustersSetMaintenancePolicy' smart constructor.
data ContainerProjectsZonesClustersSetMaintenancePolicy = ContainerProjectsZonesClustersSetMaintenancePolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the cluster to update.
    clusterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetMaintenancePolicyRequest,
    -- | Required. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersSetMaintenancePolicy' with the minimum fields required to make a request.
newContainerProjectsZonesClustersSetMaintenancePolicy ::
  -- |  Required. The name of the cluster to update. See 'clusterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetMaintenancePolicyRequest ->
  -- |  Required. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. See 'projectId'.
  Core.Text ->
  -- |  Required. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersSetMaintenancePolicy
newContainerProjectsZonesClustersSetMaintenancePolicy clusterId payload projectId zone =
  ContainerProjectsZonesClustersSetMaintenancePolicy
    { xgafv = Core.Nothing,
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
    ContainerProjectsZonesClustersSetMaintenancePolicy
  where
  type
    Rs
      ContainerProjectsZonesClustersSetMaintenancePolicy =
      Operation
  type
    Scopes
      ContainerProjectsZonesClustersSetMaintenancePolicy =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsZonesClustersSetMaintenancePolicy {..} =
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
                Core.Proxy
                  ContainerProjectsZonesClustersSetMaintenancePolicyResource
            )
            Core.mempty
