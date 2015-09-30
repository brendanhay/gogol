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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing custom metric. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomMetricsPatch@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Patch
    (
    -- * REST Resource
      ManagementCustomMetricsPatchResource

    -- * Creating a Request
    , managementCustomMetricsPatch'
    , ManagementCustomMetricsPatch'

    -- * Request Lenses
    , mcmpQuotaUser
    , mcmpPrettyPrint
    , mcmpCustomMetricId
    , mcmpWebPropertyId
    , mcmpIgnoreCustomDataSourceLinks
    , mcmpUserIp
    , mcmpAccountId
    , mcmpKey
    , mcmpOauthToken
    , mcmpFields
    , mcmpAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomMetricsPatch@ which the
-- 'ManagementCustomMetricsPatch'' request conforms to.
type ManagementCustomMetricsPatchResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 Capture "customMetricId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "ignoreCustomDataSourceLinks" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Patch '[JSON] CustomMetric

-- | Updates an existing custom metric. This method supports patch semantics.
--
-- /See:/ 'managementCustomMetricsPatch'' smart constructor.
data ManagementCustomMetricsPatch' = ManagementCustomMetricsPatch'
    { _mcmpQuotaUser                   :: !(Maybe Text)
    , _mcmpPrettyPrint                 :: !Bool
    , _mcmpCustomMetricId              :: !Text
    , _mcmpWebPropertyId               :: !Text
    , _mcmpIgnoreCustomDataSourceLinks :: !Bool
    , _mcmpUserIp                      :: !(Maybe Text)
    , _mcmpAccountId                   :: !Text
    , _mcmpKey                         :: !(Maybe Text)
    , _mcmpOauthToken                  :: !(Maybe Text)
    , _mcmpFields                      :: !(Maybe Text)
    , _mcmpAlt                         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmpQuotaUser'
--
-- * 'mcmpPrettyPrint'
--
-- * 'mcmpCustomMetricId'
--
-- * 'mcmpWebPropertyId'
--
-- * 'mcmpIgnoreCustomDataSourceLinks'
--
-- * 'mcmpUserIp'
--
-- * 'mcmpAccountId'
--
-- * 'mcmpKey'
--
-- * 'mcmpOauthToken'
--
-- * 'mcmpFields'
--
-- * 'mcmpAlt'
managementCustomMetricsPatch'
    :: Text -- ^ 'customMetricId'
    -> Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomMetricsPatch'
managementCustomMetricsPatch' pMcmpCustomMetricId_ pMcmpWebPropertyId_ pMcmpAccountId_ =
    ManagementCustomMetricsPatch'
    { _mcmpQuotaUser = Nothing
    , _mcmpPrettyPrint = False
    , _mcmpCustomMetricId = pMcmpCustomMetricId_
    , _mcmpWebPropertyId = pMcmpWebPropertyId_
    , _mcmpIgnoreCustomDataSourceLinks = False
    , _mcmpUserIp = Nothing
    , _mcmpAccountId = pMcmpAccountId_
    , _mcmpKey = Nothing
    , _mcmpOauthToken = Nothing
    , _mcmpFields = Nothing
    , _mcmpAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcmpQuotaUser :: Lens' ManagementCustomMetricsPatch' (Maybe Text)
mcmpQuotaUser
  = lens _mcmpQuotaUser
      (\ s a -> s{_mcmpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcmpPrettyPrint :: Lens' ManagementCustomMetricsPatch' Bool
mcmpPrettyPrint
  = lens _mcmpPrettyPrint
      (\ s a -> s{_mcmpPrettyPrint = a})

-- | Custom metric ID for the custom metric to update.
mcmpCustomMetricId :: Lens' ManagementCustomMetricsPatch' Text
mcmpCustomMetricId
  = lens _mcmpCustomMetricId
      (\ s a -> s{_mcmpCustomMetricId = a})

-- | Web property ID for the custom metric to update.
mcmpWebPropertyId :: Lens' ManagementCustomMetricsPatch' Text
mcmpWebPropertyId
  = lens _mcmpWebPropertyId
      (\ s a -> s{_mcmpWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom metric
-- being linked to a custom data source \/ data set.
mcmpIgnoreCustomDataSourceLinks :: Lens' ManagementCustomMetricsPatch' Bool
mcmpIgnoreCustomDataSourceLinks
  = lens _mcmpIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcmpIgnoreCustomDataSourceLinks = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcmpUserIp :: Lens' ManagementCustomMetricsPatch' (Maybe Text)
mcmpUserIp
  = lens _mcmpUserIp (\ s a -> s{_mcmpUserIp = a})

-- | Account ID for the custom metric to update.
mcmpAccountId :: Lens' ManagementCustomMetricsPatch' Text
mcmpAccountId
  = lens _mcmpAccountId
      (\ s a -> s{_mcmpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmpKey :: Lens' ManagementCustomMetricsPatch' (Maybe Text)
mcmpKey = lens _mcmpKey (\ s a -> s{_mcmpKey = a})

-- | OAuth 2.0 token for the current user.
mcmpOauthToken :: Lens' ManagementCustomMetricsPatch' (Maybe Text)
mcmpOauthToken
  = lens _mcmpOauthToken
      (\ s a -> s{_mcmpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcmpFields :: Lens' ManagementCustomMetricsPatch' (Maybe Text)
mcmpFields
  = lens _mcmpFields (\ s a -> s{_mcmpFields = a})

-- | Data format for the response.
mcmpAlt :: Lens' ManagementCustomMetricsPatch' Alt
mcmpAlt = lens _mcmpAlt (\ s a -> s{_mcmpAlt = a})

instance GoogleRequest ManagementCustomMetricsPatch'
         where
        type Rs ManagementCustomMetricsPatch' = CustomMetric
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomMetricsPatch'{..}
          = go _mcmpQuotaUser (Just _mcmpPrettyPrint)
              _mcmpCustomMetricId
              _mcmpWebPropertyId
              (Just _mcmpIgnoreCustomDataSourceLinks)
              _mcmpUserIp
              _mcmpAccountId
              _mcmpKey
              _mcmpOauthToken
              _mcmpFields
              (Just _mcmpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementCustomMetricsPatchResource)
                      r
                      u
