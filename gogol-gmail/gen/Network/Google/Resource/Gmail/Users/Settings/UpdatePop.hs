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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdatePop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates POP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updatePop@.
module Network.Google.Resource.Gmail.Users.Settings.UpdatePop
    (
    -- * REST Resource
      UsersSettingsUpdatePopResource

    -- * Creating a Request
    , usersSettingsUpdatePop
    , UsersSettingsUpdatePop

    -- * Request Lenses
    , usupPayload
    , usupUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updatePop@ method which the
-- 'UsersSettingsUpdatePop' request conforms to.
type UsersSettingsUpdatePopResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "pop" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PopSettings :>
                     Put '[JSON] PopSettings

-- | Updates POP settings.
--
-- /See:/ 'usersSettingsUpdatePop' smart constructor.
data UsersSettingsUpdatePop = UsersSettingsUpdatePop'
    { _usupPayload :: !PopSettings
    , _usupUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsUpdatePop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usupPayload'
--
-- * 'usupUserId'
usersSettingsUpdatePop
    :: PopSettings -- ^ 'usupPayload'
    -> UsersSettingsUpdatePop
usersSettingsUpdatePop pUsupPayload_ =
    UsersSettingsUpdatePop'
    { _usupPayload = pUsupPayload_
    , _usupUserId = "me"
    }

-- | Multipart request metadata.
usupPayload :: Lens' UsersSettingsUpdatePop PopSettings
usupPayload
  = lens _usupPayload (\ s a -> s{_usupPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usupUserId :: Lens' UsersSettingsUpdatePop Text
usupUserId
  = lens _usupUserId (\ s a -> s{_usupUserId = a})

instance GoogleRequest UsersSettingsUpdatePop where
        type Rs UsersSettingsUpdatePop = PopSettings
        type Scopes UsersSettingsUpdatePop =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsUpdatePop'{..}
          = go _usupUserId (Just AltJSON) _usupPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsUpdatePopResource)
                      mempty
