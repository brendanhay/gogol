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
-- Module      : Gogol.Compute.PublicDelegatedPrefixes.Withdraw
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Withdraws the specified PublicDelegatedPrefix in the given region.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.withdraw@.
module Gogol.Compute.PublicDelegatedPrefixes.Withdraw
  ( -- * Resource
    ComputePublicDelegatedPrefixesWithdrawResource,

    -- ** Constructing a Request
    ComputePublicDelegatedPrefixesWithdraw (..),
    newComputePublicDelegatedPrefixesWithdraw,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.publicDelegatedPrefixes.withdraw@ method which the
-- 'ComputePublicDelegatedPrefixesWithdraw' request conforms to.
type ComputePublicDelegatedPrefixesWithdrawResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "publicDelegatedPrefixes"
    Core.:> Core.Capture "publicDelegatedPrefix" Core.Text
    Core.:> "withdraw"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Withdraws the specified PublicDelegatedPrefix in the given region.
--
-- /See:/ 'newComputePublicDelegatedPrefixesWithdraw' smart constructor.
data ComputePublicDelegatedPrefixesWithdraw = ComputePublicDelegatedPrefixesWithdraw
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | The name of the public delegated prefix. It should comply with RFC1035.
    publicDelegatedPrefix :: Core.Text,
    -- | The name of the region where the public delegated prefix is located. It should comply with RFC1035.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputePublicDelegatedPrefixesWithdraw' with the minimum fields required to make a request.
newComputePublicDelegatedPrefixesWithdraw ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the public delegated prefix. It should comply with RFC1035. See 'publicDelegatedPrefix'.
  Core.Text ->
  -- |  The name of the region where the public delegated prefix is located. It should comply with RFC1035. See 'region'.
  Core.Text ->
  ComputePublicDelegatedPrefixesWithdraw
newComputePublicDelegatedPrefixesWithdraw
  project
  publicDelegatedPrefix
  region =
    ComputePublicDelegatedPrefixesWithdraw
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        project = project,
        publicDelegatedPrefix = publicDelegatedPrefix,
        region = region,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputePublicDelegatedPrefixesWithdraw where
  type Rs ComputePublicDelegatedPrefixesWithdraw = Operation
  type
    Scopes ComputePublicDelegatedPrefixesWithdraw =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputePublicDelegatedPrefixesWithdraw {..} =
    go
      project
      region
      publicDelegatedPrefix
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputePublicDelegatedPrefixesWithdrawResource
          )
          Core.mempty
