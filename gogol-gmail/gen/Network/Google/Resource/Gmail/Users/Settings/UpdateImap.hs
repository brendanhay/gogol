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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdateImap
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates IMAP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateImap@.
module Network.Google.Resource.Gmail.Users.Settings.UpdateImap
    (
    -- * REST Resource
      UsersSettingsUpdateImapResource

    -- * Creating a Request
    , usersSettingsUpdateImap
    , UsersSettingsUpdateImap

    -- * Request Lenses
    , usuiPayload
    , usuiUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updateImap@ method which the
-- 'UsersSettingsUpdateImap' request conforms to.
type UsersSettingsUpdateImapResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "imap" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ImapSettings :>
                     Put '[JSON] ImapSettings

-- | Updates IMAP settings.
--
-- /See:/ 'usersSettingsUpdateImap' smart constructor.
data UsersSettingsUpdateImap =
  UsersSettingsUpdateImap'
    { _usuiPayload :: !ImapSettings
    , _usuiUserId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsUpdateImap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuiPayload'
--
-- * 'usuiUserId'
usersSettingsUpdateImap
    :: ImapSettings -- ^ 'usuiPayload'
    -> UsersSettingsUpdateImap
usersSettingsUpdateImap pUsuiPayload_ =
  UsersSettingsUpdateImap' {_usuiPayload = pUsuiPayload_, _usuiUserId = "me"}


-- | Multipart request metadata.
usuiPayload :: Lens' UsersSettingsUpdateImap ImapSettings
usuiPayload
  = lens _usuiPayload (\ s a -> s{_usuiPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usuiUserId :: Lens' UsersSettingsUpdateImap Text
usuiUserId
  = lens _usuiUserId (\ s a -> s{_usuiUserId = a})

instance GoogleRequest UsersSettingsUpdateImap where
        type Rs UsersSettingsUpdateImap = ImapSettings
        type Scopes UsersSettingsUpdateImap =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsUpdateImap'{..}
          = go _usuiUserId (Just AltJSON) _usuiPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsUpdateImapResource)
                      mempty
