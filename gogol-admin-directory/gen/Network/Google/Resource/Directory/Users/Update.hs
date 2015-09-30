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
-- Module      : Network.Google.Resource.Directory.Users.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | update user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersUpdate@.
module Network.Google.Resource.Directory.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate'
    , UsersUpdate'

    -- * Request Lenses
    , uuQuotaUser
    , uuPrettyPrint
    , uuUserIp
    , uuKey
    , uuOauthToken
    , uuUserKey
    , uuFields
    , uuAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersUpdate@ which the
-- 'UsersUpdate'' request conforms to.
type UsersUpdateResource =
     "users" :>
       Capture "userKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] User

-- | update user
--
-- /See:/ 'usersUpdate'' smart constructor.
data UsersUpdate' = UsersUpdate'
    { _uuQuotaUser   :: !(Maybe Text)
    , _uuPrettyPrint :: !Bool
    , _uuUserIp      :: !(Maybe Text)
    , _uuKey         :: !(Maybe Text)
    , _uuOauthToken  :: !(Maybe Text)
    , _uuUserKey     :: !Text
    , _uuFields      :: !(Maybe Text)
    , _uuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuQuotaUser'
--
-- * 'uuPrettyPrint'
--
-- * 'uuUserIp'
--
-- * 'uuKey'
--
-- * 'uuOauthToken'
--
-- * 'uuUserKey'
--
-- * 'uuFields'
--
-- * 'uuAlt'
usersUpdate'
    :: Text -- ^ 'userKey'
    -> UsersUpdate'
usersUpdate' pUuUserKey_ =
    UsersUpdate'
    { _uuQuotaUser = Nothing
    , _uuPrettyPrint = True
    , _uuUserIp = Nothing
    , _uuKey = Nothing
    , _uuOauthToken = Nothing
    , _uuUserKey = pUuUserKey_
    , _uuFields = Nothing
    , _uuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uuQuotaUser :: Lens' UsersUpdate' (Maybe Text)
uuQuotaUser
  = lens _uuQuotaUser (\ s a -> s{_uuQuotaUser = a})

-- | Returns response with indentations and line breaks.
uuPrettyPrint :: Lens' UsersUpdate' Bool
uuPrettyPrint
  = lens _uuPrettyPrint
      (\ s a -> s{_uuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uuUserIp :: Lens' UsersUpdate' (Maybe Text)
uuUserIp = lens _uuUserIp (\ s a -> s{_uuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uuKey :: Lens' UsersUpdate' (Maybe Text)
uuKey = lens _uuKey (\ s a -> s{_uuKey = a})

-- | OAuth 2.0 token for the current user.
uuOauthToken :: Lens' UsersUpdate' (Maybe Text)
uuOauthToken
  = lens _uuOauthToken (\ s a -> s{_uuOauthToken = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- user object
uuUserKey :: Lens' UsersUpdate' Text
uuUserKey
  = lens _uuUserKey (\ s a -> s{_uuUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uuFields :: Lens' UsersUpdate' (Maybe Text)
uuFields = lens _uuFields (\ s a -> s{_uuFields = a})

-- | Data format for the response.
uuAlt :: Lens' UsersUpdate' Alt
uuAlt = lens _uuAlt (\ s a -> s{_uuAlt = a})

instance GoogleRequest UsersUpdate' where
        type Rs UsersUpdate' = User
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersUpdate'{..}
          = go _uuQuotaUser (Just _uuPrettyPrint) _uuUserIp
              _uuKey
              _uuOauthToken
              _uuUserKey
              _uuFields
              (Just _uuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersUpdateResource)
                      r
                      u
