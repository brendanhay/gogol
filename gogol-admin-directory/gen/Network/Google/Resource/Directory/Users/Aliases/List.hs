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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all aliases for a user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersAliasesList@.
module Network.Google.Resource.Directory.Users.Aliases.List
    (
    -- * REST Resource
      UsersAliasesListResource

    -- * Creating a Request
    , usersAliasesList'
    , UsersAliasesList'

    -- * Request Lenses
    , ualEvent
    , ualQuotaUser
    , ualPrettyPrint
    , ualUserIP
    , ualKey
    , ualOAuthToken
    , ualUserKey
    , ualFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersAliasesList@ which the
-- 'UsersAliasesList'' request conforms to.
type UsersAliasesListResource =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           QueryParam "event" DirectoryUsersAliasesListEvent :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Aliases

-- | List all aliases for a user
--
-- /See:/ 'usersAliasesList'' smart constructor.
data UsersAliasesList' = UsersAliasesList'
    { _ualEvent       :: !(Maybe DirectoryUsersAliasesListEvent)
    , _ualQuotaUser   :: !(Maybe Text)
    , _ualPrettyPrint :: !Bool
    , _ualUserIP      :: !(Maybe Text)
    , _ualKey         :: !(Maybe Key)
    , _ualOAuthToken  :: !(Maybe OAuthToken)
    , _ualUserKey     :: !Text
    , _ualFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ualEvent'
--
-- * 'ualQuotaUser'
--
-- * 'ualPrettyPrint'
--
-- * 'ualUserIP'
--
-- * 'ualKey'
--
-- * 'ualOAuthToken'
--
-- * 'ualUserKey'
--
-- * 'ualFields'
usersAliasesList'
    :: Text -- ^ 'userKey'
    -> UsersAliasesList'
usersAliasesList' pUalUserKey_ =
    UsersAliasesList'
    { _ualEvent = Nothing
    , _ualQuotaUser = Nothing
    , _ualPrettyPrint = True
    , _ualUserIP = Nothing
    , _ualKey = Nothing
    , _ualOAuthToken = Nothing
    , _ualUserKey = pUalUserKey_
    , _ualFields = Nothing
    }

-- | Event on which subscription is intended (if subscribing)
ualEvent :: Lens' UsersAliasesList' (Maybe DirectoryUsersAliasesListEvent)
ualEvent = lens _ualEvent (\ s a -> s{_ualEvent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ualQuotaUser :: Lens' UsersAliasesList' (Maybe Text)
ualQuotaUser
  = lens _ualQuotaUser (\ s a -> s{_ualQuotaUser = a})

-- | Returns response with indentations and line breaks.
ualPrettyPrint :: Lens' UsersAliasesList' Bool
ualPrettyPrint
  = lens _ualPrettyPrint
      (\ s a -> s{_ualPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ualUserIP :: Lens' UsersAliasesList' (Maybe Text)
ualUserIP
  = lens _ualUserIP (\ s a -> s{_ualUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ualKey :: Lens' UsersAliasesList' (Maybe Key)
ualKey = lens _ualKey (\ s a -> s{_ualKey = a})

-- | OAuth 2.0 token for the current user.
ualOAuthToken :: Lens' UsersAliasesList' (Maybe OAuthToken)
ualOAuthToken
  = lens _ualOAuthToken
      (\ s a -> s{_ualOAuthToken = a})

-- | Email or immutable Id of the user
ualUserKey :: Lens' UsersAliasesList' Text
ualUserKey
  = lens _ualUserKey (\ s a -> s{_ualUserKey = a})

-- | Selector specifying which fields to include in a partial response.
ualFields :: Lens' UsersAliasesList' (Maybe Text)
ualFields
  = lens _ualFields (\ s a -> s{_ualFields = a})

instance GoogleAuth UsersAliasesList' where
        authKey = ualKey . _Just
        authToken = ualOAuthToken . _Just

instance GoogleRequest UsersAliasesList' where
        type Rs UsersAliasesList' = Aliases
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersAliasesList'{..}
          = go _ualEvent _ualQuotaUser (Just _ualPrettyPrint)
              _ualUserIP
              _ualKey
              _ualOAuthToken
              _ualUserKey
              _ualFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAliasesListResource)
                      r
                      u
