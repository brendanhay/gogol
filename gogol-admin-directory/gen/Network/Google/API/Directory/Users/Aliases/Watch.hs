{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Users.Aliases.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes in user aliases list
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.aliases.watch@.
module Network.Google.API.Directory.Users.Aliases.Watch
    (
    -- * REST Resource
      UsersAliasesWatchAPI

    -- * Creating a Request
    , usersAliasesWatch'
    , UsersAliasesWatch'

    -- * Request Lenses
    , uawEvent
    , uawQuotaUser
    , uawPrettyPrint
    , uawUserIp
    , uawKey
    , uawOauthToken
    , uawUserKey
    , uawFields
    , uawAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.users.aliases.watch which the
-- 'UsersAliasesWatch'' request conforms to.
type UsersAliasesWatchAPI =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           "watch" :>
             QueryParam "event" UsersAliasesWatch'Event :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Channel

-- | Watch for changes in user aliases list
--
-- /See:/ 'usersAliasesWatch'' smart constructor.
data UsersAliasesWatch' = UsersAliasesWatch'
    { _uawEvent       :: !(Maybe UsersAliasesWatch'Event)
    , _uawQuotaUser   :: !(Maybe Text)
    , _uawPrettyPrint :: !Bool
    , _uawUserIp      :: !(Maybe Text)
    , _uawKey         :: !(Maybe Text)
    , _uawOauthToken  :: !(Maybe Text)
    , _uawUserKey     :: !Text
    , _uawFields      :: !(Maybe Text)
    , _uawAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uawEvent'
--
-- * 'uawQuotaUser'
--
-- * 'uawPrettyPrint'
--
-- * 'uawUserIp'
--
-- * 'uawKey'
--
-- * 'uawOauthToken'
--
-- * 'uawUserKey'
--
-- * 'uawFields'
--
-- * 'uawAlt'
usersAliasesWatch'
    :: Text -- ^ 'userKey'
    -> UsersAliasesWatch'
usersAliasesWatch' pUawUserKey_ =
    UsersAliasesWatch'
    { _uawEvent = Nothing
    , _uawQuotaUser = Nothing
    , _uawPrettyPrint = True
    , _uawUserIp = Nothing
    , _uawKey = Nothing
    , _uawOauthToken = Nothing
    , _uawUserKey = pUawUserKey_
    , _uawFields = Nothing
    , _uawAlt = JSON
    }

-- | Event on which subscription is intended (if subscribing)
uawEvent :: Lens' UsersAliasesWatch' (Maybe UsersAliasesWatch'Event)
uawEvent = lens _uawEvent (\ s a -> s{_uawEvent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uawQuotaUser :: Lens' UsersAliasesWatch' (Maybe Text)
uawQuotaUser
  = lens _uawQuotaUser (\ s a -> s{_uawQuotaUser = a})

-- | Returns response with indentations and line breaks.
uawPrettyPrint :: Lens' UsersAliasesWatch' Bool
uawPrettyPrint
  = lens _uawPrettyPrint
      (\ s a -> s{_uawPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uawUserIp :: Lens' UsersAliasesWatch' (Maybe Text)
uawUserIp
  = lens _uawUserIp (\ s a -> s{_uawUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uawKey :: Lens' UsersAliasesWatch' (Maybe Text)
uawKey = lens _uawKey (\ s a -> s{_uawKey = a})

-- | OAuth 2.0 token for the current user.
uawOauthToken :: Lens' UsersAliasesWatch' (Maybe Text)
uawOauthToken
  = lens _uawOauthToken
      (\ s a -> s{_uawOauthToken = a})

-- | Email or immutable Id of the user
uawUserKey :: Lens' UsersAliasesWatch' Text
uawUserKey
  = lens _uawUserKey (\ s a -> s{_uawUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uawFields :: Lens' UsersAliasesWatch' (Maybe Text)
uawFields
  = lens _uawFields (\ s a -> s{_uawFields = a})

-- | Data format for the response.
uawAlt :: Lens' UsersAliasesWatch' Alt
uawAlt = lens _uawAlt (\ s a -> s{_uawAlt = a})

instance GoogleRequest UsersAliasesWatch' where
        type Rs UsersAliasesWatch' = Channel
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersAliasesWatch'{..}
          = go _uawEvent _uawQuotaUser (Just _uawPrettyPrint)
              _uawUserIp
              _uawKey
              _uawOauthToken
              _uawUserKey
              _uawFields
              (Just _uawAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersAliasesWatchAPI)
                      r
                      u
