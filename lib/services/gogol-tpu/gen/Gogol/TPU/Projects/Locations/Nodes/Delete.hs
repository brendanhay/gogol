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
-- Module      : Gogol.TPU.Projects.Locations.Nodes.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.delete@.
module Gogol.TPU.Projects.Locations.Nodes.Delete
  ( -- * Resource
    TPUProjectsLocationsNodesDeleteResource,

    -- ** Constructing a Request
    TPUProjectsLocationsNodesDelete (..),
    newTPUProjectsLocationsNodesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.delete@ method which the
-- 'TPUProjectsLocationsNodesDelete' request conforms to.
type TPUProjectsLocationsNodesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a node.
--
-- /See:/ 'newTPUProjectsLocationsNodesDelete' smart constructor.
data TPUProjectsLocationsNodesDelete = TPUProjectsLocationsNodesDelete
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

-- | Creates a value of 'TPUProjectsLocationsNodesDelete' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesDelete ::
  -- |  Required. The resource name. See 'name'.
  Core.Text ->
  TPUProjectsLocationsNodesDelete
newTPUProjectsLocationsNodesDelete name =
  TPUProjectsLocationsNodesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TPUProjectsLocationsNodesDelete where
  type Rs TPUProjectsLocationsNodesDelete = Operation
  type
    Scopes TPUProjectsLocationsNodesDelete =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsNodesDelete {..} =
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
          (Core.Proxy :: Core.Proxy TPUProjectsLocationsNodesDeleteResource)
          Core.mempty
