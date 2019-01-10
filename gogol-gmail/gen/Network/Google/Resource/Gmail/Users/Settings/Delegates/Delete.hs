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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.Delegates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified delegate (which can be of any verification
-- status), and revokes any verification that may have been required for
-- using it. Note that a delegate user must be referred to by their primary
-- email address, and not an email alias. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.delegates.delete@.
module Network.Google.Resource.Gmail.Users.Settings.Delegates.Delete
    (
    -- * REST Resource
      UsersSettingsDelegatesDeleteResource

    -- * Creating a Request
    , usersSettingsDelegatesDelete
    , UsersSettingsDelegatesDelete

    -- * Request Lenses
    , usddUserId
    , usddDelegateEmail
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.delegates.delete@ method which the
-- 'UsersSettingsDelegatesDelete' request conforms to.
type UsersSettingsDelegatesDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "delegates" :>
                 Capture "delegateEmail" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes the specified delegate (which can be of any verification
-- status), and revokes any verification that may have been required for
-- using it. Note that a delegate user must be referred to by their primary
-- email address, and not an email alias. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsDelegatesDelete' smart constructor.
data UsersSettingsDelegatesDelete = UsersSettingsDelegatesDelete'
    { _usddUserId        :: !Text
    , _usddDelegateEmail :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsDelegatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usddUserId'
--
-- * 'usddDelegateEmail'
usersSettingsDelegatesDelete
    :: Text -- ^ 'usddDelegateEmail'
    -> UsersSettingsDelegatesDelete
usersSettingsDelegatesDelete pUsddDelegateEmail_ =
    UsersSettingsDelegatesDelete'
    { _usddUserId = "me"
    , _usddDelegateEmail = pUsddDelegateEmail_
    }

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usddUserId :: Lens' UsersSettingsDelegatesDelete Text
usddUserId
  = lens _usddUserId (\ s a -> s{_usddUserId = a})

-- | The email address of the user to be removed as a delegate.
usddDelegateEmail :: Lens' UsersSettingsDelegatesDelete Text
usddDelegateEmail
  = lens _usddDelegateEmail
      (\ s a -> s{_usddDelegateEmail = a})

instance GoogleRequest UsersSettingsDelegatesDelete
         where
        type Rs UsersSettingsDelegatesDelete = ()
        type Scopes UsersSettingsDelegatesDelete =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsDelegatesDelete'{..}
          = go _usddUserId _usddDelegateEmail (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsDelegatesDeleteResource)
                      mempty
