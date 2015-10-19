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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesImport@.
module Network.Google.Resource.Gmail.Users.Messages.Import
    (
    -- * REST Resource
      UsersMessagesImportResource

    -- * Creating a Request
    , usersMessagesImport'
    , UsersMessagesImport'

    -- * Request Lenses
    , uPayload
    , uUserId
    , uMedia
    , uProcessForCalendar
    , uDeleted
    , uNeverMarkSpam
    , uInternalDateSource
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesImport@ method which the
-- 'UsersMessagesImport'' request conforms to.
type UsersMessagesImportResource =
     Capture "userId" Text :>
       "messages" :>
         "import" :>
           QueryParam "processForCalendar" Bool :>
             QueryParam "deleted" Bool :>
               QueryParam "neverMarkSpam" Bool :>
                 QueryParam "internalDateSource"
                   UsersMessagesImportInternalDateSource
                   :>
                   QueryParam "alt" AltJSON :>
                     MultipartRelated '[JSON] Message Body :>
                       Post '[JSON] Message

-- | Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message.
--
-- /See:/ 'usersMessagesImport'' smart constructor.
data UsersMessagesImport' = UsersMessagesImport'
    { _uPayload            :: !Message
    , _uUserId             :: !Text
    , _uMedia              :: !Body
    , _uProcessForCalendar :: !Bool
    , _uDeleted            :: !Bool
    , _uNeverMarkSpam      :: !Bool
    , _uInternalDateSource :: !UsersMessagesImportInternalDateSource
    }

-- | Creates a value of 'UsersMessagesImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uPayload'
--
-- * 'uUserId'
--
-- * 'uMedia'
--
-- * 'uProcessForCalendar'
--
-- * 'uDeleted'
--
-- * 'uNeverMarkSpam'
--
-- * 'uInternalDateSource'
usersMessagesImport'
    :: Message -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Body
    -> UsersMessagesImport'
usersMessagesImport' pUPayload_ pUUserId_ pUMedia_ =
    UsersMessagesImport'
    { _uPayload = pUPayload_
    , _uUserId = pUUserId_
    , _uMedia = pUMedia_
    , _uProcessForCalendar = False
    , _uDeleted = False
    , _uNeverMarkSpam = False
    , _uInternalDateSource = DateHeader
    }

-- | Multipart request metadata.
uPayload :: Lens' UsersMessagesImport' Message
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uUserId :: Lens' UsersMessagesImport' Text
uUserId = lens _uUserId (\ s a -> s{_uUserId = a})

uMedia :: Lens' UsersMessagesImport' Body
uMedia = lens _uMedia (\ s a -> s{_uMedia = a})

-- | Process calendar invites in the email and add any extracted meetings to
-- the Google Calendar for this user.
uProcessForCalendar :: Lens' UsersMessagesImport' Bool
uProcessForCalendar
  = lens _uProcessForCalendar
      (\ s a -> s{_uProcessForCalendar = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Apps Vault to a Vault administrator. Only used for Google Apps
-- for Work accounts.
uDeleted :: Lens' UsersMessagesImport' Bool
uDeleted = lens _uDeleted (\ s a -> s{_uDeleted = a})

-- | Ignore the Gmail spam classifier decision and never mark this email as
-- SPAM in the mailbox.
uNeverMarkSpam :: Lens' UsersMessagesImport' Bool
uNeverMarkSpam
  = lens _uNeverMarkSpam
      (\ s a -> s{_uNeverMarkSpam = a})

-- | Source for Gmail\'s internal date of the message.
uInternalDateSource :: Lens' UsersMessagesImport' UsersMessagesImportInternalDateSource
uInternalDateSource
  = lens _uInternalDateSource
      (\ s a -> s{_uInternalDateSource = a})

instance GoogleRequest UsersMessagesImport' where
        type Rs UsersMessagesImport' = Message
        requestClient UsersMessagesImport'{..}
          = go _uUserId (Just _uProcessForCalendar)
              (Just _uDeleted)
              (Just _uNeverMarkSpam)
              (Just _uInternalDateSource)
              (Just AltJSON)
              _uPayload
              _uMedia
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesImportResource)
                      mempty
