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
-- Module      : Gogol.TPU.Projects.Locations.QueuedResources.Reset
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets a QueuedResource TPU instance
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.queuedResources.reset@.
module Gogol.TPU.Projects.Locations.QueuedResources.Reset
    (
    -- * Resource
      TPUProjectsLocationsQueuedResourcesResetResource

    -- ** Constructing a Request
    , TPUProjectsLocationsQueuedResourcesReset (..)
    , newTPUProjectsLocationsQueuedResourcesReset
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.queuedResources.reset@ method which the
-- 'TPUProjectsLocationsQueuedResourcesReset' request conforms to.
type TPUProjectsLocationsQueuedResourcesResetResource
     =
     "v2" Core.:>
       Core.CaptureMode "name" "reset" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] ResetQueuedResourceRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Resets a QueuedResource TPU instance
--
-- /See:/ 'newTPUProjectsLocationsQueuedResourcesReset' smart constructor.
data TPUProjectsLocationsQueuedResourcesReset = TPUProjectsLocationsQueuedResourcesReset
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the queued resource.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ResetQueuedResourceRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsQueuedResourcesReset' with the minimum fields required to make a request.
newTPUProjectsLocationsQueuedResourcesReset 
    ::  Core.Text
       -- ^  Required. The name of the queued resource. See 'name'.
    -> ResetQueuedResourceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> TPUProjectsLocationsQueuedResourcesReset
newTPUProjectsLocationsQueuedResourcesReset name payload =
  TPUProjectsLocationsQueuedResourcesReset
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TPUProjectsLocationsQueuedResourcesReset
         where
        type Rs TPUProjectsLocationsQueuedResourcesReset =
             Operation
        type Scopes TPUProjectsLocationsQueuedResourcesReset
             = '[CloudPlatform'FullControl]
        requestClient
          TPUProjectsLocationsQueuedResourcesReset{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tPUService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TPUProjectsLocationsQueuedResourcesResetResource)
                      Core.mempty

