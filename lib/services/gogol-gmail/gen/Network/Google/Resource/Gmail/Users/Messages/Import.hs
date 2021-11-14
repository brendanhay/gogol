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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message. Note: This function doesn\'t trigger forwarding
-- rules or filters set up by the user.
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
    , umiXgafv
    , umiUploadProtocol
    , umiAccessToken
    , umiUploadType
    , umiPayload
    , umiUserId
    , umiProcessForCalendar
    , umiDeleted
    , umiNeverMarkSpam
    , umiInternalDateSource
    , umiCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.import@ method which the
-- 'UsersMessagesImport' request conforms to.
type UsersMessagesImportResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               "import" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "processForCalendar" Bool :>
                           QueryParam "deleted" Bool :>
                             QueryParam "neverMarkSpam" Bool :>
                               QueryParam "internalDateSource"
                                 UsersMessagesImportInternalDateSource
                                 :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Message :>
                                       Post '[JSON] Message
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
               Capture "userId" Text :>
                 "messages" :>
                   "import" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "processForCalendar" Bool :>
                               QueryParam "deleted" Bool :>
                                 QueryParam "neverMarkSpam" Bool :>
                                   QueryParam "internalDateSource"
                                     UsersMessagesImportInternalDateSource
                                     :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         QueryParam "uploadType" Multipart :>
                                           MultipartRelated '[JSON] Message :>
                                             Post '[JSON] Message

-- | Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message. Note: This function doesn\'t trigger forwarding
-- rules or filters set up by the user.
--
-- /See:/ 'usersMessagesImport' smart constructor.
data UsersMessagesImport =
  UsersMessagesImport'
    { _umiXgafv :: !(Maybe Xgafv)
    , _umiUploadProtocol :: !(Maybe Text)
    , _umiAccessToken :: !(Maybe Text)
    , _umiUploadType :: !(Maybe Text)
    , _umiPayload :: !Message
    , _umiUserId :: !Text
    , _umiProcessForCalendar :: !Bool
    , _umiDeleted :: !Bool
    , _umiNeverMarkSpam :: !Bool
    , _umiInternalDateSource :: !UsersMessagesImportInternalDateSource
    , _umiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiXgafv'
--
-- * 'umiUploadProtocol'
--
-- * 'umiAccessToken'
--
-- * 'umiUploadType'
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
--
-- * 'umiCallback'
usersMessagesImport
    :: Message -- ^ 'umiPayload'
    -> UsersMessagesImport
usersMessagesImport pUmiPayload_ =
  UsersMessagesImport'
    { _umiXgafv = Nothing
    , _umiUploadProtocol = Nothing
    , _umiAccessToken = Nothing
    , _umiUploadType = Nothing
    , _umiPayload = pUmiPayload_
    , _umiUserId = "me"
    , _umiProcessForCalendar = False
    , _umiDeleted = False
    , _umiNeverMarkSpam = False
    , _umiInternalDateSource = DateHeader
    , _umiCallback = Nothing
    }


-- | V1 error format.
umiXgafv :: Lens' UsersMessagesImport (Maybe Xgafv)
umiXgafv = lens _umiXgafv (\ s a -> s{_umiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umiUploadProtocol :: Lens' UsersMessagesImport (Maybe Text)
umiUploadProtocol
  = lens _umiUploadProtocol
      (\ s a -> s{_umiUploadProtocol = a})

-- | OAuth access token.
umiAccessToken :: Lens' UsersMessagesImport (Maybe Text)
umiAccessToken
  = lens _umiAccessToken
      (\ s a -> s{_umiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umiUploadType :: Lens' UsersMessagesImport (Maybe Text)
umiUploadType
  = lens _umiUploadType
      (\ s a -> s{_umiUploadType = a})

-- | Multipart request metadata.
umiPayload :: Lens' UsersMessagesImport Message
umiPayload
  = lens _umiPayload (\ s a -> s{_umiPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
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
-- Google Vault to a Vault administrator. Only used for G Suite accounts.
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

-- | JSONP
umiCallback :: Lens' UsersMessagesImport (Maybe Text)
umiCallback
  = lens _umiCallback (\ s a -> s{_umiCallback = a})

instance GoogleRequest UsersMessagesImport where
        type Rs UsersMessagesImport = Message
        type Scopes UsersMessagesImport =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.insert",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersMessagesImport'{..}
          = go _umiUserId _umiXgafv _umiUploadProtocol
              _umiAccessToken
              _umiUploadType
              (Just _umiProcessForCalendar)
              (Just _umiDeleted)
              (Just _umiNeverMarkSpam)
              (Just _umiInternalDateSource)
              _umiCallback
              (Just AltJSON)
              _umiPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersMessagesImportResource)
                      mempty

instance GoogleRequest
           (MediaUpload UsersMessagesImport)
         where
        type Rs (MediaUpload UsersMessagesImport) = Message
        type Scopes (MediaUpload UsersMessagesImport) =
             Scopes UsersMessagesImport
        requestClient
          (MediaUpload UsersMessagesImport'{..} body)
          = go _umiUserId _umiXgafv _umiUploadProtocol
              _umiAccessToken
              _umiUploadType
              (Just _umiProcessForCalendar)
              (Just _umiDeleted)
              (Just _umiNeverMarkSpam)
              (Just _umiInternalDateSource)
              _umiCallback
              (Just AltJSON)
              (Just Multipart)
              _umiPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesImportResource)
                      mempty
