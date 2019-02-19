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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a send-as alias. If a signature is provided, Gmail will sanitize
-- the HTML before saving it with the alias. Addresses other than the
-- primary address for the account can only be updated by service account
-- clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.update@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Update
    (
    -- * REST Resource
      UsersSettingsSendAsUpdateResource

    -- * Creating a Request
    , usersSettingsSendAsUpdate
    , UsersSettingsSendAsUpdate

    -- * Request Lenses
    , ussauPayload
    , ussauUserId
    , ussauSendAsEmail
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.update@ method which the
-- 'UsersSettingsSendAsUpdate' request conforms to.
type UsersSettingsSendAsUpdateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SendAs :> Put '[JSON] SendAs

-- | Updates a send-as alias. If a signature is provided, Gmail will sanitize
-- the HTML before saving it with the alias. Addresses other than the
-- primary address for the account can only be updated by service account
-- clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsSendAsUpdate' smart constructor.
data UsersSettingsSendAsUpdate =
  UsersSettingsSendAsUpdate'
    { _ussauPayload     :: !SendAs
    , _ussauUserId      :: !Text
    , _ussauSendAsEmail :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersSettingsSendAsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussauPayload'
--
-- * 'ussauUserId'
--
-- * 'ussauSendAsEmail'
usersSettingsSendAsUpdate
    :: SendAs -- ^ 'ussauPayload'
    -> Text -- ^ 'ussauSendAsEmail'
    -> UsersSettingsSendAsUpdate
usersSettingsSendAsUpdate pUssauPayload_ pUssauSendAsEmail_ =
  UsersSettingsSendAsUpdate'
    { _ussauPayload = pUssauPayload_
    , _ussauUserId = "me"
    , _ussauSendAsEmail = pUssauSendAsEmail_
    }

-- | Multipart request metadata.
ussauPayload :: Lens' UsersSettingsSendAsUpdate SendAs
ussauPayload
  = lens _ussauPayload (\ s a -> s{_ussauPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussauUserId :: Lens' UsersSettingsSendAsUpdate Text
ussauUserId
  = lens _ussauUserId (\ s a -> s{_ussauUserId = a})

-- | The send-as alias to be updated.
ussauSendAsEmail :: Lens' UsersSettingsSendAsUpdate Text
ussauSendAsEmail
  = lens _ussauSendAsEmail
      (\ s a -> s{_ussauSendAsEmail = a})

instance GoogleRequest UsersSettingsSendAsUpdate
         where
        type Rs UsersSettingsSendAsUpdate = SendAs
        type Scopes UsersSettingsSendAsUpdate =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsUpdate'{..}
          = go _ussauUserId _ussauSendAsEmail (Just AltJSON)
              _ussauPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsUpdateResource)
                      mempty
