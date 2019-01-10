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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.SetDefault
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the default S\/MIME config for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.setDefault@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.SetDefault
    (
    -- * REST Resource
      UsersSettingsSendAsSmimeInfoSetDefaultResource

    -- * Creating a Request
    , usersSettingsSendAsSmimeInfoSetDefault
    , UsersSettingsSendAsSmimeInfoSetDefault

    -- * Request Lenses
    , ussasisdUserId
    , ussasisdSendAsEmail
    , ussasisdId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.setDefault@ method which the
-- 'UsersSettingsSendAsSmimeInfoSetDefault' request conforms to.
type UsersSettingsSendAsSmimeInfoSetDefaultResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "smimeInfo" :>
                     Capture "id" Text :>
                       "setDefault" :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sets the default S\/MIME config for the specified send-as alias.
--
-- /See:/ 'usersSettingsSendAsSmimeInfoSetDefault' smart constructor.
data UsersSettingsSendAsSmimeInfoSetDefault = UsersSettingsSendAsSmimeInfoSetDefault'
    { _ussasisdUserId      :: !Text
    , _ussasisdSendAsEmail :: !Text
    , _ussasisdId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSettingsSendAsSmimeInfoSetDefault' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussasisdUserId'
--
-- * 'ussasisdSendAsEmail'
--
-- * 'ussasisdId'
usersSettingsSendAsSmimeInfoSetDefault
    :: Text -- ^ 'ussasisdSendAsEmail'
    -> Text -- ^ 'ussasisdId'
    -> UsersSettingsSendAsSmimeInfoSetDefault
usersSettingsSendAsSmimeInfoSetDefault pUssasisdSendAsEmail_ pUssasisdId_ =
    UsersSettingsSendAsSmimeInfoSetDefault'
    { _ussasisdUserId = "me"
    , _ussasisdSendAsEmail = pUssasisdSendAsEmail_
    , _ussasisdId = pUssasisdId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ussasisdUserId :: Lens' UsersSettingsSendAsSmimeInfoSetDefault Text
ussasisdUserId
  = lens _ussasisdUserId
      (\ s a -> s{_ussasisdUserId = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias.
ussasisdSendAsEmail :: Lens' UsersSettingsSendAsSmimeInfoSetDefault Text
ussasisdSendAsEmail
  = lens _ussasisdSendAsEmail
      (\ s a -> s{_ussasisdSendAsEmail = a})

-- | The immutable ID for the SmimeInfo.
ussasisdId :: Lens' UsersSettingsSendAsSmimeInfoSetDefault Text
ussasisdId
  = lens _ussasisdId (\ s a -> s{_ussasisdId = a})

instance GoogleRequest
         UsersSettingsSendAsSmimeInfoSetDefault where
        type Rs UsersSettingsSendAsSmimeInfoSetDefault = ()
        type Scopes UsersSettingsSendAsSmimeInfoSetDefault =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient
          UsersSettingsSendAsSmimeInfoSetDefault'{..}
          = go _ussasisdUserId _ussasisdSendAsEmail _ussasisdId
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsSendAsSmimeInfoSetDefaultResource)
                      mempty
