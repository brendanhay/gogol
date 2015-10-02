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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Trash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves the specified message to the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesTrash@.
module Network.Google.Resource.Gmail.Users.Messages.Trash
    (
    -- * REST Resource
      UsersMessagesTrashResource

    -- * Creating a Request
    , usersMessagesTrash'
    , UsersMessagesTrash'

    -- * Request Lenses
    , umtQuotaUser
    , umtPrettyPrint
    , umtUserIP
    , umtUserId
    , umtKey
    , umtId
    , umtOAuthToken
    , umtFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesTrash@ which the
-- 'UsersMessagesTrash'' request conforms to.
type UsersMessagesTrashResource =
     Capture "userId" Text :>
       "messages" :>
         Capture "id" Text :>
           "trash" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Message

-- | Moves the specified message to the trash.
--
-- /See:/ 'usersMessagesTrash'' smart constructor.
data UsersMessagesTrash' = UsersMessagesTrash'
    { _umtQuotaUser   :: !(Maybe Text)
    , _umtPrettyPrint :: !Bool
    , _umtUserIP      :: !(Maybe Text)
    , _umtUserId      :: !Text
    , _umtKey         :: !(Maybe Key)
    , _umtId          :: !Text
    , _umtOAuthToken  :: !(Maybe OAuthToken)
    , _umtFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umtQuotaUser'
--
-- * 'umtPrettyPrint'
--
-- * 'umtUserIP'
--
-- * 'umtUserId'
--
-- * 'umtKey'
--
-- * 'umtId'
--
-- * 'umtOAuthToken'
--
-- * 'umtFields'
usersMessagesTrash'
    :: Text -- ^ 'id'
    -> Text
    -> UsersMessagesTrash'
usersMessagesTrash' pUmtUserId_ pUmtId_ =
    UsersMessagesTrash'
    { _umtQuotaUser = Nothing
    , _umtPrettyPrint = True
    , _umtUserIP = Nothing
    , _umtUserId = pUmtUserId_
    , _umtKey = Nothing
    , _umtId = pUmtId_
    , _umtOAuthToken = Nothing
    , _umtFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umtQuotaUser :: Lens' UsersMessagesTrash' (Maybe Text)
umtQuotaUser
  = lens _umtQuotaUser (\ s a -> s{_umtQuotaUser = a})

-- | Returns response with indentations and line breaks.
umtPrettyPrint :: Lens' UsersMessagesTrash' Bool
umtPrettyPrint
  = lens _umtPrettyPrint
      (\ s a -> s{_umtPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umtUserIP :: Lens' UsersMessagesTrash' (Maybe Text)
umtUserIP
  = lens _umtUserIP (\ s a -> s{_umtUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umtUserId :: Lens' UsersMessagesTrash' Text
umtUserId
  = lens _umtUserId (\ s a -> s{_umtUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umtKey :: Lens' UsersMessagesTrash' (Maybe Key)
umtKey = lens _umtKey (\ s a -> s{_umtKey = a})

-- | The ID of the message to Trash.
umtId :: Lens' UsersMessagesTrash' Text
umtId = lens _umtId (\ s a -> s{_umtId = a})

-- | OAuth 2.0 token for the current user.
umtOAuthToken :: Lens' UsersMessagesTrash' (Maybe OAuthToken)
umtOAuthToken
  = lens _umtOAuthToken
      (\ s a -> s{_umtOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umtFields :: Lens' UsersMessagesTrash' (Maybe Text)
umtFields
  = lens _umtFields (\ s a -> s{_umtFields = a})

instance GoogleAuth UsersMessagesTrash' where
        authKey = umtKey . _Just
        authToken = umtOAuthToken . _Just

instance GoogleRequest UsersMessagesTrash' where
        type Rs UsersMessagesTrash' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesTrash'{..}
          = go _umtQuotaUser (Just _umtPrettyPrint) _umtUserIP
              _umtUserId
              _umtKey
              _umtId
              _umtOAuthToken
              _umtFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesTrashResource)
                      r
                      u
