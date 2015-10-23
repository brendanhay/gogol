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
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.insert@.
module Network.Google.Resource.Gmail.Users.Messages.Insert
    (
    -- * REST Resource
      UsersMessagesInsertResource

    -- * Creating a Request
    , usersMessagesInsert
    , UsersMessagesInsert

    -- * Request Lenses
    , uPayload
    , uUserId
    , uDeleted
    , uInternalDateSource
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.insert@ method which the
-- 'UsersMessagesInsert' request conforms to.
type UsersMessagesInsertResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               QueryParam "deleted" Bool :>
                 QueryParam "internalDateSource"
                   UsersMessagesInsertInternalDateSource
                   :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Message :> Post '[JSON] Message
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
               Capture "userId" Text :>
                 "messages" :>
                   QueryParam "deleted" Bool :>
                     QueryParam "internalDateSource"
                       UsersMessagesInsertInternalDateSource
                       :>
                       QueryParam "alt" AltJSON :>
                         QueryParam "uploadType" AltMedia :>
                           MultipartRelated '[JSON] Message RequestBody :>
                             Post '[JSON] Message

-- | Directly inserts a message into only this user\'s mailbox similar to
-- IMAP APPEND, bypassing most scanning and classification. Does not send a
-- message.
--
-- /See:/ 'usersMessagesInsert' smart constructor.
data UsersMessagesInsert = UsersMessagesInsert
    { _uPayload            :: !Message
    , _uUserId             :: !Text
    , _uDeleted            :: !Bool
    , _uInternalDateSource :: !UsersMessagesInsertInternalDateSource
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uPayload'
--
-- * 'uUserId'
--
-- * 'uDeleted'
--
-- * 'uInternalDateSource'
usersMessagesInsert
    :: Message -- ^ 'uPayload'
    -> Text
    -> UsersMessagesInsert
usersMessagesInsert pUPayload_ pUUserId_ =
    UsersMessagesInsert
    { _uPayload = pUPayload_
    , _uUserId = pUUserId_
    , _uDeleted = False
    , _uInternalDateSource = UMIIDSReceivedTime
    }

-- | Multipart request metadata.
uPayload :: Lens' UsersMessagesInsert Message
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uUserId :: Lens' UsersMessagesInsert Text
uUserId = lens _uUserId (\ s a -> s{_uUserId = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Apps Vault to a Vault administrator. Only used for Google Apps
-- for Work accounts.
uDeleted :: Lens' UsersMessagesInsert Bool
uDeleted = lens _uDeleted (\ s a -> s{_uDeleted = a})

-- | Source for Gmail\'s internal date of the message.
uInternalDateSource :: Lens' UsersMessagesInsert UsersMessagesInsertInternalDateSource
uInternalDateSource
  = lens _uInternalDateSource
      (\ s a -> s{_uInternalDateSource = a})

instance GoogleRequest UsersMessagesInsert where
        type Rs UsersMessagesInsert = Message
        requestClient UsersMessagesInsert{..}
          = go _uUserId (Just _uDeleted)
              (Just _uInternalDateSource)
              (Just AltJSON)
              _uPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersMessagesInsertResource)
                      mempty

instance GoogleRequest (Upload UsersMessagesInsert)
         where
        type Rs (Upload UsersMessagesInsert) = Message
        requestClient (Upload UsersMessagesInsert{..} body)
          = go _uUserId (Just _uDeleted)
              (Just _uInternalDateSource)
              (Just AltJSON)
              (Just AltMedia)
              _uPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesInsertResource)
                      mempty
