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
-- Module      : Network.Google.Resource.CloudMonitoring.MetricDescriptors.List
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
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudMonitoringMetricDescriptorsList@.
module Network.Google.Resource.CloudMonitoring.MetricDescriptors.List
    (
    -- * REST Resource
      MetricDescriptorsListResource

    -- * Creating a Request
    , metricDescriptorsList'
    , MetricDescriptorsList'

    -- * Request Lenses
    , mdlQuotaUser
    , mdlPrettyPrint
    , mdlProject
    , mdlUserIP
    , mdlCount
    , mdlPayload
    , mdlKey
    , mdlQuery
    , mdlPageToken
    , mdlOAuthToken
    , mdlFields
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudMonitoringMetricDescriptorsList@ which the
-- 'MetricDescriptorsList'' request conforms to.
type MetricDescriptorsListResource =
     Capture "project" Text :>
       "metricDescriptors" :>
         QueryParam "count" Int32 :>
           QueryParam "query" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ListMetricDescriptorsRequest :>
                               Get '[JSON] ListMetricDescriptorsResponse

-- | List metric descriptors that match the query. If the query is not set,
-- then all of the metric descriptors will be returned. Large responses
-- will be paginated, use the nextPageToken returned in the response to
-- request subsequent pages of results by setting the pageToken query
-- parameter to the value of the nextPageToken.
--
-- /See:/ 'metricDescriptorsList'' smart constructor.
data MetricDescriptorsList' = MetricDescriptorsList'
    { _mdlQuotaUser   :: !(Maybe Text)
    , _mdlPrettyPrint :: !Bool
    , _mdlProject     :: !Text
    , _mdlUserIP      :: !(Maybe Text)
    , _mdlCount       :: !Int32
    , _mdlPayload     :: !ListMetricDescriptorsRequest
    , _mdlKey         :: !(Maybe Key)
    , _mdlQuery       :: !(Maybe Text)
    , _mdlPageToken   :: !(Maybe Text)
    , _mdlOAuthToken  :: !(Maybe OAuthToken)
    , _mdlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mdlUserIP'
--
-- * 'mdlCount'
--
-- * 'mdlPayload'
--
-- * 'mdlKey'
--
-- * 'mdlQuery'
--
-- * 'mdlPageToken'
--
-- * 'mdlOAuthToken'
--
-- * 'mdlFields'
metricDescriptorsList'
    :: Text -- ^ 'project'
    -> ListMetricDescriptorsRequest -- ^ 'payload'
    -> MetricDescriptorsList'
metricDescriptorsList' pMdlProject_ pMdlPayload_ =
    MetricDescriptorsList'
    { _mdlQuotaUser = Nothing
    , _mdlPrettyPrint = True
    , _mdlProject = pMdlProject_
    , _mdlUserIP = Nothing
    , _mdlCount = 100
    , _mdlPayload = pMdlPayload_
    , _mdlKey = Nothing
    , _mdlQuery = Nothing
    , _mdlPageToken = Nothing
    , _mdlOAuthToken = Nothing
    , _mdlFields = Nothing
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
mdlUserIP :: Lens' MetricDescriptorsList' (Maybe Text)
mdlUserIP
  = lens _mdlUserIP (\ s a -> s{_mdlUserIP = a})

-- | Maximum number of metric descriptors per page. Used for pagination. If
-- not specified, count = 100.
mdlCount :: Lens' MetricDescriptorsList' Int32
mdlCount = lens _mdlCount (\ s a -> s{_mdlCount = a})

-- | Multipart request metadata.
mdlPayload :: Lens' MetricDescriptorsList' ListMetricDescriptorsRequest
mdlPayload
  = lens _mdlPayload (\ s a -> s{_mdlPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdlKey :: Lens' MetricDescriptorsList' (Maybe Key)
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
mdlOAuthToken :: Lens' MetricDescriptorsList' (Maybe OAuthToken)
mdlOAuthToken
  = lens _mdlOAuthToken
      (\ s a -> s{_mdlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdlFields :: Lens' MetricDescriptorsList' (Maybe Text)
mdlFields
  = lens _mdlFields (\ s a -> s{_mdlFields = a})

instance GoogleAuth MetricDescriptorsList' where
        authKey = mdlKey . _Just
        authToken = mdlOAuthToken . _Just

instance GoogleRequest MetricDescriptorsList' where
        type Rs MetricDescriptorsList' =
             ListMetricDescriptorsResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u MetricDescriptorsList'{..}
          = go _mdlProject (Just _mdlCount) _mdlQuery
              _mdlPageToken
              _mdlQuotaUser
              (Just _mdlPrettyPrint)
              _mdlUserIP
              _mdlFields
              _mdlKey
              _mdlOAuthToken
              (Just AltJSON)
              _mdlPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetricDescriptorsListResource)
                      r
                      u
