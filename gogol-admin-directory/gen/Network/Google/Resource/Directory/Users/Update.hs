{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Directory.Users.Update
    (
    -- * REST Resource
      UsersUpdateAPI

    -- * Creating a Request
    , usersUpdate
    , UsersUpdate

    -- * Request Lenses
    , uQuotaUser
    , uPrettyPrint
    , uUserIp
    , uKey
    , uOauthToken
    , uUserKey
    , uFields
    , uAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersUpdate@ which the
-- 'UsersUpdate' request conforms to.
type UsersUpdateAPI =
     "users" :> Capture "userKey" Text :> Put '[JSON] User

-- | update user
--
-- /See:/ 'usersUpdate' smart constructor.
data UsersUpdate = UsersUpdate
    { _uQuotaUser   :: !(Maybe Text)
    , _uPrettyPrint :: !Bool
    , _uUserIp      :: !(Maybe Text)
    , _uKey         :: !(Maybe Text)
    , _uOauthToken  :: !(Maybe Text)
    , _uUserKey     :: !Text
    , _uFields      :: !(Maybe Text)
    , _uAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uQuotaUser'
--
-- * 'uPrettyPrint'
--
-- * 'uUserIp'
--
-- * 'uKey'
--
-- * 'uOauthToken'
--
-- * 'uUserKey'
--
-- * 'uFields'
--
-- * 'uAlt'
usersUpdate
    :: Text -- ^ 'userKey'
    -> UsersUpdate
usersUpdate pUUserKey_ =
    UsersUpdate
    { _uQuotaUser = Nothing
    , _uPrettyPrint = True
    , _uUserIp = Nothing
    , _uKey = Nothing
    , _uOauthToken = Nothing
    , _uUserKey = pUUserKey_
    , _uFields = Nothing
    , _uAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uQuotaUser :: Lens' UsersUpdate' (Maybe Text)
uQuotaUser
  = lens _uQuotaUser (\ s a -> s{_uQuotaUser = a})

-- | Returns response with indentations and line breaks.
uPrettyPrint :: Lens' UsersUpdate' Bool
uPrettyPrint
  = lens _uPrettyPrint (\ s a -> s{_uPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uUserIp :: Lens' UsersUpdate' (Maybe Text)
uUserIp = lens _uUserIp (\ s a -> s{_uUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uKey :: Lens' UsersUpdate' (Maybe Text)
uKey = lens _uKey (\ s a -> s{_uKey = a})

-- | OAuth 2.0 token for the current user.
uOauthToken :: Lens' UsersUpdate' (Maybe Text)
uOauthToken
  = lens _uOauthToken (\ s a -> s{_uOauthToken = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- user object
uUserKey :: Lens' UsersUpdate' Text
uUserKey = lens _uUserKey (\ s a -> s{_uUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uFields :: Lens' UsersUpdate' (Maybe Text)
uFields = lens _uFields (\ s a -> s{_uFields = a})

-- | Data format for the response.
uAlt :: Lens' UsersUpdate' Text
uAlt = lens _uAlt (\ s a -> s{_uAlt = a})

instance GoogleRequest UsersUpdate' where
        type Rs UsersUpdate' = User
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersUpdate{..}
          = go _uQuotaUser _uPrettyPrint _uUserIp _uKey
              _uOauthToken
              _uUserKey
              _uFields
              _uAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersUpdateAPI) r u
