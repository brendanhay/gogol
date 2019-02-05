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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Claim
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims a device for a customer and adds it to zero-touch enrollment. If
-- the device is already claimed by another customer, the call returns an
-- error.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.claim@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Claim
    (
    -- * REST Resource
      PartnersDevicesClaimResource

    -- * Creating a Request
    , partnersDevicesClaim
    , PartnersDevicesClaim

    -- * Request Lenses
    , pdcXgafv
    , pdcUploadProtocol
    , pdcAccessToken
    , pdcPartnerId
    , pdcUploadType
    , pdcPayload
    , pdcCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.claim@ method which the
-- 'PartnersDevicesClaim' request conforms to.
type PartnersDevicesClaimResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "devices:claim" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ClaimDeviceRequest :>
                           Post '[JSON] ClaimDeviceResponse

-- | Claims a device for a customer and adds it to zero-touch enrollment. If
-- the device is already claimed by another customer, the call returns an
-- error.
--
-- /See:/ 'partnersDevicesClaim' smart constructor.
data PartnersDevicesClaim = PartnersDevicesClaim'
    { _pdcXgafv          :: !(Maybe Xgafv)
    , _pdcUploadProtocol :: !(Maybe Text)
    , _pdcAccessToken    :: !(Maybe Text)
    , _pdcPartnerId      :: !(Textual Int64)
    , _pdcUploadType     :: !(Maybe Text)
    , _pdcPayload        :: !ClaimDeviceRequest
    , _pdcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartnersDevicesClaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcXgafv'
--
-- * 'pdcUploadProtocol'
--
-- * 'pdcAccessToken'
--
-- * 'pdcPartnerId'
--
-- * 'pdcUploadType'
--
-- * 'pdcPayload'
--
-- * 'pdcCallback'
partnersDevicesClaim
    :: Int64 -- ^ 'pdcPartnerId'
    -> ClaimDeviceRequest -- ^ 'pdcPayload'
    -> PartnersDevicesClaim
partnersDevicesClaim pPdcPartnerId_ pPdcPayload_ =
    PartnersDevicesClaim'
    { _pdcXgafv = Nothing
    , _pdcUploadProtocol = Nothing
    , _pdcAccessToken = Nothing
    , _pdcPartnerId = _Coerce # pPdcPartnerId_
    , _pdcUploadType = Nothing
    , _pdcPayload = pPdcPayload_
    , _pdcCallback = Nothing
    }

-- | V1 error format.
pdcXgafv :: Lens' PartnersDevicesClaim (Maybe Xgafv)
pdcXgafv = lens _pdcXgafv (\ s a -> s{_pdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcUploadProtocol :: Lens' PartnersDevicesClaim (Maybe Text)
pdcUploadProtocol
  = lens _pdcUploadProtocol
      (\ s a -> s{_pdcUploadProtocol = a})

-- | OAuth access token.
pdcAccessToken :: Lens' PartnersDevicesClaim (Maybe Text)
pdcAccessToken
  = lens _pdcAccessToken
      (\ s a -> s{_pdcAccessToken = a})

-- | Required. The ID of the reseller partner.
pdcPartnerId :: Lens' PartnersDevicesClaim Int64
pdcPartnerId
  = lens _pdcPartnerId (\ s a -> s{_pdcPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcUploadType :: Lens' PartnersDevicesClaim (Maybe Text)
pdcUploadType
  = lens _pdcUploadType
      (\ s a -> s{_pdcUploadType = a})

-- | Multipart request metadata.
pdcPayload :: Lens' PartnersDevicesClaim ClaimDeviceRequest
pdcPayload
  = lens _pdcPayload (\ s a -> s{_pdcPayload = a})

-- | JSONP
pdcCallback :: Lens' PartnersDevicesClaim (Maybe Text)
pdcCallback
  = lens _pdcCallback (\ s a -> s{_pdcCallback = a})

instance GoogleRequest PartnersDevicesClaim where
        type Rs PartnersDevicesClaim = ClaimDeviceResponse
        type Scopes PartnersDevicesClaim = '[]
        requestClient PartnersDevicesClaim'{..}
          = go _pdcPartnerId _pdcXgafv _pdcUploadProtocol
              _pdcAccessToken
              _pdcUploadType
              _pdcCallback
              (Just AltJSON)
              _pdcPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersDevicesClaimResource)
                      mempty
