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
-- Module      : Gogol.CloudErrorReporting.Projects.Locations.Groups.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace the data for the specified group. Fails if the group does not exist.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.locations.groups.update@.
module Gogol.CloudErrorReporting.Projects.Locations.Groups.Update
  ( -- * Resource
    CloudErrorReportingProjectsLocationsGroupsUpdateResource,

    -- ** Constructing a Request
    CloudErrorReportingProjectsLocationsGroupsUpdate (..),
    newCloudErrorReportingProjectsLocationsGroupsUpdate,
  )
where

import Gogol.CloudErrorReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @clouderrorreporting.projects.locations.groups.update@ method which the
-- 'CloudErrorReportingProjectsLocationsGroupsUpdate' request conforms to.
type CloudErrorReportingProjectsLocationsGroupsUpdateResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ErrorGroup
    Core.:> Core.Put '[Core.JSON] ErrorGroup

-- | Replace the data for the specified group. Fails if the group does not exist.
--
-- /See:/ 'newCloudErrorReportingProjectsLocationsGroupsUpdate' smart constructor.
data CloudErrorReportingProjectsLocationsGroupsUpdate = CloudErrorReportingProjectsLocationsGroupsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The group resource name. Written as @projects\/{projectID}\/groups\/{group_id}@ or @projects\/{projectID}\/locations\/{location}\/groups\/{group_id}@ Examples: @projects\/my-project-123\/groups\/my-group@, @projects\/my-project-123\/locations\/us-central1\/groups\/my-group@ In the group resource name, the @group_id@ is a unique identifier for a particular error group. The identifier is derived from key parts of the error-log content and is treated as Service Data. For information about how Service Data is handled, see <https://cloud.google.com/terms/cloud-privacy-notice Google Cloud Privacy Notice>. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ErrorGroup,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsLocationsGroupsUpdate' with the minimum fields required to make a request.
newCloudErrorReportingProjectsLocationsGroupsUpdate ::
  -- |  The group resource name. Written as @projects\/{projectID}\/groups\/{group_id}@ or @projects\/{projectID}\/locations\/{location}\/groups\/{group_id}@ Examples: @projects\/my-project-123\/groups\/my-group@, @projects\/my-project-123\/locations\/us-central1\/groups\/my-group@ In the group resource name, the @group_id@ is a unique identifier for a particular error group. The identifier is derived from key parts of the error-log content and is treated as Service Data. For information about how Service Data is handled, see <https://cloud.google.com/terms/cloud-privacy-notice Google Cloud Privacy Notice>. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ErrorGroup ->
  CloudErrorReportingProjectsLocationsGroupsUpdate
newCloudErrorReportingProjectsLocationsGroupsUpdate name payload =
  CloudErrorReportingProjectsLocationsGroupsUpdate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudErrorReportingProjectsLocationsGroupsUpdate
  where
  type
    Rs CloudErrorReportingProjectsLocationsGroupsUpdate =
      ErrorGroup
  type
    Scopes CloudErrorReportingProjectsLocationsGroupsUpdate =
      '[CloudPlatform'FullControl]
  requestClient CloudErrorReportingProjectsLocationsGroupsUpdate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudErrorReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudErrorReportingProjectsLocationsGroupsUpdateResource
          )
          Core.mempty
