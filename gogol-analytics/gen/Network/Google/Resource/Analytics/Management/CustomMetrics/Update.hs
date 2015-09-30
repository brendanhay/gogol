{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Analytics.Management.CustomMetrics.Update
    (
    -- * REST Resource
      ManagementCustomMetricsUpdateAPI

    -- * Creating a Request
    , managementCustomMetricsUpdate
    , ManagementCustomMetricsUpdate

    -- * Request Lenses
    , mcmuQuotaUser
    , mcmuPrettyPrint
    , mcmuCustomMetricId
    , mcmuWebPropertyId
    , mcmuIgnoreCustomDataSourceLinks
    , mcmuUserIp
    , mcmuAccountId
    , mcmuKey
    , mcmuOauthToken
    , mcmuFields
    , mcmuAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomMetricsUpdate@ which the
-- 'ManagementCustomMetricsUpdate' request conforms to.
type ManagementCustomMetricsUpdateAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 Capture "customMetricId" Text :>
                   QueryParam "ignoreCustomDataSourceLinks" Bool :>
                     Put '[JSON] CustomMetric

-- | Updates an existing custom metric.
--
-- /See:/ 'managementCustomMetricsUpdate' smart constructor.
data ManagementCustomMetricsUpdate = ManagementCustomMetricsUpdate
    { _mcmuQuotaUser                   :: !(Maybe Text)
    , _mcmuPrettyPrint                 :: !Bool
    , _mcmuCustomMetricId              :: !Text
    , _mcmuWebPropertyId               :: !Text
    , _mcmuIgnoreCustomDataSourceLinks :: !Bool
    , _mcmuUserIp                      :: !(Maybe Text)
    , _mcmuAccountId                   :: !Text
    , _mcmuKey                         :: !(Maybe Text)
    , _mcmuOauthToken                  :: !(Maybe Text)
    , _mcmuFields                      :: !(Maybe Text)
    , _mcmuAlt                         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mcmuUserIp'
--
-- * 'mcmuAccountId'
--
-- * 'mcmuKey'
--
-- * 'mcmuOauthToken'
--
-- * 'mcmuFields'
--
-- * 'mcmuAlt'
managementCustomMetricsUpdate
    :: Text -- ^ 'customMetricId'
    -> Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomMetricsUpdate
managementCustomMetricsUpdate pMcmuCustomMetricId_ pMcmuWebPropertyId_ pMcmuAccountId_ =
    ManagementCustomMetricsUpdate
    { _mcmuQuotaUser = Nothing
    , _mcmuPrettyPrint = False
    , _mcmuCustomMetricId = pMcmuCustomMetricId_
    , _mcmuWebPropertyId = pMcmuWebPropertyId_
    , _mcmuIgnoreCustomDataSourceLinks = False
    , _mcmuUserIp = Nothing
    , _mcmuAccountId = pMcmuAccountId_
    , _mcmuKey = Nothing
    , _mcmuOauthToken = Nothing
    , _mcmuFields = Nothing
    , _mcmuAlt = "json"
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
mcmuUserIp :: Lens' ManagementCustomMetricsUpdate' (Maybe Text)
mcmuUserIp
  = lens _mcmuUserIp (\ s a -> s{_mcmuUserIp = a})

-- | Account ID for the custom metric to update.
mcmuAccountId :: Lens' ManagementCustomMetricsUpdate' Text
mcmuAccountId
  = lens _mcmuAccountId
      (\ s a -> s{_mcmuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmuKey :: Lens' ManagementCustomMetricsUpdate' (Maybe Text)
mcmuKey = lens _mcmuKey (\ s a -> s{_mcmuKey = a})

-- | OAuth 2.0 token for the current user.
mcmuOauthToken :: Lens' ManagementCustomMetricsUpdate' (Maybe Text)
mcmuOauthToken
  = lens _mcmuOauthToken
      (\ s a -> s{_mcmuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcmuFields :: Lens' ManagementCustomMetricsUpdate' (Maybe Text)
mcmuFields
  = lens _mcmuFields (\ s a -> s{_mcmuFields = a})

-- | Data format for the response.
mcmuAlt :: Lens' ManagementCustomMetricsUpdate' Text
mcmuAlt = lens _mcmuAlt (\ s a -> s{_mcmuAlt = a})

instance GoogleRequest ManagementCustomMetricsUpdate'
         where
        type Rs ManagementCustomMetricsUpdate' = CustomMetric
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomMetricsUpdate{..}
          = go _mcmuQuotaUser _mcmuPrettyPrint
              _mcmuCustomMetricId
              _mcmuWebPropertyId
              (Just _mcmuIgnoreCustomDataSourceLinks)
              _mcmuUserIp
              _mcmuAccountId
              _mcmuKey
              _mcmuOauthToken
              _mcmuFields
              _mcmuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementCustomMetricsUpdateAPI)
                      r
                      u
