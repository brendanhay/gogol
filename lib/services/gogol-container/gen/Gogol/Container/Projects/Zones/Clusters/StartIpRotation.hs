{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Container.Projects.Zones.Clusters.StartIpRotation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts master IP rotation.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.startIpRotation@.
module Gogol.Container.Projects.Zones.Clusters.StartIpRotation
    (
    -- * Resource
      ContainerProjectsZonesClustersStartIpRotationResource

    -- ** Constructing a Request
    , ContainerProjectsZonesClustersStartIpRotation (..)
    , newContainerProjectsZonesClustersStartIpRotation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.zones.clusters.startIpRotation@ method which the
-- 'ContainerProjectsZonesClustersStartIpRotation' request conforms to.
type ContainerProjectsZonesClustersStartIpRotationResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "zones" Core.:>
             Core.Capture "zone" Core.Text Core.:>
               "clusters" Core.:>
                 Core.CaptureMode "clusterId" "startIpRotation"
                   Core.Text
                   Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] StartIPRotationRequest
                                 Core.:> Core.Post '[Core.JSON] Operation

-- | Starts master IP rotation.
--
-- /See:/ 'newContainerProjectsZonesClustersStartIpRotation' smart constructor.
data ContainerProjectsZonesClustersStartIpRotation = ContainerProjectsZonesClustersStartIpRotation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.
    , clusterId :: Core.Text
      -- | Multipart request metadata.
    , payload :: StartIPRotationRequest
      -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersStartIpRotation' with the minimum fields required to make a request.
newContainerProjectsZonesClustersStartIpRotation 
    ::  Core.Text
       -- ^  Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. See 'clusterId'.
    -> StartIPRotationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
    -> Core.Text
       -- ^  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
    -> ContainerProjectsZonesClustersStartIpRotation
newContainerProjectsZonesClustersStartIpRotation clusterId payload projectId zone =
  ContainerProjectsZonesClustersStartIpRotation
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clusterId = clusterId
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ContainerProjectsZonesClustersStartIpRotation
         where
        type Rs ContainerProjectsZonesClustersStartIpRotation
             = Operation
        type Scopes
               ContainerProjectsZonesClustersStartIpRotation
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerProjectsZonesClustersStartIpRotation{..}
          = go projectId zone clusterId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsZonesClustersStartIpRotationResource)
                      Core.mempty

