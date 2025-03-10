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
-- Module      : Gogol.Container.Projects.Locations.Clusters.SetLegacyAbac
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setLegacyAbac@.
module Gogol.Container.Projects.Locations.Clusters.SetLegacyAbac
  ( -- * Resource
    ContainerProjectsLocationsClustersSetLegacyAbacResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersSetLegacyAbac (..),
    newContainerProjectsLocationsClustersSetLegacyAbac,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.clusters.setLegacyAbac@ method which the
-- 'ContainerProjectsLocationsClustersSetLegacyAbac' request conforms to.
type ContainerProjectsLocationsClustersSetLegacyAbacResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setLegacyAbac" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetLegacyAbacRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ 'newContainerProjectsLocationsClustersSetLegacyAbac' smart constructor.
data ContainerProjectsLocationsClustersSetLegacyAbac = ContainerProjectsLocationsClustersSetLegacyAbac
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to set legacy abac. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetLegacyAbacRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersSetLegacyAbac' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersSetLegacyAbac ::
  -- |  The name (project, location, cluster name) of the cluster to set legacy abac. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetLegacyAbacRequest ->
  ContainerProjectsLocationsClustersSetLegacyAbac
newContainerProjectsLocationsClustersSetLegacyAbac name payload =
  ContainerProjectsLocationsClustersSetLegacyAbac
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
    ContainerProjectsLocationsClustersSetLegacyAbac
  where
  type Rs ContainerProjectsLocationsClustersSetLegacyAbac = Operation
  type
    Scopes ContainerProjectsLocationsClustersSetLegacyAbac =
      '[CloudPlatform'FullControl]
  requestClient ContainerProjectsLocationsClustersSetLegacyAbac {..} =
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
              Core.Proxy ContainerProjectsLocationsClustersSetLegacyAbacResource
          )
          Core.mempty
