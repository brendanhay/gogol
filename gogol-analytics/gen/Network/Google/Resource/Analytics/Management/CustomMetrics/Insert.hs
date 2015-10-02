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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new custom metric.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomMetricsInsert@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Insert
    (
    -- * REST Resource
      ManagementCustomMetricsInsertResource

    -- * Creating a Request
    , managementCustomMetricsInsert'
    , ManagementCustomMetricsInsert'

    -- * Request Lenses
    , mcmiQuotaUser
    , mcmiPrettyPrint
    , mcmiWebPropertyId
    , mcmiUserIP
    , mcmiAccountId
    , mcmiKey
    , mcmiCustomMetric
    , mcmiOAuthToken
    , mcmiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomMetricsInsert@ which the
-- 'ManagementCustomMetricsInsert'' request conforms to.
type ManagementCustomMetricsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CustomMetric :>
                                 Post '[JSON] CustomMetric

-- | Create a new custom metric.
--
-- /See:/ 'managementCustomMetricsInsert'' smart constructor.
data ManagementCustomMetricsInsert' = ManagementCustomMetricsInsert'
    { _mcmiQuotaUser     :: !(Maybe Text)
    , _mcmiPrettyPrint   :: !Bool
    , _mcmiWebPropertyId :: !Text
    , _mcmiUserIP        :: !(Maybe Text)
    , _mcmiAccountId     :: !Text
    , _mcmiKey           :: !(Maybe Key)
    , _mcmiCustomMetric  :: !CustomMetric
    , _mcmiOAuthToken    :: !(Maybe OAuthToken)
    , _mcmiFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmiQuotaUser'
--
-- * 'mcmiPrettyPrint'
--
-- * 'mcmiWebPropertyId'
--
-- * 'mcmiUserIP'
--
-- * 'mcmiAccountId'
--
-- * 'mcmiKey'
--
-- * 'mcmiCustomMetric'
--
-- * 'mcmiOAuthToken'
--
-- * 'mcmiFields'
managementCustomMetricsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> CustomMetric -- ^ 'CustomMetric'
    -> ManagementCustomMetricsInsert'
managementCustomMetricsInsert' pMcmiWebPropertyId_ pMcmiAccountId_ pMcmiCustomMetric_ =
    ManagementCustomMetricsInsert'
    { _mcmiQuotaUser = Nothing
    , _mcmiPrettyPrint = False
    , _mcmiWebPropertyId = pMcmiWebPropertyId_
    , _mcmiUserIP = Nothing
    , _mcmiAccountId = pMcmiAccountId_
    , _mcmiKey = Nothing
    , _mcmiCustomMetric = pMcmiCustomMetric_
    , _mcmiOAuthToken = Nothing
    , _mcmiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcmiQuotaUser :: Lens' ManagementCustomMetricsInsert' (Maybe Text)
mcmiQuotaUser
  = lens _mcmiQuotaUser
      (\ s a -> s{_mcmiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcmiPrettyPrint :: Lens' ManagementCustomMetricsInsert' Bool
mcmiPrettyPrint
  = lens _mcmiPrettyPrint
      (\ s a -> s{_mcmiPrettyPrint = a})

-- | Web property ID for the custom dimension to create.
mcmiWebPropertyId :: Lens' ManagementCustomMetricsInsert' Text
mcmiWebPropertyId
  = lens _mcmiWebPropertyId
      (\ s a -> s{_mcmiWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcmiUserIP :: Lens' ManagementCustomMetricsInsert' (Maybe Text)
mcmiUserIP
  = lens _mcmiUserIP (\ s a -> s{_mcmiUserIP = a})

-- | Account ID for the custom metric to create.
mcmiAccountId :: Lens' ManagementCustomMetricsInsert' Text
mcmiAccountId
  = lens _mcmiAccountId
      (\ s a -> s{_mcmiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmiKey :: Lens' ManagementCustomMetricsInsert' (Maybe Key)
mcmiKey = lens _mcmiKey (\ s a -> s{_mcmiKey = a})

-- | Multipart request metadata.
mcmiCustomMetric :: Lens' ManagementCustomMetricsInsert' CustomMetric
mcmiCustomMetric
  = lens _mcmiCustomMetric
      (\ s a -> s{_mcmiCustomMetric = a})

-- | OAuth 2.0 token for the current user.
mcmiOAuthToken :: Lens' ManagementCustomMetricsInsert' (Maybe OAuthToken)
mcmiOAuthToken
  = lens _mcmiOAuthToken
      (\ s a -> s{_mcmiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcmiFields :: Lens' ManagementCustomMetricsInsert' (Maybe Text)
mcmiFields
  = lens _mcmiFields (\ s a -> s{_mcmiFields = a})

instance GoogleAuth ManagementCustomMetricsInsert'
         where
        authKey = mcmiKey . _Just
        authToken = mcmiOAuthToken . _Just

instance GoogleRequest ManagementCustomMetricsInsert'
         where
        type Rs ManagementCustomMetricsInsert' = CustomMetric
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomMetricsInsert'{..}
          = go _mcmiQuotaUser (Just _mcmiPrettyPrint)
              _mcmiWebPropertyId
              _mcmiUserIP
              _mcmiAccountId
              _mcmiKey
              _mcmiOAuthToken
              _mcmiFields
              (Just AltJSON)
              _mcmiCustomMetric
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementCustomMetricsInsertResource)
                      r
                      u
