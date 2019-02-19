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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UnclaimAsync
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unclaims a batch of devices for a customer asynchronously. Removes the
-- devices from zero-touch enrollment. To learn more, read [Long‑running
-- batch operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.unclaimAsync@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UnclaimAsync
    (
    -- * REST Resource
      PartnersDevicesUnclaimAsyncResource

    -- * Creating a Request
    , partnersDevicesUnclaimAsync
    , PartnersDevicesUnclaimAsync

    -- * Request Lenses
    , pduaXgafv
    , pduaUploadProtocol
    , pduaAccessToken
    , pduaPartnerId
    , pduaUploadType
    , pduaPayload
    , pduaCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.unclaimAsync@ method which the
-- 'PartnersDevicesUnclaimAsync' request conforms to.
type PartnersDevicesUnclaimAsyncResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "devices:unclaimAsync" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UnclaimDevicesRequest :>
                           Post '[JSON] Operation

-- | Unclaims a batch of devices for a customer asynchronously. Removes the
-- devices from zero-touch enrollment. To learn more, read [Long‑running
-- batch operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ 'partnersDevicesUnclaimAsync' smart constructor.
data PartnersDevicesUnclaimAsync =
  PartnersDevicesUnclaimAsync'
    { _pduaXgafv          :: !(Maybe Xgafv)
    , _pduaUploadProtocol :: !(Maybe Text)
    , _pduaAccessToken    :: !(Maybe Text)
    , _pduaPartnerId      :: !(Textual Int64)
    , _pduaUploadType     :: !(Maybe Text)
    , _pduaPayload        :: !UnclaimDevicesRequest
    , _pduaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersDevicesUnclaimAsync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pduaXgafv'
--
-- * 'pduaUploadProtocol'
--
-- * 'pduaAccessToken'
--
-- * 'pduaPartnerId'
--
-- * 'pduaUploadType'
--
-- * 'pduaPayload'
--
-- * 'pduaCallback'
partnersDevicesUnclaimAsync
    :: Int64 -- ^ 'pduaPartnerId'
    -> UnclaimDevicesRequest -- ^ 'pduaPayload'
    -> PartnersDevicesUnclaimAsync
partnersDevicesUnclaimAsync pPduaPartnerId_ pPduaPayload_ =
  PartnersDevicesUnclaimAsync'
    { _pduaXgafv = Nothing
    , _pduaUploadProtocol = Nothing
    , _pduaAccessToken = Nothing
    , _pduaPartnerId = _Coerce # pPduaPartnerId_
    , _pduaUploadType = Nothing
    , _pduaPayload = pPduaPayload_
    , _pduaCallback = Nothing
    }


-- | V1 error format.
pduaXgafv :: Lens' PartnersDevicesUnclaimAsync (Maybe Xgafv)
pduaXgafv
  = lens _pduaXgafv (\ s a -> s{_pduaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pduaUploadProtocol :: Lens' PartnersDevicesUnclaimAsync (Maybe Text)
pduaUploadProtocol
  = lens _pduaUploadProtocol
      (\ s a -> s{_pduaUploadProtocol = a})

-- | OAuth access token.
pduaAccessToken :: Lens' PartnersDevicesUnclaimAsync (Maybe Text)
pduaAccessToken
  = lens _pduaAccessToken
      (\ s a -> s{_pduaAccessToken = a})

-- | Required. The reseller partner ID.
pduaPartnerId :: Lens' PartnersDevicesUnclaimAsync Int64
pduaPartnerId
  = lens _pduaPartnerId
      (\ s a -> s{_pduaPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pduaUploadType :: Lens' PartnersDevicesUnclaimAsync (Maybe Text)
pduaUploadType
  = lens _pduaUploadType
      (\ s a -> s{_pduaUploadType = a})

-- | Multipart request metadata.
pduaPayload :: Lens' PartnersDevicesUnclaimAsync UnclaimDevicesRequest
pduaPayload
  = lens _pduaPayload (\ s a -> s{_pduaPayload = a})

-- | JSONP
pduaCallback :: Lens' PartnersDevicesUnclaimAsync (Maybe Text)
pduaCallback
  = lens _pduaCallback (\ s a -> s{_pduaCallback = a})

instance GoogleRequest PartnersDevicesUnclaimAsync
         where
        type Rs PartnersDevicesUnclaimAsync = Operation
        type Scopes PartnersDevicesUnclaimAsync = '[]
        requestClient PartnersDevicesUnclaimAsync'{..}
          = go _pduaPartnerId _pduaXgafv _pduaUploadProtocol
              _pduaAccessToken
              _pduaUploadType
              _pduaCallback
              (Just AltJSON)
              _pduaPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersDevicesUnclaimAsyncResource)
                      mempty
