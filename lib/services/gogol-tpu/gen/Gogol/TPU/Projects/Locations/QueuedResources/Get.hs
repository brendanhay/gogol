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
-- Module      : Gogol.TPU.Projects.Locations.QueuedResources.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details of a queued resource.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.queuedResources.get@.
module Gogol.TPU.Projects.Locations.QueuedResources.Get
  ( -- * Resource
    TPUProjectsLocationsQueuedResourcesGetResource,

    -- ** Constructing a Request
    TPUProjectsLocationsQueuedResourcesGet (..),
    newTPUProjectsLocationsQueuedResourcesGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.queuedResources.get@ method which the
-- 'TPUProjectsLocationsQueuedResourcesGet' request conforms to.
type TPUProjectsLocationsQueuedResourcesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] QueuedResource

-- | Gets details of a queued resource.
--
-- /See:/ 'newTPUProjectsLocationsQueuedResourcesGet' smart constructor.
data TPUProjectsLocationsQueuedResourcesGet = TPUProjectsLocationsQueuedResourcesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsQueuedResourcesGet' with the minimum fields required to make a request.
newTPUProjectsLocationsQueuedResourcesGet ::
  -- |  Required. The resource name. See 'name'.
  Core.Text ->
  TPUProjectsLocationsQueuedResourcesGet
newTPUProjectsLocationsQueuedResourcesGet name =
  TPUProjectsLocationsQueuedResourcesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TPUProjectsLocationsQueuedResourcesGet where
  type Rs TPUProjectsLocationsQueuedResourcesGet = QueuedResource
  type
    Scopes TPUProjectsLocationsQueuedResourcesGet =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsQueuedResourcesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tPUService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TPUProjectsLocationsQueuedResourcesGetResource
          )
          Core.mempty
