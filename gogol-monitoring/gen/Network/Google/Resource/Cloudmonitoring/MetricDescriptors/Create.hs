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
-- Module      : Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new metric.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudmonitoringMetricDescriptorsCreate@.
module Network.Google.Resource.Cloudmonitoring.MetricDescriptors.Create
    (
    -- * REST Resource
      MetricDescriptorsCreateResource

    -- * Creating a Request
    , metricDescriptorsCreate'
    , MetricDescriptorsCreate'

    -- * Request Lenses
    , mdcQuotaUser
    , mdcPrettyPrint
    , mdcProject
    , mdcUserIp
    , mdcKey
    , mdcOauthToken
    , mdcFields
    , mdcAlt
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudmonitoringMetricDescriptorsCreate@ which the
-- 'MetricDescriptorsCreate'' request conforms to.
type MetricDescriptorsCreateResource =
     Capture "project" Text :>
       "metricDescriptors" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] MetricDescriptor

-- | Create a new metric.
--
-- /See:/ 'metricDescriptorsCreate'' smart constructor.
data MetricDescriptorsCreate' = MetricDescriptorsCreate'
    { _mdcQuotaUser   :: !(Maybe Text)
    , _mdcPrettyPrint :: !Bool
    , _mdcProject     :: !Text
    , _mdcUserIp      :: !(Maybe Text)
    , _mdcKey         :: !(Maybe Text)
    , _mdcOauthToken  :: !(Maybe Text)
    , _mdcFields      :: !(Maybe Text)
    , _mdcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdcQuotaUser'
--
-- * 'mdcPrettyPrint'
--
-- * 'mdcProject'
--
-- * 'mdcUserIp'
--
-- * 'mdcKey'
--
-- * 'mdcOauthToken'
--
-- * 'mdcFields'
--
-- * 'mdcAlt'
metricDescriptorsCreate'
    :: Text -- ^ 'project'
    -> MetricDescriptorsCreate'
metricDescriptorsCreate' pMdcProject_ =
    MetricDescriptorsCreate'
    { _mdcQuotaUser = Nothing
    , _mdcPrettyPrint = True
    , _mdcProject = pMdcProject_
    , _mdcUserIp = Nothing
    , _mdcKey = Nothing
    , _mdcOauthToken = Nothing
    , _mdcFields = Nothing
    , _mdcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdcQuotaUser :: Lens' MetricDescriptorsCreate' (Maybe Text)
mdcQuotaUser
  = lens _mdcQuotaUser (\ s a -> s{_mdcQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdcPrettyPrint :: Lens' MetricDescriptorsCreate' Bool
mdcPrettyPrint
  = lens _mdcPrettyPrint
      (\ s a -> s{_mdcPrettyPrint = a})

-- | The project id. The value can be the numeric project ID or string-based
-- project name.
mdcProject :: Lens' MetricDescriptorsCreate' Text
mdcProject
  = lens _mdcProject (\ s a -> s{_mdcProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdcUserIp :: Lens' MetricDescriptorsCreate' (Maybe Text)
mdcUserIp
  = lens _mdcUserIp (\ s a -> s{_mdcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdcKey :: Lens' MetricDescriptorsCreate' (Maybe Text)
mdcKey = lens _mdcKey (\ s a -> s{_mdcKey = a})

-- | OAuth 2.0 token for the current user.
mdcOauthToken :: Lens' MetricDescriptorsCreate' (Maybe Text)
mdcOauthToken
  = lens _mdcOauthToken
      (\ s a -> s{_mdcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdcFields :: Lens' MetricDescriptorsCreate' (Maybe Text)
mdcFields
  = lens _mdcFields (\ s a -> s{_mdcFields = a})

-- | Data format for the response.
mdcAlt :: Lens' MetricDescriptorsCreate' Alt
mdcAlt = lens _mdcAlt (\ s a -> s{_mdcAlt = a})

instance GoogleRequest MetricDescriptorsCreate' where
        type Rs MetricDescriptorsCreate' = MetricDescriptor
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u MetricDescriptorsCreate'{..}
          = go _mdcQuotaUser (Just _mdcPrettyPrint) _mdcProject
              _mdcUserIp
              _mdcKey
              _mdcOauthToken
              _mdcFields
              (Just _mdcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetricDescriptorsCreateResource)
                      r
                      u
