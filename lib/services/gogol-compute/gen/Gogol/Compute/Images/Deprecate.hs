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
-- Module      : Gogol.Compute.Images.Deprecate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the deprecation status of an image. If an empty request body is given, clears the deprecation status instead.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.images.deprecate@.
module Gogol.Compute.Images.Deprecate
  ( -- * Resource
    ComputeImagesDeprecateResource,

    -- ** Constructing a Request
    ComputeImagesDeprecate (..),
    newComputeImagesDeprecate,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.images.deprecate@ method which the
-- 'ComputeImagesDeprecate' request conforms to.
type ComputeImagesDeprecateResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "images"
    Core.:> Core.Capture "image" Core.Text
    Core.:> "deprecate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeprecationStatus
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is given, clears the deprecation status instead.
--
-- /See:/ 'newComputeImagesDeprecate' smart constructor.
data ComputeImagesDeprecate = ComputeImagesDeprecate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Image name.
    image :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeprecationStatus,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeImagesDeprecate' with the minimum fields required to make a request.
newComputeImagesDeprecate ::
  -- |  Image name. See 'image'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeprecationStatus ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeImagesDeprecate
newComputeImagesDeprecate image payload project =
  ComputeImagesDeprecate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      image = image,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeImagesDeprecate where
  type Rs ComputeImagesDeprecate = Operation
  type
    Scopes ComputeImagesDeprecate =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeImagesDeprecate {..} =
    go
      project
      image
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
          (Core.Proxy :: Core.Proxy ComputeImagesDeprecateResource)
          Core.mempty
