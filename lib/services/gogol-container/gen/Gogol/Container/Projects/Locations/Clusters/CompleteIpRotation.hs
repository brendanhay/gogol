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
-- Module      : Gogol.Container.Projects.Locations.Clusters.CompleteIpRotation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes master IP rotation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.completeIpRotation@.
module Gogol.Container.Projects.Locations.Clusters.CompleteIpRotation
    (
    -- * Resource
      ContainerProjectsLocationsClustersCompleteIpRotationResource

    -- ** Constructing a Request
    , newContainerProjectsLocationsClustersCompleteIpRotation
    , ContainerProjectsLocationsClustersCompleteIpRotation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.locations.clusters.completeIpRotation@ method which the
-- 'ContainerProjectsLocationsClustersCompleteIpRotation' request conforms to.
type ContainerProjectsLocationsClustersCompleteIpRotationResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "completeIpRotation"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] CompleteIPRotationRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Completes master IP rotation.
--
-- /See:/ 'newContainerProjectsLocationsClustersCompleteIpRotation' smart constructor.
data ContainerProjectsLocationsClustersCompleteIpRotation = ContainerProjectsLocationsClustersCompleteIpRotation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name (project, location, cluster name) of the cluster to complete IP rotation. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: CompleteIPRotationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersCompleteIpRotation' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersCompleteIpRotation 
    ::  Core.Text
       -- ^  The name (project, location, cluster name) of the cluster to complete IP rotation. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
    -> CompleteIPRotationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContainerProjectsLocationsClustersCompleteIpRotation
newContainerProjectsLocationsClustersCompleteIpRotation name payload =
  ContainerProjectsLocationsClustersCompleteIpRotation
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerProjectsLocationsClustersCompleteIpRotation
         where
        type Rs
               ContainerProjectsLocationsClustersCompleteIpRotation
             = Operation
        type Scopes
               ContainerProjectsLocationsClustersCompleteIpRotation
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ContainerProjectsLocationsClustersCompleteIpRotation{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsLocationsClustersCompleteIpRotationResource)
                      Core.mempty

