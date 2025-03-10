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
-- Module      : Gogol.TPU.Projects.Locations.RuntimeVersions.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a runtime version.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.runtimeVersions.get@.
module Gogol.TPU.Projects.Locations.RuntimeVersions.Get
  ( -- * Resource
    TPUProjectsLocationsRuntimeVersionsGetResource,

    -- ** Constructing a Request
    TPUProjectsLocationsRuntimeVersionsGet (..),
    newTPUProjectsLocationsRuntimeVersionsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.runtimeVersions.get@ method which the
-- 'TPUProjectsLocationsRuntimeVersionsGet' request conforms to.
type TPUProjectsLocationsRuntimeVersionsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RuntimeVersion

-- | Gets a runtime version.
--
-- /See:/ 'newTPUProjectsLocationsRuntimeVersionsGet' smart constructor.
data TPUProjectsLocationsRuntimeVersionsGet = TPUProjectsLocationsRuntimeVersionsGet
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

-- | Creates a value of 'TPUProjectsLocationsRuntimeVersionsGet' with the minimum fields required to make a request.
newTPUProjectsLocationsRuntimeVersionsGet ::
  -- |  Required. The resource name. See 'name'.
  Core.Text ->
  TPUProjectsLocationsRuntimeVersionsGet
newTPUProjectsLocationsRuntimeVersionsGet name =
  TPUProjectsLocationsRuntimeVersionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TPUProjectsLocationsRuntimeVersionsGet where
  type Rs TPUProjectsLocationsRuntimeVersionsGet = RuntimeVersion
  type
    Scopes TPUProjectsLocationsRuntimeVersionsGet =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsRuntimeVersionsGet {..} =
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
              Core.Proxy TPUProjectsLocationsRuntimeVersionsGetResource
          )
          Core.mempty
