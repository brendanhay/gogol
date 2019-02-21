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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists time series that match a filter. This method does not require a
-- Stackdriver account.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.timeSeries.list@.
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
    , ptslAggregationPerSeriesAligner
    , ptslName
    , ptslAggregationGroupByFields
    , ptslView
    , ptslAggregationCrossSeriesReducer
    , ptslFilter
    , ptslAggregationAlignmentPeriod
    , ptslPageToken
    , ptslIntervalEndTime
    , ptslPageSize
    , ptslCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

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
                       QueryParam "aggregation.perSeriesAligner" Text :>
                         QueryParams "aggregation.groupByFields" Text :>
                           QueryParam "view" Text :>
                             QueryParam "aggregation.crossSeriesReducer" Text :>
                               QueryParam "filter" Text :>
                                 QueryParam "aggregation.alignmentPeriod"
                                   GDuration
                                   :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "interval.endTime" DateTime' :>
                                       QueryParam "pageSize" (Textual Int32) :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] ListTimeSeriesResponse

-- | Lists time series that match a filter. This method does not require a
-- Stackdriver account.
--
-- /See:/ 'projectsTimeSeriesList' smart constructor.
data ProjectsTimeSeriesList =
  ProjectsTimeSeriesList'
    { _ptslIntervalStartTime             :: !(Maybe DateTime')
    , _ptslXgafv                         :: !(Maybe Xgafv)
    , _ptslUploadProtocol                :: !(Maybe Text)
    , _ptslOrderBy                       :: !(Maybe Text)
    , _ptslAccessToken                   :: !(Maybe Text)
    , _ptslUploadType                    :: !(Maybe Text)
    , _ptslAggregationPerSeriesAligner   :: !(Maybe Text)
    , _ptslName                          :: !Text
    , _ptslAggregationGroupByFields      :: !(Maybe [Text])
    , _ptslView                          :: !(Maybe Text)
    , _ptslAggregationCrossSeriesReducer :: !(Maybe Text)
    , _ptslFilter                        :: !(Maybe Text)
    , _ptslAggregationAlignmentPeriod    :: !(Maybe GDuration)
    , _ptslPageToken                     :: !(Maybe Text)
    , _ptslIntervalEndTime               :: !(Maybe DateTime')
    , _ptslPageSize                      :: !(Maybe (Textual Int32))
    , _ptslCallback                      :: !(Maybe Text)
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
-- * 'ptslAggregationPerSeriesAligner'
--
-- * 'ptslName'
--
-- * 'ptslAggregationGroupByFields'
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
    , _ptslAggregationPerSeriesAligner = Nothing
    , _ptslName = pPtslName_
    , _ptslAggregationGroupByFields = Nothing
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
-- returned in reverse time order.
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

-- | The approach to be used to align individual time series. Not all
-- alignment functions may be applied to all time series, depending on the
-- metric type and value type of the original time series. Alignment may
-- change the metric type or the value type of the time series.Time series
-- data must be aligned in order to perform cross-time series reduction. If
-- crossSeriesReducer is specified, then perSeriesAligner must be specified
-- and not equal ALIGN_NONE and alignmentPeriod must be specified;
-- otherwise, an error is returned.
ptslAggregationPerSeriesAligner :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslAggregationPerSeriesAligner
  = lens _ptslAggregationPerSeriesAligner
      (\ s a -> s{_ptslAggregationPerSeriesAligner = a})

-- | The project on which to execute the request. The format is
-- \"projects\/{project_id_or_number}\".
ptslName :: Lens' ProjectsTimeSeriesList Text
ptslName = lens _ptslName (\ s a -> s{_ptslName = a})

-- | The set of fields to preserve when crossSeriesReducer is specified. The
-- groupByFields determine how the time series are partitioned into subsets
-- prior to applying the aggregation function. Each subset contains time
-- series that have the same value for each of the grouping fields. Each
-- individual time series is a member of exactly one subset. The
-- crossSeriesReducer is applied to each subset of time series. It is not
-- possible to reduce across different resource types, so this field
-- implicitly contains resource.type. Fields not specified in groupByFields
-- are aggregated away. If groupByFields is not specified and all the time
-- series have the same resource type, then the time series are aggregated
-- into a single output time series. If crossSeriesReducer is not defined,
-- this field is ignored.
ptslAggregationGroupByFields :: Lens' ProjectsTimeSeriesList [Text]
ptslAggregationGroupByFields
  = lens _ptslAggregationGroupByFields
      (\ s a -> s{_ptslAggregationGroupByFields = a})
      . _Default
      . _Coerce

-- | Specifies which information is returned about the time series.
ptslView :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslView = lens _ptslView (\ s a -> s{_ptslView = a})

-- | The approach to be used to combine time series. Not all reducer
-- functions may be applied to all time series, depending on the metric
-- type and the value type of the original time series. Reduction may
-- change the metric type of value type of the time series.Time series data
-- must be aligned in order to perform cross-time series reduction. If
-- crossSeriesReducer is specified, then perSeriesAligner must be specified
-- and not equal ALIGN_NONE and alignmentPeriod must be specified;
-- otherwise, an error is returned.
ptslAggregationCrossSeriesReducer :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslAggregationCrossSeriesReducer
  = lens _ptslAggregationCrossSeriesReducer
      (\ s a -> s{_ptslAggregationCrossSeriesReducer = a})

-- | A monitoring filter that specifies which time series should be returned.
-- The filter must specify a single metric type, and can additionally
-- specify metric labels and other information. For example: metric.type =
-- \"compute.googleapis.com\/instance\/cpu\/usage_time\" AND
-- metric.label.instance_name = \"my-instance-name\"
ptslFilter :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslFilter
  = lens _ptslFilter (\ s a -> s{_ptslFilter = a})

-- | The alignment period for per-time series alignment. If present,
-- alignmentPeriod must be at least 60 seconds. After per-time series
-- alignment, each time series will contain data points only on the period
-- boundaries. If perSeriesAligner is not specified or equals ALIGN_NONE,
-- then this field is ignored. If perSeriesAligner is specified and does
-- not equal ALIGN_NONE, then this field must be defined; otherwise an
-- error is returned.
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
              _ptslAggregationPerSeriesAligner
              (_ptslAggregationGroupByFields ^. _Default)
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
