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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Block
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Blocks device from accessing user data
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.block@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Block
    (
    -- * REST Resource
      DevicesDeviceUsersBlockResource

    -- * Creating a Request
    , devicesDeviceUsersBlock
    , DevicesDeviceUsersBlock

    -- * Request Lenses
    , ddubXgafv
    , ddubUploadProtocol
    , ddubAccessToken
    , ddubUploadType
    , ddubPayload
    , ddubName
    , ddubCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.block@ method which the
-- 'DevicesDeviceUsersBlock' request conforms to.
type DevicesDeviceUsersBlockResource =
     "v1" :>
       CaptureMode "name" "block" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
                       :> Post '[JSON] Operation

-- | Blocks device from accessing user data
--
-- /See:/ 'devicesDeviceUsersBlock' smart constructor.
data DevicesDeviceUsersBlock =
  DevicesDeviceUsersBlock'
    { _ddubXgafv :: !(Maybe Xgafv)
    , _ddubUploadProtocol :: !(Maybe Text)
    , _ddubAccessToken :: !(Maybe Text)
    , _ddubUploadType :: !(Maybe Text)
    , _ddubPayload :: !GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    , _ddubName :: !Text
    , _ddubCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersBlock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddubXgafv'
--
-- * 'ddubUploadProtocol'
--
-- * 'ddubAccessToken'
--
-- * 'ddubUploadType'
--
-- * 'ddubPayload'
--
-- * 'ddubName'
--
-- * 'ddubCallback'
devicesDeviceUsersBlock
    :: GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest -- ^ 'ddubPayload'
    -> Text -- ^ 'ddubName'
    -> DevicesDeviceUsersBlock
devicesDeviceUsersBlock pDdubPayload_ pDdubName_ =
  DevicesDeviceUsersBlock'
    { _ddubXgafv = Nothing
    , _ddubUploadProtocol = Nothing
    , _ddubAccessToken = Nothing
    , _ddubUploadType = Nothing
    , _ddubPayload = pDdubPayload_
    , _ddubName = pDdubName_
    , _ddubCallback = Nothing
    }


-- | V1 error format.
ddubXgafv :: Lens' DevicesDeviceUsersBlock (Maybe Xgafv)
ddubXgafv
  = lens _ddubXgafv (\ s a -> s{_ddubXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddubUploadProtocol :: Lens' DevicesDeviceUsersBlock (Maybe Text)
ddubUploadProtocol
  = lens _ddubUploadProtocol
      (\ s a -> s{_ddubUploadProtocol = a})

-- | OAuth access token.
ddubAccessToken :: Lens' DevicesDeviceUsersBlock (Maybe Text)
ddubAccessToken
  = lens _ddubAccessToken
      (\ s a -> s{_ddubAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddubUploadType :: Lens' DevicesDeviceUsersBlock (Maybe Text)
ddubUploadType
  = lens _ddubUploadType
      (\ s a -> s{_ddubUploadType = a})

-- | Multipart request metadata.
ddubPayload :: Lens' DevicesDeviceUsersBlock GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
ddubPayload
  = lens _ddubPayload (\ s a -> s{_ddubPayload = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where device_id
-- is the unique ID assigned to the Device, and device_user_id is the
-- unique ID assigned to the User.
ddubName :: Lens' DevicesDeviceUsersBlock Text
ddubName = lens _ddubName (\ s a -> s{_ddubName = a})

-- | JSONP
ddubCallback :: Lens' DevicesDeviceUsersBlock (Maybe Text)
ddubCallback
  = lens _ddubCallback (\ s a -> s{_ddubCallback = a})

instance GoogleRequest DevicesDeviceUsersBlock where
        type Rs DevicesDeviceUsersBlock = Operation
        type Scopes DevicesDeviceUsersBlock = '[]
        requestClient DevicesDeviceUsersBlock'{..}
          = go _ddubName _ddubXgafv _ddubUploadProtocol
              _ddubAccessToken
              _ddubUploadType
              _ddubCallback
              (Just AltJSON)
              _ddubPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersBlockResource)
                      mempty
