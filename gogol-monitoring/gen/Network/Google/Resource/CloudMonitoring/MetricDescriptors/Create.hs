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
-- Module      : Network.Google.Resource.CloudMonitoring.MetricDescriptors.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new metric.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudMonitoringMetricDescriptorsCreate@.
module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Create
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
    , mdcUserIP
    , mdcPayload
    , mdcKey
    , mdcOAuthToken
    , mdcFields
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudMonitoringMetricDescriptorsCreate@ which the
-- 'MetricDescriptorsCreate'' request conforms to.
type MetricDescriptorsCreateResource =
     Capture "project" Text :>
       "metricDescriptors" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] MetricDescriptor :>
                         Post '[JSON] MetricDescriptor

-- | Create a new metric.
--
-- /See:/ 'metricDescriptorsCreate'' smart constructor.
data MetricDescriptorsCreate' = MetricDescriptorsCreate'
    { _mdcQuotaUser   :: !(Maybe Text)
    , _mdcPrettyPrint :: !Bool
    , _mdcProject     :: !Text
    , _mdcUserIP      :: !(Maybe Text)
    , _mdcPayload     :: !MetricDescriptor
    , _mdcKey         :: !(Maybe AuthKey)
    , _mdcOAuthToken  :: !(Maybe OAuthToken)
    , _mdcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mdcUserIP'
--
-- * 'mdcPayload'
--
-- * 'mdcKey'
--
-- * 'mdcOAuthToken'
--
-- * 'mdcFields'
metricDescriptorsCreate'
    :: Text -- ^ 'project'
    -> MetricDescriptor -- ^ 'payload'
    -> MetricDescriptorsCreate'
metricDescriptorsCreate' pMdcProject_ pMdcPayload_ =
    MetricDescriptorsCreate'
    { _mdcQuotaUser = Nothing
    , _mdcPrettyPrint = True
    , _mdcProject = pMdcProject_
    , _mdcUserIP = Nothing
    , _mdcPayload = pMdcPayload_
    , _mdcKey = Nothing
    , _mdcOAuthToken = Nothing
    , _mdcFields = Nothing
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
mdcUserIP :: Lens' MetricDescriptorsCreate' (Maybe Text)
mdcUserIP
  = lens _mdcUserIP (\ s a -> s{_mdcUserIP = a})

-- | Multipart request metadata.
mdcPayload :: Lens' MetricDescriptorsCreate' MetricDescriptor
mdcPayload
  = lens _mdcPayload (\ s a -> s{_mdcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdcKey :: Lens' MetricDescriptorsCreate' (Maybe AuthKey)
mdcKey = lens _mdcKey (\ s a -> s{_mdcKey = a})

-- | OAuth 2.0 token for the current user.
mdcOAuthToken :: Lens' MetricDescriptorsCreate' (Maybe OAuthToken)
mdcOAuthToken
  = lens _mdcOAuthToken
      (\ s a -> s{_mdcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdcFields :: Lens' MetricDescriptorsCreate' (Maybe Text)
mdcFields
  = lens _mdcFields (\ s a -> s{_mdcFields = a})

instance GoogleAuth MetricDescriptorsCreate' where
        authKey = mdcKey . _Just
        authToken = mdcOAuthToken . _Just

instance GoogleRequest MetricDescriptorsCreate' where
        type Rs MetricDescriptorsCreate' = MetricDescriptor
        request = requestWithRoute defReq monitoringURL
        requestWithRoute r u MetricDescriptorsCreate'{..}
          = go _mdcProject _mdcQuotaUser (Just _mdcPrettyPrint)
              _mdcUserIP
              _mdcFields
              _mdcKey
              _mdcOAuthToken
              (Just AltJSON)
              _mdcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetricDescriptorsCreateResource)
                      r
                      u
