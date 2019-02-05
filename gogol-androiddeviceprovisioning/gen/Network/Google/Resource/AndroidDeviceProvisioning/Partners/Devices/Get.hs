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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a device.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.get@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.Get
    (
    -- * REST Resource
      PartnersDevicesGetResource

    -- * Creating a Request
    , partnersDevicesGet
    , PartnersDevicesGet

    -- * Request Lenses
    , pdgXgafv
    , pdgUploadProtocol
    , pdgAccessToken
    , pdgUploadType
    , pdgName
    , pdgCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.get@ method which the
-- 'PartnersDevicesGet' request conforms to.
type PartnersDevicesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Device

-- | Gets a device.
--
-- /See:/ 'partnersDevicesGet' smart constructor.
data PartnersDevicesGet = PartnersDevicesGet'
    { _pdgXgafv          :: !(Maybe Xgafv)
    , _pdgUploadProtocol :: !(Maybe Text)
    , _pdgAccessToken    :: !(Maybe Text)
    , _pdgUploadType     :: !(Maybe Text)
    , _pdgName           :: !Text
    , _pdgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartnersDevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdgXgafv'
--
-- * 'pdgUploadProtocol'
--
-- * 'pdgAccessToken'
--
-- * 'pdgUploadType'
--
-- * 'pdgName'
--
-- * 'pdgCallback'
partnersDevicesGet
    :: Text -- ^ 'pdgName'
    -> PartnersDevicesGet
partnersDevicesGet pPdgName_ =
    PartnersDevicesGet'
    { _pdgXgafv = Nothing
    , _pdgUploadProtocol = Nothing
    , _pdgAccessToken = Nothing
    , _pdgUploadType = Nothing
    , _pdgName = pPdgName_
    , _pdgCallback = Nothing
    }

-- | V1 error format.
pdgXgafv :: Lens' PartnersDevicesGet (Maybe Xgafv)
pdgXgafv = lens _pdgXgafv (\ s a -> s{_pdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdgUploadProtocol :: Lens' PartnersDevicesGet (Maybe Text)
pdgUploadProtocol
  = lens _pdgUploadProtocol
      (\ s a -> s{_pdgUploadProtocol = a})

-- | OAuth access token.
pdgAccessToken :: Lens' PartnersDevicesGet (Maybe Text)
pdgAccessToken
  = lens _pdgAccessToken
      (\ s a -> s{_pdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdgUploadType :: Lens' PartnersDevicesGet (Maybe Text)
pdgUploadType
  = lens _pdgUploadType
      (\ s a -> s{_pdgUploadType = a})

-- | Required. The device API resource name in the format
-- \`partners\/[PARTNER_ID]\/devices\/[DEVICE_ID]\`.
pdgName :: Lens' PartnersDevicesGet Text
pdgName = lens _pdgName (\ s a -> s{_pdgName = a})

-- | JSONP
pdgCallback :: Lens' PartnersDevicesGet (Maybe Text)
pdgCallback
  = lens _pdgCallback (\ s a -> s{_pdgCallback = a})

instance GoogleRequest PartnersDevicesGet where
        type Rs PartnersDevicesGet = Device
        type Scopes PartnersDevicesGet = '[]
        requestClient PartnersDevicesGet'{..}
          = go _pdgName _pdgXgafv _pdgUploadProtocol
              _pdgAccessToken
              _pdgUploadType
              _pdgCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersDevicesGetResource)
                      mempty
