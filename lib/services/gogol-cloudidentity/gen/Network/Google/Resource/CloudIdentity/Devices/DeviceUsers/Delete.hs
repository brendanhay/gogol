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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified DeviceUser. This also revokes the user\'s access
-- to device data.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.delete@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Delete
    (
    -- * REST Resource
      DevicesDeviceUsersDeleteResource

    -- * Creating a Request
    , devicesDeviceUsersDelete
    , DevicesDeviceUsersDelete

    -- * Request Lenses
    , ddudXgafv
    , ddudUploadProtocol
    , ddudAccessToken
    , ddudUploadType
    , ddudCustomer
    , ddudName
    , ddudCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.delete@ method which the
-- 'DevicesDeviceUsersDelete' request conforms to.
type DevicesDeviceUsersDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "customer" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified DeviceUser. This also revokes the user\'s access
-- to device data.
--
-- /See:/ 'devicesDeviceUsersDelete' smart constructor.
data DevicesDeviceUsersDelete =
  DevicesDeviceUsersDelete'
    { _ddudXgafv :: !(Maybe Xgafv)
    , _ddudUploadProtocol :: !(Maybe Text)
    , _ddudAccessToken :: !(Maybe Text)
    , _ddudUploadType :: !(Maybe Text)
    , _ddudCustomer :: !(Maybe Text)
    , _ddudName :: !Text
    , _ddudCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddudXgafv'
--
-- * 'ddudUploadProtocol'
--
-- * 'ddudAccessToken'
--
-- * 'ddudUploadType'
--
-- * 'ddudCustomer'
--
-- * 'ddudName'
--
-- * 'ddudCallback'
devicesDeviceUsersDelete
    :: Text -- ^ 'ddudName'
    -> DevicesDeviceUsersDelete
devicesDeviceUsersDelete pDdudName_ =
  DevicesDeviceUsersDelete'
    { _ddudXgafv = Nothing
    , _ddudUploadProtocol = Nothing
    , _ddudAccessToken = Nothing
    , _ddudUploadType = Nothing
    , _ddudCustomer = Nothing
    , _ddudName = pDdudName_
    , _ddudCallback = Nothing
    }


-- | V1 error format.
ddudXgafv :: Lens' DevicesDeviceUsersDelete (Maybe Xgafv)
ddudXgafv
  = lens _ddudXgafv (\ s a -> s{_ddudXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddudUploadProtocol :: Lens' DevicesDeviceUsersDelete (Maybe Text)
ddudUploadProtocol
  = lens _ddudUploadProtocol
      (\ s a -> s{_ddudUploadProtocol = a})

-- | OAuth access token.
ddudAccessToken :: Lens' DevicesDeviceUsersDelete (Maybe Text)
ddudAccessToken
  = lens _ddudAccessToken
      (\ s a -> s{_ddudAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddudUploadType :: Lens' DevicesDeviceUsersDelete (Maybe Text)
ddudUploadType
  = lens _ddudUploadType
      (\ s a -> s{_ddudUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
ddudCustomer :: Lens' DevicesDeviceUsersDelete (Maybe Text)
ddudCustomer
  = lens _ddudCustomer (\ s a -> s{_ddudCustomer = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\`, where device_id
-- is the unique ID assigned to the Device, and device_user_id is the
-- unique ID assigned to the User.
ddudName :: Lens' DevicesDeviceUsersDelete Text
ddudName = lens _ddudName (\ s a -> s{_ddudName = a})

-- | JSONP
ddudCallback :: Lens' DevicesDeviceUsersDelete (Maybe Text)
ddudCallback
  = lens _ddudCallback (\ s a -> s{_ddudCallback = a})

instance GoogleRequest DevicesDeviceUsersDelete where
        type Rs DevicesDeviceUsersDelete = Operation
        type Scopes DevicesDeviceUsersDelete = '[]
        requestClient DevicesDeviceUsersDelete'{..}
          = go _ddudName _ddudXgafv _ddudUploadProtocol
              _ddudAccessToken
              _ddudUploadType
              _ddudCustomer
              _ddudCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersDeleteResource)
                      mempty
