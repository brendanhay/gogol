{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Users.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undelete a deleted user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersUndelete@.
module Directory.Users.Undelete
    (
    -- * REST Resource
      UsersUndeleteAPI

    -- * Creating a Request
    , usersUndelete
    , UsersUndelete

    -- * Request Lenses
    , uuQuotaUser
    , uuPrettyPrint
    , uuUserIp
    , uuKey
    , uuOauthToken
    , uuUserKey
    , uuFields
    , uuAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersUndelete@ which the
-- 'UsersUndelete' request conforms to.
type UsersUndeleteAPI =
     "users" :>
       Capture "userKey" Text :>
         "undelete" :> Post '[JSON] ()

-- | Undelete a deleted user
--
-- /See:/ 'usersUndelete' smart constructor.
data UsersUndelete = UsersUndelete
    { _uuQuotaUser   :: !(Maybe Text)
    , _uuPrettyPrint :: !Bool
    , _uuUserIp      :: !(Maybe Text)
    , _uuKey         :: !(Maybe Text)
    , _uuOauthToken  :: !(Maybe Text)
    , _uuUserKey     :: !Text
    , _uuFields      :: !(Maybe Text)
    , _uuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuQuotaUser'
--
-- * 'uuPrettyPrint'
--
-- * 'uuUserIp'
--
-- * 'uuKey'
--
-- * 'uuOauthToken'
--
-- * 'uuUserKey'
--
-- * 'uuFields'
--
-- * 'uuAlt'
usersUndelete
    :: Text -- ^ 'userKey'
    -> UsersUndelete
usersUndelete pUuUserKey_ =
    UsersUndelete
    { _uuQuotaUser = Nothing
    , _uuPrettyPrint = True
    , _uuUserIp = Nothing
    , _uuKey = Nothing
    , _uuOauthToken = Nothing
    , _uuUserKey = pUuUserKey_
    , _uuFields = Nothing
    , _uuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uuQuotaUser :: Lens' UsersUndelete' (Maybe Text)
uuQuotaUser
  = lens _uuQuotaUser (\ s a -> s{_uuQuotaUser = a})

-- | Returns response with indentations and line breaks.
uuPrettyPrint :: Lens' UsersUndelete' Bool
uuPrettyPrint
  = lens _uuPrettyPrint
      (\ s a -> s{_uuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uuUserIp :: Lens' UsersUndelete' (Maybe Text)
uuUserIp = lens _uuUserIp (\ s a -> s{_uuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uuKey :: Lens' UsersUndelete' (Maybe Text)
uuKey = lens _uuKey (\ s a -> s{_uuKey = a})

-- | OAuth 2.0 token for the current user.
uuOauthToken :: Lens' UsersUndelete' (Maybe Text)
uuOauthToken
  = lens _uuOauthToken (\ s a -> s{_uuOauthToken = a})

-- | The immutable id of the user
uuUserKey :: Lens' UsersUndelete' Text
uuUserKey
  = lens _uuUserKey (\ s a -> s{_uuUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uuFields :: Lens' UsersUndelete' (Maybe Text)
uuFields = lens _uuFields (\ s a -> s{_uuFields = a})

-- | Data format for the response.
uuAlt :: Lens' UsersUndelete' Text
uuAlt = lens _uuAlt (\ s a -> s{_uuAlt = a})

instance GoogleRequest UsersUndelete' where
        type Rs UsersUndelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersUndelete{..}
          = go _uuQuotaUser _uuPrettyPrint _uuUserIp _uuKey
              _uuOauthToken
              _uuUserKey
              _uuFields
              _uuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersUndeleteAPI) r
                      u
