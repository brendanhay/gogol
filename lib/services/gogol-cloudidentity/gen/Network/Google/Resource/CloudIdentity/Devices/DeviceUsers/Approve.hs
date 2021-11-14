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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Approve
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Approves device to access user data.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.approve@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Approve
    (
    -- * REST Resource
      DevicesDeviceUsersApproveResource

    -- * Creating a Request
    , devicesDeviceUsersApprove
    , DevicesDeviceUsersApprove

    -- * Request Lenses
    , dduaXgafv
    , dduaUploadProtocol
    , dduaAccessToken
    , dduaUploadType
    , dduaPayload
    , dduaName
    , dduaCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.approve@ method which the
-- 'DevicesDeviceUsersApprove' request conforms to.
type DevicesDeviceUsersApproveResource =
     "v1" :>
       CaptureMode "name" "approve" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
                       :> Post '[JSON] Operation

-- | Approves device to access user data.
--
-- /See:/ 'devicesDeviceUsersApprove' smart constructor.
data DevicesDeviceUsersApprove =
  DevicesDeviceUsersApprove'
    { _dduaXgafv :: !(Maybe Xgafv)
    , _dduaUploadProtocol :: !(Maybe Text)
    , _dduaAccessToken :: !(Maybe Text)
    , _dduaUploadType :: !(Maybe Text)
    , _dduaPayload :: !GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    , _dduaName :: !Text
    , _dduaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dduaXgafv'
--
-- * 'dduaUploadProtocol'
--
-- * 'dduaAccessToken'
--
-- * 'dduaUploadType'
--
-- * 'dduaPayload'
--
-- * 'dduaName'
--
-- * 'dduaCallback'
devicesDeviceUsersApprove
    :: GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest -- ^ 'dduaPayload'
    -> Text -- ^ 'dduaName'
    -> DevicesDeviceUsersApprove
devicesDeviceUsersApprove pDduaPayload_ pDduaName_ =
  DevicesDeviceUsersApprove'
    { _dduaXgafv = Nothing
    , _dduaUploadProtocol = Nothing
    , _dduaAccessToken = Nothing
    , _dduaUploadType = Nothing
    , _dduaPayload = pDduaPayload_
    , _dduaName = pDduaName_
    , _dduaCallback = Nothing
    }


-- | V1 error format.
dduaXgafv :: Lens' DevicesDeviceUsersApprove (Maybe Xgafv)
dduaXgafv
  = lens _dduaXgafv (\ s a -> s{_dduaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dduaUploadProtocol :: Lens' DevicesDeviceUsersApprove (Maybe Text)
dduaUploadProtocol
  = lens _dduaUploadProtocol
      (\ s a -> s{_dduaUploadProtocol = a})

-- | OAuth access token.
dduaAccessToken :: Lens' DevicesDeviceUsersApprove (Maybe Text)
dduaAccessToken
  = lens _dduaAccessToken
      (\ s a -> s{_dduaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dduaUploadType :: Lens' DevicesDeviceUsersApprove (Maybe Text)
dduaUploadType
  = lens _dduaUploadType
      (\ s a -> s{_dduaUploadType = a})

-- | Multipart request metadata.
dduaPayload :: Lens' DevicesDeviceUsersApprove GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
dduaPayload
  = lens _dduaPayload (\ s a -> s{_dduaPayload = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where device_id
-- is the unique ID assigned to the Device, and device_user_id is the
-- unique ID assigned to the User.
dduaName :: Lens' DevicesDeviceUsersApprove Text
dduaName = lens _dduaName (\ s a -> s{_dduaName = a})

-- | JSONP
dduaCallback :: Lens' DevicesDeviceUsersApprove (Maybe Text)
dduaCallback
  = lens _dduaCallback (\ s a -> s{_dduaCallback = a})

instance GoogleRequest DevicesDeviceUsersApprove
         where
        type Rs DevicesDeviceUsersApprove = Operation
        type Scopes DevicesDeviceUsersApprove = '[]
        requestClient DevicesDeviceUsersApprove'{..}
          = go _dduaName _dduaXgafv _dduaUploadProtocol
              _dduaAccessToken
              _dduaUploadType
              _dduaCallback
              (Just AltJSON)
              _dduaPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersApproveResource)
                      mempty
