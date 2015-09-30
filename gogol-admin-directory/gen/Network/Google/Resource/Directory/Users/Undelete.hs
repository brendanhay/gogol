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
module Network.Google.Resource.Directory.Users.Undelete
    (
    -- * REST Resource
      UsersUndeleteResource

    -- * Creating a Request
    , usersUndelete'
    , UsersUndelete'

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

-- | A resource alias for @DirectoryUsersUndelete@ which the
-- 'UsersUndelete'' request conforms to.
type UsersUndeleteResource =
     "users" :>
       Capture "userKey" Text :>
         "undelete" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Undelete a deleted user
--
-- /See:/ 'usersUndelete'' smart constructor.
data UsersUndelete' = UsersUndelete'
    { _uQuotaUser   :: !(Maybe Text)
    , _uPrettyPrint :: !Bool
    , _uUserIp      :: !(Maybe Text)
    , _uKey         :: !(Maybe Text)
    , _uOauthToken  :: !(Maybe Text)
    , _uUserKey     :: !Text
    , _uFields      :: !(Maybe Text)
    , _uAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUndelete'' with the minimum fields required to make a request.
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
usersUndelete'
    :: Text -- ^ 'userKey'
    -> UsersUndelete'
usersUndelete' pUUserKey_ =
    UsersUndelete'
    { _uQuotaUser = Nothing
    , _uPrettyPrint = True
    , _uUserIp = Nothing
    , _uKey = Nothing
    , _uOauthToken = Nothing
    , _uUserKey = pUUserKey_
    , _uFields = Nothing
    , _uAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uQuotaUser :: Lens' UsersUndelete' (Maybe Text)
uQuotaUser
  = lens _uQuotaUser (\ s a -> s{_uQuotaUser = a})

-- | Returns response with indentations and line breaks.
uPrettyPrint :: Lens' UsersUndelete' Bool
uPrettyPrint
  = lens _uPrettyPrint (\ s a -> s{_uPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uUserIp :: Lens' UsersUndelete' (Maybe Text)
uUserIp = lens _uUserIp (\ s a -> s{_uUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uKey :: Lens' UsersUndelete' (Maybe Text)
uKey = lens _uKey (\ s a -> s{_uKey = a})

-- | OAuth 2.0 token for the current user.
uOauthToken :: Lens' UsersUndelete' (Maybe Text)
uOauthToken
  = lens _uOauthToken (\ s a -> s{_uOauthToken = a})

-- | The immutable id of the user
uUserKey :: Lens' UsersUndelete' Text
uUserKey = lens _uUserKey (\ s a -> s{_uUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uFields :: Lens' UsersUndelete' (Maybe Text)
uFields = lens _uFields (\ s a -> s{_uFields = a})

-- | Data format for the response.
uAlt :: Lens' UsersUndelete' Alt
uAlt = lens _uAlt (\ s a -> s{_uAlt = a})

instance GoogleRequest UsersUndelete' where
        type Rs UsersUndelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersUndelete'{..}
          = go _uQuotaUser (Just _uPrettyPrint) _uUserIp _uKey
              _uOauthToken
              _uUserKey
              _uFields
              (Just _uAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersUndeleteResource)
                      r
                      u
