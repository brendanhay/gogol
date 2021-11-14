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
-- Module      : Network.Google.Resource.Monitoring.Organizations.TimeSeries.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists time series that match a filter. This method does not require a
-- Workspace.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.organizations.timeSeries.list@.
module Network.Google.Resource.Monitoring.Organizations.TimeSeries.List
    (
    -- * REST Resource
      OrganizationsTimeSeriesListResource

    -- * Creating a Request
    , organizationsTimeSeriesList
    , OrganizationsTimeSeriesList

    -- * Request Lenses
    , otslIntervalStartTime
    , otslXgafv
    , otslUploadProtocol
    , otslOrderBy
    , otslAccessToken
    , otslUploadType
    , otslSecondaryAggregationPerSeriesAligner
    , otslAggregationPerSeriesAligner
    , otslName
    , otslSecondaryAggregationCrossSeriesReducer
    , otslAggregationGroupByFields
    , otslSecondaryAggregationAlignmentPeriod
    , otslSecondaryAggregationGroupByFields
    , otslView
    , otslAggregationCrossSeriesReducer
    , otslFilter
    , otslAggregationAlignmentPeriod
    , otslPageToken
    , otslIntervalEndTime
    , otslPageSize
    , otslCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.organizations.timeSeries.list@ method which the
-- 'OrganizationsTimeSeriesList' request conforms to.
type OrganizationsTimeSeriesListResource =
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
                         OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner
                         :>
                         QueryParam "aggregation.perSeriesAligner"
                           OrganizationsTimeSeriesListAggregationPerSeriesAligner
                           :>
                           QueryParam "secondaryAggregation.crossSeriesReducer"
                             OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer
                             :>
                             QueryParams "aggregation.groupByFields" Text :>
                               QueryParam "secondaryAggregation.alignmentPeriod"
                                 GDuration
                                 :>
                                 QueryParams
                                   "secondaryAggregation.groupByFields"
                                   Text
                                   :>
                                   QueryParam "view"
                                     OrganizationsTimeSeriesListView
                                     :>
                                     QueryParam "aggregation.crossSeriesReducer"
                                       OrganizationsTimeSeriesListAggregationCrossSeriesReducer
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
-- /See:/ 'organizationsTimeSeriesList' smart constructor.
data OrganizationsTimeSeriesList =
  OrganizationsTimeSeriesList'
    { _otslIntervalStartTime :: !(Maybe DateTime')
    , _otslXgafv :: !(Maybe Xgafv)
    , _otslUploadProtocol :: !(Maybe Text)
    , _otslOrderBy :: !(Maybe Text)
    , _otslAccessToken :: !(Maybe Text)
    , _otslUploadType :: !(Maybe Text)
    , _otslSecondaryAggregationPerSeriesAligner :: !(Maybe OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner)
    , _otslAggregationPerSeriesAligner :: !(Maybe OrganizationsTimeSeriesListAggregationPerSeriesAligner)
    , _otslName :: !Text
    , _otslSecondaryAggregationCrossSeriesReducer :: !(Maybe OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer)
    , _otslAggregationGroupByFields :: !(Maybe [Text])
    , _otslSecondaryAggregationAlignmentPeriod :: !(Maybe GDuration)
    , _otslSecondaryAggregationGroupByFields :: !(Maybe [Text])
    , _otslView :: !(Maybe OrganizationsTimeSeriesListView)
    , _otslAggregationCrossSeriesReducer :: !(Maybe OrganizationsTimeSeriesListAggregationCrossSeriesReducer)
    , _otslFilter :: !(Maybe Text)
    , _otslAggregationAlignmentPeriod :: !(Maybe GDuration)
    , _otslPageToken :: !(Maybe Text)
    , _otslIntervalEndTime :: !(Maybe DateTime')
    , _otslPageSize :: !(Maybe (Textual Int32))
    , _otslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsTimeSeriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otslIntervalStartTime'
--
-- * 'otslXgafv'
--
-- * 'otslUploadProtocol'
--
-- * 'otslOrderBy'
--
-- * 'otslAccessToken'
--
-- * 'otslUploadType'
--
-- * 'otslSecondaryAggregationPerSeriesAligner'
--
-- * 'otslAggregationPerSeriesAligner'
--
-- * 'otslName'
--
-- * 'otslSecondaryAggregationCrossSeriesReducer'
--
-- * 'otslAggregationGroupByFields'
--
-- * 'otslSecondaryAggregationAlignmentPeriod'
--
-- * 'otslSecondaryAggregationGroupByFields'
--
-- * 'otslView'
--
-- * 'otslAggregationCrossSeriesReducer'
--
-- * 'otslFilter'
--
-- * 'otslAggregationAlignmentPeriod'
--
-- * 'otslPageToken'
--
-- * 'otslIntervalEndTime'
--
-- * 'otslPageSize'
--
-- * 'otslCallback'
organizationsTimeSeriesList
    :: Text -- ^ 'otslName'
    -> OrganizationsTimeSeriesList
organizationsTimeSeriesList pOtslName_ =
  OrganizationsTimeSeriesList'
    { _otslIntervalStartTime = Nothing
    , _otslXgafv = Nothing
    , _otslUploadProtocol = Nothing
    , _otslOrderBy = Nothing
    , _otslAccessToken = Nothing
    , _otslUploadType = Nothing
    , _otslSecondaryAggregationPerSeriesAligner = Nothing
    , _otslAggregationPerSeriesAligner = Nothing
    , _otslName = pOtslName_
    , _otslSecondaryAggregationCrossSeriesReducer = Nothing
    , _otslAggregationGroupByFields = Nothing
    , _otslSecondaryAggregationAlignmentPeriod = Nothing
    , _otslSecondaryAggregationGroupByFields = Nothing
    , _otslView = Nothing
    , _otslAggregationCrossSeriesReducer = Nothing
    , _otslFilter = Nothing
    , _otslAggregationAlignmentPeriod = Nothing
    , _otslPageToken = Nothing
    , _otslIntervalEndTime = Nothing
    , _otslPageSize = Nothing
    , _otslCallback = Nothing
    }


-- | Optional. The beginning of the time interval. The default value for the
-- start time is the end time. The start time must not be later than the
-- end time.
otslIntervalStartTime :: Lens' OrganizationsTimeSeriesList (Maybe UTCTime)
otslIntervalStartTime
  = lens _otslIntervalStartTime
      (\ s a -> s{_otslIntervalStartTime = a})
      . mapping _DateTime

-- | V1 error format.
otslXgafv :: Lens' OrganizationsTimeSeriesList (Maybe Xgafv)
otslXgafv
  = lens _otslXgafv (\ s a -> s{_otslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
otslUploadProtocol :: Lens' OrganizationsTimeSeriesList (Maybe Text)
otslUploadProtocol
  = lens _otslUploadProtocol
      (\ s a -> s{_otslUploadProtocol = a})

-- | Unsupported: must be left blank. The points in each time series are
-- currently returned in reverse time order (most recent to oldest).
otslOrderBy :: Lens' OrganizationsTimeSeriesList (Maybe Text)
otslOrderBy
  = lens _otslOrderBy (\ s a -> s{_otslOrderBy = a})

-- | OAuth access token.
otslAccessToken :: Lens' OrganizationsTimeSeriesList (Maybe Text)
otslAccessToken
  = lens _otslAccessToken
      (\ s a -> s{_otslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
otslUploadType :: Lens' OrganizationsTimeSeriesList (Maybe Text)
otslUploadType
  = lens _otslUploadType
      (\ s a -> s{_otslUploadType = a})

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
otslSecondaryAggregationPerSeriesAligner :: Lens' OrganizationsTimeSeriesList (Maybe OrganizationsTimeSeriesListSecondaryAggregationPerSeriesAligner)
otslSecondaryAggregationPerSeriesAligner
  = lens _otslSecondaryAggregationPerSeriesAligner
      (\ s a ->
         s{_otslSecondaryAggregationPerSeriesAligner = a})

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
otslAggregationPerSeriesAligner :: Lens' OrganizationsTimeSeriesList (Maybe OrganizationsTimeSeriesListAggregationPerSeriesAligner)
otslAggregationPerSeriesAligner
  = lens _otslAggregationPerSeriesAligner
      (\ s a -> s{_otslAggregationPerSeriesAligner = a})

-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name),
-- organization or folder on which to execute the request. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER] organizations\/[ORGANIZATION_ID]
-- folders\/[FOLDER_ID]
otslName :: Lens' OrganizationsTimeSeriesList Text
otslName = lens _otslName (\ s a -> s{_otslName = a})

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
otslSecondaryAggregationCrossSeriesReducer :: Lens' OrganizationsTimeSeriesList (Maybe OrganizationsTimeSeriesListSecondaryAggregationCrossSeriesReducer)
otslSecondaryAggregationCrossSeriesReducer
  = lens _otslSecondaryAggregationCrossSeriesReducer
      (\ s a ->
         s{_otslSecondaryAggregationCrossSeriesReducer = a})

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
otslAggregationGroupByFields :: Lens' OrganizationsTimeSeriesList [Text]
otslAggregationGroupByFields
  = lens _otslAggregationGroupByFields
      (\ s a -> s{_otslAggregationGroupByFields = a})
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
otslSecondaryAggregationAlignmentPeriod :: Lens' OrganizationsTimeSeriesList (Maybe Scientific)
otslSecondaryAggregationAlignmentPeriod
  = lens _otslSecondaryAggregationAlignmentPeriod
      (\ s a ->
         s{_otslSecondaryAggregationAlignmentPeriod = a})
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
otslSecondaryAggregationGroupByFields :: Lens' OrganizationsTimeSeriesList [Text]
otslSecondaryAggregationGroupByFields
  = lens _otslSecondaryAggregationGroupByFields
      (\ s a ->
         s{_otslSecondaryAggregationGroupByFields = a})
      . _Default
      . _Coerce

-- | Required. Specifies which information is returned about the time series.
otslView :: Lens' OrganizationsTimeSeriesList (Maybe OrganizationsTimeSeriesListView)
otslView = lens _otslView (\ s a -> s{_otslView = a})

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
otslAggregationCrossSeriesReducer :: Lens' OrganizationsTimeSeriesList (Maybe OrganizationsTimeSeriesListAggregationCrossSeriesReducer)
otslAggregationCrossSeriesReducer
  = lens _otslAggregationCrossSeriesReducer
      (\ s a -> s{_otslAggregationCrossSeriesReducer = a})

-- | Required. A monitoring filter
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3\/filters) that
-- specifies which time series should be returned. The filter must specify
-- a single metric type, and can additionally specify metric labels and
-- other information. For example: metric.type =
-- \"compute.googleapis.com\/instance\/cpu\/usage_time\" AND
-- metric.labels.instance_name = \"my-instance-name\"
otslFilter :: Lens' OrganizationsTimeSeriesList (Maybe Text)
otslFilter
  = lens _otslFilter (\ s a -> s{_otslFilter = a})

-- | The alignment_period specifies a time interval, in seconds, that is used
-- to divide the data in all the time series into consistent blocks of
-- time. This will be done before the per-series aligner can be applied to
-- the data.The value must be at least 60 seconds. If a per-series aligner
-- other than ALIGN_NONE is specified, this field is required or an error
-- is returned. If no per-series aligner is specified, or the aligner
-- ALIGN_NONE is specified, then this field is ignored.The maximum value of
-- the alignment_period is 104 weeks (2 years) for charts, and 90,000
-- seconds (25 hours) for alerting policies.
otslAggregationAlignmentPeriod :: Lens' OrganizationsTimeSeriesList (Maybe Scientific)
otslAggregationAlignmentPeriod
  = lens _otslAggregationAlignmentPeriod
      (\ s a -> s{_otslAggregationAlignmentPeriod = a})
      . mapping _GDuration

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
otslPageToken :: Lens' OrganizationsTimeSeriesList (Maybe Text)
otslPageToken
  = lens _otslPageToken
      (\ s a -> s{_otslPageToken = a})

-- | Required. The end of the time interval.
otslIntervalEndTime :: Lens' OrganizationsTimeSeriesList (Maybe UTCTime)
otslIntervalEndTime
  = lens _otslIntervalEndTime
      (\ s a -> s{_otslIntervalEndTime = a})
      . mapping _DateTime

-- | A positive number that is the maximum number of results to return. If
-- page_size is empty or more than 100,000 results, the effective page_size
-- is 100,000 results. If view is set to FULL, this is the maximum number
-- of Points returned. If view is set to HEADERS, this is the maximum
-- number of TimeSeries returned.
otslPageSize :: Lens' OrganizationsTimeSeriesList (Maybe Int32)
otslPageSize
  = lens _otslPageSize (\ s a -> s{_otslPageSize = a})
      . mapping _Coerce

-- | JSONP
otslCallback :: Lens' OrganizationsTimeSeriesList (Maybe Text)
otslCallback
  = lens _otslCallback (\ s a -> s{_otslCallback = a})

instance GoogleRequest OrganizationsTimeSeriesList
         where
        type Rs OrganizationsTimeSeriesList =
             ListTimeSeriesResponse
        type Scopes OrganizationsTimeSeriesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient OrganizationsTimeSeriesList'{..}
          = go _otslName _otslIntervalStartTime _otslXgafv
              _otslUploadProtocol
              _otslOrderBy
              _otslAccessToken
              _otslUploadType
              _otslSecondaryAggregationPerSeriesAligner
              _otslAggregationPerSeriesAligner
              _otslSecondaryAggregationCrossSeriesReducer
              (_otslAggregationGroupByFields ^. _Default)
              _otslSecondaryAggregationAlignmentPeriod
              (_otslSecondaryAggregationGroupByFields ^. _Default)
              _otslView
              _otslAggregationCrossSeriesReducer
              _otslFilter
              _otslAggregationAlignmentPeriod
              _otslPageToken
              _otslIntervalEndTime
              _otslPageSize
              _otslCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsTimeSeriesListResource)
                      mempty
