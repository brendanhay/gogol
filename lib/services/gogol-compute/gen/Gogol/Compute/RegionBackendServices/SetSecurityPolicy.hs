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
-- Module      : Gogol.Compute.RegionBackendServices.SetSecurityPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the Google Cloud Armor security policy for the specified backend service. For more information, see Google Cloud Armor Overview
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionBackendServices.setSecurityPolicy@.
module Gogol.Compute.RegionBackendServices.SetSecurityPolicy
  ( -- * Resource
    ComputeRegionBackendServicesSetSecurityPolicyResource,

    -- ** Constructing a Request
    ComputeRegionBackendServicesSetSecurityPolicy (..),
    newComputeRegionBackendServicesSetSecurityPolicy,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionBackendServices.setSecurityPolicy@ method which the
-- 'ComputeRegionBackendServicesSetSecurityPolicy' request conforms to.
type ComputeRegionBackendServicesSetSecurityPolicyResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "backendServices"
    Core.:> Core.Capture "backendService" Core.Text
    Core.:> "setSecurityPolicy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SecurityPolicyReference
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the Google Cloud Armor security policy for the specified backend service. For more information, see Google Cloud Armor Overview
--
-- /See:/ 'newComputeRegionBackendServicesSetSecurityPolicy' smart constructor.
data ComputeRegionBackendServicesSetSecurityPolicy = ComputeRegionBackendServicesSetSecurityPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Name of the BackendService resource to which the security policy should be set. The name should conform to RFC1035.
    backendService :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SecurityPolicyReference,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionBackendServicesSetSecurityPolicy' with the minimum fields required to make a request.
newComputeRegionBackendServicesSetSecurityPolicy ::
  -- |  Name of the BackendService resource to which the security policy should be set. The name should conform to RFC1035. See 'backendService'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SecurityPolicyReference ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeRegionBackendServicesSetSecurityPolicy
newComputeRegionBackendServicesSetSecurityPolicy
  backendService
  payload
  project
  region =
    ComputeRegionBackendServicesSetSecurityPolicy
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        backendService = backendService,
        callback = Core.Nothing,
        payload = payload,
        project = project,
        region = region,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComputeRegionBackendServicesSetSecurityPolicy
  where
  type Rs ComputeRegionBackendServicesSetSecurityPolicy = Operation
  type
    Scopes ComputeRegionBackendServicesSetSecurityPolicy =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeRegionBackendServicesSetSecurityPolicy {..} =
    go
      project
      region
      backendService
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
              Core.Proxy ComputeRegionBackendServicesSetSecurityPolicyResource
          )
          Core.mempty
