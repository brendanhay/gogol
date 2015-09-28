{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gmail.Users.Threads.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer threads.trash instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.delete@.
module Network.Google.API.Gmail.Users.Threads.Delete
    (
    -- * REST Resource
      UsersThreadsDeleteAPI

    -- * Creating a Request
    , usersThreadsDelete'
    , UsersThreadsDelete'

    -- * Request Lenses
    , utdQuotaUser
    , utdPrettyPrint
    , utdUserIp
    , utdUserId
    , utdKey
    , utdId
    , utdOauthToken
    , utdFields
    , utdAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for gmail.users.threads.delete which the
-- 'UsersThreadsDelete'' request conforms to.
type UsersThreadsDeleteAPI =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer threads.trash instead.
--
-- /See:/ 'usersThreadsDelete'' smart constructor.
data UsersThreadsDelete' = UsersThreadsDelete'
    { _utdQuotaUser   :: !(Maybe Text)
    , _utdPrettyPrint :: !Bool
    , _utdUserIp      :: !(Maybe Text)
    , _utdUserId      :: !Text
    , _utdKey         :: !(Maybe Text)
    , _utdId          :: !Text
    , _utdOauthToken  :: !(Maybe Text)
    , _utdFields      :: !(Maybe Text)
    , _utdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utdQuotaUser'
--
-- * 'utdPrettyPrint'
--
-- * 'utdUserIp'
--
-- * 'utdUserId'
--
-- * 'utdKey'
--
-- * 'utdId'
--
-- * 'utdOauthToken'
--
-- * 'utdFields'
--
-- * 'utdAlt'
usersThreadsDelete'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsDelete'
usersThreadsDelete' pUtdUserId_ pUtdId_ =
    UsersThreadsDelete'
    { _utdQuotaUser = Nothing
    , _utdPrettyPrint = True
    , _utdUserIp = Nothing
    , _utdUserId = pUtdUserId_
    , _utdKey = Nothing
    , _utdId = pUtdId_
    , _utdOauthToken = Nothing
    , _utdFields = Nothing
    , _utdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
utdQuotaUser :: Lens' UsersThreadsDelete' (Maybe Text)
utdQuotaUser
  = lens _utdQuotaUser (\ s a -> s{_utdQuotaUser = a})

-- | Returns response with indentations and line breaks.
utdPrettyPrint :: Lens' UsersThreadsDelete' Bool
utdPrettyPrint
  = lens _utdPrettyPrint
      (\ s a -> s{_utdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
utdUserIp :: Lens' UsersThreadsDelete' (Maybe Text)
utdUserIp
  = lens _utdUserIp (\ s a -> s{_utdUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utdUserId :: Lens' UsersThreadsDelete' Text
utdUserId
  = lens _utdUserId (\ s a -> s{_utdUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
utdKey :: Lens' UsersThreadsDelete' (Maybe Text)
utdKey = lens _utdKey (\ s a -> s{_utdKey = a})

-- | ID of the Thread to delete.
utdId :: Lens' UsersThreadsDelete' Text
utdId = lens _utdId (\ s a -> s{_utdId = a})

-- | OAuth 2.0 token for the current user.
utdOauthToken :: Lens' UsersThreadsDelete' (Maybe Text)
utdOauthToken
  = lens _utdOauthToken
      (\ s a -> s{_utdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
utdFields :: Lens' UsersThreadsDelete' (Maybe Text)
utdFields
  = lens _utdFields (\ s a -> s{_utdFields = a})

-- | Data format for the response.
utdAlt :: Lens' UsersThreadsDelete' Alt
utdAlt = lens _utdAlt (\ s a -> s{_utdAlt = a})

instance GoogleRequest UsersThreadsDelete' where
        type Rs UsersThreadsDelete' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsDelete'{..}
          = go _utdQuotaUser (Just _utdPrettyPrint) _utdUserIp
              _utdUserId
              _utdKey
              _utdId
              _utdOauthToken
              _utdFields
              (Just _utdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsDeleteAPI)
                      r
                      u
