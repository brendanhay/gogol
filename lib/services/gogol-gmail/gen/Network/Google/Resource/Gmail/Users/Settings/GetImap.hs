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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.GetImap
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets IMAP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.getImap@.
module Network.Google.Resource.Gmail.Users.Settings.GetImap
    (
    -- * REST Resource
      UsersSettingsGetImapResource

    -- * Creating a Request
    , usersSettingsGetImap
    , UsersSettingsGetImap

    -- * Request Lenses
    , usgiXgafv
    , usgiUploadProtocol
    , usgiAccessToken
    , usgiUploadType
    , usgiUserId
    , usgiCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.getImap@ method which the
-- 'UsersSettingsGetImap' request conforms to.
type UsersSettingsGetImapResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "imap" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ImapSettings

-- | Gets IMAP settings.
--
-- /See:/ 'usersSettingsGetImap' smart constructor.
data UsersSettingsGetImap =
  UsersSettingsGetImap'
    { _usgiXgafv :: !(Maybe Xgafv)
    , _usgiUploadProtocol :: !(Maybe Text)
    , _usgiAccessToken :: !(Maybe Text)
    , _usgiUploadType :: !(Maybe Text)
    , _usgiUserId :: !Text
    , _usgiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsGetImap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgiXgafv'
--
-- * 'usgiUploadProtocol'
--
-- * 'usgiAccessToken'
--
-- * 'usgiUploadType'
--
-- * 'usgiUserId'
--
-- * 'usgiCallback'
usersSettingsGetImap
    :: UsersSettingsGetImap
usersSettingsGetImap =
  UsersSettingsGetImap'
    { _usgiXgafv = Nothing
    , _usgiUploadProtocol = Nothing
    , _usgiAccessToken = Nothing
    , _usgiUploadType = Nothing
    , _usgiUserId = "me"
    , _usgiCallback = Nothing
    }


-- | V1 error format.
usgiXgafv :: Lens' UsersSettingsGetImap (Maybe Xgafv)
usgiXgafv
  = lens _usgiXgafv (\ s a -> s{_usgiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usgiUploadProtocol :: Lens' UsersSettingsGetImap (Maybe Text)
usgiUploadProtocol
  = lens _usgiUploadProtocol
      (\ s a -> s{_usgiUploadProtocol = a})

-- | OAuth access token.
usgiAccessToken :: Lens' UsersSettingsGetImap (Maybe Text)
usgiAccessToken
  = lens _usgiAccessToken
      (\ s a -> s{_usgiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usgiUploadType :: Lens' UsersSettingsGetImap (Maybe Text)
usgiUploadType
  = lens _usgiUploadType
      (\ s a -> s{_usgiUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usgiUserId :: Lens' UsersSettingsGetImap Text
usgiUserId
  = lens _usgiUserId (\ s a -> s{_usgiUserId = a})

-- | JSONP
usgiCallback :: Lens' UsersSettingsGetImap (Maybe Text)
usgiCallback
  = lens _usgiCallback (\ s a -> s{_usgiCallback = a})

instance GoogleRequest UsersSettingsGetImap where
        type Rs UsersSettingsGetImap = ImapSettings
        type Scopes UsersSettingsGetImap =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsGetImap'{..}
          = go _usgiUserId _usgiXgafv _usgiUploadProtocol
              _usgiAccessToken
              _usgiUploadType
              _usgiCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsGetImapResource)
                      mempty
