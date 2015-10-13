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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Send
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sends the specified message to the recipients in the To, Cc, and Bcc
-- headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesSend@.
module Network.Google.Resource.Gmail.Users.Messages.Send
    (
    -- * REST Resource
      UsersMessagesSendResource

    -- * Creating a Request
    , usersMessagesSend'
    , UsersMessagesSend'

    -- * Request Lenses
    , umsPayload
    , umsUserId
    , umsMedia
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesSend@ method which the
-- 'UsersMessagesSend'' request conforms to.
type UsersMessagesSendResource =
     Capture "userId" Text :>
       "messages" :>
         "send" :>
           QueryParam "alt" AltJSON :>
             MultipartRelated '[JSON] Message Stream :>
               Post '[JSON] Message

-- | Sends the specified message to the recipients in the To, Cc, and Bcc
-- headers.
--
-- /See:/ 'usersMessagesSend'' smart constructor.
data UsersMessagesSend' = UsersMessagesSend'
    { _umsPayload :: !Message
    , _umsUserId  :: !Text
    , _umsMedia   :: !Stream
    }

-- | Creates a value of 'UsersMessagesSend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umsPayload'
--
-- * 'umsUserId'
--
-- * 'umsMedia'
usersMessagesSend'
    :: Message -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Stream
    -> UsersMessagesSend'
usersMessagesSend' pUmsPayload_ pUmsUserId_ pUmsMedia_ =
    UsersMessagesSend'
    { _umsPayload = pUmsPayload_
    , _umsUserId = pUmsUserId_
    , _umsMedia = pUmsMedia_
    }

-- | Multipart request metadata.
umsPayload :: Lens' UsersMessagesSend' Message
umsPayload
  = lens _umsPayload (\ s a -> s{_umsPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umsUserId :: Lens' UsersMessagesSend' Text
umsUserId
  = lens _umsUserId (\ s a -> s{_umsUserId = a})

umsMedia :: Lens' UsersMessagesSend' Stream
umsMedia = lens _umsMedia (\ s a -> s{_umsMedia = a})

instance GoogleRequest UsersMessagesSend' where
        type Rs UsersMessagesSend' = Message
        requestClient UsersMessagesSend'{..}
          = go _umsUserId (Just AltJSON) _umsPayload _umsMedia
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesSendResource)
                      mempty
