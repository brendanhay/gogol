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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends the specified message to the recipients in the \`To\`, \`Cc\`, and
-- \`Bcc\` headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.send@.
module Network.Google.Resource.Gmail.Users.Messages.Send
    (
    -- * REST Resource
      UsersMessagesSendResource

    -- * Creating a Request
    , usersMessagesSend
    , UsersMessagesSend

    -- * Request Lenses
    , umsXgafv
    , umsUploadProtocol
    , umsAccessToken
    , umsUploadType
    , umsPayload
    , umsUserId
    , umsCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.send@ method which the
-- 'UsersMessagesSend' request conforms to.
type UsersMessagesSendResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               "send" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
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
                   "send" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 QueryParam "uploadType" Multipart :>
                                   MultipartRelated '[JSON] Message :>
                                     Post '[JSON] Message

-- | Sends the specified message to the recipients in the \`To\`, \`Cc\`, and
-- \`Bcc\` headers.
--
-- /See:/ 'usersMessagesSend' smart constructor.
data UsersMessagesSend =
  UsersMessagesSend'
    { _umsXgafv :: !(Maybe Xgafv)
    , _umsUploadProtocol :: !(Maybe Text)
    , _umsAccessToken :: !(Maybe Text)
    , _umsUploadType :: !(Maybe Text)
    , _umsPayload :: !Message
    , _umsUserId :: !Text
    , _umsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesSend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umsXgafv'
--
-- * 'umsUploadProtocol'
--
-- * 'umsAccessToken'
--
-- * 'umsUploadType'
--
-- * 'umsPayload'
--
-- * 'umsUserId'
--
-- * 'umsCallback'
usersMessagesSend
    :: Message -- ^ 'umsPayload'
    -> UsersMessagesSend
usersMessagesSend pUmsPayload_ =
  UsersMessagesSend'
    { _umsXgafv = Nothing
    , _umsUploadProtocol = Nothing
    , _umsAccessToken = Nothing
    , _umsUploadType = Nothing
    , _umsPayload = pUmsPayload_
    , _umsUserId = "me"
    , _umsCallback = Nothing
    }


-- | V1 error format.
umsXgafv :: Lens' UsersMessagesSend (Maybe Xgafv)
umsXgafv = lens _umsXgafv (\ s a -> s{_umsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umsUploadProtocol :: Lens' UsersMessagesSend (Maybe Text)
umsUploadProtocol
  = lens _umsUploadProtocol
      (\ s a -> s{_umsUploadProtocol = a})

-- | OAuth access token.
umsAccessToken :: Lens' UsersMessagesSend (Maybe Text)
umsAccessToken
  = lens _umsAccessToken
      (\ s a -> s{_umsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umsUploadType :: Lens' UsersMessagesSend (Maybe Text)
umsUploadType
  = lens _umsUploadType
      (\ s a -> s{_umsUploadType = a})

-- | Multipart request metadata.
umsPayload :: Lens' UsersMessagesSend Message
umsPayload
  = lens _umsPayload (\ s a -> s{_umsPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umsUserId :: Lens' UsersMessagesSend Text
umsUserId
  = lens _umsUserId (\ s a -> s{_umsUserId = a})

-- | JSONP
umsCallback :: Lens' UsersMessagesSend (Maybe Text)
umsCallback
  = lens _umsCallback (\ s a -> s{_umsCallback = a})

instance GoogleRequest UsersMessagesSend where
        type Rs UsersMessagesSend = Message
        type Scopes UsersMessagesSend =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.send"]
        requestClient UsersMessagesSend'{..}
          = go _umsUserId _umsXgafv _umsUploadProtocol
              _umsAccessToken
              _umsUploadType
              _umsCallback
              (Just AltJSON)
              _umsPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersMessagesSendResource)
                      mempty

instance GoogleRequest
           (MediaUpload UsersMessagesSend)
         where
        type Rs (MediaUpload UsersMessagesSend) = Message
        type Scopes (MediaUpload UsersMessagesSend) =
             Scopes UsersMessagesSend
        requestClient
          (MediaUpload UsersMessagesSend'{..} body)
          = go _umsUserId _umsXgafv _umsUploadProtocol
              _umsAccessToken
              _umsUploadType
              _umsCallback
              (Just AltJSON)
              (Just Multipart)
              _umsPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesSendResource)
                      mempty
