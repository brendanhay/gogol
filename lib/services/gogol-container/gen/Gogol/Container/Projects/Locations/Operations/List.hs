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
-- Module      : Gogol.Container.Projects.Locations.Operations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.operations.list@.
module Gogol.Container.Projects.Locations.Operations.List
    (
    -- * Resource
      ContainerProjectsLocationsOperationsListResource

    -- ** Constructing a Request
    , ContainerProjectsLocationsOperationsList (..)
    , newContainerProjectsLocationsOperationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.locations.operations.list@ method which the
-- 'ContainerProjectsLocationsOperationsList' request conforms to.
type ContainerProjectsLocationsOperationsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "operations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "projectId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "zone" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists all operations in a project in a specific zone or all zones.
--
-- /See:/ 'newContainerProjectsLocationsOperationsList' smart constructor.
data ContainerProjectsLocationsOperationsList = ContainerProjectsLocationsOperationsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The parent (project and location) where the operations will be listed. Specified in the format @projects\/*\/locations\/*@. Location \"-\" matches all zones and all regions.
    , parent :: Core.Text
      -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the parent field.
    , projectId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> to return operations for, or @-@ for all zones. This field has been deprecated and replaced by the parent field.
    , zone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsOperationsList' with the minimum fields required to make a request.
newContainerProjectsLocationsOperationsList 
    ::  Core.Text
       -- ^  The parent (project and location) where the operations will be listed. Specified in the format @projects\/*\/locations\/*@. Location \"-\" matches all zones and all regions. See 'parent'.
    -> ContainerProjectsLocationsOperationsList
newContainerProjectsLocationsOperationsList parent =
  ContainerProjectsLocationsOperationsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , projectId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerProjectsLocationsOperationsList
         where
        type Rs ContainerProjectsLocationsOperationsList =
             ListOperationsResponse
        type Scopes ContainerProjectsLocationsOperationsList
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerProjectsLocationsOperationsList{..}
          = go parent xgafv accessToken callback projectId
              uploadType
              uploadProtocol
              zone
              (Core.Just Core.AltJSON)
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsLocationsOperationsListResource)
                      Core.mempty

