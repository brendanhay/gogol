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
module Network.Google.Resource.Analytics.Management.CustomMetrics.List
    (
    -- * REST Resource
      ManagementCustomMetricsListResource

    -- * Creating a Request
    , managementCustomMetricsList'
    , ManagementCustomMetricsList'

    -- * Request Lenses
    , mcmlQuotaUser
    , mcmlPrettyPrint
    , mcmlWebPropertyId
    , mcmlUserIP
    , mcmlAccountId
    , mcmlKey
    , mcmlOAuthToken
    , mcmlStartIndex
    , mcmlMaxResults
    , mcmlFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomMetricsList@ method which the
-- 'ManagementCustomMetricsList'' request conforms to.
type ManagementCustomMetricsListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CustomMetrics

-- | Lists custom metrics to which the user has access.
--
-- /See:/ 'managementCustomMetricsList'' smart constructor.
data ManagementCustomMetricsList' = ManagementCustomMetricsList'
    { _mcmlQuotaUser     :: !(Maybe Text)
    , _mcmlPrettyPrint   :: !Bool
    , _mcmlWebPropertyId :: !Text
    , _mcmlUserIP        :: !(Maybe Text)
    , _mcmlAccountId     :: !Text
    , _mcmlKey           :: !(Maybe AuthKey)
    , _mcmlOAuthToken    :: !(Maybe OAuthToken)
    , _mcmlStartIndex    :: !(Maybe Int32)
    , _mcmlMaxResults    :: !(Maybe Int32)
    , _mcmlFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mcmlUserIP'
--
-- * 'mcmlAccountId'
--
-- * 'mcmlKey'
--
-- * 'mcmlOAuthToken'
--
-- * 'mcmlStartIndex'
--
-- * 'mcmlMaxResults'
--
-- * 'mcmlFields'
managementCustomMetricsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomMetricsList'
managementCustomMetricsList' pMcmlWebPropertyId_ pMcmlAccountId_ =
    ManagementCustomMetricsList'
    { _mcmlQuotaUser = Nothing
    , _mcmlPrettyPrint = False
    , _mcmlWebPropertyId = pMcmlWebPropertyId_
    , _mcmlUserIP = Nothing
    , _mcmlAccountId = pMcmlAccountId_
    , _mcmlKey = Nothing
    , _mcmlOAuthToken = Nothing
    , _mcmlStartIndex = Nothing
    , _mcmlMaxResults = Nothing
    , _mcmlFields = Nothing
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
mcmlUserIP :: Lens' ManagementCustomMetricsList' (Maybe Text)
mcmlUserIP
  = lens _mcmlUserIP (\ s a -> s{_mcmlUserIP = a})

-- | Account ID for the custom metrics to retrieve.
mcmlAccountId :: Lens' ManagementCustomMetricsList' Text
mcmlAccountId
  = lens _mcmlAccountId
      (\ s a -> s{_mcmlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcmlKey :: Lens' ManagementCustomMetricsList' (Maybe AuthKey)
mcmlKey = lens _mcmlKey (\ s a -> s{_mcmlKey = a})

-- | OAuth 2.0 token for the current user.
mcmlOAuthToken :: Lens' ManagementCustomMetricsList' (Maybe OAuthToken)
mcmlOAuthToken
  = lens _mcmlOAuthToken
      (\ s a -> s{_mcmlOAuthToken = a})

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

instance GoogleAuth ManagementCustomMetricsList'
         where
        _AuthKey = mcmlKey . _Just
        _AuthToken = mcmlOAuthToken . _Just

instance GoogleRequest ManagementCustomMetricsList'
         where
        type Rs ManagementCustomMetricsList' = CustomMetrics
        request = requestWith analyticsRequest
        requestWith rq ManagementCustomMetricsList'{..}
          = go _mcmlAccountId _mcmlWebPropertyId
              _mcmlStartIndex
              _mcmlMaxResults
              _mcmlQuotaUser
              (Just _mcmlPrettyPrint)
              _mcmlUserIP
              _mcmlFields
              _mcmlKey
              _mcmlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementCustomMetricsListResource)
                      rq
