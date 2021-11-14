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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Directly inserts a message into only this user\'s mailbox similar to
-- \`IMAP APPEND\`, bypassing most scanning and classification. Does not
-- send a message.
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
    , uXgafv
    , uUploadProtocol
    , uAccessToken
    , uUploadType
    , uPayload
    , uUserId
    , uDeleted
    , uInternalDateSource
    , uCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.insert@ method which the
-- 'UsersMessagesInsert' request conforms to.
type UsersMessagesInsertResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "deleted" Bool :>
                         QueryParam "internalDateSource"
                           UsersMessagesInsertInternalDateSource
                           :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Message :> Post '[JSON] Message
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
               Capture "userId" Text :>
                 "messages" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "deleted" Bool :>
                             QueryParam "internalDateSource"
                               UsersMessagesInsertInternalDateSource
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   QueryParam "uploadType" Multipart :>
                                     MultipartRelated '[JSON] Message :>
                                       Post '[JSON] Message

-- | Directly inserts a message into only this user\'s mailbox similar to
-- \`IMAP APPEND\`, bypassing most scanning and classification. Does not
-- send a message.
--
-- /See:/ 'usersMessagesInsert' smart constructor.
data UsersMessagesInsert =
  UsersMessagesInsert'
    { _uXgafv :: !(Maybe Xgafv)
    , _uUploadProtocol :: !(Maybe Text)
    , _uAccessToken :: !(Maybe Text)
    , _uUploadType :: !(Maybe Text)
    , _uPayload :: !Message
    , _uUserId :: !Text
    , _uDeleted :: !Bool
    , _uInternalDateSource :: !UsersMessagesInsertInternalDateSource
    , _uCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uXgafv'
--
-- * 'uUploadProtocol'
--
-- * 'uAccessToken'
--
-- * 'uUploadType'
--
-- * 'uPayload'
--
-- * 'uUserId'
--
-- * 'uDeleted'
--
-- * 'uInternalDateSource'
--
-- * 'uCallback'
usersMessagesInsert
    :: Message -- ^ 'uPayload'
    -> UsersMessagesInsert
usersMessagesInsert pUPayload_ =
  UsersMessagesInsert'
    { _uXgafv = Nothing
    , _uUploadProtocol = Nothing
    , _uAccessToken = Nothing
    , _uUploadType = Nothing
    , _uPayload = pUPayload_
    , _uUserId = "me"
    , _uDeleted = False
    , _uInternalDateSource = UMIIDSReceivedTime
    , _uCallback = Nothing
    }


-- | V1 error format.
uXgafv :: Lens' UsersMessagesInsert (Maybe Xgafv)
uXgafv = lens _uXgafv (\ s a -> s{_uXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uUploadProtocol :: Lens' UsersMessagesInsert (Maybe Text)
uUploadProtocol
  = lens _uUploadProtocol
      (\ s a -> s{_uUploadProtocol = a})

-- | OAuth access token.
uAccessToken :: Lens' UsersMessagesInsert (Maybe Text)
uAccessToken
  = lens _uAccessToken (\ s a -> s{_uAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uUploadType :: Lens' UsersMessagesInsert (Maybe Text)
uUploadType
  = lens _uUploadType (\ s a -> s{_uUploadType = a})

-- | Multipart request metadata.
uPayload :: Lens' UsersMessagesInsert Message
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
uUserId :: Lens' UsersMessagesInsert Text
uUserId = lens _uUserId (\ s a -> s{_uUserId = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Vault to a Vault administrator. Only used for G Suite accounts.
uDeleted :: Lens' UsersMessagesInsert Bool
uDeleted = lens _uDeleted (\ s a -> s{_uDeleted = a})

-- | Source for Gmail\'s internal date of the message.
uInternalDateSource :: Lens' UsersMessagesInsert UsersMessagesInsertInternalDateSource
uInternalDateSource
  = lens _uInternalDateSource
      (\ s a -> s{_uInternalDateSource = a})

-- | JSONP
uCallback :: Lens' UsersMessagesInsert (Maybe Text)
uCallback
  = lens _uCallback (\ s a -> s{_uCallback = a})

instance GoogleRequest UsersMessagesInsert where
        type Rs UsersMessagesInsert = Message
        type Scopes UsersMessagesInsert =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.insert",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersMessagesInsert'{..}
          = go _uUserId _uXgafv _uUploadProtocol _uAccessToken
              _uUploadType
              (Just _uDeleted)
              (Just _uInternalDateSource)
              _uCallback
              (Just AltJSON)
              _uPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersMessagesInsertResource)
                      mempty

instance GoogleRequest
           (MediaUpload UsersMessagesInsert)
         where
        type Rs (MediaUpload UsersMessagesInsert) = Message
        type Scopes (MediaUpload UsersMessagesInsert) =
             Scopes UsersMessagesInsert
        requestClient
          (MediaUpload UsersMessagesInsert'{..} body)
          = go _uUserId _uXgafv _uUploadProtocol _uAccessToken
              _uUploadType
              (Just _uDeleted)
              (Just _uInternalDateSource)
              _uCallback
              (Just AltJSON)
              (Just Multipart)
              _uPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesInsertResource)
                      mempty
