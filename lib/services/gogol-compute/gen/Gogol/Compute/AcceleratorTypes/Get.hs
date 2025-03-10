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
-- Module      : Gogol.Compute.AcceleratorTypes.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified accelerator type.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.acceleratorTypes.get@.
module Gogol.Compute.AcceleratorTypes.Get
  ( -- * Resource
    ComputeAcceleratorTypesGetResource,

    -- ** Constructing a Request
    ComputeAcceleratorTypesGet (..),
    newComputeAcceleratorTypesGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.acceleratorTypes.get@ method which the
-- 'ComputeAcceleratorTypesGet' request conforms to.
type ComputeAcceleratorTypesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "acceleratorTypes"
    Core.:> Core.Capture "acceleratorType" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AcceleratorType

-- | Returns the specified accelerator type.
--
-- /See:/ 'newComputeAcceleratorTypesGet' smart constructor.
data ComputeAcceleratorTypesGet = ComputeAcceleratorTypesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | Name of the accelerator type to return.
    acceleratorType :: Core.Text,
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeAcceleratorTypesGet' with the minimum fields required to make a request.
newComputeAcceleratorTypesGet ::
  -- |  Name of the accelerator type to return. See 'acceleratorType'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeAcceleratorTypesGet
newComputeAcceleratorTypesGet acceleratorType project zone =
  ComputeAcceleratorTypesGet
    { xgafv = Core.Nothing,
      acceleratorType = acceleratorType,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance Core.GoogleRequest ComputeAcceleratorTypesGet where
  type Rs ComputeAcceleratorTypesGet = AcceleratorType
  type
    Scopes ComputeAcceleratorTypesGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeAcceleratorTypesGet {..} =
    go
      project
      zone
      acceleratorType
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
          (Core.Proxy :: Core.Proxy ComputeAcceleratorTypesGetResource)
          Core.mempty
