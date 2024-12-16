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
-- Module      : Gogol.TPU.Projects.Locations.QueuedResources.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a QueuedResource TPU instance.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.queuedResources.create@.
module Gogol.TPU.Projects.Locations.QueuedResources.Create
    (
    -- * Resource
      TPUProjectsLocationsQueuedResourcesCreateResource

    -- ** Constructing a Request
    , TPUProjectsLocationsQueuedResourcesCreate (..)
    , newTPUProjectsLocationsQueuedResourcesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.queuedResources.create@ method which the
-- 'TPUProjectsLocationsQueuedResourcesCreate' request conforms to.
type TPUProjectsLocationsQueuedResourcesCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "queuedResources" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "queuedResourceId" Core.Text Core.:>
                   Core.QueryParam "requestId" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] QueuedResource Core.:>
                             Core.Post '[Core.JSON] Operation

-- | Creates a QueuedResource TPU instance.
--
-- /See:/ 'newTPUProjectsLocationsQueuedResourcesCreate' smart constructor.
data TPUProjectsLocationsQueuedResourcesCreate = TPUProjectsLocationsQueuedResourcesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent resource name.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: QueuedResource
      -- | Optional. The unqualified resource name. Should follow the @^[A-Za-z0-9_.~+%-]+$@ regex format.
    , queuedResourceId :: (Core.Maybe Core.Text)
      -- | Optional. Idempotent request UUID.
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsQueuedResourcesCreate' with the minimum fields required to make a request.
newTPUProjectsLocationsQueuedResourcesCreate 
    ::  Core.Text
       -- ^  Required. The parent resource name. See 'parent'.
    -> QueuedResource
       -- ^  Multipart request metadata. See 'payload'.
    -> TPUProjectsLocationsQueuedResourcesCreate
newTPUProjectsLocationsQueuedResourcesCreate parent payload =
  TPUProjectsLocationsQueuedResourcesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , queuedResourceId = Core.Nothing
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TPUProjectsLocationsQueuedResourcesCreate
         where
        type Rs TPUProjectsLocationsQueuedResourcesCreate =
             Operation
        type Scopes TPUProjectsLocationsQueuedResourcesCreate
             = '[CloudPlatform'FullControl]
        requestClient
          TPUProjectsLocationsQueuedResourcesCreate{..}
          = go parent xgafv accessToken callback
              queuedResourceId
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tPUService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TPUProjectsLocationsQueuedResourcesCreateResource)
                      Core.mempty

