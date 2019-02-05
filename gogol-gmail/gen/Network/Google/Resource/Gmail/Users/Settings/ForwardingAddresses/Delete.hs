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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified forwarding address and revokes any verification
-- that may have been required. This method is only available to service
-- account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.delete@.
module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Delete
    (
    -- * REST Resource
      UsersSettingsForwardingAddressesDeleteResource

    -- * Creating a Request
    , usersSettingsForwardingAddressesDelete
    , UsersSettingsForwardingAddressesDelete

    -- * Request Lenses
    , usfadForwardingEmail
    , usfadUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.forwardingAddresses.delete@ method which the
-- 'UsersSettingsForwardingAddressesDelete' request conforms to.
type UsersSettingsForwardingAddressesDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "forwardingAddresses" :>
                 Capture "forwardingEmail" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified forwarding address and revokes any verification
-- that may have been required. This method is only available to service
-- account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsForwardingAddressesDelete' smart constructor.
data UsersSettingsForwardingAddressesDelete = UsersSettingsForwardingAddressesDelete'
    { _usfadForwardingEmail :: !Text
    , _usfadUserId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsForwardingAddressesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfadForwardingEmail'
--
-- * 'usfadUserId'
usersSettingsForwardingAddressesDelete
    :: Text -- ^ 'usfadForwardingEmail'
    -> UsersSettingsForwardingAddressesDelete
usersSettingsForwardingAddressesDelete pUsfadForwardingEmail_ =
    UsersSettingsForwardingAddressesDelete'
    { _usfadForwardingEmail = pUsfadForwardingEmail_
    , _usfadUserId = "me"
    }

-- | The forwarding address to be deleted.
usfadForwardingEmail :: Lens' UsersSettingsForwardingAddressesDelete Text
usfadForwardingEmail
  = lens _usfadForwardingEmail
      (\ s a -> s{_usfadForwardingEmail = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfadUserId :: Lens' UsersSettingsForwardingAddressesDelete Text
usfadUserId
  = lens _usfadUserId (\ s a -> s{_usfadUserId = a})

instance GoogleRequest
         UsersSettingsForwardingAddressesDelete where
        type Rs UsersSettingsForwardingAddressesDelete = ()
        type Scopes UsersSettingsForwardingAddressesDelete =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient
          UsersSettingsForwardingAddressesDelete'{..}
          = go _usfadUserId _usfadForwardingEmail
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsForwardingAddressesDeleteResource)
                      mempty
