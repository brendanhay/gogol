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
-- Module      : Gogol.Run.Projects.Locations.Services.Revisions.ExportStatus
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Read the status of an image export operation.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.revisions.exportStatus@.
module Gogol.Run.Projects.Locations.Services.Revisions.ExportStatus
  ( -- * Resource
    RunProjectsLocationsServicesRevisionsExportStatusResource,

    -- ** Constructing a Request
    RunProjectsLocationsServicesRevisionsExportStatus (..),
    newRunProjectsLocationsServicesRevisionsExportStatus,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.services.revisions.exportStatus@ method which the
-- 'RunProjectsLocationsServicesRevisionsExportStatus' request conforms to.
type RunProjectsLocationsServicesRevisionsExportStatusResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.CaptureMode "operationId" "exportStatus" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudRunV2ExportStatusResponse

-- | Read the status of an image export operation.
--
-- /See:/ 'newRunProjectsLocationsServicesRevisionsExportStatus' smart constructor.
data RunProjectsLocationsServicesRevisionsExportStatus = RunProjectsLocationsServicesRevisionsExportStatus
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the resource of which image export operation status has to be fetched. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution
    name :: Core.Text,
    -- | Required. The operation id returned from ExportImage.
    operationId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesRevisionsExportStatus' with the minimum fields required to make a request.
newRunProjectsLocationsServicesRevisionsExportStatus ::
  -- |  Required. The name of the resource of which image export operation status has to be fetched. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution See 'name'.
  Core.Text ->
  -- |  Required. The operation id returned from ExportImage. See 'operationId'.
  Core.Text ->
  RunProjectsLocationsServicesRevisionsExportStatus
newRunProjectsLocationsServicesRevisionsExportStatus
  name
  operationId =
    RunProjectsLocationsServicesRevisionsExportStatus
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        operationId = operationId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    RunProjectsLocationsServicesRevisionsExportStatus
  where
  type
    Rs RunProjectsLocationsServicesRevisionsExportStatus =
      GoogleCloudRunV2ExportStatusResponse
  type
    Scopes RunProjectsLocationsServicesRevisionsExportStatus =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsServicesRevisionsExportStatus {..} =
    go
      name
      operationId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                RunProjectsLocationsServicesRevisionsExportStatusResource
          )
          Core.mempty
