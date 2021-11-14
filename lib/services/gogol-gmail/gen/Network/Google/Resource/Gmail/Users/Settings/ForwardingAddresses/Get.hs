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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified forwarding address.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.get@.
module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Get
    (
    -- * REST Resource
      UsersSettingsForwardingAddressesGetResource

    -- * Creating a Request
    , usersSettingsForwardingAddressesGet
    , UsersSettingsForwardingAddressesGet

    -- * Request Lenses
    , usfagXgafv
    , usfagForwardingEmail
    , usfagUploadProtocol
    , usfagAccessToken
    , usfagUploadType
    , usfagUserId
    , usfagCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.forwardingAddresses.get@ method which the
-- 'UsersSettingsForwardingAddressesGet' request conforms to.
type UsersSettingsForwardingAddressesGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "forwardingAddresses" :>
                 Capture "forwardingEmail" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ForwardingAddress

-- | Gets the specified forwarding address.
--
-- /See:/ 'usersSettingsForwardingAddressesGet' smart constructor.
data UsersSettingsForwardingAddressesGet =
  UsersSettingsForwardingAddressesGet'
    { _usfagXgafv :: !(Maybe Xgafv)
    , _usfagForwardingEmail :: !Text
    , _usfagUploadProtocol :: !(Maybe Text)
    , _usfagAccessToken :: !(Maybe Text)
    , _usfagUploadType :: !(Maybe Text)
    , _usfagUserId :: !Text
    , _usfagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsForwardingAddressesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfagXgafv'
--
-- * 'usfagForwardingEmail'
--
-- * 'usfagUploadProtocol'
--
-- * 'usfagAccessToken'
--
-- * 'usfagUploadType'
--
-- * 'usfagUserId'
--
-- * 'usfagCallback'
usersSettingsForwardingAddressesGet
    :: Text -- ^ 'usfagForwardingEmail'
    -> UsersSettingsForwardingAddressesGet
usersSettingsForwardingAddressesGet pUsfagForwardingEmail_ =
  UsersSettingsForwardingAddressesGet'
    { _usfagXgafv = Nothing
    , _usfagForwardingEmail = pUsfagForwardingEmail_
    , _usfagUploadProtocol = Nothing
    , _usfagAccessToken = Nothing
    , _usfagUploadType = Nothing
    , _usfagUserId = "me"
    , _usfagCallback = Nothing
    }


-- | V1 error format.
usfagXgafv :: Lens' UsersSettingsForwardingAddressesGet (Maybe Xgafv)
usfagXgafv
  = lens _usfagXgafv (\ s a -> s{_usfagXgafv = a})

-- | The forwarding address to be retrieved.
usfagForwardingEmail :: Lens' UsersSettingsForwardingAddressesGet Text
usfagForwardingEmail
  = lens _usfagForwardingEmail
      (\ s a -> s{_usfagForwardingEmail = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usfagUploadProtocol :: Lens' UsersSettingsForwardingAddressesGet (Maybe Text)
usfagUploadProtocol
  = lens _usfagUploadProtocol
      (\ s a -> s{_usfagUploadProtocol = a})

-- | OAuth access token.
usfagAccessToken :: Lens' UsersSettingsForwardingAddressesGet (Maybe Text)
usfagAccessToken
  = lens _usfagAccessToken
      (\ s a -> s{_usfagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usfagUploadType :: Lens' UsersSettingsForwardingAddressesGet (Maybe Text)
usfagUploadType
  = lens _usfagUploadType
      (\ s a -> s{_usfagUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfagUserId :: Lens' UsersSettingsForwardingAddressesGet Text
usfagUserId
  = lens _usfagUserId (\ s a -> s{_usfagUserId = a})

-- | JSONP
usfagCallback :: Lens' UsersSettingsForwardingAddressesGet (Maybe Text)
usfagCallback
  = lens _usfagCallback
      (\ s a -> s{_usfagCallback = a})

instance GoogleRequest
           UsersSettingsForwardingAddressesGet
         where
        type Rs UsersSettingsForwardingAddressesGet =
             ForwardingAddress
        type Scopes UsersSettingsForwardingAddressesGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient
          UsersSettingsForwardingAddressesGet'{..}
          = go _usfagUserId _usfagForwardingEmail _usfagXgafv
              _usfagUploadProtocol
              _usfagAccessToken
              _usfagUploadType
              _usfagCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsForwardingAddressesGetResource)
                      mempty
