{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.CustomDataSources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List custom data sources to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDataSourcesList@.
module Network.Google.Resource.Analytics.Management.CustomDataSources.List
    (
    -- * REST Resource
      ManagementCustomDataSourcesListResource

    -- * Creating a Request
    , managementCustomDataSourcesList'
    , ManagementCustomDataSourcesList'

    -- * Request Lenses
    , mcdslQuotaUser
    , mcdslPrettyPrint
    , mcdslWebPropertyId
    , mcdslUserIP
    , mcdslAccountId
    , mcdslKey
    , mcdslOAuthToken
    , mcdslStartIndex
    , mcdslMaxResults
    , mcdslFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDataSourcesList@ which the
-- 'ManagementCustomDataSourcesList'' request conforms to.
type ManagementCustomDataSourcesListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CustomDataSources

-- | List custom data sources to which the user has access.
--
-- /See:/ 'managementCustomDataSourcesList'' smart constructor.
data ManagementCustomDataSourcesList' = ManagementCustomDataSourcesList'
    { _mcdslQuotaUser     :: !(Maybe Text)
    , _mcdslPrettyPrint   :: !Bool
    , _mcdslWebPropertyId :: !Text
    , _mcdslUserIP        :: !(Maybe Text)
    , _mcdslAccountId     :: !Text
    , _mcdslKey           :: !(Maybe Key)
    , _mcdslOAuthToken    :: !(Maybe OAuthToken)
    , _mcdslStartIndex    :: !(Maybe Int32)
    , _mcdslMaxResults    :: !(Maybe Int32)
    , _mcdslFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDataSourcesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdslQuotaUser'
--
-- * 'mcdslPrettyPrint'
--
-- * 'mcdslWebPropertyId'
--
-- * 'mcdslUserIP'
--
-- * 'mcdslAccountId'
--
-- * 'mcdslKey'
--
-- * 'mcdslOAuthToken'
--
-- * 'mcdslStartIndex'
--
-- * 'mcdslMaxResults'
--
-- * 'mcdslFields'
managementCustomDataSourcesList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomDataSourcesList'
managementCustomDataSourcesList' pMcdslWebPropertyId_ pMcdslAccountId_ =
    ManagementCustomDataSourcesList'
    { _mcdslQuotaUser = Nothing
    , _mcdslPrettyPrint = False
    , _mcdslWebPropertyId = pMcdslWebPropertyId_
    , _mcdslUserIP = Nothing
    , _mcdslAccountId = pMcdslAccountId_
    , _mcdslKey = Nothing
    , _mcdslOAuthToken = Nothing
    , _mcdslStartIndex = Nothing
    , _mcdslMaxResults = Nothing
    , _mcdslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcdslQuotaUser :: Lens' ManagementCustomDataSourcesList' (Maybe Text)
mcdslQuotaUser
  = lens _mcdslQuotaUser
      (\ s a -> s{_mcdslQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcdslPrettyPrint :: Lens' ManagementCustomDataSourcesList' Bool
mcdslPrettyPrint
  = lens _mcdslPrettyPrint
      (\ s a -> s{_mcdslPrettyPrint = a})

-- | Web property Id for the custom data sources to retrieve.
mcdslWebPropertyId :: Lens' ManagementCustomDataSourcesList' Text
mcdslWebPropertyId
  = lens _mcdslWebPropertyId
      (\ s a -> s{_mcdslWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcdslUserIP :: Lens' ManagementCustomDataSourcesList' (Maybe Text)
mcdslUserIP
  = lens _mcdslUserIP (\ s a -> s{_mcdslUserIP = a})

-- | Account Id for the custom data sources to retrieve.
mcdslAccountId :: Lens' ManagementCustomDataSourcesList' Text
mcdslAccountId
  = lens _mcdslAccountId
      (\ s a -> s{_mcdslAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcdslKey :: Lens' ManagementCustomDataSourcesList' (Maybe Key)
mcdslKey = lens _mcdslKey (\ s a -> s{_mcdslKey = a})

-- | OAuth 2.0 token for the current user.
mcdslOAuthToken :: Lens' ManagementCustomDataSourcesList' (Maybe OAuthToken)
mcdslOAuthToken
  = lens _mcdslOAuthToken
      (\ s a -> s{_mcdslOAuthToken = a})

-- | A 1-based index of the first custom data source to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mcdslStartIndex :: Lens' ManagementCustomDataSourcesList' (Maybe Int32)
mcdslStartIndex
  = lens _mcdslStartIndex
      (\ s a -> s{_mcdslStartIndex = a})

-- | The maximum number of custom data sources to include in this response.
mcdslMaxResults :: Lens' ManagementCustomDataSourcesList' (Maybe Int32)
mcdslMaxResults
  = lens _mcdslMaxResults
      (\ s a -> s{_mcdslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mcdslFields :: Lens' ManagementCustomDataSourcesList' (Maybe Text)
mcdslFields
  = lens _mcdslFields (\ s a -> s{_mcdslFields = a})

instance GoogleAuth ManagementCustomDataSourcesList'
         where
        authKey = mcdslKey . _Just
        authToken = mcdslOAuthToken . _Just

instance GoogleRequest
         ManagementCustomDataSourcesList' where
        type Rs ManagementCustomDataSourcesList' =
             CustomDataSources
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDataSourcesList'{..}
          = go _mcdslAccountId _mcdslWebPropertyId
              _mcdslStartIndex
              _mcdslMaxResults
              _mcdslQuotaUser
              (Just _mcdslPrettyPrint)
              _mcdslUserIP
              _mcdslFields
              _mcdslKey
              _mcdslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementCustomDataSourcesListResource)
                      r
                      u
