{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Cloudmonitoring.MetricDescriptors.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List metric descriptors that match the query. If the query is not set,
-- then all of the metric descriptors will be returned. Large responses
-- will be paginated, use the nextPageToken returned in the response to
-- request subsequent pages of results by setting the pageToken query
-- parameter to the value of the nextPageToken.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudmonitoringMetricDescriptorsList@.
module Cloudmonitoring.MetricDescriptors.List
    (
    -- * REST Resource
      MetricDescriptorsListAPI

    -- * Creating a Request
    , metricDescriptorsList
    , MetricDescriptorsList

    -- * Request Lenses
    , mdlQuotaUser
    , mdlPrettyPrint
    , mdlProject
    , mdlUserIp
    , mdlCount
    , mdlKey
    , mdlQuery
    , mdlPageToken
    , mdlOauthToken
    , mdlFields
    , mdlAlt
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudmonitoringMetricDescriptorsList@ which the
-- 'MetricDescriptorsList' request conforms to.
type MetricDescriptorsListAPI =
     Capture "project" Text :>
       "metricDescriptors" :>
         QueryParam "count" Int32 :>
           QueryParam "query" Text :>
             QueryParam "pageToken" Text :>
               Get '[JSON] ListMetricDescriptorsResponse

-- | List metric descriptors that match the query. If the query is not set,
-- then all of the metric descriptors will be returned. Large responses
-- will be paginated, use the nextPageToken returned in the response to
-- request subsequent pages of results by setting the pageToken query
-- parameter to the value of the nextPageToken.
--
-- /See:/ 'metricDescriptorsList' smart constructor.
data MetricDescriptorsList = MetricDescriptorsList
    { _mdlQuotaUser   :: !(Maybe Text)
    , _mdlPrettyPrint :: !Bool
    , _mdlProject     :: !Text
    , _mdlUserIp      :: !(Maybe Text)
    , _mdlCount       :: !Int32
    , _mdlKey         :: !(Maybe Text)
    , _mdlQuery       :: !(Maybe Text)
    , _mdlPageToken   :: !(Maybe Text)
    , _mdlOauthToken  :: !(Maybe Text)
    , _mdlFields      :: !(Maybe Text)
    , _mdlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlQuotaUser'
--
-- * 'mdlPrettyPrint'
--
-- * 'mdlProject'
--
-- * 'mdlUserIp'
--
-- * 'mdlCount'
--
-- * 'mdlKey'
--
-- * 'mdlQuery'
--
-- * 'mdlPageToken'
--
-- * 'mdlOauthToken'
--
-- * 'mdlFields'
--
-- * 'mdlAlt'
metricDescriptorsList
    :: Text -- ^ 'project'
    -> MetricDescriptorsList
metricDescriptorsList pMdlProject_ =
    MetricDescriptorsList
    { _mdlQuotaUser = Nothing
    , _mdlPrettyPrint = True
    , _mdlProject = pMdlProject_
    , _mdlUserIp = Nothing
    , _mdlCount = 100
    , _mdlKey = Nothing
    , _mdlQuery = Nothing
    , _mdlPageToken = Nothing
    , _mdlOauthToken = Nothing
    , _mdlFields = Nothing
    , _mdlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdlQuotaUser :: Lens' MetricDescriptorsList' (Maybe Text)
mdlQuotaUser
  = lens _mdlQuotaUser (\ s a -> s{_mdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdlPrettyPrint :: Lens' MetricDescriptorsList' Bool
mdlPrettyPrint
  = lens _mdlPrettyPrint
      (\ s a -> s{_mdlPrettyPrint = a})

-- | The project id. The value can be the numeric project ID or string-based
-- project name.
mdlProject :: Lens' MetricDescriptorsList' Text
mdlProject
  = lens _mdlProject (\ s a -> s{_mdlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdlUserIp :: Lens' MetricDescriptorsList' (Maybe Text)
mdlUserIp
  = lens _mdlUserIp (\ s a -> s{_mdlUserIp = a})

-- | Maximum number of metric descriptors per page. Used for pagination. If
-- not specified, count = 100.
mdlCount :: Lens' MetricDescriptorsList' Int32
mdlCount = lens _mdlCount (\ s a -> s{_mdlCount = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdlKey :: Lens' MetricDescriptorsList' (Maybe Text)
mdlKey = lens _mdlKey (\ s a -> s{_mdlKey = a})

-- | The query used to search against existing metrics. Separate keywords
-- with a space; the service joins all keywords with AND, meaning that all
-- keywords must match for a metric to be returned. If this field is
-- omitted, all metrics are returned. If an empty string is passed with
-- this field, no metrics are returned.
mdlQuery :: Lens' MetricDescriptorsList' (Maybe Text)
mdlQuery = lens _mdlQuery (\ s a -> s{_mdlQuery = a})

-- | The pagination token, which is used to page through large result sets.
-- Set this value to the value of the nextPageToken to retrieve the next
-- page of results.
mdlPageToken :: Lens' MetricDescriptorsList' (Maybe Text)
mdlPageToken
  = lens _mdlPageToken (\ s a -> s{_mdlPageToken = a})

-- | OAuth 2.0 token for the current user.
mdlOauthToken :: Lens' MetricDescriptorsList' (Maybe Text)
mdlOauthToken
  = lens _mdlOauthToken
      (\ s a -> s{_mdlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdlFields :: Lens' MetricDescriptorsList' (Maybe Text)
mdlFields
  = lens _mdlFields (\ s a -> s{_mdlFields = a})

-- | Data format for the response.
mdlAlt :: Lens' MetricDescriptorsList' Text
mdlAlt = lens _mdlAlt (\ s a -> s{_mdlAlt = a})

instance GoogleRequest MetricDescriptorsList' where
        type Rs MetricDescriptorsList' =
             ListMetricDescriptorsResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u MetricDescriptorsList{..}
          = go _mdlQuotaUser _mdlPrettyPrint _mdlProject
              _mdlUserIp
              (Just _mdlCount)
              _mdlKey
              _mdlQuery
              _mdlPageToken
              _mdlOauthToken
              _mdlFields
              _mdlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetricDescriptorsListAPI)
                      r
                      u
