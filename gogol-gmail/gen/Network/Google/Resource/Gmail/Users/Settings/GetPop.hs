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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.GetPop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets POP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.getPop@.
module Network.Google.Resource.Gmail.Users.Settings.GetPop
    (
    -- * REST Resource
      UsersSettingsGetPopResource

    -- * Creating a Request
    , usersSettingsGetPop
    , UsersSettingsGetPop

    -- * Request Lenses
    , usgpUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.getPop@ method which the
-- 'UsersSettingsGetPop' request conforms to.
type UsersSettingsGetPopResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "pop" :>
                 QueryParam "alt" AltJSON :> Get '[JSON] PopSettings

-- | Gets POP settings.
--
-- /See:/ 'usersSettingsGetPop' smart constructor.
newtype UsersSettingsGetPop =
  UsersSettingsGetPop'
    { _usgpUserId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsGetPop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgpUserId'
usersSettingsGetPop
    :: UsersSettingsGetPop
usersSettingsGetPop = UsersSettingsGetPop' {_usgpUserId = "me"}


-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usgpUserId :: Lens' UsersSettingsGetPop Text
usgpUserId
  = lens _usgpUserId (\ s a -> s{_usgpUserId = a})

instance GoogleRequest UsersSettingsGetPop where
        type Rs UsersSettingsGetPop = PopSettings
        type Scopes UsersSettingsGetPop =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsGetPop'{..}
          = go _usgpUserId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsGetPopResource)
                      mempty
