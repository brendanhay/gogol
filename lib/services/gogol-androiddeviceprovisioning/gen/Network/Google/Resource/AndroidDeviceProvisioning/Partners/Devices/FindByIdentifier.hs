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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByIdentifier
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds devices by hardware identifiers, such as IMEI.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.findByIdentifier@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Devices.FindByIdentifier
    (
    -- * REST Resource
      PartnersDevicesFindByIdentifierResource

    -- * Creating a Request
    , partnersDevicesFindByIdentifier
    , PartnersDevicesFindByIdentifier

    -- * Request Lenses
    , pdfbiXgafv
    , pdfbiUploadProtocol
    , pdfbiAccessToken
    , pdfbiPartnerId
    , pdfbiUploadType
    , pdfbiPayload
    , pdfbiCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.devices.findByIdentifier@ method which the
-- 'PartnersDevicesFindByIdentifier' request conforms to.
type PartnersDevicesFindByIdentifierResource =
     "v1" :>
       "partners" :>
         Capture "partnerId" (Textual Int64) :>
           "devices:findByIdentifier" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FindDevicesByDeviceIdentifierRequest
                           :> Post '[JSON] FindDevicesByDeviceIdentifierResponse

-- | Finds devices by hardware identifiers, such as IMEI.
--
-- /See:/ 'partnersDevicesFindByIdentifier' smart constructor.
data PartnersDevicesFindByIdentifier =
  PartnersDevicesFindByIdentifier'
    { _pdfbiXgafv :: !(Maybe Xgafv)
    , _pdfbiUploadProtocol :: !(Maybe Text)
    , _pdfbiAccessToken :: !(Maybe Text)
    , _pdfbiPartnerId :: !(Textual Int64)
    , _pdfbiUploadType :: !(Maybe Text)
    , _pdfbiPayload :: !FindDevicesByDeviceIdentifierRequest
    , _pdfbiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersDevicesFindByIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdfbiXgafv'
--
-- * 'pdfbiUploadProtocol'
--
-- * 'pdfbiAccessToken'
--
-- * 'pdfbiPartnerId'
--
-- * 'pdfbiUploadType'
--
-- * 'pdfbiPayload'
--
-- * 'pdfbiCallback'
partnersDevicesFindByIdentifier
    :: Int64 -- ^ 'pdfbiPartnerId'
    -> FindDevicesByDeviceIdentifierRequest -- ^ 'pdfbiPayload'
    -> PartnersDevicesFindByIdentifier
partnersDevicesFindByIdentifier pPdfbiPartnerId_ pPdfbiPayload_ =
  PartnersDevicesFindByIdentifier'
    { _pdfbiXgafv = Nothing
    , _pdfbiUploadProtocol = Nothing
    , _pdfbiAccessToken = Nothing
    , _pdfbiPartnerId = _Coerce # pPdfbiPartnerId_
    , _pdfbiUploadType = Nothing
    , _pdfbiPayload = pPdfbiPayload_
    , _pdfbiCallback = Nothing
    }


-- | V1 error format.
pdfbiXgafv :: Lens' PartnersDevicesFindByIdentifier (Maybe Xgafv)
pdfbiXgafv
  = lens _pdfbiXgafv (\ s a -> s{_pdfbiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdfbiUploadProtocol :: Lens' PartnersDevicesFindByIdentifier (Maybe Text)
pdfbiUploadProtocol
  = lens _pdfbiUploadProtocol
      (\ s a -> s{_pdfbiUploadProtocol = a})

-- | OAuth access token.
pdfbiAccessToken :: Lens' PartnersDevicesFindByIdentifier (Maybe Text)
pdfbiAccessToken
  = lens _pdfbiAccessToken
      (\ s a -> s{_pdfbiAccessToken = a})

-- | Required. The ID of the reseller partner.
pdfbiPartnerId :: Lens' PartnersDevicesFindByIdentifier Int64
pdfbiPartnerId
  = lens _pdfbiPartnerId
      (\ s a -> s{_pdfbiPartnerId = a})
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdfbiUploadType :: Lens' PartnersDevicesFindByIdentifier (Maybe Text)
pdfbiUploadType
  = lens _pdfbiUploadType
      (\ s a -> s{_pdfbiUploadType = a})

-- | Multipart request metadata.
pdfbiPayload :: Lens' PartnersDevicesFindByIdentifier FindDevicesByDeviceIdentifierRequest
pdfbiPayload
  = lens _pdfbiPayload (\ s a -> s{_pdfbiPayload = a})

-- | JSONP
pdfbiCallback :: Lens' PartnersDevicesFindByIdentifier (Maybe Text)
pdfbiCallback
  = lens _pdfbiCallback
      (\ s a -> s{_pdfbiCallback = a})

instance GoogleRequest
           PartnersDevicesFindByIdentifier
         where
        type Rs PartnersDevicesFindByIdentifier =
             FindDevicesByDeviceIdentifierResponse
        type Scopes PartnersDevicesFindByIdentifier = '[]
        requestClient PartnersDevicesFindByIdentifier'{..}
          = go _pdfbiPartnerId _pdfbiXgafv _pdfbiUploadProtocol
              _pdfbiAccessToken
              _pdfbiUploadType
              _pdfbiCallback
              (Just AltJSON)
              _pdfbiPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PartnersDevicesFindByIdentifierResource)
                      mempty
