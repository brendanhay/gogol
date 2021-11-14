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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByOwner
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds devices claimed for customers. The results only contain devices
-- registered to the reseller that\'s identified by the \`partnerId\`
-- argument. The customer\'s devices purchased from other resellers don\'t
-- appear in the results.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.findByOwner@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByOwner
    (
    -- * REST Resource
      PartnersDevicesFindByOwnerResource

    -- * Creating a Request
    , partnersDevicesFindByOwner
    , PartnersDevicesFindByOwner

    -- * Request Lenses
    , pdfboXgafv
    , pdfboUploadProtocol
    , pdfboAccessToken
    , pdfboPartnerId
    , pdfboUploadType
    , pdfboPayload
    , pdfboCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.findByOwner@ method which the
-- 'PartnersDevicesFindByOwner' request conforms to.
type PartnersDevicesFindByOwnerResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "devices:findByOwner" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FindDevicesByOwnerRequest :>
                           Post '[JSON] FindDevicesByOwnerResponse

-- | Finds devices claimed for customers. The results only contain devices
-- registered to the reseller that\'s identified by the \`partnerId\`
-- argument. The customer\'s devices purchased from other resellers don\'t
-- appear in the results.
--
-- /See:/ 'partnersDevicesFindByOwner' smart constructor.
data PartnersDevicesFindByOwner =
  PartnersDevicesFindByOwner'
    { _pdfboXgafv :: !(Maybe Xgafv)
    , _pdfboUploadProtocol :: !(Maybe Text)
    , _pdfboAccessToken :: !(Maybe Text)
    , _pdfboPartnerId :: !(Textual Int64)
    , _pdfboUploadType :: !(Maybe Text)
    , _pdfboPayload :: !FindDevicesByOwnerRequest
    , _pdfboCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersDevicesFindByOwner' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdfboXgafv'
--
-- * 'pdfboUploadProtocol'
--
-- * 'pdfboAccessToken'
--
-- * 'pdfboPartnerId'
--
-- * 'pdfboUploadType'
--
-- * 'pdfboPayload'
--
-- * 'pdfboCallback'
partnersDevicesFindByOwner
    :: Int64 -- ^ 'pdfboPartnerId'
    -> FindDevicesByOwnerRequest -- ^ 'pdfboPayload'
    -> PartnersDevicesFindByOwner
partnersDevicesFindByOwner pPdfboPartnerId_ pPdfboPayload_ =
  PartnersDevicesFindByOwner'
    { _pdfboXgafv = Nothing
    , _pdfboUploadProtocol = Nothing
    , _pdfboAccessToken = Nothing
    , _pdfboPartnerId = _Coerce # pPdfboPartnerId_
    , _pdfboUploadType = Nothing
    , _pdfboPayload = pPdfboPayload_
    , _pdfboCallback = Nothing
    }


-- | V1 error format.
pdfboXgafv :: Lens' PartnersDevicesFindByOwner (Maybe Xgafv)
pdfboXgafv
  = lens _pdfboXgafv (\ s a -> s{_pdfboXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdfboUploadProtocol :: Lens' PartnersDevicesFindByOwner (Maybe Text)
pdfboUploadProtocol
  = lens _pdfboUploadProtocol
      (\ s a -> s{_pdfboUploadProtocol = a})

-- | OAuth access token.
pdfboAccessToken :: Lens' PartnersDevicesFindByOwner (Maybe Text)
pdfboAccessToken
  = lens _pdfboAccessToken
      (\ s a -> s{_pdfboAccessToken = a})

-- | Required. The ID of the reseller partner.
pdfboPartnerId :: Lens' PartnersDevicesFindByOwner Int64
pdfboPartnerId
  = lens _pdfboPartnerId
      (\ s a -> s{_pdfboPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdfboUploadType :: Lens' PartnersDevicesFindByOwner (Maybe Text)
pdfboUploadType
  = lens _pdfboUploadType
      (\ s a -> s{_pdfboUploadType = a})

-- | Multipart request metadata.
pdfboPayload :: Lens' PartnersDevicesFindByOwner FindDevicesByOwnerRequest
pdfboPayload
  = lens _pdfboPayload (\ s a -> s{_pdfboPayload = a})

-- | JSONP
pdfboCallback :: Lens' PartnersDevicesFindByOwner (Maybe Text)
pdfboCallback
  = lens _pdfboCallback
      (\ s a -> s{_pdfboCallback = a})

instance GoogleRequest PartnersDevicesFindByOwner
         where
        type Rs PartnersDevicesFindByOwner =
             FindDevicesByOwnerResponse
        type Scopes PartnersDevicesFindByOwner = '[]
        requestClient PartnersDevicesFindByOwner'{..}
          = go _pdfboPartnerId _pdfboXgafv _pdfboUploadProtocol
              _pdfboAccessToken
              _pdfboUploadType
              _pdfboCallback
              (Just AltJSON)
              _pdfboPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersDevicesFindByOwnerResource)
                      mempty
