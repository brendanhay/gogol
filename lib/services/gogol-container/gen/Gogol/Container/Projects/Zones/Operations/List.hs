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
-- Module      : Gogol.Container.Projects.Zones.Operations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.zones.operations.list@.
module Gogol.Container.Projects.Zones.Operations.List
  ( -- * Resource
    ContainerProjectsZonesOperationsListResource,

    -- ** Constructing a Request
    ContainerProjectsZonesOperationsList (..),
    newContainerProjectsZonesOperationsList,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.zones.operations.list@ method which the
-- 'ContainerProjectsZonesOperationsList' request conforms to.
type ContainerProjectsZonesOperationsListResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "operations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ 'newContainerProjectsZonesOperationsList' smart constructor.
data ContainerProjectsZonesOperationsList = ContainerProjectsZonesOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The parent (project and location) where the operations will be listed. Specified in the format @projects\/*\/locations\/*@. Location \"-\" matches all zones and all regions.
    parent :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the parent field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> to return operations for, or @-@ for all zones. This field has been deprecated and replaced by the parent field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesOperationsList' with the minimum fields required to make a request.
newContainerProjectsZonesOperationsList ::
  -- |  Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the parent field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> to return operations for, or @-@ for all zones. This field has been deprecated and replaced by the parent field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesOperationsList
newContainerProjectsZonesOperationsList projectId zone =
  ContainerProjectsZonesOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance Core.GoogleRequest ContainerProjectsZonesOperationsList where
  type
    Rs ContainerProjectsZonesOperationsList =
      ListOperationsResponse
  type
    Scopes ContainerProjectsZonesOperationsList =
      '[CloudPlatform'FullControl]
  requestClient ContainerProjectsZonesOperationsList {..} =
    go
      projectId
      zone
      xgafv
      accessToken
      callback
      parent
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      containerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContainerProjectsZonesOperationsListResource
          )
          Core.mempty
