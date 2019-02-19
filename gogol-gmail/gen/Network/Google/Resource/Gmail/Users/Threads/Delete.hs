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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer threads.trash instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.delete@.
module Network.Google.Resource.Gmail.Users.Threads.Delete
    (
    -- * REST Resource
      UsersThreadsDeleteResource

    -- * Creating a Request
    , usersThreadsDelete
    , UsersThreadsDelete

    -- * Request Lenses
    , utdUserId
    , utdId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.delete@ method which the
-- 'UsersThreadsDelete' request conforms to.
type UsersThreadsDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer threads.trash instead.
--
-- /See:/ 'usersThreadsDelete' smart constructor.
data UsersThreadsDelete =
  UsersThreadsDelete'
    { _utdUserId :: !Text
    , _utdId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersThreadsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utdUserId'
--
-- * 'utdId'
usersThreadsDelete
    :: Text -- ^ 'utdId'
    -> UsersThreadsDelete
usersThreadsDelete pUtdId_ =
  UsersThreadsDelete' {_utdUserId = "me", _utdId = pUtdId_}

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utdUserId :: Lens' UsersThreadsDelete Text
utdUserId
  = lens _utdUserId (\ s a -> s{_utdUserId = a})

-- | ID of the Thread to delete.
utdId :: Lens' UsersThreadsDelete Text
utdId = lens _utdId (\ s a -> s{_utdId = a})

instance GoogleRequest UsersThreadsDelete where
        type Rs UsersThreadsDelete = ()
        type Scopes UsersThreadsDelete =
             '["https://mail.google.com/"]
        requestClient UsersThreadsDelete'{..}
          = go _utdUserId _utdId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsDeleteResource)
                      mempty
