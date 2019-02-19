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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Modify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the labels on the specified message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.modify@.
module Network.Google.Resource.Gmail.Users.Messages.Modify
    (
    -- * REST Resource
      UsersMessagesModifyResource

    -- * Creating a Request
    , usersMessagesModify
    , UsersMessagesModify

    -- * Request Lenses
    , ummPayload
    , ummUserId
    , ummId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.modify@ method which the
-- 'UsersMessagesModify' request conforms to.
type UsersMessagesModifyResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               Capture "id" Text :>
                 "modify" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyMessageRequest :>
                       Post '[JSON] Message

-- | Modifies the labels on the specified message.
--
-- /See:/ 'usersMessagesModify' smart constructor.
data UsersMessagesModify =
  UsersMessagesModify'
    { _ummPayload :: !ModifyMessageRequest
    , _ummUserId  :: !Text
    , _ummId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesModify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ummPayload'
--
-- * 'ummUserId'
--
-- * 'ummId'
usersMessagesModify
    :: ModifyMessageRequest -- ^ 'ummPayload'
    -> Text -- ^ 'ummId'
    -> UsersMessagesModify
usersMessagesModify pUmmPayload_ pUmmId_ =
  UsersMessagesModify'
    {_ummPayload = pUmmPayload_, _ummUserId = "me", _ummId = pUmmId_}


-- | Multipart request metadata.
ummPayload :: Lens' UsersMessagesModify ModifyMessageRequest
ummPayload
  = lens _ummPayload (\ s a -> s{_ummPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ummUserId :: Lens' UsersMessagesModify Text
ummUserId
  = lens _ummUserId (\ s a -> s{_ummUserId = a})

-- | The ID of the message to modify.
ummId :: Lens' UsersMessagesModify Text
ummId = lens _ummId (\ s a -> s{_ummId = a})

instance GoogleRequest UsersMessagesModify where
        type Rs UsersMessagesModify = Message
        type Scopes UsersMessagesModify =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersMessagesModify'{..}
          = go _ummUserId _ummId (Just AltJSON) _ummPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesModifyResource)
                      mempty
