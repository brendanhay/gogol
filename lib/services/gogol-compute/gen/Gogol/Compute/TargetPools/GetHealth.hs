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
-- Module      : Gogol.Compute.TargetPools.GetHealth
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the most recent health check results for each IP for the instance that is referenced by the given target pool.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetPools.getHealth@.
module Gogol.Compute.TargetPools.GetHealth
  ( -- * Resource
    ComputeTargetPoolsGetHealthResource,

    -- ** Constructing a Request
    ComputeTargetPoolsGetHealth (..),
    newComputeTargetPoolsGetHealth,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.targetPools.getHealth@ method which the
-- 'ComputeTargetPoolsGetHealth' request conforms to.
type ComputeTargetPoolsGetHealthResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "targetPools"
    Core.:> Core.Capture "targetPool" Core.Text
    Core.:> "getHealth"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InstanceReference
    Core.:> Core.Post
              '[Core.JSON]
              TargetPoolInstanceHealth

-- | Gets the most recent health check results for each IP for the instance that is referenced by the given target pool.
--
-- /See:/ 'newComputeTargetPoolsGetHealth' smart constructor.
data ComputeTargetPoolsGetHealth = ComputeTargetPoolsGetHealth
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: InstanceReference,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Name of the TargetPool resource to which the queried instance belongs.
    targetPool :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetPoolsGetHealth' with the minimum fields required to make a request.
newComputeTargetPoolsGetHealth ::
  -- |  Multipart request metadata. See 'payload'.
  InstanceReference ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the TargetPool resource to which the queried instance belongs. See 'targetPool'.
  Core.Text ->
  ComputeTargetPoolsGetHealth
newComputeTargetPoolsGetHealth payload project region targetPool =
  ComputeTargetPoolsGetHealth
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      region = region,
      targetPool = targetPool,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeTargetPoolsGetHealth
  where
  type
    Rs ComputeTargetPoolsGetHealth =
      TargetPoolInstanceHealth
  type
    Scopes ComputeTargetPoolsGetHealth =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeTargetPoolsGetHealth {..} =
    go
      project
      region
      targetPool
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeTargetPoolsGetHealthResource
          )
          Core.mempty
