{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Profiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a view (profile) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.get@.
module Network.Google.API.Analytics.Management.Profiles.Get
    (
    -- * REST Resource
      ManagementProfilesGetAPI

    -- * Creating a Request
    , managementProfilesGet'
    , ManagementProfilesGet'

    -- * Request Lenses
    , mpgQuotaUser
    , mpgPrettyPrint
    , mpgWebPropertyId
    , mpgUserIp
    , mpgProfileId
    , mpgAccountId
    , mpgKey
    , mpgOauthToken
    , mpgFields
    , mpgAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.profiles.get which the
-- 'ManagementProfilesGet'' request conforms to.
type ManagementProfilesGetAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] Profile

-- | Gets a view (profile) to which the user has access.
--
-- /See:/ 'managementProfilesGet'' smart constructor.
data ManagementProfilesGet' = ManagementProfilesGet'
    { _mpgQuotaUser     :: !(Maybe Text)
    , _mpgPrettyPrint   :: !Bool
    , _mpgWebPropertyId :: !Text
    , _mpgUserIp        :: !(Maybe Text)
    , _mpgProfileId     :: !Text
    , _mpgAccountId     :: !Text
    , _mpgKey           :: !(Maybe Text)
    , _mpgOauthToken    :: !(Maybe Text)
    , _mpgFields        :: !(Maybe Text)
    , _mpgAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpgQuotaUser'
--
-- * 'mpgPrettyPrint'
--
-- * 'mpgWebPropertyId'
--
-- * 'mpgUserIp'
--
-- * 'mpgProfileId'
--
-- * 'mpgAccountId'
--
-- * 'mpgKey'
--
-- * 'mpgOauthToken'
--
-- * 'mpgFields'
--
-- * 'mpgAlt'
managementProfilesGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProfilesGet'
managementProfilesGet' pMpgWebPropertyId_ pMpgProfileId_ pMpgAccountId_ =
    ManagementProfilesGet'
    { _mpgQuotaUser = Nothing
    , _mpgPrettyPrint = False
    , _mpgWebPropertyId = pMpgWebPropertyId_
    , _mpgUserIp = Nothing
    , _mpgProfileId = pMpgProfileId_
    , _mpgAccountId = pMpgAccountId_
    , _mpgKey = Nothing
    , _mpgOauthToken = Nothing
    , _mpgFields = Nothing
    , _mpgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpgQuotaUser :: Lens' ManagementProfilesGet' (Maybe Text)
mpgQuotaUser
  = lens _mpgQuotaUser (\ s a -> s{_mpgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpgPrettyPrint :: Lens' ManagementProfilesGet' Bool
mpgPrettyPrint
  = lens _mpgPrettyPrint
      (\ s a -> s{_mpgPrettyPrint = a})

-- | Web property ID to retrieve the goal for.
mpgWebPropertyId :: Lens' ManagementProfilesGet' Text
mpgWebPropertyId
  = lens _mpgWebPropertyId
      (\ s a -> s{_mpgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpgUserIp :: Lens' ManagementProfilesGet' (Maybe Text)
mpgUserIp
  = lens _mpgUserIp (\ s a -> s{_mpgUserIp = a})

-- | View (Profile) ID to retrieve the goal for.
mpgProfileId :: Lens' ManagementProfilesGet' Text
mpgProfileId
  = lens _mpgProfileId (\ s a -> s{_mpgProfileId = a})

-- | Account ID to retrieve the goal for.
mpgAccountId :: Lens' ManagementProfilesGet' Text
mpgAccountId
  = lens _mpgAccountId (\ s a -> s{_mpgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpgKey :: Lens' ManagementProfilesGet' (Maybe Text)
mpgKey = lens _mpgKey (\ s a -> s{_mpgKey = a})

-- | OAuth 2.0 token for the current user.
mpgOauthToken :: Lens' ManagementProfilesGet' (Maybe Text)
mpgOauthToken
  = lens _mpgOauthToken
      (\ s a -> s{_mpgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpgFields :: Lens' ManagementProfilesGet' (Maybe Text)
mpgFields
  = lens _mpgFields (\ s a -> s{_mpgFields = a})

-- | Data format for the response.
mpgAlt :: Lens' ManagementProfilesGet' Alt
mpgAlt = lens _mpgAlt (\ s a -> s{_mpgAlt = a})

instance GoogleRequest ManagementProfilesGet' where
        type Rs ManagementProfilesGet' = Profile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesGet'{..}
          = go _mpgQuotaUser (Just _mpgPrettyPrint)
              _mpgWebPropertyId
              _mpgUserIp
              _mpgProfileId
              _mpgAccountId
              _mpgKey
              _mpgOauthToken
              _mpgFields
              (Just _mpgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesGetAPI)
                      r
                      u
