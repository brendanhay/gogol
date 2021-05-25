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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.CancelWipe
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an unfinished device wipe. This operation can be used to cancel
-- device wipe in the gap between the wipe operation returning success and
-- the device being wiped. This operation is possible when the device is in
-- a \"pending wipe\" state. The device enters the \"pending wipe\" state
-- when a wipe device command is issued, but has not yet been sent to the
-- device. The cancel wipe will fail if the wipe command has already been
-- issued to the device.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.cancelWipe@.
module Network.Google.Resource.CloudIdentity.Devices.CancelWipe
    (
    -- * REST Resource
      DevicesCancelWipeResource

    -- * Creating a Request
    , devicesCancelWipe
    , DevicesCancelWipe

    -- * Request Lenses
    , dcwXgafv
    , dcwUploadProtocol
    , dcwAccessToken
    , dcwUploadType
    , dcwPayload
    , dcwName
    , dcwCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.cancelWipe@ method which the
-- 'DevicesCancelWipe' request conforms to.
type DevicesCancelWipeResource =
     "v1" :>
       CaptureMode "name" "cancelWipe" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
                       :> Post '[JSON] Operation

-- | Cancels an unfinished device wipe. This operation can be used to cancel
-- device wipe in the gap between the wipe operation returning success and
-- the device being wiped. This operation is possible when the device is in
-- a \"pending wipe\" state. The device enters the \"pending wipe\" state
-- when a wipe device command is issued, but has not yet been sent to the
-- device. The cancel wipe will fail if the wipe command has already been
-- issued to the device.
--
-- /See:/ 'devicesCancelWipe' smart constructor.
data DevicesCancelWipe =
  DevicesCancelWipe'
    { _dcwXgafv :: !(Maybe Xgafv)
    , _dcwUploadProtocol :: !(Maybe Text)
    , _dcwAccessToken :: !(Maybe Text)
    , _dcwUploadType :: !(Maybe Text)
    , _dcwPayload :: !GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    , _dcwName :: !Text
    , _dcwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesCancelWipe' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcwXgafv'
--
-- * 'dcwUploadProtocol'
--
-- * 'dcwAccessToken'
--
-- * 'dcwUploadType'
--
-- * 'dcwPayload'
--
-- * 'dcwName'
--
-- * 'dcwCallback'
devicesCancelWipe
    :: GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest -- ^ 'dcwPayload'
    -> Text -- ^ 'dcwName'
    -> DevicesCancelWipe
devicesCancelWipe pDcwPayload_ pDcwName_ =
  DevicesCancelWipe'
    { _dcwXgafv = Nothing
    , _dcwUploadProtocol = Nothing
    , _dcwAccessToken = Nothing
    , _dcwUploadType = Nothing
    , _dcwPayload = pDcwPayload_
    , _dcwName = pDcwName_
    , _dcwCallback = Nothing
    }


-- | V1 error format.
dcwXgafv :: Lens' DevicesCancelWipe (Maybe Xgafv)
dcwXgafv = lens _dcwXgafv (\ s a -> s{_dcwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcwUploadProtocol :: Lens' DevicesCancelWipe (Maybe Text)
dcwUploadProtocol
  = lens _dcwUploadProtocol
      (\ s a -> s{_dcwUploadProtocol = a})

-- | OAuth access token.
dcwAccessToken :: Lens' DevicesCancelWipe (Maybe Text)
dcwAccessToken
  = lens _dcwAccessToken
      (\ s a -> s{_dcwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcwUploadType :: Lens' DevicesCancelWipe (Maybe Text)
dcwUploadType
  = lens _dcwUploadType
      (\ s a -> s{_dcwUploadType = a})

-- | Multipart request metadata.
dcwPayload :: Lens' DevicesCancelWipe GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
dcwPayload
  = lens _dcwPayload (\ s a -> s{_dcwPayload = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format: \`devices\/{device_id}\`, where device_id is the
-- unique ID assigned to the Device.
dcwName :: Lens' DevicesCancelWipe Text
dcwName = lens _dcwName (\ s a -> s{_dcwName = a})

-- | JSONP
dcwCallback :: Lens' DevicesCancelWipe (Maybe Text)
dcwCallback
  = lens _dcwCallback (\ s a -> s{_dcwCallback = a})

instance GoogleRequest DevicesCancelWipe where
        type Rs DevicesCancelWipe = Operation
        type Scopes DevicesCancelWipe = '[]
        requestClient DevicesCancelWipe'{..}
          = go _dcwName _dcwXgafv _dcwUploadProtocol
              _dcwAccessToken
              _dcwUploadType
              _dcwCallback
              (Just AltJSON)
              _dcwPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesCancelWipeResource)
                      mempty
