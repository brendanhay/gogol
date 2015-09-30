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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersDelete@.
module Network.Google.Resource.Analytics.Management.Filters.Delete
    (
    -- * REST Resource
      ManagementFiltersDeleteResource

    -- * Creating a Request
    , managementFiltersDelete'
    , ManagementFiltersDelete'

    -- * Request Lenses
    , mfdQuotaUser
    , mfdPrettyPrint
    , mfdFilterId
    , mfdUserIp
    , mfdAccountId
    , mfdKey
    , mfdOauthToken
    , mfdFields
    , mfdAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersDelete@ which the
-- 'ManagementFiltersDelete'' request conforms to.
type ManagementFiltersDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             Capture "filterId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] Filter

-- | Delete a filter.
--
-- /See:/ 'managementFiltersDelete'' smart constructor.
data ManagementFiltersDelete' = ManagementFiltersDelete'
    { _mfdQuotaUser   :: !(Maybe Text)
    , _mfdPrettyPrint :: !Bool
    , _mfdFilterId    :: !Text
    , _mfdUserIp      :: !(Maybe Text)
    , _mfdAccountId   :: !Text
    , _mfdKey         :: !(Maybe Text)
    , _mfdOauthToken  :: !(Maybe Text)
    , _mfdFields      :: !(Maybe Text)
    , _mfdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfdQuotaUser'
--
-- * 'mfdPrettyPrint'
--
-- * 'mfdFilterId'
--
-- * 'mfdUserIp'
--
-- * 'mfdAccountId'
--
-- * 'mfdKey'
--
-- * 'mfdOauthToken'
--
-- * 'mfdFields'
--
-- * 'mfdAlt'
managementFiltersDelete'
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersDelete'
managementFiltersDelete' pMfdFilterId_ pMfdAccountId_ =
    ManagementFiltersDelete'
    { _mfdQuotaUser = Nothing
    , _mfdPrettyPrint = False
    , _mfdFilterId = pMfdFilterId_
    , _mfdUserIp = Nothing
    , _mfdAccountId = pMfdAccountId_
    , _mfdKey = Nothing
    , _mfdOauthToken = Nothing
    , _mfdFields = Nothing
    , _mfdAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfdQuotaUser :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdQuotaUser
  = lens _mfdQuotaUser (\ s a -> s{_mfdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfdPrettyPrint :: Lens' ManagementFiltersDelete' Bool
mfdPrettyPrint
  = lens _mfdPrettyPrint
      (\ s a -> s{_mfdPrettyPrint = a})

-- | ID of the filter to be deleted.
mfdFilterId :: Lens' ManagementFiltersDelete' Text
mfdFilterId
  = lens _mfdFilterId (\ s a -> s{_mfdFilterId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfdUserIp :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdUserIp
  = lens _mfdUserIp (\ s a -> s{_mfdUserIp = a})

-- | Account ID to delete the filter for.
mfdAccountId :: Lens' ManagementFiltersDelete' Text
mfdAccountId
  = lens _mfdAccountId (\ s a -> s{_mfdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfdKey :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdKey = lens _mfdKey (\ s a -> s{_mfdKey = a})

-- | OAuth 2.0 token for the current user.
mfdOauthToken :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdOauthToken
  = lens _mfdOauthToken
      (\ s a -> s{_mfdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfdFields :: Lens' ManagementFiltersDelete' (Maybe Text)
mfdFields
  = lens _mfdFields (\ s a -> s{_mfdFields = a})

-- | Data format for the response.
mfdAlt :: Lens' ManagementFiltersDelete' Alt
mfdAlt = lens _mfdAlt (\ s a -> s{_mfdAlt = a})

instance GoogleRequest ManagementFiltersDelete' where
        type Rs ManagementFiltersDelete' = Filter
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersDelete'{..}
          = go _mfdQuotaUser (Just _mfdPrettyPrint)
              _mfdFilterId
              _mfdUserIp
              _mfdAccountId
              _mfdKey
              _mfdOauthToken
              _mfdFields
              (Just _mfdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersDeleteResource)
                      r
                      u
