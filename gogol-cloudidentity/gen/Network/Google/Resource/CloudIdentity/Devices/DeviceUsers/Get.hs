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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified DeviceUser
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.get@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Get
    (
    -- * REST Resource
      DevicesDeviceUsersGetResource

    -- * Creating a Request
    , devicesDeviceUsersGet
    , DevicesDeviceUsersGet

    -- * Request Lenses
    , ddugXgafv
    , ddugUploadProtocol
    , ddugAccessToken
    , ddugUploadType
    , ddugCustomer
    , ddugName
    , ddugCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.get@ method which the
-- 'DevicesDeviceUsersGet' request conforms to.
type DevicesDeviceUsersGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "customer" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON]
                         GoogleAppsCloudidentityDevicesV1DeviceUser

-- | Retrieves the specified DeviceUser
--
-- /See:/ 'devicesDeviceUsersGet' smart constructor.
data DevicesDeviceUsersGet =
  DevicesDeviceUsersGet'
    { _ddugXgafv :: !(Maybe Xgafv)
    , _ddugUploadProtocol :: !(Maybe Text)
    , _ddugAccessToken :: !(Maybe Text)
    , _ddugUploadType :: !(Maybe Text)
    , _ddugCustomer :: !(Maybe Text)
    , _ddugName :: !Text
    , _ddugCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddugXgafv'
--
-- * 'ddugUploadProtocol'
--
-- * 'ddugAccessToken'
--
-- * 'ddugUploadType'
--
-- * 'ddugCustomer'
--
-- * 'ddugName'
--
-- * 'ddugCallback'
devicesDeviceUsersGet
    :: Text -- ^ 'ddugName'
    -> DevicesDeviceUsersGet
devicesDeviceUsersGet pDdugName_ =
  DevicesDeviceUsersGet'
    { _ddugXgafv = Nothing
    , _ddugUploadProtocol = Nothing
    , _ddugAccessToken = Nothing
    , _ddugUploadType = Nothing
    , _ddugCustomer = Nothing
    , _ddugName = pDdugName_
    , _ddugCallback = Nothing
    }


-- | V1 error format.
ddugXgafv :: Lens' DevicesDeviceUsersGet (Maybe Xgafv)
ddugXgafv
  = lens _ddugXgafv (\ s a -> s{_ddugXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddugUploadProtocol :: Lens' DevicesDeviceUsersGet (Maybe Text)
ddugUploadProtocol
  = lens _ddugUploadProtocol
      (\ s a -> s{_ddugUploadProtocol = a})

-- | OAuth access token.
ddugAccessToken :: Lens' DevicesDeviceUsersGet (Maybe Text)
ddugAccessToken
  = lens _ddugAccessToken
      (\ s a -> s{_ddugAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddugUploadType :: Lens' DevicesDeviceUsersGet (Maybe Text)
ddugUploadType
  = lens _ddugUploadType
      (\ s a -> s{_ddugUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
ddugCustomer :: Lens' DevicesDeviceUsersGet (Maybe Text)
ddugCustomer
  = lens _ddugCustomer (\ s a -> s{_ddugCustomer = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where device_id
-- is the unique ID assigned to the Device, and device_user_id is the
-- unique ID assigned to the User.
ddugName :: Lens' DevicesDeviceUsersGet Text
ddugName = lens _ddugName (\ s a -> s{_ddugName = a})

-- | JSONP
ddugCallback :: Lens' DevicesDeviceUsersGet (Maybe Text)
ddugCallback
  = lens _ddugCallback (\ s a -> s{_ddugCallback = a})

instance GoogleRequest DevicesDeviceUsersGet where
        type Rs DevicesDeviceUsersGet =
             GoogleAppsCloudidentityDevicesV1DeviceUser
        type Scopes DevicesDeviceUsersGet = '[]
        requestClient DevicesDeviceUsersGet'{..}
          = go _ddugName _ddugXgafv _ddugUploadProtocol
              _ddugAccessToken
              _ddugUploadType
              _ddugCustomer
              _ddugCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersGetResource)
                      mempty
