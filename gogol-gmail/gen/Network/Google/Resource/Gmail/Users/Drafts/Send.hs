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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Send
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends the specified, existing draft to the recipients in the \`To\`,
-- \`Cc\`, and \`Bcc\` headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.send@.
module Network.Google.Resource.Gmail.Users.Drafts.Send
    (
    -- * REST Resource
      UsersDraftsSendResource

    -- * Creating a Request
    , usersDraftsSend
    , UsersDraftsSend

    -- * Request Lenses
    , udsXgafv
    , udsUploadProtocol
    , udsAccessToken
    , udsUploadType
    , udsPayload
    , udsUserId
    , udsCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.send@ method which the
-- 'UsersDraftsSend' request conforms to.
type UsersDraftsSendResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               "send" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Draft :> Post '[JSON] Message
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
               Capture "userId" Text :>
                 "drafts" :>
                   "send" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 QueryParam "uploadType" Multipart :>
                                   MultipartRelated '[JSON] Draft :>
                                     Post '[JSON] Message

-- | Sends the specified, existing draft to the recipients in the \`To\`,
-- \`Cc\`, and \`Bcc\` headers.
--
-- /See:/ 'usersDraftsSend' smart constructor.
data UsersDraftsSend =
  UsersDraftsSend'
    { _udsXgafv :: !(Maybe Xgafv)
    , _udsUploadProtocol :: !(Maybe Text)
    , _udsAccessToken :: !(Maybe Text)
    , _udsUploadType :: !(Maybe Text)
    , _udsPayload :: !Draft
    , _udsUserId :: !Text
    , _udsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDraftsSend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsXgafv'
--
-- * 'udsUploadProtocol'
--
-- * 'udsAccessToken'
--
-- * 'udsUploadType'
--
-- * 'udsPayload'
--
-- * 'udsUserId'
--
-- * 'udsCallback'
usersDraftsSend
    :: Draft -- ^ 'udsPayload'
    -> UsersDraftsSend
usersDraftsSend pUdsPayload_ =
  UsersDraftsSend'
    { _udsXgafv = Nothing
    , _udsUploadProtocol = Nothing
    , _udsAccessToken = Nothing
    , _udsUploadType = Nothing
    , _udsPayload = pUdsPayload_
    , _udsUserId = "me"
    , _udsCallback = Nothing
    }


-- | V1 error format.
udsXgafv :: Lens' UsersDraftsSend (Maybe Xgafv)
udsXgafv = lens _udsXgafv (\ s a -> s{_udsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udsUploadProtocol :: Lens' UsersDraftsSend (Maybe Text)
udsUploadProtocol
  = lens _udsUploadProtocol
      (\ s a -> s{_udsUploadProtocol = a})

-- | OAuth access token.
udsAccessToken :: Lens' UsersDraftsSend (Maybe Text)
udsAccessToken
  = lens _udsAccessToken
      (\ s a -> s{_udsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udsUploadType :: Lens' UsersDraftsSend (Maybe Text)
udsUploadType
  = lens _udsUploadType
      (\ s a -> s{_udsUploadType = a})

-- | Multipart request metadata.
udsPayload :: Lens' UsersDraftsSend Draft
udsPayload
  = lens _udsPayload (\ s a -> s{_udsPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
udsUserId :: Lens' UsersDraftsSend Text
udsUserId
  = lens _udsUserId (\ s a -> s{_udsUserId = a})

-- | JSONP
udsCallback :: Lens' UsersDraftsSend (Maybe Text)
udsCallback
  = lens _udsCallback (\ s a -> s{_udsCallback = a})

instance GoogleRequest UsersDraftsSend where
        type Rs UsersDraftsSend = Message
        type Scopes UsersDraftsSend =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersDraftsSend'{..}
          = go _udsUserId _udsXgafv _udsUploadProtocol
              _udsAccessToken
              _udsUploadType
              _udsCallback
              (Just AltJSON)
              _udsPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersDraftsSendResource)
                      mempty

instance GoogleRequest (MediaUpload UsersDraftsSend)
         where
        type Rs (MediaUpload UsersDraftsSend) = Message
        type Scopes (MediaUpload UsersDraftsSend) =
             Scopes UsersDraftsSend
        requestClient (MediaUpload UsersDraftsSend'{..} body)
          = go _udsUserId _udsXgafv _udsUploadProtocol
              _udsAccessToken
              _udsUploadType
              _udsCallback
              (Just AltJSON)
              (Just Multipart)
              _udsPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsSendResource)
                      mempty
