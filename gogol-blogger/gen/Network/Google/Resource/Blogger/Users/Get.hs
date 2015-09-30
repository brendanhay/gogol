{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Users.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerUsersGet@.
module Blogger.Users.Get
    (
    -- * REST Resource
      UsersGetAPI

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugUserIp
    , ugUserId
    , ugKey
    , ugOauthToken
    , ugFields
    , ugAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerUsersGet@ which the
-- 'UsersGet' request conforms to.
type UsersGetAPI =
     "users" :> Capture "userId" Text :> Get '[JSON] User

-- | Gets one user by ID.
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet = UsersGet
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugUserIp      :: !(Maybe Text)
    , _ugUserId      :: !Text
    , _ugKey         :: !(Maybe Text)
    , _ugOauthToken  :: !(Maybe Text)
    , _ugFields      :: !(Maybe Text)
    , _ugAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugUserIp'
--
-- * 'ugUserId'
--
-- * 'ugKey'
--
-- * 'ugOauthToken'
--
-- * 'ugFields'
--
-- * 'ugAlt'
usersGet
    :: Text -- ^ 'userId'
    -> UsersGet
usersGet pUgUserId_ =
    UsersGet
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugUserIp = Nothing
    , _ugUserId = pUgUserId_
    , _ugKey = Nothing
    , _ugOauthToken = Nothing
    , _ugFields = Nothing
    , _ugAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugQuotaUser :: Lens' UsersGet' (Maybe Text)
ugQuotaUser
  = lens _ugQuotaUser (\ s a -> s{_ugQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugPrettyPrint :: Lens' UsersGet' Bool
ugPrettyPrint
  = lens _ugPrettyPrint
      (\ s a -> s{_ugPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIp :: Lens' UsersGet' (Maybe Text)
ugUserIp = lens _ugUserIp (\ s a -> s{_ugUserIp = a})

-- | The ID of the user to get.
ugUserId :: Lens' UsersGet' Text
ugUserId = lens _ugUserId (\ s a -> s{_ugUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' UsersGet' (Maybe Text)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | OAuth 2.0 token for the current user.
ugOauthToken :: Lens' UsersGet' (Maybe Text)
ugOauthToken
  = lens _ugOauthToken (\ s a -> s{_ugOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' UsersGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

-- | Data format for the response.
ugAlt :: Lens' UsersGet' Text
ugAlt = lens _ugAlt (\ s a -> s{_ugAlt = a})

instance GoogleRequest UsersGet' where
        type Rs UsersGet' = User
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u UsersGet{..}
          = go _ugQuotaUser _ugPrettyPrint _ugUserIp _ugUserId
              _ugKey
              _ugOauthToken
              _ugFields
              _ugAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersGetAPI) r u
