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
-- Module      : Gogol.Container.Projects.Zones.GetServerconfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns configuration info about the Google Kubernetes Engine service.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.getServerconfig@.
module Gogol.Container.Projects.Zones.GetServerconfig
  ( -- * Resource
    ContainerProjectsZonesGetServerconfigResource,

    -- ** Constructing a Request
    ContainerProjectsZonesGetServerconfig (..),
    newContainerProjectsZonesGetServerconfig,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.zones.getServerconfig@ method which the
-- 'ContainerProjectsZonesGetServerconfig' request conforms to.
type ContainerProjectsZonesGetServerconfigResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "serverconfig"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ServerConfig

-- | Returns configuration info about the Google Kubernetes Engine service.
--
-- /See:/ 'newContainerProjectsZonesGetServerconfig' smart constructor.
data ContainerProjectsZonesGetServerconfig = ContainerProjectsZonesGetServerconfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project and location) of the server config to get, specified in the format @projects\/*\/locations\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> to return operations for. This field has been deprecated and replaced by the name field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesGetServerconfig' with the minimum fields required to make a request.
newContainerProjectsZonesGetServerconfig ::
  -- |  Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> to return operations for. This field has been deprecated and replaced by the name field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesGetServerconfig
newContainerProjectsZonesGetServerconfig projectId zone =
  ContainerProjectsZonesGetServerconfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ContainerProjectsZonesGetServerconfig
  where
  type
    Rs ContainerProjectsZonesGetServerconfig =
      ServerConfig
  type
    Scopes ContainerProjectsZonesGetServerconfig =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsZonesGetServerconfig {..} =
      go
        projectId
        zone
        xgafv
        accessToken
        callback
        name
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsZonesGetServerconfigResource
            )
            Core.mempty
