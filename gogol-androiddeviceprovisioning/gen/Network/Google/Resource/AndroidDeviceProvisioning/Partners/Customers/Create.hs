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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a customer for zero-touch enrollment. After the method returns
-- successfully, admin and owner roles can manage devices and EMM configs
-- by calling API methods or using their zero-touch enrollment portal. The
-- customer receives an email that welcomes them to zero-touch enrollment
-- and explains how to sign into the portal.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.customers.create@.
module Network.Google.Resource.AndroidDeviceProvisioning.Partners.Customers.Create
    (
    -- * REST Resource
      PartnersCustomersCreateResource

    -- * Creating a Request
    , partnersCustomersCreate
    , PartnersCustomersCreate

    -- * Request Lenses
    , pccParent
    , pccXgafv
    , pccUploadProtocol
    , pccAccessToken
    , pccUploadType
    , pccPayload
    , pccCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.partners.customers.create@ method which the
-- 'PartnersCustomersCreate' request conforms to.
type PartnersCustomersCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "customers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateCustomerRequest :>
                         Post '[JSON] Company

-- | Creates a customer for zero-touch enrollment. After the method returns
-- successfully, admin and owner roles can manage devices and EMM configs
-- by calling API methods or using their zero-touch enrollment portal. The
-- customer receives an email that welcomes them to zero-touch enrollment
-- and explains how to sign into the portal.
--
-- /See:/ 'partnersCustomersCreate' smart constructor.
data PartnersCustomersCreate =
  PartnersCustomersCreate'
    { _pccParent         :: !Text
    , _pccXgafv          :: !(Maybe Xgafv)
    , _pccUploadProtocol :: !(Maybe Text)
    , _pccAccessToken    :: !(Maybe Text)
    , _pccUploadType     :: !(Maybe Text)
    , _pccPayload        :: !CreateCustomerRequest
    , _pccCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartnersCustomersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccParent'
--
-- * 'pccXgafv'
--
-- * 'pccUploadProtocol'
--
-- * 'pccAccessToken'
--
-- * 'pccUploadType'
--
-- * 'pccPayload'
--
-- * 'pccCallback'
partnersCustomersCreate
    :: Text -- ^ 'pccParent'
    -> CreateCustomerRequest -- ^ 'pccPayload'
    -> PartnersCustomersCreate
partnersCustomersCreate pPccParent_ pPccPayload_ =
  PartnersCustomersCreate'
    { _pccParent = pPccParent_
    , _pccXgafv = Nothing
    , _pccUploadProtocol = Nothing
    , _pccAccessToken = Nothing
    , _pccUploadType = Nothing
    , _pccPayload = pPccPayload_
    , _pccCallback = Nothing
    }


-- | Required. The parent resource ID in the format
-- \`partners\/[PARTNER_ID]\` that identifies the reseller.
pccParent :: Lens' PartnersCustomersCreate Text
pccParent
  = lens _pccParent (\ s a -> s{_pccParent = a})

-- | V1 error format.
pccXgafv :: Lens' PartnersCustomersCreate (Maybe Xgafv)
pccXgafv = lens _pccXgafv (\ s a -> s{_pccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pccUploadProtocol :: Lens' PartnersCustomersCreate (Maybe Text)
pccUploadProtocol
  = lens _pccUploadProtocol
      (\ s a -> s{_pccUploadProtocol = a})

-- | OAuth access token.
pccAccessToken :: Lens' PartnersCustomersCreate (Maybe Text)
pccAccessToken
  = lens _pccAccessToken
      (\ s a -> s{_pccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pccUploadType :: Lens' PartnersCustomersCreate (Maybe Text)
pccUploadType
  = lens _pccUploadType
      (\ s a -> s{_pccUploadType = a})

-- | Multipart request metadata.
pccPayload :: Lens' PartnersCustomersCreate CreateCustomerRequest
pccPayload
  = lens _pccPayload (\ s a -> s{_pccPayload = a})

-- | JSONP
pccCallback :: Lens' PartnersCustomersCreate (Maybe Text)
pccCallback
  = lens _pccCallback (\ s a -> s{_pccCallback = a})

instance GoogleRequest PartnersCustomersCreate where
        type Rs PartnersCustomersCreate = Company
        type Scopes PartnersCustomersCreate = '[]
        requestClient PartnersCustomersCreate'{..}
          = go _pccParent _pccXgafv _pccUploadProtocol
              _pccAccessToken
              _pccUploadType
              _pccCallback
              (Just AltJSON)
              _pccPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy PartnersCustomersCreateResource)
                      mempty
