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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Unclaim
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unclaims a device from a customer and removes it from zero-touch
-- enrollment.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.unclaim@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Unclaim
    (
    -- * REST Resource
      PartnersDevicesUnclaimResource

    -- * Creating a Request
    , partnersDevicesUnclaim
    , PartnersDevicesUnclaim

    -- * Request Lenses
    , pduXgafv
    , pduUploadProtocol
    , pduAccessToken
    , pduPartnerId
    , pduUploadType
    , pduPayload
    , pduCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.unclaim@ method which the
-- 'PartnersDevicesUnclaim' request conforms to.
type PartnersDevicesUnclaimResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "devices:unclaim" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UnclaimDeviceRequest :>
                           Post '[JSON] Empty

-- | Unclaims a device from a customer and removes it from zero-touch
-- enrollment.
--
-- /See:/ 'partnersDevicesUnclaim' smart constructor.
data PartnersDevicesUnclaim =
  PartnersDevicesUnclaim'
    { _pduXgafv          :: !(Maybe Xgafv)
    , _pduUploadProtocol :: !(Maybe Text)
    , _pduAccessToken    :: !(Maybe Text)
    , _pduPartnerId      :: !(Textual Int64)
    , _pduUploadType     :: !(Maybe Text)
    , _pduPayload        :: !UnclaimDeviceRequest
    , _pduCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersDevicesUnclaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pduXgafv'
--
-- * 'pduUploadProtocol'
--
-- * 'pduAccessToken'
--
-- * 'pduPartnerId'
--
-- * 'pduUploadType'
--
-- * 'pduPayload'
--
-- * 'pduCallback'
partnersDevicesUnclaim
    :: Int64 -- ^ 'pduPartnerId'
    -> UnclaimDeviceRequest -- ^ 'pduPayload'
    -> PartnersDevicesUnclaim
partnersDevicesUnclaim pPduPartnerId_ pPduPayload_ =
  PartnersDevicesUnclaim'
    { _pduXgafv = Nothing
    , _pduUploadProtocol = Nothing
    , _pduAccessToken = Nothing
    , _pduPartnerId = _Coerce # pPduPartnerId_
    , _pduUploadType = Nothing
    , _pduPayload = pPduPayload_
    , _pduCallback = Nothing
    }


-- | V1 error format.
pduXgafv :: Lens' PartnersDevicesUnclaim (Maybe Xgafv)
pduXgafv = lens _pduXgafv (\ s a -> s{_pduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pduUploadProtocol :: Lens' PartnersDevicesUnclaim (Maybe Text)
pduUploadProtocol
  = lens _pduUploadProtocol
      (\ s a -> s{_pduUploadProtocol = a})

-- | OAuth access token.
pduAccessToken :: Lens' PartnersDevicesUnclaim (Maybe Text)
pduAccessToken
  = lens _pduAccessToken
      (\ s a -> s{_pduAccessToken = a})

-- | Required. The ID of the reseller partner.
pduPartnerId :: Lens' PartnersDevicesUnclaim Int64
pduPartnerId
  = lens _pduPartnerId (\ s a -> s{_pduPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pduUploadType :: Lens' PartnersDevicesUnclaim (Maybe Text)
pduUploadType
  = lens _pduUploadType
      (\ s a -> s{_pduUploadType = a})

-- | Multipart request metadata.
pduPayload :: Lens' PartnersDevicesUnclaim UnclaimDeviceRequest
pduPayload
  = lens _pduPayload (\ s a -> s{_pduPayload = a})

-- | JSONP
pduCallback :: Lens' PartnersDevicesUnclaim (Maybe Text)
pduCallback
  = lens _pduCallback (\ s a -> s{_pduCallback = a})

instance GoogleRequest PartnersDevicesUnclaim where
        type Rs PartnersDevicesUnclaim = Empty
        type Scopes PartnersDevicesUnclaim = '[]
        requestClient PartnersDevicesUnclaim'{..}
          = go _pduPartnerId _pduXgafv _pduUploadProtocol
              _pduAccessToken
              _pduUploadType
              _pduCallback
              (Just AltJSON)
              _pduPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersDevicesUnclaimResource)
                      mempty
