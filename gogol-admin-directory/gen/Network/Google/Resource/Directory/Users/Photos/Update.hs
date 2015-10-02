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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a photo for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersPhotosUpdate@.
module Network.Google.Resource.Directory.Users.Photos.Update
    (
    -- * REST Resource
      UsersPhotosUpdateResource

    -- * Creating a Request
    , usersPhotosUpdate'
    , UsersPhotosUpdate'

    -- * Request Lenses
    , upuQuotaUser
    , upuPrettyPrint
    , upuUserIP
    , upuKey
    , upuUserPhoto
    , upuOAuthToken
    , upuUserKey
    , upuFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosUpdate@ which the
-- 'UsersPhotosUpdate'' request conforms to.
type UsersPhotosUpdateResource =
     "users" :>
       Capture "userKey" Text :>
         "photos" :>
           "thumbnail" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UserPhoto :> Put '[JSON] UserPhoto

-- | Add a photo for the user
--
-- /See:/ 'usersPhotosUpdate'' smart constructor.
data UsersPhotosUpdate' = UsersPhotosUpdate'
    { _upuQuotaUser   :: !(Maybe Text)
    , _upuPrettyPrint :: !Bool
    , _upuUserIP      :: !(Maybe Text)
    , _upuKey         :: !(Maybe Key)
    , _upuUserPhoto   :: !UserPhoto
    , _upuOAuthToken  :: !(Maybe OAuthToken)
    , _upuUserKey     :: !Text
    , _upuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upuQuotaUser'
--
-- * 'upuPrettyPrint'
--
-- * 'upuUserIP'
--
-- * 'upuKey'
--
-- * 'upuUserPhoto'
--
-- * 'upuOAuthToken'
--
-- * 'upuUserKey'
--
-- * 'upuFields'
usersPhotosUpdate'
    :: UserPhoto -- ^ 'UserPhoto'
    -> Text -- ^ 'userKey'
    -> UsersPhotosUpdate'
usersPhotosUpdate' pUpuUserPhoto_ pUpuUserKey_ =
    UsersPhotosUpdate'
    { _upuQuotaUser = Nothing
    , _upuPrettyPrint = True
    , _upuUserIP = Nothing
    , _upuKey = Nothing
    , _upuUserPhoto = pUpuUserPhoto_
    , _upuOAuthToken = Nothing
    , _upuUserKey = pUpuUserKey_
    , _upuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
upuQuotaUser :: Lens' UsersPhotosUpdate' (Maybe Text)
upuQuotaUser
  = lens _upuQuotaUser (\ s a -> s{_upuQuotaUser = a})

-- | Returns response with indentations and line breaks.
upuPrettyPrint :: Lens' UsersPhotosUpdate' Bool
upuPrettyPrint
  = lens _upuPrettyPrint
      (\ s a -> s{_upuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
upuUserIP :: Lens' UsersPhotosUpdate' (Maybe Text)
upuUserIP
  = lens _upuUserIP (\ s a -> s{_upuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upuKey :: Lens' UsersPhotosUpdate' (Maybe Key)
upuKey = lens _upuKey (\ s a -> s{_upuKey = a})

-- | Multipart request metadata.
upuUserPhoto :: Lens' UsersPhotosUpdate' UserPhoto
upuUserPhoto
  = lens _upuUserPhoto (\ s a -> s{_upuUserPhoto = a})

-- | OAuth 2.0 token for the current user.
upuOAuthToken :: Lens' UsersPhotosUpdate' (Maybe OAuthToken)
upuOAuthToken
  = lens _upuOAuthToken
      (\ s a -> s{_upuOAuthToken = a})

-- | Email or immutable Id of the user
upuUserKey :: Lens' UsersPhotosUpdate' Text
upuUserKey
  = lens _upuUserKey (\ s a -> s{_upuUserKey = a})

-- | Selector specifying which fields to include in a partial response.
upuFields :: Lens' UsersPhotosUpdate' (Maybe Text)
upuFields
  = lens _upuFields (\ s a -> s{_upuFields = a})

instance GoogleAuth UsersPhotosUpdate' where
        authKey = upuKey . _Just
        authToken = upuOAuthToken . _Just

instance GoogleRequest UsersPhotosUpdate' where
        type Rs UsersPhotosUpdate' = UserPhoto
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersPhotosUpdate'{..}
          = go _upuQuotaUser (Just _upuPrettyPrint) _upuUserIP
              _upuKey
              _upuOAuthToken
              _upuUserKey
              _upuFields
              (Just AltJSON)
              _upuUserPhoto
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersPhotosUpdateResource)
                      r
                      u
