{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Directory.Users.Photos.Get
    (
    -- * REST Resource
      UsersPhotosGetAPI

    -- * Creating a Request
    , usersPhotosGet
    , UsersPhotosGet

    -- * Request Lenses
    , upgQuotaUser
    , upgPrettyPrint
    , upgUserIp
    , upgKey
    , upgOauthToken
    , upgUserKey
    , upgFields
    , upgAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosGet@ which the
-- 'UsersPhotosGet' request conforms to.
type UsersPhotosGetAPI =
     "users" :>
       Capture "userKey" Text :>
         "photos" :> "thumbnail" :> Get '[JSON] UserPhoto

-- | Retrieve photo of a user
--
-- /See:/ 'usersPhotosGet' smart constructor.
data UsersPhotosGet = UsersPhotosGet
    { _upgQuotaUser   :: !(Maybe Text)
    , _upgPrettyPrint :: !Bool
    , _upgUserIp      :: !(Maybe Text)
    , _upgKey         :: !(Maybe Text)
    , _upgOauthToken  :: !(Maybe Text)
    , _upgUserKey     :: !Text
    , _upgFields      :: !(Maybe Text)
    , _upgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upgQuotaUser'
--
-- * 'upgPrettyPrint'
--
-- * 'upgUserIp'
--
-- * 'upgKey'
--
-- * 'upgOauthToken'
--
-- * 'upgUserKey'
--
-- * 'upgFields'
--
-- * 'upgAlt'
usersPhotosGet
    :: Text -- ^ 'userKey'
    -> UsersPhotosGet
usersPhotosGet pUpgUserKey_ =
    UsersPhotosGet
    { _upgQuotaUser = Nothing
    , _upgPrettyPrint = True
    , _upgUserIp = Nothing
    , _upgKey = Nothing
    , _upgOauthToken = Nothing
    , _upgUserKey = pUpgUserKey_
    , _upgFields = Nothing
    , _upgAlt = "json"
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
upgUserIp :: Lens' UsersPhotosGet' (Maybe Text)
upgUserIp
  = lens _upgUserIp (\ s a -> s{_upgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upgKey :: Lens' UsersPhotosGet' (Maybe Text)
upgKey = lens _upgKey (\ s a -> s{_upgKey = a})

-- | OAuth 2.0 token for the current user.
upgOauthToken :: Lens' UsersPhotosGet' (Maybe Text)
upgOauthToken
  = lens _upgOauthToken
      (\ s a -> s{_upgOauthToken = a})

-- | Email or immutable Id of the user
upgUserKey :: Lens' UsersPhotosGet' Text
upgUserKey
  = lens _upgUserKey (\ s a -> s{_upgUserKey = a})

-- | Selector specifying which fields to include in a partial response.
upgFields :: Lens' UsersPhotosGet' (Maybe Text)
upgFields
  = lens _upgFields (\ s a -> s{_upgFields = a})

-- | Data format for the response.
upgAlt :: Lens' UsersPhotosGet' Text
upgAlt = lens _upgAlt (\ s a -> s{_upgAlt = a})

instance GoogleRequest UsersPhotosGet' where
        type Rs UsersPhotosGet' = UserPhoto
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersPhotosGet{..}
          = go _upgQuotaUser _upgPrettyPrint _upgUserIp _upgKey
              _upgOauthToken
              _upgUserKey
              _upgFields
              _upgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersPhotosGetAPI)
                      r
                      u
