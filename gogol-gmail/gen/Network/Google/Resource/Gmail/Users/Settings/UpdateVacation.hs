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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdateVacation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates vacation responder settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateVacation@.
module Network.Google.Resource.Gmail.Users.Settings.UpdateVacation
    (
    -- * REST Resource
      UsersSettingsUpdateVacationResource

    -- * Creating a Request
    , usersSettingsUpdateVacation
    , UsersSettingsUpdateVacation

    -- * Request Lenses
    , usuvXgafv
    , usuvUploadProtocol
    , usuvAccessToken
    , usuvUploadType
    , usuvPayload
    , usuvUserId
    , usuvCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updateVacation@ method which the
-- 'UsersSettingsUpdateVacation' request conforms to.
type UsersSettingsUpdateVacationResource =
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
                             ReqBody '[JSON] VacationSettings :>
                               Put '[JSON] VacationSettings

-- | Updates vacation responder settings.
--
-- /See:/ 'usersSettingsUpdateVacation' smart constructor.
data UsersSettingsUpdateVacation =
  UsersSettingsUpdateVacation'
    { _usuvXgafv :: !(Maybe Xgafv)
    , _usuvUploadProtocol :: !(Maybe Text)
    , _usuvAccessToken :: !(Maybe Text)
    , _usuvUploadType :: !(Maybe Text)
    , _usuvPayload :: !VacationSettings
    , _usuvUserId :: !Text
    , _usuvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsUpdateVacation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuvXgafv'
--
-- * 'usuvUploadProtocol'
--
-- * 'usuvAccessToken'
--
-- * 'usuvUploadType'
--
-- * 'usuvPayload'
--
-- * 'usuvUserId'
--
-- * 'usuvCallback'
usersSettingsUpdateVacation
    :: VacationSettings -- ^ 'usuvPayload'
    -> UsersSettingsUpdateVacation
usersSettingsUpdateVacation pUsuvPayload_ =
  UsersSettingsUpdateVacation'
    { _usuvXgafv = Nothing
    , _usuvUploadProtocol = Nothing
    , _usuvAccessToken = Nothing
    , _usuvUploadType = Nothing
    , _usuvPayload = pUsuvPayload_
    , _usuvUserId = "me"
    , _usuvCallback = Nothing
    }


-- | V1 error format.
usuvXgafv :: Lens' UsersSettingsUpdateVacation (Maybe Xgafv)
usuvXgafv
  = lens _usuvXgafv (\ s a -> s{_usuvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usuvUploadProtocol :: Lens' UsersSettingsUpdateVacation (Maybe Text)
usuvUploadProtocol
  = lens _usuvUploadProtocol
      (\ s a -> s{_usuvUploadProtocol = a})

-- | OAuth access token.
usuvAccessToken :: Lens' UsersSettingsUpdateVacation (Maybe Text)
usuvAccessToken
  = lens _usuvAccessToken
      (\ s a -> s{_usuvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usuvUploadType :: Lens' UsersSettingsUpdateVacation (Maybe Text)
usuvUploadType
  = lens _usuvUploadType
      (\ s a -> s{_usuvUploadType = a})

-- | Multipart request metadata.
usuvPayload :: Lens' UsersSettingsUpdateVacation VacationSettings
usuvPayload
  = lens _usuvPayload (\ s a -> s{_usuvPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usuvUserId :: Lens' UsersSettingsUpdateVacation Text
usuvUserId
  = lens _usuvUserId (\ s a -> s{_usuvUserId = a})

-- | JSONP
usuvCallback :: Lens' UsersSettingsUpdateVacation (Maybe Text)
usuvCallback
  = lens _usuvCallback (\ s a -> s{_usuvCallback = a})

instance GoogleRequest UsersSettingsUpdateVacation
         where
        type Rs UsersSettingsUpdateVacation =
             VacationSettings
        type Scopes UsersSettingsUpdateVacation =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsUpdateVacation'{..}
          = go _usuvUserId _usuvXgafv _usuvUploadProtocol
              _usuvAccessToken
              _usuvUploadType
              _usuvCallback
              (Just AltJSON)
              _usuvPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsUpdateVacationResource)
                      mempty
