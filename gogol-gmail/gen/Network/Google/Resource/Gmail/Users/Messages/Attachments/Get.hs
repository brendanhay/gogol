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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Attachments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified message attachment.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.attachments.get@.
module Network.Google.Resource.Gmail.Users.Messages.Attachments.Get
    (
    -- * REST Resource
      UsersMessagesAttachmentsGetResource

    -- * Creating a Request
    , usersMessagesAttachmentsGet
    , UsersMessagesAttachmentsGet

    -- * Request Lenses
    , umagUserId
    , umagId
    , umagMessageId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.attachments.get@ method which the
-- 'UsersMessagesAttachmentsGet' request conforms to.
type UsersMessagesAttachmentsGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               Capture "messageId" Text :>
                 "attachments" :>
                   Capture "id" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] MessagePartBody

-- | Gets the specified message attachment.
--
-- /See:/ 'usersMessagesAttachmentsGet' smart constructor.
data UsersMessagesAttachmentsGet = UsersMessagesAttachmentsGet'
    { _umagUserId    :: !Text
    , _umagId        :: !Text
    , _umagMessageId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesAttachmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umagUserId'
--
-- * 'umagId'
--
-- * 'umagMessageId'
usersMessagesAttachmentsGet
    :: Text -- ^ 'umagId'
    -> Text -- ^ 'umagMessageId'
    -> UsersMessagesAttachmentsGet
usersMessagesAttachmentsGet pUmagId_ pUmagMessageId_ =
    UsersMessagesAttachmentsGet'
    { _umagUserId = "me"
    , _umagId = pUmagId_
    , _umagMessageId = pUmagMessageId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umagUserId :: Lens' UsersMessagesAttachmentsGet Text
umagUserId
  = lens _umagUserId (\ s a -> s{_umagUserId = a})

-- | The ID of the attachment.
umagId :: Lens' UsersMessagesAttachmentsGet Text
umagId = lens _umagId (\ s a -> s{_umagId = a})

-- | The ID of the message containing the attachment.
umagMessageId :: Lens' UsersMessagesAttachmentsGet Text
umagMessageId
  = lens _umagMessageId
      (\ s a -> s{_umagMessageId = a})

instance GoogleRequest UsersMessagesAttachmentsGet
         where
        type Rs UsersMessagesAttachmentsGet = MessagePartBody
        type Scopes UsersMessagesAttachmentsGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersMessagesAttachmentsGet'{..}
          = go _umagUserId _umagMessageId _umagId
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesAttachmentsGetResource)
                      mempty
