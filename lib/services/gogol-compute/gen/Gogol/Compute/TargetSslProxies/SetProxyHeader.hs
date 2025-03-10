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
-- Module      : Gogol.Compute.TargetSslProxies.SetProxyHeader
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the ProxyHeaderType for TargetSslProxy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetSslProxies.setProxyHeader@.
module Gogol.Compute.TargetSslProxies.SetProxyHeader
  ( -- * Resource
    ComputeTargetSslProxiesSetProxyHeaderResource,

    -- ** Constructing a Request
    ComputeTargetSslProxiesSetProxyHeader (..),
    newComputeTargetSslProxiesSetProxyHeader,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.targetSslProxies.setProxyHeader@ method which the
-- 'ComputeTargetSslProxiesSetProxyHeader' request conforms to.
type ComputeTargetSslProxiesSetProxyHeaderResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "targetSslProxies"
    Core.:> Core.Capture "targetSslProxy" Core.Text
    Core.:> "setProxyHeader"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TargetSslProxiesSetProxyHeaderRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Changes the ProxyHeaderType for TargetSslProxy.
--
-- /See:/ 'newComputeTargetSslProxiesSetProxyHeader' smart constructor.
data ComputeTargetSslProxiesSetProxyHeader = ComputeTargetSslProxiesSetProxyHeader
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TargetSslProxiesSetProxyHeaderRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Name of the TargetSslProxy resource whose ProxyHeader is to be set.
    targetSslProxy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetSslProxiesSetProxyHeader' with the minimum fields required to make a request.
newComputeTargetSslProxiesSetProxyHeader ::
  -- |  Multipart request metadata. See 'payload'.
  TargetSslProxiesSetProxyHeaderRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the TargetSslProxy resource whose ProxyHeader is to be set. See 'targetSslProxy'.
  Core.Text ->
  ComputeTargetSslProxiesSetProxyHeader
newComputeTargetSslProxiesSetProxyHeader
  payload
  project
  targetSslProxy =
    ComputeTargetSslProxiesSetProxyHeader
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        project = project,
        requestId = Core.Nothing,
        targetSslProxy = targetSslProxy,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeTargetSslProxiesSetProxyHeader where
  type Rs ComputeTargetSslProxiesSetProxyHeader = Operation
  type
    Scopes ComputeTargetSslProxiesSetProxyHeader =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeTargetSslProxiesSetProxyHeader {..} =
    go
      project
      targetSslProxy
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeTargetSslProxiesSetProxyHeaderResource
          )
          Core.mempty
