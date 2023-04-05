{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.VpnTunnels.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified VpnTunnel resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.vpnTunnels.get@.
module Gogol.Compute.VpnTunnels.Get
  ( -- * Resource
    ComputeVpnTunnelsGetResource,

    -- ** Constructing a Request
    ComputeVpnTunnelsGet (..),
    newComputeVpnTunnelsGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.vpnTunnels.get@ method which the
-- 'ComputeVpnTunnelsGet' request conforms to.
type ComputeVpnTunnelsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "vpnTunnels"
    Core.:> Core.Capture "vpnTunnel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] VpnTunnel

-- | Returns the specified VpnTunnel resource.
--
-- /See:/ 'newComputeVpnTunnelsGet' smart constructor.
data ComputeVpnTunnelsGet = ComputeVpnTunnelsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region for this request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Name of the VpnTunnel resource to return.
    vpnTunnel :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeVpnTunnelsGet' with the minimum fields required to make a request.
newComputeVpnTunnelsGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region for this request. See 'region'.
  Core.Text ->
  -- |  Name of the VpnTunnel resource to return. See 'vpnTunnel'.
  Core.Text ->
  ComputeVpnTunnelsGet
newComputeVpnTunnelsGet project region vpnTunnel =
  ComputeVpnTunnelsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      vpnTunnel = vpnTunnel
    }

instance Core.GoogleRequest ComputeVpnTunnelsGet where
  type Rs ComputeVpnTunnelsGet = VpnTunnel
  type
    Scopes ComputeVpnTunnelsGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeVpnTunnelsGet {..} =
    go
      project
      region
      vpnTunnel
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
              Core.Proxy ComputeVpnTunnelsGetResource
          )
          Core.mempty
