{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouduseraccounts.Users.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified User resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.users.get@.
module Network.Google.API.Clouduseraccounts.Users.Get
    (
    -- * REST Resource
      UsersGetAPI

    -- * Creating a Request
    , usersGet'
    , UsersGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugProject
    , ugUserIp
    , ugUser
    , ugKey
    , ugOauthToken
    , ugFields
    , ugAlt
    ) where

import           Network.Google.Compute.UserAccounts.Types
import           Network.Google.Prelude

-- | A resource alias for clouduseraccounts.users.get which the
-- 'UsersGet'' request conforms to.
type UsersGetAPI =
     Capture "project" Text :>
       "global" :>
         "users" :>
           Capture "user" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] User

-- | Returns the specified User resource.
--
-- /See:/ 'usersGet'' smart constructor.
data UsersGet' = UsersGet'
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugProject     :: !Text
    , _ugUserIp      :: !(Maybe Text)
    , _ugUser        :: !Text
    , _ugKey         :: !(Maybe Text)
    , _ugOauthToken  :: !(Maybe Text)
    , _ugFields      :: !(Maybe Text)
    , _ugAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugProject'
--
-- * 'ugUserIp'
--
-- * 'ugUser'
--
-- * 'ugKey'
--
-- * 'ugOauthToken'
--
-- * 'ugFields'
--
-- * 'ugAlt'
usersGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'user'
    -> UsersGet'
usersGet' pUgProject_ pUgUser_ =
    UsersGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugProject = pUgProject_
    , _ugUserIp = Nothing
    , _ugUser = pUgUser_
    , _ugKey = Nothing
    , _ugOauthToken = Nothing
    , _ugFields = Nothing
    , _ugAlt = JSON
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

-- | Project ID for this request.
ugProject :: Lens' UsersGet' Text
ugProject
  = lens _ugProject (\ s a -> s{_ugProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIp :: Lens' UsersGet' (Maybe Text)
ugUserIp = lens _ugUserIp (\ s a -> s{_ugUserIp = a})

-- | Name of the user resource to return.
ugUser :: Lens' UsersGet' Text
ugUser = lens _ugUser (\ s a -> s{_ugUser = a})

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
ugAlt :: Lens' UsersGet' Alt
ugAlt = lens _ugAlt (\ s a -> s{_ugAlt = a})

instance GoogleRequest UsersGet' where
        type Rs UsersGet' = User
        request
          = requestWithRoute defReq computeUserAccountsURL
        requestWithRoute r u UsersGet'{..}
          = go _ugQuotaUser (Just _ugPrettyPrint) _ugProject
              _ugUserIp
              _ugUser
              _ugKey
              _ugOauthToken
              _ugFields
              (Just _ugAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersGetAPI) r u
