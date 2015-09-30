{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Directly inserts a message into only this user\'s mailbox similar to
-- IMAP APPEND, bypassing most scanning and classification. Does not send a
-- message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesInsert@.
module Gmail.Users.Messages.Insert
    (
    -- * REST Resource
      UsersMessagesInsertAPI

    -- * Creating a Request
    , usersMessagesInsert
    , UsersMessagesInsert

    -- * Request Lenses
    , umiQuotaUser
    , umiPrettyPrint
    , umiUserIp
    , umiUserId
    , umiKey
    , umiDeleted
    , umiOauthToken
    , umiInternalDateSource
    , umiFields
    , umiAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesInsert@ which the
-- 'UsersMessagesInsert' request conforms to.
type UsersMessagesInsertAPI =
     Capture "userId" Text :>
       "messages" :>
         QueryParam "deleted" Bool :>
           QueryParam "internalDateSource" Text :>
             Post '[JSON] Message

-- | Directly inserts a message into only this user\'s mailbox similar to
-- IMAP APPEND, bypassing most scanning and classification. Does not send a
-- message.
--
-- /See:/ 'usersMessagesInsert' smart constructor.
data UsersMessagesInsert = UsersMessagesInsert
    { _umiQuotaUser          :: !(Maybe Text)
    , _umiPrettyPrint        :: !Bool
    , _umiUserIp             :: !(Maybe Text)
    , _umiUserId             :: !Text
    , _umiKey                :: !(Maybe Text)
    , _umiDeleted            :: !Bool
    , _umiOauthToken         :: !(Maybe Text)
    , _umiInternalDateSource :: !Text
    , _umiFields             :: !(Maybe Text)
    , _umiAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiQuotaUser'
--
-- * 'umiPrettyPrint'
--
-- * 'umiUserIp'
--
-- * 'umiUserId'
--
-- * 'umiKey'
--
-- * 'umiDeleted'
--
-- * 'umiOauthToken'
--
-- * 'umiInternalDateSource'
--
-- * 'umiFields'
--
-- * 'umiAlt'
usersMessagesInsert
    :: Text
    -> UsersMessagesInsert
usersMessagesInsert pUmiUserId_ =
    UsersMessagesInsert
    { _umiQuotaUser = Nothing
    , _umiPrettyPrint = True
    , _umiUserIp = Nothing
    , _umiUserId = pUmiUserId_
    , _umiKey = Nothing
    , _umiDeleted = False
    , _umiOauthToken = Nothing
    , _umiInternalDateSource = "receivedTime"
    , _umiFields = Nothing
    , _umiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umiQuotaUser :: Lens' UsersMessagesInsert' (Maybe Text)
umiQuotaUser
  = lens _umiQuotaUser (\ s a -> s{_umiQuotaUser = a})

-- | Returns response with indentations and line breaks.
umiPrettyPrint :: Lens' UsersMessagesInsert' Bool
umiPrettyPrint
  = lens _umiPrettyPrint
      (\ s a -> s{_umiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umiUserIp :: Lens' UsersMessagesInsert' (Maybe Text)
umiUserIp
  = lens _umiUserIp (\ s a -> s{_umiUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umiUserId :: Lens' UsersMessagesInsert' Text
umiUserId
  = lens _umiUserId (\ s a -> s{_umiUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umiKey :: Lens' UsersMessagesInsert' (Maybe Text)
umiKey = lens _umiKey (\ s a -> s{_umiKey = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Apps Vault to a Vault administrator. Only used for Google Apps
-- for Work accounts.
umiDeleted :: Lens' UsersMessagesInsert' Bool
umiDeleted
  = lens _umiDeleted (\ s a -> s{_umiDeleted = a})

-- | OAuth 2.0 token for the current user.
umiOauthToken :: Lens' UsersMessagesInsert' (Maybe Text)
umiOauthToken
  = lens _umiOauthToken
      (\ s a -> s{_umiOauthToken = a})

-- | Source for Gmail\'s internal date of the message.
umiInternalDateSource :: Lens' UsersMessagesInsert' Text
umiInternalDateSource
  = lens _umiInternalDateSource
      (\ s a -> s{_umiInternalDateSource = a})

-- | Selector specifying which fields to include in a partial response.
umiFields :: Lens' UsersMessagesInsert' (Maybe Text)
umiFields
  = lens _umiFields (\ s a -> s{_umiFields = a})

-- | Data format for the response.
umiAlt :: Lens' UsersMessagesInsert' Text
umiAlt = lens _umiAlt (\ s a -> s{_umiAlt = a})

instance GoogleRequest UsersMessagesInsert' where
        type Rs UsersMessagesInsert' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesInsert{..}
          = go _umiQuotaUser _umiPrettyPrint _umiUserIp
              _umiUserId
              _umiKey
              (Just _umiDeleted)
              _umiOauthToken
              (Just _umiInternalDateSource)
              _umiFields
              _umiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesInsertAPI)
                      r
                      u
