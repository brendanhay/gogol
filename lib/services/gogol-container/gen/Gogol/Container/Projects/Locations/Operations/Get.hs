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
-- Module      : Gogol.Container.Projects.Locations.Operations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified operation.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.operations.get@.
module Gogol.Container.Projects.Locations.Operations.Get
  ( -- * Resource
    ContainerProjectsLocationsOperationsGetResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsOperationsGet (..),
    newContainerProjectsLocationsOperationsGet,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.locations.operations.get@ method which the
-- 'ContainerProjectsLocationsOperationsGet' request conforms to.
type ContainerProjectsLocationsOperationsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "operationId" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "zone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Operation

-- | Gets the specified operation.
--
-- /See:/ 'newContainerProjectsLocationsOperationsGet' smart constructor.
data ContainerProjectsLocationsOperationsGet = ContainerProjectsLocationsOperationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, operation id) of the operation to get. Specified in the format @projects\/*\/locations\/*\/operations\/*@.
    name :: Core.Text,
    -- | Deprecated. The server-assigned @name@ of the operation. This field has been deprecated and replaced by the name field.
    operationId :: (Core.Maybe Core.Text),
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

-- | Creates a value of 'ContainerProjectsLocationsOperationsGet' with the minimum fields required to make a request.
newContainerProjectsLocationsOperationsGet ::
  -- |  The name (project, location, operation id) of the operation to get. Specified in the format @projects\/*\/locations\/*\/operations\/*@. See 'name'.
  Core.Text ->
  ContainerProjectsLocationsOperationsGet
newContainerProjectsLocationsOperationsGet name =
  ContainerProjectsLocationsOperationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      operationId = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.GoogleRequest ContainerProjectsLocationsOperationsGet where
  type Rs ContainerProjectsLocationsOperationsGet = Operation
  type
    Scopes ContainerProjectsLocationsOperationsGet =
      '[CloudPlatform'FullControl]
  requestClient ContainerProjectsLocationsOperationsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      operationId
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
              Core.Proxy ContainerProjectsLocationsOperationsGetResource
          )
          Core.mempty
