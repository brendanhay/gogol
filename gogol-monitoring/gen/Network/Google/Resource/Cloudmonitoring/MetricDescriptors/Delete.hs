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
-- Module      : Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an existing metric.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudmonitoringMetricDescriptorsDelete@.
module Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Delete
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
    , mddUserIp
    , mddMetric
    , mddKey
    , mddOauthToken
    , mddFields
    , mddAlt
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudmonitoringMetricDescriptorsDelete@ which the
-- 'MetricDescriptorsDelete'' request conforms to.
type MetricDescriptorsDeleteResource =
     Capture "project" Text :>
       "metricDescriptors" :>
         Capture "metric" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Delete '[JSON] DeleteMetricDescriptorResponse

-- | Delete an existing metric.
--
-- /See:/ 'metricDescriptorsDelete'' smart constructor.
data MetricDescriptorsDelete' = MetricDescriptorsDelete'
    { _mddQuotaUser   :: !(Maybe Text)
    , _mddPrettyPrint :: !Bool
    , _mddProject     :: !Text
    , _mddUserIp      :: !(Maybe Text)
    , _mddMetric      :: !Text
    , _mddKey         :: !(Maybe Text)
    , _mddOauthToken  :: !(Maybe Text)
    , _mddFields      :: !(Maybe Text)
    , _mddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mddUserIp'
--
-- * 'mddMetric'
--
-- * 'mddKey'
--
-- * 'mddOauthToken'
--
-- * 'mddFields'
--
-- * 'mddAlt'
metricDescriptorsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'metric'
    -> MetricDescriptorsDelete'
metricDescriptorsDelete' pMddProject_ pMddMetric_ =
    MetricDescriptorsDelete'
    { _mddQuotaUser = Nothing
    , _mddPrettyPrint = True
    , _mddProject = pMddProject_
    , _mddUserIp = Nothing
    , _mddMetric = pMddMetric_
    , _mddKey = Nothing
    , _mddOauthToken = Nothing
    , _mddFields = Nothing
    , _mddAlt = JSON
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
mddUserIp :: Lens' MetricDescriptorsDelete' (Maybe Text)
mddUserIp
  = lens _mddUserIp (\ s a -> s{_mddUserIp = a})

-- | Name of the metric.
mddMetric :: Lens' MetricDescriptorsDelete' Text
mddMetric
  = lens _mddMetric (\ s a -> s{_mddMetric = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mddKey :: Lens' MetricDescriptorsDelete' (Maybe Text)
mddKey = lens _mddKey (\ s a -> s{_mddKey = a})

-- | OAuth 2.0 token for the current user.
mddOauthToken :: Lens' MetricDescriptorsDelete' (Maybe Text)
mddOauthToken
  = lens _mddOauthToken
      (\ s a -> s{_mddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mddFields :: Lens' MetricDescriptorsDelete' (Maybe Text)
mddFields
  = lens _mddFields (\ s a -> s{_mddFields = a})

-- | Data format for the response.
mddAlt :: Lens' MetricDescriptorsDelete' Alt
mddAlt = lens _mddAlt (\ s a -> s{_mddAlt = a})

instance GoogleRequest MetricDescriptorsDelete' where
        type Rs MetricDescriptorsDelete' =
             DeleteMetricDescriptorResponse
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u MetricDescriptorsDelete'{..}
          = go _mddQuotaUser (Just _mddPrettyPrint) _mddProject
              _mddUserIp
              _mddMetric
              _mddKey
              _mddOauthToken
              _mddFields
              (Just _mddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetricDescriptorsDeleteResource)
                      r
                      u
