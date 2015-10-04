{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Gmail.Users.GetProfile
    (
    -- * REST Resource
      UsersGetProfileResource

    -- * Creating a Request
    , usersGetProfile'
    , UsersGetProfile'

    -- * Request Lenses
    , ugpQuotaUser
    , ugpPrettyPrint
    , ugpUserIP
    , ugpUserId
    , ugpKey
    , ugpOAuthToken
    , ugpFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersGetProfile@ which the
-- 'UsersGetProfile'' request conforms to.
type UsersGetProfileResource =
     Capture "userId" Text :>
       "profile" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Profile

-- | Gets the current user\'s Gmail profile.
--
-- /See:/ 'usersGetProfile'' smart constructor.
data UsersGetProfile' = UsersGetProfile'
    { _ugpQuotaUser   :: !(Maybe Text)
    , _ugpPrettyPrint :: !Bool
    , _ugpUserIP      :: !(Maybe Text)
    , _ugpUserId      :: !Text
    , _ugpKey         :: !(Maybe Key)
    , _ugpOAuthToken  :: !(Maybe OAuthToken)
    , _ugpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGetProfile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugpQuotaUser'
--
-- * 'ugpPrettyPrint'
--
-- * 'ugpUserIP'
--
-- * 'ugpUserId'
--
-- * 'ugpKey'
--
-- * 'ugpOAuthToken'
--
-- * 'ugpFields'
usersGetProfile'
    :: Text
    -> UsersGetProfile'
usersGetProfile' pUgpUserId_ =
    UsersGetProfile'
    { _ugpQuotaUser = Nothing
    , _ugpPrettyPrint = True
    , _ugpUserIP = Nothing
    , _ugpUserId = pUgpUserId_
    , _ugpKey = Nothing
    , _ugpOAuthToken = Nothing
    , _ugpFields = Nothing
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
ugpUserIP :: Lens' UsersGetProfile' (Maybe Text)
ugpUserIP
  = lens _ugpUserIP (\ s a -> s{_ugpUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ugpUserId :: Lens' UsersGetProfile' Text
ugpUserId
  = lens _ugpUserId (\ s a -> s{_ugpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugpKey :: Lens' UsersGetProfile' (Maybe Key)
ugpKey = lens _ugpKey (\ s a -> s{_ugpKey = a})

-- | OAuth 2.0 token for the current user.
ugpOAuthToken :: Lens' UsersGetProfile' (Maybe OAuthToken)
ugpOAuthToken
  = lens _ugpOAuthToken
      (\ s a -> s{_ugpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugpFields :: Lens' UsersGetProfile' (Maybe Text)
ugpFields
  = lens _ugpFields (\ s a -> s{_ugpFields = a})

instance GoogleAuth UsersGetProfile' where
        authKey = ugpKey . _Just
        authToken = ugpOAuthToken . _Just

instance GoogleRequest UsersGetProfile' where
        type Rs UsersGetProfile' = Profile
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersGetProfile'{..}
          = go _ugpUserId _ugpQuotaUser (Just _ugpPrettyPrint)
              _ugpUserIP
              _ugpFields
              _ugpKey
              _ugpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersGetProfileResource)
                      r
                      u
