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
-- Module      : Gogol.Container.Projects.Locations.Clusters.NodePools.Rollback
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upgrade successfully completed.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.rollback@.
module Gogol.Container.Projects.Locations.Clusters.NodePools.Rollback
  ( -- * Resource
    ContainerProjectsLocationsClustersNodePoolsRollbackResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersNodePoolsRollback (..),
    newContainerProjectsLocationsClustersNodePoolsRollback,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.clusters.nodePools.rollback@ method which the
-- 'ContainerProjectsLocationsClustersNodePoolsRollback' request conforms to.
type ContainerProjectsLocationsClustersNodePoolsRollbackResource =
  "v1"
    Core.:> Core.CaptureMode "name" "rollback" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RollbackNodePoolUpgradeRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upgrade successfully completed.
--
-- /See:/ 'newContainerProjectsLocationsClustersNodePoolsRollback' smart constructor.
data ContainerProjectsLocationsClustersNodePoolsRollback = ContainerProjectsLocationsClustersNodePoolsRollback
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster, node pool id) of the node poll to rollback upgrade. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RollbackNodePoolUpgradeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersNodePoolsRollback' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersNodePoolsRollback ::
  -- |  The name (project, location, cluster, node pool id) of the node poll to rollback upgrade. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RollbackNodePoolUpgradeRequest ->
  ContainerProjectsLocationsClustersNodePoolsRollback
newContainerProjectsLocationsClustersNodePoolsRollback name payload =
  ContainerProjectsLocationsClustersNodePoolsRollback
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
    ContainerProjectsLocationsClustersNodePoolsRollback
  where
  type
    Rs ContainerProjectsLocationsClustersNodePoolsRollback =
      Operation
  type
    Scopes ContainerProjectsLocationsClustersNodePoolsRollback =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsClustersNodePoolsRollback {..} =
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
                  ContainerProjectsLocationsClustersNodePoolsRollbackResource
            )
            Core.mempty
