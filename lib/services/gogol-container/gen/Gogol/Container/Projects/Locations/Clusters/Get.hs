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
-- Module      : Gogol.Container.Projects.Locations.Clusters.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.get@.
module Gogol.Container.Projects.Locations.Clusters.Get
  ( -- * Resource
    ContainerProjectsLocationsClustersGetResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersGet (..),
    newContainerProjectsLocationsClustersGet,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.get@ method which the
-- 'ContainerProjectsLocationsClustersGet' request conforms to.
type ContainerProjectsLocationsClustersGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clusterId" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "zone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Cluster

-- | Gets the details of a specific cluster.
--
-- /See:/ 'newContainerProjectsLocationsClustersGet' smart constructor.
data ContainerProjectsLocationsClustersGet = ContainerProjectsLocationsClustersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster to retrieve. This field has been deprecated and replaced by the name field.
    clusterId :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to retrieve. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: Core.Text,
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersGet' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersGet ::
  -- |  The name (project, location, cluster) of the cluster to retrieve. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
  Core.Text ->
  ContainerProjectsLocationsClustersGet
newContainerProjectsLocationsClustersGet name =
  ContainerProjectsLocationsClustersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = Core.Nothing,
      name = name,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersGet
  where
  type
    Rs ContainerProjectsLocationsClustersGet =
      Cluster
  type
    Scopes ContainerProjectsLocationsClustersGet =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsClustersGet {..} =
      go
        name
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
                  ContainerProjectsLocationsClustersGetResource
            )
            Core.mempty
