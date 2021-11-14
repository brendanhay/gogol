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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified device.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.get@.
module Network.Google.Resource.CloudIdentity.Devices.Get
    (
    -- * REST Resource
      DevicesGetResource

    -- * Creating a Request
    , devicesGet
    , DevicesGet

    -- * Request Lenses
    , dgXgafv
    , dgUploadProtocol
    , dgAccessToken
    , dgUploadType
    , dgCustomer
    , dgName
    , dgCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.get@ method which the
-- 'DevicesGet' request conforms to.
type DevicesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "customer" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleAppsCloudidentityDevicesV1Device

-- | Retrieves the specified device.
--
-- /See:/ 'devicesGet' smart constructor.
data DevicesGet =
  DevicesGet'
    { _dgXgafv :: !(Maybe Xgafv)
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgAccessToken :: !(Maybe Text)
    , _dgUploadType :: !(Maybe Text)
    , _dgCustomer :: !(Maybe Text)
    , _dgName :: !Text
    , _dgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgUploadProtocol'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgCustomer'
--
-- * 'dgName'
--
-- * 'dgCallback'
devicesGet
    :: Text -- ^ 'dgName'
    -> DevicesGet
devicesGet pDgName_ =
  DevicesGet'
    { _dgXgafv = Nothing
    , _dgUploadProtocol = Nothing
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgCustomer = Nothing
    , _dgName = pDgName_
    , _dgCallback = Nothing
    }


-- | V1 error format.
dgXgafv :: Lens' DevicesGet (Maybe Xgafv)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DevicesGet (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | OAuth access token.
dgAccessToken :: Lens' DevicesGet (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DevicesGet (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Customer in the format: \`customers\/{customer_id}\`, where customer_id
-- is the customer to whom the device belongs. If you\'re using this API
-- for your own organization, use \`customers\/my_customer\`. If you\'re
-- using this API to manage another organization, use
-- \`customers\/{customer_id}\`, where customer_id is the customer to whom
-- the device belongs.
dgCustomer :: Lens' DevicesGet (Maybe Text)
dgCustomer
  = lens _dgCustomer (\ s a -> s{_dgCustomer = a})

-- | Required. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Device in the format: \`devices\/{device_id}\`, where device_id is the
-- unique ID assigned to the Device.
dgName :: Lens' DevicesGet Text
dgName = lens _dgName (\ s a -> s{_dgName = a})

-- | JSONP
dgCallback :: Lens' DevicesGet (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

instance GoogleRequest DevicesGet where
        type Rs DevicesGet =
             GoogleAppsCloudidentityDevicesV1Device
        type Scopes DevicesGet = '[]
        requestClient DevicesGet'{..}
          = go _dgName _dgXgafv _dgUploadProtocol
              _dgAccessToken
              _dgUploadType
              _dgCustomer
              _dgCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy DevicesGetResource)
                      mempty
