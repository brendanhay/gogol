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
-- Module      : Gogol.Vision.Files.AsyncBatchAnnotate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the @google.longrunning.Operations@ interface. @Operation.metadata@ contains @OperationMetadata@ (metadata). @Operation.response@ contains @AsyncBatchAnnotateFilesResponse@ (results).
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.files.asyncBatchAnnotate@.
module Gogol.Vision.Files.AsyncBatchAnnotate
  ( -- * Resource
    VisionFilesAsyncBatchAnnotateResource,

    -- ** Constructing a Request
    VisionFilesAsyncBatchAnnotate (..),
    newVisionFilesAsyncBatchAnnotate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vision.Types

-- | A resource alias for @vision.files.asyncBatchAnnotate@ method which the
-- 'VisionFilesAsyncBatchAnnotate' request conforms to.
type VisionFilesAsyncBatchAnnotateResource =
  "v1p2beta1"
    Core.:> "files:asyncBatchAnnotate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Run asynchronous image detection and annotation for a list of generic files, such as PDF files, which may contain multiple pages and multiple images per page. Progress and results can be retrieved through the @google.longrunning.Operations@ interface. @Operation.metadata@ contains @OperationMetadata@ (metadata). @Operation.response@ contains @AsyncBatchAnnotateFilesResponse@ (results).
--
-- /See:/ 'newVisionFilesAsyncBatchAnnotate' smart constructor.
data VisionFilesAsyncBatchAnnotate = VisionFilesAsyncBatchAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisionFilesAsyncBatchAnnotate' with the minimum fields required to make a request.
newVisionFilesAsyncBatchAnnotate ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest ->
  VisionFilesAsyncBatchAnnotate
newVisionFilesAsyncBatchAnnotate payload =
  VisionFilesAsyncBatchAnnotate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VisionFilesAsyncBatchAnnotate where
  type Rs VisionFilesAsyncBatchAnnotate = Operation
  type
    Scopes VisionFilesAsyncBatchAnnotate =
      '[CloudPlatform'FullControl, CloudVision'FullControl]
  requestClient VisionFilesAsyncBatchAnnotate {..} =
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
          (Core.Proxy :: Core.Proxy VisionFilesAsyncBatchAnnotateResource)
          Core.mempty
