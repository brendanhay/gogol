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
-- Module      : Gogol.Container.Projects.Locations.Clusters.SetNetworkPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables Network Policy for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setNetworkPolicy@.
module Gogol.Container.Projects.Locations.Clusters.SetNetworkPolicy
  ( -- * Resource
    ContainerProjectsLocationsClustersSetNetworkPolicyResource,

    -- ** Constructing a Request
    newContainerProjectsLocationsClustersSetNetworkPolicy,
    ContainerProjectsLocationsClustersSetNetworkPolicy,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.setNetworkPolicy@ method which the
-- 'ContainerProjectsLocationsClustersSetNetworkPolicy' request conforms to.
type ContainerProjectsLocationsClustersSetNetworkPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setNetworkPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetNetworkPolicyRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enables or disables Network Policy for a cluster.
--
-- /See:/ 'newContainerProjectsLocationsClustersSetNetworkPolicy' smart constructor.
data ContainerProjectsLocationsClustersSetNetworkPolicy = ContainerProjectsLocationsClustersSetNetworkPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster name) of the cluster to set networking policy. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetNetworkPolicyRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersSetNetworkPolicy' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersSetNetworkPolicy ::
  -- |  The name (project, location, cluster name) of the cluster to set networking policy. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetNetworkPolicyRequest ->
  ContainerProjectsLocationsClustersSetNetworkPolicy
newContainerProjectsLocationsClustersSetNetworkPolicy name payload =
  ContainerProjectsLocationsClustersSetNetworkPolicy
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
    ContainerProjectsLocationsClustersSetNetworkPolicy
  where
  type
    Rs
      ContainerProjectsLocationsClustersSetNetworkPolicy =
      Operation
  type
    Scopes
      ContainerProjectsLocationsClustersSetNetworkPolicy =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerProjectsLocationsClustersSetNetworkPolicy {..} =
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
                  ContainerProjectsLocationsClustersSetNetworkPolicyResource
            )
            Core.mempty
