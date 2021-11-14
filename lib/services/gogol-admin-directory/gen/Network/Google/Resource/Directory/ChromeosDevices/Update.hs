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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device\'s updatable properties, such as \`annotatedUser\`,
-- \`annotatedLocation\`, \`notes\`, \`orgUnitPath\`, or
-- \`annotatedAssetId\`.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.update@.
module Network.Google.Resource.Directory.ChromeosDevices.Update
    (
    -- * REST Resource
      ChromeosDevicesUpdateResource

    -- * Creating a Request
    , chromeosDevicesUpdate
    , ChromeosDevicesUpdate

    -- * Request Lenses
    , cduXgafv
    , cduUploadProtocol
    , cduAccessToken
    , cduUploadType
    , cduPayload
    , cduCustomerId
    , cduDeviceId
    , cduProjection
    , cduCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.update@ method which the
-- 'ChromeosDevicesUpdate' request conforms to.
type ChromeosDevicesUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "projection"
                               ChromeosDevicesUpdateProjection
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ChromeOSDevice :>
                                     Put '[JSON] ChromeOSDevice

-- | Updates a device\'s updatable properties, such as \`annotatedUser\`,
-- \`annotatedLocation\`, \`notes\`, \`orgUnitPath\`, or
-- \`annotatedAssetId\`.
--
-- /See:/ 'chromeosDevicesUpdate' smart constructor.
data ChromeosDevicesUpdate =
  ChromeosDevicesUpdate'
    { _cduXgafv :: !(Maybe Xgafv)
    , _cduUploadProtocol :: !(Maybe Text)
    , _cduAccessToken :: !(Maybe Text)
    , _cduUploadType :: !(Maybe Text)
    , _cduPayload :: !ChromeOSDevice
    , _cduCustomerId :: !Text
    , _cduDeviceId :: !Text
    , _cduProjection :: !(Maybe ChromeosDevicesUpdateProjection)
    , _cduCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeosDevicesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cduXgafv'
--
-- * 'cduUploadProtocol'
--
-- * 'cduAccessToken'
--
-- * 'cduUploadType'
--
-- * 'cduPayload'
--
-- * 'cduCustomerId'
--
-- * 'cduDeviceId'
--
-- * 'cduProjection'
--
-- * 'cduCallback'
chromeosDevicesUpdate
    :: ChromeOSDevice -- ^ 'cduPayload'
    -> Text -- ^ 'cduCustomerId'
    -> Text -- ^ 'cduDeviceId'
    -> ChromeosDevicesUpdate
chromeosDevicesUpdate pCduPayload_ pCduCustomerId_ pCduDeviceId_ =
  ChromeosDevicesUpdate'
    { _cduXgafv = Nothing
    , _cduUploadProtocol = Nothing
    , _cduAccessToken = Nothing
    , _cduUploadType = Nothing
    , _cduPayload = pCduPayload_
    , _cduCustomerId = pCduCustomerId_
    , _cduDeviceId = pCduDeviceId_
    , _cduProjection = Nothing
    , _cduCallback = Nothing
    }


-- | V1 error format.
cduXgafv :: Lens' ChromeosDevicesUpdate (Maybe Xgafv)
cduXgafv = lens _cduXgafv (\ s a -> s{_cduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cduUploadProtocol :: Lens' ChromeosDevicesUpdate (Maybe Text)
cduUploadProtocol
  = lens _cduUploadProtocol
      (\ s a -> s{_cduUploadProtocol = a})

-- | OAuth access token.
cduAccessToken :: Lens' ChromeosDevicesUpdate (Maybe Text)
cduAccessToken
  = lens _cduAccessToken
      (\ s a -> s{_cduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cduUploadType :: Lens' ChromeosDevicesUpdate (Maybe Text)
cduUploadType
  = lens _cduUploadType
      (\ s a -> s{_cduUploadType = a})

-- | Multipart request metadata.
cduPayload :: Lens' ChromeosDevicesUpdate ChromeOSDevice
cduPayload
  = lens _cduPayload (\ s a -> s{_cduPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
cduCustomerId :: Lens' ChromeosDevicesUpdate Text
cduCustomerId
  = lens _cduCustomerId
      (\ s a -> s{_cduCustomerId = a})

-- | The unique ID of the device. The \`deviceId\`s are returned in the
-- response from the
-- [chromeosdevices.list](\/admin-sdk\/v1\/reference\/chromeosdevices\/list)
-- method.
cduDeviceId :: Lens' ChromeosDevicesUpdate Text
cduDeviceId
  = lens _cduDeviceId (\ s a -> s{_cduDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cduProjection :: Lens' ChromeosDevicesUpdate (Maybe ChromeosDevicesUpdateProjection)
cduProjection
  = lens _cduProjection
      (\ s a -> s{_cduProjection = a})

-- | JSONP
cduCallback :: Lens' ChromeosDevicesUpdate (Maybe Text)
cduCallback
  = lens _cduCallback (\ s a -> s{_cduCallback = a})

instance GoogleRequest ChromeosDevicesUpdate where
        type Rs ChromeosDevicesUpdate = ChromeOSDevice
        type Scopes ChromeosDevicesUpdate =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient ChromeosDevicesUpdate'{..}
          = go _cduCustomerId _cduDeviceId _cduXgafv
              _cduUploadProtocol
              _cduAccessToken
              _cduUploadType
              _cduProjection
              _cduCallback
              (Just AltJSON)
              _cduPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesUpdateResource)
                      mempty
