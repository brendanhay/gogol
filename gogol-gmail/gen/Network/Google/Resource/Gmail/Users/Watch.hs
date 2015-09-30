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
-- Module      : Network.Google.Resource.Gmail.Users.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersWatch@.
module Network.Google.Resource.Gmail.Users.Watch
    (
    -- * REST Resource
      UsersWatchResource

    -- * Creating a Request
    , usersWatch'
    , UsersWatch'

    -- * Request Lenses
    , uwQuotaUser
    , uwPrettyPrint
    , uwUserIp
    , uwUserId
    , uwKey
    , uwOauthToken
    , uwFields
    , uwAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersWatch@ which the
-- 'UsersWatch'' request conforms to.
type UsersWatchResource =
     Capture "userId" Text :>
       "watch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] WatchResponse

-- | Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ 'usersWatch'' smart constructor.
data UsersWatch' = UsersWatch'
    { _uwQuotaUser   :: !(Maybe Text)
    , _uwPrettyPrint :: !Bool
    , _uwUserIp      :: !(Maybe Text)
    , _uwUserId      :: !Text
    , _uwKey         :: !(Maybe Text)
    , _uwOauthToken  :: !(Maybe Text)
    , _uwFields      :: !(Maybe Text)
    , _uwAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwQuotaUser'
--
-- * 'uwPrettyPrint'
--
-- * 'uwUserIp'
--
-- * 'uwUserId'
--
-- * 'uwKey'
--
-- * 'uwOauthToken'
--
-- * 'uwFields'
--
-- * 'uwAlt'
usersWatch'
    :: Text
    -> UsersWatch'
usersWatch' pUwUserId_ =
    UsersWatch'
    { _uwQuotaUser = Nothing
    , _uwPrettyPrint = True
    , _uwUserIp = Nothing
    , _uwUserId = pUwUserId_
    , _uwKey = Nothing
    , _uwOauthToken = Nothing
    , _uwFields = Nothing
    , _uwAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uwQuotaUser :: Lens' UsersWatch' (Maybe Text)
uwQuotaUser
  = lens _uwQuotaUser (\ s a -> s{_uwQuotaUser = a})

-- | Returns response with indentations and line breaks.
uwPrettyPrint :: Lens' UsersWatch' Bool
uwPrettyPrint
  = lens _uwPrettyPrint
      (\ s a -> s{_uwPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uwUserIp :: Lens' UsersWatch' (Maybe Text)
uwUserIp = lens _uwUserIp (\ s a -> s{_uwUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uwUserId :: Lens' UsersWatch' Text
uwUserId = lens _uwUserId (\ s a -> s{_uwUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uwKey :: Lens' UsersWatch' (Maybe Text)
uwKey = lens _uwKey (\ s a -> s{_uwKey = a})

-- | OAuth 2.0 token for the current user.
uwOauthToken :: Lens' UsersWatch' (Maybe Text)
uwOauthToken
  = lens _uwOauthToken (\ s a -> s{_uwOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uwFields :: Lens' UsersWatch' (Maybe Text)
uwFields = lens _uwFields (\ s a -> s{_uwFields = a})

-- | Data format for the response.
uwAlt :: Lens' UsersWatch' Alt
uwAlt = lens _uwAlt (\ s a -> s{_uwAlt = a})

instance GoogleRequest UsersWatch' where
        type Rs UsersWatch' = WatchResponse
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersWatch'{..}
          = go _uwQuotaUser (Just _uwPrettyPrint) _uwUserIp
              _uwUserId
              _uwKey
              _uwOauthToken
              _uwFields
              (Just _uwAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersWatchResource)
                      r
                      u
