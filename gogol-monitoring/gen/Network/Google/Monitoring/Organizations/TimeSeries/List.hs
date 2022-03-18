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
-- Module      : Network.Google.Monitoring.Organizations.TimeSeries.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists time series that match a filter.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.organizations.timeSeries.list@.
module Network.Google.Monitoring.Organizations.TimeSeries.List
  ( -- * Resource
    MonitoringOrganizationsTimeSeriesListResource,

    -- ** Constructing a Request
    newMonitoringOrganizationsTimeSeriesList,
    MonitoringOrganizationsTimeSeriesList,
  )
where

import Network.Google.Monitoring.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @monitoring.organizations.timeSeries.list@ method which the
-- 'MonitoringOrganizationsTimeSeriesList' request conforms to.
type MonitoringOrganizationsTimeSeriesListResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "timeSeries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam
              "aggregation.alignmentPeriod"
              Core.GDuration
    Core.:> Core.QueryParam
              "aggregation.crossSeriesReducer"
              OrganizationsTimeSeriesListAggregationCrossSeriesReducer
    Core.:> Core.QueryParams
              "aggregation.groupByFields"
              Core.Text
    Core.:> Core.QueryParam
              "aggregation.perSeriesAligner"
              OrganizationsTimeSeriesListAggregationPerSeriesAligner
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "interval.endTime" Core.DateTime'
    Core.:> Core.QueryParam "interval.startTime" Core.DateTime'
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "secondaryAggregation.alignmentPeriod"
              Core.GDuration
    Core.:> Core.QueryParam
              "secondaryAggregation.crossSeriesReducer"
              OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
    Core.:> Core.QueryParams
              "secondaryAggregation.groupByFields"
              Core.Text
    Core.:> Core.QueryParam
              "secondaryAggregation.perSeriesAligner"
              OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
    Core.:> Core.QueryParam
              "uploadType"
              Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam
              "view"
              OrganizationsTimeSeriesListView
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListTimeSeriesResponse

-- | Lists time series that match a filter.
--
-- /See:/ 'newMonitoringOrganizationsTimeSeriesList' smart constructor.
data MonitoringOrganizationsTimeSeriesList = MonitoringOrganizationsTimeSeriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The alignment/period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN/NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN/NONE is specified, then this field is ignored.The maximum value of the alignment/period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.
    aggregationAlignmentPeriod :: (Core.Maybe Core.GDuration),
    -- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
    aggregationCrossSeriesReducer ::
      ( Core.Maybe
          OrganizationsTimeSeriesListAggregationCrossSeriesReducer
      ),
    -- | The set of fields to preserve when cross/series/reducer is specified. The group/by/fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross/series/reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group/by/fields are aggregated away. If group/by/fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross/series/reducer is not defined, this field is ignored.
    aggregationGroupByFields :: (Core.Maybe [Core.Text]),
    -- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
    aggregationPerSeriesAligner :: (Core.Maybe OrganizationsTimeSeriesListAggregationPerSeriesAligner),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A monitoring filter (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that specifies which time series should be returned. The filter must specify a single metric type, and can additionally specify metric labels and other information. For example: metric.type = \"compute.googleapis.com\/instance\/cpu\/usage/time\" AND metric.labels.instance/name = \"my-instance-name\"
    filter :: (Core.Maybe Core.Text),
    -- | Required. The end of the time interval.
    intervalEndTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.
    intervalStartTime :: (Core.Maybe Core.DateTime'),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name), organization or folder on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] organizations\/[ORGANIZATION/ID] folders\/[FOLDER/ID]
    name :: Core.Text,
    -- | Unsupported: must be left blank. The points in each time series are currently returned in reverse time order (most recent to oldest).
    orderBy :: (Core.Maybe Core.Text),
    -- | A positive number that is the maximum number of results to return. If page/size is empty or more than 100,000 results, the effective page/size is 100,000 results. If view is set to FULL, this is the maximum number of Points returned. If view is set to HEADERS, this is the maximum number of TimeSeries returned.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    pageToken :: (Core.Maybe Core.Text),
    -- | The alignment/period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN/NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN/NONE is specified, then this field is ignored.The maximum value of the alignment/period is 104 weeks (2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.
    secondaryAggregationAlignmentPeriod :: (Core.Maybe Core.GDuration),
    -- | The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric/kind and the value/type of the original time series. Reduction can yield a time series with a different metric/kind or value/type than the input time series.Time series data must first be aligned (see per/series/aligner) in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified, and must not be ALIGN/NONE. An alignment/period must also be specified; otherwise, an error is returned.
    secondaryAggregationCrossSeriesReducer ::
      ( Core.Maybe
          OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
      ),
    -- | The set of fields to preserve when cross/series/reducer is specified. The group/by/fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross/series/reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group/by/fields are aggregated away. If group/by/fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross/series/reducer is not defined, this field is ignored.
    secondaryAggregationGroupByFields :: (Core.Maybe [Core.Text]),
    -- | An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN/NONE, all alignments cause all the data points in an alignment/period to be mathematically grouped together, resulting in a single data point for each alignment/period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric/kind and value/type of the original time series. Alignment can change the metric/kind or the value/type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross/series/reducer is specified, then per/series/aligner must be specified and not equal to ALIGN/NONE and alignment_period must be specified; otherwise, an error is returned.
    secondaryAggregationPerSeriesAligner ::
      ( Core.Maybe
          OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
      ),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. Specifies which information is returned about the time series.
    view :: (Core.Maybe OrganizationsTimeSeriesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringOrganizationsTimeSeriesList' with the minimum fields required to make a request.
newMonitoringOrganizationsTimeSeriesList ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name), organization or folder on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] organizations\/[ORGANIZATION/ID] folders\/[FOLDER/ID] See 'name'.
  Core.Text ->
  MonitoringOrganizationsTimeSeriesList
newMonitoringOrganizationsTimeSeriesList name =
  MonitoringOrganizationsTimeSeriesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      aggregationAlignmentPeriod = Core.Nothing,
      aggregationCrossSeriesReducer = Core.Nothing,
      aggregationGroupByFields = Core.Nothing,
      aggregationPerSeriesAligner = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      intervalEndTime = Core.Nothing,
      intervalStartTime = Core.Nothing,
      name = name,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      secondaryAggregationAlignmentPeriod = Core.Nothing,
      secondaryAggregationCrossSeriesReducer = Core.Nothing,
      secondaryAggregationGroupByFields = Core.Nothing,
      secondaryAggregationPerSeriesAligner = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringOrganizationsTimeSeriesList
  where
  type
    Rs MonitoringOrganizationsTimeSeriesList =
      ListTimeSeriesResponse
  type
    Scopes MonitoringOrganizationsTimeSeriesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring",
         "https://www.googleapis.com/auth/monitoring.read"
       ]
  requestClient
    MonitoringOrganizationsTimeSeriesList {..} =
      go
        name
        xgafv
        accessToken
        aggregationAlignmentPeriod
        aggregationCrossSeriesReducer
        (aggregationGroupByFields Core.^. Core._Default)
        aggregationPerSeriesAligner
        callback
        filter
        intervalEndTime
        intervalStartTime
        orderBy
        pageSize
        pageToken
        secondaryAggregationAlignmentPeriod
        secondaryAggregationCrossSeriesReducer
        ( secondaryAggregationGroupByFields
            Core.^. Core._Default
        )
        secondaryAggregationPerSeriesAligner
        uploadType
        uploadProtocol
        view
        (Core.Just Core.AltJSON)
        monitoringService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  MonitoringOrganizationsTimeSeriesListResource
            )
            Core.mempty
