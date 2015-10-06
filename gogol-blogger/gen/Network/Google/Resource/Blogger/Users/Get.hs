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
module Network.Google.Resource.Blogger.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet'
    , UsersGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugUserIP
    , ugUserId
    , ugKey
    , ugOAuthToken
    , ugFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerUsersGet@ which the
-- 'UsersGet'' request conforms to.
type UsersGetResource =
     "users" :>
       Capture "userId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Gets one user by ID.
--
-- /See:/ 'usersGet'' smart constructor.
data UsersGet' = UsersGet'
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugUserIP      :: !(Maybe Text)
    , _ugUserId      :: !Text
    , _ugKey         :: !(Maybe AuthKey)
    , _ugOAuthToken  :: !(Maybe OAuthToken)
    , _ugFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugUserIP'
--
-- * 'ugUserId'
--
-- * 'ugKey'
--
-- * 'ugOAuthToken'
--
-- * 'ugFields'
usersGet'
    :: Text -- ^ 'userId'
    -> UsersGet'
usersGet' pUgUserId_ =
    UsersGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugUserIP = Nothing
    , _ugUserId = pUgUserId_
    , _ugKey = Nothing
    , _ugOAuthToken = Nothing
    , _ugFields = Nothing
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
ugUserIP :: Lens' UsersGet' (Maybe Text)
ugUserIP = lens _ugUserIP (\ s a -> s{_ugUserIP = a})

-- | The ID of the user to get.
ugUserId :: Lens' UsersGet' Text
ugUserId = lens _ugUserId (\ s a -> s{_ugUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' UsersGet' (Maybe AuthKey)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | OAuth 2.0 token for the current user.
ugOAuthToken :: Lens' UsersGet' (Maybe OAuthToken)
ugOAuthToken
  = lens _ugOAuthToken (\ s a -> s{_ugOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' UsersGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

instance GoogleAuth UsersGet' where
        authKey = ugKey . _Just
        authToken = ugOAuthToken . _Just

instance GoogleRequest UsersGet' where
        type Rs UsersGet' = User
        request = requestWith bloggerRequest
        requestWith rq UsersGet'{..}
          = go _ugUserId _ugQuotaUser (Just _ugPrettyPrint)
              _ugUserIP
              _ugFields
              _ugKey
              _ugOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy UsersGetResource) rq
