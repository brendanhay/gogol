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
-- Module      : Network.Google.Container.Projects.Locations.Clusters.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all clusters owned by a project in either the specified zone or all zones.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.list@.
module Network.Google.Container.Projects.Locations.Clusters.List
  ( -- * Resource
    ContainerProjectsLocationsClustersListResource,

    -- ** Constructing a Request
    newContainerProjectsLocationsClustersList,
    ContainerProjectsLocationsClustersList,
  )
where

import Network.Google.Container.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.list@ method which the
-- 'ContainerProjectsLocationsClustersList' request conforms to.
type ContainerProjectsLocationsClustersListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "clusters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "zone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListClustersResponse

-- | Lists all clusters owned by a project in either the specified zone or all zones.
--
-- /See:/ 'newContainerProjectsLocationsClustersList' smart constructor.
data ContainerProjectsLocationsClustersList = ContainerProjectsLocationsClustersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The parent (project and location) where the clusters will be listed. Specified in the format @projects\/*\/locations\/*@. Location \"-\" matches all zones and all regions.
    parent :: Core.Text,
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the parent field.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides, or \"-\" for all zones. This field has been deprecated and replaced by the parent field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersList' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersList ::
  -- |  The parent (project and location) where the clusters will be listed. Specified in the format @projects\/*\/locations\/*@. Location \"-\" matches all zones and all regions. See 'parent'.
  Core.Text ->
  ContainerProjectsLocationsClustersList
newContainerProjectsLocationsClustersList parent =
  ContainerProjectsLocationsClustersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersList
  where
  type
    Rs ContainerProjectsLocationsClustersList =
      ListClustersResponse
  type
    Scopes ContainerProjectsLocationsClustersList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerProjectsLocationsClustersList {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  ContainerProjectsLocationsClustersListResource
            )
            Core.mempty
