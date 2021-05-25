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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.GetAutoForwarding
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the auto-forwarding setting for the specified account.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.getAutoForwarding@.
module Network.Google.Resource.Gmail.Users.Settings.GetAutoForwarding
    (
    -- * REST Resource
      UsersSettingsGetAutoForwardingResource

    -- * Creating a Request
    , usersSettingsGetAutoForwarding
    , UsersSettingsGetAutoForwarding

    -- * Request Lenses
    , usgafXgafv
    , usgafUploadProtocol
    , usgafAccessToken
    , usgafUploadType
    , usgafUserId
    , usgafCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.getAutoForwarding@ method which the
-- 'UsersSettingsGetAutoForwarding' request conforms to.
type UsersSettingsGetAutoForwardingResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "autoForwarding" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AutoForwarding

-- | Gets the auto-forwarding setting for the specified account.
--
-- /See:/ 'usersSettingsGetAutoForwarding' smart constructor.
data UsersSettingsGetAutoForwarding =
  UsersSettingsGetAutoForwarding'
    { _usgafXgafv :: !(Maybe Xgafv)
    , _usgafUploadProtocol :: !(Maybe Text)
    , _usgafAccessToken :: !(Maybe Text)
    , _usgafUploadType :: !(Maybe Text)
    , _usgafUserId :: !Text
    , _usgafCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsGetAutoForwarding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgafXgafv'
--
-- * 'usgafUploadProtocol'
--
-- * 'usgafAccessToken'
--
-- * 'usgafUploadType'
--
-- * 'usgafUserId'
--
-- * 'usgafCallback'
usersSettingsGetAutoForwarding
    :: UsersSettingsGetAutoForwarding
usersSettingsGetAutoForwarding =
  UsersSettingsGetAutoForwarding'
    { _usgafXgafv = Nothing
    , _usgafUploadProtocol = Nothing
    , _usgafAccessToken = Nothing
    , _usgafUploadType = Nothing
    , _usgafUserId = "me"
    , _usgafCallback = Nothing
    }


-- | V1 error format.
usgafXgafv :: Lens' UsersSettingsGetAutoForwarding (Maybe Xgafv)
usgafXgafv
  = lens _usgafXgafv (\ s a -> s{_usgafXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usgafUploadProtocol :: Lens' UsersSettingsGetAutoForwarding (Maybe Text)
usgafUploadProtocol
  = lens _usgafUploadProtocol
      (\ s a -> s{_usgafUploadProtocol = a})

-- | OAuth access token.
usgafAccessToken :: Lens' UsersSettingsGetAutoForwarding (Maybe Text)
usgafAccessToken
  = lens _usgafAccessToken
      (\ s a -> s{_usgafAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usgafUploadType :: Lens' UsersSettingsGetAutoForwarding (Maybe Text)
usgafUploadType
  = lens _usgafUploadType
      (\ s a -> s{_usgafUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usgafUserId :: Lens' UsersSettingsGetAutoForwarding Text
usgafUserId
  = lens _usgafUserId (\ s a -> s{_usgafUserId = a})

-- | JSONP
usgafCallback :: Lens' UsersSettingsGetAutoForwarding (Maybe Text)
usgafCallback
  = lens _usgafCallback
      (\ s a -> s{_usgafCallback = a})

instance GoogleRequest UsersSettingsGetAutoForwarding
         where
        type Rs UsersSettingsGetAutoForwarding =
             AutoForwarding
        type Scopes UsersSettingsGetAutoForwarding =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsGetAutoForwarding'{..}
          = go _usgafUserId _usgafXgafv _usgafUploadProtocol
              _usgafAccessToken
              _usgafUploadType
              _usgafCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsGetAutoForwardingResource)
                      mempty
