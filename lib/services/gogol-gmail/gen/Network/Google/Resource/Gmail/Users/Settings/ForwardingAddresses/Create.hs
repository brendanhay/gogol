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
-- Module      : Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a forwarding address. If ownership verification is required, a
-- message will be sent to the recipient and the resource\'s verification
-- status will be set to \`pending\`; otherwise, the resource will be
-- created with verification status set to \`accepted\`. This method is
-- only available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.settings.forwardingAddresses.create@.
module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Create
    (
    -- * REST Resource
      UsersSettingsForwardingAddressesCreateResource

    -- * Creating a Request
    , usersSettingsForwardingAddressesCreate
    , UsersSettingsForwardingAddressesCreate

    -- * Request Lenses
    , usfacXgafv
    , usfacUploadProtocol
    , usfacAccessToken
    , usfacUploadType
    , usfacPayload
    , usfacUserId
    , usfacCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.settings.forwardingAddresses.create@ method which the
-- 'UsersSettingsForwardingAddressesCreate' request conforms to.
type UsersSettingsForwardingAddressesCreateResource =
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
                             ReqBody '[JSON] ForwardingAddress :>
                               Post '[JSON] ForwardingAddress

-- | Creates a forwarding address. If ownership verification is required, a
-- message will be sent to the recipient and the resource\'s verification
-- status will be set to \`pending\`; otherwise, the resource will be
-- created with verification status set to \`accepted\`. This method is
-- only available to service account clients that have been delegated
-- domain-wide authority.
--
-- /See:/ 'usersSettingsForwardingAddressesCreate' smart constructor.
data UsersSettingsForwardingAddressesCreate =
  UsersSettingsForwardingAddressesCreate'
    { _usfacXgafv :: !(Maybe Xgafv)
    , _usfacUploadProtocol :: !(Maybe Text)
    , _usfacAccessToken :: !(Maybe Text)
    , _usfacUploadType :: !(Maybe Text)
    , _usfacPayload :: !ForwardingAddress
    , _usfacUserId :: !Text
    , _usfacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSettingsForwardingAddressesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usfacXgafv'
--
-- * 'usfacUploadProtocol'
--
-- * 'usfacAccessToken'
--
-- * 'usfacUploadType'
--
-- * 'usfacPayload'
--
-- * 'usfacUserId'
--
-- * 'usfacCallback'
usersSettingsForwardingAddressesCreate
    :: ForwardingAddress -- ^ 'usfacPayload'
    -> UsersSettingsForwardingAddressesCreate
usersSettingsForwardingAddressesCreate pUsfacPayload_ =
  UsersSettingsForwardingAddressesCreate'
    { _usfacXgafv = Nothing
    , _usfacUploadProtocol = Nothing
    , _usfacAccessToken = Nothing
    , _usfacUploadType = Nothing
    , _usfacPayload = pUsfacPayload_
    , _usfacUserId = "me"
    , _usfacCallback = Nothing
    }


-- | V1 error format.
usfacXgafv :: Lens' UsersSettingsForwardingAddressesCreate (Maybe Xgafv)
usfacXgafv
  = lens _usfacXgafv (\ s a -> s{_usfacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usfacUploadProtocol :: Lens' UsersSettingsForwardingAddressesCreate (Maybe Text)
usfacUploadProtocol
  = lens _usfacUploadProtocol
      (\ s a -> s{_usfacUploadProtocol = a})

-- | OAuth access token.
usfacAccessToken :: Lens' UsersSettingsForwardingAddressesCreate (Maybe Text)
usfacAccessToken
  = lens _usfacAccessToken
      (\ s a -> s{_usfacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usfacUploadType :: Lens' UsersSettingsForwardingAddressesCreate (Maybe Text)
usfacUploadType
  = lens _usfacUploadType
      (\ s a -> s{_usfacUploadType = a})

-- | Multipart request metadata.
usfacPayload :: Lens' UsersSettingsForwardingAddressesCreate ForwardingAddress
usfacPayload
  = lens _usfacPayload (\ s a -> s{_usfacPayload = a})

-- | User\'s email address. The special value \"me\" can be used to indicate
-- the authenticated user.
usfacUserId :: Lens' UsersSettingsForwardingAddressesCreate Text
usfacUserId
  = lens _usfacUserId (\ s a -> s{_usfacUserId = a})

-- | JSONP
usfacCallback :: Lens' UsersSettingsForwardingAddressesCreate (Maybe Text)
usfacCallback
  = lens _usfacCallback
      (\ s a -> s{_usfacCallback = a})

instance GoogleRequest
           UsersSettingsForwardingAddressesCreate
         where
        type Rs UsersSettingsForwardingAddressesCreate =
             ForwardingAddress
        type Scopes UsersSettingsForwardingAddressesCreate =
             '["https://www.googleapis.com/auth/gmail.settings.sharing"]
        requestClient
          UsersSettingsForwardingAddressesCreate'{..}
          = go _usfacUserId _usfacXgafv _usfacUploadProtocol
              _usfacAccessToken
              _usfacUploadType
              _usfacCallback
              (Just AltJSON)
              _usfacPayload
              gmailService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersSettingsForwardingAddressesCreateResource)
                      mempty
