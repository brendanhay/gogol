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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove a alias for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersAliasesDelete@.
module Network.Google.Resource.Directory.Users.Aliases.Delete
    (
    -- * REST Resource
      UsersAliasesDeleteResource

    -- * Creating a Request
    , usersAliasesDelete'
    , UsersAliasesDelete'

    -- * Request Lenses
    , uadQuotaUser
    , uadPrettyPrint
    , uadUserIp
    , uadAlias
    , uadKey
    , uadOauthToken
    , uadUserKey
    , uadFields
    , uadAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersAliasesDelete@ which the
-- 'UsersAliasesDelete'' request conforms to.
type UsersAliasesDeleteResource =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           Capture "alias" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Remove a alias for the user
--
-- /See:/ 'usersAliasesDelete'' smart constructor.
data UsersAliasesDelete' = UsersAliasesDelete'
    { _uadQuotaUser   :: !(Maybe Text)
    , _uadPrettyPrint :: !Bool
    , _uadUserIp      :: !(Maybe Text)
    , _uadAlias       :: !Text
    , _uadKey         :: !(Maybe Text)
    , _uadOauthToken  :: !(Maybe Text)
    , _uadUserKey     :: !Text
    , _uadFields      :: !(Maybe Text)
    , _uadAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uadQuotaUser'
--
-- * 'uadPrettyPrint'
--
-- * 'uadUserIp'
--
-- * 'uadAlias'
--
-- * 'uadKey'
--
-- * 'uadOauthToken'
--
-- * 'uadUserKey'
--
-- * 'uadFields'
--
-- * 'uadAlt'
usersAliasesDelete'
    :: Text -- ^ 'alias'
    -> Text -- ^ 'userKey'
    -> UsersAliasesDelete'
usersAliasesDelete' pUadAlias_ pUadUserKey_ =
    UsersAliasesDelete'
    { _uadQuotaUser = Nothing
    , _uadPrettyPrint = True
    , _uadUserIp = Nothing
    , _uadAlias = pUadAlias_
    , _uadKey = Nothing
    , _uadOauthToken = Nothing
    , _uadUserKey = pUadUserKey_
    , _uadFields = Nothing
    , _uadAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uadQuotaUser :: Lens' UsersAliasesDelete' (Maybe Text)
uadQuotaUser
  = lens _uadQuotaUser (\ s a -> s{_uadQuotaUser = a})

-- | Returns response with indentations and line breaks.
uadPrettyPrint :: Lens' UsersAliasesDelete' Bool
uadPrettyPrint
  = lens _uadPrettyPrint
      (\ s a -> s{_uadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uadUserIp :: Lens' UsersAliasesDelete' (Maybe Text)
uadUserIp
  = lens _uadUserIp (\ s a -> s{_uadUserIp = a})

-- | The alias to be removed
uadAlias :: Lens' UsersAliasesDelete' Text
uadAlias = lens _uadAlias (\ s a -> s{_uadAlias = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uadKey :: Lens' UsersAliasesDelete' (Maybe Text)
uadKey = lens _uadKey (\ s a -> s{_uadKey = a})

-- | OAuth 2.0 token for the current user.
uadOauthToken :: Lens' UsersAliasesDelete' (Maybe Text)
uadOauthToken
  = lens _uadOauthToken
      (\ s a -> s{_uadOauthToken = a})

-- | Email or immutable Id of the user
uadUserKey :: Lens' UsersAliasesDelete' Text
uadUserKey
  = lens _uadUserKey (\ s a -> s{_uadUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uadFields :: Lens' UsersAliasesDelete' (Maybe Text)
uadFields
  = lens _uadFields (\ s a -> s{_uadFields = a})

-- | Data format for the response.
uadAlt :: Lens' UsersAliasesDelete' Alt
uadAlt = lens _uadAlt (\ s a -> s{_uadAlt = a})

instance GoogleRequest UsersAliasesDelete' where
        type Rs UsersAliasesDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersAliasesDelete'{..}
          = go _uadQuotaUser (Just _uadPrettyPrint) _uadUserIp
              _uadAlias
              _uadKey
              _uadOauthToken
              _uadUserKey
              _uadFields
              (Just _uadAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAliasesDeleteResource)
                      r
                      u
