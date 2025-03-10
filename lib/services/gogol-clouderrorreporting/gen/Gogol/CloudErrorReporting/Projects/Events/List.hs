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
-- Module      : Gogol.CloudErrorReporting.Projects.Events.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified events.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.events.list@.
module Gogol.CloudErrorReporting.Projects.Events.List
  ( -- * Resource
    CloudErrorReportingProjectsEventsListResource,

    -- ** Constructing a Request
    CloudErrorReportingProjectsEventsList (..),
    newCloudErrorReportingProjectsEventsList,
  )
where

import Gogol.CloudErrorReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @clouderrorreporting.projects.events.list@ method which the
-- 'CloudErrorReportingProjectsEventsList' request conforms to.
type CloudErrorReportingProjectsEventsListResource =
  "v1beta1"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "events"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "groupId" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "serviceFilter.resourceType" Core.Text
    Core.:> Core.QueryParam "serviceFilter.service" Core.Text
    Core.:> Core.QueryParam "serviceFilter.version" Core.Text
    Core.:> Core.QueryParam
              "timeRange.period"
              ProjectsEventsListTimeRangePeriod
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListEventsResponse

-- | Lists the specified events.
--
-- /See:/ 'newCloudErrorReportingProjectsEventsList' smart constructor.
data CloudErrorReportingProjectsEventsList = CloudErrorReportingProjectsEventsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The group for which events shall be returned. The @group_id@ is a unique identifier for a particular error group. The identifier is derived from key parts of the error-log content and is treated as Service Data. For information about how Service Data is handled, see <https://cloud.google.com/terms/cloud-privacy-notice Google Cloud Privacy Notice>.
    groupId :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return per response.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A @next_page_token@ provided by a previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectID}\/locations\/{location}@, where @{projectID}@ is the <https://support.google.com/cloud/answer/6158840 Google Cloud Platform project ID> and @{location}@ is a Cloud region. Examples: @projects\/my-project-123@, @projects\/my-project-123\/locations\/global@. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified.
    projectName :: Core.Text,
    -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type ServiceContext.resource_type>.
    serviceFilterResourceType :: (Core.Maybe Core.Text),
    -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service ServiceContext.service>.
    serviceFilterService :: (Core.Maybe Core.Text),
    -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version ServiceContext.version>.
    serviceFilterVersion :: (Core.Maybe Core.Text),
    -- | Restricts the query to the specified time range.
    timeRangePeriod :: (Core.Maybe ProjectsEventsListTimeRangePeriod),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsEventsList' with the minimum fields required to make a request.
newCloudErrorReportingProjectsEventsList ::
  -- |  Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectID}\/locations\/{location}@, where @{projectID}@ is the <https://support.google.com/cloud/answer/6158840 Google Cloud Platform project ID> and @{location}@ is a Cloud region. Examples: @projects\/my-project-123@, @projects\/my-project-123\/locations\/global@. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified. See 'projectName'.
  Core.Text ->
  CloudErrorReportingProjectsEventsList
newCloudErrorReportingProjectsEventsList projectName =
  CloudErrorReportingProjectsEventsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupId = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectName = projectName,
      serviceFilterResourceType = Core.Nothing,
      serviceFilterService = Core.Nothing,
      serviceFilterVersion = Core.Nothing,
      timeRangePeriod = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudErrorReportingProjectsEventsList where
  type Rs CloudErrorReportingProjectsEventsList = ListEventsResponse
  type
    Scopes CloudErrorReportingProjectsEventsList =
      '[CloudPlatform'FullControl]
  requestClient CloudErrorReportingProjectsEventsList {..} =
    go
      projectName
      xgafv
      accessToken
      callback
      groupId
      pageSize
      pageToken
      serviceFilterResourceType
      serviceFilterService
      serviceFilterVersion
      timeRangePeriod
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudErrorReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudErrorReportingProjectsEventsListResource
          )
          Core.mempty
