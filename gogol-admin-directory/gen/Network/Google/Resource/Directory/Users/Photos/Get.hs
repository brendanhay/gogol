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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve photo of a user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersPhotosGet@.
module Network.Google.Resource.Directory.Users.Photos.Get
    (
    -- * REST Resource
      UsersPhotosGetResource

    -- * Creating a Request
    , usersPhotosGet'
    , UsersPhotosGet'

    -- * Request Lenses
    , upgQuotaUser
    , upgPrettyPrint
    , upgUserIP
    , upgKey
    , upgOAuthToken
    , upgUserKey
    , upgFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosGet@ which the
-- 'UsersPhotosGet'' request conforms to.
type UsersPhotosGetResource =
     "users" :>
       Capture "userKey" Text :>
         "photos" :>
           "thumbnail" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] UserPhoto

-- | Retrieve photo of a user
--
-- /See:/ 'usersPhotosGet'' smart constructor.
data UsersPhotosGet' = UsersPhotosGet'
    { _upgQuotaUser   :: !(Maybe Text)
    , _upgPrettyPrint :: !Bool
    , _upgUserIP      :: !(Maybe Text)
    , _upgKey         :: !(Maybe Key)
    , _upgOAuthToken  :: !(Maybe OAuthToken)
    , _upgUserKey     :: !Text
    , _upgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upgQuotaUser'
--
-- * 'upgPrettyPrint'
--
-- * 'upgUserIP'
--
-- * 'upgKey'
--
-- * 'upgOAuthToken'
--
-- * 'upgUserKey'
--
-- * 'upgFields'
usersPhotosGet'
    :: Text -- ^ 'userKey'
    -> UsersPhotosGet'
usersPhotosGet' pUpgUserKey_ =
    UsersPhotosGet'
    { _upgQuotaUser = Nothing
    , _upgPrettyPrint = True
    , _upgUserIP = Nothing
    , _upgKey = Nothing
    , _upgOAuthToken = Nothing
    , _upgUserKey = pUpgUserKey_
    , _upgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
upgQuotaUser :: Lens' UsersPhotosGet' (Maybe Text)
upgQuotaUser
  = lens _upgQuotaUser (\ s a -> s{_upgQuotaUser = a})

-- | Returns response with indentations and line breaks.
upgPrettyPrint :: Lens' UsersPhotosGet' Bool
upgPrettyPrint
  = lens _upgPrettyPrint
      (\ s a -> s{_upgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
upgUserIP :: Lens' UsersPhotosGet' (Maybe Text)
upgUserIP
  = lens _upgUserIP (\ s a -> s{_upgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upgKey :: Lens' UsersPhotosGet' (Maybe Key)
upgKey = lens _upgKey (\ s a -> s{_upgKey = a})

-- | OAuth 2.0 token for the current user.
upgOAuthToken :: Lens' UsersPhotosGet' (Maybe OAuthToken)
upgOAuthToken
  = lens _upgOAuthToken
      (\ s a -> s{_upgOAuthToken = a})

-- | Email or immutable Id of the user
upgUserKey :: Lens' UsersPhotosGet' Text
upgUserKey
  = lens _upgUserKey (\ s a -> s{_upgUserKey = a})

-- | Selector specifying which fields to include in a partial response.
upgFields :: Lens' UsersPhotosGet' (Maybe Text)
upgFields
  = lens _upgFields (\ s a -> s{_upgFields = a})

instance GoogleAuth UsersPhotosGet' where
        authKey = upgKey . _Just
        authToken = upgOAuthToken . _Just

instance GoogleRequest UsersPhotosGet' where
        type Rs UsersPhotosGet' = UserPhoto
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersPhotosGet'{..}
          = go _upgUserKey _upgQuotaUser (Just _upgPrettyPrint)
              _upgUserIP
              _upgFields
              _upgKey
              _upgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersPhotosGetResource)
                      r
                      u
