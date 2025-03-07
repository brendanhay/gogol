{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.TPU.Projects.Locations.Nodes.Start
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.start@.
module Gogol.TPU.Projects.Locations.Nodes.Start
  ( -- * Resource
    TPUProjectsLocationsNodesStartResource,

    -- ** Constructing a Request
    TPUProjectsLocationsNodesStart (..),
    newTPUProjectsLocationsNodesStart,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.start@ method which the
-- 'TPUProjectsLocationsNodesStart' request conforms to.
type TPUProjectsLocationsNodesStartResource =
  "v2"
    Core.:> Core.CaptureMode "name" "start" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StartNodeRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Starts a node.
--
-- /See:/ 'newTPUProjectsLocationsNodesStart' smart constructor.
data TPUProjectsLocationsNodesStart = TPUProjectsLocationsNodesStart
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: StartNodeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsNodesStart' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesStart ::
  -- |  Required. The resource name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StartNodeRequest ->
  TPUProjectsLocationsNodesStart
newTPUProjectsLocationsNodesStart name payload =
  TPUProjectsLocationsNodesStart
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TPUProjectsLocationsNodesStart where
  type Rs TPUProjectsLocationsNodesStart = Operation
  type
    Scopes TPUProjectsLocationsNodesStart =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsNodesStart {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      tPUService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TPUProjectsLocationsNodesStartResource)
          Core.mempty
