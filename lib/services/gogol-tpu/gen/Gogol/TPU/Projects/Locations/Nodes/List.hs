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
-- Module      : Gogol.TPU.Projects.Locations.Nodes.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists nodes.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.list@.
module Gogol.TPU.Projects.Locations.Nodes.List
  ( -- * Resource
    TPUProjectsLocationsNodesListResource,

    -- ** Constructing a Request
    TPUProjectsLocationsNodesList (..),
    newTPUProjectsLocationsNodesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.list@ method which the
-- 'TPUProjectsLocationsNodesList' request conforms to.
type TPUProjectsLocationsNodesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "nodes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListNodesResponse

-- | Lists nodes.
--
-- /See:/ 'newTPUProjectsLocationsNodesList' smart constructor.
data TPUProjectsLocationsNodesList = TPUProjectsLocationsNodesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsNodesList' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesList ::
  -- |  Required. The parent resource name. See 'parent'.
  Core.Text ->
  TPUProjectsLocationsNodesList
newTPUProjectsLocationsNodesList parent =
  TPUProjectsLocationsNodesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TPUProjectsLocationsNodesList where
  type Rs TPUProjectsLocationsNodesList = ListNodesResponse
  type
    Scopes TPUProjectsLocationsNodesList =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsNodesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tPUService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TPUProjectsLocationsNodesListResource)
          Core.mempty
