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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Unclaim
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unclaims a device from a customer and removes it from zero-touch
-- enrollment. After removing a device, a customer must contact their
-- reseller to register the device into zero-touch enrollment again.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.unclaim@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Devices.Unclaim
    (
    -- * REST Resource
      CustomersDevicesUnclaimResource

    -- * Creating a Request
    , customersDevicesUnclaim
    , CustomersDevicesUnclaim

    -- * Request Lenses
    , cduParent
    , cduXgafv
    , cduUploadProtocol
    , cduAccessToken
    , cduUploadType
    , cduPayload
    , cduCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.devices.unclaim@ method which the
-- 'CustomersDevicesUnclaim' request conforms to.
type CustomersDevicesUnclaimResource =
     "v1" :>
       Capture "parent" Text :>
         "devices:unclaim" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CustomerUnclaimDeviceRequest :>
                         Post '[JSON] Empty

-- | Unclaims a device from a customer and removes it from zero-touch
-- enrollment. After removing a device, a customer must contact their
-- reseller to register the device into zero-touch enrollment again.
--
-- /See:/ 'customersDevicesUnclaim' smart constructor.
data CustomersDevicesUnclaim =
  CustomersDevicesUnclaim'
    { _cduParent         :: !Text
    , _cduXgafv          :: !(Maybe Xgafv)
    , _cduUploadProtocol :: !(Maybe Text)
    , _cduAccessToken    :: !(Maybe Text)
    , _cduUploadType     :: !(Maybe Text)
    , _cduPayload        :: !CustomerUnclaimDeviceRequest
    , _cduCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersDevicesUnclaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cduParent'
--
-- * 'cduXgafv'
--
-- * 'cduUploadProtocol'
--
-- * 'cduAccessToken'
--
-- * 'cduUploadType'
--
-- * 'cduPayload'
--
-- * 'cduCallback'
customersDevicesUnclaim
    :: Text -- ^ 'cduParent'
    -> CustomerUnclaimDeviceRequest -- ^ 'cduPayload'
    -> CustomersDevicesUnclaim
customersDevicesUnclaim pCduParent_ pCduPayload_ =
  CustomersDevicesUnclaim'
    { _cduParent = pCduParent_
    , _cduXgafv = Nothing
    , _cduUploadProtocol = Nothing
    , _cduAccessToken = Nothing
    , _cduUploadType = Nothing
    , _cduPayload = pCduPayload_
    , _cduCallback = Nothing
    }


-- | Required. The customer managing the device. An API resource name in the
-- format \`customers\/[CUSTOMER_ID]\`.
cduParent :: Lens' CustomersDevicesUnclaim Text
cduParent
  = lens _cduParent (\ s a -> s{_cduParent = a})

-- | V1 error format.
cduXgafv :: Lens' CustomersDevicesUnclaim (Maybe Xgafv)
cduXgafv = lens _cduXgafv (\ s a -> s{_cduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cduUploadProtocol :: Lens' CustomersDevicesUnclaim (Maybe Text)
cduUploadProtocol
  = lens _cduUploadProtocol
      (\ s a -> s{_cduUploadProtocol = a})

-- | OAuth access token.
cduAccessToken :: Lens' CustomersDevicesUnclaim (Maybe Text)
cduAccessToken
  = lens _cduAccessToken
      (\ s a -> s{_cduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cduUploadType :: Lens' CustomersDevicesUnclaim (Maybe Text)
cduUploadType
  = lens _cduUploadType
      (\ s a -> s{_cduUploadType = a})

-- | Multipart request metadata.
cduPayload :: Lens' CustomersDevicesUnclaim CustomerUnclaimDeviceRequest
cduPayload
  = lens _cduPayload (\ s a -> s{_cduPayload = a})

-- | JSONP
cduCallback :: Lens' CustomersDevicesUnclaim (Maybe Text)
cduCallback
  = lens _cduCallback (\ s a -> s{_cduCallback = a})

instance GoogleRequest CustomersDevicesUnclaim where
        type Rs CustomersDevicesUnclaim = Empty
        type Scopes CustomersDevicesUnclaim = '[]
        requestClient CustomersDevicesUnclaim'{..}
          = go _cduParent _cduXgafv _cduUploadProtocol
              _cduAccessToken
              _cduUploadType
              _cduCallback
              (Just AltJSON)
              _cduPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersDevicesUnclaimResource)
                      mempty
