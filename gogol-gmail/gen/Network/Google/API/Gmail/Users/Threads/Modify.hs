{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gmail.Users.Threads.Modify
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.modify@.
module Network.Google.API.Gmail.Users.Threads.Modify
    (
    -- * REST Resource
      UsersThreadsModifyAPI

    -- * Creating a Request
    , usersThreadsModify'
    , UsersThreadsModify'

    -- * Request Lenses
    , utmQuotaUser
    , utmPrettyPrint
    , utmUserIp
    , utmUserId
    , utmKey
    , utmId
    , utmOauthToken
    , utmFields
    , utmAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for gmail.users.threads.modify which the
-- 'UsersThreadsModify'' request conforms to.
type UsersThreadsModifyAPI =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           "modify" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Thread

-- | Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ 'usersThreadsModify'' smart constructor.
data UsersThreadsModify' = UsersThreadsModify'
    { _utmQuotaUser   :: !(Maybe Text)
    , _utmPrettyPrint :: !Bool
    , _utmUserIp      :: !(Maybe Text)
    , _utmUserId      :: !Text
    , _utmKey         :: !(Maybe Text)
    , _utmId          :: !Text
    , _utmOauthToken  :: !(Maybe Text)
    , _utmFields      :: !(Maybe Text)
    , _utmAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsModify'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utmQuotaUser'
--
-- * 'utmPrettyPrint'
--
-- * 'utmUserIp'
--
-- * 'utmUserId'
--
-- * 'utmKey'
--
-- * 'utmId'
--
-- * 'utmOauthToken'
--
-- * 'utmFields'
--
-- * 'utmAlt'
usersThreadsModify'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsModify'
usersThreadsModify' pUtmUserId_ pUtmId_ =
    UsersThreadsModify'
    { _utmQuotaUser = Nothing
    , _utmPrettyPrint = True
    , _utmUserIp = Nothing
    , _utmUserId = pUtmUserId_
    , _utmKey = Nothing
    , _utmId = pUtmId_
    , _utmOauthToken = Nothing
    , _utmFields = Nothing
    , _utmAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
utmQuotaUser :: Lens' UsersThreadsModify' (Maybe Text)
utmQuotaUser
  = lens _utmQuotaUser (\ s a -> s{_utmQuotaUser = a})

-- | Returns response with indentations and line breaks.
utmPrettyPrint :: Lens' UsersThreadsModify' Bool
utmPrettyPrint
  = lens _utmPrettyPrint
      (\ s a -> s{_utmPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
utmUserIp :: Lens' UsersThreadsModify' (Maybe Text)
utmUserIp
  = lens _utmUserIp (\ s a -> s{_utmUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utmUserId :: Lens' UsersThreadsModify' Text
utmUserId
  = lens _utmUserId (\ s a -> s{_utmUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
utmKey :: Lens' UsersThreadsModify' (Maybe Text)
utmKey = lens _utmKey (\ s a -> s{_utmKey = a})

-- | The ID of the thread to modify.
utmId :: Lens' UsersThreadsModify' Text
utmId = lens _utmId (\ s a -> s{_utmId = a})

-- | OAuth 2.0 token for the current user.
utmOauthToken :: Lens' UsersThreadsModify' (Maybe Text)
utmOauthToken
  = lens _utmOauthToken
      (\ s a -> s{_utmOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
utmFields :: Lens' UsersThreadsModify' (Maybe Text)
utmFields
  = lens _utmFields (\ s a -> s{_utmFields = a})

-- | Data format for the response.
utmAlt :: Lens' UsersThreadsModify' Alt
utmAlt = lens _utmAlt (\ s a -> s{_utmAlt = a})

instance GoogleRequest UsersThreadsModify' where
        type Rs UsersThreadsModify' = Thread
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsModify'{..}
          = go _utmQuotaUser (Just _utmPrettyPrint) _utmUserIp
              _utmUserId
              _utmKey
              _utmId
              _utmOauthToken
              _utmFields
              (Just _utmAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsModifyAPI)
                      r
                      u
