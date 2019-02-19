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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a send-as alias. If a signature is provided, Gmail will sanitize
-- the HTML before saving it with the alias. Addresses other than the
-- primary address for the account can only be updated by service account
-- clients that have been delegated domain-wide authority. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.patch@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Patch
    (
    -- * REST Resource
      UsersSettingsSendAsPatchResource

    -- * Creating a Request
    , usersSettingsSendAsPatch
    , UsersSettingsSendAsPatch

    -- * Request Lenses
    , ussapPayload
    , ussapUserId
    , ussapSendAsEmail
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.patch@ method which the
-- 'UsersSettingsSendAsPatch' request conforms to.
type UsersSettingsSendAsPatchResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SendAs :> Patch '[JSON] SendAs

-- | Updates a send-as alias. If a signature is provided, Gmail will sanitize
-- the HTML before saving it with the alias. Addresses other than the
-- primary address for the account can only be updated by service account
-- clients that have been delegated domain-wide authority. This method
-- supports patch semantics.
--
-- /See:/ 'usersSettingsSendAsPatch' smart constructor.
data UsersSettingsSendAsPatch =
  UsersSettingsSendAsPatch'
    { _ussapPayload     :: !SendAs
    , _ussapUserId      :: !Text
    , _ussapSendAsEmail :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussapPayload'
--
-- * 'ussapUserId'
--
-- * 'ussapSendAsEmail'
usersSettingsSendAsPatch
    :: SendAs -- ^ 'ussapPayload'
    -> Text -- ^ 'ussapSendAsEmail'
    -> UsersSettingsSendAsPatch
usersSettingsSendAsPatch pUssapPayload_ pUssapSendAsEmail_ =
  UsersSettingsSendAsPatch'
    { _ussapPayload = pUssapPayload_
    , _ussapUserId = "me"
    , _ussapSendAsEmail = pUssapSendAsEmail_
    }


-- | Multipart request metadata.
ussapPayload :: Lens' UsersSettingsSendAsPatch SendAs
ussapPayload
  = lens _ussapPayload (\ s a -> s{_ussapPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussapUserId :: Lens' UsersSettingsSendAsPatch Text
ussapUserId
  = lens _ussapUserId (\ s a -> s{_ussapUserId = a})

-- | The send-as alias to be updated.
ussapSendAsEmail :: Lens' UsersSettingsSendAsPatch Text
ussapSendAsEmail
  = lens _ussapSendAsEmail
      (\ s a -> s{_ussapSendAsEmail = a})

instance GoogleRequest UsersSettingsSendAsPatch where
        type Rs UsersSettingsSendAsPatch = SendAs
        type Scopes UsersSettingsSendAsPatch =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsPatch'{..}
          = go _ussapUserId _ussapSendAsEmail (Just AltJSON)
              _ussapPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsPatchResource)
                      mempty
