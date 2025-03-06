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
-- Module      : Gogol.Compute.RegionTargetHttpProxies.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetHttpProxy resource in the specified region.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionTargetHttpProxies.get@.
module Gogol.Compute.RegionTargetHttpProxies.Get
  ( -- * Resource
    ComputeRegionTargetHttpProxiesGetResource,

    -- ** Constructing a Request
    ComputeRegionTargetHttpProxiesGet (..),
    newComputeRegionTargetHttpProxiesGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionTargetHttpProxies.get@ method which the
-- 'ComputeRegionTargetHttpProxiesGet' request conforms to.
type ComputeRegionTargetHttpProxiesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "targetHttpProxies"
    Core.:> Core.Capture "targetHttpProxy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TargetHttpProxy

-- | Returns the specified TargetHttpProxy resource in the specified region.
--
-- /See:/ 'newComputeRegionTargetHttpProxiesGet' smart constructor.
data ComputeRegionTargetHttpProxiesGet = ComputeRegionTargetHttpProxiesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Name of the TargetHttpProxy resource to return.
    targetHttpProxy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionTargetHttpProxiesGet' with the minimum fields required to make a request.
newComputeRegionTargetHttpProxiesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the TargetHttpProxy resource to return. See 'targetHttpProxy'.
  Core.Text ->
  ComputeRegionTargetHttpProxiesGet
newComputeRegionTargetHttpProxiesGet project region targetHttpProxy =
  ComputeRegionTargetHttpProxiesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      region = region,
      targetHttpProxy = targetHttpProxy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeRegionTargetHttpProxiesGet where
  type Rs ComputeRegionTargetHttpProxiesGet = TargetHttpProxy
  type
    Scopes ComputeRegionTargetHttpProxiesGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeRegionTargetHttpProxiesGet {..} =
    go
      project
      region
      targetHttpProxy
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
              Core.Proxy ComputeRegionTargetHttpProxiesGetResource
          )
          Core.mempty
