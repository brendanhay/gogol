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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a photo for the user. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersPhotosPatch@.
module Network.Google.Resource.Directory.Users.Photos.Patch
    (
    -- * REST Resource
      UsersPhotosPatchResource

    -- * Creating a Request
    , usersPhotosPatch'
    , UsersPhotosPatch'

    -- * Request Lenses
    , uppQuotaUser
    , uppPrettyPrint
    , uppUserIP
    , uppPayload
    , uppKey
    , uppOAuthToken
    , uppUserKey
    , uppFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosPatch@ which the
-- 'UsersPhotosPatch'' request conforms to.
type UsersPhotosPatchResource =
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
                           ReqBody '[JSON] UserPhoto :> Patch '[JSON] UserPhoto

-- | Add a photo for the user. This method supports patch semantics.
--
-- /See:/ 'usersPhotosPatch'' smart constructor.
data UsersPhotosPatch' = UsersPhotosPatch'
    { _uppQuotaUser   :: !(Maybe Text)
    , _uppPrettyPrint :: !Bool
    , _uppUserIP      :: !(Maybe Text)
    , _uppPayload     :: !UserPhoto
    , _uppKey         :: !(Maybe AuthKey)
    , _uppOAuthToken  :: !(Maybe OAuthToken)
    , _uppUserKey     :: !Text
    , _uppFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uppQuotaUser'
--
-- * 'uppPrettyPrint'
--
-- * 'uppUserIP'
--
-- * 'uppPayload'
--
-- * 'uppKey'
--
-- * 'uppOAuthToken'
--
-- * 'uppUserKey'
--
-- * 'uppFields'
usersPhotosPatch'
    :: UserPhoto -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersPhotosPatch'
usersPhotosPatch' pUppPayload_ pUppUserKey_ =
    UsersPhotosPatch'
    { _uppQuotaUser = Nothing
    , _uppPrettyPrint = True
    , _uppUserIP = Nothing
    , _uppPayload = pUppPayload_
    , _uppKey = Nothing
    , _uppOAuthToken = Nothing
    , _uppUserKey = pUppUserKey_
    , _uppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uppQuotaUser :: Lens' UsersPhotosPatch' (Maybe Text)
uppQuotaUser
  = lens _uppQuotaUser (\ s a -> s{_uppQuotaUser = a})

-- | Returns response with indentations and line breaks.
uppPrettyPrint :: Lens' UsersPhotosPatch' Bool
uppPrettyPrint
  = lens _uppPrettyPrint
      (\ s a -> s{_uppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uppUserIP :: Lens' UsersPhotosPatch' (Maybe Text)
uppUserIP
  = lens _uppUserIP (\ s a -> s{_uppUserIP = a})

-- | Multipart request metadata.
uppPayload :: Lens' UsersPhotosPatch' UserPhoto
uppPayload
  = lens _uppPayload (\ s a -> s{_uppPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uppKey :: Lens' UsersPhotosPatch' (Maybe AuthKey)
uppKey = lens _uppKey (\ s a -> s{_uppKey = a})

-- | OAuth 2.0 token for the current user.
uppOAuthToken :: Lens' UsersPhotosPatch' (Maybe OAuthToken)
uppOAuthToken
  = lens _uppOAuthToken
      (\ s a -> s{_uppOAuthToken = a})

-- | Email or immutable Id of the user
uppUserKey :: Lens' UsersPhotosPatch' Text
uppUserKey
  = lens _uppUserKey (\ s a -> s{_uppUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uppFields :: Lens' UsersPhotosPatch' (Maybe Text)
uppFields
  = lens _uppFields (\ s a -> s{_uppFields = a})

instance GoogleAuth UsersPhotosPatch' where
        _AuthKey = uppKey . _Just
        _AuthToken = uppOAuthToken . _Just

instance GoogleRequest UsersPhotosPatch' where
        type Rs UsersPhotosPatch' = UserPhoto
        request = requestWith directoryRequest
        requestWith rq UsersPhotosPatch'{..}
          = go _uppUserKey _uppQuotaUser (Just _uppPrettyPrint)
              _uppUserIP
              _uppFields
              _uppKey
              _uppOAuthToken
              (Just AltJSON)
              _uppPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersPhotosPatchResource)
                      rq
