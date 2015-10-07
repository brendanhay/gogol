{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , upuPayload
    , upuKey
    , upuOAuthToken
    , upuUserKey
    , upuFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosUpdate@ method which the
-- 'UsersPhotosUpdate'' request conforms to.
type UsersPhotosUpdateResource =
     "users" :>
       Capture "userKey" Text :>
         "photos" :>
           "thumbnail" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UserPhoto :> Put '[JSON] UserPhoto

-- | Add a photo for the user
--
-- /See:/ 'usersPhotosUpdate'' smart constructor.
data UsersPhotosUpdate' = UsersPhotosUpdate'
    { _upuQuotaUser   :: !(Maybe Text)
    , _upuPrettyPrint :: !Bool
    , _upuUserIP      :: !(Maybe Text)
    , _upuPayload     :: !UserPhoto
    , _upuKey         :: !(Maybe AuthKey)
    , _upuOAuthToken  :: !(Maybe OAuthToken)
    , _upuUserKey     :: !Text
    , _upuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'upuPayload'
--
-- * 'upuKey'
--
-- * 'upuOAuthToken'
--
-- * 'upuUserKey'
--
-- * 'upuFields'
usersPhotosUpdate'
    :: UserPhoto -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersPhotosUpdate'
usersPhotosUpdate' pUpuPayload_ pUpuUserKey_ =
    UsersPhotosUpdate'
    { _upuQuotaUser = Nothing
    , _upuPrettyPrint = True
    , _upuUserIP = Nothing
    , _upuPayload = pUpuPayload_
    , _upuKey = Nothing
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

-- | Multipart request metadata.
upuPayload :: Lens' UsersPhotosUpdate' UserPhoto
upuPayload
  = lens _upuPayload (\ s a -> s{_upuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upuKey :: Lens' UsersPhotosUpdate' (Maybe AuthKey)
upuKey = lens _upuKey (\ s a -> s{_upuKey = a})

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
        _AuthKey = upuKey . _Just
        _AuthToken = upuOAuthToken . _Just

instance GoogleRequest UsersPhotosUpdate' where
        type Rs UsersPhotosUpdate' = UserPhoto
        request = requestWith directoryRequest
        requestWith rq UsersPhotosUpdate'{..}
          = go _upuUserKey _upuQuotaUser (Just _upuPrettyPrint)
              _upuUserIP
              _upuFields
              _upuKey
              _upuOAuthToken
              (Just AltJSON)
              _upuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersPhotosUpdateResource)
                      rq
