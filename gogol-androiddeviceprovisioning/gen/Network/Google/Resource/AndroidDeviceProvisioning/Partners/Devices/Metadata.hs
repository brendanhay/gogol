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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Metadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates reseller metadata associated with the device.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.metadata@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Metadata
    (
    -- * REST Resource
      PartnersDevicesMetadataResource

    -- * Creating a Request
    , partnersDevicesMetadata
    , PartnersDevicesMetadata

    -- * Request Lenses
    , pdmXgafv
    , pdmUploadProtocol
    , pdmAccessToken
    , pdmUploadType
    , pdmPayload
    , pdmDeviceId
    , pdmCallback
    , pdmMetadataOwnerId
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.metadata@ method which the
-- 'PartnersDevicesMetadata' request conforms to.
type PartnersDevicesMetadataResource =
     "v1" :>
       "partners" :>
         Capture "metadataOwnerId" (Textual Int64) :>
           "devices" :>
             Capture "deviceId" (Textual Int64) :>
               "metadata" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] UpdateDeviceMetadataRequest :>
                               Post '[JSON] DeviceMetadata

-- | Updates reseller metadata associated with the device.
--
-- /See:/ 'partnersDevicesMetadata' smart constructor.
data PartnersDevicesMetadata =
  PartnersDevicesMetadata'
    { _pdmXgafv           :: !(Maybe Xgafv)
    , _pdmUploadProtocol  :: !(Maybe Text)
    , _pdmAccessToken     :: !(Maybe Text)
    , _pdmUploadType      :: !(Maybe Text)
    , _pdmPayload         :: !UpdateDeviceMetadataRequest
    , _pdmDeviceId        :: !(Textual Int64)
    , _pdmCallback        :: !(Maybe Text)
    , _pdmMetadataOwnerId :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersDevicesMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdmXgafv'
--
-- * 'pdmUploadProtocol'
--
-- * 'pdmAccessToken'
--
-- * 'pdmUploadType'
--
-- * 'pdmPayload'
--
-- * 'pdmDeviceId'
--
-- * 'pdmCallback'
--
-- * 'pdmMetadataOwnerId'
partnersDevicesMetadata
    :: UpdateDeviceMetadataRequest -- ^ 'pdmPayload'
    -> Int64 -- ^ 'pdmDeviceId'
    -> Int64 -- ^ 'pdmMetadataOwnerId'
    -> PartnersDevicesMetadata
partnersDevicesMetadata pPdmPayload_ pPdmDeviceId_ pPdmMetadataOwnerId_ =
  PartnersDevicesMetadata'
    { _pdmXgafv = Nothing
    , _pdmUploadProtocol = Nothing
    , _pdmAccessToken = Nothing
    , _pdmUploadType = Nothing
    , _pdmPayload = pPdmPayload_
    , _pdmDeviceId = _Coerce # pPdmDeviceId_
    , _pdmCallback = Nothing
    , _pdmMetadataOwnerId = _Coerce # pPdmMetadataOwnerId_
    }


-- | V1 error format.
pdmXgafv :: Lens' PartnersDevicesMetadata (Maybe Xgafv)
pdmXgafv = lens _pdmXgafv (\ s a -> s{_pdmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdmUploadProtocol :: Lens' PartnersDevicesMetadata (Maybe Text)
pdmUploadProtocol
  = lens _pdmUploadProtocol
      (\ s a -> s{_pdmUploadProtocol = a})

-- | OAuth access token.
pdmAccessToken :: Lens' PartnersDevicesMetadata (Maybe Text)
pdmAccessToken
  = lens _pdmAccessToken
      (\ s a -> s{_pdmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdmUploadType :: Lens' PartnersDevicesMetadata (Maybe Text)
pdmUploadType
  = lens _pdmUploadType
      (\ s a -> s{_pdmUploadType = a})

-- | Multipart request metadata.
pdmPayload :: Lens' PartnersDevicesMetadata UpdateDeviceMetadataRequest
pdmPayload
  = lens _pdmPayload (\ s a -> s{_pdmPayload = a})

-- | Required. The ID of the device.
pdmDeviceId :: Lens' PartnersDevicesMetadata Int64
pdmDeviceId
  = lens _pdmDeviceId (\ s a -> s{_pdmDeviceId = a}) .
      _Coerce

-- | JSONP
pdmCallback :: Lens' PartnersDevicesMetadata (Maybe Text)
pdmCallback
  = lens _pdmCallback (\ s a -> s{_pdmCallback = a})

-- | Required. The owner of the newly set metadata. Set this to the partner
-- ID.
pdmMetadataOwnerId :: Lens' PartnersDevicesMetadata Int64
pdmMetadataOwnerId
  = lens _pdmMetadataOwnerId
      (\ s a -> s{_pdmMetadataOwnerId = a})
      . _Coerce

instance GoogleRequest PartnersDevicesMetadata where
        type Rs PartnersDevicesMetadata = DeviceMetadata
        type Scopes PartnersDevicesMetadata = '[]
        requestClient PartnersDevicesMetadata'{..}
          = go _pdmMetadataOwnerId _pdmDeviceId _pdmXgafv
              _pdmUploadProtocol
              _pdmAccessToken
              _pdmUploadType
              _pdmCallback
              (Just AltJSON)
              _pdmPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersDevicesMetadataResource)
                      mempty
