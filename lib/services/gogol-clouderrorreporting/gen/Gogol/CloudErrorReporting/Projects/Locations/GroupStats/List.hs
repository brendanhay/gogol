{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudErrorReporting.Projects.Locations.GroupStats.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified groups.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.locations.groupStats.list@.
module Gogol.CloudErrorReporting.Projects.Locations.GroupStats.List
    (
    -- * Resource
      CloudErrorReportingProjectsLocationsGroupStatsListResource

    -- ** Constructing a Request
    , CloudErrorReportingProjectsLocationsGroupStatsList (..)
    , newCloudErrorReportingProjectsLocationsGroupStatsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudErrorReporting.Types

-- | A resource alias for @clouderrorreporting.projects.locations.groupStats.list@ method which the
-- 'CloudErrorReportingProjectsLocationsGroupStatsList' request conforms to.
type CloudErrorReportingProjectsLocationsGroupStatsListResource
     =
     "v1beta1" Core.:>
       Core.Capture "projectName" Core.Text Core.:>
         "groupStats" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "alignment"
                 ProjectsLocationsGroupStatsListAlignment
                 Core.:>
                 Core.QueryParam "alignmentTime" Core.DateTime Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParams "groupId" Core.Text Core.:>
                       Core.QueryParam "order"
                         ProjectsLocationsGroupStatsListOrder
                         Core.:>
                         Core.QueryParam "pageSize" Core.Int32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "serviceFilter.resourceType"
                               Core.Text
                               Core.:>
                               Core.QueryParam "serviceFilter.service" Core.Text
                                 Core.:>
                                 Core.QueryParam "serviceFilter.version"
                                   Core.Text
                                   Core.:>
                                   Core.QueryParam "timeRange.period"
                                     ProjectsLocationsGroupStatsListTimeRangePeriod
                                     Core.:>
                                     Core.QueryParam "timedCountDuration"
                                       Core.Duration
                                       Core.:>
                                       Core.QueryParam "uploadType" Core.Text
                                         Core.:>
                                         Core.QueryParam "upload_protocol"
                                           Core.Text
                                           Core.:>
                                           Core.QueryParam "alt" Core.AltJSON
                                             Core.:>
                                             Core.Get '[Core.JSON]
                                               ListGroupStatsResponse

-- | Lists the specified groups.
--
-- /See:/ 'newCloudErrorReportingProjectsLocationsGroupStatsList' smart constructor.
data CloudErrorReportingProjectsLocationsGroupStatsList = CloudErrorReportingProjectsLocationsGroupStatsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Optional. The alignment of the timed counts to be returned. Default is @ALIGNMENT_EQUAL_AT_END@.
    , alignment :: (Core.Maybe ProjectsLocationsGroupStatsListAlignment)
      -- | Optional. Time where the timed counts shall be aligned if rounded alignment is chosen. Default is 00:00 UTC.
    , alignmentTime :: (Core.Maybe Core.DateTime)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. List all ErrorGroupStats with these IDs. The @group_id@ is a unique identifier for a particular error group. The identifier is derived from key parts of the error-log content and is treated as Service Data. For information about how Service Data is handled, see [Google Cloud Privacy Notice] (https:\/\/cloud.google.com\/terms\/cloud-privacy-notice).
    , groupId :: (Core.Maybe [Core.Text])
      -- | Optional. The sort order in which the results are returned. Default is @COUNT_DESC@.
    , order :: (Core.Maybe ProjectsLocationsGroupStatsListOrder)
      -- | Optional. The maximum number of results to return per response. Default is 20.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A next/page/token provided by a previous response. To view additional results, pass this token along with the identical query parameters as the first request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectNumber}@, where @{projectID}@ and @{projectNumber}@ can be found in the <https://support.google.com/cloud/answer/6158840 Google Cloud console>. It may also include a location, such as @projects\/{projectID}\/locations\/{location}@ where @{location}@ is a cloud region. Examples: @projects\/my-project-123@, @projects\/5551234@, @projects\/my-project-123\/locations\/us-central1@, @projects\/5551234\/locations\/us-central1@. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified. Use @-@ as a wildcard to request group stats from all regions.
    , projectName :: Core.Text
      -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.resource_type ServiceContext.resource_type>.
    , serviceFilterResourceType :: (Core.Maybe Core.Text)
      -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.service ServiceContext.service>.
    , serviceFilterService :: (Core.Maybe Core.Text)
      -- | Optional. The exact value to match against </error-reporting/reference/rest/v1beta1/ServiceContext#FIELDS.version ServiceContext.version>.
    , serviceFilterVersion :: (Core.Maybe Core.Text)
      -- | Restricts the query to the specified time range.
    , timeRangePeriod :: (Core.Maybe ProjectsLocationsGroupStatsListTimeRangePeriod)
      -- | Optional. The preferred duration for a single returned TimedCount. If not set, no timed counts are returned.
    , timedCountDuration :: (Core.Maybe Core.Duration)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsLocationsGroupStatsList' with the minimum fields required to make a request.
newCloudErrorReportingProjectsLocationsGroupStatsList 
    ::  Core.Text
       -- ^  Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectID}@ or @projects\/{projectNumber}@, where @{projectID}@ and @{projectNumber}@ can be found in the <https://support.google.com/cloud/answer/6158840 Google Cloud console>. It may also include a location, such as @projects\/{projectID}\/locations\/{location}@ where @{location}@ is a cloud region. Examples: @projects\/my-project-123@, @projects\/5551234@, @projects\/my-project-123\/locations\/us-central1@, @projects\/5551234\/locations\/us-central1@. For a list of supported locations, see <https://cloud.google.com/logging/docs/region-support Supported Regions>. @global@ is the default when unspecified. Use @-@ as a wildcard to request group stats from all regions. See 'projectName'.
    -> CloudErrorReportingProjectsLocationsGroupStatsList
newCloudErrorReportingProjectsLocationsGroupStatsList projectName =
  CloudErrorReportingProjectsLocationsGroupStatsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , alignment = Core.Nothing
    , alignmentTime = Core.Nothing
    , callback = Core.Nothing
    , groupId = Core.Nothing
    , order = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , projectName = projectName
    , serviceFilterResourceType = Core.Nothing
    , serviceFilterService = Core.Nothing
    , serviceFilterVersion = Core.Nothing
    , timeRangePeriod = Core.Nothing
    , timedCountDuration = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudErrorReportingProjectsLocationsGroupStatsList
         where
        type Rs
               CloudErrorReportingProjectsLocationsGroupStatsList
             = ListGroupStatsResponse
        type Scopes
               CloudErrorReportingProjectsLocationsGroupStatsList
             = '[CloudPlatform'FullControl]
        requestClient
          CloudErrorReportingProjectsLocationsGroupStatsList{..}
          = go projectName xgafv accessToken alignment
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
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudErrorReportingProjectsLocationsGroupStatsListResource)
                      Core.mempty
