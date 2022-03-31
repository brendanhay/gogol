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
-- Module      : Gogol.CloudErrorReporting.Projects.GroupStats.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified groups.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.groupStats.list@.
module Gogol.CloudErrorReporting.Projects.GroupStats.List
  ( -- * Resource
    CloudErrorReportingProjectsGroupStatsListResource,

    -- ** Constructing a Request
    newCloudErrorReportingProjectsGroupStatsList,
    CloudErrorReportingProjectsGroupStatsList,
  )
where

import Gogol.CloudErrorReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @clouderrorreporting.projects.groupStats.list@ method which the
-- 'CloudErrorReportingProjectsGroupStatsList' request conforms to.
type CloudErrorReportingProjectsGroupStatsListResource =
  "v1beta1"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "groupStats"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam
              "alignment"
              ProjectsGroupStatsListAlignment
    Core.:> Core.QueryParam "alignmentTime" Core.DateTime'
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "groupId" Core.Text
    Core.:> Core.QueryParam "order" ProjectsGroupStatsListOrder
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "serviceFilter.resourceType"
              Core.Text
    Core.:> Core.QueryParam "serviceFilter.service" Core.Text
    Core.:> Core.QueryParam
              "serviceFilter.version"
              Core.Text
    Core.:> Core.QueryParam
              "timeRange.period"
              ProjectsGroupStatsListTimeRangePeriod
    Core.:> Core.QueryParam
              "timedCountDuration"
              Core.GDuration
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListGroupStatsResponse

-- | Lists the specified groups.
--
-- /See:/ 'newCloudErrorReportingProjectsGroupStatsList' smart constructor.
data CloudErrorReportingProjectsGroupStatsList = CloudErrorReportingProjectsGroupStatsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. The alignment of the timed counts to be returned. Default is @ALIGNMENT_EQUAL_AT_END@.
    alignment :: (Core.Maybe ProjectsGroupStatsListAlignment),
    -- | Optional. Time where the timed counts shall be aligned if rounded alignment is chosen. Default is 00:00 UTC.
    alignmentTime :: (Core.Maybe Core.DateTime'),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. List all ErrorGroupStats with these IDs.
    groupId :: (Core.Maybe [Core.Text]),
    -- | Optional. The sort order in which the results are returned. Default is @COUNT_DESC@.
    order :: (Core.Maybe ProjectsGroupStatsListOrder),
    -- | Optional. The maximum number of results to return per response. Default is 20.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A @next_page_token@ provided by a previous response. To view additional results, pass this token along with the identical query parameters as the first request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectNumber}@, where @{projectID}@ and @{projectNumber}@ can be found in the <https://support.google.com/cloud/answer/6158840 Google Cloud Console>. Examples: @projects\/my-project-123@, @projects\/5551234@.
    projectName :: Core.Text,
    -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type ServiceContext.resource_type>.
    serviceFilterResourceType :: (Core.Maybe Core.Text),
    -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service ServiceContext.service>.
    serviceFilterService :: (Core.Maybe Core.Text),
    -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version ServiceContext.version>.
    serviceFilterVersion :: (Core.Maybe Core.Text),
    -- | Restricts the query to the specified time range.
    timeRangePeriod :: (Core.Maybe ProjectsGroupStatsListTimeRangePeriod),
    -- | Optional. The preferred duration for a single returned @TimedCount@. If not set, no timed counts are returned.
    timedCountDuration :: (Core.Maybe Core.GDuration),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsGroupStatsList' with the minimum fields required to make a request.
newCloudErrorReportingProjectsGroupStatsList ::
  -- |  Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectNumber}@, where @{projectID}@ and @{projectNumber}@ can be found in the <https://support.google.com/cloud/answer/6158840 Google Cloud Console>. Examples: @projects\/my-project-123@, @projects\/5551234@. See 'projectName'.
  Core.Text ->
  CloudErrorReportingProjectsGroupStatsList
newCloudErrorReportingProjectsGroupStatsList projectName =
  CloudErrorReportingProjectsGroupStatsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      alignment = Core.Nothing,
      alignmentTime = Core.Nothing,
      callback = Core.Nothing,
      groupId = Core.Nothing,
      order = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectName = projectName,
      serviceFilterResourceType = Core.Nothing,
      serviceFilterService = Core.Nothing,
      serviceFilterVersion = Core.Nothing,
      timeRangePeriod = Core.Nothing,
      timedCountDuration = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudErrorReportingProjectsGroupStatsList
  where
  type
    Rs CloudErrorReportingProjectsGroupStatsList =
      ListGroupStatsResponse
  type
    Scopes CloudErrorReportingProjectsGroupStatsList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudErrorReportingProjectsGroupStatsList {..} =
      go
        projectName
        xgafv
        accessToken
        alignment
        alignmentTime
        callback
        (groupId Core.^. Core._Default)
        order
        pageSize
        pageToken
        serviceFilterResourceType
        serviceFilterService
        serviceFilterVersion
        timeRangePeriod
        timedCountDuration
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudErrorReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudErrorReportingProjectsGroupStatsListResource
            )
            Core.mempty
