{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TPU.Projects.Locations.QueuedResources.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a QueuedResource TPU instance.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.queuedResources.delete@.
module Gogol.TPU.Projects.Locations.QueuedResources.Delete
  ( -- * Resource
    TPUProjectsLocationsQueuedResourcesDeleteResource,

    -- ** Constructing a Request
    TPUProjectsLocationsQueuedResourcesDelete (..),
    newTPUProjectsLocationsQueuedResourcesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.queuedResources.delete@ method which the
-- 'TPUProjectsLocationsQueuedResourcesDelete' request conforms to.
type TPUProjectsLocationsQueuedResourcesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a QueuedResource TPU instance.
--
-- /See:/ 'newTPUProjectsLocationsQueuedResourcesDelete' smart constructor.
data TPUProjectsLocationsQueuedResourcesDelete = TPUProjectsLocationsQueuedResourcesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. If set to true, all running nodes belonging to this queued resource will be deleted first and then the queued resource will be deleted. Otherwise (i.e. force=false), the queued resource will only be deleted if its nodes have already been deleted or the queued resource is in the ACCEPTED, FAILED, or SUSPENDED state.
    force :: (Core.Maybe Core.Bool),
    -- | Required. The resource name.
    name :: Core.Text,
    -- | Optional. Idempotent request UUID.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsQueuedResourcesDelete' with the minimum fields required to make a request.
newTPUProjectsLocationsQueuedResourcesDelete ::
  -- |  Required. The resource name. See 'name'.
  Core.Text ->
  TPUProjectsLocationsQueuedResourcesDelete
newTPUProjectsLocationsQueuedResourcesDelete name =
  TPUProjectsLocationsQueuedResourcesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TPUProjectsLocationsQueuedResourcesDelete
  where
  type Rs TPUProjectsLocationsQueuedResourcesDelete = Operation
  type
    Scopes TPUProjectsLocationsQueuedResourcesDelete =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsQueuedResourcesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      force
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tPUService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TPUProjectsLocationsQueuedResourcesDeleteResource
          )
          Core.mempty
