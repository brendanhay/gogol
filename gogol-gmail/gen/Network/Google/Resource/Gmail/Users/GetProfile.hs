{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.GetProfile
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the current user\'s Gmail profile.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersGetProfile@.
module Gmail.Users.GetProfile
    (
    -- * REST Resource
      UsersGetProfileAPI

    -- * Creating a Request
    , usersGetProfile
    , UsersGetProfile

    -- * Request Lenses
    , ugpQuotaUser
    , ugpPrettyPrint
    , ugpUserIp
    , ugpUserId
    , ugpKey
    , ugpOauthToken
    , ugpFields
    , ugpAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersGetProfile@ which the
-- 'UsersGetProfile' request conforms to.
type UsersGetProfileAPI =
     Capture "userId" Text :>
       "profile" :> Get '[JSON] Profile

-- | Gets the current user\'s Gmail profile.
--
-- /See:/ 'usersGetProfile' smart constructor.
data UsersGetProfile = UsersGetProfile
    { _ugpQuotaUser   :: !(Maybe Text)
    , _ugpPrettyPrint :: !Bool
    , _ugpUserIp      :: !(Maybe Text)
    , _ugpUserId      :: !Text
    , _ugpKey         :: !(Maybe Text)
    , _ugpOauthToken  :: !(Maybe Text)
    , _ugpFields      :: !(Maybe Text)
    , _ugpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGetProfile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugpQuotaUser'
--
-- * 'ugpPrettyPrint'
--
-- * 'ugpUserIp'
--
-- * 'ugpUserId'
--
-- * 'ugpKey'
--
-- * 'ugpOauthToken'
--
-- * 'ugpFields'
--
-- * 'ugpAlt'
usersGetProfile
    :: Text
    -> UsersGetProfile
usersGetProfile pUgpUserId_ =
    UsersGetProfile
    { _ugpQuotaUser = Nothing
    , _ugpPrettyPrint = True
    , _ugpUserIp = Nothing
    , _ugpUserId = pUgpUserId_
    , _ugpKey = Nothing
    , _ugpOauthToken = Nothing
    , _ugpFields = Nothing
    , _ugpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugpQuotaUser :: Lens' UsersGetProfile' (Maybe Text)
ugpQuotaUser
  = lens _ugpQuotaUser (\ s a -> s{_ugpQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugpPrettyPrint :: Lens' UsersGetProfile' Bool
ugpPrettyPrint
  = lens _ugpPrettyPrint
      (\ s a -> s{_ugpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugpUserIp :: Lens' UsersGetProfile' (Maybe Text)
ugpUserIp
  = lens _ugpUserIp (\ s a -> s{_ugpUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ugpUserId :: Lens' UsersGetProfile' Text
ugpUserId
  = lens _ugpUserId (\ s a -> s{_ugpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugpKey :: Lens' UsersGetProfile' (Maybe Text)
ugpKey = lens _ugpKey (\ s a -> s{_ugpKey = a})

-- | OAuth 2.0 token for the current user.
ugpOauthToken :: Lens' UsersGetProfile' (Maybe Text)
ugpOauthToken
  = lens _ugpOauthToken
      (\ s a -> s{_ugpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugpFields :: Lens' UsersGetProfile' (Maybe Text)
ugpFields
  = lens _ugpFields (\ s a -> s{_ugpFields = a})

-- | Data format for the response.
ugpAlt :: Lens' UsersGetProfile' Text
ugpAlt = lens _ugpAlt (\ s a -> s{_ugpAlt = a})

instance GoogleRequest UsersGetProfile' where
        type Rs UsersGetProfile' = Profile
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersGetProfile{..}
          = go _ugpQuotaUser _ugpPrettyPrint _ugpUserIp
              _ugpUserId
              _ugpKey
              _ugpOauthToken
              _ugpFields
              _ugpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersGetProfileAPI)
                      r
                      u
