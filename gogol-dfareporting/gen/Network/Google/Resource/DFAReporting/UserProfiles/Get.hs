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
-- Module      : Network.Google.Resource.DFAReporting.UserProfiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserProfilesGet@.
module Network.Google.Resource.DFAReporting.UserProfiles.Get
    (
    -- * REST Resource
      UserProfilesGetResource

    -- * Creating a Request
    , userProfilesGet'
    , UserProfilesGet'

    -- * Request Lenses
    , upgQuotaUser
    , upgPrettyPrint
    , upgUserIP
    , upgProfileId
    , upgKey
    , upgOAuthToken
    , upgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserProfilesGet@ which the
-- 'UserProfilesGet'' request conforms to.
type UserProfilesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] UserProfile

-- | Gets one user profile by ID.
--
-- /See:/ 'userProfilesGet'' smart constructor.
data UserProfilesGet' = UserProfilesGet'
    { _upgQuotaUser   :: !(Maybe Text)
    , _upgPrettyPrint :: !Bool
    , _upgUserIP      :: !(Maybe Text)
    , _upgProfileId   :: !Int64
    , _upgKey         :: !(Maybe Key)
    , _upgOAuthToken  :: !(Maybe OAuthToken)
    , _upgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upgQuotaUser'
--
-- * 'upgPrettyPrint'
--
-- * 'upgUserIP'
--
-- * 'upgProfileId'
--
-- * 'upgKey'
--
-- * 'upgOAuthToken'
--
-- * 'upgFields'
userProfilesGet'
    :: Int64 -- ^ 'profileId'
    -> UserProfilesGet'
userProfilesGet' pUpgProfileId_ =
    UserProfilesGet'
    { _upgQuotaUser = Nothing
    , _upgPrettyPrint = True
    , _upgUserIP = Nothing
    , _upgProfileId = pUpgProfileId_
    , _upgKey = Nothing
    , _upgOAuthToken = Nothing
    , _upgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
upgQuotaUser :: Lens' UserProfilesGet' (Maybe Text)
upgQuotaUser
  = lens _upgQuotaUser (\ s a -> s{_upgQuotaUser = a})

-- | Returns response with indentations and line breaks.
upgPrettyPrint :: Lens' UserProfilesGet' Bool
upgPrettyPrint
  = lens _upgPrettyPrint
      (\ s a -> s{_upgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
upgUserIP :: Lens' UserProfilesGet' (Maybe Text)
upgUserIP
  = lens _upgUserIP (\ s a -> s{_upgUserIP = a})

-- | The user profile ID.
upgProfileId :: Lens' UserProfilesGet' Int64
upgProfileId
  = lens _upgProfileId (\ s a -> s{_upgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upgKey :: Lens' UserProfilesGet' (Maybe Key)
upgKey = lens _upgKey (\ s a -> s{_upgKey = a})

-- | OAuth 2.0 token for the current user.
upgOAuthToken :: Lens' UserProfilesGet' (Maybe OAuthToken)
upgOAuthToken
  = lens _upgOAuthToken
      (\ s a -> s{_upgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
upgFields :: Lens' UserProfilesGet' (Maybe Text)
upgFields
  = lens _upgFields (\ s a -> s{_upgFields = a})

instance GoogleAuth UserProfilesGet' where
        authKey = upgKey . _Just
        authToken = upgOAuthToken . _Just

instance GoogleRequest UserProfilesGet' where
        type Rs UserProfilesGet' = UserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserProfilesGet'{..}
          = go _upgProfileId _upgQuotaUser
              (Just _upgPrettyPrint)
              _upgUserIP
              _upgFields
              _upgKey
              _upgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserProfilesGetResource)
                      r
                      u
