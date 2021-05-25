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
-- Module      : Network.Google.Resource.Monitoring.Folders.TimeSeries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists time series that match a filter. This method does not require a
-- Workspace.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.folders.timeSeries.list@.
module Network.Google.Resource.Monitoring.Folders.TimeSeries.List
    (
    -- * REST Resource
      FoldersTimeSeriesListResource

    -- * Creating a Request
    , foldersTimeSeriesList
    , FoldersTimeSeriesList

    -- * Request Lenses
    , ftslIntervalStartTime
    , ftslXgafv
    , ftslUploadProtocol
    , ftslOrderBy
    , ftslAccessToken
    , ftslUploadType
    , ftslSecondaryAggregationPerSeriesAligner
    , ftslAggregationPerSeriesAligner
    , ftslName
    , ftslSecondaryAggregationCrossSeriesReducer
    , ftslAggregationGroupByFields
    , ftslSecondaryAggregationAlignmentPeriod
    , ftslSecondaryAggregationGroupByFields
    , ftslView
    , ftslAggregationCrossSeriesReducer
    , ftslFilter
    , ftslAggregationAlignmentPeriod
    , ftslPageToken
    , ftslIntervalEndTime
    , ftslPageSize
    , ftslCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.folders.timeSeries.list@ method which the
-- 'FoldersTimeSeriesList' request conforms to.
type FoldersTimeSeriesListResource =
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
                         FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner
                         :>
                         QueryParam "aggregation.perSeriesAligner"
                           FoldersTimeSeriesListAggregationPerSeriesAligner
                           :>
                           QueryParam "secondaryAggregation.crossSeriesReducer"
                             FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer
                             :>
                             QueryParams "aggregation.groupByFields" Text :>
                               QueryParam "secondaryAggregation.alignmentPeriod"
                                 GDuration
                                 :>
                                 QueryParams
                                   "secondaryAggregation.groupByFields"
                                   Text
                                   :>
                                   QueryParam "view" FoldersTimeSeriesListView
                                     :>
                                     QueryParam "aggregation.crossSeriesReducer"
                                       FoldersTimeSeriesListAggregationCrossSeriesReducer
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
-- /See:/ 'foldersTimeSeriesList' smart constructor.
data FoldersTimeSeriesList =
  FoldersTimeSeriesList'
    { _ftslIntervalStartTime :: !(Maybe DateTime')
    , _ftslXgafv :: !(Maybe Xgafv)
    , _ftslUploadProtocol :: !(Maybe Text)
    , _ftslOrderBy :: !(Maybe Text)
    , _ftslAccessToken :: !(Maybe Text)
    , _ftslUploadType :: !(Maybe Text)
    , _ftslSecondaryAggregationPerSeriesAligner :: !(Maybe FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner)
    , _ftslAggregationPerSeriesAligner :: !(Maybe FoldersTimeSeriesListAggregationPerSeriesAligner)
    , _ftslName :: !Text
    , _ftslSecondaryAggregationCrossSeriesReducer :: !(Maybe FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer)
    , _ftslAggregationGroupByFields :: !(Maybe [Text])
    , _ftslSecondaryAggregationAlignmentPeriod :: !(Maybe GDuration)
    , _ftslSecondaryAggregationGroupByFields :: !(Maybe [Text])
    , _ftslView :: !(Maybe FoldersTimeSeriesListView)
    , _ftslAggregationCrossSeriesReducer :: !(Maybe FoldersTimeSeriesListAggregationCrossSeriesReducer)
    , _ftslFilter :: !(Maybe Text)
    , _ftslAggregationAlignmentPeriod :: !(Maybe GDuration)
    , _ftslPageToken :: !(Maybe Text)
    , _ftslIntervalEndTime :: !(Maybe DateTime')
    , _ftslPageSize :: !(Maybe (Textual Int32))
    , _ftslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersTimeSeriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftslIntervalStartTime'
--
-- * 'ftslXgafv'
--
-- * 'ftslUploadProtocol'
--
-- * 'ftslOrderBy'
--
-- * 'ftslAccessToken'
--
-- * 'ftslUploadType'
--
-- * 'ftslSecondaryAggregationPerSeriesAligner'
--
-- * 'ftslAggregationPerSeriesAligner'
--
-- * 'ftslName'
--
-- * 'ftslSecondaryAggregationCrossSeriesReducer'
--
-- * 'ftslAggregationGroupByFields'
--
-- * 'ftslSecondaryAggregationAlignmentPeriod'
--
-- * 'ftslSecondaryAggregationGroupByFields'
--
-- * 'ftslView'
--
-- * 'ftslAggregationCrossSeriesReducer'
--
-- * 'ftslFilter'
--
-- * 'ftslAggregationAlignmentPeriod'
--
-- * 'ftslPageToken'
--
-- * 'ftslIntervalEndTime'
--
-- * 'ftslPageSize'
--
-- * 'ftslCallback'
foldersTimeSeriesList
    :: Text -- ^ 'ftslName'
    -> FoldersTimeSeriesList
foldersTimeSeriesList pFtslName_ =
  FoldersTimeSeriesList'
    { _ftslIntervalStartTime = Nothing
    , _ftslXgafv = Nothing
    , _ftslUploadProtocol = Nothing
    , _ftslOrderBy = Nothing
    , _ftslAccessToken = Nothing
    , _ftslUploadType = Nothing
    , _ftslSecondaryAggregationPerSeriesAligner = Nothing
    , _ftslAggregationPerSeriesAligner = Nothing
    , _ftslName = pFtslName_
    , _ftslSecondaryAggregationCrossSeriesReducer = Nothing
    , _ftslAggregationGroupByFields = Nothing
    , _ftslSecondaryAggregationAlignmentPeriod = Nothing
    , _ftslSecondaryAggregationGroupByFields = Nothing
    , _ftslView = Nothing
    , _ftslAggregationCrossSeriesReducer = Nothing
    , _ftslFilter = Nothing
    , _ftslAggregationAlignmentPeriod = Nothing
    , _ftslPageToken = Nothing
    , _ftslIntervalEndTime = Nothing
    , _ftslPageSize = Nothing
    , _ftslCallback = Nothing
    }


-- | Optional. The beginning of the time interval. The default value for the
-- start time is the end time. The start time must not be later than the
-- end time.
ftslIntervalStartTime :: Lens' FoldersTimeSeriesList (Maybe UTCTime)
ftslIntervalStartTime
  = lens _ftslIntervalStartTime
      (\ s a -> s{_ftslIntervalStartTime = a})
      . mapping _DateTime

-- | V1 error format.
ftslXgafv :: Lens' FoldersTimeSeriesList (Maybe Xgafv)
ftslXgafv
  = lens _ftslXgafv (\ s a -> s{_ftslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ftslUploadProtocol :: Lens' FoldersTimeSeriesList (Maybe Text)
ftslUploadProtocol
  = lens _ftslUploadProtocol
      (\ s a -> s{_ftslUploadProtocol = a})

-- | Unsupported: must be left blank. The points in each time series are
-- currently returned in reverse time order (most recent to oldest).
ftslOrderBy :: Lens' FoldersTimeSeriesList (Maybe Text)
ftslOrderBy
  = lens _ftslOrderBy (\ s a -> s{_ftslOrderBy = a})

-- | OAuth access token.
ftslAccessToken :: Lens' FoldersTimeSeriesList (Maybe Text)
ftslAccessToken
  = lens _ftslAccessToken
      (\ s a -> s{_ftslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ftslUploadType :: Lens' FoldersTimeSeriesList (Maybe Text)
ftslUploadType
  = lens _ftslUploadType
      (\ s a -> s{_ftslUploadType = a})

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
ftslSecondaryAggregationPerSeriesAligner :: Lens' FoldersTimeSeriesList (Maybe FoldersTimeSeriesListSecondaryAggregationPerSeriesAligner)
ftslSecondaryAggregationPerSeriesAligner
  = lens _ftslSecondaryAggregationPerSeriesAligner
      (\ s a ->
         s{_ftslSecondaryAggregationPerSeriesAligner = a})

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
ftslAggregationPerSeriesAligner :: Lens' FoldersTimeSeriesList (Maybe FoldersTimeSeriesListAggregationPerSeriesAligner)
ftslAggregationPerSeriesAligner
  = lens _ftslAggregationPerSeriesAligner
      (\ s a -> s{_ftslAggregationPerSeriesAligner = a})

-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name),
-- organization or folder on which to execute the request. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER] organizations\/[ORGANIZATION_ID]
-- folders\/[FOLDER_ID]
ftslName :: Lens' FoldersTimeSeriesList Text
ftslName = lens _ftslName (\ s a -> s{_ftslName = a})

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
ftslSecondaryAggregationCrossSeriesReducer :: Lens' FoldersTimeSeriesList (Maybe FoldersTimeSeriesListSecondaryAggregationCrossSeriesReducer)
ftslSecondaryAggregationCrossSeriesReducer
  = lens _ftslSecondaryAggregationCrossSeriesReducer
      (\ s a ->
         s{_ftslSecondaryAggregationCrossSeriesReducer = a})

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
ftslAggregationGroupByFields :: Lens' FoldersTimeSeriesList [Text]
ftslAggregationGroupByFields
  = lens _ftslAggregationGroupByFields
      (\ s a -> s{_ftslAggregationGroupByFields = a})
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
ftslSecondaryAggregationAlignmentPeriod :: Lens' FoldersTimeSeriesList (Maybe Scientific)
ftslSecondaryAggregationAlignmentPeriod
  = lens _ftslSecondaryAggregationAlignmentPeriod
      (\ s a ->
         s{_ftslSecondaryAggregationAlignmentPeriod = a})
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
ftslSecondaryAggregationGroupByFields :: Lens' FoldersTimeSeriesList [Text]
ftslSecondaryAggregationGroupByFields
  = lens _ftslSecondaryAggregationGroupByFields
      (\ s a ->
         s{_ftslSecondaryAggregationGroupByFields = a})
      . _Default
      . _Coerce

-- | Required. Specifies which information is returned about the time series.
ftslView :: Lens' FoldersTimeSeriesList (Maybe FoldersTimeSeriesListView)
ftslView = lens _ftslView (\ s a -> s{_ftslView = a})

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
ftslAggregationCrossSeriesReducer :: Lens' FoldersTimeSeriesList (Maybe FoldersTimeSeriesListAggregationCrossSeriesReducer)
ftslAggregationCrossSeriesReducer
  = lens _ftslAggregationCrossSeriesReducer
      (\ s a -> s{_ftslAggregationCrossSeriesReducer = a})

-- | Required. A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that
-- specifies which time series should be returned. The filter must specify
-- a single metric type, and can additionally specify metric labels and
-- other information. For example: metric.type =
-- \"compute.googleapis.com\/instance\/cpu\/usage_time\" AND
-- metric.labels.instance_name = \"my-instance-name\"
ftslFilter :: Lens' FoldersTimeSeriesList (Maybe Text)
ftslFilter
  = lens _ftslFilter (\ s a -> s{_ftslFilter = a})

-- | The alignment_period specifies a time interval, in seconds, that is used
-- to divide the data in all the time series into consistent blocks of
-- time. This will be done before the per-series aligner can be applied to
-- the data.The value must be at least 60 seconds. If a per-series aligner
-- other than ALIGN_NONE is specified, this field is required or an error
-- is returned. If no per-series aligner is specified, or the aligner
-- ALIGN_NONE is specified, then this field is ignored.The maximum value of
-- the alignment_period is 104 weeks (2 years) for charts, and 90,000
-- seconds (25 hours) for alerting policies.
ftslAggregationAlignmentPeriod :: Lens' FoldersTimeSeriesList (Maybe Scientific)
ftslAggregationAlignmentPeriod
  = lens _ftslAggregationAlignmentPeriod
      (\ s a -> s{_ftslAggregationAlignmentPeriod = a})
      . mapping _GDuration

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
ftslPageToken :: Lens' FoldersTimeSeriesList (Maybe Text)
ftslPageToken
  = lens _ftslPageToken
      (\ s a -> s{_ftslPageToken = a})

-- | Required. The end of the time interval.
ftslIntervalEndTime :: Lens' FoldersTimeSeriesList (Maybe UTCTime)
ftslIntervalEndTime
  = lens _ftslIntervalEndTime
      (\ s a -> s{_ftslIntervalEndTime = a})
      . mapping _DateTime

-- | A positive number that is the maximum number of results to return. If
-- page_size is empty or more than 100,000 results, the effective page_size
-- is 100,000 results. If view is set to FULL, this is the maximum number
-- of Points returned. If view is set to HEADERS, this is the maximum
-- number of TimeSeries returned.
ftslPageSize :: Lens' FoldersTimeSeriesList (Maybe Int32)
ftslPageSize
  = lens _ftslPageSize (\ s a -> s{_ftslPageSize = a})
      . mapping _Coerce

-- | JSONP
ftslCallback :: Lens' FoldersTimeSeriesList (Maybe Text)
ftslCallback
  = lens _ftslCallback (\ s a -> s{_ftslCallback = a})

instance GoogleRequest FoldersTimeSeriesList where
        type Rs FoldersTimeSeriesList =
             ListTimeSeriesResponse
        type Scopes FoldersTimeSeriesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient FoldersTimeSeriesList'{..}
          = go _ftslName _ftslIntervalStartTime _ftslXgafv
              _ftslUploadProtocol
              _ftslOrderBy
              _ftslAccessToken
              _ftslUploadType
              _ftslSecondaryAggregationPerSeriesAligner
              _ftslAggregationPerSeriesAligner
              _ftslSecondaryAggregationCrossSeriesReducer
              (_ftslAggregationGroupByFields ^. _Default)
              _ftslSecondaryAggregationAlignmentPeriod
              (_ftslSecondaryAggregationGroupByFields ^. _Default)
              _ftslView
              _ftslAggregationCrossSeriesReducer
              _ftslFilter
              _ftslAggregationAlignmentPeriod
              _ftslPageToken
              _ftslIntervalEndTime
              _ftslPageSize
              _ftslCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersTimeSeriesListResource)
                      mempty
