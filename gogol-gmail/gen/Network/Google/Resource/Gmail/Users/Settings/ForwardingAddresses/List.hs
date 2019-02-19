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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the forwarding addresses for the specified account.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.list@.
module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.List
    (
    -- * REST Resource
      UsersSettingsForwardingAddressesListResource

    -- * Creating a Request
    , usersSettingsForwardingAddressesList
    , UsersSettingsForwardingAddressesList

    -- * Request Lenses
    , usfalUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.forwardingAddresses.list@ method which the
-- 'UsersSettingsForwardingAddressesList' request conforms to.
type UsersSettingsForwardingAddressesListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "forwardingAddresses" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ListForwardingAddressesResponse

-- | Lists the forwarding addresses for the specified account.
--
-- /See:/ 'usersSettingsForwardingAddressesList' smart constructor.
newtype UsersSettingsForwardingAddressesList =
  UsersSettingsForwardingAddressesList'
    { _usfalUserId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsForwardingAddressesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfalUserId'
usersSettingsForwardingAddressesList
    :: UsersSettingsForwardingAddressesList
usersSettingsForwardingAddressesList =
  UsersSettingsForwardingAddressesList' {_usfalUserId = "me"}


-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfalUserId :: Lens' UsersSettingsForwardingAddressesList Text
usfalUserId
  = lens _usfalUserId (\ s a -> s{_usfalUserId = a})

instance GoogleRequest
           UsersSettingsForwardingAddressesList
         where
        type Rs UsersSettingsForwardingAddressesList =
             ListForwardingAddressesResponse
        type Scopes UsersSettingsForwardingAddressesList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient
          UsersSettingsForwardingAddressesList'{..}
          = go _usfalUserId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsForwardingAddressesListResource)
                      mempty
