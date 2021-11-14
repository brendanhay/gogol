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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdateImap
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates IMAP settings.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateImap@.
module Network.Google.Resource.Gmail.Users.Settings.UpdateImap
    (
    -- * REST Resource
      UsersSettingsUpdateImapResource

    -- * Creating a Request
    , usersSettingsUpdateImap
    , UsersSettingsUpdateImap

    -- * Request Lenses
    , usuiXgafv
    , usuiUploadProtocol
    , usuiAccessToken
    , usuiUploadType
    , usuiPayload
    , usuiUserId
    , usuiCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updateImap@ method which the
-- 'UsersSettingsUpdateImap' request conforms to.
type UsersSettingsUpdateImapResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ImapSettings :>
                               Put '[JSON] ImapSettings

-- | Updates IMAP settings.
--
-- /See:/ 'usersSettingsUpdateImap' smart constructor.
data UsersSettingsUpdateImap =
  UsersSettingsUpdateImap'
    { _usuiXgafv :: !(Maybe Xgafv)
    , _usuiUploadProtocol :: !(Maybe Text)
    , _usuiAccessToken :: !(Maybe Text)
    , _usuiUploadType :: !(Maybe Text)
    , _usuiPayload :: !ImapSettings
    , _usuiUserId :: !Text
    , _usuiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsUpdateImap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuiXgafv'
--
-- * 'usuiUploadProtocol'
--
-- * 'usuiAccessToken'
--
-- * 'usuiUploadType'
--
-- * 'usuiPayload'
--
-- * 'usuiUserId'
--
-- * 'usuiCallback'
usersSettingsUpdateImap
    :: ImapSettings -- ^ 'usuiPayload'
    -> UsersSettingsUpdateImap
usersSettingsUpdateImap pUsuiPayload_ =
  UsersSettingsUpdateImap'
    { _usuiXgafv = Nothing
    , _usuiUploadProtocol = Nothing
    , _usuiAccessToken = Nothing
    , _usuiUploadType = Nothing
    , _usuiPayload = pUsuiPayload_
    , _usuiUserId = "me"
    , _usuiCallback = Nothing
    }


-- | V1 error format.
usuiXgafv :: Lens' UsersSettingsUpdateImap (Maybe Xgafv)
usuiXgafv
  = lens _usuiXgafv (\ s a -> s{_usuiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usuiUploadProtocol :: Lens' UsersSettingsUpdateImap (Maybe Text)
usuiUploadProtocol
  = lens _usuiUploadProtocol
      (\ s a -> s{_usuiUploadProtocol = a})

-- | OAuth access token.
usuiAccessToken :: Lens' UsersSettingsUpdateImap (Maybe Text)
usuiAccessToken
  = lens _usuiAccessToken
      (\ s a -> s{_usuiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usuiUploadType :: Lens' UsersSettingsUpdateImap (Maybe Text)
usuiUploadType
  = lens _usuiUploadType
      (\ s a -> s{_usuiUploadType = a})

-- | Multipart request metadata.
usuiPayload :: Lens' UsersSettingsUpdateImap ImapSettings
usuiPayload
  = lens _usuiPayload (\ s a -> s{_usuiPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usuiUserId :: Lens' UsersSettingsUpdateImap Text
usuiUserId
  = lens _usuiUserId (\ s a -> s{_usuiUserId = a})

-- | JSONP
usuiCallback :: Lens' UsersSettingsUpdateImap (Maybe Text)
usuiCallback
  = lens _usuiCallback (\ s a -> s{_usuiCallback = a})

instance GoogleRequest UsersSettingsUpdateImap where
        type Rs UsersSettingsUpdateImap = ImapSettings
        type Scopes UsersSettingsUpdateImap =
             '["https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient UsersSettingsUpdateImap'{..}
          = go _usuiUserId _usuiXgafv _usuiUploadProtocol
              _usuiAccessToken
              _usuiUploadType
              _usuiCallback
              (Just AltJSON)
              _usuiPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSettingsUpdateImapResource)
                      mempty
