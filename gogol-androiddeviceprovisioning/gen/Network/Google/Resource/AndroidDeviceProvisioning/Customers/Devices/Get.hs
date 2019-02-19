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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a device.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.get@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Get
    (
    -- * REST Resource
      CustomersDevicesGetResource

    -- * Creating a Request
    , customersDevicesGet
    , CustomersDevicesGet

    -- * Request Lenses
    , cdgXgafv
    , cdgUploadProtocol
    , cdgAccessToken
    , cdgUploadType
    , cdgName
    , cdgCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.devices.get@ method which the
-- 'CustomersDevicesGet' request conforms to.
type CustomersDevicesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Device

-- | Gets the details of a device.
--
-- /See:/ 'customersDevicesGet' smart constructor.
data CustomersDevicesGet =
  CustomersDevicesGet'
    { _cdgXgafv          :: !(Maybe Xgafv)
    , _cdgUploadProtocol :: !(Maybe Text)
    , _cdgAccessToken    :: !(Maybe Text)
    , _cdgUploadType     :: !(Maybe Text)
    , _cdgName           :: !Text
    , _cdgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomersDevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdgXgafv'
--
-- * 'cdgUploadProtocol'
--
-- * 'cdgAccessToken'
--
-- * 'cdgUploadType'
--
-- * 'cdgName'
--
-- * 'cdgCallback'
customersDevicesGet
    :: Text -- ^ 'cdgName'
    -> CustomersDevicesGet
customersDevicesGet pCdgName_ =
  CustomersDevicesGet'
    { _cdgXgafv = Nothing
    , _cdgUploadProtocol = Nothing
    , _cdgAccessToken = Nothing
    , _cdgUploadType = Nothing
    , _cdgName = pCdgName_
    , _cdgCallback = Nothing
    }

-- | V1 error format.
cdgXgafv :: Lens' CustomersDevicesGet (Maybe Xgafv)
cdgXgafv = lens _cdgXgafv (\ s a -> s{_cdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdgUploadProtocol :: Lens' CustomersDevicesGet (Maybe Text)
cdgUploadProtocol
  = lens _cdgUploadProtocol
      (\ s a -> s{_cdgUploadProtocol = a})

-- | OAuth access token.
cdgAccessToken :: Lens' CustomersDevicesGet (Maybe Text)
cdgAccessToken
  = lens _cdgAccessToken
      (\ s a -> s{_cdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdgUploadType :: Lens' CustomersDevicesGet (Maybe Text)
cdgUploadType
  = lens _cdgUploadType
      (\ s a -> s{_cdgUploadType = a})

-- | Required. The device to get. An API resource name in the format
-- \`customers\/[CUSTOMER_ID]\/devices\/[DEVICE_ID]\`.
cdgName :: Lens' CustomersDevicesGet Text
cdgName = lens _cdgName (\ s a -> s{_cdgName = a})

-- | JSONP
cdgCallback :: Lens' CustomersDevicesGet (Maybe Text)
cdgCallback
  = lens _cdgCallback (\ s a -> s{_cdgCallback = a})

instance GoogleRequest CustomersDevicesGet where
        type Rs CustomersDevicesGet = Device
        type Scopes CustomersDevicesGet = '[]
        requestClient CustomersDevicesGet'{..}
          = go _cdgName _cdgXgafv _cdgUploadProtocol
              _cdgAccessToken
              _cdgUploadType
              _cdgCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersDevicesGetResource)
                      mempty
