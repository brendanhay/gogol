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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove photos for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersPhotosDelete@.
module Network.Google.Resource.Directory.Users.Photos.Delete
    (
    -- * REST Resource
      UsersPhotosDeleteResource

    -- * Creating a Request
    , usersPhotosDelete'
    , UsersPhotosDelete'

    -- * Request Lenses
    , updQuotaUser
    , updPrettyPrint
    , updUserIP
    , updKey
    , updOAuthToken
    , updUserKey
    , updFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosDelete@ which the
-- 'UsersPhotosDelete'' request conforms to.
type UsersPhotosDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove photos for the user
--
-- /See:/ 'usersPhotosDelete'' smart constructor.
data UsersPhotosDelete' = UsersPhotosDelete'
    { _updQuotaUser   :: !(Maybe Text)
    , _updPrettyPrint :: !Bool
    , _updUserIP      :: !(Maybe Text)
    , _updKey         :: !(Maybe AuthKey)
    , _updOAuthToken  :: !(Maybe OAuthToken)
    , _updUserKey     :: !Text
    , _updFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updQuotaUser'
--
-- * 'updPrettyPrint'
--
-- * 'updUserIP'
--
-- * 'updKey'
--
-- * 'updOAuthToken'
--
-- * 'updUserKey'
--
-- * 'updFields'
usersPhotosDelete'
    :: Text -- ^ 'userKey'
    -> UsersPhotosDelete'
usersPhotosDelete' pUpdUserKey_ =
    UsersPhotosDelete'
    { _updQuotaUser = Nothing
    , _updPrettyPrint = True
    , _updUserIP = Nothing
    , _updKey = Nothing
    , _updOAuthToken = Nothing
    , _updUserKey = pUpdUserKey_
    , _updFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
updQuotaUser :: Lens' UsersPhotosDelete' (Maybe Text)
updQuotaUser
  = lens _updQuotaUser (\ s a -> s{_updQuotaUser = a})

-- | Returns response with indentations and line breaks.
updPrettyPrint :: Lens' UsersPhotosDelete' Bool
updPrettyPrint
  = lens _updPrettyPrint
      (\ s a -> s{_updPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
updUserIP :: Lens' UsersPhotosDelete' (Maybe Text)
updUserIP
  = lens _updUserIP (\ s a -> s{_updUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
updKey :: Lens' UsersPhotosDelete' (Maybe AuthKey)
updKey = lens _updKey (\ s a -> s{_updKey = a})

-- | OAuth 2.0 token for the current user.
updOAuthToken :: Lens' UsersPhotosDelete' (Maybe OAuthToken)
updOAuthToken
  = lens _updOAuthToken
      (\ s a -> s{_updOAuthToken = a})

-- | Email or immutable Id of the user
updUserKey :: Lens' UsersPhotosDelete' Text
updUserKey
  = lens _updUserKey (\ s a -> s{_updUserKey = a})

-- | Selector specifying which fields to include in a partial response.
updFields :: Lens' UsersPhotosDelete' (Maybe Text)
updFields
  = lens _updFields (\ s a -> s{_updFields = a})

instance GoogleAuth UsersPhotosDelete' where
        _AuthKey = updKey . _Just
        _AuthToken = updOAuthToken . _Just

instance GoogleRequest UsersPhotosDelete' where
        type Rs UsersPhotosDelete' = ()
        request = requestWith directoryRequest
        requestWith rq UsersPhotosDelete'{..}
          = go _updUserKey _updQuotaUser (Just _updPrettyPrint)
              _updUserIP
              _updFields
              _updKey
              _updOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersPhotosDeleteResource)
                      rq
