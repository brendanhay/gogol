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
-- Module      : Gogol.Compute.Routers.GetRoutePolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns specified Route Policy
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.routers.getRoutePolicy@.
module Gogol.Compute.Routers.GetRoutePolicy
  ( -- * Resource
    ComputeRoutersGetRoutePolicyResource,

    -- ** Constructing a Request
    ComputeRoutersGetRoutePolicy (..),
    newComputeRoutersGetRoutePolicy,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.routers.getRoutePolicy@ method which the
-- 'ComputeRoutersGetRoutePolicy' request conforms to.
type ComputeRoutersGetRoutePolicyResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "routers"
    Core.:> Core.Capture "router" Core.Text
    Core.:> "getRoutePolicy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "policy" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RoutersGetRoutePolicyResponse

-- | Returns specified Route Policy
--
-- /See:/ 'newComputeRoutersGetRoutePolicy' smart constructor.
data ComputeRoutersGetRoutePolicy = ComputeRoutersGetRoutePolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The Policy name for this request. Name must conform to RFC1035
    policy :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region for this request.
    region :: Core.Text,
    -- | Name of the Router resource to query for the route policy. The name should conform to RFC1035.
    router :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRoutersGetRoutePolicy' with the minimum fields required to make a request.
newComputeRoutersGetRoutePolicy ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region for this request. See 'region'.
  Core.Text ->
  -- |  Name of the Router resource to query for the route policy. The name should conform to RFC1035. See 'router'.
  Core.Text ->
  ComputeRoutersGetRoutePolicy
newComputeRoutersGetRoutePolicy project region router =
  ComputeRoutersGetRoutePolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      policy = Core.Nothing,
      project = project,
      region = region,
      router = router,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeRoutersGetRoutePolicy where
  type
    Rs ComputeRoutersGetRoutePolicy =
      RoutersGetRoutePolicyResponse
  type
    Scopes ComputeRoutersGetRoutePolicy =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeRoutersGetRoutePolicy {..} =
    go
      project
      region
      router
      xgafv
      accessToken
      callback
      policy
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ComputeRoutersGetRoutePolicyResource)
          Core.mempty
