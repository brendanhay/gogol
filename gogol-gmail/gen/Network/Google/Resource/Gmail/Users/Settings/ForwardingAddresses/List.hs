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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the forwarding addresses for the specified account.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.list@.
module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.List
    (
    -- * REST Resource
      UsersSettingsForwardingAddressesListResource

    -- * Creating a Request
    , usersSettingsForwardingAddressesList
    , UsersSettingsForwardingAddressesList

    -- * Request Lenses
    , usfalXgafv
    , usfalUploadProtocol
    , usfalAccessToken
    , usfalUploadType
    , usfalUserId
    , usfalCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.forwardingAddresses.list@ method which the
-- 'UsersSettingsForwardingAddressesList' request conforms to.
type UsersSettingsForwardingAddressesListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "settings" :>
               "forwardingAddresses" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListForwardingAddressesResponse

-- | Lists the forwarding addresses for the specified account.
--
-- /See:/ 'usersSettingsForwardingAddressesList' smart constructor.
data UsersSettingsForwardingAddressesList =
  UsersSettingsForwardingAddressesList'
    { _usfalXgafv :: !(Maybe Xgafv)
    , _usfalUploadProtocol :: !(Maybe Text)
    , _usfalAccessToken :: !(Maybe Text)
    , _usfalUploadType :: !(Maybe Text)
    , _usfalUserId :: !Text
    , _usfalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsForwardingAddressesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfalXgafv'
--
-- * 'usfalUploadProtocol'
--
-- * 'usfalAccessToken'
--
-- * 'usfalUploadType'
--
-- * 'usfalUserId'
--
-- * 'usfalCallback'
usersSettingsForwardingAddressesList
    :: UsersSettingsForwardingAddressesList
usersSettingsForwardingAddressesList =
  UsersSettingsForwardingAddressesList'
    { _usfalXgafv = Nothing
    , _usfalUploadProtocol = Nothing
    , _usfalAccessToken = Nothing
    , _usfalUploadType = Nothing
    , _usfalUserId = "me"
    , _usfalCallback = Nothing
    }


-- | V1 error format.
usfalXgafv :: Lens' UsersSettingsForwardingAddressesList (Maybe Xgafv)
usfalXgafv
  = lens _usfalXgafv (\ s a -> s{_usfalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usfalUploadProtocol :: Lens' UsersSettingsForwardingAddressesList (Maybe Text)
usfalUploadProtocol
  = lens _usfalUploadProtocol
      (\ s a -> s{_usfalUploadProtocol = a})

-- | OAuth access token.
usfalAccessToken :: Lens' UsersSettingsForwardingAddressesList (Maybe Text)
usfalAccessToken
  = lens _usfalAccessToken
      (\ s a -> s{_usfalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usfalUploadType :: Lens' UsersSettingsForwardingAddressesList (Maybe Text)
usfalUploadType
  = lens _usfalUploadType
      (\ s a -> s{_usfalUploadType = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfalUserId :: Lens' UsersSettingsForwardingAddressesList Text
usfalUserId
  = lens _usfalUserId (\ s a -> s{_usfalUserId = a})

-- | JSONP
usfalCallback :: Lens' UsersSettingsForwardingAddressesList (Maybe Text)
usfalCallback
  = lens _usfalCallback
      (\ s a -> s{_usfalCallback = a})

instance GoogleRequest
           UsersSettingsForwardingAddressesList
         where
        type Rs UsersSettingsForwardingAddressesList =
             ListForwardingAddressesResponse
        type Scopes UsersSettingsForwardingAddressesList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly",
               "https://www.googleapis.com/auth/gmail.settings.basic"]
        requestClient
          UsersSettingsForwardingAddressesList'{..}
          = go _usfalUserId _usfalXgafv _usfalUploadProtocol
              _usfalAccessToken
              _usfalUploadType
              _usfalCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsForwardingAddressesListResource)
                      mempty
