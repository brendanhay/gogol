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
-- Module      : Network.Google.Resource.Analytics.Management.Profiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfilesUpdate@.
module Network.Google.Resource.Analytics.Management.Profiles.Update
    (
    -- * REST Resource
      ManagementProfilesUpdateResource

    -- * Creating a Request
    , managementProfilesUpdate'
    , ManagementProfilesUpdate'

    -- * Request Lenses
    , mpuQuotaUser
    , mpuPrettyPrint
    , mpuWebPropertyId
    , mpuUserIP
    , mpuProfile
    , mpuProfileId
    , mpuAccountId
    , mpuKey
    , mpuOAuthToken
    , mpuFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfilesUpdate@ which the
-- 'ManagementProfilesUpdate'' request conforms to.
type ManagementProfilesUpdateResource =
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
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Profile :> Put '[JSON] Profile

-- | Updates an existing view (profile).
--
-- /See:/ 'managementProfilesUpdate'' smart constructor.
data ManagementProfilesUpdate' = ManagementProfilesUpdate'
    { _mpuQuotaUser     :: !(Maybe Text)
    , _mpuPrettyPrint   :: !Bool
    , _mpuWebPropertyId :: !Text
    , _mpuUserIP        :: !(Maybe Text)
    , _mpuProfile       :: !Profile
    , _mpuProfileId     :: !Text
    , _mpuAccountId     :: !Text
    , _mpuKey           :: !(Maybe Key)
    , _mpuOAuthToken    :: !(Maybe OAuthToken)
    , _mpuFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpuQuotaUser'
--
-- * 'mpuPrettyPrint'
--
-- * 'mpuWebPropertyId'
--
-- * 'mpuUserIP'
--
-- * 'mpuProfile'
--
-- * 'mpuProfileId'
--
-- * 'mpuAccountId'
--
-- * 'mpuKey'
--
-- * 'mpuOAuthToken'
--
-- * 'mpuFields'
managementProfilesUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Profile -- ^ 'Profile'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProfilesUpdate'
managementProfilesUpdate' pMpuWebPropertyId_ pMpuProfile_ pMpuProfileId_ pMpuAccountId_ =
    ManagementProfilesUpdate'
    { _mpuQuotaUser = Nothing
    , _mpuPrettyPrint = False
    , _mpuWebPropertyId = pMpuWebPropertyId_
    , _mpuUserIP = Nothing
    , _mpuProfile = pMpuProfile_
    , _mpuProfileId = pMpuProfileId_
    , _mpuAccountId = pMpuAccountId_
    , _mpuKey = Nothing
    , _mpuOAuthToken = Nothing
    , _mpuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpuQuotaUser :: Lens' ManagementProfilesUpdate' (Maybe Text)
mpuQuotaUser
  = lens _mpuQuotaUser (\ s a -> s{_mpuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpuPrettyPrint :: Lens' ManagementProfilesUpdate' Bool
mpuPrettyPrint
  = lens _mpuPrettyPrint
      (\ s a -> s{_mpuPrettyPrint = a})

-- | Web property ID to which the view (profile) belongs
mpuWebPropertyId :: Lens' ManagementProfilesUpdate' Text
mpuWebPropertyId
  = lens _mpuWebPropertyId
      (\ s a -> s{_mpuWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpuUserIP :: Lens' ManagementProfilesUpdate' (Maybe Text)
mpuUserIP
  = lens _mpuUserIP (\ s a -> s{_mpuUserIP = a})

-- | Multipart request metadata.
mpuProfile :: Lens' ManagementProfilesUpdate' Profile
mpuProfile
  = lens _mpuProfile (\ s a -> s{_mpuProfile = a})

-- | ID of the view (profile) to be updated.
mpuProfileId :: Lens' ManagementProfilesUpdate' Text
mpuProfileId
  = lens _mpuProfileId (\ s a -> s{_mpuProfileId = a})

-- | Account ID to which the view (profile) belongs
mpuAccountId :: Lens' ManagementProfilesUpdate' Text
mpuAccountId
  = lens _mpuAccountId (\ s a -> s{_mpuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpuKey :: Lens' ManagementProfilesUpdate' (Maybe Key)
mpuKey = lens _mpuKey (\ s a -> s{_mpuKey = a})

-- | OAuth 2.0 token for the current user.
mpuOAuthToken :: Lens' ManagementProfilesUpdate' (Maybe OAuthToken)
mpuOAuthToken
  = lens _mpuOAuthToken
      (\ s a -> s{_mpuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpuFields :: Lens' ManagementProfilesUpdate' (Maybe Text)
mpuFields
  = lens _mpuFields (\ s a -> s{_mpuFields = a})

instance GoogleAuth ManagementProfilesUpdate' where
        authKey = mpuKey . _Just
        authToken = mpuOAuthToken . _Just

instance GoogleRequest ManagementProfilesUpdate'
         where
        type Rs ManagementProfilesUpdate' = Profile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesUpdate'{..}
          = go _mpuAccountId _mpuWebPropertyId _mpuProfileId
              _mpuQuotaUser
              (Just _mpuPrettyPrint)
              _mpuUserIP
              _mpuFields
              _mpuKey
              _mpuOAuthToken
              (Just AltJSON)
              _mpuProfile
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesUpdateResource)
                      r
                      u
