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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists\/Searches devices.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.list@.
module Network.Google.Resource.CloudIdentity.Devices.List
    (
    -- * REST Resource
      DevicesListResource

    -- * Creating a Request
    , devicesList
    , DevicesList

    -- * Request Lenses
    , dlXgafv
    , dlUploadProtocol
    , dlOrderBy
    , dlAccessToken
    , dlUploadType
    , dlCustomer
    , dlView
    , dlFilter
    , dlPageToken
    , dlPageSize
    , dlCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.list@ method which the
-- 'DevicesList' request conforms to.
type DevicesListResource =
     "v1" :>
       "devices" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "orderBy" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "customer" Text :>
                     QueryParam "view" DevicesListView :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON]
                                   GoogleAppsCloudidentityDevicesV1ListDevicesResponse

-- | Lists\/Searches devices.
--
-- /See:/ 'devicesList' smart constructor.
data DevicesList =
  DevicesList'
    { _dlXgafv :: !(Maybe Xgafv)
    , _dlUploadProtocol :: !(Maybe Text)
    , _dlOrderBy :: !(Maybe Text)
    , _dlAccessToken :: !(Maybe Text)
    , _dlUploadType :: !(Maybe Text)
    , _dlCustomer :: !(Maybe Text)
    , _dlView :: !(Maybe DevicesListView)
    , _dlFilter :: !(Maybe Text)
    , _dlPageToken :: !(Maybe Text)
    , _dlPageSize :: !(Maybe (Textual Int32))
    , _dlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlXgafv'
--
-- * 'dlUploadProtocol'
--
-- * 'dlOrderBy'
--
-- * 'dlAccessToken'
--
-- * 'dlUploadType'
--
-- * 'dlCustomer'
--
-- * 'dlView'
--
-- * 'dlFilter'
--
-- * 'dlPageToken'
--
-- * 'dlPageSize'
--
-- * 'dlCallback'
devicesList
    :: DevicesList
devicesList =
  DevicesList'
    { _dlXgafv = Nothing
    , _dlUploadProtocol = Nothing
    , _dlOrderBy = Nothing
    , _dlAccessToken = Nothing
    , _dlUploadType = Nothing
    , _dlCustomer = Nothing
    , _dlView = Nothing
    , _dlFilter = Nothing
    , _dlPageToken = Nothing
    , _dlPageSize = Nothing
    , _dlCallback = Nothing
    }


-- | V1 error format.
dlXgafv :: Lens' DevicesList (Maybe Xgafv)
dlXgafv = lens _dlXgafv (\ s a -> s{_dlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlUploadProtocol :: Lens' DevicesList (Maybe Text)
dlUploadProtocol
  = lens _dlUploadProtocol
      (\ s a -> s{_dlUploadProtocol = a})

-- | Optional. Order specification for devices in the response. Only one of
-- the following field names may be used to specify the order:
-- \`create_time\`, \`last_sync_time\`, \`model\`, \`os_version\`,
-- \`device_type\` and \`serial_number\`. \`desc\` may be specified
-- optionally at the end to specify results to be sorted in descending
-- order. Default order is ascending.
dlOrderBy :: Lens' DevicesList (Maybe Text)
dlOrderBy
  = lens _dlOrderBy (\ s a -> s{_dlOrderBy = a})

-- | OAuth access token.
dlAccessToken :: Lens' DevicesList (Maybe Text)
dlAccessToken
  = lens _dlAccessToken
      (\ s a -> s{_dlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlUploadType :: Lens' DevicesList (Maybe Text)
dlUploadType
  = lens _dlUploadType (\ s a -> s{_dlUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer in the format: \`customers\/{customer_id}\`, where customer_id
-- is the customer to whom the device belongs. If you\'re using this API
-- for your own organization, use \`customers\/my_customer\`. If you\'re
-- using this API to manage another organization, use
-- \`customers\/{customer_id}\`, where customer_id is the customer to whom
-- the device belongs.
dlCustomer :: Lens' DevicesList (Maybe Text)
dlCustomer
  = lens _dlCustomer (\ s a -> s{_dlCustomer = a})

-- | Optional. The view to use for the List request.
dlView :: Lens' DevicesList (Maybe DevicesListView)
dlView = lens _dlView (\ s a -> s{_dlView = a})

-- | Optional. Additional restrictions when fetching list of devices. For a
-- list of search fields, refer to [Mobile device search
-- fields](https:\/\/developers.google.com\/admin-sdk\/directory\/v1\/search-operators).
-- Multiple search fields are separated by the space character.
dlFilter :: Lens' DevicesList (Maybe Text)
dlFilter = lens _dlFilter (\ s a -> s{_dlFilter = a})

-- | Optional. A page token, received from a previous \`ListDevices\` call.
-- Provide this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListDevices\` must match the call that provided
-- the page token.
dlPageToken :: Lens' DevicesList (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | Optional. The maximum number of Devices to return. If unspecified, at
-- most 20 Devices will be returned. The maximum value is 100; values above
-- 100 will be coerced to 100.
dlPageSize :: Lens' DevicesList (Maybe Int32)
dlPageSize
  = lens _dlPageSize (\ s a -> s{_dlPageSize = a}) .
      mapping _Coerce

-- | JSONP
dlCallback :: Lens' DevicesList (Maybe Text)
dlCallback
  = lens _dlCallback (\ s a -> s{_dlCallback = a})

instance GoogleRequest DevicesList where
        type Rs DevicesList =
             GoogleAppsCloudidentityDevicesV1ListDevicesResponse
        type Scopes DevicesList = '[]
        requestClient DevicesList'{..}
          = go _dlXgafv _dlUploadProtocol _dlOrderBy
              _dlAccessToken
              _dlUploadType
              _dlCustomer
              _dlView
              _dlFilter
              _dlPageToken
              _dlPageSize
              _dlCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy DevicesListResource)
                      mempty
