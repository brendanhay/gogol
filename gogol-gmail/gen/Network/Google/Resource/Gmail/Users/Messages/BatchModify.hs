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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.BatchModify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the labels on the specified messages.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.batchModify@.
module Network.Google.Resource.Gmail.Users.Messages.BatchModify
    (
    -- * REST Resource
      UsersMessagesBatchModifyResource

    -- * Creating a Request
    , usersMessagesBatchModify
    , UsersMessagesBatchModify

    -- * Request Lenses
    , umbmPayload
    , umbmUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.batchModify@ method which the
-- 'UsersMessagesBatchModify' request conforms to.
type UsersMessagesBatchModifyResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               "batchModify" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] BatchModifyMessagesRequest :>
                     Post '[JSON] ()

-- | Modifies the labels on the specified messages.
--
-- /See:/ 'usersMessagesBatchModify' smart constructor.
data UsersMessagesBatchModify = UsersMessagesBatchModify'
    { _umbmPayload :: !BatchModifyMessagesRequest
    , _umbmUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesBatchModify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umbmPayload'
--
-- * 'umbmUserId'
usersMessagesBatchModify
    :: BatchModifyMessagesRequest -- ^ 'umbmPayload'
    -> UsersMessagesBatchModify
usersMessagesBatchModify pUmbmPayload_ =
    UsersMessagesBatchModify'
    { _umbmPayload = pUmbmPayload_
    , _umbmUserId = "me"
    }

-- | Multipart request metadata.
umbmPayload :: Lens' UsersMessagesBatchModify BatchModifyMessagesRequest
umbmPayload
  = lens _umbmPayload (\ s a -> s{_umbmPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umbmUserId :: Lens' UsersMessagesBatchModify Text
umbmUserId
  = lens _umbmUserId (\ s a -> s{_umbmUserId = a})

instance GoogleRequest UsersMessagesBatchModify where
        type Rs UsersMessagesBatchModify = ()
        type Scopes UsersMessagesBatchModify =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersMessagesBatchModify'{..}
          = go _umbmUserId (Just AltJSON) _umbmPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesBatchModifyResource)
                      mempty
