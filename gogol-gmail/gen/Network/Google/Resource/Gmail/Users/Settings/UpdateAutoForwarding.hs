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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.UpdateAutoForwarding
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the auto-forwarding setting for the specified account. A
-- verified forwarding address must be specified when auto-forwarding is
-- enabled. This method is only available to service account clients that
-- have been delegated domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.updateAutoForwarding@.
module Network.Google.Resource.Gmail.Users.Settings.UpdateAutoForwarding
    (
    -- * REST Resource
      UsersSettingsUpdateAutoForwardingResource

    -- * Creating a Request
    , usersSettingsUpdateAutoForwarding
    , UsersSettingsUpdateAutoForwarding

    -- * Request Lenses
    , usuafXgafv
    , usuafUploadProtocol
    , usuafAccessToken
    , usuafUploadType
    , usuafPayload
    , usuafUserId
    , usuafCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.updateAutoForwarding@ method which the
-- 'UsersSettingsUpdateAutoForwarding' request conforms to.
type UsersSettingsUpdateAutoForwardingResource =
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
                             ReqBody '[JSON] AutoForwarding :>
                               Put '[JSON] AutoForwarding

-- | Updates the auto-forwarding setting for the specified account. A
-- verified forwarding address must be specified when auto-forwarding is
-- enabled. This method is only available to service account clients that
-- have been delegated domain-wide authority.
--
-- /See:/ 'usersSettingsUpdateAutoForwarding' smart constructor.
data UsersSettingsUpdateAutoForwarding =
  UsersSettingsUpdateAutoForwarding'
    { _usuafXgafv :: !(Maybe Xgafv)
    , _usuafUploadProtocol :: !(Maybe Text)
    , _usuafAccessToken :: !(Maybe Text)
    , _usuafUploadType :: !(Maybe Text)
    , _usuafPayload :: !AutoForwarding
    , _usuafUserId :: !Text
    , _usuafCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsUpdateAutoForwarding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuafXgafv'
--
-- * 'usuafUploadProtocol'
--
-- * 'usuafAccessToken'
--
-- * 'usuafUploadType'
--
-- * 'usuafPayload'
--
-- * 'usuafUserId'
--
-- * 'usuafCallback'
usersSettingsUpdateAutoForwarding
    :: AutoForwarding -- ^ 'usuafPayload'
    -> UsersSettingsUpdateAutoForwarding
usersSettingsUpdateAutoForwarding pUsuafPayload_ =
  UsersSettingsUpdateAutoForwarding'
    { _usuafXgafv = Nothing
    , _usuafUploadProtocol = Nothing
    , _usuafAccessToken = Nothing
    , _usuafUploadType = Nothing
    , _usuafPayload = pUsuafPayload_
    , _usuafUserId = "me"
    , _usuafCallback = Nothing
    }


-- | V1 error format.
usuafXgafv :: Lens' UsersSettingsUpdateAutoForwarding (Maybe Xgafv)
usuafXgafv
  = lens _usuafXgafv (\ s a -> s{_usuafXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usuafUploadProtocol :: Lens' UsersSettingsUpdateAutoForwarding (Maybe Text)
usuafUploadProtocol
  = lens _usuafUploadProtocol
      (\ s a -> s{_usuafUploadProtocol = a})

-- | OAuth access token.
usuafAccessToken :: Lens' UsersSettingsUpdateAutoForwarding (Maybe Text)
usuafAccessToken
  = lens _usuafAccessToken
      (\ s a -> s{_usuafAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usuafUploadType :: Lens' UsersSettingsUpdateAutoForwarding (Maybe Text)
usuafUploadType
  = lens _usuafUploadType
      (\ s a -> s{_usuafUploadType = a})

-- | Multipart request metadata.
usuafPayload :: Lens' UsersSettingsUpdateAutoForwarding AutoForwarding
usuafPayload
  = lens _usuafPayload (\ s a -> s{_usuafPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usuafUserId :: Lens' UsersSettingsUpdateAutoForwarding Text
usuafUserId
  = lens _usuafUserId (\ s a -> s{_usuafUserId = a})

-- | JSONP
usuafCallback :: Lens' UsersSettingsUpdateAutoForwarding (Maybe Text)
usuafCallback
  = lens _usuafCallback
      (\ s a -> s{_usuafCallback = a})

instance GoogleRequest
           UsersSettingsUpdateAutoForwarding
         where
        type Rs UsersSettingsUpdateAutoForwarding =
             AutoForwarding
        type Scopes UsersSettingsUpdateAutoForwarding =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient UsersSettingsUpdateAutoForwarding'{..}
          = go _usuafUserId _usuafXgafv _usuafUploadProtocol
              _usuafAccessToken
              _usuafUploadType
              _usuafCallback
              (Just AltJSON)
              _usuafPayload
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsUpdateAutoForwardingResource)
                      mempty
