{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Cloudmonitoring.TimeseriesDescriptors.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the descriptors of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @cloudmonitoring.timeseriesDescriptors.list@.
module Network.Google.API.Cloudmonitoring.TimeseriesDescriptors.List
    (
    -- * REST Resource
      TimeseriesDescriptorsListAPI

    -- * Creating a Request
    , timeseriesDescriptorsList'
    , TimeseriesDescriptorsList'

    -- * Request Lenses
    , tdlWindow
    , tdlQuotaUser
    , tdlPrettyPrint
    , tdlProject
    , tdlUserIp
    , tdlCount
    , tdlAggregator
    , tdlTimespan
    , tdlMetric
    , tdlKey
    , tdlOldest
    , tdlLabels
    , tdlPageToken
    , tdlYoungest
    , tdlOauthToken
    , tdlFields
    , tdlAlt
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for cloudmonitoring.timeseriesDescriptors.list which the
-- 'TimeseriesDescriptorsList'' request conforms to.
type TimeseriesDescriptorsListAPI =
     Capture "project" Text :>
       "timeseriesDescriptors" :>
         Capture "metric" Text :>
           QueryParam "window" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "count" Nat :>
                     QueryParam "aggregator"
                       TimeseriesDescriptorsList'Aggregator
                       :>
                       QueryParam "timespan" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oldest" Text :>
                             QueryParam "labels" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "youngest" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Alt :>
                                         Get '[JSON]
                                           ListTimeseriesDescriptorsResponse

-- | List the descriptors of the time series that match the metric and labels
-- values and that have data points in the interval. Large responses are
-- paginated; use the nextPageToken returned in the response to request
-- subsequent pages of results by setting the pageToken query parameter to
-- the value of the nextPageToken.
--
-- /See:/ 'timeseriesDescriptorsList'' smart constructor.
data TimeseriesDescriptorsList' = TimeseriesDescriptorsList'
    { _tdlWindow      :: !(Maybe Text)
    , _tdlQuotaUser   :: !(Maybe Text)
    , _tdlPrettyPrint :: !Bool
    , _tdlProject     :: !Text
    , _tdlUserIp      :: !(Maybe Text)
    , _tdlCount       :: !Nat
    , _tdlAggregator  :: !(Maybe TimeseriesDescriptorsList'Aggregator)
    , _tdlTimespan    :: !(Maybe Text)
    , _tdlMetric      :: !Text
    , _tdlKey         :: !(Maybe Text)
    , _tdlOldest      :: !(Maybe Text)
    , _tdlLabels      :: !(Maybe Text)
    , _tdlPageToken   :: !(Maybe Text)
    , _tdlYoungest    :: !Text
    , _tdlOauthToken  :: !(Maybe Text)
    , _tdlFields      :: !(Maybe Text)
    , _tdlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesDescriptorsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdlWindow'
--
-- * 'tdlQuotaUser'
--
-- * 'tdlPrettyPrint'
--
-- * 'tdlProject'
--
-- * 'tdlUserIp'
--
-- * 'tdlCount'
--
-- * 'tdlAggregator'
--
-- * 'tdlTimespan'
--
-- * 'tdlMetric'
--
-- * 'tdlKey'
--
-- * 'tdlOldest'
--
-- * 'tdlLabels'
--
-- * 'tdlPageToken'
--
-- * 'tdlYoungest'
--
-- * 'tdlOauthToken'
--
-- * 'tdlFields'
--
-- * 'tdlAlt'
timeseriesDescriptorsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'metric'
    -> Text -- ^ 'youngest'
    -> TimeseriesDescriptorsList'
timeseriesDescriptorsList' pTdlProject_ pTdlMetric_ pTdlYoungest_ =
    TimeseriesDescriptorsList'
    { _tdlWindow = Nothing
    , _tdlQuotaUser = Nothing
    , _tdlPrettyPrint = True
    , _tdlProject = pTdlProject_
    , _tdlUserIp = Nothing
    , _tdlCount = 100
    , _tdlAggregator = Nothing
    , _tdlTimespan = Nothing
    , _tdlMetric = pTdlMetric_
    , _tdlKey = Nothing
    , _tdlOldest = Nothing
    , _tdlLabels = Nothing
    , _tdlPageToken = Nothing
    , _tdlYoungest = pTdlYoungest_
    , _tdlOauthToken = Nothing
    , _tdlFields = Nothing
    , _tdlAlt = JSON
    }

-- | The sampling window. At most one data point will be returned for each
-- window in the requested time interval. This parameter is only valid for
-- non-cumulative metric types. Units: - m: minute - h: hour - d: day - w:
-- week Examples: 3m, 4w. Only one unit is allowed, for example: 2w3d is
-- not allowed; you should use 17d instead.
tdlWindow :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlWindow
  = lens _tdlWindow (\ s a -> s{_tdlWindow = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdlQuotaUser :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlQuotaUser
  = lens _tdlQuotaUser (\ s a -> s{_tdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdlPrettyPrint :: Lens' TimeseriesDescriptorsList' Bool
tdlPrettyPrint
  = lens _tdlPrettyPrint
      (\ s a -> s{_tdlPrettyPrint = a})

-- | The project ID to which this time series belongs. The value can be the
-- numeric project ID or string-based project name.
tdlProject :: Lens' TimeseriesDescriptorsList' Text
tdlProject
  = lens _tdlProject (\ s a -> s{_tdlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdlUserIp :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlUserIp
  = lens _tdlUserIp (\ s a -> s{_tdlUserIp = a})

-- | Maximum number of time series descriptors per page. Used for pagination.
-- If not specified, count = 100.
tdlCount :: Lens' TimeseriesDescriptorsList' Natural
tdlCount
  = lens _tdlCount (\ s a -> s{_tdlCount = a}) . _Nat

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
tdlAggregator :: Lens' TimeseriesDescriptorsList' (Maybe TimeseriesDescriptorsList'Aggregator)
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
tdlTimespan :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlTimespan
  = lens _tdlTimespan (\ s a -> s{_tdlTimespan = a})

-- | Metric names are protocol-free URLs as listed in the Supported Metrics
-- page. For example,
-- compute.googleapis.com\/instance\/disk\/read_ops_count.
tdlMetric :: Lens' TimeseriesDescriptorsList' Text
tdlMetric
  = lens _tdlMetric (\ s a -> s{_tdlMetric = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdlKey :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlKey = lens _tdlKey (\ s a -> s{_tdlKey = a})

-- | Start of the time interval (exclusive), which is expressed as an RFC
-- 3339 timestamp. If neither oldest nor timespan is specified, the default
-- time interval will be (youngest - 4 hours, youngest]
tdlOldest :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlOldest
  = lens _tdlOldest (\ s a -> s{_tdlOldest = a})

-- | A collection of labels for the matching time series, which are
-- represented as: - key==value: key equals the value - key=~value: key
-- regex matches the value - key!=value: key does not equal the value -
-- key!~value: key regex does not match the value For example, to list all
-- of the time series descriptors for the region us-central1, you could
-- specify: label=cloud.googleapis.com%2Flocation=~us-central1.*
tdlLabels :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlLabels
  = lens _tdlLabels (\ s a -> s{_tdlLabels = a})

-- | The pagination token, which is used to page through large result sets.
-- Set this value to the value of the nextPageToken to retrieve the next
-- page of results.
tdlPageToken :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlPageToken
  = lens _tdlPageToken (\ s a -> s{_tdlPageToken = a})

-- | End of the time interval (inclusive), which is expressed as an RFC 3339
-- timestamp.
tdlYoungest :: Lens' TimeseriesDescriptorsList' Text
tdlYoungest
  = lens _tdlYoungest (\ s a -> s{_tdlYoungest = a})

-- | OAuth 2.0 token for the current user.
tdlOauthToken :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlOauthToken
  = lens _tdlOauthToken
      (\ s a -> s{_tdlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdlFields :: Lens' TimeseriesDescriptorsList' (Maybe Text)
tdlFields
  = lens _tdlFields (\ s a -> s{_tdlFields = a})

-- | Data format for the response.
tdlAlt :: Lens' TimeseriesDescriptorsList' Alt
tdlAlt = lens _tdlAlt (\ s a -> s{_tdlAlt = a})

instance GoogleRequest TimeseriesDescriptorsList'
         where
        type Rs TimeseriesDescriptorsList' =
             ListTimeseriesDescriptorsResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u TimeseriesDescriptorsList'{..}
          = go _tdlWindow _tdlQuotaUser (Just _tdlPrettyPrint)
              _tdlProject
              _tdlUserIp
              (Just _tdlCount)
              _tdlAggregator
              _tdlTimespan
              _tdlMetric
              _tdlKey
              _tdlOldest
              _tdlLabels
              _tdlPageToken
              (Just _tdlYoungest)
              _tdlOauthToken
              _tdlFields
              (Just _tdlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimeseriesDescriptorsListAPI)
                      r
                      u
