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
-- Module      : Gogol.Compute.InterconnectRemoteLocations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details for the specified interconnect remote location. Gets a list of available interconnect remote locations by making a list() request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnectRemoteLocations.get@.
module Gogol.Compute.InterconnectRemoteLocations.Get
  ( -- * Resource
    ComputeInterconnectRemoteLocationsGetResource,

    -- ** Constructing a Request
    ComputeInterconnectRemoteLocationsGet (..),
    newComputeInterconnectRemoteLocationsGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.interconnectRemoteLocations.get@ method which the
-- 'ComputeInterconnectRemoteLocationsGet' request conforms to.
type ComputeInterconnectRemoteLocationsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "interconnectRemoteLocations"
    Core.:> Core.Capture "interconnectRemoteLocation" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InterconnectRemoteLocation

-- | Returns the details for the specified interconnect remote location. Gets a list of available interconnect remote locations by making a list() request.
--
-- /See:/ 'newComputeInterconnectRemoteLocationsGet' smart constructor.
data ComputeInterconnectRemoteLocationsGet = ComputeInterconnectRemoteLocationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the interconnect remote location to return.
    interconnectRemoteLocation :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectRemoteLocationsGet' with the minimum fields required to make a request.
newComputeInterconnectRemoteLocationsGet ::
  -- |  Name of the interconnect remote location to return. See 'interconnectRemoteLocation'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeInterconnectRemoteLocationsGet
newComputeInterconnectRemoteLocationsGet
  interconnectRemoteLocation
  project =
    ComputeInterconnectRemoteLocationsGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        interconnectRemoteLocation = interconnectRemoteLocation,
        project = project,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeInterconnectRemoteLocationsGet where
  type
    Rs ComputeInterconnectRemoteLocationsGet =
      InterconnectRemoteLocation
  type
    Scopes ComputeInterconnectRemoteLocationsGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeInterconnectRemoteLocationsGet {..} =
    go
      project
      interconnectRemoteLocation
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeInterconnectRemoteLocationsGetResource
          )
          Core.mempty
