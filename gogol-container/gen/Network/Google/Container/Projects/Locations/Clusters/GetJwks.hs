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
-- Module      : Network.Google.Container.Projects.Locations.Clusters.GetJwks
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the public component of the cluster signing keys in JSON Web Key format. This API is not yet intended for general use, and is not available for all clusters.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.getJwks@.
module Network.Google.Container.Projects.Locations.Clusters.GetJwks
  ( -- * Resource
    ContainerProjectsLocationsClustersGetJwksResource,

    -- ** Constructing a Request
    newContainerProjectsLocationsClustersGetJwks,
    ContainerProjectsLocationsClustersGetJwks,
  )
where

import Network.Google.Container.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.getJwks@ method which the
-- 'ContainerProjectsLocationsClustersGetJwks' request conforms to.
type ContainerProjectsLocationsClustersGetJwksResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jwks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetJSONWebKeysResponse

-- | Gets the public component of the cluster signing keys in JSON Web Key format. This API is not yet intended for general use, and is not available for all clusters.
--
-- /See:/ 'newContainerProjectsLocationsClustersGetJwks' smart constructor.
data ContainerProjectsLocationsClustersGetJwks = ContainerProjectsLocationsClustersGetJwks
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The cluster (project, location, cluster name) to get keys for. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersGetJwks' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersGetJwks ::
  -- |  The cluster (project, location, cluster name) to get keys for. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'parent'.
  Core.Text ->
  ContainerProjectsLocationsClustersGetJwks
newContainerProjectsLocationsClustersGetJwks parent =
  ContainerProjectsLocationsClustersGetJwks
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerProjectsLocationsClustersGetJwks
  where
  type
    Rs ContainerProjectsLocationsClustersGetJwks =
      GetJSONWebKeysResponse
  type
    Scopes ContainerProjectsLocationsClustersGetJwks =
      '[]
  requestClient
    ContainerProjectsLocationsClustersGetJwks {..} =
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
                  ContainerProjectsLocationsClustersGetJwksResource
            )
            Core.mempty
