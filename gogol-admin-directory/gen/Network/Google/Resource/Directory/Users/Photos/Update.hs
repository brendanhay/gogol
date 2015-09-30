{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Directory.Users.Photos.Update
    (
    -- * REST Resource
      UsersPhotosUpdateAPI

    -- * Creating a Request
    , usersPhotosUpdate
    , UsersPhotosUpdate

    -- * Request Lenses
    , upuQuotaUser
    , upuPrettyPrint
    , upuUserIp
    , upuKey
    , upuOauthToken
    , upuUserKey
    , upuFields
    , upuAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosUpdate@ which the
-- 'UsersPhotosUpdate' request conforms to.
type UsersPhotosUpdateAPI =
     "users" :>
       Capture "userKey" Text :>
         "photos" :> "thumbnail" :> Put '[JSON] UserPhoto

-- | Add a photo for the user
--
-- /See:/ 'usersPhotosUpdate' smart constructor.
data UsersPhotosUpdate = UsersPhotosUpdate
    { _upuQuotaUser   :: !(Maybe Text)
    , _upuPrettyPrint :: !Bool
    , _upuUserIp      :: !(Maybe Text)
    , _upuKey         :: !(Maybe Text)
    , _upuOauthToken  :: !(Maybe Text)
    , _upuUserKey     :: !Text
    , _upuFields      :: !(Maybe Text)
    , _upuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upuQuotaUser'
--
-- * 'upuPrettyPrint'
--
-- * 'upuUserIp'
--
-- * 'upuKey'
--
-- * 'upuOauthToken'
--
-- * 'upuUserKey'
--
-- * 'upuFields'
--
-- * 'upuAlt'
usersPhotosUpdate
    :: Text -- ^ 'userKey'
    -> UsersPhotosUpdate
usersPhotosUpdate pUpuUserKey_ =
    UsersPhotosUpdate
    { _upuQuotaUser = Nothing
    , _upuPrettyPrint = True
    , _upuUserIp = Nothing
    , _upuKey = Nothing
    , _upuOauthToken = Nothing
    , _upuUserKey = pUpuUserKey_
    , _upuFields = Nothing
    , _upuAlt = "json"
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
upuUserIp :: Lens' UsersPhotosUpdate' (Maybe Text)
upuUserIp
  = lens _upuUserIp (\ s a -> s{_upuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upuKey :: Lens' UsersPhotosUpdate' (Maybe Text)
upuKey = lens _upuKey (\ s a -> s{_upuKey = a})

-- | OAuth 2.0 token for the current user.
upuOauthToken :: Lens' UsersPhotosUpdate' (Maybe Text)
upuOauthToken
  = lens _upuOauthToken
      (\ s a -> s{_upuOauthToken = a})

-- | Email or immutable Id of the user
upuUserKey :: Lens' UsersPhotosUpdate' Text
upuUserKey
  = lens _upuUserKey (\ s a -> s{_upuUserKey = a})

-- | Selector specifying which fields to include in a partial response.
upuFields :: Lens' UsersPhotosUpdate' (Maybe Text)
upuFields
  = lens _upuFields (\ s a -> s{_upuFields = a})

-- | Data format for the response.
upuAlt :: Lens' UsersPhotosUpdate' Text
upuAlt = lens _upuAlt (\ s a -> s{_upuAlt = a})

instance GoogleRequest UsersPhotosUpdate' where
        type Rs UsersPhotosUpdate' = UserPhoto
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersPhotosUpdate{..}
          = go _upuQuotaUser _upuPrettyPrint _upuUserIp _upuKey
              _upuOauthToken
              _upuUserKey
              _upuFields
              _upuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersPhotosUpdateAPI)
                      r
                      u
