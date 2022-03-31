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
-- Module      : Gogol.Vision.Projects.Locations.Images.Annotate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run image detection and annotation for a batch of images.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.locations.images.annotate@.
module Gogol.Vision.Projects.Locations.Images.Annotate
  ( -- * Resource
    VisionProjectsLocationsImagesAnnotateResource,

    -- ** Constructing a Request
    newVisionProjectsLocationsImagesAnnotate,
    VisionProjectsLocationsImagesAnnotate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vision.Types

-- | A resource alias for @vision.projects.locations.images.annotate@ method which the
-- 'VisionProjectsLocationsImagesAnnotate' request conforms to.
type VisionProjectsLocationsImagesAnnotateResource =
  "v1p2beta1"
    Core.:> Core.Capture "parent" Core.Text
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
-- /See:/ 'newVisionProjectsLocationsImagesAnnotate' smart constructor.
data VisionProjectsLocationsImagesAnnotate = VisionProjectsLocationsImagesAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisionProjectsLocationsImagesAnnotate' with the minimum fields required to make a request.
newVisionProjectsLocationsImagesAnnotate ::
  -- |  Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest ->
  VisionProjectsLocationsImagesAnnotate
newVisionProjectsLocationsImagesAnnotate parent payload =
  VisionProjectsLocationsImagesAnnotate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    VisionProjectsLocationsImagesAnnotate
  where
  type
    Rs VisionProjectsLocationsImagesAnnotate =
      GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
  type
    Scopes VisionProjectsLocationsImagesAnnotate =
      '[CloudPlatform'FullControl, CloudVision'FullControl]
  requestClient
    VisionProjectsLocationsImagesAnnotate {..} =
      go
        parent
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
                Core.Proxy
                  VisionProjectsLocationsImagesAnnotateResource
            )
            Core.mempty
