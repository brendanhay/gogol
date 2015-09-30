{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Directory.Users.Photos.Delete
    (
    -- * REST Resource
      UsersPhotosDeleteAPI

    -- * Creating a Request
    , usersPhotosDelete
    , UsersPhotosDelete

    -- * Request Lenses
    , updQuotaUser
    , updPrettyPrint
    , updUserIp
    , updKey
    , updOauthToken
    , updUserKey
    , updFields
    , updAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPhotosDelete@ which the
-- 'UsersPhotosDelete' request conforms to.
type UsersPhotosDeleteAPI =
     "users" :>
       Capture "userKey" Text :>
         "photos" :> "thumbnail" :> Delete '[JSON] ()

-- | Remove photos for the user
--
-- /See:/ 'usersPhotosDelete' smart constructor.
data UsersPhotosDelete = UsersPhotosDelete
    { _updQuotaUser   :: !(Maybe Text)
    , _updPrettyPrint :: !Bool
    , _updUserIp      :: !(Maybe Text)
    , _updKey         :: !(Maybe Text)
    , _updOauthToken  :: !(Maybe Text)
    , _updUserKey     :: !Text
    , _updFields      :: !(Maybe Text)
    , _updAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updQuotaUser'
--
-- * 'updPrettyPrint'
--
-- * 'updUserIp'
--
-- * 'updKey'
--
-- * 'updOauthToken'
--
-- * 'updUserKey'
--
-- * 'updFields'
--
-- * 'updAlt'
usersPhotosDelete
    :: Text -- ^ 'userKey'
    -> UsersPhotosDelete
usersPhotosDelete pUpdUserKey_ =
    UsersPhotosDelete
    { _updQuotaUser = Nothing
    , _updPrettyPrint = True
    , _updUserIp = Nothing
    , _updKey = Nothing
    , _updOauthToken = Nothing
    , _updUserKey = pUpdUserKey_
    , _updFields = Nothing
    , _updAlt = "json"
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
updUserIp :: Lens' UsersPhotosDelete' (Maybe Text)
updUserIp
  = lens _updUserIp (\ s a -> s{_updUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
updKey :: Lens' UsersPhotosDelete' (Maybe Text)
updKey = lens _updKey (\ s a -> s{_updKey = a})

-- | OAuth 2.0 token for the current user.
updOauthToken :: Lens' UsersPhotosDelete' (Maybe Text)
updOauthToken
  = lens _updOauthToken
      (\ s a -> s{_updOauthToken = a})

-- | Email or immutable Id of the user
updUserKey :: Lens' UsersPhotosDelete' Text
updUserKey
  = lens _updUserKey (\ s a -> s{_updUserKey = a})

-- | Selector specifying which fields to include in a partial response.
updFields :: Lens' UsersPhotosDelete' (Maybe Text)
updFields
  = lens _updFields (\ s a -> s{_updFields = a})

-- | Data format for the response.
updAlt :: Lens' UsersPhotosDelete' Text
updAlt = lens _updAlt (\ s a -> s{_updAlt = a})

instance GoogleRequest UsersPhotosDelete' where
        type Rs UsersPhotosDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersPhotosDelete{..}
          = go _updQuotaUser _updPrettyPrint _updUserIp _updKey
              _updOauthToken
              _updUserKey
              _updFields
              _updAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersPhotosDeleteAPI)
                      r
                      u
