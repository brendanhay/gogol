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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert (upload) the given S\/MIME config for the specified send-as
-- alias. Note that pkcs12 format is required for the key.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.smimeInfo.insert@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.SmimeInfo.Insert
    (
    -- * REST Resource
      UsersSettingsSendAsSmimeInfoInsertResource

    -- * Creating a Request
    , usersSettingsSendAsSmimeInfoInsert
    , UsersSettingsSendAsSmimeInfoInsert

    -- * Request Lenses
    , ussasiiPayload
    , ussasiiUserId
    , ussasiiSendAsEmail
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.smimeInfo.insert@ method which the
-- 'UsersSettingsSendAsSmimeInfoInsert' request conforms to.
type UsersSettingsSendAsSmimeInfoInsertResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   "smimeInfo" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SmimeInfo :> Post '[JSON] SmimeInfo

-- | Insert (upload) the given S\/MIME config for the specified send-as
-- alias. Note that pkcs12 format is required for the key.
--
-- /See:/ 'usersSettingsSendAsSmimeInfoInsert' smart constructor.
data UsersSettingsSendAsSmimeInfoInsert =
  UsersSettingsSendAsSmimeInfoInsert'
    { _ussasiiPayload     :: !SmimeInfo
    , _ussasiiUserId      :: !Text
    , _ussasiiSendAsEmail :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsSmimeInfoInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussasiiPayload'
--
-- * 'ussasiiUserId'
--
-- * 'ussasiiSendAsEmail'
usersSettingsSendAsSmimeInfoInsert
    :: SmimeInfo -- ^ 'ussasiiPayload'
    -> Text -- ^ 'ussasiiSendAsEmail'
    -> UsersSettingsSendAsSmimeInfoInsert
usersSettingsSendAsSmimeInfoInsert pUssasiiPayload_ pUssasiiSendAsEmail_ =
  UsersSettingsSendAsSmimeInfoInsert'
    { _ussasiiPayload = pUssasiiPayload_
    , _ussasiiUserId = "me"
    , _ussasiiSendAsEmail = pUssasiiSendAsEmail_
    }


-- | Multipart request metadata.
ussasiiPayload :: Lens' UsersSettingsSendAsSmimeInfoInsert SmimeInfo
ussasiiPayload
  = lens _ussasiiPayload
      (\ s a -> s{_ussasiiPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ussasiiUserId :: Lens' UsersSettingsSendAsSmimeInfoInsert Text
ussasiiUserId
  = lens _ussasiiUserId
      (\ s a -> s{_ussasiiUserId = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias.
ussasiiSendAsEmail :: Lens' UsersSettingsSendAsSmimeInfoInsert Text
ussasiiSendAsEmail
  = lens _ussasiiSendAsEmail
      (\ s a -> s{_ussasiiSendAsEmail = a})

instance GoogleRequest
           UsersSettingsSendAsSmimeInfoInsert
         where
        type Rs UsersSettingsSendAsSmimeInfoInsert =
             SmimeInfo
        type Scopes UsersSettingsSendAsSmimeInfoInsert =
             '["https://www.googleapis.com/auth/gmail.settings.basic",
               "https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsSendAsSmimeInfoInsert'{..}
          = go _ussasiiUserId _ussasiiSendAsEmail
              (Just AltJSON)
              _ussasiiPayload
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsSendAsSmimeInfoInsertResource)
                      mempty
