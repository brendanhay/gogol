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
-- Module      : Gogol.Container.Projects.Locations.Clusters.Wellknown.GetOpenidconfiguration
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the OIDC discovery document for the cluster. See the <https://openid.net/specs/openid-connect-discovery-1_0.html OpenID Connect Discovery 1.0 specification> for details. This API is not yet intended for general use, and is not available for all clusters.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.wellknown.getOpenidconfiguration@.
module Gogol.Container.Projects.Locations.Clusters.Wellknown.GetOpenidconfiguration
  ( -- * Resource
    ContainerProjectsLocationsClustersWellknownGetOpenidconfigurationResource,

    -- ** Constructing a Request
    newContainerProjectsLocationsClustersWellknownGetOpenidconfiguration,
    ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.wellknown.getOpenidconfiguration@ method which the
-- 'ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration' request conforms to.
type ContainerProjectsLocationsClustersWellknownGetOpenidconfigurationResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> ".well-known"
    Core.:> "openid-configuration"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetOpenIDConfigResponse

-- | Gets the OIDC discovery document for the cluster. See the <https://openid.net/specs/openid-connect-discovery-1_0.html OpenID Connect Discovery 1.0 specification> for details. This API is not yet intended for general use, and is not available for all clusters.
--
-- /See:/ 'newContainerProjectsLocationsClustersWellknownGetOpenidconfiguration' smart constructor.
data ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration = ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The cluster (project, location, cluster name) to get the discovery document for. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersWellknownGetOpenidconfiguration ::
  -- |  The cluster (project, location, cluster name) to get the discovery document for. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'parent'.
  Core.Text ->
  ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration
newContainerProjectsLocationsClustersWellknownGetOpenidconfiguration parent =
  ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration
  where
  type
    Rs
      ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration =
      GetOpenIDConfigResponse
  type
    Scopes
      ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration =
      '[]
  requestClient
    ContainerProjectsLocationsClustersWellknownGetOpenidconfiguration {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsLocationsClustersWellknownGetOpenidconfigurationResource
            )
            Core.mempty
