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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified send-as alias. Revokes any verification that may
-- have been required for using it. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.delete@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Delete
    (
    -- * REST Resource
      UsersSettingsSendAsDeleteResource

    -- * Creating a Request
    , usersSettingsSendAsDelete
    , UsersSettingsSendAsDelete

    -- * Request Lenses
    , ussadUserId
    , ussadSendAsEmail
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.delete@ method which the
-- 'UsersSettingsSendAsDelete' request conforms to.
type UsersSettingsSendAsDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified send-as alias. Revokes any verification that may
-- have been required for using it. This method is only available to
-- service account clients that have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsSendAsDelete' smart constructor.
data UsersSettingsSendAsDelete =
  UsersSettingsSendAsDelete'
    { _ussadUserId      :: !Text
    , _ussadSendAsEmail :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersSettingsSendAsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussadUserId'
--
-- * 'ussadSendAsEmail'
usersSettingsSendAsDelete
    :: Text -- ^ 'ussadSendAsEmail'
    -> UsersSettingsSendAsDelete
usersSettingsSendAsDelete pUssadSendAsEmail_ =
  UsersSettingsSendAsDelete'
    {_ussadUserId = "me", _ussadSendAsEmail = pUssadSendAsEmail_}

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussadUserId :: Lens' UsersSettingsSendAsDelete Text
ussadUserId
  = lens _ussadUserId (\ s a -> s{_ussadUserId = a})

-- | The send-as alias to be deleted.
ussadSendAsEmail :: Lens' UsersSettingsSendAsDelete Text
ussadSendAsEmail
  = lens _ussadSendAsEmail
      (\ s a -> s{_ussadSendAsEmail = a})

instance GoogleRequest UsersSettingsSendAsDelete
         where
        type Rs UsersSettingsSendAsDelete = ()
        type Scopes UsersSettingsSendAsDelete =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsDelete'{..}
          = go _ussadUserId _ussadSendAsEmail (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsDeleteResource)
                      mempty
