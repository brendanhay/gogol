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
-- Module      : Gogol.Container.Projects.Locations.GetServerConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns configuration info about the Google Kubernetes Engine service.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.getServerConfig@.
module Gogol.Container.Projects.Locations.GetServerConfig
  ( -- * Resource
    ContainerProjectsLocationsGetServerConfigResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsGetServerConfig (..),
    newContainerProjectsLocationsGetServerConfig,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.getServerConfig@ method which the
-- 'ContainerProjectsLocationsGetServerConfig' request conforms to.
type ContainerProjectsLocationsGetServerConfigResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "serverConfig"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "zone" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ServerConfig

-- | Returns configuration info about the Google Kubernetes Engine service.
--
-- /See:/ 'newContainerProjectsLocationsGetServerConfig' smart constructor.
data ContainerProjectsLocationsGetServerConfig = ContainerProjectsLocationsGetServerConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project and location) of the server config to get, specified in the format @projects\/*\/locations\/*@.
    name :: Core.Text,
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> to return operations for. This field has been deprecated and replaced by the name field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsGetServerConfig' with the minimum fields required to make a request.
newContainerProjectsLocationsGetServerConfig ::
  -- |  The name (project and location) of the server config to get, specified in the format @projects\/*\/locations\/*@. See 'name'.
  Core.Text ->
  ContainerProjectsLocationsGetServerConfig
newContainerProjectsLocationsGetServerConfig name =
  ContainerProjectsLocationsGetServerConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsGetServerConfig
  where
  type
    Rs ContainerProjectsLocationsGetServerConfig =
      ServerConfig
  type
    Scopes ContainerProjectsLocationsGetServerConfig =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsGetServerConfig {..} =
      go
        name
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
                  ContainerProjectsLocationsGetServerConfigResource
            )
            Core.mempty
