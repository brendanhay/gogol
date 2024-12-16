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
-- Module      : Gogol.Container.Projects.Locations.Clusters.NodePools.SetSize
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the size for a specific node pool. The new size will be used for all replicas, including future replicas created by modifying NodePool.locations.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.setSize@.
module Gogol.Container.Projects.Locations.Clusters.NodePools.SetSize
    (
    -- * Resource
      ContainerProjectsLocationsClustersNodePoolsSetSizeResource

    -- ** Constructing a Request
    , ContainerProjectsLocationsClustersNodePoolsSetSize (..)
    , newContainerProjectsLocationsClustersNodePoolsSetSize
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.locations.clusters.nodePools.setSize@ method which the
-- 'ContainerProjectsLocationsClustersNodePoolsSetSize' request conforms to.
type ContainerProjectsLocationsClustersNodePoolsSetSizeResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "setSize" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SetNodePoolSizeRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the size for a specific node pool. The new size will be used for all replicas, including future replicas created by modifying NodePool.locations.
--
-- /See:/ 'newContainerProjectsLocationsClustersNodePoolsSetSize' smart constructor.
data ContainerProjectsLocationsClustersNodePoolsSetSize = ContainerProjectsLocationsClustersNodePoolsSetSize
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name (project, location, cluster, node pool id) of the node pool to set size. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SetNodePoolSizeRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersNodePoolsSetSize' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersNodePoolsSetSize 
    ::  Core.Text
       -- ^  The name (project, location, cluster, node pool id) of the node pool to set size. Specified in the format @projects\/*\/locations\/*\/clusters\/*\/nodePools\/*@. See 'name'.
    -> SetNodePoolSizeRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContainerProjectsLocationsClustersNodePoolsSetSize
newContainerProjectsLocationsClustersNodePoolsSetSize name payload =
  ContainerProjectsLocationsClustersNodePoolsSetSize
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerProjectsLocationsClustersNodePoolsSetSize
         where
        type Rs
               ContainerProjectsLocationsClustersNodePoolsSetSize
             = Operation
        type Scopes
               ContainerProjectsLocationsClustersNodePoolsSetSize
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerProjectsLocationsClustersNodePoolsSetSize{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsLocationsClustersNodePoolsSetSizeResource)
                      Core.mempty

