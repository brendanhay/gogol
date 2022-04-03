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
-- Module      : Gogol.Container.Projects.Locations.Clusters.SetMasterAuth
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setMasterAuth@.
module Gogol.Container.Projects.Locations.Clusters.SetMasterAuth
  ( -- * Resource
    ContainerProjectsLocationsClustersSetMasterAuthResource,

    -- ** Constructing a Request
    ContainerProjectsLocationsClustersSetMasterAuth (..),
    newContainerProjectsLocationsClustersSetMasterAuth,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.setMasterAuth@ method which the
-- 'ContainerProjectsLocationsClustersSetMasterAuth' request conforms to.
type ContainerProjectsLocationsClustersSetMasterAuthResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setMasterAuth" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetMasterAuthRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.
--
-- /See:/ 'newContainerProjectsLocationsClustersSetMasterAuth' smart constructor.
data ContainerProjectsLocationsClustersSetMasterAuth = ContainerProjectsLocationsClustersSetMasterAuth
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to set auth. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetMasterAuthRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersSetMasterAuth' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersSetMasterAuth ::
  -- |  The name (project, location, cluster) of the cluster to set auth. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetMasterAuthRequest ->
  ContainerProjectsLocationsClustersSetMasterAuth
newContainerProjectsLocationsClustersSetMasterAuth name payload =
  ContainerProjectsLocationsClustersSetMasterAuth
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersSetMasterAuth
  where
  type
    Rs
      ContainerProjectsLocationsClustersSetMasterAuth =
      Operation
  type
    Scopes
      ContainerProjectsLocationsClustersSetMasterAuth =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsLocationsClustersSetMasterAuth {..} =
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
                  ContainerProjectsLocationsClustersSetMasterAuthResource
            )
            Core.mempty
