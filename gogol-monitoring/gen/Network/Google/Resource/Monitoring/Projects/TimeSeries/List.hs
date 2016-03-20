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
-- Lists time series that match a filter.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference> for @monitoring.projects.timeSeries.list@.
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
    , ptslPp
    , ptslAccessToken
    , ptslUploadType
    , ptslAggregationPerSeriesAligner
    , ptslBearerToken
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
           QueryParam "interval.startTime" Text :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "aggregation.perSeriesAligner" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParams "aggregation.groupByFields" Text :>
                               QueryParam "view" Text :>
                                 QueryParam "aggregation.crossSeriesReducer"
                                   Text
                                   :>
                                   QueryParam "filter" Text :>
                                     QueryParam "aggregation.alignmentPeriod"
                                       Text
                                       :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam "interval.endTime" Text :>
                                           QueryParam "pageSize" (Textual Int32)
                                             :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON]
                                                   ListTimeSeriesResponse

-- | Lists time series that match a filter.
--
-- /See:/ 'projectsTimeSeriesList' smart constructor.
data ProjectsTimeSeriesList = ProjectsTimeSeriesList
    { _ptslIntervalStartTime             :: !(Maybe Text)
    , _ptslXgafv                         :: !(Maybe Text)
    , _ptslUploadProtocol                :: !(Maybe Text)
    , _ptslOrderBy                       :: !(Maybe Text)
    , _ptslPp                            :: !Bool
    , _ptslAccessToken                   :: !(Maybe Text)
    , _ptslUploadType                    :: !(Maybe Text)
    , _ptslAggregationPerSeriesAligner   :: !(Maybe Text)
    , _ptslBearerToken                   :: !(Maybe Text)
    , _ptslName                          :: !Text
    , _ptslAggregationGroupByFields      :: !(Maybe [Text])
    , _ptslView                          :: !(Maybe Text)
    , _ptslAggregationCrossSeriesReducer :: !(Maybe Text)
    , _ptslFilter                        :: !(Maybe Text)
    , _ptslAggregationAlignmentPeriod    :: !(Maybe Text)
    , _ptslPageToken                     :: !(Maybe Text)
    , _ptslIntervalEndTime               :: !(Maybe Text)
    , _ptslPageSize                      :: !(Maybe (Textual Int32))
    , _ptslCallback                      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ptslPp'
--
-- * 'ptslAccessToken'
--
-- * 'ptslUploadType'
--
-- * 'ptslAggregationPerSeriesAligner'
--
-- * 'ptslBearerToken'
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
    ProjectsTimeSeriesList
    { _ptslIntervalStartTime = Nothing
    , _ptslXgafv = Nothing
    , _ptslUploadProtocol = Nothing
    , _ptslOrderBy = Nothing
    , _ptslPp = True
    , _ptslAccessToken = Nothing
    , _ptslUploadType = Nothing
    , _ptslAggregationPerSeriesAligner = Nothing
    , _ptslBearerToken = Nothing
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

-- | (optional) If omitted, the interval is a point in time, \`endTime\`. If
-- \`startTime\` is present, it must be earlier than (less than)
-- \`endTime\`. The interval begins after \`startTime\`—it does not include
-- \`startTime\`.
ptslIntervalStartTime :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslIntervalStartTime
  = lens _ptslIntervalStartTime
      (\ s a -> s{_ptslIntervalStartTime = a})

-- | V1 error format.
ptslXgafv :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslXgafv
  = lens _ptslXgafv (\ s a -> s{_ptslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptslUploadProtocol :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslUploadProtocol
  = lens _ptslUploadProtocol
      (\ s a -> s{_ptslUploadProtocol = a})

-- | By default, results are ordered by time, from earliest to latest.
-- Currently, this field must be left blank.
ptslOrderBy :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslOrderBy
  = lens _ptslOrderBy (\ s a -> s{_ptslOrderBy = a})

-- | Pretty-print response.
ptslPp :: Lens' ProjectsTimeSeriesList Bool
ptslPp = lens _ptslPp (\ s a -> s{_ptslPp = a})

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
-- change the metric type or the value type of the time series. Time series
-- data must be aligned in order to perform cross-time series reduction. If
-- \`crossSeriesReducer\` is specified, then \`perSeriesAligner\` must be
-- specified and not equal \`ALIGN_NONE\` and \`alignmentPeriod\` must be
-- specified; otherwise, an error is returned.
ptslAggregationPerSeriesAligner :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslAggregationPerSeriesAligner
  = lens _ptslAggregationPerSeriesAligner
      (\ s a -> s{_ptslAggregationPerSeriesAligner = a})

-- | OAuth bearer token.
ptslBearerToken :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslBearerToken
  = lens _ptslBearerToken
      (\ s a -> s{_ptslBearerToken = a})

-- | The project on which to execute the request. The format is \"projects\/
-- \".
ptslName :: Lens' ProjectsTimeSeriesList Text
ptslName = lens _ptslName (\ s a -> s{_ptslName = a})

-- | The set of fields to preserve when \`crossSeriesReducer\` is specified.
-- The \`groupByFields\` determine how the time series are partitioned into
-- subsets prior to applying the aggregation function. Each subset contains
-- time series that have the same value for each of the grouping fields.
-- Each individual time series is a member of exactly one subset. The
-- \`crossSeriesReducer\` is applied to each subset of time series. Fields
-- not specified in \`groupByFields\` are aggregated away. If
-- \`groupByFields\` is not specified, the time series are aggregated into
-- a single output time series. If \`crossSeriesReducer\` is not defined,
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
-- change the metric type of value type of the time series. Time series
-- data must be aligned in order to perform cross-time series reduction. If
-- \`crossSeriesReducer\` is specified, then \`perSeriesAligner\` must be
-- specified and not equal \`ALIGN_NONE\` and \`alignmentPeriod\` must be
-- specified; otherwise, an error is returned.
ptslAggregationCrossSeriesReducer :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslAggregationCrossSeriesReducer
  = lens _ptslAggregationCrossSeriesReducer
      (\ s a -> s{_ptslAggregationCrossSeriesReducer = a})

-- | A [monitoring filter](\/monitoring\/api\/v3\/filters) that specifies
-- which time series should be returned. The filter must specify a single
-- metric type, and can additionally specify metric labels and other
-- information. For example: metric.type =
-- \"compute.googleapis.com\/instance\/cpu\/usage_time\" AND
-- metric.label.instance_name = \"my-instance-name\"
ptslFilter :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslFilter
  = lens _ptslFilter (\ s a -> s{_ptslFilter = a})

-- | The alignment period for per-[time series](TimeSeries) alignment. If
-- present, \`alignmentPeriod\` must be at least 60 seconds. After per-time
-- series alignment, each time series will contain data points only on the
-- period boundaries. If \`perSeriesAligner\` is not specified or equals
-- \`ALIGN_NONE\`, then this field is ignored. If \`perSeriesAligner\` is
-- specified and does not equal \`ALIGN_NONE\`, then this field must be
-- defined; otherwise an error is returned.
ptslAggregationAlignmentPeriod :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslAggregationAlignmentPeriod
  = lens _ptslAggregationAlignmentPeriod
      (\ s a -> s{_ptslAggregationAlignmentPeriod = a})

-- | If this field is not empty then it must contain the \`nextPageToken\`
-- value returned by a previous call to this method. Using this field
-- causes the method to return additional results from the previous method
-- call.
ptslPageToken :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslPageToken
  = lens _ptslPageToken
      (\ s a -> s{_ptslPageToken = a})

-- | (required) The end of the interval. The interval includes this time.
ptslIntervalEndTime :: Lens' ProjectsTimeSeriesList (Maybe Text)
ptslIntervalEndTime
  = lens _ptslIntervalEndTime
      (\ s a -> s{_ptslIntervalEndTime = a})

-- | A positive number that is the maximum number of results to return. When
-- \`view\` field sets to \`FULL\`, it limits the number of \`Points\`
-- server will return; if \`view\` field is \`HEADERS\`, it limits the
-- number of \`TimeSeries\` server will return.
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
        requestClient ProjectsTimeSeriesList{..}
          = go _ptslName _ptslIntervalStartTime _ptslXgafv
              _ptslUploadProtocol
              _ptslOrderBy
              (Just _ptslPp)
              _ptslAccessToken
              _ptslUploadType
              _ptslAggregationPerSeriesAligner
              _ptslBearerToken
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
