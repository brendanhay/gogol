{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.CustomDataSources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List custom data sources to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDataSources.list@.
module Network.Google.API.Analytics.Management.CustomDataSources.List
    (
    -- * REST Resource
      ManagementCustomDataSourcesListAPI

    -- * Creating a Request
    , managementCustomDataSourcesList'
    , ManagementCustomDataSourcesList'

    -- * Request Lenses
    , mcdslQuotaUser
    , mcdslPrettyPrint
    , mcdslWebPropertyId
    , mcdslUserIp
    , mcdslAccountId
    , mcdslKey
    , mcdslOauthToken
    , mcdslStartIndex
    , mcdslMaxResults
    , mcdslFields
    , mcdslAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.customDataSources.list which the
-- 'ManagementCustomDataSourcesList'' request conforms to.
type ManagementCustomDataSourcesListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "start-index" Nat :>
                             QueryParam "max-results" Nat :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Get '[JSON] CustomDataSources

-- | List custom data sources to which the user has access.
--
-- /See:/ 'managementCustomDataSourcesList'' smart constructor.
data ManagementCustomDataSourcesList' = ManagementCustomDataSourcesList'
    { _mcdslQuotaUser     :: !(Maybe Text)
    , _mcdslPrettyPrint   :: !Bool
    , _mcdslWebPropertyId :: !Text
    , _mcdslUserIp        :: !(Maybe Text)
    , _mcdslAccountId     :: !Text
    , _mcdslKey           :: !(Maybe Text)
    , _mcdslOauthToken    :: !(Maybe Text)
    , _mcdslStartIndex    :: !(Maybe Nat)
    , _mcdslMaxResults    :: !(Maybe Nat)
    , _mcdslFields        :: !(Maybe Text)
    , _mcdslAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mcdslUserIp'
--
-- * 'mcdslAccountId'
--
-- * 'mcdslKey'
--
-- * 'mcdslOauthToken'
--
-- * 'mcdslStartIndex'
--
-- * 'mcdslMaxResults'
--
-- * 'mcdslFields'
--
-- * 'mcdslAlt'
managementCustomDataSourcesList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomDataSourcesList'
managementCustomDataSourcesList' pMcdslWebPropertyId_ pMcdslAccountId_ =
    ManagementCustomDataSourcesList'
    { _mcdslQuotaUser = Nothing
    , _mcdslPrettyPrint = False
    , _mcdslWebPropertyId = pMcdslWebPropertyId_
    , _mcdslUserIp = Nothing
    , _mcdslAccountId = pMcdslAccountId_
    , _mcdslKey = Nothing
    , _mcdslOauthToken = Nothing
    , _mcdslStartIndex = Nothing
    , _mcdslMaxResults = Nothing
    , _mcdslFields = Nothing
    , _mcdslAlt = JSON
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
mcdslUserIp :: Lens' ManagementCustomDataSourcesList' (Maybe Text)
mcdslUserIp
  = lens _mcdslUserIp (\ s a -> s{_mcdslUserIp = a})

-- | Account Id for the custom data sources to retrieve.
mcdslAccountId :: Lens' ManagementCustomDataSourcesList' Text
mcdslAccountId
  = lens _mcdslAccountId
      (\ s a -> s{_mcdslAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcdslKey :: Lens' ManagementCustomDataSourcesList' (Maybe Text)
mcdslKey = lens _mcdslKey (\ s a -> s{_mcdslKey = a})

-- | OAuth 2.0 token for the current user.
mcdslOauthToken :: Lens' ManagementCustomDataSourcesList' (Maybe Text)
mcdslOauthToken
  = lens _mcdslOauthToken
      (\ s a -> s{_mcdslOauthToken = a})

-- | A 1-based index of the first custom data source to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mcdslStartIndex :: Lens' ManagementCustomDataSourcesList' (Maybe Natural)
mcdslStartIndex
  = lens _mcdslStartIndex
      (\ s a -> s{_mcdslStartIndex = a})
      . mapping _Nat

-- | The maximum number of custom data sources to include in this response.
mcdslMaxResults :: Lens' ManagementCustomDataSourcesList' (Maybe Natural)
mcdslMaxResults
  = lens _mcdslMaxResults
      (\ s a -> s{_mcdslMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
mcdslFields :: Lens' ManagementCustomDataSourcesList' (Maybe Text)
mcdslFields
  = lens _mcdslFields (\ s a -> s{_mcdslFields = a})

-- | Data format for the response.
mcdslAlt :: Lens' ManagementCustomDataSourcesList' Alt
mcdslAlt = lens _mcdslAlt (\ s a -> s{_mcdslAlt = a})

instance GoogleRequest
         ManagementCustomDataSourcesList' where
        type Rs ManagementCustomDataSourcesList' =
             CustomDataSources
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementCustomDataSourcesList'{..}
          = go _mcdslQuotaUser (Just _mcdslPrettyPrint)
              _mcdslWebPropertyId
              _mcdslUserIp
              _mcdslAccountId
              _mcdslKey
              _mcdslOauthToken
              _mcdslStartIndex
              _mcdslMaxResults
              _mcdslFields
              (Just _mcdslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementCustomDataSourcesListAPI)
                      r
                      u
