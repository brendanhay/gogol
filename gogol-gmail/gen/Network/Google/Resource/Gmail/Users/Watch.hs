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
-- Module      : Network.Google.Resource.Gmail.Users.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.watch@.
module Network.Google.Resource.Gmail.Users.Watch
    (
    -- * REST Resource
      UsersWatchResource

    -- * Creating a Request
    , usersWatch
    , UsersWatch

    -- * Request Lenses
    , uwPayload
    , uwUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.watch@ method which the
-- 'UsersWatch' request conforms to.
type UsersWatchResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "watch" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] WatchRequest :>
                   Post '[JSON] WatchResponse

-- | Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ 'usersWatch' smart constructor.
data UsersWatch = UsersWatch
    { _uwPayload :: !WatchRequest
    , _uwUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwPayload'
--
-- * 'uwUserId'
usersWatch
    :: WatchRequest -- ^ 'uwPayload'
    -> UsersWatch
usersWatch pUwPayload_ =
    UsersWatch
    { _uwPayload = pUwPayload_
    , _uwUserId = "me"
    }

-- | Multipart request metadata.
uwPayload :: Lens' UsersWatch WatchRequest
uwPayload
  = lens _uwPayload (\ s a -> s{_uwPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uwUserId :: Lens' UsersWatch Text
uwUserId = lens _uwUserId (\ s a -> s{_uwUserId = a})

instance GoogleRequest UsersWatch where
        type Rs UsersWatch = WatchResponse
        type Scopes UsersWatch =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersWatch{..}
          = go _uwUserId (Just AltJSON) _uwPayload gmailService
          where go
                  = buildClient (Proxy :: Proxy UsersWatchResource)
                      mempty
