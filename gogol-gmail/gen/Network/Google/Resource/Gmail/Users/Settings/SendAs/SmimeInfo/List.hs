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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists S\/MIME configs for the specified send-as alias.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.list@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.List
    (
    -- * REST Resource
      UsersSettingsSendAsSmimeInfoListResource

    -- * Creating a Request
    , usersSettingsSendAsSmimeInfoList
    , UsersSettingsSendAsSmimeInfoList

    -- * Request Lenses
    , ussasilUserId
    , ussasilSendAsEmail
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.list@ method which the
-- 'UsersSettingsSendAsSmimeInfoList' request conforms to.
type UsersSettingsSendAsSmimeInfoListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "smimeInfo" :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListSmimeInfoResponse

-- | Lists S\/MIME configs for the specified send-as alias.
--
-- /See:/ 'usersSettingsSendAsSmimeInfoList' smart constructor.
data UsersSettingsSendAsSmimeInfoList =
  UsersSettingsSendAsSmimeInfoList'
    { _ussasilUserId      :: !Text
    , _ussasilSendAsEmail :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsSmimeInfoList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussasilUserId'
--
-- * 'ussasilSendAsEmail'
usersSettingsSendAsSmimeInfoList
    :: Text -- ^ 'ussasilSendAsEmail'
    -> UsersSettingsSendAsSmimeInfoList
usersSettingsSendAsSmimeInfoList pUssasilSendAsEmail_ =
  UsersSettingsSendAsSmimeInfoList'
    {_ussasilUserId = "me", _ussasilSendAsEmail = pUssasilSendAsEmail_}


-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ussasilUserId :: Lens' UsersSettingsSendAsSmimeInfoList Text
ussasilUserId
  = lens _ussasilUserId
      (\ s a -> s{_ussasilUserId = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias.
ussasilSendAsEmail :: Lens' UsersSettingsSendAsSmimeInfoList Text
ussasilSendAsEmail
  = lens _ussasilSendAsEmail
      (\ s a -> s{_ussasilSendAsEmail = a})

instance GoogleRequest
           UsersSettingsSendAsSmimeInfoList
         where
        type Rs UsersSettingsSendAsSmimeInfoList =
             ListSmimeInfoResponse
        type Scopes UsersSettingsSendAsSmimeInfoList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsSmimeInfoList'{..}
          = go _ussasilUserId _ussasilSendAsEmail
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsSendAsSmimeInfoListResource)
                      mempty
