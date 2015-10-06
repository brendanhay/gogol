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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a custom metric to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomMetricsGet@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Get
    (
    -- * REST Resource
      ManagementCustomMetricsGetResource

    -- * Creating a Request
    , managementCustomMetricsGet'
    , ManagementCustomMetricsGet'

    -- * Request Lenses
    , mcmgQuotaUser
    , mcmgPrettyPrint
    , mcmgCustomMetricId
    , mcmgWebPropertyId
    , mcmgUserIP
    , mcmgAccountId
    , mcmgKey
    , mcmgOAuthToken
    , mcmgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomMetricsGet@ which the
-- 'ManagementCustomMetricsGet'' request conforms to.
type ManagementCustomMetricsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 Capture "customMetricId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CustomMetric

-- | Get a custom metric to which the user has access.
--
-- /See:/ 'managementCustomMetricsGet'' smart constructor.
data ManagementCustomMetricsGet' = ManagementCustomMetricsGet'
    { _mcmgQuotaUser      :: !(Maybe Text)
    , _mcmgPrettyPrint    :: !Bool
    , _mcmgCustomMetricId :: !Text
    , _mcmgWebPropertyId  :: !Text
    , _mcmgUserIP         :: !(Maybe Text)
    , _mcmgAccountId      :: !Text
    , _mcmgKey            :: !(Maybe AuthKey)
    , _mcmgOAuthToken     :: !(Maybe OAuthToken)
    , _mcmgFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmgQuotaUser'
--
-- * 'mcmgPrettyPrint'
--
-- * 'mcmgCustomMetricId'
--
-- * 'mcmgWebPropertyId'
--
-- * 'mcmgUserIP'
--
-- * 'mcmgAccountId'
--
-- * 'mcmgKey'
--
-- * 'mcmgOAuthToken'
--
-- * 'mcmgFields'
managementCustomMetricsGet'
    :: Text -- ^ 'customMetricId'
    -> Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomMetricsGet'
managementCustomMetricsGet' pMcmgCustomMetricId_ pMcmgWebPropertyId_ pMcmgAccountId_ =
    ManagementCustomMetricsGet'
    { _mcmgQuotaUser = Nothing
    , _mcmgPrettyPrint = False
    , _mcmgCustomMetricId = pMcmgCustomMetricId_
    , _mcmgWebPropertyId = pMcmgWebPropertyId_
    , _mcmgUserIP = Nothing
    , _mcmgAccountId = pMcmgAccountId_
    , _mcmgKey = Nothing
    , _mcmgOAuthToken = Nothing
    , _mcmgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcmgQuotaUser :: Lens' ManagementCustomMetricsGet' (Maybe Text)
mcmgQuotaUser
  = lens _mcmgQuotaUser
      (\ s a -> s{_mcmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcmgPrettyPrint :: Lens' ManagementCustomMetricsGet' Bool
mcmgPrettyPrint
  = lens _mcmgPrettyPrint
      (\ s a -> s{_mcmgPrettyPrint = a})

-- | The ID of the custom metric to retrieve.
mcmgCustomMetricId :: Lens' ManagementCustomMetricsGet' Text
mcmgCustomMetricId
  = lens _mcmgCustomMetricId
      (\ s a -> s{_mcmgCustomMetricId = a})

-- | Web property ID for the custom metric to retrieve.
mcmgWebPropertyId :: Lens' ManagementCustomMetricsGet' Text
mcmgWebPropertyId
  = lens _mcmgWebPropertyId
      (\ s a -> s{_mcmgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcmgUserIP :: Lens' ManagementCustomMetricsGet' (Maybe Text)
mcmgUserIP
  = lens _mcmgUserIP (\ s a -> s{_mcmgUserIP = a})

-- | Account ID for the custom metric to retrieve.
mcmgAccountId :: Lens' ManagementCustomMetricsGet' Text
mcmgAccountId
  = lens _mcmgAccountId
      (\ s a -> s{_mcmgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmgKey :: Lens' ManagementCustomMetricsGet' (Maybe AuthKey)
mcmgKey = lens _mcmgKey (\ s a -> s{_mcmgKey = a})

-- | OAuth 2.0 token for the current user.
mcmgOAuthToken :: Lens' ManagementCustomMetricsGet' (Maybe OAuthToken)
mcmgOAuthToken
  = lens _mcmgOAuthToken
      (\ s a -> s{_mcmgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcmgFields :: Lens' ManagementCustomMetricsGet' (Maybe Text)
mcmgFields
  = lens _mcmgFields (\ s a -> s{_mcmgFields = a})

instance GoogleAuth ManagementCustomMetricsGet' where
        authKey = mcmgKey . _Just
        authToken = mcmgOAuthToken . _Just

instance GoogleRequest ManagementCustomMetricsGet'
         where
        type Rs ManagementCustomMetricsGet' = CustomMetric
        request = requestWith analyticsRequest
        requestWith rq ManagementCustomMetricsGet'{..}
          = go _mcmgAccountId _mcmgWebPropertyId
              _mcmgCustomMetricId
              _mcmgQuotaUser
              (Just _mcmgPrettyPrint)
              _mcmgUserIP
              _mcmgFields
              _mcmgKey
              _mcmgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementCustomMetricsGetResource)
                      rq
