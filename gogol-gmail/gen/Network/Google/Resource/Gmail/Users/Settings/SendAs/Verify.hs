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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Verify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a verification email to the specified send-as alias address. The
-- verification status must be pending. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.verify@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Verify
    (
    -- * REST Resource
      UsersSettingsSendAsVerifyResource

    -- * Creating a Request
    , usersSettingsSendAsVerify
    , UsersSettingsSendAsVerify

    -- * Request Lenses
    , ussavUserId
    , ussavSendAsEmail
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.verify@ method which the
-- 'UsersSettingsSendAsVerify' request conforms to.
type UsersSettingsSendAsVerifyResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "verify" :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sends a verification email to the specified send-as alias address. The
-- verification status must be pending. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsSendAsVerify' smart constructor.
data UsersSettingsSendAsVerify = UsersSettingsSendAsVerify'
    { _ussavUserId      :: !Text
    , _ussavSendAsEmail :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsSendAsVerify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussavUserId'
--
-- * 'ussavSendAsEmail'
usersSettingsSendAsVerify
    :: Text -- ^ 'ussavSendAsEmail'
    -> UsersSettingsSendAsVerify
usersSettingsSendAsVerify pUssavSendAsEmail_ =
    UsersSettingsSendAsVerify'
    { _ussavUserId = "me"
    , _ussavSendAsEmail = pUssavSendAsEmail_
    }

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussavUserId :: Lens' UsersSettingsSendAsVerify Text
ussavUserId
  = lens _ussavUserId (\ s a -> s{_ussavUserId = a})

-- | The send-as alias to be verified.
ussavSendAsEmail :: Lens' UsersSettingsSendAsVerify Text
ussavSendAsEmail
  = lens _ussavSendAsEmail
      (\ s a -> s{_ussavSendAsEmail = a})

instance GoogleRequest UsersSettingsSendAsVerify
         where
        type Rs UsersSettingsSendAsVerify = ()
        type Scopes UsersSettingsSendAsVerify =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsVerify'{..}
          = go _ussavUserId _ussavSendAsEmail (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsVerifyResource)
                      mempty
