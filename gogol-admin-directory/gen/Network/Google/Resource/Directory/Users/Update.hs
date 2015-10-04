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
    , uuUserIP
    , uuPayload
    , uuKey
    , uuOAuthToken
    , uuUserKey
    , uuFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] User :> Put '[JSON] User

-- | update user
--
-- /See:/ 'usersUpdate'' smart constructor.
data UsersUpdate' = UsersUpdate'
    { _uuQuotaUser   :: !(Maybe Text)
    , _uuPrettyPrint :: !Bool
    , _uuUserIP      :: !(Maybe Text)
    , _uuPayload     :: !User
    , _uuKey         :: !(Maybe Key)
    , _uuOAuthToken  :: !(Maybe OAuthToken)
    , _uuUserKey     :: !Text
    , _uuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuQuotaUser'
--
-- * 'uuPrettyPrint'
--
-- * 'uuUserIP'
--
-- * 'uuPayload'
--
-- * 'uuKey'
--
-- * 'uuOAuthToken'
--
-- * 'uuUserKey'
--
-- * 'uuFields'
usersUpdate'
    :: User -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersUpdate'
usersUpdate' pUuPayload_ pUuUserKey_ =
    UsersUpdate'
    { _uuQuotaUser = Nothing
    , _uuPrettyPrint = True
    , _uuUserIP = Nothing
    , _uuPayload = pUuPayload_
    , _uuKey = Nothing
    , _uuOAuthToken = Nothing
    , _uuUserKey = pUuUserKey_
    , _uuFields = Nothing
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
uuUserIP :: Lens' UsersUpdate' (Maybe Text)
uuUserIP = lens _uuUserIP (\ s a -> s{_uuUserIP = a})

-- | Multipart request metadata.
uuPayload :: Lens' UsersUpdate' User
uuPayload
  = lens _uuPayload (\ s a -> s{_uuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uuKey :: Lens' UsersUpdate' (Maybe Key)
uuKey = lens _uuKey (\ s a -> s{_uuKey = a})

-- | OAuth 2.0 token for the current user.
uuOAuthToken :: Lens' UsersUpdate' (Maybe OAuthToken)
uuOAuthToken
  = lens _uuOAuthToken (\ s a -> s{_uuOAuthToken = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- user object
uuUserKey :: Lens' UsersUpdate' Text
uuUserKey
  = lens _uuUserKey (\ s a -> s{_uuUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uuFields :: Lens' UsersUpdate' (Maybe Text)
uuFields = lens _uuFields (\ s a -> s{_uuFields = a})

instance GoogleAuth UsersUpdate' where
        authKey = uuKey . _Just
        authToken = uuOAuthToken . _Just

instance GoogleRequest UsersUpdate' where
        type Rs UsersUpdate' = User
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersUpdate'{..}
          = go _uuUserKey _uuQuotaUser (Just _uuPrettyPrint)
              _uuUserIP
              _uuFields
              _uuKey
              _uuOAuthToken
              (Just AltJSON)
              _uuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersUpdateResource)
                      r
                      u
