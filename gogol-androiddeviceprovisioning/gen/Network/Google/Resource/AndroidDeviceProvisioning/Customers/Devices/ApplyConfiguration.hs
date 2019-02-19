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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.ApplyConfiguration
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a Configuration to the device to register the device for
-- zero-touch enrollment. After applying a configuration to a device, the
-- device automatically provisions itself on first boot, or next factory
-- reset.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.applyConfiguration@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.ApplyConfiguration
    (
    -- * REST Resource
      CustomersDevicesApplyConfigurationResource

    -- * Creating a Request
    , customersDevicesApplyConfiguration
    , CustomersDevicesApplyConfiguration

    -- * Request Lenses
    , cdacParent
    , cdacXgafv
    , cdacUploadProtocol
    , cdacAccessToken
    , cdacUploadType
    , cdacPayload
    , cdacCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.devices.applyConfiguration@ method which the
-- 'CustomersDevicesApplyConfiguration' request conforms to.
type CustomersDevicesApplyConfigurationResource =
     "v1" :>
       Capture "parent" Text :>
         "devices:applyConfiguration" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CustomerApplyConfigurationRequest :>
                         Post '[JSON] Empty

-- | Applies a Configuration to the device to register the device for
-- zero-touch enrollment. After applying a configuration to a device, the
-- device automatically provisions itself on first boot, or next factory
-- reset.
--
-- /See:/ 'customersDevicesApplyConfiguration' smart constructor.
data CustomersDevicesApplyConfiguration =
  CustomersDevicesApplyConfiguration'
    { _cdacParent         :: !Text
    , _cdacXgafv          :: !(Maybe Xgafv)
    , _cdacUploadProtocol :: !(Maybe Text)
    , _cdacAccessToken    :: !(Maybe Text)
    , _cdacUploadType     :: !(Maybe Text)
    , _cdacPayload        :: !CustomerApplyConfigurationRequest
    , _cdacCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomersDevicesApplyConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdacParent'
--
-- * 'cdacXgafv'
--
-- * 'cdacUploadProtocol'
--
-- * 'cdacAccessToken'
--
-- * 'cdacUploadType'
--
-- * 'cdacPayload'
--
-- * 'cdacCallback'
customersDevicesApplyConfiguration
    :: Text -- ^ 'cdacParent'
    -> CustomerApplyConfigurationRequest -- ^ 'cdacPayload'
    -> CustomersDevicesApplyConfiguration
customersDevicesApplyConfiguration pCdacParent_ pCdacPayload_ =
  CustomersDevicesApplyConfiguration'
    { _cdacParent = pCdacParent_
    , _cdacXgafv = Nothing
    , _cdacUploadProtocol = Nothing
    , _cdacAccessToken = Nothing
    , _cdacUploadType = Nothing
    , _cdacPayload = pCdacPayload_
    , _cdacCallback = Nothing
    }

-- | Required. The customer managing the device. An API resource name in the
-- format \`customers\/[CUSTOMER_ID]\`.
cdacParent :: Lens' CustomersDevicesApplyConfiguration Text
cdacParent
  = lens _cdacParent (\ s a -> s{_cdacParent = a})

-- | V1 error format.
cdacXgafv :: Lens' CustomersDevicesApplyConfiguration (Maybe Xgafv)
cdacXgafv
  = lens _cdacXgafv (\ s a -> s{_cdacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdacUploadProtocol :: Lens' CustomersDevicesApplyConfiguration (Maybe Text)
cdacUploadProtocol
  = lens _cdacUploadProtocol
      (\ s a -> s{_cdacUploadProtocol = a})

-- | OAuth access token.
cdacAccessToken :: Lens' CustomersDevicesApplyConfiguration (Maybe Text)
cdacAccessToken
  = lens _cdacAccessToken
      (\ s a -> s{_cdacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdacUploadType :: Lens' CustomersDevicesApplyConfiguration (Maybe Text)
cdacUploadType
  = lens _cdacUploadType
      (\ s a -> s{_cdacUploadType = a})

-- | Multipart request metadata.
cdacPayload :: Lens' CustomersDevicesApplyConfiguration CustomerApplyConfigurationRequest
cdacPayload
  = lens _cdacPayload (\ s a -> s{_cdacPayload = a})

-- | JSONP
cdacCallback :: Lens' CustomersDevicesApplyConfiguration (Maybe Text)
cdacCallback
  = lens _cdacCallback (\ s a -> s{_cdacCallback = a})

instance GoogleRequest
           CustomersDevicesApplyConfiguration
         where
        type Rs CustomersDevicesApplyConfiguration = Empty
        type Scopes CustomersDevicesApplyConfiguration = '[]
        requestClient CustomersDevicesApplyConfiguration'{..}
          = go _cdacParent _cdacXgafv _cdacUploadProtocol
              _cdacAccessToken
              _cdacUploadType
              _cdacCallback
              (Just AltJSON)
              _cdacPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomersDevicesApplyConfigurationResource)
                      mempty
