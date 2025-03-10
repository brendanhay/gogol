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
-- Module      : Gogol.Compute.RegionBackendServices.GetHealth
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the most recent health check results for this regional BackendService.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionBackendServices.getHealth@.
module Gogol.Compute.RegionBackendServices.GetHealth
  ( -- * Resource
    ComputeRegionBackendServicesGetHealthResource,

    -- ** Constructing a Request
    ComputeRegionBackendServicesGetHealth (..),
    newComputeRegionBackendServicesGetHealth,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionBackendServices.getHealth@ method which the
-- 'ComputeRegionBackendServicesGetHealth' request conforms to.
type ComputeRegionBackendServicesGetHealthResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "backendServices"
    Core.:> Core.Capture "backendService" Core.Text
    Core.:> "getHealth"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResourceGroupReference
    Core.:> Core.Post '[Core.JSON] BackendServiceGroupHealth

-- | Gets the most recent health check results for this regional BackendService.
--
-- /See:/ 'newComputeRegionBackendServicesGetHealth' smart constructor.
data ComputeRegionBackendServicesGetHealth = ComputeRegionBackendServicesGetHealth
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Name of the BackendService resource for which to get health.
    backendService :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ResourceGroupReference,
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionBackendServicesGetHealth' with the minimum fields required to make a request.
newComputeRegionBackendServicesGetHealth ::
  -- |  Name of the BackendService resource for which to get health. See 'backendService'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ResourceGroupReference ->
  -- |  See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeRegionBackendServicesGetHealth
newComputeRegionBackendServicesGetHealth
  backendService
  payload
  project
  region =
    ComputeRegionBackendServicesGetHealth
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        backendService = backendService,
        callback = Core.Nothing,
        payload = payload,
        project = project,
        region = region,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeRegionBackendServicesGetHealth where
  type
    Rs ComputeRegionBackendServicesGetHealth =
      BackendServiceGroupHealth
  type
    Scopes ComputeRegionBackendServicesGetHealth =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeRegionBackendServicesGetHealth {..} =
    go
      project
      region
      backendService
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
              Core.Proxy ComputeRegionBackendServicesGetHealthResource
          )
          Core.mempty
