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
-- Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
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
    , udsPayload
    , udsUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.send@ method which the
-- 'UsersDraftsSend' request conforms to.
type UsersDraftsSendResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               "send" :>
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
                     QueryParam "alt" AltJSON :>
                       QueryParam "uploadType" AltMedia :>
                         MultipartRelated '[JSON] Draft RequestBody :>
                           Post '[JSON] Message

-- | Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
--
-- /See:/ 'usersDraftsSend' smart constructor.
data UsersDraftsSend = UsersDraftsSend
    { _udsPayload :: !Draft
    , _udsUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsSend' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsPayload'
--
-- * 'udsUserId'
usersDraftsSend
    :: Draft -- ^ 'udsPayload'
    -> UsersDraftsSend
usersDraftsSend pUdsPayload_ =
    UsersDraftsSend
    { _udsPayload = pUdsPayload_
    , _udsUserId = "me"
    }

-- | Multipart request metadata.
udsPayload :: Lens' UsersDraftsSend Draft
udsPayload
  = lens _udsPayload (\ s a -> s{_udsPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udsUserId :: Lens' UsersDraftsSend Text
udsUserId
  = lens _udsUserId (\ s a -> s{_udsUserId = a})

instance GoogleRequest UsersDraftsSend where
        type Rs UsersDraftsSend = Message
        type Scopes UsersDraftsSend =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersDraftsSend{..}
          = go _udsUserId (Just AltJSON) _udsPayload
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
        requestClient (MediaUpload UsersDraftsSend{..} body)
          = go _udsUserId (Just AltJSON) (Just AltMedia)
              _udsPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsSendResource)
                      mempty
