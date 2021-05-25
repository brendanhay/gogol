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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Wipe
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Wipes the user\'s account on a device. Other data on the device that is
-- not associated with the user\'s work account is not affected. For
-- example, if a Gmail app is installed on a device that is used for
-- personal and work purposes, and the user is logged in to the Gmail app
-- with their personal account as well as their work account, wiping the
-- \"deviceUser\" by their work administrator will not affect their
-- personal account within Gmail or other apps such as Photos.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.wipe@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Wipe
    (
    -- * REST Resource
      DevicesDeviceUsersWipeResource

    -- * Creating a Request
    , devicesDeviceUsersWipe
    , DevicesDeviceUsersWipe

    -- * Request Lenses
    , dduwXgafv
    , dduwUploadProtocol
    , dduwAccessToken
    , dduwUploadType
    , dduwPayload
    , dduwName
    , dduwCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.wipe@ method which the
-- 'DevicesDeviceUsersWipe' request conforms to.
type DevicesDeviceUsersWipeResource =
     "v1" :>
       CaptureMode "name" "wipe" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
                       :> Post '[JSON] Operation

-- | Wipes the user\'s account on a device. Other data on the device that is
-- not associated with the user\'s work account is not affected. For
-- example, if a Gmail app is installed on a device that is used for
-- personal and work purposes, and the user is logged in to the Gmail app
-- with their personal account as well as their work account, wiping the
-- \"deviceUser\" by their work administrator will not affect their
-- personal account within Gmail or other apps such as Photos.
--
-- /See:/ 'devicesDeviceUsersWipe' smart constructor.
data DevicesDeviceUsersWipe =
  DevicesDeviceUsersWipe'
    { _dduwXgafv :: !(Maybe Xgafv)
    , _dduwUploadProtocol :: !(Maybe Text)
    , _dduwAccessToken :: !(Maybe Text)
    , _dduwUploadType :: !(Maybe Text)
    , _dduwPayload :: !GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    , _dduwName :: !Text
    , _dduwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersWipe' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dduwXgafv'
--
-- * 'dduwUploadProtocol'
--
-- * 'dduwAccessToken'
--
-- * 'dduwUploadType'
--
-- * 'dduwPayload'
--
-- * 'dduwName'
--
-- * 'dduwCallback'
devicesDeviceUsersWipe
    :: GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest -- ^ 'dduwPayload'
    -> Text -- ^ 'dduwName'
    -> DevicesDeviceUsersWipe
devicesDeviceUsersWipe pDduwPayload_ pDduwName_ =
  DevicesDeviceUsersWipe'
    { _dduwXgafv = Nothing
    , _dduwUploadProtocol = Nothing
    , _dduwAccessToken = Nothing
    , _dduwUploadType = Nothing
    , _dduwPayload = pDduwPayload_
    , _dduwName = pDduwName_
    , _dduwCallback = Nothing
    }


-- | V1 error format.
dduwXgafv :: Lens' DevicesDeviceUsersWipe (Maybe Xgafv)
dduwXgafv
  = lens _dduwXgafv (\ s a -> s{_dduwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dduwUploadProtocol :: Lens' DevicesDeviceUsersWipe (Maybe Text)
dduwUploadProtocol
  = lens _dduwUploadProtocol
      (\ s a -> s{_dduwUploadProtocol = a})

-- | OAuth access token.
dduwAccessToken :: Lens' DevicesDeviceUsersWipe (Maybe Text)
dduwAccessToken
  = lens _dduwAccessToken
      (\ s a -> s{_dduwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dduwUploadType :: Lens' DevicesDeviceUsersWipe (Maybe Text)
dduwUploadType
  = lens _dduwUploadType
      (\ s a -> s{_dduwUploadType = a})

-- | Multipart request metadata.
dduwPayload :: Lens' DevicesDeviceUsersWipe GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
dduwPayload
  = lens _dduwPayload (\ s a -> s{_dduwPayload = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where device_id
-- is the unique ID assigned to the Device, and device_user_id is the
-- unique ID assigned to the User.
dduwName :: Lens' DevicesDeviceUsersWipe Text
dduwName = lens _dduwName (\ s a -> s{_dduwName = a})

-- | JSONP
dduwCallback :: Lens' DevicesDeviceUsersWipe (Maybe Text)
dduwCallback
  = lens _dduwCallback (\ s a -> s{_dduwCallback = a})

instance GoogleRequest DevicesDeviceUsersWipe where
        type Rs DevicesDeviceUsersWipe = Operation
        type Scopes DevicesDeviceUsersWipe = '[]
        requestClient DevicesDeviceUsersWipe'{..}
          = go _dduwName _dduwXgafv _dduwUploadProtocol
              _dduwAccessToken
              _dduwUploadType
              _dduwCallback
              (Just AltJSON)
              _dduwPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersWipeResource)
                      mempty
