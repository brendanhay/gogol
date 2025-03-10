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
-- Module      : Gogol.Container.Projects.Locations.Clusters.SetLocations
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the locations for a specific cluster. Deprecated. Use <https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update projects.locations.clusters.update> instead.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setLocations@.
module Gogol.Container.Projects.Locations.Clusters.SetLocations
  ( -- * Resource
    ContainerProjectsLocationsClustersSetLocationsResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersSetLocations (..),
    newContainerProjectsLocationsClustersSetLocations,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.clusters.setLocations@ method which the
-- 'ContainerProjectsLocationsClustersSetLocations' request conforms to.
type ContainerProjectsLocationsClustersSetLocationsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setLocations" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetLocationsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the locations for a specific cluster. Deprecated. Use <https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update projects.locations.clusters.update> instead.
--
-- /See:/ 'newContainerProjectsLocationsClustersSetLocations' smart constructor.
data ContainerProjectsLocationsClustersSetLocations = ContainerProjectsLocationsClustersSetLocations
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to set locations. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetLocationsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersSetLocations' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersSetLocations ::
  -- |  The name (project, location, cluster) of the cluster to set locations. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetLocationsRequest ->
  ContainerProjectsLocationsClustersSetLocations
newContainerProjectsLocationsClustersSetLocations name payload =
  ContainerProjectsLocationsClustersSetLocations
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
    ContainerProjectsLocationsClustersSetLocations
  where
  type Rs ContainerProjectsLocationsClustersSetLocations = Operation
  type
    Scopes ContainerProjectsLocationsClustersSetLocations =
      '[CloudPlatform'FullControl]
  requestClient ContainerProjectsLocationsClustersSetLocations {..} =
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
              Core.Proxy ContainerProjectsLocationsClustersSetLocationsResource
          )
          Core.mempty
