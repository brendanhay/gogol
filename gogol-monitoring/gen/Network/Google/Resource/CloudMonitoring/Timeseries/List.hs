{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudMonitoring.Timeseries.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the data points of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudMonitoringTimeseriesList@.
module Network.Google.Resource.CloudMonitoring.Timeseries.List
    (
    -- * REST Resource
      TimeseriesListResource

    -- * Creating a Request
    , timeseriesList'
    , TimeseriesList'

    -- * Request Lenses
    , tlWindow
    , tlQuotaUser
    , tlPrettyPrint
    , tlProject
    , tlUserIP
    , tlCount
    , tlAggregator
    , tlTimespan
    , tlMetric
    , tlKey
    , tlListTimeseriesRequest
    , tlOldest
    , tlLabels
    , tlPageToken
    , tlYoungest
    , tlOAuthToken
    , tlFields
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudMonitoringTimeseriesList@ which the
-- 'TimeseriesList'' request conforms to.
type TimeseriesListResource =
     Capture "project" Text :>
       "timeseries" :>
         Capture "metric" Text :>
           QueryParam "window" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "count" Int32 :>
                     QueryParam "aggregator"
                       CloudMonitoringTimeseriesListAggregator
                       :>
                       QueryParam "timespan" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oldest" Text :>
                             QueryParams "labels" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "youngest" Text :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" AltJSON :>
                                         ReqBody '[JSON] ListTimeseriesRequest
                                           :> Get '[JSON] ListTimeseriesResponse

-- | List the data points of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ 'timeseriesList'' smart constructor.
data TimeseriesList' = TimeseriesList'
    { _tlWindow                :: !(Maybe Text)
    , _tlQuotaUser             :: !(Maybe Text)
    , _tlPrettyPrint           :: !Bool
    , _tlProject               :: !Text
    , _tlUserIP                :: !(Maybe Text)
    , _tlCount                 :: !Int32
    , _tlAggregator            :: !(Maybe CloudMonitoringTimeseriesListAggregator)
    , _tlTimespan              :: !(Maybe Text)
    , _tlMetric                :: !Text
    , _tlKey                   :: !(Maybe Key)
    , _tlListTimeseriesRequest :: !ListTimeseriesRequest
    , _tlOldest                :: !(Maybe Text)
    , _tlLabels                :: !(Maybe Text)
    , _tlPageToken             :: !(Maybe Text)
    , _tlYoungest              :: !Text
    , _tlOAuthToken            :: !(Maybe OAuthToken)
    , _tlFields                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlWindow'
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlProject'
--
-- * 'tlUserIP'
--
-- * 'tlCount'
--
-- * 'tlAggregator'
--
-- * 'tlTimespan'
--
-- * 'tlMetric'
--
-- * 'tlKey'
--
-- * 'tlListTimeseriesRequest'
--
-- * 'tlOldest'
--
-- * 'tlLabels'
--
-- * 'tlPageToken'
--
-- * 'tlYoungest'
--
-- * 'tlOAuthToken'
--
-- * 'tlFields'
timeseriesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'metric'
    -> ListTimeseriesRequest -- ^ 'ListTimeseriesRequest'
    -> Text -- ^ 'youngest'
    -> TimeseriesList'
timeseriesList' pTlProject_ pTlMetric_ pTlListTimeseriesRequest_ pTlYoungest_ =
    TimeseriesList'
    { _tlWindow = Nothing
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlProject = pTlProject_
    , _tlUserIP = Nothing
    , _tlCount = 6000
    , _tlAggregator = Nothing
    , _tlTimespan = Nothing
    , _tlMetric = pTlMetric_
    , _tlKey = Nothing
    , _tlListTimeseriesRequest = pTlListTimeseriesRequest_
    , _tlOldest = Nothing
    , _tlLabels = Nothing
    , _tlPageToken = Nothing
    , _tlYoungest = pTlYoungest_
    , _tlOAuthToken = Nothing
    , _tlFields = Nothing
    }

-- | The sampling window. At most one data point will be returned for each
-- window in the requested time interval. This parameter is only valid for
-- non-cumulative metric types. Units: - m: minute - h: hour - d: day - w:
-- week Examples: 3m, 4w. Only one unit is allowed, for example: 2w3d is
-- not allowed; you should use 17d instead.
tlWindow :: Lens' TimeseriesList' (Maybe Text)
tlWindow = lens _tlWindow (\ s a -> s{_tlWindow = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TimeseriesList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TimeseriesList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | The project ID to which this time series belongs. The value can be the
-- numeric project ID or string-based project name.
tlProject :: Lens' TimeseriesList' Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TimeseriesList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | Maximum number of data points per page, which is used for pagination of
-- results.
tlCount :: Lens' TimeseriesList' Int32
tlCount = lens _tlCount (\ s a -> s{_tlCount = a})

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
tlAggregator :: Lens' TimeseriesList' (Maybe CloudMonitoringTimeseriesListAggregator)
tlAggregator
  = lens _tlAggregator (\ s a -> s{_tlAggregator = a})

-- | Length of the time interval to query, which is an alternative way to
-- declare the interval: (youngest - timespan, youngest]. The timespan and
-- oldest parameters should not be used together. Units: - s: second - m:
-- minute - h: hour - d: day - w: week Examples: 2s, 3m, 4w. Only one unit
-- is allowed, for example: 2w3d is not allowed; you should use 17d
-- instead. If neither oldest nor timespan is specified, the default time
-- interval will be (youngest - 4 hours, youngest].
tlTimespan :: Lens' TimeseriesList' (Maybe Text)
tlTimespan
  = lens _tlTimespan (\ s a -> s{_tlTimespan = a})

-- | Metric names are protocol-free URLs as listed in the Supported Metrics
-- page. For example,
-- compute.googleapis.com\/instance\/disk\/read_ops_count.
tlMetric :: Lens' TimeseriesList' Text
tlMetric = lens _tlMetric (\ s a -> s{_tlMetric = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TimeseriesList' (Maybe Key)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Multipart request metadata.
tlListTimeseriesRequest :: Lens' TimeseriesList' ListTimeseriesRequest
tlListTimeseriesRequest
  = lens _tlListTimeseriesRequest
      (\ s a -> s{_tlListTimeseriesRequest = a})

-- | Start of the time interval (exclusive), which is expressed as an RFC
-- 3339 timestamp. If neither oldest nor timespan is specified, the default
-- time interval will be (youngest - 4 hours, youngest]
tlOldest :: Lens' TimeseriesList' (Maybe Text)
tlOldest = lens _tlOldest (\ s a -> s{_tlOldest = a})

-- | A collection of labels for the matching time series, which are
-- represented as: - key==value: key equals the value - key=~value: key
-- regex matches the value - key!=value: key does not equal the value -
-- key!~value: key regex does not match the value For example, to list all
-- of the time series descriptors for the region us-central1, you could
-- specify: label=cloud.googleapis.com%2Flocation=~us-central1.*
tlLabels :: Lens' TimeseriesList' (Maybe Text)
tlLabels = lens _tlLabels (\ s a -> s{_tlLabels = a})

-- | The pagination token, which is used to page through large result sets.
-- Set this value to the value of the nextPageToken to retrieve the next
-- page of results.
tlPageToken :: Lens' TimeseriesList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | End of the time interval (inclusive), which is expressed as an RFC 3339
-- timestamp.
tlYoungest :: Lens' TimeseriesList' Text
tlYoungest
  = lens _tlYoungest (\ s a -> s{_tlYoungest = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TimeseriesList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TimeseriesList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TimeseriesList' where
        authKey = tlKey . _Just
        authToken = tlOAuthToken . _Just

instance GoogleRequest TimeseriesList' where
        type Rs TimeseriesList' = ListTimeseriesResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u TimeseriesList'{..}
          = go _tlWindow _tlQuotaUser (Just _tlPrettyPrint)
              _tlProject
              _tlUserIP
              (Just _tlCount)
              _tlAggregator
              _tlTimespan
              _tlMetric
              _tlKey
              _tlOldest
              _tlLabels
              _tlPageToken
              (Just _tlYoungest)
              _tlOAuthToken
              _tlFields
              (Just AltJSON)
              _tlListTimeseriesRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimeseriesListResource)
                      r
                      u
