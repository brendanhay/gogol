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
-- Module      : Gogol.Compute.TargetPools.RemoveHealthCheck
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes health check URL from a target pool.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetPools.removeHealthCheck@.
module Gogol.Compute.TargetPools.RemoveHealthCheck
  ( -- * Resource
    ComputeTargetPoolsRemoveHealthCheckResource,

    -- ** Constructing a Request
    newComputeTargetPoolsRemoveHealthCheck,
    ComputeTargetPoolsRemoveHealthCheck,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.targetPools.removeHealthCheck@ method which the
-- 'ComputeTargetPoolsRemoveHealthCheck' request conforms to.
type ComputeTargetPoolsRemoveHealthCheckResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "targetPools"
    Core.:> Core.Capture "targetPool" Core.Text
    Core.:> "removeHealthCheck"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              TargetPoolsRemoveHealthCheckRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Removes health check URL from a target pool.
--
-- /See:/ 'newComputeTargetPoolsRemoveHealthCheck' smart constructor.
data ComputeTargetPoolsRemoveHealthCheck = ComputeTargetPoolsRemoveHealthCheck
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TargetPoolsRemoveHealthCheckRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region for this request.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Name of the target pool to remove health checks from.
    targetPool :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetPoolsRemoveHealthCheck' with the minimum fields required to make a request.
newComputeTargetPoolsRemoveHealthCheck ::
  -- |  Multipart request metadata. See 'payload'.
  TargetPoolsRemoveHealthCheckRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region for this request. See 'region'.
  Core.Text ->
  -- |  Name of the target pool to remove health checks from. See 'targetPool'.
  Core.Text ->
  ComputeTargetPoolsRemoveHealthCheck
newComputeTargetPoolsRemoveHealthCheck payload project region targetPool =
  ComputeTargetPoolsRemoveHealthCheck
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      region = region,
      requestId = Core.Nothing,
      targetPool = targetPool,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeTargetPoolsRemoveHealthCheck
  where
  type
    Rs ComputeTargetPoolsRemoveHealthCheck =
      Operation
  type
    Scopes ComputeTargetPoolsRemoveHealthCheck =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient ComputeTargetPoolsRemoveHealthCheck {..} =
    go
      project
      region
      targetPool
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
              Core.Proxy
                ComputeTargetPoolsRemoveHealthCheckResource
          )
          Core.mempty
