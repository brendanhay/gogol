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
-- Module      : Gogol.Compute.TargetPools.SetBackup
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes a backup target pool\'s configurations.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetPools.setBackup@.
module Gogol.Compute.TargetPools.SetBackup
  ( -- * Resource
    ComputeTargetPoolsSetBackupResource,

    -- ** Constructing a Request
    newComputeTargetPoolsSetBackup,
    ComputeTargetPoolsSetBackup,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.targetPools.setBackup@ method which the
-- 'ComputeTargetPoolsSetBackup' request conforms to.
type ComputeTargetPoolsSetBackupResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "targetPools"
    Core.:> Core.Capture "targetPool" Core.Text
    Core.:> "setBackup"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "failoverRatio" Core.Double
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TargetReference
    Core.:> Core.Post '[Core.JSON] Operation

-- | Changes a backup target pool\'s configurations.
--
-- /See:/ 'newComputeTargetPoolsSetBackup' smart constructor.
data ComputeTargetPoolsSetBackup = ComputeTargetPoolsSetBackup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | New failoverRatio value for the target pool.
    failoverRatio :: (Core.Maybe Core.Double),
    -- | Multipart request metadata.
    payload :: TargetReference,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Name of the TargetPool resource to set a backup pool for.
    targetPool :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetPoolsSetBackup' with the minimum fields required to make a request.
newComputeTargetPoolsSetBackup ::
  -- |  Multipart request metadata. See 'payload'.
  TargetReference ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the TargetPool resource to set a backup pool for. See 'targetPool'.
  Core.Text ->
  ComputeTargetPoolsSetBackup
newComputeTargetPoolsSetBackup payload project region targetPool =
  ComputeTargetPoolsSetBackup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      failoverRatio = Core.Nothing,
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
    ComputeTargetPoolsSetBackup
  where
  type Rs ComputeTargetPoolsSetBackup = Operation
  type
    Scopes ComputeTargetPoolsSetBackup =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeTargetPoolsSetBackup {..} =
    go
      project
      region
      targetPool
      xgafv
      accessToken
      callback
      failoverRatio
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
              Core.Proxy ComputeTargetPoolsSetBackupResource
          )
          Core.mempty
