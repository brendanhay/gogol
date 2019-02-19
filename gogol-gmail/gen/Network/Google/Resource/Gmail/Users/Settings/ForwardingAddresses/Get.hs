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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified forwarding address.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.get@.
module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Get
    (
    -- * REST Resource
      UsersSettingsForwardingAddressesGetResource

    -- * Creating a Request
    , usersSettingsForwardingAddressesGet
    , UsersSettingsForwardingAddressesGet

    -- * Request Lenses
    , usfagForwardingEmail
    , usfagUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.forwardingAddresses.get@ method which the
-- 'UsersSettingsForwardingAddressesGet' request conforms to.
type UsersSettingsForwardingAddressesGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "forwardingAddresses" :>
                 Capture "forwardingEmail" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ForwardingAddress

-- | Gets the specified forwarding address.
--
-- /See:/ 'usersSettingsForwardingAddressesGet' smart constructor.
data UsersSettingsForwardingAddressesGet =
  UsersSettingsForwardingAddressesGet'
    { _usfagForwardingEmail :: !Text
    , _usfagUserId          :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsForwardingAddressesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfagForwardingEmail'
--
-- * 'usfagUserId'
usersSettingsForwardingAddressesGet
    :: Text -- ^ 'usfagForwardingEmail'
    -> UsersSettingsForwardingAddressesGet
usersSettingsForwardingAddressesGet pUsfagForwardingEmail_ =
  UsersSettingsForwardingAddressesGet'
    {_usfagForwardingEmail = pUsfagForwardingEmail_, _usfagUserId = "me"}


-- | The forwarding address to be retrieved.
usfagForwardingEmail :: Lens' UsersSettingsForwardingAddressesGet Text
usfagForwardingEmail
  = lens _usfagForwardingEmail
      (\ s a -> s{_usfagForwardingEmail = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfagUserId :: Lens' UsersSettingsForwardingAddressesGet Text
usfagUserId
  = lens _usfagUserId (\ s a -> s{_usfagUserId = a})

instance GoogleRequest
           UsersSettingsForwardingAddressesGet
         where
        type Rs UsersSettingsForwardingAddressesGet =
             ForwardingAddress
        type Scopes UsersSettingsForwardingAddressesGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient
          UsersSettingsForwardingAddressesGet'{..}
          = go _usfagUserId _usfagForwardingEmail
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsForwardingAddressesGetResource)
                      mempty
