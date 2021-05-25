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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.GetVacation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets vacation responder settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.getVacation@.
module Network.Google.Resource.Gmail.Users.Settings.GetVacation
    (
    -- * REST Resource
      UsersSettingsGetVacationResource

    -- * Creating a Request
    , usersSettingsGetVacation
    , UsersSettingsGetVacation

    -- * Request Lenses
    , usgvXgafv
    , usgvUploadProtocol
    , usgvAccessToken
    , usgvUploadType
    , usgvUserId
    , usgvCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.getVacation@ method which the
-- 'UsersSettingsGetVacation' request conforms to.
type UsersSettingsGetVacationResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "vacation" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] VacationSettings

-- | Gets vacation responder settings.
--
-- /See:/ 'usersSettingsGetVacation' smart constructor.
data UsersSettingsGetVacation =
  UsersSettingsGetVacation'
    { _usgvXgafv :: !(Maybe Xgafv)
    , _usgvUploadProtocol :: !(Maybe Text)
    , _usgvAccessToken :: !(Maybe Text)
    , _usgvUploadType :: !(Maybe Text)
    , _usgvUserId :: !Text
    , _usgvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsGetVacation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgvXgafv'
--
-- * 'usgvUploadProtocol'
--
-- * 'usgvAccessToken'
--
-- * 'usgvUploadType'
--
-- * 'usgvUserId'
--
-- * 'usgvCallback'
usersSettingsGetVacation
    :: UsersSettingsGetVacation
usersSettingsGetVacation =
  UsersSettingsGetVacation'
    { _usgvXgafv = Nothing
    , _usgvUploadProtocol = Nothing
    , _usgvAccessToken = Nothing
    , _usgvUploadType = Nothing
    , _usgvUserId = "me"
    , _usgvCallback = Nothing
    }


-- | V1 error format.
usgvXgafv :: Lens' UsersSettingsGetVacation (Maybe Xgafv)
usgvXgafv
  = lens _usgvXgafv (\ s a -> s{_usgvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usgvUploadProtocol :: Lens' UsersSettingsGetVacation (Maybe Text)
usgvUploadProtocol
  = lens _usgvUploadProtocol
      (\ s a -> s{_usgvUploadProtocol = a})

-- | OAuth access token.
usgvAccessToken :: Lens' UsersSettingsGetVacation (Maybe Text)
usgvAccessToken
  = lens _usgvAccessToken
      (\ s a -> s{_usgvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usgvUploadType :: Lens' UsersSettingsGetVacation (Maybe Text)
usgvUploadType
  = lens _usgvUploadType
      (\ s a -> s{_usgvUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usgvUserId :: Lens' UsersSettingsGetVacation Text
usgvUserId
  = lens _usgvUserId (\ s a -> s{_usgvUserId = a})

-- | JSONP
usgvCallback :: Lens' UsersSettingsGetVacation (Maybe Text)
usgvCallback
  = lens _usgvCallback (\ s a -> s{_usgvCallback = a})

instance GoogleRequest UsersSettingsGetVacation where
        type Rs UsersSettingsGetVacation = VacationSettings
        type Scopes UsersSettingsGetVacation =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsGetVacation'{..}
          = go _usgvUserId _usgvXgafv _usgvUploadProtocol
              _usgvAccessToken
              _usgvUploadType
              _usgvCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsGetVacationResource)
                      mempty
