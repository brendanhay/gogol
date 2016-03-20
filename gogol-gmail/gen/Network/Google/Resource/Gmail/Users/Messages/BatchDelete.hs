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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes many messages by message ID. Provides no guarantees that
-- messages were not already deleted or even existed at all.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.batchDelete@.
module Network.Google.Resource.Gmail.Users.Messages.BatchDelete
    (
    -- * REST Resource
      UsersMessagesBatchDeleteResource

    -- * Creating a Request
    , usersMessagesBatchDelete
    , UsersMessagesBatchDelete

    -- * Request Lenses
    , umbdPayload
    , umbdUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.batchDelete@ method which the
-- 'UsersMessagesBatchDelete' request conforms to.
type UsersMessagesBatchDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               "batchDelete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] BatchDeleteMessagesRequest :>
                     Post '[JSON] ()

-- | Deletes many messages by message ID. Provides no guarantees that
-- messages were not already deleted or even existed at all.
--
-- /See:/ 'usersMessagesBatchDelete' smart constructor.
data UsersMessagesBatchDelete = UsersMessagesBatchDelete
    { _umbdPayload :: !BatchDeleteMessagesRequest
    , _umbdUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umbdPayload'
--
-- * 'umbdUserId'
usersMessagesBatchDelete
    :: BatchDeleteMessagesRequest -- ^ 'umbdPayload'
    -> UsersMessagesBatchDelete
usersMessagesBatchDelete pUmbdPayload_ =
    UsersMessagesBatchDelete
    { _umbdPayload = pUmbdPayload_
    , _umbdUserId = "me"
    }

-- | Multipart request metadata.
umbdPayload :: Lens' UsersMessagesBatchDelete BatchDeleteMessagesRequest
umbdPayload
  = lens _umbdPayload (\ s a -> s{_umbdPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umbdUserId :: Lens' UsersMessagesBatchDelete Text
umbdUserId
  = lens _umbdUserId (\ s a -> s{_umbdUserId = a})

instance GoogleRequest UsersMessagesBatchDelete where
        type Rs UsersMessagesBatchDelete = ()
        requestClient UsersMessagesBatchDelete{..}
          = go _umbdUserId (Just AltJSON) _umbdPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesBatchDeleteResource)
                      mempty
