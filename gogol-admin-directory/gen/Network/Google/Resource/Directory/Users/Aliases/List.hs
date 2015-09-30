{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Directory.Users.Aliases.List
    (
    -- * REST Resource
      UsersAliasesListAPI

    -- * Creating a Request
    , usersAliasesList
    , UsersAliasesList

    -- * Request Lenses
    , ualEvent
    , ualQuotaUser
    , ualPrettyPrint
    , ualUserIp
    , ualKey
    , ualOauthToken
    , ualUserKey
    , ualFields
    , ualAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersAliasesList@ which the
-- 'UsersAliasesList' request conforms to.
type UsersAliasesListAPI =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           QueryParam "event" Text :> Get '[JSON] Aliases

-- | List all aliases for a user
--
-- /See:/ 'usersAliasesList' smart constructor.
data UsersAliasesList = UsersAliasesList
    { _ualEvent       :: !(Maybe Text)
    , _ualQuotaUser   :: !(Maybe Text)
    , _ualPrettyPrint :: !Bool
    , _ualUserIp      :: !(Maybe Text)
    , _ualKey         :: !(Maybe Text)
    , _ualOauthToken  :: !(Maybe Text)
    , _ualUserKey     :: !Text
    , _ualFields      :: !(Maybe Text)
    , _ualAlt         :: !Text
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
-- * 'ualUserIp'
--
-- * 'ualKey'
--
-- * 'ualOauthToken'
--
-- * 'ualUserKey'
--
-- * 'ualFields'
--
-- * 'ualAlt'
usersAliasesList
    :: Text -- ^ 'userKey'
    -> UsersAliasesList
usersAliasesList pUalUserKey_ =
    UsersAliasesList
    { _ualEvent = Nothing
    , _ualQuotaUser = Nothing
    , _ualPrettyPrint = True
    , _ualUserIp = Nothing
    , _ualKey = Nothing
    , _ualOauthToken = Nothing
    , _ualUserKey = pUalUserKey_
    , _ualFields = Nothing
    , _ualAlt = "json"
    }

-- | Event on which subscription is intended (if subscribing)
ualEvent :: Lens' UsersAliasesList' (Maybe Text)
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
ualUserIp :: Lens' UsersAliasesList' (Maybe Text)
ualUserIp
  = lens _ualUserIp (\ s a -> s{_ualUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ualKey :: Lens' UsersAliasesList' (Maybe Text)
ualKey = lens _ualKey (\ s a -> s{_ualKey = a})

-- | OAuth 2.0 token for the current user.
ualOauthToken :: Lens' UsersAliasesList' (Maybe Text)
ualOauthToken
  = lens _ualOauthToken
      (\ s a -> s{_ualOauthToken = a})

-- | Email or immutable Id of the user
ualUserKey :: Lens' UsersAliasesList' Text
ualUserKey
  = lens _ualUserKey (\ s a -> s{_ualUserKey = a})

-- | Selector specifying which fields to include in a partial response.
ualFields :: Lens' UsersAliasesList' (Maybe Text)
ualFields
  = lens _ualFields (\ s a -> s{_ualFields = a})

-- | Data format for the response.
ualAlt :: Lens' UsersAliasesList' Text
ualAlt = lens _ualAlt (\ s a -> s{_ualAlt = a})

instance GoogleRequest UsersAliasesList' where
        type Rs UsersAliasesList' = Aliases
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersAliasesList{..}
          = go _ualEvent _ualQuotaUser _ualPrettyPrint
              _ualUserIp
              _ualKey
              _ualOauthToken
              _ualUserKey
              _ualFields
              _ualAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAliasesListAPI)
                      r
                      u
