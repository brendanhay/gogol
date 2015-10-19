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
-- Module      : Network.Google.Resource.Gmail.Users.GetProFile
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current user\'s Gmail profile.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersGetProFile@.
module Network.Google.Resource.Gmail.Users.GetProFile
    (
    -- * REST Resource
      UsersGetProFileResource

    -- * Creating a Request
    , usersGetProFile'
    , UsersGetProFile'

    -- * Request Lenses
    , ugpfUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersGetProFile@ method which the
-- 'UsersGetProFile'' request conforms to.
type UsersGetProFileResource =
     Capture "userId" Text :>
       "profile" :>
         QueryParam "alt" AltJSON :> Get '[JSON] ProFile

-- | Gets the current user\'s Gmail profile.
--
-- /See:/ 'usersGetProFile'' smart constructor.
newtype UsersGetProFile' = UsersGetProFile'
    { _ugpfUserId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGetProFile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugpfUserId'
usersGetProFile'
    :: Text
    -> UsersGetProFile'
usersGetProFile' pUgpfUserId_ =
    UsersGetProFile'
    { _ugpfUserId = pUgpfUserId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ugpfUserId :: Lens' UsersGetProFile' Text
ugpfUserId
  = lens _ugpfUserId (\ s a -> s{_ugpfUserId = a})

instance GoogleRequest UsersGetProFile' where
        type Rs UsersGetProFile' = ProFile
        requestClient UsersGetProFile'{..}
          = go _ugpfUserId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersGetProFileResource)
                      mempty
