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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.GetLanguage
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets language settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.getLanguage@.
module Network.Google.Resource.Gmail.Users.Settings.GetLanguage
    (
    -- * REST Resource
      UsersSettingsGetLanguageResource

    -- * Creating a Request
    , usersSettingsGetLanguage
    , UsersSettingsGetLanguage

    -- * Request Lenses
    , usglXgafv
    , usglUploadProtocol
    , usglAccessToken
    , usglUploadType
    , usglUserId
    , usglCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.getLanguage@ method which the
-- 'UsersSettingsGetLanguage' request conforms to.
type UsersSettingsGetLanguageResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "language" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] LanguageSettings

-- | Gets language settings.
--
-- /See:/ 'usersSettingsGetLanguage' smart constructor.
data UsersSettingsGetLanguage =
  UsersSettingsGetLanguage'
    { _usglXgafv :: !(Maybe Xgafv)
    , _usglUploadProtocol :: !(Maybe Text)
    , _usglAccessToken :: !(Maybe Text)
    , _usglUploadType :: !(Maybe Text)
    , _usglUserId :: !Text
    , _usglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsGetLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usglXgafv'
--
-- * 'usglUploadProtocol'
--
-- * 'usglAccessToken'
--
-- * 'usglUploadType'
--
-- * 'usglUserId'
--
-- * 'usglCallback'
usersSettingsGetLanguage
    :: UsersSettingsGetLanguage
usersSettingsGetLanguage =
  UsersSettingsGetLanguage'
    { _usglXgafv = Nothing
    , _usglUploadProtocol = Nothing
    , _usglAccessToken = Nothing
    , _usglUploadType = Nothing
    , _usglUserId = "me"
    , _usglCallback = Nothing
    }


-- | V1 error format.
usglXgafv :: Lens' UsersSettingsGetLanguage (Maybe Xgafv)
usglXgafv
  = lens _usglXgafv (\ s a -> s{_usglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usglUploadProtocol :: Lens' UsersSettingsGetLanguage (Maybe Text)
usglUploadProtocol
  = lens _usglUploadProtocol
      (\ s a -> s{_usglUploadProtocol = a})

-- | OAuth access token.
usglAccessToken :: Lens' UsersSettingsGetLanguage (Maybe Text)
usglAccessToken
  = lens _usglAccessToken
      (\ s a -> s{_usglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usglUploadType :: Lens' UsersSettingsGetLanguage (Maybe Text)
usglUploadType
  = lens _usglUploadType
      (\ s a -> s{_usglUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usglUserId :: Lens' UsersSettingsGetLanguage Text
usglUserId
  = lens _usglUserId (\ s a -> s{_usglUserId = a})

-- | JSONP
usglCallback :: Lens' UsersSettingsGetLanguage (Maybe Text)
usglCallback
  = lens _usglCallback (\ s a -> s{_usglCallback = a})

instance GoogleRequest UsersSettingsGetLanguage where
        type Rs UsersSettingsGetLanguage = LanguageSettings
        type Scopes UsersSettingsGetLanguage =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsGetLanguage'{..}
          = go _usglUserId _usglXgafv _usglUploadProtocol
              _usglAccessToken
              _usglUploadType
              _usglCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsGetLanguageResource)
                      mempty
