{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists custom metrics to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomMetricsList@.
module Analytics.Management.CustomMetrics.List
    (
    -- * REST Resource
      ManagementCustomMetricsListAPI

    -- * Creating a Request
    , managementCustomMetricsList
    , ManagementCustomMetricsList

    -- * Request Lenses
    , mcmlQuotaUser
    , mcmlPrettyPrint
    , mcmlWebPropertyId
    , mcmlUserIp
    , mcmlAccountId
    , mcmlKey
    , mcmlOauthToken
    , mcmlStartIndex
    , mcmlMaxResults
    , mcmlFields
    , mcmlAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomMetricsList@ which the
-- 'ManagementCustomMetricsList' request conforms to.
type ManagementCustomMetricsListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     Get '[JSON] CustomMetrics

-- | Lists custom metrics to which the user has access.
--
-- /See:/ 'managementCustomMetricsList' smart constructor.
data ManagementCustomMetricsList = ManagementCustomMetricsList
    { _mcmlQuotaUser     :: !(Maybe Text)
    , _mcmlPrettyPrint   :: !Bool
    , _mcmlWebPropertyId :: !Text
    , _mcmlUserIp        :: !(Maybe Text)
    , _mcmlAccountId     :: !Text
    , _mcmlKey           :: !(Maybe Text)
    , _mcmlOauthToken    :: !(Maybe Text)
    , _mcmlStartIndex    :: !(Maybe Int32)
    , _mcmlMaxResults    :: !(Maybe Int32)
    , _mcmlFields        :: !(Maybe Text)
    , _mcmlAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmlQuotaUser'
--
-- * 'mcmlPrettyPrint'
--
-- * 'mcmlWebPropertyId'
--
-- * 'mcmlUserIp'
--
-- * 'mcmlAccountId'
--
-- * 'mcmlKey'
--
-- * 'mcmlOauthToken'
--
-- * 'mcmlStartIndex'
--
-- * 'mcmlMaxResults'
--
-- * 'mcmlFields'
--
-- * 'mcmlAlt'
managementCustomMetricsList
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomMetricsList
managementCustomMetricsList pMcmlWebPropertyId_ pMcmlAccountId_ =
    ManagementCustomMetricsList
    { _mcmlQuotaUser = Nothing
    , _mcmlPrettyPrint = False
    , _mcmlWebPropertyId = pMcmlWebPropertyId_
    , _mcmlUserIp = Nothing
    , _mcmlAccountId = pMcmlAccountId_
    , _mcmlKey = Nothing
    , _mcmlOauthToken = Nothing
    , _mcmlStartIndex = Nothing
    , _mcmlMaxResults = Nothing
    , _mcmlFields = Nothing
    , _mcmlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcmlQuotaUser :: Lens' ManagementCustomMetricsList' (Maybe Text)
mcmlQuotaUser
  = lens _mcmlQuotaUser
      (\ s a -> s{_mcmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcmlPrettyPrint :: Lens' ManagementCustomMetricsList' Bool
mcmlPrettyPrint
  = lens _mcmlPrettyPrint
      (\ s a -> s{_mcmlPrettyPrint = a})

-- | Web property ID for the custom metrics to retrieve.
mcmlWebPropertyId :: Lens' ManagementCustomMetricsList' Text
mcmlWebPropertyId
  = lens _mcmlWebPropertyId
      (\ s a -> s{_mcmlWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcmlUserIp :: Lens' ManagementCustomMetricsList' (Maybe Text)
mcmlUserIp
  = lens _mcmlUserIp (\ s a -> s{_mcmlUserIp = a})

-- | Account ID for the custom metrics to retrieve.
mcmlAccountId :: Lens' ManagementCustomMetricsList' Text
mcmlAccountId
  = lens _mcmlAccountId
      (\ s a -> s{_mcmlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmlKey :: Lens' ManagementCustomMetricsList' (Maybe Text)
mcmlKey = lens _mcmlKey (\ s a -> s{_mcmlKey = a})

-- | OAuth 2.0 token for the current user.
mcmlOauthToken :: Lens' ManagementCustomMetricsList' (Maybe Text)
mcmlOauthToken
  = lens _mcmlOauthToken
      (\ s a -> s{_mcmlOauthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mcmlStartIndex :: Lens' ManagementCustomMetricsList' (Maybe Int32)
mcmlStartIndex
  = lens _mcmlStartIndex
      (\ s a -> s{_mcmlStartIndex = a})

-- | The maximum number of custom metrics to include in this response.
mcmlMaxResults :: Lens' ManagementCustomMetricsList' (Maybe Int32)
mcmlMaxResults
  = lens _mcmlMaxResults
      (\ s a -> s{_mcmlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mcmlFields :: Lens' ManagementCustomMetricsList' (Maybe Text)
mcmlFields
  = lens _mcmlFields (\ s a -> s{_mcmlFields = a})

-- | Data format for the response.
mcmlAlt :: Lens' ManagementCustomMetricsList' Text
mcmlAlt = lens _mcmlAlt (\ s a -> s{_mcmlAlt = a})

instance GoogleRequest ManagementCustomMetricsList'
         where
        type Rs ManagementCustomMetricsList' = CustomMetrics
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementCustomMetricsList{..}
          = go _mcmlQuotaUser _mcmlPrettyPrint
              _mcmlWebPropertyId
              _mcmlUserIp
              _mcmlAccountId
              _mcmlKey
              _mcmlOauthToken
              _mcmlStartIndex
              _mcmlMaxResults
              _mcmlFields
              _mcmlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementCustomMetricsListAPI)
                      r
                      u
