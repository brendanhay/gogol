{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Filters.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.insert@.
module Network.Google.API.Analytics.Management.Filters.Insert
    (
    -- * REST Resource
      ManagementFiltersInsertAPI

    -- * Creating a Request
    , managementFiltersInsert'
    , ManagementFiltersInsert'

    -- * Request Lenses
    , mfiQuotaUser
    , mfiPrettyPrint
    , mfiUserIp
    , mfiAccountId
    , mfiKey
    , mfiOauthToken
    , mfiFields
    , mfiAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.filters.insert which the
-- 'ManagementFiltersInsert'' request conforms to.
type ManagementFiltersInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Filter

-- | Create a new filter.
--
-- /See:/ 'managementFiltersInsert'' smart constructor.
data ManagementFiltersInsert' = ManagementFiltersInsert'
    { _mfiQuotaUser   :: !(Maybe Text)
    , _mfiPrettyPrint :: !Bool
    , _mfiUserIp      :: !(Maybe Text)
    , _mfiAccountId   :: !Text
    , _mfiKey         :: !(Maybe Text)
    , _mfiOauthToken  :: !(Maybe Text)
    , _mfiFields      :: !(Maybe Text)
    , _mfiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfiQuotaUser'
--
-- * 'mfiPrettyPrint'
--
-- * 'mfiUserIp'
--
-- * 'mfiAccountId'
--
-- * 'mfiKey'
--
-- * 'mfiOauthToken'
--
-- * 'mfiFields'
--
-- * 'mfiAlt'
managementFiltersInsert'
    :: Text -- ^ 'accountId'
    -> ManagementFiltersInsert'
managementFiltersInsert' pMfiAccountId_ =
    ManagementFiltersInsert'
    { _mfiQuotaUser = Nothing
    , _mfiPrettyPrint = False
    , _mfiUserIp = Nothing
    , _mfiAccountId = pMfiAccountId_
    , _mfiKey = Nothing
    , _mfiOauthToken = Nothing
    , _mfiFields = Nothing
    , _mfiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfiQuotaUser :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiQuotaUser
  = lens _mfiQuotaUser (\ s a -> s{_mfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfiPrettyPrint :: Lens' ManagementFiltersInsert' Bool
mfiPrettyPrint
  = lens _mfiPrettyPrint
      (\ s a -> s{_mfiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfiUserIp :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiUserIp
  = lens _mfiUserIp (\ s a -> s{_mfiUserIp = a})

-- | Account ID to create filter for.
mfiAccountId :: Lens' ManagementFiltersInsert' Text
mfiAccountId
  = lens _mfiAccountId (\ s a -> s{_mfiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfiKey :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiKey = lens _mfiKey (\ s a -> s{_mfiKey = a})

-- | OAuth 2.0 token for the current user.
mfiOauthToken :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiOauthToken
  = lens _mfiOauthToken
      (\ s a -> s{_mfiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfiFields :: Lens' ManagementFiltersInsert' (Maybe Text)
mfiFields
  = lens _mfiFields (\ s a -> s{_mfiFields = a})

-- | Data format for the response.
mfiAlt :: Lens' ManagementFiltersInsert' Alt
mfiAlt = lens _mfiAlt (\ s a -> s{_mfiAlt = a})

instance GoogleRequest ManagementFiltersInsert' where
        type Rs ManagementFiltersInsert' = Filter
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersInsert'{..}
          = go _mfiQuotaUser (Just _mfiPrettyPrint) _mfiUserIp
              _mfiAccountId
              _mfiKey
              _mfiOauthToken
              _mfiFields
              (Just _mfiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersInsertAPI)
                      r
                      u
