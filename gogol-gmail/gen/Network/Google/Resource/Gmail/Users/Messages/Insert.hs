{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Directly inserts a message into only this user\'s mailbox similar to
-- IMAP APPEND, bypassing most scanning and classification. Does not send a
-- message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesInsert@.
module Network.Google.Resource.Gmail.Users.Messages.Insert
    (
    -- * REST Resource
      UsersMessagesInsertResource

    -- * Creating a Request
    , usersMessagesInsert'
    , UsersMessagesInsert'

    -- * Request Lenses
    , umiPayload
    , umiUserId
    , umiMedia
    , umiDeleted
    , umiInternalDateSource
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesInsert@ method which the
-- 'UsersMessagesInsert'' request conforms to.
type UsersMessagesInsertResource =
     Capture "userId" Text :>
       "messages" :>
         QueryParam "deleted" Bool :>
           QueryParam "internalDateSource"
             UsersMessagesInsertInternalDateSource
             :>
             QueryParam "alt" AltJSON :>
               MultipartRelated '[JSON] Message Body :>
                 Post '[JSON] Message

-- | Directly inserts a message into only this user\'s mailbox similar to
-- IMAP APPEND, bypassing most scanning and classification. Does not send a
-- message.
--
-- /See:/ 'usersMessagesInsert'' smart constructor.
data UsersMessagesInsert' = UsersMessagesInsert'
    { _umiPayload            :: !Message
    , _umiUserId             :: !Text
    , _umiMedia              :: !Body
    , _umiDeleted            :: !Bool
    , _umiInternalDateSource :: !UsersMessagesInsertInternalDateSource
    }

-- | Creates a value of 'UsersMessagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiPayload'
--
-- * 'umiUserId'
--
-- * 'umiMedia'
--
-- * 'umiDeleted'
--
-- * 'umiInternalDateSource'
usersMessagesInsert'
    :: Message -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Body
    -> UsersMessagesInsert'
usersMessagesInsert' pUmiPayload_ pUmiUserId_ pUmiMedia_ =
    UsersMessagesInsert'
    { _umiPayload = pUmiPayload_
    , _umiUserId = pUmiUserId_
    , _umiMedia = pUmiMedia_
    , _umiDeleted = False
    , _umiInternalDateSource = UMIIDSReceivedTime
    }

-- | Multipart request metadata.
umiPayload :: Lens' UsersMessagesInsert' Message
umiPayload
  = lens _umiPayload (\ s a -> s{_umiPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umiUserId :: Lens' UsersMessagesInsert' Text
umiUserId
  = lens _umiUserId (\ s a -> s{_umiUserId = a})

umiMedia :: Lens' UsersMessagesInsert' Body
umiMedia = lens _umiMedia (\ s a -> s{_umiMedia = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Apps Vault to a Vault administrator. Only used for Google Apps
-- for Work accounts.
umiDeleted :: Lens' UsersMessagesInsert' Bool
umiDeleted
  = lens _umiDeleted (\ s a -> s{_umiDeleted = a})

-- | Source for Gmail\'s internal date of the message.
umiInternalDateSource :: Lens' UsersMessagesInsert' UsersMessagesInsertInternalDateSource
umiInternalDateSource
  = lens _umiInternalDateSource
      (\ s a -> s{_umiInternalDateSource = a})

instance GoogleRequest UsersMessagesInsert' where
        type Rs UsersMessagesInsert' = Message
        requestClient UsersMessagesInsert'{..}
          = go _umiUserId (Just _umiDeleted)
              (Just _umiInternalDateSource)
              (Just AltJSON)
              _umiPayload
              _umiMedia
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesInsertResource)
                      mempty
