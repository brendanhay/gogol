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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing custom metric.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomMetricsUpdate@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Update
    (
    -- * REST Resource
      ManagementCustomMetricsUpdateResource

    -- * Creating a Request
    , managementCustomMetricsUpdate'
    , ManagementCustomMetricsUpdate'

    -- * Request Lenses
    , mcmuQuotaUser
    , mcmuPrettyPrint
    , mcmuCustomMetricId
    , mcmuWebPropertyId
    , mcmuIgnoreCustomDataSourceLinks
    , mcmuUserIP
    , mcmuPayload
    , mcmuAccountId
    , mcmuKey
    , mcmuOAuthToken
    , mcmuFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomMetricsUpdate@ which the
-- 'ManagementCustomMetricsUpdate'' request conforms to.
type ManagementCustomMetricsUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 Capture "customMetricId" Text :>
                   QueryParam "ignoreCustomDataSourceLinks" Bool :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] CustomMetric :>
                                     Put '[JSON] CustomMetric

-- | Updates an existing custom metric.
--
-- /See:/ 'managementCustomMetricsUpdate'' smart constructor.
data ManagementCustomMetricsUpdate' = ManagementCustomMetricsUpdate'
    { _mcmuQuotaUser                   :: !(Maybe Text)
    , _mcmuPrettyPrint                 :: !Bool
    , _mcmuCustomMetricId              :: !Text
    , _mcmuWebPropertyId               :: !Text
    , _mcmuIgnoreCustomDataSourceLinks :: !Bool
    , _mcmuUserIP                      :: !(Maybe Text)
    , _mcmuPayload                     :: !CustomMetric
    , _mcmuAccountId                   :: !Text
    , _mcmuKey                         :: !(Maybe AuthKey)
    , _mcmuOAuthToken                  :: !(Maybe OAuthToken)
    , _mcmuFields                      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmuQuotaUser'
--
-- * 'mcmuPrettyPrint'
--
-- * 'mcmuCustomMetricId'
--
-- * 'mcmuWebPropertyId'
--
-- * 'mcmuIgnoreCustomDataSourceLinks'
--
-- * 'mcmuUserIP'
--
-- * 'mcmuPayload'
--
-- * 'mcmuAccountId'
--
-- * 'mcmuKey'
--
-- * 'mcmuOAuthToken'
--
-- * 'mcmuFields'
managementCustomMetricsUpdate'
    :: Text -- ^ 'customMetricId'
    -> Text -- ^ 'webPropertyId'
    -> CustomMetric -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementCustomMetricsUpdate'
managementCustomMetricsUpdate' pMcmuCustomMetricId_ pMcmuWebPropertyId_ pMcmuPayload_ pMcmuAccountId_ =
    ManagementCustomMetricsUpdate'
    { _mcmuQuotaUser = Nothing
    , _mcmuPrettyPrint = False
    , _mcmuCustomMetricId = pMcmuCustomMetricId_
    , _mcmuWebPropertyId = pMcmuWebPropertyId_
    , _mcmuIgnoreCustomDataSourceLinks = False
    , _mcmuUserIP = Nothing
    , _mcmuPayload = pMcmuPayload_
    , _mcmuAccountId = pMcmuAccountId_
    , _mcmuKey = Nothing
    , _mcmuOAuthToken = Nothing
    , _mcmuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcmuQuotaUser :: Lens' ManagementCustomMetricsUpdate' (Maybe Text)
mcmuQuotaUser
  = lens _mcmuQuotaUser
      (\ s a -> s{_mcmuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcmuPrettyPrint :: Lens' ManagementCustomMetricsUpdate' Bool
mcmuPrettyPrint
  = lens _mcmuPrettyPrint
      (\ s a -> s{_mcmuPrettyPrint = a})

-- | Custom metric ID for the custom metric to update.
mcmuCustomMetricId :: Lens' ManagementCustomMetricsUpdate' Text
mcmuCustomMetricId
  = lens _mcmuCustomMetricId
      (\ s a -> s{_mcmuCustomMetricId = a})

-- | Web property ID for the custom metric to update.
mcmuWebPropertyId :: Lens' ManagementCustomMetricsUpdate' Text
mcmuWebPropertyId
  = lens _mcmuWebPropertyId
      (\ s a -> s{_mcmuWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom metric
-- being linked to a custom data source \/ data set.
mcmuIgnoreCustomDataSourceLinks :: Lens' ManagementCustomMetricsUpdate' Bool
mcmuIgnoreCustomDataSourceLinks
  = lens _mcmuIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcmuIgnoreCustomDataSourceLinks = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcmuUserIP :: Lens' ManagementCustomMetricsUpdate' (Maybe Text)
mcmuUserIP
  = lens _mcmuUserIP (\ s a -> s{_mcmuUserIP = a})

-- | Multipart request metadata.
mcmuPayload :: Lens' ManagementCustomMetricsUpdate' CustomMetric
mcmuPayload
  = lens _mcmuPayload (\ s a -> s{_mcmuPayload = a})

-- | Account ID for the custom metric to update.
mcmuAccountId :: Lens' ManagementCustomMetricsUpdate' Text
mcmuAccountId
  = lens _mcmuAccountId
      (\ s a -> s{_mcmuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmuKey :: Lens' ManagementCustomMetricsUpdate' (Maybe AuthKey)
mcmuKey = lens _mcmuKey (\ s a -> s{_mcmuKey = a})

-- | OAuth 2.0 token for the current user.
mcmuOAuthToken :: Lens' ManagementCustomMetricsUpdate' (Maybe OAuthToken)
mcmuOAuthToken
  = lens _mcmuOAuthToken
      (\ s a -> s{_mcmuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcmuFields :: Lens' ManagementCustomMetricsUpdate' (Maybe Text)
mcmuFields
  = lens _mcmuFields (\ s a -> s{_mcmuFields = a})

instance GoogleAuth ManagementCustomMetricsUpdate'
         where
        authKey = mcmuKey . _Just
        authToken = mcmuOAuthToken . _Just

instance GoogleRequest ManagementCustomMetricsUpdate'
         where
        type Rs ManagementCustomMetricsUpdate' = CustomMetric
        request = requestWith analyticsRequest
        requestWith rq ManagementCustomMetricsUpdate'{..}
          = go _mcmuAccountId _mcmuWebPropertyId
              _mcmuCustomMetricId
              (Just _mcmuIgnoreCustomDataSourceLinks)
              _mcmuQuotaUser
              (Just _mcmuPrettyPrint)
              _mcmuUserIP
              _mcmuFields
              _mcmuKey
              _mcmuOAuthToken
              (Just AltJSON)
              _mcmuPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementCustomMetricsUpdateResource)
                      rq
