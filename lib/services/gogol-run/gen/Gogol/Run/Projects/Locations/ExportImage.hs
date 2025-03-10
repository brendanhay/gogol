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
-- Module      : Gogol.Run.Projects.Locations.ExportImage
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Export image for a given resource.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.exportImage@.
module Gogol.Run.Projects.Locations.ExportImage
  ( -- * Resource
    RunProjectsLocationsExportImageResource,

    -- ** Constructing a Request
    RunProjectsLocationsExportImage (..),
    newRunProjectsLocationsExportImage,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.exportImage@ method which the
-- 'RunProjectsLocationsExportImage' request conforms to.
type RunProjectsLocationsExportImageResource =
  "v2"
    Core.:> Core.CaptureMode "name" "exportImage" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2ExportImageRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudRunV2ExportImageResponse

-- | Export image for a given resource.
--
-- /See:/ 'newRunProjectsLocationsExportImage' smart constructor.
data RunProjectsLocationsExportImage = RunProjectsLocationsExportImage
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the resource of which image metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2ExportImageRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsExportImage' with the minimum fields required to make a request.
newRunProjectsLocationsExportImage ::
  -- |  Required. The name of the resource of which image metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2ExportImageRequest ->
  RunProjectsLocationsExportImage
newRunProjectsLocationsExportImage name payload =
  RunProjectsLocationsExportImage
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsExportImage where
  type
    Rs RunProjectsLocationsExportImage =
      GoogleCloudRunV2ExportImageResponse
  type
    Scopes RunProjectsLocationsExportImage =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsExportImage {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      runService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy RunProjectsLocationsExportImageResource)
          Core.mempty
