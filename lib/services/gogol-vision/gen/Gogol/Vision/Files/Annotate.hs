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
-- Module      : Gogol.Vision.Files.Annotate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service that performs image detection and annotation for a batch of files. Now only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.files.annotate@.
module Gogol.Vision.Files.Annotate
  ( -- * Resource
    VisionFilesAnnotateResource,

    -- ** Constructing a Request
    newVisionFilesAnnotate,
    VisionFilesAnnotate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vision.Types

-- | A resource alias for @vision.files.annotate@ method which the
-- 'VisionFilesAnnotate' request conforms to.
type VisionFilesAnnotateResource =
  "v1p2beta1"
    Core.:> "files:annotate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse

-- | Service that performs image detection and annotation for a batch of files. Now only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.
--
-- /See:/ 'newVisionFilesAnnotate' smart constructor.
data VisionFilesAnnotate = VisionFilesAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisionFilesAnnotate' with the minimum fields required to make a request.
newVisionFilesAnnotate ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest ->
  VisionFilesAnnotate
newVisionFilesAnnotate payload =
  VisionFilesAnnotate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VisionFilesAnnotate where
  type
    Rs VisionFilesAnnotate =
      GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
  type
    Scopes VisionFilesAnnotate =
      '[CloudPlatform'FullControl, CloudVision'FullControl]
  requestClient VisionFilesAnnotate {..} =
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
          ( Core.Proxy ::
              Core.Proxy VisionFilesAnnotateResource
          )
          Core.mempty
