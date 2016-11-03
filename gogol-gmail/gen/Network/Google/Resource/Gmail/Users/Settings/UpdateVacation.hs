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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdateVacation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates vacation responder settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateVacation@.
module Network.Google.Resource.Gmail.Users.Settings.UpdateVacation
    (
    -- * REST Resource
      UsersSettingsUpdateVacationResource

    -- * Creating a Request
    , usersSettingsUpdateVacation
    , UsersSettingsUpdateVacation

    -- * Request Lenses
    , usuvPayload
    , usuvUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updateVacation@ method which the
-- 'UsersSettingsUpdateVacation' request conforms to.
type UsersSettingsUpdateVacationResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "vacation" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] VacationSettings :>
                     Put '[JSON] VacationSettings

-- | Updates vacation responder settings.
--
-- /See:/ 'usersSettingsUpdateVacation' smart constructor.
data UsersSettingsUpdateVacation = UsersSettingsUpdateVacation'
    { _usuvPayload :: !VacationSettings
    , _usuvUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsUpdateVacation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuvPayload'
--
-- * 'usuvUserId'
usersSettingsUpdateVacation
    :: VacationSettings -- ^ 'usuvPayload'
    -> UsersSettingsUpdateVacation
usersSettingsUpdateVacation pUsuvPayload_ =
    UsersSettingsUpdateVacation'
    { _usuvPayload = pUsuvPayload_
    , _usuvUserId = "me"
    }

-- | Multipart request metadata.
usuvPayload :: Lens' UsersSettingsUpdateVacation VacationSettings
usuvPayload
  = lens _usuvPayload (\ s a -> s{_usuvPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usuvUserId :: Lens' UsersSettingsUpdateVacation Text
usuvUserId
  = lens _usuvUserId (\ s a -> s{_usuvUserId = a})

instance GoogleRequest UsersSettingsUpdateVacation
         where
        type Rs UsersSettingsUpdateVacation =
             VacationSettings
        type Scopes UsersSettingsUpdateVacation =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsUpdateVacation'{..}
          = go _usuvUserId (Just AltJSON) _usuvPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsUpdateVacationResource)
                      mempty
