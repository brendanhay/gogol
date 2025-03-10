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
-- Module      : Gogol.Vision.Projects.Locations.Files.Annotate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service that performs image detection and annotation for a batch of files. Now only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. This service will extract at most 5 (customers can specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each file provided and perform detection and annotation for each image extracted.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.locations.files.annotate@.
module Gogol.Vision.Projects.Locations.Files.Annotate
  ( -- * Resource
    VisionProjectsLocationsFilesAnnotateResource,

    -- ** Constructing a Request
    VisionProjectsLocationsFilesAnnotate (..),
    newVisionProjectsLocationsFilesAnnotate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vision.Types

-- | A resource alias for @vision.projects.locations.files.annotate@ method which the
-- 'VisionProjectsLocationsFilesAnnotate' request conforms to.
type VisionProjectsLocationsFilesAnnotateResource =
  "v1p2beta1"
    Core.:> Core.Capture "parent" Core.Text
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
-- /See:/ 'newVisionProjectsLocationsFilesAnnotate' smart constructor.
data VisionProjectsLocationsFilesAnnotate = VisionProjectsLocationsFilesAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VisionProjectsLocationsFilesAnnotate' with the minimum fields required to make a request.
newVisionProjectsLocationsFilesAnnotate ::
  -- |  Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest ->
  VisionProjectsLocationsFilesAnnotate
newVisionProjectsLocationsFilesAnnotate parent payload =
  VisionProjectsLocationsFilesAnnotate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest VisionProjectsLocationsFilesAnnotate where
  type
    Rs VisionProjectsLocationsFilesAnnotate =
      GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
  type
    Scopes VisionProjectsLocationsFilesAnnotate =
      '[CloudPlatform'FullControl, CloudVision'FullControl]
  requestClient VisionProjectsLocationsFilesAnnotate {..} =
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
              Core.Proxy VisionProjectsLocationsFilesAnnotateResource
          )
          Core.mempty
