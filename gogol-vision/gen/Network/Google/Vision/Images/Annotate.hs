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
-- Module      : Network.Google.Vision.Images.Annotate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run image detection and annotation for a batch of images.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.images.annotate@.
module Network.Google.Vision.Images.Annotate
  ( -- * Resource
    VisionImagesAnnotateResource,

    -- ** Constructing a Request
    newVisionImagesAnnotate,
    VisionImagesAnnotate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Vision.Types

-- | A resource alias for @vision.images.annotate@ method which the
-- 'VisionImagesAnnotate' request conforms to.
type VisionImagesAnnotateResource =
  "v1p2beta1"
    Core.:> "images:annotate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse

-- | Run image detection and annotation for a batch of images.
--
-- /See:/ 'newVisionImagesAnnotate' smart constructor.
data VisionImagesAnnotate = VisionImagesAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisionImagesAnnotate' with the minimum fields required to make a request.
newVisionImagesAnnotate ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest ->
  VisionImagesAnnotate
newVisionImagesAnnotate payload =
  VisionImagesAnnotate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VisionImagesAnnotate where
  type
    Rs VisionImagesAnnotate =
      GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
  type
    Scopes VisionImagesAnnotate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-vision"
       ]
  requestClient VisionImagesAnnotate {..} =
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
              Core.Proxy VisionImagesAnnotateResource
          )
          Core.mempty
