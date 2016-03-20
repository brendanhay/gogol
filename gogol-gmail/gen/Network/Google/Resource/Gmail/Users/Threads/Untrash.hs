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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Untrash
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified thread from the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.untrash@.
module Network.Google.Resource.Gmail.Users.Threads.Untrash
    (
    -- * REST Resource
      UsersThreadsUntrashResource

    -- * Creating a Request
    , usersThreadsUntrash
    , UsersThreadsUntrash

    -- * Request Lenses
    , utuUserId
    , utuId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.untrash@ method which the
-- 'UsersThreadsUntrash' request conforms to.
type UsersThreadsUntrashResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 "untrash" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Thread

-- | Removes the specified thread from the trash.
--
-- /See:/ 'usersThreadsUntrash' smart constructor.
data UsersThreadsUntrash = UsersThreadsUntrash
    { _utuUserId :: !Text
    , _utuId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsUntrash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utuUserId'
--
-- * 'utuId'
usersThreadsUntrash
    :: Text -- ^ 'utuId'
    -> UsersThreadsUntrash
usersThreadsUntrash pUtuId_ =
    UsersThreadsUntrash
    { _utuUserId = "me"
    , _utuId = pUtuId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utuUserId :: Lens' UsersThreadsUntrash Text
utuUserId
  = lens _utuUserId (\ s a -> s{_utuUserId = a})

-- | The ID of the thread to remove from Trash.
utuId :: Lens' UsersThreadsUntrash Text
utuId = lens _utuId (\ s a -> s{_utuId = a})

instance GoogleRequest UsersThreadsUntrash where
        type Rs UsersThreadsUntrash = Thread
        requestClient UsersThreadsUntrash{..}
          = go _utuUserId _utuId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsUntrashResource)
                      mempty
