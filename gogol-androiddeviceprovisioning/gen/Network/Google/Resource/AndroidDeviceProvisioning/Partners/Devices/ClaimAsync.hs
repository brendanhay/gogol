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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.ClaimAsync
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims a batch of devices for a customer asynchronously. Adds the
-- devices to zero-touch enrollment. To learn more, read [Long‑running
-- batch operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.claimAsync@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.ClaimAsync
    (
    -- * REST Resource
      PartnersDevicesClaimAsyncResource

    -- * Creating a Request
    , partnersDevicesClaimAsync
    , PartnersDevicesClaimAsync

    -- * Request Lenses
    , pdcaXgafv
    , pdcaUploadProtocol
    , pdcaAccessToken
    , pdcaPartnerId
    , pdcaUploadType
    , pdcaPayload
    , pdcaCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.claimAsync@ method which the
-- 'PartnersDevicesClaimAsync' request conforms to.
type PartnersDevicesClaimAsyncResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "devices:claimAsync" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ClaimDevicesRequest :>
                           Post '[JSON] Operation

-- | Claims a batch of devices for a customer asynchronously. Adds the
-- devices to zero-touch enrollment. To learn more, read [Long‑running
-- batch operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ 'partnersDevicesClaimAsync' smart constructor.
data PartnersDevicesClaimAsync =
  PartnersDevicesClaimAsync'
    { _pdcaXgafv :: !(Maybe Xgafv)
    , _pdcaUploadProtocol :: !(Maybe Text)
    , _pdcaAccessToken :: !(Maybe Text)
    , _pdcaPartnerId :: !(Textual Int64)
    , _pdcaUploadType :: !(Maybe Text)
    , _pdcaPayload :: !ClaimDevicesRequest
    , _pdcaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersDevicesClaimAsync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcaXgafv'
--
-- * 'pdcaUploadProtocol'
--
-- * 'pdcaAccessToken'
--
-- * 'pdcaPartnerId'
--
-- * 'pdcaUploadType'
--
-- * 'pdcaPayload'
--
-- * 'pdcaCallback'
partnersDevicesClaimAsync
    :: Int64 -- ^ 'pdcaPartnerId'
    -> ClaimDevicesRequest -- ^ 'pdcaPayload'
    -> PartnersDevicesClaimAsync
partnersDevicesClaimAsync pPdcaPartnerId_ pPdcaPayload_ =
  PartnersDevicesClaimAsync'
    { _pdcaXgafv = Nothing
    , _pdcaUploadProtocol = Nothing
    , _pdcaAccessToken = Nothing
    , _pdcaPartnerId = _Coerce # pPdcaPartnerId_
    , _pdcaUploadType = Nothing
    , _pdcaPayload = pPdcaPayload_
    , _pdcaCallback = Nothing
    }


-- | V1 error format.
pdcaXgafv :: Lens' PartnersDevicesClaimAsync (Maybe Xgafv)
pdcaXgafv
  = lens _pdcaXgafv (\ s a -> s{_pdcaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcaUploadProtocol :: Lens' PartnersDevicesClaimAsync (Maybe Text)
pdcaUploadProtocol
  = lens _pdcaUploadProtocol
      (\ s a -> s{_pdcaUploadProtocol = a})

-- | OAuth access token.
pdcaAccessToken :: Lens' PartnersDevicesClaimAsync (Maybe Text)
pdcaAccessToken
  = lens _pdcaAccessToken
      (\ s a -> s{_pdcaAccessToken = a})

-- | Required. The ID of the reseller partner.
pdcaPartnerId :: Lens' PartnersDevicesClaimAsync Int64
pdcaPartnerId
  = lens _pdcaPartnerId
      (\ s a -> s{_pdcaPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcaUploadType :: Lens' PartnersDevicesClaimAsync (Maybe Text)
pdcaUploadType
  = lens _pdcaUploadType
      (\ s a -> s{_pdcaUploadType = a})

-- | Multipart request metadata.
pdcaPayload :: Lens' PartnersDevicesClaimAsync ClaimDevicesRequest
pdcaPayload
  = lens _pdcaPayload (\ s a -> s{_pdcaPayload = a})

-- | JSONP
pdcaCallback :: Lens' PartnersDevicesClaimAsync (Maybe Text)
pdcaCallback
  = lens _pdcaCallback (\ s a -> s{_pdcaCallback = a})

instance GoogleRequest PartnersDevicesClaimAsync
         where
        type Rs PartnersDevicesClaimAsync = Operation
        type Scopes PartnersDevicesClaimAsync = '[]
        requestClient PartnersDevicesClaimAsync'{..}
          = go _pdcaPartnerId _pdcaXgafv _pdcaUploadProtocol
              _pdcaAccessToken
              _pdcaUploadType
              _pdcaCallback
              (Just AltJSON)
              _pdcaPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersDevicesClaimAsyncResource)
                      mempty
