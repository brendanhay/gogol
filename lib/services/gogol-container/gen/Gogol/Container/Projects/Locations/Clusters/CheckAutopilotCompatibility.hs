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
-- Module      : Gogol.Container.Projects.Locations.Clusters.CheckAutopilotCompatibility
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the cluster compatibility with Autopilot mode, and returns a list of compatibility issues.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.checkAutopilotCompatibility@.
module Gogol.Container.Projects.Locations.Clusters.CheckAutopilotCompatibility
    (
    -- * Resource
      ContainerProjectsLocationsClustersCheckAutopilotCompatibilityResource

    -- ** Constructing a Request
    , ContainerProjectsLocationsClustersCheckAutopilotCompatibility (..)
    , newContainerProjectsLocationsClustersCheckAutopilotCompatibility
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.locations.clusters.checkAutopilotCompatibility@ method which the
-- 'ContainerProjectsLocationsClustersCheckAutopilotCompatibility' request conforms to.
type ContainerProjectsLocationsClustersCheckAutopilotCompatibilityResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "checkAutopilotCompatibility"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       CheckAutopilotCompatibilityResponse

-- | Checks the cluster compatibility with Autopilot mode, and returns a list of compatibility issues.
--
-- /See:/ 'newContainerProjectsLocationsClustersCheckAutopilotCompatibility' smart constructor.
data ContainerProjectsLocationsClustersCheckAutopilotCompatibility = ContainerProjectsLocationsClustersCheckAutopilotCompatibility
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name (project, location, cluster) of the cluster to retrieve. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersCheckAutopilotCompatibility' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersCheckAutopilotCompatibility 
    ::  Core.Text
       -- ^  The name (project, location, cluster) of the cluster to retrieve. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
    -> ContainerProjectsLocationsClustersCheckAutopilotCompatibility
newContainerProjectsLocationsClustersCheckAutopilotCompatibility name =
  ContainerProjectsLocationsClustersCheckAutopilotCompatibility
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerProjectsLocationsClustersCheckAutopilotCompatibility
         where
        type Rs
               ContainerProjectsLocationsClustersCheckAutopilotCompatibility
             = CheckAutopilotCompatibilityResponse
        type Scopes
               ContainerProjectsLocationsClustersCheckAutopilotCompatibility
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerProjectsLocationsClustersCheckAutopilotCompatibility{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsLocationsClustersCheckAutopilotCompatibilityResource)
                      Core.mempty

