{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gmail.Users.Threads.Trash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves the specified thread to the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.trash@.
module Network.Google.API.Gmail.Users.Threads.Trash
    (
    -- * REST Resource
      UsersThreadsTrashAPI

    -- * Creating a Request
    , usersThreadsTrash'
    , UsersThreadsTrash'

    -- * Request Lenses
    , uttQuotaUser
    , uttPrettyPrint
    , uttUserIp
    , uttUserId
    , uttKey
    , uttId
    , uttOauthToken
    , uttFields
    , uttAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for gmail.users.threads.trash which the
-- 'UsersThreadsTrash'' request conforms to.
type UsersThreadsTrashAPI =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           "trash" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Thread

-- | Moves the specified thread to the trash.
--
-- /See:/ 'usersThreadsTrash'' smart constructor.
data UsersThreadsTrash' = UsersThreadsTrash'
    { _uttQuotaUser   :: !(Maybe Text)
    , _uttPrettyPrint :: !Bool
    , _uttUserIp      :: !(Maybe Text)
    , _uttUserId      :: !Text
    , _uttKey         :: !(Maybe Text)
    , _uttId          :: !Text
    , _uttOauthToken  :: !(Maybe Text)
    , _uttFields      :: !(Maybe Text)
    , _uttAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uttQuotaUser'
--
-- * 'uttPrettyPrint'
--
-- * 'uttUserIp'
--
-- * 'uttUserId'
--
-- * 'uttKey'
--
-- * 'uttId'
--
-- * 'uttOauthToken'
--
-- * 'uttFields'
--
-- * 'uttAlt'
usersThreadsTrash'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsTrash'
usersThreadsTrash' pUttUserId_ pUttId_ =
    UsersThreadsTrash'
    { _uttQuotaUser = Nothing
    , _uttPrettyPrint = True
    , _uttUserIp = Nothing
    , _uttUserId = pUttUserId_
    , _uttKey = Nothing
    , _uttId = pUttId_
    , _uttOauthToken = Nothing
    , _uttFields = Nothing
    , _uttAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uttQuotaUser :: Lens' UsersThreadsTrash' (Maybe Text)
uttQuotaUser
  = lens _uttQuotaUser (\ s a -> s{_uttQuotaUser = a})

-- | Returns response with indentations and line breaks.
uttPrettyPrint :: Lens' UsersThreadsTrash' Bool
uttPrettyPrint
  = lens _uttPrettyPrint
      (\ s a -> s{_uttPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uttUserIp :: Lens' UsersThreadsTrash' (Maybe Text)
uttUserIp
  = lens _uttUserIp (\ s a -> s{_uttUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uttUserId :: Lens' UsersThreadsTrash' Text
uttUserId
  = lens _uttUserId (\ s a -> s{_uttUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uttKey :: Lens' UsersThreadsTrash' (Maybe Text)
uttKey = lens _uttKey (\ s a -> s{_uttKey = a})

-- | The ID of the thread to Trash.
uttId :: Lens' UsersThreadsTrash' Text
uttId = lens _uttId (\ s a -> s{_uttId = a})

-- | OAuth 2.0 token for the current user.
uttOauthToken :: Lens' UsersThreadsTrash' (Maybe Text)
uttOauthToken
  = lens _uttOauthToken
      (\ s a -> s{_uttOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uttFields :: Lens' UsersThreadsTrash' (Maybe Text)
uttFields
  = lens _uttFields (\ s a -> s{_uttFields = a})

-- | Data format for the response.
uttAlt :: Lens' UsersThreadsTrash' Alt
uttAlt = lens _uttAlt (\ s a -> s{_uttAlt = a})

instance GoogleRequest UsersThreadsTrash' where
        type Rs UsersThreadsTrash' = Thread
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsTrash'{..}
          = go _uttQuotaUser (Just _uttPrettyPrint) _uttUserIp
              _uttUserId
              _uttKey
              _uttId
              _uttOauthToken
              _uttFields
              (Just _uttAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsTrashAPI)
                      r
                      u
