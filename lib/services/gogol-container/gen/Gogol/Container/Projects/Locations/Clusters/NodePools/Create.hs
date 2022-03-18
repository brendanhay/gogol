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
-- Module      : Gogol.Container.Projects.Locations.Clusters.NodePools.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a node pool for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.create@.
module Gogol.Container.Projects.Locations.Clusters.NodePools.Create
    (
    -- * Resource
      ContainerProjectsLocationsClustersNodePoolsCreateResource

    -- ** Constructing a Request
    , newContainerProjectsLocationsClustersNodePoolsCreate
    , ContainerProjectsLocationsClustersNodePoolsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.locations.clusters.nodePools.create@ method which the
-- 'ContainerProjectsLocationsClustersNodePoolsCreate' request conforms to.
type ContainerProjectsLocationsClustersNodePoolsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "nodePools" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CreateNodePoolRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a node pool for a cluster.
--
-- /See:/ 'newContainerProjectsLocationsClustersNodePoolsCreate' smart constructor.
data ContainerProjectsLocationsClustersNodePoolsCreate = ContainerProjectsLocationsClustersNodePoolsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The parent (project, location, cluster name) where the node pool will be created. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: CreateNodePoolRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersNodePoolsCreate' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersNodePoolsCreate 
    ::  Core.Text
       -- ^  The parent (project, location, cluster name) where the node pool will be created. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'parent'.
    -> CreateNodePoolRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContainerProjectsLocationsClustersNodePoolsCreate
newContainerProjectsLocationsClustersNodePoolsCreate parent payload =
  ContainerProjectsLocationsClustersNodePoolsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerProjectsLocationsClustersNodePoolsCreate
         where
        type Rs
               ContainerProjectsLocationsClustersNodePoolsCreate
             = Operation
        type Scopes
               ContainerProjectsLocationsClustersNodePoolsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ContainerProjectsLocationsClustersNodePoolsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsLocationsClustersNodePoolsCreateResource)
                      Core.mempty

