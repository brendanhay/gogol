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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdateLanguage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates language settings. If successful, the return object contains the
-- \`displayLanguage\` that was saved for the user, which may differ from
-- the value passed into the request. This is because the requested
-- \`displayLanguage\` may not be directly supported by Gmail but have a
-- close variant that is, and so the variant may be chosen and saved
-- instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateLanguage@.
module Network.Google.Resource.Gmail.Users.Settings.UpdateLanguage
    (
    -- * REST Resource
      UsersSettingsUpdateLanguageResource

    -- * Creating a Request
    , usersSettingsUpdateLanguage
    , UsersSettingsUpdateLanguage

    -- * Request Lenses
    , usulXgafv
    , usulUploadProtocol
    , usulAccessToken
    , usulUploadType
    , usulPayload
    , usulUserId
    , usulCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updateLanguage@ method which the
-- 'UsersSettingsUpdateLanguage' request conforms to.
type UsersSettingsUpdateLanguageResource =
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
                             ReqBody '[JSON] LanguageSettings :>
                               Put '[JSON] LanguageSettings

-- | Updates language settings. If successful, the return object contains the
-- \`displayLanguage\` that was saved for the user, which may differ from
-- the value passed into the request. This is because the requested
-- \`displayLanguage\` may not be directly supported by Gmail but have a
-- close variant that is, and so the variant may be chosen and saved
-- instead.
--
-- /See:/ 'usersSettingsUpdateLanguage' smart constructor.
data UsersSettingsUpdateLanguage =
  UsersSettingsUpdateLanguage'
    { _usulXgafv :: !(Maybe Xgafv)
    , _usulUploadProtocol :: !(Maybe Text)
    , _usulAccessToken :: !(Maybe Text)
    , _usulUploadType :: !(Maybe Text)
    , _usulPayload :: !LanguageSettings
    , _usulUserId :: !Text
    , _usulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsUpdateLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usulXgafv'
--
-- * 'usulUploadProtocol'
--
-- * 'usulAccessToken'
--
-- * 'usulUploadType'
--
-- * 'usulPayload'
--
-- * 'usulUserId'
--
-- * 'usulCallback'
usersSettingsUpdateLanguage
    :: LanguageSettings -- ^ 'usulPayload'
    -> UsersSettingsUpdateLanguage
usersSettingsUpdateLanguage pUsulPayload_ =
  UsersSettingsUpdateLanguage'
    { _usulXgafv = Nothing
    , _usulUploadProtocol = Nothing
    , _usulAccessToken = Nothing
    , _usulUploadType = Nothing
    , _usulPayload = pUsulPayload_
    , _usulUserId = "me"
    , _usulCallback = Nothing
    }


-- | V1 error format.
usulXgafv :: Lens' UsersSettingsUpdateLanguage (Maybe Xgafv)
usulXgafv
  = lens _usulXgafv (\ s a -> s{_usulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usulUploadProtocol :: Lens' UsersSettingsUpdateLanguage (Maybe Text)
usulUploadProtocol
  = lens _usulUploadProtocol
      (\ s a -> s{_usulUploadProtocol = a})

-- | OAuth access token.
usulAccessToken :: Lens' UsersSettingsUpdateLanguage (Maybe Text)
usulAccessToken
  = lens _usulAccessToken
      (\ s a -> s{_usulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usulUploadType :: Lens' UsersSettingsUpdateLanguage (Maybe Text)
usulUploadType
  = lens _usulUploadType
      (\ s a -> s{_usulUploadType = a})

-- | Multipart request metadata.
usulPayload :: Lens' UsersSettingsUpdateLanguage LanguageSettings
usulPayload
  = lens _usulPayload (\ s a -> s{_usulPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usulUserId :: Lens' UsersSettingsUpdateLanguage Text
usulUserId
  = lens _usulUserId (\ s a -> s{_usulUserId = a})

-- | JSONP
usulCallback :: Lens' UsersSettingsUpdateLanguage (Maybe Text)
usulCallback
  = lens _usulCallback (\ s a -> s{_usulCallback = a})

instance GoogleRequest UsersSettingsUpdateLanguage
         where
        type Rs UsersSettingsUpdateLanguage =
             LanguageSettings
        type Scopes UsersSettingsUpdateLanguage =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsUpdateLanguage'{..}
          = go _usulUserId _usulXgafv _usulUploadProtocol
              _usulAccessToken
              _usulUploadType
              _usulCallback
              (Just AltJSON)
              _usulPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsUpdateLanguageResource)
                      mempty
