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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified User resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsUsersDelete@.
module Network.Google.Resource.CloudUserAccounts.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete'
    , UsersDelete'

    -- * Request Lenses
    , udQuotaUser
    , udPrettyPrint
    , udProject
    , udUserIP
    , udUser
    , udKey
    , udOAuthToken
    , udFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsUsersDelete@ which the
-- 'UsersDelete'' request conforms to.
type UsersDeleteResource =
     Capture "project" Text :>
       "global" :>
         "users" :>
           Capture "user" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified User resource.
--
-- /See:/ 'usersDelete'' smart constructor.
data UsersDelete' = UsersDelete'
    { _udQuotaUser   :: !(Maybe Text)
    , _udPrettyPrint :: !Bool
    , _udProject     :: !Text
    , _udUserIP      :: !(Maybe Text)
    , _udUser        :: !Text
    , _udKey         :: !(Maybe Key)
    , _udOAuthToken  :: !(Maybe OAuthToken)
    , _udFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udQuotaUser'
--
-- * 'udPrettyPrint'
--
-- * 'udProject'
--
-- * 'udUserIP'
--
-- * 'udUser'
--
-- * 'udKey'
--
-- * 'udOAuthToken'
--
-- * 'udFields'
usersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'user'
    -> UsersDelete'
usersDelete' pUdProject_ pUdUser_ =
    UsersDelete'
    { _udQuotaUser = Nothing
    , _udPrettyPrint = True
    , _udProject = pUdProject_
    , _udUserIP = Nothing
    , _udUser = pUdUser_
    , _udKey = Nothing
    , _udOAuthToken = Nothing
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

-- | Project ID for this request.
udProject :: Lens' UsersDelete' Text
udProject
  = lens _udProject (\ s a -> s{_udProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udUserIP :: Lens' UsersDelete' (Maybe Text)
udUserIP = lens _udUserIP (\ s a -> s{_udUserIP = a})

-- | Name of the user resource to delete.
udUser :: Lens' UsersDelete' Text
udUser = lens _udUser (\ s a -> s{_udUser = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udKey :: Lens' UsersDelete' (Maybe Key)
udKey = lens _udKey (\ s a -> s{_udKey = a})

-- | OAuth 2.0 token for the current user.
udOAuthToken :: Lens' UsersDelete' (Maybe OAuthToken)
udOAuthToken
  = lens _udOAuthToken (\ s a -> s{_udOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udFields :: Lens' UsersDelete' (Maybe Text)
udFields = lens _udFields (\ s a -> s{_udFields = a})

instance GoogleAuth UsersDelete' where
        authKey = udKey . _Just
        authToken = udOAuthToken . _Just

instance GoogleRequest UsersDelete' where
        type Rs UsersDelete' = Operation
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u UsersDelete'{..}
          = go _udQuotaUser (Just _udPrettyPrint) _udProject
              _udUserIP
              _udUser
              _udKey
              _udOAuthToken
              _udFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDeleteResource)
                      r
                      u
