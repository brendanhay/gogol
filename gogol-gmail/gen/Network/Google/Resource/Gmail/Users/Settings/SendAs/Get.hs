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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.SendAs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified send-as alias. Fails with an HTTP 404 error if the
-- specified address is not a member of the collection.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.sendAs.get@.
module Network.Google.Resource.Gmail.Users.Settings.SendAs.Get
    (
    -- * REST Resource
      UsersSettingsSendAsGetResource

    -- * Creating a Request
    , usersSettingsSendAsGet
    , UsersSettingsSendAsGet

    -- * Request Lenses
    , ussagXgafv
    , ussagUploadProtocol
    , ussagAccessToken
    , ussagUploadType
    , ussagUserId
    , ussagSendAsEmail
    , ussagCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.sendAs.get@ method which the
-- 'UsersSettingsSendAsGet' request conforms to.
type UsersSettingsSendAsGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "sendAs" :>
                 Capture "sendAsEmail" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] SendAs

-- | Gets the specified send-as alias. Fails with an HTTP 404 error if the
-- specified address is not a member of the collection.
--
-- /See:/ 'usersSettingsSendAsGet' smart constructor.
data UsersSettingsSendAsGet =
  UsersSettingsSendAsGet'
    { _ussagXgafv :: !(Maybe Xgafv)
    , _ussagUploadProtocol :: !(Maybe Text)
    , _ussagAccessToken :: !(Maybe Text)
    , _ussagUploadType :: !(Maybe Text)
    , _ussagUserId :: !Text
    , _ussagSendAsEmail :: !Text
    , _ussagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsSendAsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ussagXgafv'
--
-- * 'ussagUploadProtocol'
--
-- * 'ussagAccessToken'
--
-- * 'ussagUploadType'
--
-- * 'ussagUserId'
--
-- * 'ussagSendAsEmail'
--
-- * 'ussagCallback'
usersSettingsSendAsGet
    :: Text -- ^ 'ussagSendAsEmail'
    -> UsersSettingsSendAsGet
usersSettingsSendAsGet pUssagSendAsEmail_ =
  UsersSettingsSendAsGet'
    { _ussagXgafv = Nothing
    , _ussagUploadProtocol = Nothing
    , _ussagAccessToken = Nothing
    , _ussagUploadType = Nothing
    , _ussagUserId = "me"
    , _ussagSendAsEmail = pUssagSendAsEmail_
    , _ussagCallback = Nothing
    }


-- | V1 error format.
ussagXgafv :: Lens' UsersSettingsSendAsGet (Maybe Xgafv)
ussagXgafv
  = lens _ussagXgafv (\ s a -> s{_ussagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ussagUploadProtocol :: Lens' UsersSettingsSendAsGet (Maybe Text)
ussagUploadProtocol
  = lens _ussagUploadProtocol
      (\ s a -> s{_ussagUploadProtocol = a})

-- | OAuth access token.
ussagAccessToken :: Lens' UsersSettingsSendAsGet (Maybe Text)
ussagAccessToken
  = lens _ussagAccessToken
      (\ s a -> s{_ussagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ussagUploadType :: Lens' UsersSettingsSendAsGet (Maybe Text)
ussagUploadType
  = lens _ussagUploadType
      (\ s a -> s{_ussagUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
ussagUserId :: Lens' UsersSettingsSendAsGet Text
ussagUserId
  = lens _ussagUserId (\ s a -> s{_ussagUserId = a})

-- | The send-as alias to be retrieved.
ussagSendAsEmail :: Lens' UsersSettingsSendAsGet Text
ussagSendAsEmail
  = lens _ussagSendAsEmail
      (\ s a -> s{_ussagSendAsEmail = a})

-- | JSONP
ussagCallback :: Lens' UsersSettingsSendAsGet (Maybe Text)
ussagCallback
  = lens _ussagCallback
      (\ s a -> s{_ussagCallback = a})

instance GoogleRequest UsersSettingsSendAsGet where
        type Rs UsersSettingsSendAsGet = SendAs
        type Scopes UsersSettingsSendAsGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsSendAsGet'{..}
          = go _ussagUserId _ussagSendAsEmail _ussagXgafv
              _ussagUploadProtocol
              _ussagAccessToken
              _ussagUploadType
              _ussagCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsSendAsGetResource)
                      mempty
