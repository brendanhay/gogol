{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Filters.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.update@.
module Network.Google.API.Analytics.Management.Filters.Update
    (
    -- * REST Resource
      ManagementFiltersUpdateAPI

    -- * Creating a Request
    , managementFiltersUpdate'
    , ManagementFiltersUpdate'

    -- * Request Lenses
    , mfuQuotaUser
    , mfuPrettyPrint
    , mfuFilterId
    , mfuUserIp
    , mfuAccountId
    , mfuKey
    , mfuOauthToken
    , mfuFields
    , mfuAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.filters.update which the
-- 'ManagementFiltersUpdate'' request conforms to.
type ManagementFiltersUpdateAPI =
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
                           QueryParam "alt" Alt :> Put '[JSON] Filter

-- | Updates an existing filter.
--
-- /See:/ 'managementFiltersUpdate'' smart constructor.
data ManagementFiltersUpdate' = ManagementFiltersUpdate'
    { _mfuQuotaUser   :: !(Maybe Text)
    , _mfuPrettyPrint :: !Bool
    , _mfuFilterId    :: !Text
    , _mfuUserIp      :: !(Maybe Text)
    , _mfuAccountId   :: !Text
    , _mfuKey         :: !(Maybe Text)
    , _mfuOauthToken  :: !(Maybe Text)
    , _mfuFields      :: !(Maybe Text)
    , _mfuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfuQuotaUser'
--
-- * 'mfuPrettyPrint'
--
-- * 'mfuFilterId'
--
-- * 'mfuUserIp'
--
-- * 'mfuAccountId'
--
-- * 'mfuKey'
--
-- * 'mfuOauthToken'
--
-- * 'mfuFields'
--
-- * 'mfuAlt'
managementFiltersUpdate'
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersUpdate'
managementFiltersUpdate' pMfuFilterId_ pMfuAccountId_ =
    ManagementFiltersUpdate'
    { _mfuQuotaUser = Nothing
    , _mfuPrettyPrint = False
    , _mfuFilterId = pMfuFilterId_
    , _mfuUserIp = Nothing
    , _mfuAccountId = pMfuAccountId_
    , _mfuKey = Nothing
    , _mfuOauthToken = Nothing
    , _mfuFields = Nothing
    , _mfuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfuQuotaUser :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuQuotaUser
  = lens _mfuQuotaUser (\ s a -> s{_mfuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfuPrettyPrint :: Lens' ManagementFiltersUpdate' Bool
mfuPrettyPrint
  = lens _mfuPrettyPrint
      (\ s a -> s{_mfuPrettyPrint = a})

-- | ID of the filter to be updated.
mfuFilterId :: Lens' ManagementFiltersUpdate' Text
mfuFilterId
  = lens _mfuFilterId (\ s a -> s{_mfuFilterId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfuUserIp :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuUserIp
  = lens _mfuUserIp (\ s a -> s{_mfuUserIp = a})

-- | Account ID to which the filter belongs.
mfuAccountId :: Lens' ManagementFiltersUpdate' Text
mfuAccountId
  = lens _mfuAccountId (\ s a -> s{_mfuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfuKey :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuKey = lens _mfuKey (\ s a -> s{_mfuKey = a})

-- | OAuth 2.0 token for the current user.
mfuOauthToken :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuOauthToken
  = lens _mfuOauthToken
      (\ s a -> s{_mfuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfuFields :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuFields
  = lens _mfuFields (\ s a -> s{_mfuFields = a})

-- | Data format for the response.
mfuAlt :: Lens' ManagementFiltersUpdate' Alt
mfuAlt = lens _mfuAlt (\ s a -> s{_mfuAlt = a})

instance GoogleRequest ManagementFiltersUpdate' where
        type Rs ManagementFiltersUpdate' = Filter
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersUpdate'{..}
          = go _mfuQuotaUser (Just _mfuPrettyPrint)
              _mfuFilterId
              _mfuUserIp
              _mfuAccountId
              _mfuKey
              _mfuOauthToken
              _mfuFields
              (Just _mfuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersUpdateAPI)
                      r
                      u
