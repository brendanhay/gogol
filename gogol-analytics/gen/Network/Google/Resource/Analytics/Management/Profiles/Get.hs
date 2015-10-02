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
-- Module      : Network.Google.Resource.Analytics.Management.Profiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a view (profile) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfilesGet@.
module Network.Google.Resource.Analytics.Management.Profiles.Get
    (
    -- * REST Resource
      ManagementProfilesGetResource

    -- * Creating a Request
    , managementProfilesGet'
    , ManagementProfilesGet'

    -- * Request Lenses
    , mpgQuotaUser
    , mpgPrettyPrint
    , mpgWebPropertyId
    , mpgUserIP
    , mpgProfileId
    , mpgAccountId
    , mpgKey
    , mpgOAuthToken
    , mpgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfilesGet@ which the
-- 'ManagementProfilesGet'' request conforms to.
type ManagementProfilesGetResource =
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
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Profile

-- | Gets a view (profile) to which the user has access.
--
-- /See:/ 'managementProfilesGet'' smart constructor.
data ManagementProfilesGet' = ManagementProfilesGet'
    { _mpgQuotaUser     :: !(Maybe Text)
    , _mpgPrettyPrint   :: !Bool
    , _mpgWebPropertyId :: !Text
    , _mpgUserIP        :: !(Maybe Text)
    , _mpgProfileId     :: !Text
    , _mpgAccountId     :: !Text
    , _mpgKey           :: !(Maybe Key)
    , _mpgOAuthToken    :: !(Maybe OAuthToken)
    , _mpgFields        :: !(Maybe Text)
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
-- * 'mpgUserIP'
--
-- * 'mpgProfileId'
--
-- * 'mpgAccountId'
--
-- * 'mpgKey'
--
-- * 'mpgOAuthToken'
--
-- * 'mpgFields'
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
    , _mpgUserIP = Nothing
    , _mpgProfileId = pMpgProfileId_
    , _mpgAccountId = pMpgAccountId_
    , _mpgKey = Nothing
    , _mpgOAuthToken = Nothing
    , _mpgFields = Nothing
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
mpgUserIP :: Lens' ManagementProfilesGet' (Maybe Text)
mpgUserIP
  = lens _mpgUserIP (\ s a -> s{_mpgUserIP = a})

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
mpgKey :: Lens' ManagementProfilesGet' (Maybe Key)
mpgKey = lens _mpgKey (\ s a -> s{_mpgKey = a})

-- | OAuth 2.0 token for the current user.
mpgOAuthToken :: Lens' ManagementProfilesGet' (Maybe OAuthToken)
mpgOAuthToken
  = lens _mpgOAuthToken
      (\ s a -> s{_mpgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpgFields :: Lens' ManagementProfilesGet' (Maybe Text)
mpgFields
  = lens _mpgFields (\ s a -> s{_mpgFields = a})

instance GoogleAuth ManagementProfilesGet' where
        authKey = mpgKey . _Just
        authToken = mpgOAuthToken . _Just

instance GoogleRequest ManagementProfilesGet' where
        type Rs ManagementProfilesGet' = Profile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesGet'{..}
          = go _mpgQuotaUser (Just _mpgPrettyPrint)
              _mpgWebPropertyId
              _mpgUserIP
              _mpgProfileId
              _mpgAccountId
              _mpgKey
              _mpgOAuthToken
              _mpgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesGetResource)
                      r
                      u
