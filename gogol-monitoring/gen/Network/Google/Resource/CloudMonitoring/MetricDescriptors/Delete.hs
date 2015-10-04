{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudMonitoring.MetricDescriptors.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an existing metric.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudMonitoringMetricDescriptorsDelete@.
module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Delete
    (
    -- * REST Resource
      MetricDescriptorsDeleteResource

    -- * Creating a Request
    , metricDescriptorsDelete'
    , MetricDescriptorsDelete'

    -- * Request Lenses
    , mddQuotaUser
    , mddPrettyPrint
    , mddProject
    , mddUserIP
    , mddMetric
    , mddKey
    , mddOAuthToken
    , mddFields
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudMonitoringMetricDescriptorsDelete@ which the
-- 'MetricDescriptorsDelete'' request conforms to.
type MetricDescriptorsDeleteResource =
     Capture "project" Text :>
       "metricDescriptors" :>
         Capture "metric" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Delete '[JSON] DeleteMetricDescriptorResponse

-- | Delete an existing metric.
--
-- /See:/ 'metricDescriptorsDelete'' smart constructor.
data MetricDescriptorsDelete' = MetricDescriptorsDelete'
    { _mddQuotaUser   :: !(Maybe Text)
    , _mddPrettyPrint :: !Bool
    , _mddProject     :: !Text
    , _mddUserIP      :: !(Maybe Text)
    , _mddMetric      :: !Text
    , _mddKey         :: !(Maybe Key)
    , _mddOAuthToken  :: !(Maybe OAuthToken)
    , _mddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddQuotaUser'
--
-- * 'mddPrettyPrint'
--
-- * 'mddProject'
--
-- * 'mddUserIP'
--
-- * 'mddMetric'
--
-- * 'mddKey'
--
-- * 'mddOAuthToken'
--
-- * 'mddFields'
metricDescriptorsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'metric'
    -> MetricDescriptorsDelete'
metricDescriptorsDelete' pMddProject_ pMddMetric_ =
    MetricDescriptorsDelete'
    { _mddQuotaUser = Nothing
    , _mddPrettyPrint = True
    , _mddProject = pMddProject_
    , _mddUserIP = Nothing
    , _mddMetric = pMddMetric_
    , _mddKey = Nothing
    , _mddOAuthToken = Nothing
    , _mddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mddQuotaUser :: Lens' MetricDescriptorsDelete' (Maybe Text)
mddQuotaUser
  = lens _mddQuotaUser (\ s a -> s{_mddQuotaUser = a})

-- | Returns response with indentations and line breaks.
mddPrettyPrint :: Lens' MetricDescriptorsDelete' Bool
mddPrettyPrint
  = lens _mddPrettyPrint
      (\ s a -> s{_mddPrettyPrint = a})

-- | The project ID to which the metric belongs.
mddProject :: Lens' MetricDescriptorsDelete' Text
mddProject
  = lens _mddProject (\ s a -> s{_mddProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mddUserIP :: Lens' MetricDescriptorsDelete' (Maybe Text)
mddUserIP
  = lens _mddUserIP (\ s a -> s{_mddUserIP = a})

-- | Name of the metric.
mddMetric :: Lens' MetricDescriptorsDelete' Text
mddMetric
  = lens _mddMetric (\ s a -> s{_mddMetric = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mddKey :: Lens' MetricDescriptorsDelete' (Maybe Key)
mddKey = lens _mddKey (\ s a -> s{_mddKey = a})

-- | OAuth 2.0 token for the current user.
mddOAuthToken :: Lens' MetricDescriptorsDelete' (Maybe OAuthToken)
mddOAuthToken
  = lens _mddOAuthToken
      (\ s a -> s{_mddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mddFields :: Lens' MetricDescriptorsDelete' (Maybe Text)
mddFields
  = lens _mddFields (\ s a -> s{_mddFields = a})

instance GoogleAuth MetricDescriptorsDelete' where
        authKey = mddKey . _Just
        authToken = mddOAuthToken . _Just

instance GoogleRequest MetricDescriptorsDelete' where
        type Rs MetricDescriptorsDelete' =
             DeleteMetricDescriptorResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u MetricDescriptorsDelete'{..}
          = go _mddProject _mddMetric _mddQuotaUser
              (Just _mddPrettyPrint)
              _mddUserIP
              _mddFields
              _mddKey
              _mddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetricDescriptorsDeleteResource)
                      r
                      u
