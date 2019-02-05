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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UpdateMetadataAsync
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the reseller metadata attached to a batch of devices. This
-- method updates devices asynchronously and returns an \`Operation\` that
-- can be used to track progress. Read [Long‑running batch
-- operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.updateMetadataAsync@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.UpdateMetadataAsync
    (
    -- * REST Resource
      PartnersDevicesUpdateMetadataAsyncResource

    -- * Creating a Request
    , partnersDevicesUpdateMetadataAsync
    , PartnersDevicesUpdateMetadataAsync

    -- * Request Lenses
    , pdumaXgafv
    , pdumaUploadProtocol
    , pdumaAccessToken
    , pdumaPartnerId
    , pdumaUploadType
    , pdumaPayload
    , pdumaCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.updateMetadataAsync@ method which the
-- 'PartnersDevicesUpdateMetadataAsync' request conforms to.
type PartnersDevicesUpdateMetadataAsyncResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "devices:updateMetadataAsync" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UpdateDeviceMetadataInBatchRequest :>
                           Post '[JSON] Operation

-- | Updates the reseller metadata attached to a batch of devices. This
-- method updates devices asynchronously and returns an \`Operation\` that
-- can be used to track progress. Read [Long‑running batch
-- operations](\/zero-touch\/guides\/how-it-works#operations).
--
-- /See:/ 'partnersDevicesUpdateMetadataAsync' smart constructor.
data PartnersDevicesUpdateMetadataAsync = PartnersDevicesUpdateMetadataAsync'
    { _pdumaXgafv          :: !(Maybe Xgafv)
    , _pdumaUploadProtocol :: !(Maybe Text)
    , _pdumaAccessToken    :: !(Maybe Text)
    , _pdumaPartnerId      :: !(Textual Int64)
    , _pdumaUploadType     :: !(Maybe Text)
    , _pdumaPayload        :: !UpdateDeviceMetadataInBatchRequest
    , _pdumaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartnersDevicesUpdateMetadataAsync' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdumaXgafv'
--
-- * 'pdumaUploadProtocol'
--
-- * 'pdumaAccessToken'
--
-- * 'pdumaPartnerId'
--
-- * 'pdumaUploadType'
--
-- * 'pdumaPayload'
--
-- * 'pdumaCallback'
partnersDevicesUpdateMetadataAsync
    :: Int64 -- ^ 'pdumaPartnerId'
    -> UpdateDeviceMetadataInBatchRequest -- ^ 'pdumaPayload'
    -> PartnersDevicesUpdateMetadataAsync
partnersDevicesUpdateMetadataAsync pPdumaPartnerId_ pPdumaPayload_ =
    PartnersDevicesUpdateMetadataAsync'
    { _pdumaXgafv = Nothing
    , _pdumaUploadProtocol = Nothing
    , _pdumaAccessToken = Nothing
    , _pdumaPartnerId = _Coerce # pPdumaPartnerId_
    , _pdumaUploadType = Nothing
    , _pdumaPayload = pPdumaPayload_
    , _pdumaCallback = Nothing
    }

-- | V1 error format.
pdumaXgafv :: Lens' PartnersDevicesUpdateMetadataAsync (Maybe Xgafv)
pdumaXgafv
  = lens _pdumaXgafv (\ s a -> s{_pdumaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdumaUploadProtocol :: Lens' PartnersDevicesUpdateMetadataAsync (Maybe Text)
pdumaUploadProtocol
  = lens _pdumaUploadProtocol
      (\ s a -> s{_pdumaUploadProtocol = a})

-- | OAuth access token.
pdumaAccessToken :: Lens' PartnersDevicesUpdateMetadataAsync (Maybe Text)
pdumaAccessToken
  = lens _pdumaAccessToken
      (\ s a -> s{_pdumaAccessToken = a})

-- | Required. The reseller partner ID.
pdumaPartnerId :: Lens' PartnersDevicesUpdateMetadataAsync Int64
pdumaPartnerId
  = lens _pdumaPartnerId
      (\ s a -> s{_pdumaPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdumaUploadType :: Lens' PartnersDevicesUpdateMetadataAsync (Maybe Text)
pdumaUploadType
  = lens _pdumaUploadType
      (\ s a -> s{_pdumaUploadType = a})

-- | Multipart request metadata.
pdumaPayload :: Lens' PartnersDevicesUpdateMetadataAsync UpdateDeviceMetadataInBatchRequest
pdumaPayload
  = lens _pdumaPayload (\ s a -> s{_pdumaPayload = a})

-- | JSONP
pdumaCallback :: Lens' PartnersDevicesUpdateMetadataAsync (Maybe Text)
pdumaCallback
  = lens _pdumaCallback
      (\ s a -> s{_pdumaCallback = a})

instance GoogleRequest
         PartnersDevicesUpdateMetadataAsync where
        type Rs PartnersDevicesUpdateMetadataAsync =
             Operation
        type Scopes PartnersDevicesUpdateMetadataAsync = '[]
        requestClient PartnersDevicesUpdateMetadataAsync'{..}
          = go _pdumaPartnerId _pdumaXgafv _pdumaUploadProtocol
              _pdumaAccessToken
              _pdumaUploadType
              _pdumaCallback
              (Just AltJSON)
              _pdumaPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PartnersDevicesUpdateMetadataAsyncResource)
                      mempty
