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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a alias for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersAliasesInsert@.
module Network.Google.Resource.Directory.Users.Aliases.Insert
    (
    -- * REST Resource
      UsersAliasesInsertResource

    -- * Creating a Request
    , usersAliasesInsert'
    , UsersAliasesInsert'

    -- * Request Lenses
    , uaiQuotaUser
    , uaiPrettyPrint
    , uaiUserIp
    , uaiKey
    , uaiOauthToken
    , uaiUserKey
    , uaiFields
    , uaiAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersAliasesInsert@ which the
-- 'UsersAliasesInsert'' request conforms to.
type UsersAliasesInsertResource =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Alias

-- | Add a alias for the user
--
-- /See:/ 'usersAliasesInsert'' smart constructor.
data UsersAliasesInsert' = UsersAliasesInsert'
    { _uaiQuotaUser   :: !(Maybe Text)
    , _uaiPrettyPrint :: !Bool
    , _uaiUserIp      :: !(Maybe Text)
    , _uaiKey         :: !(Maybe Text)
    , _uaiOauthToken  :: !(Maybe Text)
    , _uaiUserKey     :: !Text
    , _uaiFields      :: !(Maybe Text)
    , _uaiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaiQuotaUser'
--
-- * 'uaiPrettyPrint'
--
-- * 'uaiUserIp'
--
-- * 'uaiKey'
--
-- * 'uaiOauthToken'
--
-- * 'uaiUserKey'
--
-- * 'uaiFields'
--
-- * 'uaiAlt'
usersAliasesInsert'
    :: Text -- ^ 'userKey'
    -> UsersAliasesInsert'
usersAliasesInsert' pUaiUserKey_ =
    UsersAliasesInsert'
    { _uaiQuotaUser = Nothing
    , _uaiPrettyPrint = True
    , _uaiUserIp = Nothing
    , _uaiKey = Nothing
    , _uaiOauthToken = Nothing
    , _uaiUserKey = pUaiUserKey_
    , _uaiFields = Nothing
    , _uaiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uaiQuotaUser :: Lens' UsersAliasesInsert' (Maybe Text)
uaiQuotaUser
  = lens _uaiQuotaUser (\ s a -> s{_uaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
uaiPrettyPrint :: Lens' UsersAliasesInsert' Bool
uaiPrettyPrint
  = lens _uaiPrettyPrint
      (\ s a -> s{_uaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uaiUserIp :: Lens' UsersAliasesInsert' (Maybe Text)
uaiUserIp
  = lens _uaiUserIp (\ s a -> s{_uaiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uaiKey :: Lens' UsersAliasesInsert' (Maybe Text)
uaiKey = lens _uaiKey (\ s a -> s{_uaiKey = a})

-- | OAuth 2.0 token for the current user.
uaiOauthToken :: Lens' UsersAliasesInsert' (Maybe Text)
uaiOauthToken
  = lens _uaiOauthToken
      (\ s a -> s{_uaiOauthToken = a})

-- | Email or immutable Id of the user
uaiUserKey :: Lens' UsersAliasesInsert' Text
uaiUserKey
  = lens _uaiUserKey (\ s a -> s{_uaiUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uaiFields :: Lens' UsersAliasesInsert' (Maybe Text)
uaiFields
  = lens _uaiFields (\ s a -> s{_uaiFields = a})

-- | Data format for the response.
uaiAlt :: Lens' UsersAliasesInsert' Alt
uaiAlt = lens _uaiAlt (\ s a -> s{_uaiAlt = a})

instance GoogleRequest UsersAliasesInsert' where
        type Rs UsersAliasesInsert' = Alias
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersAliasesInsert'{..}
          = go _uaiQuotaUser (Just _uaiPrettyPrint) _uaiUserIp
              _uaiKey
              _uaiOauthToken
              _uaiUserKey
              _uaiFields
              (Just _uaiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAliasesInsertResource)
                      r
                      u
