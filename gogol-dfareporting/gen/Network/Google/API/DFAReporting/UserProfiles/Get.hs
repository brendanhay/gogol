{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.UserProfiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userProfiles.get@.
module Network.Google.API.DFAReporting.UserProfiles.Get
    (
    -- * REST Resource
      UserProfilesGetAPI

    -- * Creating a Request
    , userProfilesGet'
    , UserProfilesGet'

    -- * Request Lenses
    , upgQuotaUser
    , upgPrettyPrint
    , upgUserIp
    , upgProfileId
    , upgKey
    , upgOauthToken
    , upgFields
    , upgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.userProfiles.get which the
-- 'UserProfilesGet'' request conforms to.
type UserProfilesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] UserProfile

-- | Gets one user profile by ID.
--
-- /See:/ 'userProfilesGet'' smart constructor.
data UserProfilesGet' = UserProfilesGet'
    { _upgQuotaUser   :: !(Maybe Text)
    , _upgPrettyPrint :: !Bool
    , _upgUserIp      :: !(Maybe Text)
    , _upgProfileId   :: !Int64
    , _upgKey         :: !(Maybe Text)
    , _upgOauthToken  :: !(Maybe Text)
    , _upgFields      :: !(Maybe Text)
    , _upgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upgQuotaUser'
--
-- * 'upgPrettyPrint'
--
-- * 'upgUserIp'
--
-- * 'upgProfileId'
--
-- * 'upgKey'
--
-- * 'upgOauthToken'
--
-- * 'upgFields'
--
-- * 'upgAlt'
userProfilesGet'
    :: Int64 -- ^ 'profileId'
    -> UserProfilesGet'
userProfilesGet' pUpgProfileId_ =
    UserProfilesGet'
    { _upgQuotaUser = Nothing
    , _upgPrettyPrint = True
    , _upgUserIp = Nothing
    , _upgProfileId = pUpgProfileId_
    , _upgKey = Nothing
    , _upgOauthToken = Nothing
    , _upgFields = Nothing
    , _upgAlt = JSON
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
upgUserIp :: Lens' UserProfilesGet' (Maybe Text)
upgUserIp
  = lens _upgUserIp (\ s a -> s{_upgUserIp = a})

-- | The user profile ID.
upgProfileId :: Lens' UserProfilesGet' Int64
upgProfileId
  = lens _upgProfileId (\ s a -> s{_upgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upgKey :: Lens' UserProfilesGet' (Maybe Text)
upgKey = lens _upgKey (\ s a -> s{_upgKey = a})

-- | OAuth 2.0 token for the current user.
upgOauthToken :: Lens' UserProfilesGet' (Maybe Text)
upgOauthToken
  = lens _upgOauthToken
      (\ s a -> s{_upgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
upgFields :: Lens' UserProfilesGet' (Maybe Text)
upgFields
  = lens _upgFields (\ s a -> s{_upgFields = a})

-- | Data format for the response.
upgAlt :: Lens' UserProfilesGet' Alt
upgAlt = lens _upgAlt (\ s a -> s{_upgAlt = a})

instance GoogleRequest UserProfilesGet' where
        type Rs UserProfilesGet' = UserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserProfilesGet'{..}
          = go _upgQuotaUser (Just _upgPrettyPrint) _upgUserIp
              _upgProfileId
              _upgKey
              _upgOauthToken
              _upgFields
              (Just _upgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UserProfilesGetAPI)
                      r
                      u
