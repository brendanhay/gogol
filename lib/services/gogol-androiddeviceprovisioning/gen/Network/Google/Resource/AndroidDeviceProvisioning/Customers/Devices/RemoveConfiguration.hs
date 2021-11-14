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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.RemoveConfiguration
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a configuration from device.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.removeConfiguration@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.RemoveConfiguration
    (
    -- * REST Resource
      CustomersDevicesRemoveConfigurationResource

    -- * Creating a Request
    , customersDevicesRemoveConfiguration
    , CustomersDevicesRemoveConfiguration

    -- * Request Lenses
    , cdrcParent
    , cdrcXgafv
    , cdrcUploadProtocol
    , cdrcAccessToken
    , cdrcUploadType
    , cdrcPayload
    , cdrcCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.devices.removeConfiguration@ method which the
-- 'CustomersDevicesRemoveConfiguration' request conforms to.
type CustomersDevicesRemoveConfigurationResource =
     "v1" :>
       Capture "parent" Text :>
         "devices:removeConfiguration" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CustomerRemoveConfigurationRequest :>
                         Post '[JSON] Empty

-- | Removes a configuration from device.
--
-- /See:/ 'customersDevicesRemoveConfiguration' smart constructor.
data CustomersDevicesRemoveConfiguration =
  CustomersDevicesRemoveConfiguration'
    { _cdrcParent :: !Text
    , _cdrcXgafv :: !(Maybe Xgafv)
    , _cdrcUploadProtocol :: !(Maybe Text)
    , _cdrcAccessToken :: !(Maybe Text)
    , _cdrcUploadType :: !(Maybe Text)
    , _cdrcPayload :: !CustomerRemoveConfigurationRequest
    , _cdrcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersDevicesRemoveConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrcParent'
--
-- * 'cdrcXgafv'
--
-- * 'cdrcUploadProtocol'
--
-- * 'cdrcAccessToken'
--
-- * 'cdrcUploadType'
--
-- * 'cdrcPayload'
--
-- * 'cdrcCallback'
customersDevicesRemoveConfiguration
    :: Text -- ^ 'cdrcParent'
    -> CustomerRemoveConfigurationRequest -- ^ 'cdrcPayload'
    -> CustomersDevicesRemoveConfiguration
customersDevicesRemoveConfiguration pCdrcParent_ pCdrcPayload_ =
  CustomersDevicesRemoveConfiguration'
    { _cdrcParent = pCdrcParent_
    , _cdrcXgafv = Nothing
    , _cdrcUploadProtocol = Nothing
    , _cdrcAccessToken = Nothing
    , _cdrcUploadType = Nothing
    , _cdrcPayload = pCdrcPayload_
    , _cdrcCallback = Nothing
    }


-- | Required. The customer managing the device in the format
-- \`customers\/[CUSTOMER_ID]\`.
cdrcParent :: Lens' CustomersDevicesRemoveConfiguration Text
cdrcParent
  = lens _cdrcParent (\ s a -> s{_cdrcParent = a})

-- | V1 error format.
cdrcXgafv :: Lens' CustomersDevicesRemoveConfiguration (Maybe Xgafv)
cdrcXgafv
  = lens _cdrcXgafv (\ s a -> s{_cdrcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdrcUploadProtocol :: Lens' CustomersDevicesRemoveConfiguration (Maybe Text)
cdrcUploadProtocol
  = lens _cdrcUploadProtocol
      (\ s a -> s{_cdrcUploadProtocol = a})

-- | OAuth access token.
cdrcAccessToken :: Lens' CustomersDevicesRemoveConfiguration (Maybe Text)
cdrcAccessToken
  = lens _cdrcAccessToken
      (\ s a -> s{_cdrcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdrcUploadType :: Lens' CustomersDevicesRemoveConfiguration (Maybe Text)
cdrcUploadType
  = lens _cdrcUploadType
      (\ s a -> s{_cdrcUploadType = a})

-- | Multipart request metadata.
cdrcPayload :: Lens' CustomersDevicesRemoveConfiguration CustomerRemoveConfigurationRequest
cdrcPayload
  = lens _cdrcPayload (\ s a -> s{_cdrcPayload = a})

-- | JSONP
cdrcCallback :: Lens' CustomersDevicesRemoveConfiguration (Maybe Text)
cdrcCallback
  = lens _cdrcCallback (\ s a -> s{_cdrcCallback = a})

instance GoogleRequest
           CustomersDevicesRemoveConfiguration
         where
        type Rs CustomersDevicesRemoveConfiguration = Empty
        type Scopes CustomersDevicesRemoveConfiguration = '[]
        requestClient
          CustomersDevicesRemoveConfiguration'{..}
          = go _cdrcParent _cdrcXgafv _cdrcUploadProtocol
              _cdrcAccessToken
              _cdrcUploadType
              _cdrcCallback
              (Just AltJSON)
              _cdrcPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomersDevicesRemoveConfigurationResource)
                      mempty
