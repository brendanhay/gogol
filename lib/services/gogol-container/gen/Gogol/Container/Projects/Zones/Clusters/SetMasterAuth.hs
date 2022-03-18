{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Container.Projects.Zones.Clusters.SetMasterAuth
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.setMasterAuth@.
module Gogol.Container.Projects.Zones.Clusters.SetMasterAuth
    (
    -- * Resource
      ContainerProjectsZonesClustersSetMasterAuthResource

    -- ** Constructing a Request
    , newContainerProjectsZonesClustersSetMasterAuth
    , ContainerProjectsZonesClustersSetMasterAuth
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.zones.clusters.setMasterAuth@ method which the
-- 'ContainerProjectsZonesClustersSetMasterAuth' request conforms to.
type ContainerProjectsZonesClustersSetMasterAuthResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "zones" Core.:>
             Core.Capture "zone" Core.Text Core.:>
               "clusters" Core.:>
                 Core.CaptureMode "clusterId" "setMasterAuth"
                   Core.Text
                   Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] SetMasterAuthRequest
                                 Core.:> Core.Post '[Core.JSON] Operation

-- | Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.
--
-- /See:/ 'newContainerProjectsZonesClustersSetMasterAuth' smart constructor.
data ContainerProjectsZonesClustersSetMasterAuth = ContainerProjectsZonesClustersSetMasterAuth
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.
    , clusterId :: Core.Text
      -- | Multipart request metadata.
    , payload :: SetMasterAuthRequest
      -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersSetMasterAuth' with the minimum fields required to make a request.
newContainerProjectsZonesClustersSetMasterAuth 
    ::  Core.Text
       -- ^  Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. See 'clusterId'.
    -> SetMasterAuthRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
    -> Core.Text
       -- ^  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
    -> ContainerProjectsZonesClustersSetMasterAuth
newContainerProjectsZonesClustersSetMasterAuth clusterId payload projectId zone =
  ContainerProjectsZonesClustersSetMasterAuth
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
           ContainerProjectsZonesClustersSetMasterAuth
         where
        type Rs ContainerProjectsZonesClustersSetMasterAuth =
             Operation
        type Scopes
               ContainerProjectsZonesClustersSetMasterAuth
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ContainerProjectsZonesClustersSetMasterAuth{..}
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
                           ContainerProjectsZonesClustersSetMasterAuthResource)
                      Core.mempty

