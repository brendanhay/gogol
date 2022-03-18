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
-- Module      : Gogol.Container.Projects.Zones.Operations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.operations.get@.
module Gogol.Container.Projects.Zones.Operations.Get
    (
    -- * Resource
      ContainerProjectsZonesOperationsGetResource

    -- ** Constructing a Request
    , newContainerProjectsZonesOperationsGet
    , ContainerProjectsZonesOperationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.zones.operations.get@ method which the
-- 'ContainerProjectsZonesOperationsGet' request conforms to.
type ContainerProjectsZonesOperationsGetResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "zones" Core.:>
             Core.Capture "zone" Core.Text Core.:>
               "operations" Core.:>
                 Core.Capture "operationId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "name" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] Operation

-- | Gets the specified operation.
--
-- /See:/ 'newContainerProjectsZonesOperationsGet' smart constructor.
data ContainerProjectsZonesOperationsGet = ContainerProjectsZonesOperationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name (project, location, operation id) of the operation to get. Specified in the format @projects\/*\/locations\/*\/operations\/*@.
    , name :: (Core.Maybe Core.Text)
      -- | Deprecated. The server-assigned @name@ of the operation. This field has been deprecated and replaced by the name field.
    , operationId :: Core.Text
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

-- | Creates a value of 'ContainerProjectsZonesOperationsGet' with the minimum fields required to make a request.
newContainerProjectsZonesOperationsGet 
    ::  Core.Text
       -- ^  Deprecated. The server-assigned @name@ of the operation. This field has been deprecated and replaced by the name field. See 'operationId'.
    -> Core.Text
       -- ^  Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
    -> Core.Text
       -- ^  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
    -> ContainerProjectsZonesOperationsGet
newContainerProjectsZonesOperationsGet operationId projectId zone =
  ContainerProjectsZonesOperationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = Core.Nothing
    , operationId = operationId
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ContainerProjectsZonesOperationsGet
         where
        type Rs ContainerProjectsZonesOperationsGet =
             Operation
        type Scopes ContainerProjectsZonesOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ContainerProjectsZonesOperationsGet{..}
          = go projectId zone operationId xgafv accessToken
              callback
              name
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsZonesOperationsGetResource)
                      Core.mempty

