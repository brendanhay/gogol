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
-- Module      : Network.Google.Resource.CloudMonitoring.TimeseriesDescriptors.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the descriptors of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @cloudmonitoring.timeseriesDescriptors.list@.
module Network.Google.Resource.CloudMonitoring.TimeseriesDescriptors.List
    (
    -- * REST Resource
      TimeseriesDescriptorsListResource

    -- * Creating a Request
    , timeseriesDescriptorsList
    , TimeseriesDescriptorsList

    -- * Request Lenses
    , tdlWindow
    , tdlProject
    , tdlCount
    , tdlPayload
    , tdlAggregator
    , tdlTimespan
    , tdlMetric
    , tdlOldest
    , tdlLabels
    , tdlPageToken
    , tdlYoungest
    ) where

import           Network.Google.CloudMonitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudmonitoring.timeseriesDescriptors.list@ method which the
-- 'TimeseriesDescriptorsList' request conforms to.
type TimeseriesDescriptorsListResource =
     "cloudmonitoring" :>
       "v2beta2" :>
         "projects" :>
           Capture "project" Text :>
             "timeseriesDescriptors" :>
               Capture "metric" Text :>
                 QueryParam "youngest" Text :>
                   QueryParam "window" Text :>
                     QueryParam "count" (Textual Int32) :>
                       QueryParam "aggregator"
                         TimeseriesDescriptorsListAggregator
                         :>
                         QueryParam "timespan" Text :>
                           QueryParam "oldest" Text :>
                             QueryParams "labels" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     ListTimeseriesDescriptorsRequest
                                     :>
                                     Get '[JSON]
                                       ListTimeseriesDescriptorsResponse

-- | List the descriptors of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ 'timeseriesDescriptorsList' smart constructor.
data TimeseriesDescriptorsList = TimeseriesDescriptorsList'
    { _tdlWindow     :: !(Maybe Text)
    , _tdlProject    :: !Text
    , _tdlCount      :: !(Textual Int32)
    , _tdlPayload    :: !ListTimeseriesDescriptorsRequest
    , _tdlAggregator :: !(Maybe TimeseriesDescriptorsListAggregator)
    , _tdlTimespan   :: !(Maybe Text)
    , _tdlMetric     :: !Text
    , _tdlOldest     :: !(Maybe Text)
    , _tdlLabels     :: !(Maybe [Text])
    , _tdlPageToken  :: !(Maybe Text)
    , _tdlYoungest   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesDescriptorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdlWindow'
--
-- * 'tdlProject'
--
-- * 'tdlCount'
--
-- * 'tdlPayload'
--
-- * 'tdlAggregator'
--
-- * 'tdlTimespan'
--
-- * 'tdlMetric'
--
-- * 'tdlOldest'
--
-- * 'tdlLabels'
--
-- * 'tdlPageToken'
--
-- * 'tdlYoungest'
timeseriesDescriptorsList
    :: Text -- ^ 'tdlProject'
    -> ListTimeseriesDescriptorsRequest -- ^ 'tdlPayload'
    -> Text -- ^ 'tdlMetric'
    -> Text -- ^ 'tdlYoungest'
    -> TimeseriesDescriptorsList
timeseriesDescriptorsList pTdlProject_ pTdlPayload_ pTdlMetric_ pTdlYoungest_ =
    TimeseriesDescriptorsList'
    { _tdlWindow = Nothing
    , _tdlProject = pTdlProject_
    , _tdlCount = 100
    , _tdlPayload = pTdlPayload_
    , _tdlAggregator = Nothing
    , _tdlTimespan = Nothing
    , _tdlMetric = pTdlMetric_
    , _tdlOldest = Nothing
    , _tdlLabels = Nothing
    , _tdlPageToken = Nothing
    , _tdlYoungest = pTdlYoungest_
    }

-- | The sampling window. At most one data point will be returned for each
-- window in the requested time interval. This parameter is only valid for
-- non-cumulative metric types. Units: - m: minute - h: hour - d: day - w:
-- week Examples: 3m, 4w. Only one unit is allowed, for example: 2w3d is
-- not allowed; you should use 17d instead.
tdlWindow :: Lens' TimeseriesDescriptorsList (Maybe Text)
tdlWindow
  = lens _tdlWindow (\ s a -> s{_tdlWindow = a})

-- | The project ID to which this time series belongs. The value can be the
-- numeric project ID or string-based project name.
tdlProject :: Lens' TimeseriesDescriptorsList Text
tdlProject
  = lens _tdlProject (\ s a -> s{_tdlProject = a})

-- | Maximum number of time series descriptors per page. Used for pagination.
-- If not specified, count = 100.
tdlCount :: Lens' TimeseriesDescriptorsList Int32
tdlCount
  = lens _tdlCount (\ s a -> s{_tdlCount = a}) .
      _Coerce

-- | Multipart request metadata.
tdlPayload :: Lens' TimeseriesDescriptorsList ListTimeseriesDescriptorsRequest
tdlPayload
  = lens _tdlPayload (\ s a -> s{_tdlPayload = a})

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
tdlAggregator :: Lens' TimeseriesDescriptorsList (Maybe TimeseriesDescriptorsListAggregator)
tdlAggregator
  = lens _tdlAggregator
      (\ s a -> s{_tdlAggregator = a})

-- | Length of the time interval to query, which is an alternative way to
-- declare the interval: (youngest - timespan, youngest]. The timespan and
-- oldest parameters should not be used together. Units: - s: second - m:
-- minute - h: hour - d: day - w: week Examples: 2s, 3m, 4w. Only one unit
-- is allowed, for example: 2w3d is not allowed; you should use 17d
-- instead. If neither oldest nor timespan is specified, the default time
-- interval will be (youngest - 4 hours, youngest].
tdlTimespan :: Lens' TimeseriesDescriptorsList (Maybe Text)
tdlTimespan
  = lens _tdlTimespan (\ s a -> s{_tdlTimespan = a})

-- | Metric names are protocol-free URLs as listed in the Supported Metrics
-- page. For example,
-- compute.googleapis.com\/instance\/disk\/read_ops_count.
tdlMetric :: Lens' TimeseriesDescriptorsList Text
tdlMetric
  = lens _tdlMetric (\ s a -> s{_tdlMetric = a})

-- | Start of the time interval (exclusive), which is expressed as an RFC
-- 3339 timestamp. If neither oldest nor timespan is specified, the default
-- time interval will be (youngest - 4 hours, youngest]
tdlOldest :: Lens' TimeseriesDescriptorsList (Maybe Text)
tdlOldest
  = lens _tdlOldest (\ s a -> s{_tdlOldest = a})

-- | A collection of labels for the matching time series, which are
-- represented as: - key==value: key equals the value - key=~value: key
-- regex matches the value - key!=value: key does not equal the value -
-- key!~value: key regex does not match the value For example, to list all
-- of the time series descriptors for the region us-central1, you could
-- specify: label=cloud.googleapis.com%2Flocation=~us-central1.*
tdlLabels :: Lens' TimeseriesDescriptorsList [Text]
tdlLabels
  = lens _tdlLabels (\ s a -> s{_tdlLabels = a}) .
      _Default
      . _Coerce

-- | The pagination token, which is used to page through large result sets.
-- Set this value to the value of the nextPageToken to retrieve the next
-- page of results.
tdlPageToken :: Lens' TimeseriesDescriptorsList (Maybe Text)
tdlPageToken
  = lens _tdlPageToken (\ s a -> s{_tdlPageToken = a})

-- | End of the time interval (inclusive), which is expressed as an RFC 3339
-- timestamp.
tdlYoungest :: Lens' TimeseriesDescriptorsList Text
tdlYoungest
  = lens _tdlYoungest (\ s a -> s{_tdlYoungest = a})

instance GoogleRequest TimeseriesDescriptorsList
         where
        type Rs TimeseriesDescriptorsList =
             ListTimeseriesDescriptorsResponse
        type Scopes TimeseriesDescriptorsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient TimeseriesDescriptorsList'{..}
          = go _tdlProject _tdlMetric (Just _tdlYoungest)
              _tdlWindow
              (Just _tdlCount)
              _tdlAggregator
              _tdlTimespan
              _tdlOldest
              (_tdlLabels ^. _Default)
              _tdlPageToken
              (Just AltJSON)
              _tdlPayload
              cloudMonitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy TimeseriesDescriptorsListResource)
                      mempty
