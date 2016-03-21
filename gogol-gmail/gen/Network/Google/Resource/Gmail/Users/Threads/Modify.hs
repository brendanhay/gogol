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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Modify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.modify@.
module Network.Google.Resource.Gmail.Users.Threads.Modify
    (
    -- * REST Resource
      UsersThreadsModifyResource

    -- * Creating a Request
    , usersThreadsModify
    , UsersThreadsModify

    -- * Request Lenses
    , utmPayload
    , utmUserId
    , utmId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.modify@ method which the
-- 'UsersThreadsModify' request conforms to.
type UsersThreadsModifyResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 "modify" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyThreadRequest :>
                       Post '[JSON] Thread

-- | Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ 'usersThreadsModify' smart constructor.
data UsersThreadsModify = UsersThreadsModify'
    { _utmPayload :: !ModifyThreadRequest
    , _utmUserId  :: !Text
    , _utmId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsModify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utmPayload'
--
-- * 'utmUserId'
--
-- * 'utmId'
usersThreadsModify
    :: ModifyThreadRequest -- ^ 'utmPayload'
    -> Text -- ^ 'utmId'
    -> UsersThreadsModify
usersThreadsModify pUtmPayload_ pUtmId_ =
    UsersThreadsModify'
    { _utmPayload = pUtmPayload_
    , _utmUserId = "me"
    , _utmId = pUtmId_
    }

-- | Multipart request metadata.
utmPayload :: Lens' UsersThreadsModify ModifyThreadRequest
utmPayload
  = lens _utmPayload (\ s a -> s{_utmPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utmUserId :: Lens' UsersThreadsModify Text
utmUserId
  = lens _utmUserId (\ s a -> s{_utmUserId = a})

-- | The ID of the thread to modify.
utmId :: Lens' UsersThreadsModify Text
utmId = lens _utmId (\ s a -> s{_utmId = a})

instance GoogleRequest UsersThreadsModify where
        type Rs UsersThreadsModify = Thread
        type Scopes UsersThreadsModify =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersThreadsModify'{..}
          = go _utmUserId _utmId (Just AltJSON) _utmPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsModifyResource)
                      mempty
