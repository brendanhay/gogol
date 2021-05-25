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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Action
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Takes an action that affects a Chrome OS Device. This includes
-- deprovisioning, disabling, and re-enabling devices. *Warning:* *
-- Deprovisioning a device will stop device policy syncing and remove
-- device-level printers. After a device is deprovisioned, it must be wiped
-- before it can be re-enrolled. * Lost or stolen devices should use the
-- disable action. * Re-enabling a disabled device will consume a device
-- license. If you do not have sufficient licenses available when
-- completing the re-enable action, you will receive an error. For more
-- information about deprovisioning and disabling devices, visit the [help
-- center](https:\/\/support.google.com\/chrome\/a\/answer\/3523633).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.action@.
module Network.Google.Resource.Directory.ChromeosDevices.Action
    (
    -- * REST Resource
      ChromeosDevicesActionResource

    -- * Creating a Request
    , chromeosDevicesAction
    , ChromeosDevicesAction

    -- * Request Lenses
    , cdaXgafv
    , cdaResourceId
    , cdaUploadProtocol
    , cdaAccessToken
    , cdaUploadType
    , cdaPayload
    , cdaCustomerId
    , cdaCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.action@ method which the
-- 'ChromeosDevicesAction' request conforms to.
type ChromeosDevicesActionResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "resourceId" Text :>
                     "action" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ChromeOSDeviceAction :>
                                     Post '[JSON] ()

-- | Takes an action that affects a Chrome OS Device. This includes
-- deprovisioning, disabling, and re-enabling devices. *Warning:* *
-- Deprovisioning a device will stop device policy syncing and remove
-- device-level printers. After a device is deprovisioned, it must be wiped
-- before it can be re-enrolled. * Lost or stolen devices should use the
-- disable action. * Re-enabling a disabled device will consume a device
-- license. If you do not have sufficient licenses available when
-- completing the re-enable action, you will receive an error. For more
-- information about deprovisioning and disabling devices, visit the [help
-- center](https:\/\/support.google.com\/chrome\/a\/answer\/3523633).
--
-- /See:/ 'chromeosDevicesAction' smart constructor.
data ChromeosDevicesAction =
  ChromeosDevicesAction'
    { _cdaXgafv :: !(Maybe Xgafv)
    , _cdaResourceId :: !Text
    , _cdaUploadProtocol :: !(Maybe Text)
    , _cdaAccessToken :: !(Maybe Text)
    , _cdaUploadType :: !(Maybe Text)
    , _cdaPayload :: !ChromeOSDeviceAction
    , _cdaCustomerId :: !Text
    , _cdaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeosDevicesAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdaXgafv'
--
-- * 'cdaResourceId'
--
-- * 'cdaUploadProtocol'
--
-- * 'cdaAccessToken'
--
-- * 'cdaUploadType'
--
-- * 'cdaPayload'
--
-- * 'cdaCustomerId'
--
-- * 'cdaCallback'
chromeosDevicesAction
    :: Text -- ^ 'cdaResourceId'
    -> ChromeOSDeviceAction -- ^ 'cdaPayload'
    -> Text -- ^ 'cdaCustomerId'
    -> ChromeosDevicesAction
chromeosDevicesAction pCdaResourceId_ pCdaPayload_ pCdaCustomerId_ =
  ChromeosDevicesAction'
    { _cdaXgafv = Nothing
    , _cdaResourceId = pCdaResourceId_
    , _cdaUploadProtocol = Nothing
    , _cdaAccessToken = Nothing
    , _cdaUploadType = Nothing
    , _cdaPayload = pCdaPayload_
    , _cdaCustomerId = pCdaCustomerId_
    , _cdaCallback = Nothing
    }


-- | V1 error format.
cdaXgafv :: Lens' ChromeosDevicesAction (Maybe Xgafv)
cdaXgafv = lens _cdaXgafv (\ s a -> s{_cdaXgafv = a})

-- | The unique ID of the device. The \`resourceId\`s are returned in the
-- response from the
-- [chromeosdevices.list](\/admin-sdk\/directory\/v1\/reference\/chromeosdevices\/list)
-- method.
cdaResourceId :: Lens' ChromeosDevicesAction Text
cdaResourceId
  = lens _cdaResourceId
      (\ s a -> s{_cdaResourceId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdaUploadProtocol :: Lens' ChromeosDevicesAction (Maybe Text)
cdaUploadProtocol
  = lens _cdaUploadProtocol
      (\ s a -> s{_cdaUploadProtocol = a})

-- | OAuth access token.
cdaAccessToken :: Lens' ChromeosDevicesAction (Maybe Text)
cdaAccessToken
  = lens _cdaAccessToken
      (\ s a -> s{_cdaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdaUploadType :: Lens' ChromeosDevicesAction (Maybe Text)
cdaUploadType
  = lens _cdaUploadType
      (\ s a -> s{_cdaUploadType = a})

-- | Multipart request metadata.
cdaPayload :: Lens' ChromeosDevicesAction ChromeOSDeviceAction
cdaPayload
  = lens _cdaPayload (\ s a -> s{_cdaPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
cdaCustomerId :: Lens' ChromeosDevicesAction Text
cdaCustomerId
  = lens _cdaCustomerId
      (\ s a -> s{_cdaCustomerId = a})

-- | JSONP
cdaCallback :: Lens' ChromeosDevicesAction (Maybe Text)
cdaCallback
  = lens _cdaCallback (\ s a -> s{_cdaCallback = a})

instance GoogleRequest ChromeosDevicesAction where
        type Rs ChromeosDevicesAction = ()
        type Scopes ChromeosDevicesAction =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient ChromeosDevicesAction'{..}
          = go _cdaCustomerId _cdaResourceId _cdaXgafv
              _cdaUploadProtocol
              _cdaAccessToken
              _cdaUploadType
              _cdaCallback
              (Just AltJSON)
              _cdaPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesActionResource)
                      mempty
