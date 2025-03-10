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
-- Module      : Gogol.Container.Projects.Locations.Clusters.SetResourceLabels
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets labels on a cluster.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setResourceLabels@.
module Gogol.Container.Projects.Locations.Clusters.SetResourceLabels
  ( -- * Resource
    ContainerProjectsLocationsClustersSetResourceLabelsResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersSetResourceLabels (..),
    newContainerProjectsLocationsClustersSetResourceLabels,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.clusters.setResourceLabels@ method which the
-- 'ContainerProjectsLocationsClustersSetResourceLabels' request conforms to.
type ContainerProjectsLocationsClustersSetResourceLabelsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setResourceLabels" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetLabelsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets labels on a cluster.
--
-- /See:/ 'newContainerProjectsLocationsClustersSetResourceLabels' smart constructor.
data ContainerProjectsLocationsClustersSetResourceLabels = ContainerProjectsLocationsClustersSetResourceLabels
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to set labels. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetLabelsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersSetResourceLabels' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersSetResourceLabels ::
  -- |  The name (project, location, cluster name) of the cluster to set labels. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetLabelsRequest ->
  ContainerProjectsLocationsClustersSetResourceLabels
newContainerProjectsLocationsClustersSetResourceLabels name payload =
  ContainerProjectsLocationsClustersSetResourceLabels
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
    ContainerProjectsLocationsClustersSetResourceLabels
  where
  type
    Rs ContainerProjectsLocationsClustersSetResourceLabels =
      Operation
  type
    Scopes ContainerProjectsLocationsClustersSetResourceLabels =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsClustersSetResourceLabels {..} =
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
                  ContainerProjectsLocationsClustersSetResourceLabelsResource
            )
            Core.mempty
