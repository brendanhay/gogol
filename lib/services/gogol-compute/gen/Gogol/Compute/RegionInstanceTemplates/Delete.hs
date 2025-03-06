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
-- Module      : Gogol.Compute.RegionInstanceTemplates.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified instance template. Deleting an instance template is permanent and cannot be undone.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionInstanceTemplates.delete@.
module Gogol.Compute.RegionInstanceTemplates.Delete
  ( -- * Resource
    ComputeRegionInstanceTemplatesDeleteResource,

    -- ** Constructing a Request
    ComputeRegionInstanceTemplatesDelete (..),
    newComputeRegionInstanceTemplatesDelete,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionInstanceTemplates.delete@ method which the
-- 'ComputeRegionInstanceTemplatesDelete' request conforms to.
type ComputeRegionInstanceTemplatesDeleteResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "instanceTemplates"
    Core.:> Core.Capture "instanceTemplate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes the specified instance template. Deleting an instance template is permanent and cannot be undone.
--
-- /See:/ 'newComputeRegionInstanceTemplatesDelete' smart constructor.
data ComputeRegionInstanceTemplatesDelete = ComputeRegionInstanceTemplatesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the instance template to delete.
    instanceTemplate :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | The name of the region for this request.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionInstanceTemplatesDelete' with the minimum fields required to make a request.
newComputeRegionInstanceTemplatesDelete ::
  -- |  The name of the instance template to delete. See 'instanceTemplate'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the region for this request. See 'region'.
  Core.Text ->
  ComputeRegionInstanceTemplatesDelete
newComputeRegionInstanceTemplatesDelete
  instanceTemplate
  project
  region =
    ComputeRegionInstanceTemplatesDelete
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        instanceTemplate = instanceTemplate,
        project = project,
        region = region,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeRegionInstanceTemplatesDelete where
  type Rs ComputeRegionInstanceTemplatesDelete = Operation
  type
    Scopes ComputeRegionInstanceTemplatesDelete =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeRegionInstanceTemplatesDelete {..} =
    go
      project
      region
      instanceTemplate
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
              Core.Proxy ComputeRegionInstanceTemplatesDeleteResource
          )
          Core.mempty
