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
-- Module      : Gogol.CloudErrorReporting.Projects.Locations.DeleteEvents
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all error events of a given project.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.locations.deleteEvents@.
module Gogol.CloudErrorReporting.Projects.Locations.DeleteEvents
  ( -- * Resource
    CloudErrorReportingProjectsLocationsDeleteEventsResource,

    -- ** Constructing a Request
    CloudErrorReportingProjectsLocationsDeleteEvents (..),
    newCloudErrorReportingProjectsLocationsDeleteEvents,
  )
where

import Gogol.CloudErrorReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @clouderrorreporting.projects.locations.deleteEvents@ method which the
-- 'CloudErrorReportingProjectsLocationsDeleteEvents' request conforms to.
type CloudErrorReportingProjectsLocationsDeleteEventsResource =
  "v1beta1"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "events"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] DeleteEventsResponse

-- | Deletes all error events of a given project.
--
-- /See:/ 'newCloudErrorReportingProjectsLocationsDeleteEvents' smart constructor.
data CloudErrorReportingProjectsLocationsDeleteEvents = CloudErrorReportingProjectsLocationsDeleteEvents
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectID}\/locations\/{location}@, where @{projectID}@ is the <https://support.google.com/cloud/answer/6158840 Google Cloud Platform project ID> and @{location}@ is a Cloud region. Examples: @projects\/my-project-123@, @projects\/my-project-123\/locations\/global@. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified.
    projectName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsLocationsDeleteEvents' with the minimum fields required to make a request.
newCloudErrorReportingProjectsLocationsDeleteEvents ::
  -- |  Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectID}\/locations\/{location}@, where @{projectID}@ is the <https://support.google.com/cloud/answer/6158840 Google Cloud Platform project ID> and @{location}@ is a Cloud region. Examples: @projects\/my-project-123@, @projects\/my-project-123\/locations\/global@. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified. See 'projectName'.
  Core.Text ->
  CloudErrorReportingProjectsLocationsDeleteEvents
newCloudErrorReportingProjectsLocationsDeleteEvents projectName =
  CloudErrorReportingProjectsLocationsDeleteEvents
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      projectName = projectName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudErrorReportingProjectsLocationsDeleteEvents
  where
  type
    Rs CloudErrorReportingProjectsLocationsDeleteEvents =
      DeleteEventsResponse
  type
    Scopes CloudErrorReportingProjectsLocationsDeleteEvents =
      '[CloudPlatform'FullControl]
  requestClient CloudErrorReportingProjectsLocationsDeleteEvents {..} =
    go
      projectName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudErrorReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudErrorReportingProjectsLocationsDeleteEventsResource
          )
          Core.mempty
