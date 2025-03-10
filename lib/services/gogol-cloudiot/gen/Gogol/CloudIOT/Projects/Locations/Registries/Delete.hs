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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device registry configuration.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.delete@.
module Gogol.CloudIOT.Projects.Locations.Registries.Delete
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDeleteResource,

    -- ** Constructing a Request
    CloudIOTProjectsLocationsRegistriesDelete (..),
    newCloudIOTProjectsLocationsRegistriesDelete,
  )
where

import Gogol.CloudIOT.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudiot.projects.locations.registries.delete@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDelete' request conforms to.
type CloudIOTProjectsLocationsRegistriesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a device registry configuration.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDelete' smart constructor.
data CloudIOTProjectsLocationsRegistriesDelete = CloudIOTProjectsLocationsRegistriesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the device registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDelete' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDelete ::
  -- |  Required. The name of the device registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@. See 'name'.
  Core.Text ->
  CloudIOTProjectsLocationsRegistriesDelete
newCloudIOTProjectsLocationsRegistriesDelete name =
  CloudIOTProjectsLocationsRegistriesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesDelete
  where
  type Rs CloudIOTProjectsLocationsRegistriesDelete = Empty
  type
    Scopes CloudIOTProjectsLocationsRegistriesDelete =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient CloudIOTProjectsLocationsRegistriesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIOTService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIOTProjectsLocationsRegistriesDeleteResource
          )
          Core.mempty
