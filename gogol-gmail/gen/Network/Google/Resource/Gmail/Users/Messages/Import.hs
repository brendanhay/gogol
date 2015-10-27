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
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.import@.
module Network.Google.Resource.Gmail.Users.Messages.Import
    (
    -- * REST Resource
      UsersMessagesImportResource

    -- * Creating a Request
    , usersMessagesImport
    , UsersMessagesImport

    -- * Request Lenses
    , umiPayload
    , umiUserId
    , umiProcessForCalendar
    , umiDeleted
    , umiNeverMarkSpam
    , umiInternalDateSource
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.import@ method which the
-- 'UsersMessagesImport' request conforms to.
type UsersMessagesImportResource =
     "gmail" :>
       "v1" :>
         "users" :>
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
                           ReqBody '[JSON] Message :> Post '[JSON] Message
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
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
                               QueryParam "uploadType" AltMedia :>
                                 MultipartRelated '[JSON] Message RequestBody :>
                                   Post '[JSON] Message

-- | Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message.
--
-- /See:/ 'usersMessagesImport' smart constructor.
data UsersMessagesImport = UsersMessagesImport
    { _umiPayload            :: !Message
    , _umiUserId             :: !Text
    , _umiProcessForCalendar :: !Bool
    , _umiDeleted            :: !Bool
    , _umiNeverMarkSpam      :: !Bool
    , _umiInternalDateSource :: !UsersMessagesImportInternalDateSource
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiPayload'
--
-- * 'umiUserId'
--
-- * 'umiProcessForCalendar'
--
-- * 'umiDeleted'
--
-- * 'umiNeverMarkSpam'
--
-- * 'umiInternalDateSource'
usersMessagesImport
    :: Message -- ^ 'umiPayload'
    -> UsersMessagesImport
usersMessagesImport pUmiPayload_ =
    UsersMessagesImport
    { _umiPayload = pUmiPayload_
    , _umiUserId = "me"
    , _umiProcessForCalendar = False
    , _umiDeleted = False
    , _umiNeverMarkSpam = False
    , _umiInternalDateSource = DateHeader
    }

-- | Multipart request metadata.
umiPayload :: Lens' UsersMessagesImport Message
umiPayload
  = lens _umiPayload (\ s a -> s{_umiPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umiUserId :: Lens' UsersMessagesImport Text
umiUserId
  = lens _umiUserId (\ s a -> s{_umiUserId = a})

-- | Process calendar invites in the email and add any extracted meetings to
-- the Google Calendar for this user.
umiProcessForCalendar :: Lens' UsersMessagesImport Bool
umiProcessForCalendar
  = lens _umiProcessForCalendar
      (\ s a -> s{_umiProcessForCalendar = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Apps Vault to a Vault administrator. Only used for Google Apps
-- for Work accounts.
umiDeleted :: Lens' UsersMessagesImport Bool
umiDeleted
  = lens _umiDeleted (\ s a -> s{_umiDeleted = a})

-- | Ignore the Gmail spam classifier decision and never mark this email as
-- SPAM in the mailbox.
umiNeverMarkSpam :: Lens' UsersMessagesImport Bool
umiNeverMarkSpam
  = lens _umiNeverMarkSpam
      (\ s a -> s{_umiNeverMarkSpam = a})

-- | Source for Gmail\'s internal date of the message.
umiInternalDateSource :: Lens' UsersMessagesImport UsersMessagesImportInternalDateSource
umiInternalDateSource
  = lens _umiInternalDateSource
      (\ s a -> s{_umiInternalDateSource = a})

instance GoogleRequest UsersMessagesImport where
        type Rs UsersMessagesImport = Message
        requestClient UsersMessagesImport{..}
          = go _umiUserId (Just _umiProcessForCalendar)
              (Just _umiDeleted)
              (Just _umiNeverMarkSpam)
              (Just _umiInternalDateSource)
              (Just AltJSON)
              _umiPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersMessagesImportResource)
                      mempty

instance GoogleRequest
         (MediaUpload UsersMessagesImport) where
        type Rs (MediaUpload UsersMessagesImport) = Message
        requestClient
          (MediaUpload UsersMessagesImport{..} body)
          = go _umiUserId (Just _umiProcessForCalendar)
              (Just _umiDeleted)
              (Just _umiNeverMarkSpam)
              (Just _umiInternalDateSource)
              (Just AltJSON)
              (Just AltMedia)
              _umiPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesImportResource)
                      mempty
