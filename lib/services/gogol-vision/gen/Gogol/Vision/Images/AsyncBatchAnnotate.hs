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
-- Module      : Gogol.Vision.Images.AsyncBatchAnnotate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the @google.longrunning.Operations@ interface. @Operation.metadata@ contains @OperationMetadata@ (metadata). @Operation.response@ contains @AsyncBatchAnnotateImagesResponse@ (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.images.asyncBatchAnnotate@.
module Gogol.Vision.Images.AsyncBatchAnnotate
  ( -- * Resource
    VisionImagesAsyncBatchAnnotateResource,

    -- ** Constructing a Request
    VisionImagesAsyncBatchAnnotate (..),
    newVisionImagesAsyncBatchAnnotate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vision.Types

-- | A resource alias for @vision.images.asyncBatchAnnotate@ method which the
-- 'VisionImagesAsyncBatchAnnotate' request conforms to.
type VisionImagesAsyncBatchAnnotateResource =
  "v1p2beta1"
    Core.:> "images:asyncBatchAnnotate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Run asynchronous image detection and annotation for a list of images. Progress and results can be retrieved through the @google.longrunning.Operations@ interface. @Operation.metadata@ contains @OperationMetadata@ (metadata). @Operation.response@ contains @AsyncBatchAnnotateImagesResponse@ (results). This service will write image annotation outputs to json files in customer GCS bucket, each json file containing BatchAnnotateImagesResponse proto.
--
-- /See:/ 'newVisionImagesAsyncBatchAnnotate' smart constructor.
data VisionImagesAsyncBatchAnnotate = VisionImagesAsyncBatchAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisionImagesAsyncBatchAnnotate' with the minimum fields required to make a request.
newVisionImagesAsyncBatchAnnotate ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest ->
  VisionImagesAsyncBatchAnnotate
newVisionImagesAsyncBatchAnnotate payload =
  VisionImagesAsyncBatchAnnotate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VisionImagesAsyncBatchAnnotate where
  type Rs VisionImagesAsyncBatchAnnotate = Operation
  type
    Scopes VisionImagesAsyncBatchAnnotate =
      '[CloudPlatform'FullControl, CloudVision'FullControl]
  requestClient VisionImagesAsyncBatchAnnotate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      visionService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy VisionImagesAsyncBatchAnnotateResource)
          Core.mempty
