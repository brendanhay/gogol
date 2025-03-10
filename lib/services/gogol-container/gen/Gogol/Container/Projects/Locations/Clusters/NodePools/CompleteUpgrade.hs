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
-- Module      : Gogol.Container.Projects.Locations.Clusters.NodePools.CompleteUpgrade
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- CompleteNodePoolUpgrade will signal an on-going node pool upgrade to complete.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.completeUpgrade@.
module Gogol.Container.Projects.Locations.Clusters.NodePools.CompleteUpgrade
  ( -- * Resource
    ContainerProjectsLocationsClustersNodePoolsCompleteUpgradeResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade (..),
    newContainerProjectsLocationsClustersNodePoolsCompleteUpgrade,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.clusters.nodePools.completeUpgrade@ method which the
-- 'ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade' request conforms to.
type ContainerProjectsLocationsClustersNodePoolsCompleteUpgradeResource =
  "v1"
    Core.:> Core.CaptureMode "name" "completeUpgrade" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CompleteNodePoolUpgradeRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | CompleteNodePoolUpgrade will signal an on-going node pool upgrade to complete.
--
-- /See:/ 'newContainerProjectsLocationsClustersNodePoolsCompleteUpgrade' smart constructor.
data ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade = ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster, node pool id) of the node pool to complete upgrade. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CompleteNodePoolUpgradeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersNodePoolsCompleteUpgrade ::
  -- |  The name (project, location, cluster, node pool id) of the node pool to complete upgrade. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CompleteNodePoolUpgradeRequest ->
  ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade
newContainerProjectsLocationsClustersNodePoolsCompleteUpgrade
  name
  payload =
    ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade
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
    ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade
  where
  type
    Rs ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade =
      Empty
  type
    Scopes
      ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsClustersNodePoolsCompleteUpgrade {..} =
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
                  ContainerProjectsLocationsClustersNodePoolsCompleteUpgradeResource
            )
            Core.mempty
