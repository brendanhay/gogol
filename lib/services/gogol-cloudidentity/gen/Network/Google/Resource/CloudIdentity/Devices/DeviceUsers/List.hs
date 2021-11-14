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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists\/Searches DeviceUsers.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.list@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.List
    (
    -- * REST Resource
      DevicesDeviceUsersListResource

    -- * Creating a Request
    , devicesDeviceUsersList
    , DevicesDeviceUsersList

    -- * Request Lenses
    , ddulParent
    , ddulXgafv
    , ddulUploadProtocol
    , ddulOrderBy
    , ddulAccessToken
    , ddulUploadType
    , ddulCustomer
    , ddulFilter
    , ddulPageToken
    , ddulPageSize
    , ddulCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.list@ method which the
-- 'DevicesDeviceUsersList' request conforms to.
type DevicesDeviceUsersListResource =
     "v1" :>
       Capture "parent" Text :>
         "deviceUsers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "customer" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON]
                                   GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse

-- | Lists\/Searches DeviceUsers.
--
-- /See:/ 'devicesDeviceUsersList' smart constructor.
data DevicesDeviceUsersList =
  DevicesDeviceUsersList'
    { _ddulParent :: !Text
    , _ddulXgafv :: !(Maybe Xgafv)
    , _ddulUploadProtocol :: !(Maybe Text)
    , _ddulOrderBy :: !(Maybe Text)
    , _ddulAccessToken :: !(Maybe Text)
    , _ddulUploadType :: !(Maybe Text)
    , _ddulCustomer :: !(Maybe Text)
    , _ddulFilter :: !(Maybe Text)
    , _ddulPageToken :: !(Maybe Text)
    , _ddulPageSize :: !(Maybe (Textual Int32))
    , _ddulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddulParent'
--
-- * 'ddulXgafv'
--
-- * 'ddulUploadProtocol'
--
-- * 'ddulOrderBy'
--
-- * 'ddulAccessToken'
--
-- * 'ddulUploadType'
--
-- * 'ddulCustomer'
--
-- * 'ddulFilter'
--
-- * 'ddulPageToken'
--
-- * 'ddulPageSize'
--
-- * 'ddulCallback'
devicesDeviceUsersList
    :: Text -- ^ 'ddulParent'
    -> DevicesDeviceUsersList
devicesDeviceUsersList pDdulParent_ =
  DevicesDeviceUsersList'
    { _ddulParent = pDdulParent_
    , _ddulXgafv = Nothing
    , _ddulUploadProtocol = Nothing
    , _ddulOrderBy = Nothing
    , _ddulAccessToken = Nothing
    , _ddulUploadType = Nothing
    , _ddulCustomer = Nothing
    , _ddulFilter = Nothing
    , _ddulPageToken = Nothing
    , _ddulPageSize = Nothing
    , _ddulCallback = Nothing
    }


-- | Required. To list all DeviceUsers, set this to \"devices\/-\". To list
-- all DeviceUsers owned by a device, set this to the resource name of the
-- device. Format: devices\/{device}
ddulParent :: Lens' DevicesDeviceUsersList Text
ddulParent
  = lens _ddulParent (\ s a -> s{_ddulParent = a})

-- | V1 error format.
ddulXgafv :: Lens' DevicesDeviceUsersList (Maybe Xgafv)
ddulXgafv
  = lens _ddulXgafv (\ s a -> s{_ddulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddulUploadProtocol :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulUploadProtocol
  = lens _ddulUploadProtocol
      (\ s a -> s{_ddulUploadProtocol = a})

-- | Optional. Order specification for devices in the response.
ddulOrderBy :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulOrderBy
  = lens _ddulOrderBy (\ s a -> s{_ddulOrderBy = a})

-- | OAuth access token.
ddulAccessToken :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulAccessToken
  = lens _ddulAccessToken
      (\ s a -> s{_ddulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddulUploadType :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulUploadType
  = lens _ddulUploadType
      (\ s a -> s{_ddulUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
ddulCustomer :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulCustomer
  = lens _ddulCustomer (\ s a -> s{_ddulCustomer = a})

-- | Optional. Additional restrictions when fetching list of devices. For a
-- list of search fields, refer to [Mobile device search
-- fields](https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/search-operators).
-- Multiple search fields are separated by the space character.
ddulFilter :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulFilter
  = lens _ddulFilter (\ s a -> s{_ddulFilter = a})

-- | Optional. A page token, received from a previous \`ListDeviceUsers\`
-- call. Provide this to retrieve the subsequent page. When paginating, all
-- other parameters provided to \`ListBooks\` must match the call that
-- provided the page token.
ddulPageToken :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulPageToken
  = lens _ddulPageToken
      (\ s a -> s{_ddulPageToken = a})

-- | Optional. The maximum number of DeviceUsers to return. If unspecified,
-- at most 5 DeviceUsers will be returned. The maximum value is 20; values
-- above 20 will be coerced to 20.
ddulPageSize :: Lens' DevicesDeviceUsersList (Maybe Int32)
ddulPageSize
  = lens _ddulPageSize (\ s a -> s{_ddulPageSize = a})
      . mapping _Coerce

-- | JSONP
ddulCallback :: Lens' DevicesDeviceUsersList (Maybe Text)
ddulCallback
  = lens _ddulCallback (\ s a -> s{_ddulCallback = a})

instance GoogleRequest DevicesDeviceUsersList where
        type Rs DevicesDeviceUsersList =
             GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
        type Scopes DevicesDeviceUsersList = '[]
        requestClient DevicesDeviceUsersList'{..}
          = go _ddulParent _ddulXgafv _ddulUploadProtocol
              _ddulOrderBy
              _ddulAccessToken
              _ddulUploadType
              _ddulCustomer
              _ddulFilter
              _ddulPageToken
              _ddulPageSize
              _ddulCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersListResource)
                      mempty
