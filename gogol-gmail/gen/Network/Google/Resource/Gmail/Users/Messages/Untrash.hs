{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Untrash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the specified message from the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesUntrash@.
module Network.Google.Resource.Gmail.Users.Messages.Untrash
    (
    -- * REST Resource
      UsersMessagesUntrashResource

    -- * Creating a Request
    , usersMessagesUntrash'
    , UsersMessagesUntrash'

    -- * Request Lenses
    , umuQuotaUser
    , umuPrettyPrint
    , umuUserIP
    , umuUserId
    , umuKey
    , umuId
    , umuOAuthToken
    , umuFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesUntrash@ which the
-- 'UsersMessagesUntrash'' request conforms to.
type UsersMessagesUntrashResource =
     Capture "userId" Text :>
       "messages" :>
         Capture "id" Text :>
           "untrash" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Message

-- | Removes the specified message from the trash.
--
-- /See:/ 'usersMessagesUntrash'' smart constructor.
data UsersMessagesUntrash' = UsersMessagesUntrash'
    { _umuQuotaUser   :: !(Maybe Text)
    , _umuPrettyPrint :: !Bool
    , _umuUserIP      :: !(Maybe Text)
    , _umuUserId      :: !Text
    , _umuKey         :: !(Maybe Key)
    , _umuId          :: !Text
    , _umuOAuthToken  :: !(Maybe OAuthToken)
    , _umuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesUntrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umuQuotaUser'
--
-- * 'umuPrettyPrint'
--
-- * 'umuUserIP'
--
-- * 'umuUserId'
--
-- * 'umuKey'
--
-- * 'umuId'
--
-- * 'umuOAuthToken'
--
-- * 'umuFields'
usersMessagesUntrash'
    :: Text -- ^ 'id'
    -> Text
    -> UsersMessagesUntrash'
usersMessagesUntrash' pUmuUserId_ pUmuId_ =
    UsersMessagesUntrash'
    { _umuQuotaUser = Nothing
    , _umuPrettyPrint = True
    , _umuUserIP = Nothing
    , _umuUserId = pUmuUserId_
    , _umuKey = Nothing
    , _umuId = pUmuId_
    , _umuOAuthToken = Nothing
    , _umuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umuQuotaUser :: Lens' UsersMessagesUntrash' (Maybe Text)
umuQuotaUser
  = lens _umuQuotaUser (\ s a -> s{_umuQuotaUser = a})

-- | Returns response with indentations and line breaks.
umuPrettyPrint :: Lens' UsersMessagesUntrash' Bool
umuPrettyPrint
  = lens _umuPrettyPrint
      (\ s a -> s{_umuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umuUserIP :: Lens' UsersMessagesUntrash' (Maybe Text)
umuUserIP
  = lens _umuUserIP (\ s a -> s{_umuUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umuUserId :: Lens' UsersMessagesUntrash' Text
umuUserId
  = lens _umuUserId (\ s a -> s{_umuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umuKey :: Lens' UsersMessagesUntrash' (Maybe Key)
umuKey = lens _umuKey (\ s a -> s{_umuKey = a})

-- | The ID of the message to remove from Trash.
umuId :: Lens' UsersMessagesUntrash' Text
umuId = lens _umuId (\ s a -> s{_umuId = a})

-- | OAuth 2.0 token for the current user.
umuOAuthToken :: Lens' UsersMessagesUntrash' (Maybe OAuthToken)
umuOAuthToken
  = lens _umuOAuthToken
      (\ s a -> s{_umuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umuFields :: Lens' UsersMessagesUntrash' (Maybe Text)
umuFields
  = lens _umuFields (\ s a -> s{_umuFields = a})

instance GoogleAuth UsersMessagesUntrash' where
        authKey = umuKey . _Just
        authToken = umuOAuthToken . _Just

instance GoogleRequest UsersMessagesUntrash' where
        type Rs UsersMessagesUntrash' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesUntrash'{..}
          = go _umuUserId _umuId _umuQuotaUser
              (Just _umuPrettyPrint)
              _umuUserIP
              _umuFields
              _umuKey
              _umuOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesUntrashResource)
                      r
                      u
