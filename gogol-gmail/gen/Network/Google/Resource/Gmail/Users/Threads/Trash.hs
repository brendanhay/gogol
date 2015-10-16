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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Trash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves the specified thread to the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersThreadsTrash@.
module Network.Google.Resource.Gmail.Users.Threads.Trash
    (
    -- * REST Resource
      UsersThreadsTrashResource

    -- * Creating a Request
    , usersThreadsTrash'
    , UsersThreadsTrash'

    -- * Request Lenses
    , uttUserId
    , uttId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsTrash@ method which the
-- 'UsersThreadsTrash'' request conforms to.
type UsersThreadsTrashResource =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           "trash" :>
             QueryParam "alt" AltJSON :> Post '[JSON] Thread

-- | Moves the specified thread to the trash.
--
-- /See:/ 'usersThreadsTrash'' smart constructor.
data UsersThreadsTrash' = UsersThreadsTrash'
    { _uttUserId :: !Text
    , _uttId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uttUserId'
--
-- * 'uttId'
usersThreadsTrash'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsTrash'
usersThreadsTrash' pUttUserId_ pUttId_ =
    UsersThreadsTrash'
    { _uttUserId = pUttUserId_
    , _uttId = pUttId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uttUserId :: Lens' UsersThreadsTrash' Text
uttUserId
  = lens _uttUserId (\ s a -> s{_uttUserId = a})

-- | The ID of the thread to Trash.
uttId :: Lens' UsersThreadsTrash' Text
uttId = lens _uttId (\ s a -> s{_uttId = a})

instance GoogleRequest UsersThreadsTrash' where
        type Rs UsersThreadsTrash' = Thread
        requestClient UsersThreadsTrash'{..}
          = go _uttUserId _uttId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsTrashResource)
                      mempty
