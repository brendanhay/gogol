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
-- Module      : Gogol.CloudErrorReporting.Projects.Locations.Groups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified group.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.locations.groups.get@.
module Gogol.CloudErrorReporting.Projects.Locations.Groups.Get
  ( -- * Resource
    CloudErrorReportingProjectsLocationsGroupsGetResource,

    -- ** Constructing a Request
    CloudErrorReportingProjectsLocationsGroupsGet (..),
    newCloudErrorReportingProjectsLocationsGroupsGet,
  )
where

import Gogol.CloudErrorReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @clouderrorreporting.projects.locations.groups.get@ method which the
-- 'CloudErrorReportingProjectsLocationsGroupsGet' request conforms to.
type CloudErrorReportingProjectsLocationsGroupsGetResource =
  "v1beta1"
    Core.:> Core.Capture "groupName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ErrorGroup

-- | Get the specified group.
--
-- /See:/ 'newCloudErrorReportingProjectsLocationsGroupsGet' smart constructor.
data CloudErrorReportingProjectsLocationsGroupsGet = CloudErrorReportingProjectsLocationsGroupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The group resource name. Written as either @projects\/{projectID}\/groups\/{group_id}@ or @projects\/{projectID}\/locations\/{location}\/groups\/{group_id}@. Call groupStats.list to return a list of groups belonging to this project. Examples: @projects\/my-project-123\/groups\/my-group@, @projects\/my-project-123\/locations\/global\/groups\/my-group@ In the group resource name, the @group_id@ is a unique identifier for a particular error group. The identifier is derived from key parts of the error-log content and is treated as Service Data. For information about how Service Data is handled, see <https://cloud.google.com/terms/cloud-privacy-notice Google Cloud Privacy Notice>. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified.
    groupName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsLocationsGroupsGet' with the minimum fields required to make a request.
newCloudErrorReportingProjectsLocationsGroupsGet ::
  -- |  Required. The group resource name. Written as either @projects\/{projectID}\/groups\/{group_id}@ or @projects\/{projectID}\/locations\/{location}\/groups\/{group_id}@. Call groupStats.list to return a list of groups belonging to this project. Examples: @projects\/my-project-123\/groups\/my-group@, @projects\/my-project-123\/locations\/global\/groups\/my-group@ In the group resource name, the @group_id@ is a unique identifier for a particular error group. The identifier is derived from key parts of the error-log content and is treated as Service Data. For information about how Service Data is handled, see <https://cloud.google.com/terms/cloud-privacy-notice Google Cloud Privacy Notice>. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified. See 'groupName'.
  Core.Text ->
  CloudErrorReportingProjectsLocationsGroupsGet
newCloudErrorReportingProjectsLocationsGroupsGet groupName =
  CloudErrorReportingProjectsLocationsGroupsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupName = groupName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudErrorReportingProjectsLocationsGroupsGet
  where
  type Rs CloudErrorReportingProjectsLocationsGroupsGet = ErrorGroup
  type
    Scopes CloudErrorReportingProjectsLocationsGroupsGet =
      '[CloudPlatform'FullControl]
  requestClient CloudErrorReportingProjectsLocationsGroupsGet {..} =
    go
      groupName
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
              Core.Proxy CloudErrorReportingProjectsLocationsGroupsGetResource
          )
          Core.mempty
