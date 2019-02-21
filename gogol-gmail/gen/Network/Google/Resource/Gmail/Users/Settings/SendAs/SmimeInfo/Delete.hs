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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.delete@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Delete
    (
    -- * REST Resource
      UsersSettingsSendAsSmimeInfoDeleteResource

    -- * Creating a Request
    , usersSettingsSendAsSmimeInfoDelete
    , UsersSettingsSendAsSmimeInfoDelete

    -- * Request Lenses
    , ussasidUserId
    , ussasidSendAsEmail
    , ussasidId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.delete@ method which the
-- 'UsersSettingsSendAsSmimeInfoDelete' request conforms to.
type UsersSettingsSendAsSmimeInfoDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "smimeInfo" :>
                     Capture "id" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified S\/MIME config for the specified send-as alias.
--
-- /See:/ 'usersSettingsSendAsSmimeInfoDelete' smart constructor.
data UsersSettingsSendAsSmimeInfoDelete =
  UsersSettingsSendAsSmimeInfoDelete'
    { _ussasidUserId      :: !Text
    , _ussasidSendAsEmail :: !Text
    , _ussasidId          :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsSmimeInfoDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussasidUserId'
--
-- * 'ussasidSendAsEmail'
--
-- * 'ussasidId'
usersSettingsSendAsSmimeInfoDelete
    :: Text -- ^ 'ussasidSendAsEmail'
    -> Text -- ^ 'ussasidId'
    -> UsersSettingsSendAsSmimeInfoDelete
usersSettingsSendAsSmimeInfoDelete pUssasidSendAsEmail_ pUssasidId_ =
  UsersSettingsSendAsSmimeInfoDelete'
    { _ussasidUserId = "me"
    , _ussasidSendAsEmail = pUssasidSendAsEmail_
    , _ussasidId = pUssasidId_
    }


-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ussasidUserId :: Lens' UsersSettingsSendAsSmimeInfoDelete Text
ussasidUserId
  = lens _ussasidUserId
      (\ s a -> s{_ussasidUserId = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias.
ussasidSendAsEmail :: Lens' UsersSettingsSendAsSmimeInfoDelete Text
ussasidSendAsEmail
  = lens _ussasidSendAsEmail
      (\ s a -> s{_ussasidSendAsEmail = a})

-- | The immutable ID for the SmimeInfo.
ussasidId :: Lens' UsersSettingsSendAsSmimeInfoDelete Text
ussasidId
  = lens _ussasidId (\ s a -> s{_ussasidId = a})

instance GoogleRequest
           UsersSettingsSendAsSmimeInfoDelete
         where
        type Rs UsersSettingsSendAsSmimeInfoDelete = ()
        type Scopes UsersSettingsSendAsSmimeInfoDelete =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsSmimeInfoDelete'{..}
          = go _ussasidUserId _ussasidSendAsEmail _ussasidId
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsSendAsSmimeInfoDeleteResource)
                      mempty
