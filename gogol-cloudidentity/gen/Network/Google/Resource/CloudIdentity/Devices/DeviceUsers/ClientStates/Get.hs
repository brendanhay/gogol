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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the client state for the device user
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.clientStates.get@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Get
    (
    -- * REST Resource
      DevicesDeviceUsersClientStatesGetResource

    -- * Creating a Request
    , devicesDeviceUsersClientStatesGet
    , DevicesDeviceUsersClientStatesGet

    -- * Request Lenses
    , dducsgXgafv
    , dducsgUploadProtocol
    , dducsgAccessToken
    , dducsgUploadType
    , dducsgCustomer
    , dducsgName
    , dducsgCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.clientStates.get@ method which the
-- 'DevicesDeviceUsersClientStatesGet' request conforms to.
type DevicesDeviceUsersClientStatesGetResource =
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
                         GoogleAppsCloudidentityDevicesV1ClientState

-- | Gets the client state for the device user
--
-- /See:/ 'devicesDeviceUsersClientStatesGet' smart constructor.
data DevicesDeviceUsersClientStatesGet =
  DevicesDeviceUsersClientStatesGet'
    { _dducsgXgafv :: !(Maybe Xgafv)
    , _dducsgUploadProtocol :: !(Maybe Text)
    , _dducsgAccessToken :: !(Maybe Text)
    , _dducsgUploadType :: !(Maybe Text)
    , _dducsgCustomer :: !(Maybe Text)
    , _dducsgName :: !Text
    , _dducsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersClientStatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dducsgXgafv'
--
-- * 'dducsgUploadProtocol'
--
-- * 'dducsgAccessToken'
--
-- * 'dducsgUploadType'
--
-- * 'dducsgCustomer'
--
-- * 'dducsgName'
--
-- * 'dducsgCallback'
devicesDeviceUsersClientStatesGet
    :: Text -- ^ 'dducsgName'
    -> DevicesDeviceUsersClientStatesGet
devicesDeviceUsersClientStatesGet pDducsgName_ =
  DevicesDeviceUsersClientStatesGet'
    { _dducsgXgafv = Nothing
    , _dducsgUploadProtocol = Nothing
    , _dducsgAccessToken = Nothing
    , _dducsgUploadType = Nothing
    , _dducsgCustomer = Nothing
    , _dducsgName = pDducsgName_
    , _dducsgCallback = Nothing
    }


-- | V1 error format.
dducsgXgafv :: Lens' DevicesDeviceUsersClientStatesGet (Maybe Xgafv)
dducsgXgafv
  = lens _dducsgXgafv (\ s a -> s{_dducsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dducsgUploadProtocol :: Lens' DevicesDeviceUsersClientStatesGet (Maybe Text)
dducsgUploadProtocol
  = lens _dducsgUploadProtocol
      (\ s a -> s{_dducsgUploadProtocol = a})

-- | OAuth access token.
dducsgAccessToken :: Lens' DevicesDeviceUsersClientStatesGet (Maybe Text)
dducsgAccessToken
  = lens _dducsgAccessToken
      (\ s a -> s{_dducsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dducsgUploadType :: Lens' DevicesDeviceUsersClientStatesGet (Maybe Text)
dducsgUploadType
  = lens _dducsgUploadType
      (\ s a -> s{_dducsgUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
dducsgCustomer :: Lens' DevicesDeviceUsersClientStatesGet (Maybe Text)
dducsgCustomer
  = lens _dducsgCustomer
      (\ s a -> s{_dducsgCustomer = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- ClientState in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\/clientStates\/{partner_id}\`,
-- where \`device_id\` is the unique ID assigned to the Device,
-- \`device_user_id\` is the unique ID assigned to the User and
-- \`partner_id\` identifies the partner storing the data. To get the
-- client state for devices belonging to your own organization, the
-- \`partnerId\` is in the format: \`customerId-*anystring*\`. Where the
-- \`customerId\` is your organization\'s customer ID and \`anystring\` is
-- any suffix. This suffix is used in setting up Custom Access Levels in
-- Context-Aware Access. You may use \`my_customer\` instead of the
-- customer ID for devices managed by your own organization. You may
-- specify \`-\` in place of the \`{device_id}\`, so the ClientState
-- resource name can be:
-- \`devices\/-\/deviceUsers\/{device_user_resource_id}\/clientStates\/{partner_id}\`.
dducsgName :: Lens' DevicesDeviceUsersClientStatesGet Text
dducsgName
  = lens _dducsgName (\ s a -> s{_dducsgName = a})

-- | JSONP
dducsgCallback :: Lens' DevicesDeviceUsersClientStatesGet (Maybe Text)
dducsgCallback
  = lens _dducsgCallback
      (\ s a -> s{_dducsgCallback = a})

instance GoogleRequest
           DevicesDeviceUsersClientStatesGet
         where
        type Rs DevicesDeviceUsersClientStatesGet =
             GoogleAppsCloudidentityDevicesV1ClientState
        type Scopes DevicesDeviceUsersClientStatesGet = '[]
        requestClient DevicesDeviceUsersClientStatesGet'{..}
          = go _dducsgName _dducsgXgafv _dducsgUploadProtocol
              _dducsgAccessToken
              _dducsgUploadType
              _dducsgCustomer
              _dducsgCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DevicesDeviceUsersClientStatesGetResource)
                      mempty
