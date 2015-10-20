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
-- Module      : Network.Google.Resource.Gmail.Users.Stop
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop receiving push notifications for the given user mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.stop@.
module Network.Google.Resource.Gmail.Users.Stop
    (
    -- * REST Resource
      UsersStopResource

    -- * Creating a Request
    , usersStop
    , UsersStop

    -- * Request Lenses
    , usUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.stop@ method which the
-- 'UsersStop' request conforms to.
type UsersStopResource =
     Capture "userId" Text :>
       "stop" :> QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Stop receiving push notifications for the given user mailbox.
--
-- /See:/ 'usersStop' smart constructor.
newtype UsersStop = UsersStop
    { _usUserId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usUserId'
usersStop
    :: Text
    -> UsersStop
usersStop pUsUserId_ =
    UsersStop
    { _usUserId = pUsUserId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
usUserId :: Lens' UsersStop Text
usUserId = lens _usUserId (\ s a -> s{_usUserId = a})

instance GoogleRequest UsersStop where
        type Rs UsersStop = ()
        requestClient UsersStop{..}
          = go _usUserId (Just AltJSON) gmailService
          where go
                  = buildClient (Proxy :: Proxy UsersStopResource)
                      mempty
