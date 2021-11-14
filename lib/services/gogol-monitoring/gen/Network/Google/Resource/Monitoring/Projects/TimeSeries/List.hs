{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Monitoring.Projects.TimeSeries.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists time series that match a filter. This method does not require a
-- Workspace.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.timeSeries.list@.
module Network.Google.Resource.Monitoring.Projects.TimeSeries.List
    (
    -- * REST Resource
      ProjectsTimeSeriesListResource

    -- * Creating a Request
    , projectsTimeSeriesList
    , ProjectsTimeSeriesList

    -- * Request Lenses
    , ptslIntervalStartTime
    , ptslXgafv
    , ptslUploadProtocol
    , ptslOrderBy
    , ptslAccessToken
    , ptslUploadType
    , ptslSecondaryAggregationPerSeriesAligner
    , ptslAggregationPerSeriesAligner
    , ptslName
    , ptslSecondaryAggregationCrossSeriesReducer
    , ptslAggregationGroupByFields
    , ptslSecondaryAggregationAlignmentPeriod
    , ptslSecondaryAggregationGroupByFields
    , ptslView
    , ptslAggregationCrossSeriesReducer
    , ptslFilter
    , ptslAggregationAlignmentPeriod
    , ptslPageToken
    , ptslIntervalEndTime
    , ptslPageSize
    , ptslCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.timeSeries.list@ method which the
-- 'ProjectsTimeSeriesList' request conforms to.
type ProjectsTimeSeriesListResource =
     "v3" :>
       Capture "name" Text :>
         "timeSeries" :>
           QueryParam "interval.startTime" DateTime' :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "secondaryAggregation.perSeriesAligner"
                         ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner
                         :>
                         QueryParam "aggregation.perSeriesAligner"
                           ProjectsTimeSeriesListAggregationPerSeriesAligner
                           :>
                           QueryParam "secondaryAggregation.crossSeriesReducer"
                             ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer
                             :>
                             QueryParams "aggregation.groupByFields" Text :>
                               QueryParam "secondaryAggregation.alignmentPeriod"
                                 GDuration
                                 :>
                                 QueryParams
                                   "secondaryAggregation.groupByFields"
                                   Text
                                   :>
                                   QueryParam "view" ProjectsTimeSeriesListView
                                     :>
                                     QueryParam "aggregation.crossSeriesReducer"
                                       ProjectsTimeSeriesListAggregationCrossSeriesReducer
                                       :>
                                       QueryParam "filter" Text :>
                                         QueryParam
                                           "aggregation.alignmentPeriod"
                                           GDuration
                                           :>
                                           QueryParam "pageToken" Text :>
                                             QueryParam "interval.endTime"
                                               DateTime'
                                               :>
                                               QueryParam "pageSize"
                                                 (Textual Int32)
                                                 :>
                                                 QueryParam "callback" Text :>
                                                   QueryParam "alt" AltJSON :>
                                                     Get '[JSON]
                                                       ListTimeSeriesResponse

-- | Lists time series that match a filter. This method does not require a
-- Workspace.
--
-- /See:/ 'projectsTimeSeriesList' smart constructor.
data ProjectsTimeSeriesList =
  ProjectsTimeSeriesList'
    { _ptslIntervalStartTime :: !(Maybe DateTime')
    , _ptslXgafv :: !(Maybe Xgafv)
    , _ptslUploadProtocol :: !(Maybe Text)
    , _ptslOrderBy :: !(Maybe Text)
    , _ptslAccessToken :: !(Maybe Text)
    , _ptslUploadType :: !(Maybe Text)
    , _ptslSecondaryAggregationPerSeriesAligner :: !(Maybe ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner)
    , _ptslAggregationPerSeriesAligner :: !(Maybe ProjectsTimeSeriesListAggregationPerSeriesAligner)
    , _ptslName :: !Text
    , _ptslSecondaryAggregationCrossSeriesReducer :: !(Maybe ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer)
    , _ptslAggregationGroupByFields :: !(Maybe [Text])
    , _ptslSecondaryAggregationAlignmentPeriod :: !(Maybe GDuration)
    , _ptslSecondaryAggregationGroupByFields :: !(Maybe [Text])
    , _ptslView :: !(Maybe ProjectsTimeSeriesListView)
    , _ptslAggregationCrossSeriesReducer :: !(Maybe ProjectsTimeSeriesListAggregationCrossSeriesReducer)
    , _ptslFilter :: !(Maybe Text)
    , _ptslAggregationAlignmentPeriod :: !(Maybe GDuration)
    , _ptslPageToken :: !(Maybe Text)
    , _ptslIntervalEndTime :: !(Maybe DateTime')
    , _ptslPageSize :: !(Maybe (Textual Int32))
    , _ptslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTimeSeriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptslIntervalStartTime'
--
-- * 'ptslXgafv'
--
-- * 'ptslUploadProtocol'
--
-- * 'ptslOrderBy'
--
-- * 'ptslAccessToken'
--
-- * 'ptslUploadType'
--
-- * 'ptslSecondaryAggregationPerSeriesAligner'
--
-- * 'ptslAggregationPerSeriesAligner'
--
-- * 'ptslName'
--
-- * 'ptslSecondaryAggregationCrossSeriesReducer'
--
-- * 'ptslAggregationGroupByFields'
--
-- * 'ptslSecondaryAggregationAlignmentPeriod'
--
-- * 'ptslSecondaryAggregationGroupByFields'
--
-- * 'ptslView'
--
-- * 'ptslAggregationCrossSeriesReducer'
--
-- * 'ptslFilter'
--
-- * 'ptslAggregationAlignmentPeriod'
--
-- * 'ptslPageToken'
--
-- * 'ptslIntervalEndTime'
--
-- * 'ptslPageSize'
--
-- * 'ptslCallback'
projectsTimeSeriesList
    :: Text -- ^ 'ptslName'
    -> ProjectsTimeSeriesList
projectsTimeSeriesList pPtslName_ =
  ProjectsTimeSeriesList'
    { _ptslIntervalStartTime = Nothing
    , _ptslXgafv = Nothing
    , _ptslUploadProtocol = Nothing
    , _ptslOrderBy = Nothing
    , _ptslAccessToken = Nothing
    , _ptslUploadType = Nothing
    , _ptslSecondaryAggregationPerSeriesAligner = Nothing
    , _ptslAggregationPerSeriesAligner = Nothing
    , _ptslName = pPtslName_
    , _ptslSecondaryAggregationCrossSeriesReducer = Nothing
    , _ptslAggregationGroupByFields = Nothing
    , _ptslSecondaryAggregationAlignmentPeriod = Nothing
    , _ptslSecondaryAggregationGroupByFields = Nothing
    , _ptslView = Nothing
    , _ptslAggregationCrossSeriesReducer = Nothing
    , _ptslFilter = Nothing
    , _ptslAggregationAlignmentPeriod = Nothing
    , _ptslPageToken = Nothing
    , _ptslIntervalEndTime = Nothing
    , _ptslPageSize = Nothing
    , _ptslCallback = Nothing
    }


-- | Optional. The beginning of the time interval. The default value for the
-- start time is the end time. The start time must not be later than the
-- end time.
ptslIntervalStartTime :: Lens' ProjectsTimeSeriesList (Maybe UTCTime)
ptslIntervalStartTime
  = lens _ptslIntervalStartTime
      (\ s a -> s{_ptslIntervalStartTime = a})
      . mapping _DateTime

-- | V1 error format.
ptslXgafv :: Lens' ProjectsTimeSeriesList (Maybe Xgafv)
ptslXgafv
  = lens _ptslXgafv (\ s a -> s{_ptslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptslUploadProtocol :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslUploadProtocol
  = lens _ptslUploadProtocol
      (\ s a -> s{_ptslUploadProtocol = a})

-- | Unsupported: must be left blank. The points in each time series are
-- currently returned in reverse time order (most recent to oldest).
ptslOrderBy :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslOrderBy
  = lens _ptslOrderBy (\ s a -> s{_ptslOrderBy = a})

-- | OAuth access token.
ptslAccessToken :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslAccessToken
  = lens _ptslAccessToken
      (\ s a -> s{_ptslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptslUploadType :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslUploadType
  = lens _ptslUploadType
      (\ s a -> s{_ptslUploadType = a})

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
ptslSecondaryAggregationPerSeriesAligner :: Lens' ProjectsTimeSeriesList (Maybe ProjectsTimeSeriesListSecondaryAggregationPerSeriesAligner)
ptslSecondaryAggregationPerSeriesAligner
  = lens _ptslSecondaryAggregationPerSeriesAligner
      (\ s a ->
         s{_ptslSecondaryAggregationPerSeriesAligner = a})

-- | An Aligner describes how to bring the data points in a single time
-- series into temporal alignment. Except for ALIGN_NONE, all alignments
-- cause all the data points in an alignment_period to be mathematically
-- grouped together, resulting in a single data point for each
-- alignment_period with end timestamp at the end of the period.Not all
-- alignment operations may be applied to all time series. The valid
-- choices depend on the metric_kind and value_type of the original time
-- series. Alignment can change the metric_kind or the value_type of the
-- time series.Time series data must be aligned in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified and not equal to ALIGN_NONE and
-- alignment_period must be specified; otherwise, an error is returned.
ptslAggregationPerSeriesAligner :: Lens' ProjectsTimeSeriesList (Maybe ProjectsTimeSeriesListAggregationPerSeriesAligner)
ptslAggregationPerSeriesAligner
  = lens _ptslAggregationPerSeriesAligner
      (\ s a -> s{_ptslAggregationPerSeriesAligner = a})

-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name),
-- organization or folder on which to execute the request. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER] organizations\/[ORGANIZATION_ID]
-- folders\/[FOLDER_ID]
ptslName :: Lens' ProjectsTimeSeriesList Text
ptslName = lens _ptslName (\ s a -> s{_ptslName = a})

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
ptslSecondaryAggregationCrossSeriesReducer :: Lens' ProjectsTimeSeriesList (Maybe ProjectsTimeSeriesListSecondaryAggregationCrossSeriesReducer)
ptslSecondaryAggregationCrossSeriesReducer
  = lens _ptslSecondaryAggregationCrossSeriesReducer
      (\ s a ->
         s{_ptslSecondaryAggregationCrossSeriesReducer = a})

-- | The set of fields to preserve when cross_series_reducer is specified.
-- The group_by_fields determine how the time series are partitioned into
-- subsets prior to applying the aggregation operation. Each subset
-- contains time series that have the same value for each of the grouping
-- fields. Each individual time series is a member of exactly one subset.
-- The cross_series_reducer is applied to each subset of time series. It is
-- not possible to reduce across different resource types, so this field
-- implicitly contains resource.type. Fields not specified in
-- group_by_fields are aggregated away. If group_by_fields is not specified
-- and all the time series have the same resource type, then the time
-- series are aggregated into a single output time series. If
-- cross_series_reducer is not defined, this field is ignored.
ptslAggregationGroupByFields :: Lens' ProjectsTimeSeriesList [Text]
ptslAggregationGroupByFields
  = lens _ptslAggregationGroupByFields
      (\ s a -> s{_ptslAggregationGroupByFields = a})
      . _Default
      . _Coerce

-- | The alignment_period specifies a time interval, in seconds, that is used
-- to divide the data in all the time series into consistent blocks of
-- time. This will be done before the per-series aligner can be applied to
-- the data.The value must be at least 60 seconds. If a per-series aligner
-- other than ALIGN_NONE is specified, this field is required or an error
-- is returned. If no per-series aligner is specified, or the aligner
-- ALIGN_NONE is specified, then this field is ignored.The maximum value of
-- the alignment_period is 104 weeks (2 years) for charts, and 90,000
-- seconds (25 hours) for alerting policies.
ptslSecondaryAggregationAlignmentPeriod :: Lens' ProjectsTimeSeriesList (Maybe Scientific)
ptslSecondaryAggregationAlignmentPeriod
  = lens _ptslSecondaryAggregationAlignmentPeriod
      (\ s a ->
         s{_ptslSecondaryAggregationAlignmentPeriod = a})
      . mapping _GDuration

-- | The set of fields to preserve when cross_series_reducer is specified.
-- The group_by_fields determine how the time series are partitioned into
-- subsets prior to applying the aggregation operation. Each subset
-- contains time series that have the same value for each of the grouping
-- fields. Each individual time series is a member of exactly one subset.
-- The cross_series_reducer is applied to each subset of time series. It is
-- not possible to reduce across different resource types, so this field
-- implicitly contains resource.type. Fields not specified in
-- group_by_fields are aggregated away. If group_by_fields is not specified
-- and all the time series have the same resource type, then the time
-- series are aggregated into a single output time series. If
-- cross_series_reducer is not defined, this field is ignored.
ptslSecondaryAggregationGroupByFields :: Lens' ProjectsTimeSeriesList [Text]
ptslSecondaryAggregationGroupByFields
  = lens _ptslSecondaryAggregationGroupByFields
      (\ s a ->
         s{_ptslSecondaryAggregationGroupByFields = a})
      . _Default
      . _Coerce

-- | Required. Specifies which information is returned about the time series.
ptslView :: Lens' ProjectsTimeSeriesList (Maybe ProjectsTimeSeriesListView)
ptslView = lens _ptslView (\ s a -> s{_ptslView = a})

-- | The reduction operation to be used to combine time series into a single
-- time series, where the value of each data point in the resulting series
-- is a function of all the already aligned values in the input time
-- series.Not all reducer operations can be applied to all time series. The
-- valid choices depend on the metric_kind and the value_type of the
-- original time series. Reduction can yield a time series with a different
-- metric_kind or value_type than the input time series.Time series data
-- must first be aligned (see per_series_aligner) in order to perform
-- cross-time series reduction. If cross_series_reducer is specified, then
-- per_series_aligner must be specified, and must not be ALIGN_NONE. An
-- alignment_period must also be specified; otherwise, an error is
-- returned.
ptslAggregationCrossSeriesReducer :: Lens' ProjectsTimeSeriesList (Maybe ProjectsTimeSeriesListAggregationCrossSeriesReducer)
ptslAggregationCrossSeriesReducer
  = lens _ptslAggregationCrossSeriesReducer
      (\ s a -> s{_ptslAggregationCrossSeriesReducer = a})

-- | Required. A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that
-- specifies which time series should be returned. The filter must specify
-- a single metric type, and can additionally specify metric labels and
-- other information. For example: metric.type =
-- \"compute.googleapis.com\/instance\/cpu\/usage_time\" AND
-- metric.labels.instance_name = \"my-instance-name\"
ptslFilter :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslFilter
  = lens _ptslFilter (\ s a -> s{_ptslFilter = a})

-- | The alignment_period specifies a time interval, in seconds, that is used
-- to divide the data in all the time series into consistent blocks of
-- time. This will be done before the per-series aligner can be applied to
-- the data.The value must be at least 60 seconds. If a per-series aligner
-- other than ALIGN_NONE is specified, this field is required or an error
-- is returned. If no per-series aligner is specified, or the aligner
-- ALIGN_NONE is specified, then this field is ignored.The maximum value of
-- the alignment_period is 104 weeks (2 years) for charts, and 90,000
-- seconds (25 hours) for alerting policies.
ptslAggregationAlignmentPeriod :: Lens' ProjectsTimeSeriesList (Maybe Scientific)
ptslAggregationAlignmentPeriod
  = lens _ptslAggregationAlignmentPeriod
      (\ s a -> s{_ptslAggregationAlignmentPeriod = a})
      . mapping _GDuration

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
ptslPageToken :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslPageToken
  = lens _ptslPageToken
      (\ s a -> s{_ptslPageToken = a})

-- | Required. The end of the time interval.
ptslIntervalEndTime :: Lens' ProjectsTimeSeriesList (Maybe UTCTime)
ptslIntervalEndTime
  = lens _ptslIntervalEndTime
      (\ s a -> s{_ptslIntervalEndTime = a})
      . mapping _DateTime

-- | A positive number that is the maximum number of results to return. If
-- page_size is empty or more than 100,000 results, the effective page_size
-- is 100,000 results. If view is set to FULL, this is the maximum number
-- of Points returned. If view is set to HEADERS, this is the maximum
-- number of TimeSeries returned.
ptslPageSize :: Lens' ProjectsTimeSeriesList (Maybe Int32)
ptslPageSize
  = lens _ptslPageSize (\ s a -> s{_ptslPageSize = a})
      . mapping _Coerce

-- | JSONP
ptslCallback :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslCallback
  = lens _ptslCallback (\ s a -> s{_ptslCallback = a})

instance GoogleRequest ProjectsTimeSeriesList where
        type Rs ProjectsTimeSeriesList =
             ListTimeSeriesResponse
        type Scopes ProjectsTimeSeriesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsTimeSeriesList'{..}
          = go _ptslName _ptslIntervalStartTime _ptslXgafv
              _ptslUploadProtocol
              _ptslOrderBy
              _ptslAccessToken
              _ptslUploadType
              _ptslSecondaryAggregationPerSeriesAligner
              _ptslAggregationPerSeriesAligner
              _ptslSecondaryAggregationCrossSeriesReducer
              (_ptslAggregationGroupByFields ^. _Default)
              _ptslSecondaryAggregationAlignmentPeriod
              (_ptslSecondaryAggregationGroupByFields ^. _Default)
              _ptslView
              _ptslAggregationCrossSeriesReducer
              _ptslFilter
              _ptslAggregationAlignmentPeriod
              _ptslPageToken
              _ptslIntervalEndTime
              _ptslPageSize
              _ptslCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTimeSeriesListResource)
                      mempty
