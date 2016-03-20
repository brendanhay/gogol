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
-- Module      : Network.Google.Resource.CloudMonitoring.Timeseries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the data points of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @cloudmonitoring.timeseries.list@.
module Network.Google.Resource.CloudMonitoring.Timeseries.List
    (
    -- * REST Resource
      TimeseriesListResource

    -- * Creating a Request
    , timeseriesList
    , TimeseriesList

    -- * Request Lenses
    , tlWindow
    , tlProject
    , tlCount
    , tlPayload
    , tlAggregator
    , tlTimespan
    , tlMetric
    , tlOldest
    , tlLabels
    , tlPageToken
    , tlYoungest
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudmonitoring.timeseries.list@ method which the
-- 'TimeseriesList' request conforms to.
type TimeseriesListResource =
     "cloudmonitoring" :>
       "v2beta2" :>
         "projects" :>
           Capture "project" Text :>
             "timeseries" :>
               Capture "metric" Text :>
                 QueryParam "youngest" Text :>
                   QueryParam "window" Text :>
                     QueryParam "count" (Textual Int32) :>
                       QueryParam "aggregator" TimeseriesListAggregator :>
                         QueryParam "timespan" Text :>
                           QueryParam "oldest" Text :>
                             QueryParams "labels" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ListTimeseriesRequest :>
                                     Get '[JSON] ListTimeseriesResponse

-- | List the data points of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ 'timeseriesList' smart constructor.
data TimeseriesList = TimeseriesList
    { _tlWindow     :: !(Maybe Text)
    , _tlProject    :: !Text
    , _tlCount      :: !(Textual Int32)
    , _tlPayload    :: !ListTimeseriesRequest
    , _tlAggregator :: !(Maybe TimeseriesListAggregator)
    , _tlTimespan   :: !(Maybe Text)
    , _tlMetric     :: !Text
    , _tlOldest     :: !(Maybe Text)
    , _tlLabels     :: !(Maybe [Text])
    , _tlPageToken  :: !(Maybe Text)
    , _tlYoungest   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlWindow'
--
-- * 'tlProject'
--
-- * 'tlCount'
--
-- * 'tlPayload'
--
-- * 'tlAggregator'
--
-- * 'tlTimespan'
--
-- * 'tlMetric'
--
-- * 'tlOldest'
--
-- * 'tlLabels'
--
-- * 'tlPageToken'
--
-- * 'tlYoungest'
timeseriesList
    :: Text -- ^ 'tlProject'
    -> ListTimeseriesRequest -- ^ 'tlPayload'
    -> Text -- ^ 'tlMetric'
    -> Text -- ^ 'tlYoungest'
    -> TimeseriesList
timeseriesList pTlProject_ pTlPayload_ pTlMetric_ pTlYoungest_ =
    TimeseriesList
    { _tlWindow = Nothing
    , _tlProject = pTlProject_
    , _tlCount = 6000
    , _tlPayload = pTlPayload_
    , _tlAggregator = Nothing
    , _tlTimespan = Nothing
    , _tlMetric = pTlMetric_
    , _tlOldest = Nothing
    , _tlLabels = Nothing
    , _tlPageToken = Nothing
    , _tlYoungest = pTlYoungest_
    }

-- | The sampling window. At most one data point will be returned for each
-- window in the requested time interval. This parameter is only valid for
-- non-cumulative metric types. Units: - m: minute - h: hour - d: day - w:
-- week Examples: 3m, 4w. Only one unit is allowed, for example: 2w3d is
-- not allowed; you should use 17d instead.
tlWindow :: Lens' TimeseriesList (Maybe Text)
tlWindow = lens _tlWindow (\ s a -> s{_tlWindow = a})

-- | The project ID to which this time series belongs. The value can be the
-- numeric project ID or string-based project name.
tlProject :: Lens' TimeseriesList Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | Maximum number of data points per page, which is used for pagination of
-- results.
tlCount :: Lens' TimeseriesList Int32
tlCount
  = lens _tlCount (\ s a -> s{_tlCount = a}) . _Coerce

-- | Multipart request metadata.
tlPayload :: Lens' TimeseriesList ListTimeseriesRequest
tlPayload
  = lens _tlPayload (\ s a -> s{_tlPayload = a})

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
tlAggregator :: Lens' TimeseriesList (Maybe TimeseriesListAggregator)
tlAggregator
  = lens _tlAggregator (\ s a -> s{_tlAggregator = a})

-- | Length of the time interval to query, which is an alternative way to
-- declare the interval: (youngest - timespan, youngest]. The timespan and
-- oldest parameters should not be used together. Units: - s: second - m:
-- minute - h: hour - d: day - w: week Examples: 2s, 3m, 4w. Only one unit
-- is allowed, for example: 2w3d is not allowed; you should use 17d
-- instead. If neither oldest nor timespan is specified, the default time
-- interval will be (youngest - 4 hours, youngest].
tlTimespan :: Lens' TimeseriesList (Maybe Text)
tlTimespan
  = lens _tlTimespan (\ s a -> s{_tlTimespan = a})

-- | Metric names are protocol-free URLs as listed in the Supported Metrics
-- page. For example,
-- compute.googleapis.com\/instance\/disk\/read_ops_count.
tlMetric :: Lens' TimeseriesList Text
tlMetric = lens _tlMetric (\ s a -> s{_tlMetric = a})

-- | Start of the time interval (exclusive), which is expressed as an RFC
-- 3339 timestamp. If neither oldest nor timespan is specified, the default
-- time interval will be (youngest - 4 hours, youngest]
tlOldest :: Lens' TimeseriesList (Maybe Text)
tlOldest = lens _tlOldest (\ s a -> s{_tlOldest = a})

-- | A collection of labels for the matching time series, which are
-- represented as: - key==value: key equals the value - key=~value: key
-- regex matches the value - key!=value: key does not equal the value -
-- key!~value: key regex does not match the value For example, to list all
-- of the time series descriptors for the region us-central1, you could
-- specify: label=cloud.googleapis.com%2Flocation=~us-central1.*
tlLabels :: Lens' TimeseriesList [Text]
tlLabels
  = lens _tlLabels (\ s a -> s{_tlLabels = a}) .
      _Default
      . _Coerce

-- | The pagination token, which is used to page through large result sets.
-- Set this value to the value of the nextPageToken to retrieve the next
-- page of results.
tlPageToken :: Lens' TimeseriesList (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | End of the time interval (inclusive), which is expressed as an RFC 3339
-- timestamp.
tlYoungest :: Lens' TimeseriesList Text
tlYoungest
  = lens _tlYoungest (\ s a -> s{_tlYoungest = a})

instance GoogleRequest TimeseriesList where
        type Rs TimeseriesList = ListTimeseriesResponse
        requestClient TimeseriesList{..}
          = go _tlProject _tlMetric (Just _tlYoungest)
              _tlWindow
              (Just _tlCount)
              _tlAggregator
              _tlTimespan
              _tlOldest
              (_tlLabels ^. _Default)
              _tlPageToken
              (Just AltJSON)
              _tlPayload
              monitoringService
          where go
                  = buildClient (Proxy :: Proxy TimeseriesListResource)
                      mempty
