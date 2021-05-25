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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.CancelWipe
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an unfinished user account wipe. This operation can be used to
-- cancel device wipe in the gap between the wipe operation returning
-- success and the device being wiped.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.cancelWipe@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.CancelWipe
    (
    -- * REST Resource
      DevicesDeviceUsersCancelWipeResource

    -- * Creating a Request
    , devicesDeviceUsersCancelWipe
    , DevicesDeviceUsersCancelWipe

    -- * Request Lenses
    , dducwXgafv
    , dducwUploadProtocol
    , dducwAccessToken
    , dducwUploadType
    , dducwPayload
    , dducwName
    , dducwCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.cancelWipe@ method which the
-- 'DevicesDeviceUsersCancelWipe' request conforms to.
type DevicesDeviceUsersCancelWipeResource =
     "v1" :>
       CaptureMode "name" "cancelWipe" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
                       :> Post '[JSON] Operation

-- | Cancels an unfinished user account wipe. This operation can be used to
-- cancel device wipe in the gap between the wipe operation returning
-- success and the device being wiped.
--
-- /See:/ 'devicesDeviceUsersCancelWipe' smart constructor.
data DevicesDeviceUsersCancelWipe =
  DevicesDeviceUsersCancelWipe'
    { _dducwXgafv :: !(Maybe Xgafv)
    , _dducwUploadProtocol :: !(Maybe Text)
    , _dducwAccessToken :: !(Maybe Text)
    , _dducwUploadType :: !(Maybe Text)
    , _dducwPayload :: !GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    , _dducwName :: !Text
    , _dducwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersCancelWipe' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dducwXgafv'
--
-- * 'dducwUploadProtocol'
--
-- * 'dducwAccessToken'
--
-- * 'dducwUploadType'
--
-- * 'dducwPayload'
--
-- * 'dducwName'
--
-- * 'dducwCallback'
devicesDeviceUsersCancelWipe
    :: GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest -- ^ 'dducwPayload'
    -> Text -- ^ 'dducwName'
    -> DevicesDeviceUsersCancelWipe
devicesDeviceUsersCancelWipe pDducwPayload_ pDducwName_ =
  DevicesDeviceUsersCancelWipe'
    { _dducwXgafv = Nothing
    , _dducwUploadProtocol = Nothing
    , _dducwAccessToken = Nothing
    , _dducwUploadType = Nothing
    , _dducwPayload = pDducwPayload_
    , _dducwName = pDducwName_
    , _dducwCallback = Nothing
    }


-- | V1 error format.
dducwXgafv :: Lens' DevicesDeviceUsersCancelWipe (Maybe Xgafv)
dducwXgafv
  = lens _dducwXgafv (\ s a -> s{_dducwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dducwUploadProtocol :: Lens' DevicesDeviceUsersCancelWipe (Maybe Text)
dducwUploadProtocol
  = lens _dducwUploadProtocol
      (\ s a -> s{_dducwUploadProtocol = a})

-- | OAuth access token.
dducwAccessToken :: Lens' DevicesDeviceUsersCancelWipe (Maybe Text)
dducwAccessToken
  = lens _dducwAccessToken
      (\ s a -> s{_dducwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dducwUploadType :: Lens' DevicesDeviceUsersCancelWipe (Maybe Text)
dducwUploadType
  = lens _dducwUploadType
      (\ s a -> s{_dducwUploadType = a})

-- | Multipart request metadata.
dducwPayload :: Lens' DevicesDeviceUsersCancelWipe GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
dducwPayload
  = lens _dducwPayload (\ s a -> s{_dducwPayload = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where device_id
-- is the unique ID assigned to the Device, and device_user_id is the
-- unique ID assigned to the User.
dducwName :: Lens' DevicesDeviceUsersCancelWipe Text
dducwName
  = lens _dducwName (\ s a -> s{_dducwName = a})

-- | JSONP
dducwCallback :: Lens' DevicesDeviceUsersCancelWipe (Maybe Text)
dducwCallback
  = lens _dducwCallback
      (\ s a -> s{_dducwCallback = a})

instance GoogleRequest DevicesDeviceUsersCancelWipe
         where
        type Rs DevicesDeviceUsersCancelWipe = Operation
        type Scopes DevicesDeviceUsersCancelWipe = '[]
        requestClient DevicesDeviceUsersCancelWipe'{..}
          = go _dducwName _dducwXgafv _dducwUploadProtocol
              _dducwAccessToken
              _dducwUploadType
              _dducwCallback
              (Just AltJSON)
              _dducwPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersCancelWipeResource)
                      mempty
