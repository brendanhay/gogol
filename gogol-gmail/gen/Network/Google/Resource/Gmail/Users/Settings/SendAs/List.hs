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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the send-as aliases for the specified account. The result includes
-- the primary send-as address associated with the account as well as any
-- custom \"from\" aliases.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.list@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.List
    (
    -- * REST Resource
      UsersSettingsSendAsListResource

    -- * Creating a Request
    , usersSettingsSendAsList
    , UsersSettingsSendAsList

    -- * Request Lenses
    , ussalUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.list@ method which the
-- 'UsersSettingsSendAsList' request conforms to.
type UsersSettingsSendAsListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ListSendAsResponse

-- | Lists the send-as aliases for the specified account. The result includes
-- the primary send-as address associated with the account as well as any
-- custom \"from\" aliases.
--
-- /See:/ 'usersSettingsSendAsList' smart constructor.
newtype UsersSettingsSendAsList =
  UsersSettingsSendAsList'
    { _ussalUserId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersSettingsSendAsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussalUserId'
usersSettingsSendAsList
    :: UsersSettingsSendAsList
usersSettingsSendAsList = UsersSettingsSendAsList' {_ussalUserId = "me"}

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussalUserId :: Lens' UsersSettingsSendAsList Text
ussalUserId
  = lens _ussalUserId (\ s a -> s{_ussalUserId = a})

instance GoogleRequest UsersSettingsSendAsList where
        type Rs UsersSettingsSendAsList = ListSendAsResponse
        type Scopes UsersSettingsSendAsList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsSendAsList'{..}
          = go _ussalUserId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsListResource)
                      mempty
