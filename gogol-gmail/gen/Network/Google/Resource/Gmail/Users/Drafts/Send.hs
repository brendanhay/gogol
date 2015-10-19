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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsSend@.
module Network.Google.Resource.Gmail.Users.Drafts.Send
    (
    -- * REST Resource
      UsersDraftsSendResource

    -- * Creating a Request
    , usersDraftsSend'
    , UsersDraftsSend'

    -- * Request Lenses
    , udsPayload
    , udsUserId
    , udsMedia
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsSend@ method which the
-- 'UsersDraftsSend'' request conforms to.
type UsersDraftsSendResource =
     Capture "userId" Text :>
       "drafts" :>
         "send" :>
           QueryParam "alt" AltJSON :>
             MultipartRelated '[JSON] Draft Body :>
               Post '[JSON] Message

-- | Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
--
-- /See:/ 'usersDraftsSend'' smart constructor.
data UsersDraftsSend' = UsersDraftsSend'
    { _udsPayload :: !Draft
    , _udsUserId  :: !Text
    , _udsMedia   :: !Body
    }

-- | Creates a value of 'UsersDraftsSend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsPayload'
--
-- * 'udsUserId'
--
-- * 'udsMedia'
usersDraftsSend'
    :: Draft -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Body
    -> UsersDraftsSend'
usersDraftsSend' pUdsPayload_ pUdsUserId_ pUdsMedia_ =
    UsersDraftsSend'
    { _udsPayload = pUdsPayload_
    , _udsUserId = pUdsUserId_
    , _udsMedia = pUdsMedia_
    }

-- | Multipart request metadata.
udsPayload :: Lens' UsersDraftsSend' Draft
udsPayload
  = lens _udsPayload (\ s a -> s{_udsPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udsUserId :: Lens' UsersDraftsSend' Text
udsUserId
  = lens _udsUserId (\ s a -> s{_udsUserId = a})

udsMedia :: Lens' UsersDraftsSend' Body
udsMedia = lens _udsMedia (\ s a -> s{_udsMedia = a})

instance GoogleRequest UsersDraftsSend' where
        type Rs UsersDraftsSend' = Message
        requestClient UsersDraftsSend'{..}
          = go _udsUserId (Just AltJSON) _udsPayload _udsMedia
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsSendResource)
                      mempty
