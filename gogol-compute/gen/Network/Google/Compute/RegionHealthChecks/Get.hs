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
-- Module      : Network.Google.Compute.RegionHealthChecks.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified HealthCheck resource. Gets a list of available health checks by making a list() request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionHealthChecks.get@.
module Network.Google.Compute.RegionHealthChecks.Get
  ( -- * Resource
    ComputeRegionHealthChecksGetResource,

    -- ** Constructing a Request
    newComputeRegionHealthChecksGet,
    ComputeRegionHealthChecksGet,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.regionHealthChecks.get@ method which the
-- 'ComputeRegionHealthChecksGet' request conforms to.
type ComputeRegionHealthChecksGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "healthChecks"
    Core.:> Core.Capture "healthCheck" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HealthCheck

-- | Returns the specified HealthCheck resource. Gets a list of available health checks by making a list() request.
--
-- /See:/ 'newComputeRegionHealthChecksGet' smart constructor.
data ComputeRegionHealthChecksGet = ComputeRegionHealthChecksGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the HealthCheck resource to return.
    healthCheck :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionHealthChecksGet' with the minimum fields required to make a request.
newComputeRegionHealthChecksGet ::
  -- |  Name of the HealthCheck resource to return. See 'healthCheck'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeRegionHealthChecksGet
newComputeRegionHealthChecksGet healthCheck project region =
  ComputeRegionHealthChecksGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      healthCheck = healthCheck,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionHealthChecksGet
  where
  type Rs ComputeRegionHealthChecksGet = HealthCheck
  type
    Scopes ComputeRegionHealthChecksGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient ComputeRegionHealthChecksGet {..} =
    go
      project
      region
      healthCheck
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
              Core.Proxy ComputeRegionHealthChecksGetResource
          )
          Core.mempty
