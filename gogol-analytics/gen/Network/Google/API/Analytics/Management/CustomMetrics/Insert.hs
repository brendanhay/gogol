{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.CustomMetrics.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new custom metric.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.insert@.
module Network.Google.API.Analytics.Management.CustomMetrics.Insert
    (
    -- * REST Resource
      ManagementCustomMetricsInsertAPI

    -- * Creating a Request
    , managementCustomMetricsInsert'
    , ManagementCustomMetricsInsert'

    -- * Request Lenses
    , mcmiQuotaUser
    , mcmiPrettyPrint
    , mcmiWebPropertyId
    , mcmiUserIp
    , mcmiAccountId
    , mcmiKey
    , mcmiOauthToken
    , mcmiFields
    , mcmiAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.customMetrics.insert which the
-- 'ManagementCustomMetricsInsert'' request conforms to.
type ManagementCustomMetricsInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] CustomMetric

-- | Create a new custom metric.
--
-- /See:/ 'managementCustomMetricsInsert'' smart constructor.
data ManagementCustomMetricsInsert' = ManagementCustomMetricsInsert'
    { _mcmiQuotaUser     :: !(Maybe Text)
    , _mcmiPrettyPrint   :: !Bool
    , _mcmiWebPropertyId :: !Text
    , _mcmiUserIp        :: !(Maybe Text)
    , _mcmiAccountId     :: !Text
    , _mcmiKey           :: !(Maybe Text)
    , _mcmiOauthToken    :: !(Maybe Text)
    , _mcmiFields        :: !(Maybe Text)
    , _mcmiAlt           :: !Alt
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
-- * 'mcmiUserIp'
--
-- * 'mcmiAccountId'
--
-- * 'mcmiKey'
--
-- * 'mcmiOauthToken'
--
-- * 'mcmiFields'
--
-- * 'mcmiAlt'
managementCustomMetricsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomMetricsInsert'
managementCustomMetricsInsert' pMcmiWebPropertyId_ pMcmiAccountId_ =
    ManagementCustomMetricsInsert'
    { _mcmiQuotaUser = Nothing
    , _mcmiPrettyPrint = False
    , _mcmiWebPropertyId = pMcmiWebPropertyId_
    , _mcmiUserIp = Nothing
    , _mcmiAccountId = pMcmiAccountId_
    , _mcmiKey = Nothing
    , _mcmiOauthToken = Nothing
    , _mcmiFields = Nothing
    , _mcmiAlt = JSON
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
mcmiUserIp :: Lens' ManagementCustomMetricsInsert' (Maybe Text)
mcmiUserIp
  = lens _mcmiUserIp (\ s a -> s{_mcmiUserIp = a})

-- | Account ID for the custom metric to create.
mcmiAccountId :: Lens' ManagementCustomMetricsInsert' Text
mcmiAccountId
  = lens _mcmiAccountId
      (\ s a -> s{_mcmiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmiKey :: Lens' ManagementCustomMetricsInsert' (Maybe Text)
mcmiKey = lens _mcmiKey (\ s a -> s{_mcmiKey = a})

-- | OAuth 2.0 token for the current user.
mcmiOauthToken :: Lens' ManagementCustomMetricsInsert' (Maybe Text)
mcmiOauthToken
  = lens _mcmiOauthToken
      (\ s a -> s{_mcmiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcmiFields :: Lens' ManagementCustomMetricsInsert' (Maybe Text)
mcmiFields
  = lens _mcmiFields (\ s a -> s{_mcmiFields = a})

-- | Data format for the response.
mcmiAlt :: Lens' ManagementCustomMetricsInsert' Alt
mcmiAlt = lens _mcmiAlt (\ s a -> s{_mcmiAlt = a})

instance GoogleRequest ManagementCustomMetricsInsert'
         where
        type Rs ManagementCustomMetricsInsert' = CustomMetric
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomMetricsInsert'{..}
          = go _mcmiQuotaUser (Just _mcmiPrettyPrint)
              _mcmiWebPropertyId
              _mcmiUserIp
              _mcmiAccountId
              _mcmiKey
              _mcmiOauthToken
              _mcmiFields
              (Just _mcmiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementCustomMetricsInsertAPI)
                      r
                      u
