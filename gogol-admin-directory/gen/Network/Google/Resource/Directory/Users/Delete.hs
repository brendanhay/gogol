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
-- Module      : Network.Google.Resource.Directory.Users.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersDelete@.
module Network.Google.Resource.Directory.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete'
    , UsersDelete'

    -- * Request Lenses
    , udQuotaUser
    , udPrettyPrint
    , udUserIp
    , udKey
    , udOauthToken
    , udUserKey
    , udFields
    , udAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersDelete@ which the
-- 'UsersDelete'' request conforms to.
type UsersDeleteResource =
     "users" :>
       Capture "userKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete user
--
-- /See:/ 'usersDelete'' smart constructor.
data UsersDelete' = UsersDelete'
    { _udQuotaUser   :: !(Maybe Text)
    , _udPrettyPrint :: !Bool
    , _udUserIp      :: !(Maybe Text)
    , _udKey         :: !(Maybe Text)
    , _udOauthToken  :: !(Maybe Text)
    , _udUserKey     :: !Text
    , _udFields      :: !(Maybe Text)
    , _udAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udQuotaUser'
--
-- * 'udPrettyPrint'
--
-- * 'udUserIp'
--
-- * 'udKey'
--
-- * 'udOauthToken'
--
-- * 'udUserKey'
--
-- * 'udFields'
--
-- * 'udAlt'
usersDelete'
    :: Text -- ^ 'userKey'
    -> UsersDelete'
usersDelete' pUdUserKey_ =
    UsersDelete'
    { _udQuotaUser = Nothing
    , _udPrettyPrint = True
    , _udUserIp = Nothing
    , _udKey = Nothing
    , _udOauthToken = Nothing
    , _udUserKey = pUdUserKey_
    , _udFields = Nothing
    , _udAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udQuotaUser :: Lens' UsersDelete' (Maybe Text)
udQuotaUser
  = lens _udQuotaUser (\ s a -> s{_udQuotaUser = a})

-- | Returns response with indentations and line breaks.
udPrettyPrint :: Lens' UsersDelete' Bool
udPrettyPrint
  = lens _udPrettyPrint
      (\ s a -> s{_udPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udUserIp :: Lens' UsersDelete' (Maybe Text)
udUserIp = lens _udUserIp (\ s a -> s{_udUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udKey :: Lens' UsersDelete' (Maybe Text)
udKey = lens _udKey (\ s a -> s{_udKey = a})

-- | OAuth 2.0 token for the current user.
udOauthToken :: Lens' UsersDelete' (Maybe Text)
udOauthToken
  = lens _udOauthToken (\ s a -> s{_udOauthToken = a})

-- | Email or immutable Id of the user
udUserKey :: Lens' UsersDelete' Text
udUserKey
  = lens _udUserKey (\ s a -> s{_udUserKey = a})

-- | Selector specifying which fields to include in a partial response.
udFields :: Lens' UsersDelete' (Maybe Text)
udFields = lens _udFields (\ s a -> s{_udFields = a})

-- | Data format for the response.
udAlt :: Lens' UsersDelete' Alt
udAlt = lens _udAlt (\ s a -> s{_udAlt = a})

instance GoogleRequest UsersDelete' where
        type Rs UsersDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersDelete'{..}
          = go _udQuotaUser (Just _udPrettyPrint) _udUserIp
              _udKey
              _udOauthToken
              _udUserKey
              _udFields
              (Just _udAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDeleteResource)
                      r
                      u
