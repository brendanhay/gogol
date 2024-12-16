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
-- Module      : Gogol.Container.Projects.Locations.Operations.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified operation.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.locations.operations.cancel@.
module Gogol.Container.Projects.Locations.Operations.Cancel
    (
    -- * Resource
      ContainerProjectsLocationsOperationsCancelResource

    -- ** Constructing a Request
    , ContainerProjectsLocationsOperationsCancel (..)
    , newContainerProjectsLocationsOperationsCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Container.Types

-- | A resource alias for @container.projects.locations.operations.cancel@ method which the
-- 'ContainerProjectsLocationsOperationsCancel' request conforms to.
type ContainerProjectsLocationsOperationsCancelResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "cancel" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] CancelOperationRequest
                       Core.:> Core.Post '[Core.JSON] Empty

-- | Cancels the specified operation.
--
-- /See:/ 'newContainerProjectsLocationsOperationsCancel' smart constructor.
data ContainerProjectsLocationsOperationsCancel = ContainerProjectsLocationsOperationsCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name (project, location, operation id) of the operation to cancel. Specified in the format @projects\/*\/locations\/*\/operations\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: CancelOperationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsOperationsCancel' with the minimum fields required to make a request.
newContainerProjectsLocationsOperationsCancel 
    ::  Core.Text
       -- ^  The name (project, location, operation id) of the operation to cancel. Specified in the format @projects\/*\/locations\/*\/operations\/*@. See 'name'.
    -> CancelOperationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContainerProjectsLocationsOperationsCancel
newContainerProjectsLocationsOperationsCancel name payload =
  ContainerProjectsLocationsOperationsCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContainerProjectsLocationsOperationsCancel
         where
        type Rs ContainerProjectsLocationsOperationsCancel =
             Empty
        type Scopes
               ContainerProjectsLocationsOperationsCancel
             = '[CloudPlatform'FullControl]
        requestClient
          ContainerProjectsLocationsOperationsCancel{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContainerProjectsLocationsOperationsCancelResource)
                      Core.mempty

