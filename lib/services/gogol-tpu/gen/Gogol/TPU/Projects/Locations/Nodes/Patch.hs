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
-- Module      : Gogol.TPU.Projects.Locations.Nodes.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configurations of a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.patch@.
module Gogol.TPU.Projects.Locations.Nodes.Patch
  ( -- * Resource
    TPUProjectsLocationsNodesPatchResource,

    -- ** Constructing a Request
    TPUProjectsLocationsNodesPatch (..),
    newTPUProjectsLocationsNodesPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.patch@ method which the
-- 'TPUProjectsLocationsNodesPatch' request conforms to.
type TPUProjectsLocationsNodesPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Node
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the configurations of a node.
--
-- /See:/ 'newTPUProjectsLocationsNodesPatch' smart constructor.
data TPUProjectsLocationsNodesPatch = TPUProjectsLocationsNodesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. Immutable. The name of the TPU.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Node,
    -- | Required. Mask of fields from Node to update. Supported fields: [description, tags, labels, metadata, network/config.enable/external_ips].
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsNodesPatch' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesPatch ::
  -- |  Output only. Immutable. The name of the TPU. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Node ->
  TPUProjectsLocationsNodesPatch
newTPUProjectsLocationsNodesPatch name payload =
  TPUProjectsLocationsNodesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TPUProjectsLocationsNodesPatch where
  type Rs TPUProjectsLocationsNodesPatch = Operation
  type
    Scopes TPUProjectsLocationsNodesPatch =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsNodesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      tPUService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TPUProjectsLocationsNodesPatchResource)
          Core.mempty
