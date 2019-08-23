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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Delegates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the delegates for the specified account. This method is only
-- available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.delegates.list@.
module Network.Google.Resource.Gmail.Users.Settings.Delegates.List
    (
    -- * REST Resource
      UsersSettingsDelegatesListResource

    -- * Creating a Request
    , usersSettingsDelegatesList
    , UsersSettingsDelegatesList

    -- * Request Lenses
    , usdlUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.delegates.list@ method which the
-- 'UsersSettingsDelegatesList' request conforms to.
type UsersSettingsDelegatesListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "delegates" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ListDelegatesResponse

-- | Lists the delegates for the specified account. This method is only
-- available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ 'usersSettingsDelegatesList' smart constructor.
newtype UsersSettingsDelegatesList =
  UsersSettingsDelegatesList'
    { _usdlUserId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsDelegatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdlUserId'
usersSettingsDelegatesList
    :: UsersSettingsDelegatesList
usersSettingsDelegatesList = UsersSettingsDelegatesList' {_usdlUserId = "me"}


-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usdlUserId :: Lens' UsersSettingsDelegatesList Text
usdlUserId
  = lens _usdlUserId (\ s a -> s{_usdlUserId = a})

instance GoogleRequest UsersSettingsDelegatesList
         where
        type Rs UsersSettingsDelegatesList =
             ListDelegatesResponse
        type Scopes UsersSettingsDelegatesList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsDelegatesList'{..}
          = go _usdlUserId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsDelegatesListResource)
                      mempty
