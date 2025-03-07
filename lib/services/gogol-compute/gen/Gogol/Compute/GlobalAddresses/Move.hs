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
-- Module      : Gogol.Compute.GlobalAddresses.Move
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified address resource from one project to another project.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalAddresses.move@.
module Gogol.Compute.GlobalAddresses.Move
  ( -- * Resource
    ComputeGlobalAddressesMoveResource,

    -- ** Constructing a Request
    ComputeGlobalAddressesMove (..),
    newComputeGlobalAddressesMove,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.globalAddresses.move@ method which the
-- 'ComputeGlobalAddressesMove' request conforms to.
type ComputeGlobalAddressesMoveResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "addresses"
    Core.:> Core.Capture "address" Core.Text
    Core.:> "move"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GlobalAddressesMoveRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Moves the specified address resource from one project to another project.
--
-- /See:/ 'newComputeGlobalAddressesMove' smart constructor.
data ComputeGlobalAddressesMove = ComputeGlobalAddressesMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Name of the address resource to move.
    address :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GlobalAddressesMoveRequest,
    -- | Source project ID which the Address is moved from.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalAddressesMove' with the minimum fields required to make a request.
newComputeGlobalAddressesMove ::
  -- |  Name of the address resource to move. See 'address'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GlobalAddressesMoveRequest ->
  -- |  Source project ID which the Address is moved from. See 'project'.
  Core.Text ->
  ComputeGlobalAddressesMove
newComputeGlobalAddressesMove address payload project =
  ComputeGlobalAddressesMove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      address = address,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeGlobalAddressesMove where
  type Rs ComputeGlobalAddressesMove = Operation
  type
    Scopes ComputeGlobalAddressesMove =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeGlobalAddressesMove {..} =
    go
      project
      address
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
          (Core.Proxy :: Core.Proxy ComputeGlobalAddressesMoveResource)
          Core.mempty
