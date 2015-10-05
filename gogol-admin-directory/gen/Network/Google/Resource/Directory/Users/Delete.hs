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
    , udUserIP
    , udKey
    , udOAuthToken
    , udUserKey
    , udFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersDelete@ which the
-- 'UsersDelete'' request conforms to.
type UsersDeleteResource =
     "users" :>
       Capture "userKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete user
--
-- /See:/ 'usersDelete'' smart constructor.
data UsersDelete' = UsersDelete'
    { _udQuotaUser   :: !(Maybe Text)
    , _udPrettyPrint :: !Bool
    , _udUserIP      :: !(Maybe Text)
    , _udKey         :: !(Maybe Key)
    , _udOAuthToken  :: !(Maybe OAuthToken)
    , _udUserKey     :: !Text
    , _udFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udQuotaUser'
--
-- * 'udPrettyPrint'
--
-- * 'udUserIP'
--
-- * 'udKey'
--
-- * 'udOAuthToken'
--
-- * 'udUserKey'
--
-- * 'udFields'
usersDelete'
    :: Text -- ^ 'userKey'
    -> UsersDelete'
usersDelete' pUdUserKey_ =
    UsersDelete'
    { _udQuotaUser = Nothing
    , _udPrettyPrint = True
    , _udUserIP = Nothing
    , _udKey = Nothing
    , _udOAuthToken = Nothing
    , _udUserKey = pUdUserKey_
    , _udFields = Nothing
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
udUserIP :: Lens' UsersDelete' (Maybe Text)
udUserIP = lens _udUserIP (\ s a -> s{_udUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udKey :: Lens' UsersDelete' (Maybe Key)
udKey = lens _udKey (\ s a -> s{_udKey = a})

-- | OAuth 2.0 token for the current user.
udOAuthToken :: Lens' UsersDelete' (Maybe OAuthToken)
udOAuthToken
  = lens _udOAuthToken (\ s a -> s{_udOAuthToken = a})

-- | Email or immutable Id of the user
udUserKey :: Lens' UsersDelete' Text
udUserKey
  = lens _udUserKey (\ s a -> s{_udUserKey = a})

-- | Selector specifying which fields to include in a partial response.
udFields :: Lens' UsersDelete' (Maybe Text)
udFields = lens _udFields (\ s a -> s{_udFields = a})

instance GoogleAuth UsersDelete' where
        authKey = udKey . _Just
        authToken = udOAuthToken . _Just

instance GoogleRequest UsersDelete' where
        type Rs UsersDelete' = ()
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u UsersDelete'{..}
          = go _udUserKey _udQuotaUser (Just _udPrettyPrint)
              _udUserIP
              _udFields
              _udKey
              _udOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDeleteResource)
                      r
                      u
