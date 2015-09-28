{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.UserProfiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of user profiles for a user.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userProfiles.list@.
module Network.Google.API.DFAReporting.UserProfiles.List
    (
    -- * REST Resource
      UserProfilesListAPI

    -- * Creating a Request
    , userProfilesList'
    , UserProfilesList'

    -- * Request Lenses
    , uplQuotaUser
    , uplPrettyPrint
    , uplUserIp
    , uplKey
    , uplOauthToken
    , uplFields
    , uplAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.userProfiles.list which the
-- 'UserProfilesList'' request conforms to.
type UserProfilesListAPI =
     "userprofiles" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Get '[JSON] UserProfileList

-- | Retrieves list of user profiles for a user.
--
-- /See:/ 'userProfilesList'' smart constructor.
data UserProfilesList' = UserProfilesList'
    { _uplQuotaUser   :: !(Maybe Text)
    , _uplPrettyPrint :: !Bool
    , _uplUserIp      :: !(Maybe Text)
    , _uplKey         :: !(Maybe Text)
    , _uplOauthToken  :: !(Maybe Text)
    , _uplFields      :: !(Maybe Text)
    , _uplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProfilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uplQuotaUser'
--
-- * 'uplPrettyPrint'
--
-- * 'uplUserIp'
--
-- * 'uplKey'
--
-- * 'uplOauthToken'
--
-- * 'uplFields'
--
-- * 'uplAlt'
userProfilesList'
    :: UserProfilesList'
userProfilesList' =
    UserProfilesList'
    { _uplQuotaUser = Nothing
    , _uplPrettyPrint = True
    , _uplUserIp = Nothing
    , _uplKey = Nothing
    , _uplOauthToken = Nothing
    , _uplFields = Nothing
    , _uplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uplQuotaUser :: Lens' UserProfilesList' (Maybe Text)
uplQuotaUser
  = lens _uplQuotaUser (\ s a -> s{_uplQuotaUser = a})

-- | Returns response with indentations and line breaks.
uplPrettyPrint :: Lens' UserProfilesList' Bool
uplPrettyPrint
  = lens _uplPrettyPrint
      (\ s a -> s{_uplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uplUserIp :: Lens' UserProfilesList' (Maybe Text)
uplUserIp
  = lens _uplUserIp (\ s a -> s{_uplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uplKey :: Lens' UserProfilesList' (Maybe Text)
uplKey = lens _uplKey (\ s a -> s{_uplKey = a})

-- | OAuth 2.0 token for the current user.
uplOauthToken :: Lens' UserProfilesList' (Maybe Text)
uplOauthToken
  = lens _uplOauthToken
      (\ s a -> s{_uplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uplFields :: Lens' UserProfilesList' (Maybe Text)
uplFields
  = lens _uplFields (\ s a -> s{_uplFields = a})

-- | Data format for the response.
uplAlt :: Lens' UserProfilesList' Alt
uplAlt = lens _uplAlt (\ s a -> s{_uplAlt = a})

instance GoogleRequest UserProfilesList' where
        type Rs UserProfilesList' = UserProfileList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserProfilesList'{..}
          = go _uplQuotaUser (Just _uplPrettyPrint) _uplUserIp
              _uplKey
              _uplOauthToken
              _uplFields
              (Just _uplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserProfilesListAPI)
                      r
                      u
