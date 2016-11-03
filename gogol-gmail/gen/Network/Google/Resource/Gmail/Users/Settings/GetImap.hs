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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.GetImap
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets IMAP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.getImap@.
module Network.Google.Resource.Gmail.Users.Settings.GetImap
    (
    -- * REST Resource
      UsersSettingsGetImapResource

    -- * Creating a Request
    , usersSettingsGetImap
    , UsersSettingsGetImap

    -- * Request Lenses
    , usgiUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.getImap@ method which the
-- 'UsersSettingsGetImap' request conforms to.
type UsersSettingsGetImapResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "imap" :>
                 QueryParam "alt" AltJSON :> Get '[JSON] ImapSettings

-- | Gets IMAP settings.
--
-- /See:/ 'usersSettingsGetImap' smart constructor.
newtype UsersSettingsGetImap = UsersSettingsGetImap'
    { _usgiUserId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsGetImap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgiUserId'
usersSettingsGetImap
    :: UsersSettingsGetImap
usersSettingsGetImap =
    UsersSettingsGetImap'
    { _usgiUserId = "me"
    }

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usgiUserId :: Lens' UsersSettingsGetImap Text
usgiUserId
  = lens _usgiUserId (\ s a -> s{_usgiUserId = a})

instance GoogleRequest UsersSettingsGetImap where
        type Rs UsersSettingsGetImap = ImapSettings
        type Scopes UsersSettingsGetImap =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsGetImap'{..}
          = go _usgiUserId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsGetImapResource)
                      mempty
