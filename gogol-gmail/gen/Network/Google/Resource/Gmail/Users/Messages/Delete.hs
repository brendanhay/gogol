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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Immediately and permanently deletes the specified message. This
-- operation cannot be undone. Prefer messages.trash instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesDelete@.
module Network.Google.Resource.Gmail.Users.Messages.Delete
    (
    -- * REST Resource
      UsersMessagesDeleteResource

    -- * Creating a Request
    , usersMessagesDelete'
    , UsersMessagesDelete'

    -- * Request Lenses
    , umdUserId
    , umdId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesDelete@ method which the
-- 'UsersMessagesDelete'' request conforms to.
type UsersMessagesDeleteResource =
     Capture "userId" Text :>
       "messages" :>
         Capture "id" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified message. This
-- operation cannot be undone. Prefer messages.trash instead.
--
-- /See:/ 'usersMessagesDelete'' smart constructor.
data UsersMessagesDelete' = UsersMessagesDelete'
    { _umdUserId :: !Text
    , _umdId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdUserId'
--
-- * 'umdId'
usersMessagesDelete'
    :: Text -- ^ 'id'
    -> Text
    -> UsersMessagesDelete'
usersMessagesDelete' pUmdUserId_ pUmdId_ =
    UsersMessagesDelete'
    { _umdUserId = pUmdUserId_
    , _umdId = pUmdId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umdUserId :: Lens' UsersMessagesDelete' Text
umdUserId
  = lens _umdUserId (\ s a -> s{_umdUserId = a})

-- | The ID of the message to delete.
umdId :: Lens' UsersMessagesDelete' Text
umdId = lens _umdId (\ s a -> s{_umdId = a})

instance GoogleRequest UsersMessagesDelete' where
        type Rs UsersMessagesDelete' = ()
        requestClient UsersMessagesDelete'{..}
          = go _umdUserId _umdId (Just AltJSON) gmail
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesDeleteResource)
                      mempty
